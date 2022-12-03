module ImmGen(
    data_i,
    data_o
);

input [31:0] data_i; // instruction
output [31:0] data_o;

// there are 4 scenes of immediate field. 

reg [31:0] data;
assign data_o = data;

always @(*) begin
    if(data_i[6:0] == 7'b0010011) begin // i-type
        data = {{20{data_i[31]}}, data_i[31:20]};
    end
    else if(data_i[6:0] == 7'b0000011) begin // lw
        data = {{20{data_i[31]}}, data_i[31:20]};
    end
    else if(data_i[6:0] == 7'b0100011) begin // sw
        data = {{20{data_i[31]}}, data_i[31:25], data_i[11:7]};
    end
    else if(data_i[6:0] == 7'b0100011) begin // beq
        data = {{19{data_i[31]}}, data_i[31], data_i[7], data[30:25], data[11:8]};
    end
    else begin
        data = 32'b0;
    end
end

endmodule