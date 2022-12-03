module MUX32_2(
    data00_i,
    data01_i,
    data10_i,
    data11_i,
    select_i,
    data_o
);
input [32:0] data00_i;
input [32:0] data01_i;
input [32:0] data10_i;
input [32:0] data11_i;
input [1:0] select_i;
output [32:0] data_o;

reg [32:0] data;
assign data_o = data;

always @(*) begin 
    case(select_i)
        2'd0: data_o = data00_i;
        2'd1: data_o = data01_i;
        2'd2: data_o = data10_i;
        2'd3: data_o = data11_i;
    endcase
end

endmodule