module ALU(
    data1_i,
    data2_i,
    ALUCtrl_i,
    data_o,
    Zero_o
);

input [31:0] data1_i;
input [31:0] data2_i;
input [2:0] ALUCtrl_i;
output [31:0] data_o;
output Zero_o;

assign Zero_o = (data1_i==data2_i)? 1:0;
reg [31:0] data;
assign data_o = data;

localparam ADD = 0;
localparam XOR = 1;
localparam SLL = 2;
localparam SUB = 3;
localparam MUL = 4;
localparam SRA = 5;
localparam AND = 6;

always @(*) begin
    case(ALUCtrl_i)
    ADD: begin
        data = data1_i + data2_i;
    end
    XOR: begin
        data = data1_i ^ data2_i;
    end
    SLL: begin
        data = data1_i <<< data2_i;
    end
    SUB: begin
        data = data1_i - data2_i;
    end
    MUL: begin
        data = data1_i * data2_i;
    end
    SRA: begin
        data = data1_i >>> data2_i[4:0];
    end
    AND: begin
        data = data1_i & data2_i;
    end
    endcase
end


endmodule