module Control(
    Op_i,
    ALUOp_o,
    ALUSrc_o,
    RegWrite_o,
    MemRead_o,
    MemWrite_o,
    MemtoReg_o
);

input [6:0] Op_i;
output [1:0] ALUOp_o;
output ALUSrc_o;
output RegWrite_o;
output MemRead_o;
output MemWrite_o;
output MemtoReg_o;

localparam R_TYPE = 7'b0110011;
localparam I_TYPE = 7'b0010011;
localparam LW = 7'b0000011;
localparam SW = 7'b0100011;
localparam BEQ = 7'b1100011;

reg [1:0] ALUOp;
reg ALUSrc;
reg RegWrite;
reg MemRead;
reg MemWrite;
reg MemtoReg;

assign ALUOp_o = ALUOp;
assign ALUSrc_o = ALUSrc;
assign RegWrite_o = RegWrite;
assign RegWrite_o = RegWrite;
output MemRead_o = MemRead;
output MemWrite_o = MemWrite;
output MemtoReg_o = MemtoReg;

always @(*) begin
    case(Op_i)
    R_TYPE: begin
        ALUOp = 0;
        ALUSrc = 0;
        RegWrite = 1;
        MemRead = 0;
        MemWrite = 0;
        MemtoReg = 0;
    end
    I_TYPE: begin
        ALUOp = 1;
        RegWrite = 1;
        ALUSrc = 1;
        MemRead = 0;
        MemWrite = 0;
        MemtoReg = 0;
    end
    LW: begin
        ALUOp = 1;
        RegWrite = 1; // can be treated as I-TYPE
        ALUSrc = 1;
        MemRead = 1;
        MemWrite = 0;
        MemtoReg = 1;
    end
    SW: begin
        ALUOp = 1;
        RegWrite = 0;
        ALUSrc = 1; // can be treated as I-TYPE
        MemRead = 0;
        MemWrite = 1;
        MemtoReg = 0;
    end
    BEQ: begin
        ALUOp = 0;
        RegWrite = 0;
        ALUSrc = 1; // BEQ is same as R-TYPE
        MemRead = 0;
        MemWrite = 0;
        MemtoReg = 0;
    end
    endcase
end

endmodule