module Hazard_Detection(
    EX_MemRead_i,
    EX_RegDest_i,
    ID_Rs1_i,
    ID_Rs2_i,
    NoOp_o, // go to mux between control and ID/EX: as pg 30 of slide
    Stall_o,// as IF/IDWrite signal in pg 30 of slide
    PCWrite_o
);

// load-use hazard: insert bubble to EX stage(control set to 0),
// and IF/IDWrite set to 0 to let PC not progress

// if control hazard: flush pipeline by zero the instruction field 

input EX_MemRead_i;
input [4:0] EX_RegDest_i;
input [4:0] ID_Rs1_i;
input [4:0] ID_Rs2_i;
output NoOp_o;
output Stall_o;
output PCWrite_o;

reg NoOp;
reg stall;
reg PCWrite;

assign NoOp_o = NoOp;
assign Stall_o = stall;
assign PCWrite_o = PCWrite;

always @(*) begin 
    if(EX_MemRead_i && (EX_RegDest_i == ID_Rs1_i || EX_RegDest_i == ID_Rs2_i) )begin
        NoOp = 1;
        stall = 1;
        PCWrite = 0;
    end
    else begin
        NoOp = 0;
        stall = 0;
        PCWrite = 1;
    end
end

endmodule