module MUX32_2(
    data00_i,
    data01_i,
    data10_i,
    data11_i,
    select_i,
    data_o
);
input [31:0] data00_i;
input [31:0] data01_i;
input [31:0] data10_i;
input [31:0] data11_i;
input [1:0] select_i;
output [31:0] data_o;

reg [31:0] data;
assign data_o = data;

always @(*) begin 
    case(select_i)
        2'd0: data = data00_i;
        2'd1: data = data01_i;
        2'd2: data = data10_i;
        2'd3: data = data11_i;
    endcase
end

endmodule