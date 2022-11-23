module RegEXMEM(
    RegWrite_i,
    MemtoReg_i,
    MemRead_i,
    MemWrite_i,
    ALUResult_i,
    MemWrData_i,
    RegDest_i,
    RegWrite_o,
    MemtoReg_o,
    MemRead_o,
    MemWrite_o,
    ALUResult_o,
    MemWrData_o,
    RegDest_o,
    clk
);

input clk;
input RegWrite_i;
input MemtoReg_i;
input MemRead_i;
input MemWrite_i;
input [31:0] ALUResult_i;
input [31:0] MemWrData_i;
input [4:0] RegDest_i;
output RegWrite_o;
output MemtoReg_o;
output MemRead_o;
output MemWrite_o;
output [31:0] ALUResult_o;
output [31:0] MemWrData_o;
output [4:0] RegDest_o

reg RegWrite;
reg MemtoReg;
reg MemRead;
reg MemWrite;
reg [31:0] ALUResult;
reg [31:0] MemWrData;
reg [4:0] RegDest;

assign RegWrite_o = RegWrite;
assign MemtoReg_o = MemtoReg;
assign MemRead_o = MemRead;
assign MemWrite_o = MemWrite;
assign [31:0] ALUResult_o = ALUResult;
assign [31:0] MemWrData_o = MemWrData;
assign [4:0] RegDest_o = RegDest;

always @(posedge clk) begin
    RegWrite <= RegWrite_i;
    MemtoReg <= MemtoReg_i;
    MemRead <= MemRead_i;
    MemWrite <= MemWrite_i;
    ALUResult <= ALUResult_i;
    MemWrData <= MemWrData_i;
    RegDest <= RegDest_i;
end

endmodule