module CPU
(
    clk_i, 
    rst_i,
    start_i
);

// Ports
input               clk_i;
input               rst_i;
input               start_i;

localparam IDLE = 0;
localparam START = 1;
reg state_w;
reg state_r;


wire [31:0] ALUSrc_Mux_to_ALU;
wire [31:0] Read2_to_Mux;
wire [31:0] SignExt_to_Mux;
wire [2:0] ALUCtrl_to_ALU;
wire [31:0] ALU_to_Reg;
wire [31:0] Read1_to_ALU;
localparam instr_size = 4;
wire [31:0] instr;
wire [31:0] pc_o;
wire [31:0] pc_i;

wire [1:0] ALUOp_to_ALUCtrl;
wire RegWrite;
wire ALUSrc;

Control Control(
    .Op_i       (instr[6:0]),
    .ALUOp_o    (ALUOp_to_ALUCtrl),
    .ALUSrc_o   (ALUSrc),
    .RegWrite_o (RegWrite)
);

Adder Add_PC(
    .data1_in   (pc_o),
    .data2_in   (instr_size),
    .data_o     (pc_i)
);

PC PC(
    .clk_i      (clk_i),
    .rst_i      (rst_i),
    .start_i    (start_i),
    .pc_i       (pc_i),
    .pc_o       (pc_o)
);

Instruction_Memory Instruction_Memory(
    .addr_i     (pc_o), 
    .instr_o    (instr)
);

Registers Registers(
    .clk_i      (clk_i),
    .RS1addr_i   (instr[19:15]),
    .RS2addr_i   (instr[24:20]),
    .RDaddr_i   (instr[11:7]), 
    .RDdata_i   (ALU_to_Reg),
    .RegWrite_i (RegWrite), 
    .RS1data_o   (Read1_to_ALU), 
    .RS2data_o   (Read2_to_Mux) 
);

MUX32 MUX_ALUSrc(
    .data1_i    (Read2_to_Mux),
    .data2_i    (SignExt_to_Mux),
    .select_i   (ALUSrc),
    .data_o     (ALUSrc_Mux_to_ALU)
);



Sign_Extend Sign_Extend(
    .data_i     (instr[31:20]),
    .data_o     (SignExt_to_Mux)
);

ALU ALU(
    .data1_i    (Read1_to_ALU),
    .data2_i    (ALUSrc_Mux_to_ALU),
    .ALUCtrl_i  (ALUCtrl_to_ALU),
    .data_o     (ALU_to_Reg),
    .Zero_o     () // left blank (where should it go to)
);



ALU_Control ALU_Control(
    .funct_i    ({instr[31:25], instr[14:12]}),
    .ALUOp_i    (ALUOp_to_ALUCtrl),
    .ALUCtrl_o  (ALUCtrl_to_ALU)
);

always @(*) begin
    case(state_r)
    IDLE: begin
        if(start_i) begin
            state_w = START;
	end
        else begin 
            state_w = IDLE;
        end
    end
    START: begin
        state_w = START;
    end
    endcase
end

always @(posedge clk_i or posedge rst_i) begin
    state_r = rst_i? IDLE:state_w;
end

endmodule

