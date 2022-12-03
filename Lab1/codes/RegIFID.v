module RegIFID(
    instr_i,
    pc_i,
    instr_o,
    pc_o,
    stall,
    flush,
    clk
);

input clk;
input stall;
input flush;
input [31:0] pc_i;
input [31:0] instr_i;
output [31:0] instr_o;
output [31:0] pc_o;

reg [31:0] instr;
reg [31:0] pc;

assign instr_o = instr;
assign pc_o = pc;

always @(posedge clk) begin
    if(!flush) begin
        if(!stall) begin
            instr <= instr_i;
            pc <= pc_i;
        end
    end
    else begin
        instr <= 32'd0;
    end
end

endmodule