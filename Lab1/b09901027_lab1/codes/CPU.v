module CPU(
    clk_i, 
    rst_i,
    start_i
);

// Ports
input               clk_i;
input               rst_i;
input               start_i;

wire [31:0] IF_pc_o;
wire [31:0] IF_pc_i;
wire [31:0] IF_instr_mem_o;

wire ID_RegWrite_toRegIDEX;
wire ID_MemtoReg_toRegIDEX;
wire ID_MemRead_toRegIDEX;
wire ID_MemWrite_toRegIDEX;
wire [1:0] ID_ALUOp_toRegIDEX;
wire ID_ALUSrc_toRegIDEX;
wire [31:0] ID_instr_fromIF;
wire [31:0] ID_Rd1_toRegIDEX;
wire [31:0] ID_Rd2_toRegIDEX;
wire [31:0] ID_ImmGen_toRegIDEX;

wire EX_RegWrite_toRegEXMEM;
wire EX_MemtoReg_toRegEXMEM;
wire EX_MemRead_toRegEXMEM;
wire EX_MemWrite_toRegEXMEM;
wire [1:0] EX_ALUOp;
wire EX_ALUSrc;
wire [31:0] EX_Rd1;
wire [31:0] EX_Rd2;
wire [31:0] EX_Imm;
wire [9:0] EX_ALUfunct;
wire [31:0] EX_MUXtoALU;
wire [31:0] EX_ALU_toRegEXMEM;
wire [2:0] EX_ALUCtrl_o;
wire [4:0] EX_RegDest;

wire MEM_RegWrite_toRegMEMWB;
wire MEM_MemtoReg_toRegMEMWB;
wire MEM_MemRead;
wire MEM_MemWrite;
wire [31:0] MEM_MemAddr_or_ALUResult;
wire [31:0] MEM_MemWriteData;
wire [31:0] MEM_MemReadData;
wire [4:0] MEM_RegDest;

wire WB_RegWrite;
wire WB_MemtoReg;
wire [31:0] WB_ALUResult;
wire [31:0] WB_MemReadData;
wire [31:0] WB_RegWriteData;
wire [4:0] WB_RegDest;

// forwarding unit
wire [4:0] EX_Rs1_to_forwardUnit;
wire [4:0] EX_Rs2_to_forwardUnit;
wire [1:0] forwardA;
wire [1:0] forwardB;
wire [31:0] EX_MUX_to_Rd1; // MUX in rd1 to alu
wire [31:0] EX_Rd2_MUX_to_MUX; // big MUX to small mux

//hazard detection unit
wire PCWrite; // hazard detection to pc
wire stall;
wire NoOp;

//branching
wire Branching;
wire [31:0] IF_pc_mux_i;
wire [31:0] ID_pc; // for branching addr calculation

MUX32 PC_Branching(
    .data1_i(IF_pc_i),
    .data2_i(ID_pc + ((ID_ImmGen_toRegIDEX)<<1)),
    .select_i(Branching && (ID_Rd1_toRegIDEX == ID_Rd2_toRegIDEX)),
    .data_o(IF_pc_mux_i)
);

Hazard_Detection Hazard_Detection(
    .EX_MemRead_i(EX_MemRead_toRegEXMEM),
    .EX_RegDest_i(EX_RegDest),
    .ID_Rs1_i(ID_instr_fromIF[19:15]),
    .ID_Rs2_i(ID_instr_fromIF[24:20]),
    .NoOp_o(NoOp), 
    .Stall_o(stall),
    .PCWrite_o(PCWrite)
);

Forwarding_Unit forwarding_unit(
    .EX_Rs1_i(EX_Rs1_to_forwardUnit),
    .EX_Rs2_i(EX_Rs2_to_forwardUnit),
    .WB_RegDest_i(WB_RegDest),
    .WB_RegWrite_i(WB_RegWrite),
    .MEM_Rd_i(MEM_RegDest),
    .MEM_RegWrite_i(MEM_RegWrite_toRegMEMWB),   
    .forwardA_o(forwardA),
    .forwardB_o(forwardB)
);

MUX32_2 EX_Rd1_to_ALU(
    .data00_i(EX_Rd1),
    .data01_i(WB_RegWriteData),
    .data10_i(MEM_MemAddr_or_ALUResult),
    .data11_i(),
    .select_i(forwardA),
    .data_o(EX_MUX_to_Rd1)
);

MUX32_2 EX_Rd2_to_ALU(
    .data00_i(EX_Rd2),
    .data01_i(WB_RegWriteData),
    .data10_i(MEM_MemAddr_or_ALUResult),
    .data11_i(),
    .select_i(forwardB),
    .data_o(EX_Rd2_MUX_to_MUX)
);

Adder PC_Adder(
    .data1_in(IF_pc_o), // 31:0
    .data2_in(32'b100), // 31:0
    .data_o(IF_pc_i) // 31:0
);

ALU_Control ALUCtrl(
    .funct_i(EX_ALUfunct), // 9:0
    .ALUOp_i(EX_ALUOp), // 1:0
    .ALUCtrl_o(EX_ALUCtrl_o) // 2:0
);

ALU ALU(
    .data1_i(EX_MUX_to_Rd1), // 31:0
    .data2_i(EX_MUXtoALU), // 31:0
    .ALUCtrl_i(EX_ALUCtrl_o), // 2:0
    .data_o(EX_ALU_toRegEXMEM), // 31:0
    .Zero_o() // 1, omitted without beq
);

Control Control(
    .Op_i(ID_instr_fromIF[6:0]), // 6:0
    .NoOp_i(NoOp),
    .ALUOp_o(ID_ALUOp_toRegIDEX), // 1:0
    .ALUSrc_o(ID_ALUSrc_toRegIDEX), // 1
    .RegWrite_o(ID_RegWrite_toRegIDEX), // 1
    .MemRead_o(ID_MemRead_toRegIDEX), // 1
    .MemWrite_o(ID_MemWrite_toRegIDEX), // 1
    .MemtoReg_o(ID_MemtoReg_toRegIDEX), // 1
    .Branch_o(Branching)
);

Data_Memory Data_Memory(
    .clk_i(clk_i), // 1
    .addr_i(MEM_MemAddr_or_ALUResult), // 31:0
    .MemRead_i(MEM_MemRead), // 1
    .MemWrite_i(MEM_MemWrite && (MEM_MemWrite !== 1'bx)), // 1
    .data_i(MEM_MemWriteData), // 31:0
    .data_o(MEM_MemReadData) // 31:0
);

ImmGen ImmGen(
    .data_i(ID_instr_fromIF), // 31:0
    .data_o(ID_ImmGen_toRegIDEX) // 31:0
);

Instruction_Memory Instruction_Memory(
    .addr_i(IF_pc_o), // 31:0
    .instr_o(IF_instr_mem_o) // 31:0
);

MUX32 MUXtoALU(
    .data1_i(EX_Rd2_MUX_to_MUX), // 31:0
    .data2_i(EX_Imm), // 31:0
    .select_i(EX_ALUSrc), // 1
    .data_o(EX_MUXtoALU) // 31:0
);

MUX32 MUXtoReg(
    .data1_i(WB_ALUResult), // 31:0
    .data2_i( WB_MemReadData), // 31:0
    .select_i(WB_MemtoReg), // 1
    .data_o(WB_RegWriteData) // 31:0
);

PC PC(
    .clk_i(clk_i), // 1
    .rst_i(rst_i), // 1
    .start_i(start_i), // 1
    .PCWrite_i(PCWrite), // 1; fixed in control hazard
    .pc_i(IF_pc_mux_i), // 31:0
    .pc_o(IF_pc_o) // 31:0
);

Registers Registers(
    .clk_i(clk_i), // 1
    .RS1addr_i(ID_instr_fromIF[19:15]), // 4:0
    .RS2addr_i(ID_instr_fromIF[24:20]), // 4:0
    .RDaddr_i(WB_RegDest),  // 4:0
    .RDdata_i(WB_RegWriteData), // 31:0
    .RegWrite_i(WB_RegWrite && !(WB_RegWrite === 1'bx)), // 1
    .RS1data_o(ID_Rd1_toRegIDEX),  // 31:0
    .RS2data_o(ID_Rd2_toRegIDEX) // 31:0
);

RegIFID RegIFID(
    .instr_i(IF_instr_mem_o), // 31:0
    .instr_o(ID_instr_fromIF), // 31:0s
    .flush(Branching && (ID_Rd1_toRegIDEX == ID_Rd2_toRegIDEX)),
    .stall(stall),
    .pc_i(IF_pc_o),
    .pc_o(ID_pc),
    .clk(clk_i) // 1
);

RegIDEX RegIDEX(
    .RegWrite_i(ID_RegWrite_toRegIDEX), // 1
    .MemtoReg_i(ID_MemtoReg_toRegIDEX), // 1
    .MemRead_i(ID_MemRead_toRegIDEX), // 1
    .MemWrite_i(ID_MemWrite_toRegIDEX), // 1
    .ALUOp_i(ID_ALUOp_toRegIDEX), // 1:0
    .ALUSrc_i(ID_ALUSrc_toRegIDEX), // 1
    .Rd1_i(ID_Rd1_toRegIDEX), // 31:0
    .Rd2_i(ID_Rd2_toRegIDEX), // 31:0
    .Imm_i(ID_ImmGen_toRegIDEX), // 31:0
    .ALUCtrl_i({ID_instr_fromIF[31:25], ID_instr_fromIF[14:12]}), // 9:0
    .RegDest_i(ID_instr_fromIF[11:7]), // 4:0
    .Rs1_i(ID_instr_fromIF[19:15]),
    .Rs2_i(ID_instr_fromIF[24:20]),
    .RegWrite_o(EX_RegWrite_toRegEXMEM), // 1
    .MemtoReg_o(EX_MemtoReg_toRegEXMEM), // 1
    .MemRead_o(EX_MemRead_toRegEXMEM), // 1
    .MemWrite_o(EX_MemWrite_toRegEXMEM), // 1
    .ALUOp_o(EX_ALUOp), // 1:0
    .ALUSrc_o(EX_ALUSrc), // 1
    .Rd1_o(EX_Rd1), // 31:0
    .Rd2_o(EX_Rd2), // 31:0
    .Imm_o(EX_Imm), // 31:0
    .ALUCtrl_o(EX_ALUfunct), // 9:0
    .RegDest_o(EX_RegDest), // 4:0    
    .Rs1_o(EX_Rs1_to_forwardUnit),
    .Rs2_o(EX_Rs2_to_forwardUnit),
    .clk(clk_i) // 1
);

RegEXMEM RegEXMEM(
    .RegWrite_i(EX_RegWrite_toRegEXMEM), // 1
    .MemtoReg_i(EX_MemtoReg_toRegEXMEM), // 1
    .MemRead_i(EX_MemRead_toRegEXMEM), // 1
    .MemWrite_i(EX_MemWrite_toRegEXMEM), // 1
    .ALUResult_i(EX_ALU_toRegEXMEM), // 31:0
    .MemWrData_i(EX_Rd2_MUX_to_MUX), // 31:0
    .RegDest_i(EX_RegDest), // 4:0
    .RegWrite_o(MEM_RegWrite_toRegMEMWB), // 1
    .MemtoReg_o(MEM_MemtoReg_toRegMEMWB), // 1
    .MemRead_o(MEM_MemRead), // 1
    .MemWrite_o(MEM_MemWrite), // 1
    .ALUResult_o(MEM_MemAddr_or_ALUResult), // 31:0
    .MemWrData_o(MEM_MemWriteData), // 31:0
    .RegDest_o(MEM_RegDest), // 4:0
    .clk(clk_i) // 1
);

RegMEMWB RegMEMWB(
    .RegWrite_i(MEM_RegWrite_toRegMEMWB), // 1
    .MemtoReg_i(MEM_MemtoReg_toRegMEMWB), // 1
    .ALUResult_i(MEM_MemAddr_or_ALUResult), // 31:0
    .MemData_i(MEM_MemReadData), // 31:0
    .RegDest_i(MEM_RegDest), // 4:0
    .RegWrite_o(WB_RegWrite), // 1
    .MemtoReg_o(WB_MemtoReg), // 1
    .ALUResult_o(WB_ALUResult), // 31:0 
    .MemData_o(WB_MemReadData), // 31:0
    .RegDest_o(WB_RegDest), // 4:0
    .clk(clk_i) // 1
);

//for binding Flush...
reg Flush;
always @(*) begin
    Flush = Branching && (ID_Rd1_toRegIDEX == ID_Rd2_toRegIDEX);
end

endmodule