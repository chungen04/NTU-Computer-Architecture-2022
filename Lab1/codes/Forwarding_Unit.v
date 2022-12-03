module Forwarding_Unit(
    EX_Rs1_i,
    EX_Rs2_i,
    WB_RegDest_i,
    WB_RegWrite_i,
    MEM_Rd_i,
    MEM_RegWrite_i,   
    forwardA_o,
    forwardB_o
);

input [4:0] EX_Rs1_i;
input [4:0] EX_Rs2_i;
input [4:0] WB_RegDest_i;
input WB_RegWrite_i;
input [4:0] MEM_Rd_i;
input MEM_RegWrite_i;

output [1:0] forwardA_o;
output [1:0] forwardB_o;

reg [1:0] forwardA;
reg [1:0] forwardB;

assign forwardA_o = forwardA;
assign forwardB_o = forwardB;

always @(*) begin
    if(MEM_RegWrite_i && \
        (MEM_RegRd_i != 0) && \
        (MEM_RegRd_i == EX_Rs1_i)    
    ) begin
        forwardA = 2'd10;
    end
    else if(WB_RegWrite_i && 
        (WB_RegDest_i != 0) && \
        !(MEM_RegWrite_i && (MEM_RegRd_i != 0) && (MEM_RegRd_i == EX_Rs1_i)) && \
        (WB_RegDest_i == EX_Rs1_i) \
    ) begin
        forwardA = 2'd1;
    end
    else begin
        forwardA = 2'd0;
    end

    if(MEM_RegWrite_i && \
        (MEM_RegRd_i != 0) && \
        (MEM_RegRd_i == EX_Rs2_i) \  
    ) begin
        forwardB = 2'd10;
    end
    else if(WB_RegWrite_i && 
        (WB_RegDest_i != 0) && \
        !(MEM_RegWrite_i && (MEM_RegRd_i != 0) && (MEM_RegRd_i == EX_Rs2_i)) && \
        (WB_RegDest_i == EX_Rs2_i) \
    ) begin
        forwardB = 2'd1;
    end
    else begin
        forwardB = 2'd0;
    end
end


endmodule