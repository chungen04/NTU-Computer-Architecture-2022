module RegMEMWB(
    RegWrite_i,
    MemtoReg_i,
    ALUResult_i,
    MemData_i,
    RegDest_i,
    RegWrite_o,
    MemtoReg_o,
    ALUResult_o,
    MemData_o,
    RegDest_o,
    clk
);

input clk;
input RegWrite_i;
input MemtoReg_i;
input [31:0] ALUResult_i;
input [31:0] MemData_i;
input [4:0] RegDest_i;
output RegWrite_o;
output MemtoReg_o;
output [31:0] ALUResult_o;
output [31:0] MemData_o;
output [4:0] RegDest_o;

reg RegWrite;
reg MemtoReg;
reg [31:0] ALUResult;
reg [31:0] MemData;
reg [4:0] RegDest;

assign RegWrite_o = RegWrite;
assign MemtoReg_o = MemtoReg;
assign ALUResult_o = ALUResult;
assign MemData_o = MemData;
assign RegDest_o = RegDest;

always @(posedge clk) begin
    RegWrite <= RegWrite_i;
    MemtoReg <= MemtoReg_i;
    ALUResult <= ALUResult_i;
    MemData <= MemData_i;
    RegDest <= RegDest_i;
end

endmodule