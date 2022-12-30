module ALU_Control(
    funct_i,
    ALUOp_i,
    ALUCtrl_o
);

input [9:0] funct_i; // indicate func code + opcode
input [1:0] ALUOp_i;
output [2:0] ALUCtrl_o;

localparam R_TYPE = 0;
localparam I_TYPE = 1;
localparam BEQ_TYPE = 2;
localparam AND_FUNC = 10'b0000000111;
localparam XOR_FUNC = 10'b0000000100;
localparam SLL_FUNC = 10'b0000000001;
localparam ADD_FUNC = 10'b0000000000;
localparam SUB_FUNC = 10'b0100000000;
localparam MUL_FUNC = 10'b0000001000;
localparam ADDI_FUNC = 3'b000;
localparam SRAI_FUNC = 3'b101;
localparam LW_SW_FUNC = 3'b010;

localparam ADD = 0;
localparam XOR = 1;
localparam SLL = 2;
localparam SUB = 3;
localparam MUL = 4;
localparam SRA = 5;
localparam AND = 6; // code received in ALU. addi is same as add
// opcode is decoded by controller

reg [2:0] ALUCtrl;

assign ALUCtrl_o = ALUCtrl;

always @(*) begin
    case(ALUOp_i)
        R_TYPE: begin
            case(funct_i)
            AND_FUNC: begin
                ALUCtrl = AND;
            end
            XOR_FUNC: begin
                ALUCtrl = XOR;
            end
            SLL_FUNC: begin
                ALUCtrl = SLL;
            end
            ADD_FUNC: begin
                ALUCtrl = ADD;
            end
            SUB_FUNC: begin
                ALUCtrl = SUB;
            end
            MUL_FUNC: begin
                ALUCtrl = MUL;
            end
            endcase 
        end
        I_TYPE: begin
            case(funct_i[2:0])
            ADDI_FUNC: begin
                ALUCtrl = ADD;
            end
            SRAI_FUNC: begin
                ALUCtrl = SRA;
            end
            LW_SW_FUNC:begin
                ALUCtrl = ADD;
            end
            endcase
        end
        BEQ_TYPE: begin
            ALUCtrl = SUB;
        end
    endcase
end

endmodule