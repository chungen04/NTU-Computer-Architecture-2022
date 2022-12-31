module RegIDEX(
    RegWrite_i,
    MemtoReg_i,
    MemRead_i,
    MemWrite_i,
    ALUOp_i,
    ALUSrc_i,
    Rd1_i,
    Rd2_i,
    Imm_i,
    ALUCtrl_i,
    RegDest_i,
    Rs1_i,
    Rs2_i,
    Branch_i,
    last_flush_i,
    flush,
    target_PC_i,
    pc_i,
    RegWrite_o,
    MemtoReg_o,
    MemRead_o,
    MemWrite_o,
    ALUOp_o,
    ALUSrc_o,
    Rd1_o,
    Rd2_o,
    Imm_o,
    ALUCtrl_o,
    RegDest_o,
    Rs1_o,
    Rs2_o,
    Branch_o,
    last_flush_o,
    target_PC_o,
    pc_o,
    clk
);

input clk;
input RegWrite_i;
input MemtoReg_i;
input MemRead_i;
input MemWrite_i;
input [1:0] ALUOp_i;
input ALUSrc_i;
input [31:0] Rd1_i;
input [31:0] Rd2_i;
input [31:0] Imm_i;
input [9:0] ALUCtrl_i;
input [4:0] RegDest_i;
input [4:0] Rs1_i;
input [4:0] Rs2_i;
input Branch_i;
input last_flush_i;
input flush;
input [31:0] target_PC_i;
input [31:0] pc_i;
output RegWrite_o;
output MemtoReg_o;
output MemRead_o;
output MemWrite_o;
output [1:0] ALUOp_o;
output ALUSrc_o;
output [31:0] Rd1_o;
output [31:0] Rd2_o;
output [31:0] Imm_o;
output [9:0] ALUCtrl_o;
output [4:0] RegDest_o;
output [4:0] Rs1_o;
output [4:0] Rs2_o;
output Branch_o;
output last_flush_o;
output [31:0] target_PC_o;
output [31:0] pc_o;

reg RegWrite;
reg MemtoReg;
reg MemRead;
reg MemWrite;
reg [1:0] ALUOp;
reg ALUSrc;
reg [31:0] Rd1;
reg [31:0] Rd2;
reg [31:0] Imm;
reg [9:0] ALUCtrl;
reg [4:0] RegDest;
reg [4:0] Rs1;
reg [4:0] Rs2;
reg Branching;
reg last_flush;
reg [31:0] target_PC;
reg [31:0] pc;

assign RegWrite_o = RegWrite;
assign MemtoReg_o = MemtoReg;
assign MemRead_o = MemRead;
assign MemWrite_o = MemWrite;
assign ALUOp_o = ALUOp;
assign ALUSrc_o = ALUSrc;
assign Rd1_o = Rd1;
assign Rd2_o = Rd2;
assign Imm_o = Imm;
assign ALUCtrl_o = ALUCtrl;
assign RegDest_o = RegDest;
assign Rs1_o = Rs1;
assign Rs2_o = Rs2;
assign Branch_o = Branching;
assign last_flush_o = last_flush;
assign target_PC_o = target_PC;
assign pc_o = pc;

always @(posedge clk) begin
    if(!flush) begin
        RegWrite <= RegWrite_i;
        MemtoReg <= MemtoReg_i;
        MemRead <= MemRead_i;
        MemWrite <= MemWrite_i;
        ALUOp <= ALUOp_i;
        ALUSrc <= ALUSrc_i;
        Rd1 <= Rd1_i;
        Rd2 <= Rd2_i;
        Imm <= Imm_i;
        ALUCtrl <= ALUCtrl_i;
        RegDest <= RegDest_i;
        Rs1 <= Rs1_i;
        Rs2 <= Rs2_i;
        Branching <= Branch_i;
        last_flush <= last_flush_i;
        target_PC <= target_PC_i;
        pc <= pc_i;
    end
    else begin
        RegWrite <= 0;
        MemtoReg <= 0;
        MemRead <= 0;
        MemWrite <= 0;
        ALUOp <= 0;
        ALUSrc <= 0;
        Rd1 <= 0;
        Rd2 <= 0;
        Imm <= 0;
        ALUCtrl <= 0;
        RegDest <= 0;
        Rs1 <= 0;
        Rs2 <= 0;
        Branching <= 0;
        last_flush <= 0;
        target_PC <= 0;
        pc <= 0;
    end
end

endmodule