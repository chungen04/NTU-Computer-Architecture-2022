module Control(
    Op_i,
    ALUOp_o,
    ALUSrc_o,
    RegWrite_o
);

input [6:0] Op_i;
output [1:0] ALUOp_o;
output ALUSrc_o;
output RegWrite_o;

localparam R_TYPE = 7'b0110011;
localparam I_TYPE = 7'b0010011;

reg [1:0] ALUOp;
reg ALUSrc;
reg RegWrite;

assign ALUOp_o = ALUOp;
assign ALUSrc_o = ALUSrc;
assign RegWrite_o = RegWrite;

always @(*) begin
    case(Op_i)
    R_TYPE: begin
        ALUOp = 0;
        ALUSrc = 0;
        RegWrite = 1;
    end
    I_TYPE: begin
        ALUOp = 1;
        RegWrite = 1;
        ALUSrc = 1;
    end
    endcase
end

endmodule