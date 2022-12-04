wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvSetPosition -win $_nWave1 {("G1" 57)}
wvSetPosition -win $_nWave1 {("G1" 57)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/Branching} \
{/TestBench/CPU/EX_ALUCtrl_o\[2:0\]} \
{/TestBench/CPU/EX_ALUOp\[1:0\]} \
{/TestBench/CPU/EX_ALUSrc} \
{/TestBench/CPU/EX_ALU_toRegEXMEM\[31:0\]} \
{/TestBench/CPU/EX_ALUfunct\[9:0\]} \
{/TestBench/CPU/EX_Imm\[31:0\]} \
{/TestBench/CPU/EX_MUX_to_Rd1\[31:0\]} \
{/TestBench/CPU/EX_MUXtoALU\[31:0\]} \
{/TestBench/CPU/EX_MemRead_toRegEXMEM} \
{/TestBench/CPU/EX_MemWrite_toRegEXMEM} \
{/TestBench/CPU/EX_MemtoReg_toRegEXMEM} \
{/TestBench/CPU/EX_Rd1\[31:0\]} \
{/TestBench/CPU/EX_Rd2\[31:0\]} \
{/TestBench/CPU/EX_Rd2_MUX_to_MUX\[31:0\]} \
{/TestBench/CPU/EX_RegDest\[4:0\]} \
{/TestBench/CPU/EX_RegWrite_toRegEXMEM} \
{/TestBench/CPU/EX_Rs1_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/EX_Rs2_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/Flush} \
{/TestBench/CPU/ID_ALUOp_toRegIDEX\[1:0\]} \
{/TestBench/CPU/ID_ALUSrc_toRegIDEX} \
{/TestBench/CPU/ID_ImmGen_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_MemRead_toRegIDEX} \
{/TestBench/CPU/ID_MemWrite_toRegIDEX} \
{/TestBench/CPU/ID_MemtoReg_toRegIDEX} \
{/TestBench/CPU/ID_Rd1_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_Rd2_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_RegWrite_toRegIDEX} \
{/TestBench/CPU/ID_instr_fromIF\[31:0\]} \
{/TestBench/CPU/ID_pc\[31:0\]} \
{/TestBench/CPU/IF_instr_mem_o\[31:0\]} \
{/TestBench/CPU/IF_pc_i\[31:0\]} \
{/TestBench/CPU/IF_pc_mux_i\[31:0\]} \
{/TestBench/CPU/IF_pc_o\[31:0\]} \
{/TestBench/CPU/MEM_MemAddr_or_ALUResult\[31:0\]} \
{/TestBench/CPU/MEM_MemRead} \
{/TestBench/CPU/MEM_MemReadData\[31:0\]} \
{/TestBench/CPU/MEM_MemWrite} \
{/TestBench/CPU/MEM_MemWriteData\[31:0\]} \
{/TestBench/CPU/MEM_MemtoReg_toRegMEMWB} \
{/TestBench/CPU/MEM_RegDest\[4:0\]} \
{/TestBench/CPU/MEM_RegWrite_toRegMEMWB} \
{/TestBench/CPU/NoOp} \
{/TestBench/CPU/PCWrite} \
{/TestBench/CPU/WB_ALUResult\[31:0\]} \
{/TestBench/CPU/WB_MemReadData\[31:0\]} \
{/TestBench/CPU/WB_MemtoReg} \
{/TestBench/CPU/WB_RegDest\[4:0\]} \
{/TestBench/CPU/WB_RegWrite} \
{/TestBench/CPU/WB_RegWriteData\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/forwardA\[1:0\]} \
{/TestBench/CPU/forwardB\[1:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/stall} \
{/TestBench/CPU/start_i} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 \
           40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 )} 
wvSetPosition -win $_nWave1 {("G1" 57)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 123.598841 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvScrollUp -win $_nWave1 13
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 45 )} 
wvScrollUp -win $_nWave1 13
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSelectSignal -win $_nWave1 {( "G1" 2 )} 
wvSelectSignal -win $_nWave1 {( "G1" 3 )} 
wvScrollDown -win $_nWave1 13
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 30 )} 
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvSetCursor -win $_nWave1 42.360608 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 91.781318 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 51.774077 -snap {("G1" 31)}
wvSetCursor -win $_nWave1 4.706734 -snap {("G1" 31)}
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSelectSignal -win $_nWave1 {( "G1" 29 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 26 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Data_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvSetPosition -win $_nWave1 {("G1" 59)}
wvSetPosition -win $_nWave1 {("G1" 59)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/Branching} \
{/TestBench/CPU/EX_ALUCtrl_o\[2:0\]} \
{/TestBench/CPU/EX_ALUOp\[1:0\]} \
{/TestBench/CPU/EX_ALUSrc} \
{/TestBench/CPU/EX_ALU_toRegEXMEM\[31:0\]} \
{/TestBench/CPU/EX_ALUfunct\[9:0\]} \
{/TestBench/CPU/EX_Imm\[31:0\]} \
{/TestBench/CPU/EX_MUX_to_Rd1\[31:0\]} \
{/TestBench/CPU/EX_MUXtoALU\[31:0\]} \
{/TestBench/CPU/EX_MemRead_toRegEXMEM} \
{/TestBench/CPU/EX_MemWrite_toRegEXMEM} \
{/TestBench/CPU/EX_MemtoReg_toRegEXMEM} \
{/TestBench/CPU/EX_Rd1\[31:0\]} \
{/TestBench/CPU/EX_Rd2\[31:0\]} \
{/TestBench/CPU/EX_Rd2_MUX_to_MUX\[31:0\]} \
{/TestBench/CPU/EX_RegDest\[4:0\]} \
{/TestBench/CPU/EX_RegWrite_toRegEXMEM} \
{/TestBench/CPU/EX_Rs1_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/EX_Rs2_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/Flush} \
{/TestBench/CPU/ID_ALUOp_toRegIDEX\[1:0\]} \
{/TestBench/CPU/ID_ALUSrc_toRegIDEX} \
{/TestBench/CPU/ID_ImmGen_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_MemRead_toRegIDEX} \
{/TestBench/CPU/ID_MemWrite_toRegIDEX} \
{/TestBench/CPU/ID_MemtoReg_toRegIDEX} \
{/TestBench/CPU/ID_Rd1_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_Rd2_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_RegWrite_toRegIDEX} \
{/TestBench/CPU/ID_instr_fromIF\[31:0\]} \
{/TestBench/CPU/ID_pc\[31:0\]} \
{/TestBench/CPU/IF_instr_mem_o\[31:0\]} \
{/TestBench/CPU/IF_pc_i\[31:0\]} \
{/TestBench/CPU/IF_pc_mux_i\[31:0\]} \
{/TestBench/CPU/IF_pc_o\[31:0\]} \
{/TestBench/CPU/MEM_MemAddr_or_ALUResult\[31:0\]} \
{/TestBench/CPU/MEM_MemRead} \
{/TestBench/CPU/MEM_MemReadData\[31:0\]} \
{/TestBench/CPU/MEM_MemWrite} \
{/TestBench/CPU/MEM_MemWriteData\[31:0\]} \
{/TestBench/CPU/MEM_MemtoReg_toRegMEMWB} \
{/TestBench/CPU/MEM_RegDest\[4:0\]} \
{/TestBench/CPU/MEM_RegWrite_toRegMEMWB} \
{/TestBench/CPU/NoOp} \
{/TestBench/CPU/PCWrite} \
{/TestBench/CPU/WB_ALUResult\[31:0\]} \
{/TestBench/CPU/WB_MemReadData\[31:0\]} \
{/TestBench/CPU/WB_MemtoReg} \
{/TestBench/CPU/WB_RegDest\[4:0\]} \
{/TestBench/CPU/WB_RegWrite} \
{/TestBench/CPU/WB_RegWriteData\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/forwardA\[1:0\]} \
{/TestBench/CPU/forwardB\[1:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/stall} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/Instruction_Memory/addr_i\[31:0\]} \
{/TestBench/CPU/Instruction_Memory/instr_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 58 59 )} 
wvSetPosition -win $_nWave1 {("G1" 59)}
wvGetSignalClose -win $_nWave1
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 15
wvResizeWindow -win $_nWave1 0 23 1536 801
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 13
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/MUXtoALU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/ImmGen"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/MUXtoALU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvGetSignalSetOptions -win $_nWave1 -inout on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -output on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -output off
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -input on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -all on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -register on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvGetSignalSetOptions -win $_nWave1 -all on
wvGetSignalSetSignalFilter -win $_nWave1 "*"
wvSetPosition -win $_nWave1 {("G1" 59)}
wvSetPosition -win $_nWave1 {("G1" 59)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/Branching} \
{/TestBench/CPU/EX_ALUCtrl_o\[2:0\]} \
{/TestBench/CPU/EX_ALUOp\[1:0\]} \
{/TestBench/CPU/EX_ALUSrc} \
{/TestBench/CPU/EX_ALU_toRegEXMEM\[31:0\]} \
{/TestBench/CPU/EX_ALUfunct\[9:0\]} \
{/TestBench/CPU/EX_Imm\[31:0\]} \
{/TestBench/CPU/EX_MUX_to_Rd1\[31:0\]} \
{/TestBench/CPU/EX_MUXtoALU\[31:0\]} \
{/TestBench/CPU/EX_MemRead_toRegEXMEM} \
{/TestBench/CPU/EX_MemWrite_toRegEXMEM} \
{/TestBench/CPU/EX_MemtoReg_toRegEXMEM} \
{/TestBench/CPU/EX_Rd1\[31:0\]} \
{/TestBench/CPU/EX_Rd2\[31:0\]} \
{/TestBench/CPU/EX_Rd2_MUX_to_MUX\[31:0\]} \
{/TestBench/CPU/EX_RegDest\[4:0\]} \
{/TestBench/CPU/EX_RegWrite_toRegEXMEM} \
{/TestBench/CPU/EX_Rs1_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/EX_Rs2_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/Flush} \
{/TestBench/CPU/ID_ALUOp_toRegIDEX\[1:0\]} \
{/TestBench/CPU/ID_ALUSrc_toRegIDEX} \
{/TestBench/CPU/ID_ImmGen_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_MemRead_toRegIDEX} \
{/TestBench/CPU/ID_MemWrite_toRegIDEX} \
{/TestBench/CPU/ID_MemtoReg_toRegIDEX} \
{/TestBench/CPU/ID_Rd1_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_Rd2_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_RegWrite_toRegIDEX} \
{/TestBench/CPU/ID_instr_fromIF\[31:0\]} \
{/TestBench/CPU/ID_pc\[31:0\]} \
{/TestBench/CPU/IF_instr_mem_o\[31:0\]} \
{/TestBench/CPU/IF_pc_i\[31:0\]} \
{/TestBench/CPU/IF_pc_mux_i\[31:0\]} \
{/TestBench/CPU/IF_pc_o\[31:0\]} \
{/TestBench/CPU/MEM_MemAddr_or_ALUResult\[31:0\]} \
{/TestBench/CPU/MEM_MemRead} \
{/TestBench/CPU/MEM_MemReadData\[31:0\]} \
{/TestBench/CPU/MEM_MemWrite} \
{/TestBench/CPU/MEM_MemWriteData\[31:0\]} \
{/TestBench/CPU/MEM_MemtoReg_toRegMEMWB} \
{/TestBench/CPU/MEM_RegDest\[4:0\]} \
{/TestBench/CPU/MEM_RegWrite_toRegMEMWB} \
{/TestBench/CPU/NoOp} \
{/TestBench/CPU/PCWrite} \
{/TestBench/CPU/WB_ALUResult\[31:0\]} \
{/TestBench/CPU/WB_MemReadData\[31:0\]} \
{/TestBench/CPU/WB_MemtoReg} \
{/TestBench/CPU/WB_RegDest\[4:0\]} \
{/TestBench/CPU/WB_RegWrite} \
{/TestBench/CPU/WB_RegWriteData\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/forwardA\[1:0\]} \
{/TestBench/CPU/forwardB\[1:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/stall} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/Instruction_Memory/addr_i\[31:0\]} \
{/TestBench/CPU/Instruction_Memory/instr_o\[31:0\]} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSetPosition -win $_nWave1 {("G1" 59)}
wvSelectSignal -win $_nWave1 {( "G1" 58 )} 
wvSelectSignal -win $_nWave1 {( "G1" 59 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 28
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvScrollDown -win $_nWave1 27
wvSetCursor -win $_nWave1 293.104798 -snap {("G1" 51)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvResizeWindow -win $_nWave1 8 31 1540 845
wvResizeWindow -win $_nWave1 8 31 1540 845
wvResizeWindow -win $_nWave1 1 31 766 792
wvSetCursor -win $_nWave1 55.766409 -snap {("G1" 6)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSelectSignal -win $_nWave1 {( "G1" 35 )} 
wvSetCursor -win $_nWave1 41.218650 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 4.849253 -snap {("G1" 34)}
wvSetCursor -win $_nWave1 46.067903 -snap {("G1" 34)}
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvResizeWindow -win $_nWave1 1 31 766 792
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSelectSignal -win $_nWave1 {( "G1" 32 )} 
wvSetRadix -win $_nWave1 -format Bin
wvResizeWindow -win $_nWave1 1 31 766 792
wvResizeWindow -win $_nWave1 1 31 766 792
wvSetCursor -win $_nWave1 110.216730 -snap {("G1" 32)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Data_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Registers"
wvSetPosition -win $_nWave1 {("G1" 67)}
wvSetPosition -win $_nWave1 {("G1" 67)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/Branching} \
{/TestBench/CPU/EX_ALUCtrl_o\[2:0\]} \
{/TestBench/CPU/EX_ALUOp\[1:0\]} \
{/TestBench/CPU/EX_ALUSrc} \
{/TestBench/CPU/EX_ALU_toRegEXMEM\[31:0\]} \
{/TestBench/CPU/EX_ALUfunct\[9:0\]} \
{/TestBench/CPU/EX_Imm\[31:0\]} \
{/TestBench/CPU/EX_MUX_to_Rd1\[31:0\]} \
{/TestBench/CPU/EX_MUXtoALU\[31:0\]} \
{/TestBench/CPU/EX_MemRead_toRegEXMEM} \
{/TestBench/CPU/EX_MemWrite_toRegEXMEM} \
{/TestBench/CPU/EX_MemtoReg_toRegEXMEM} \
{/TestBench/CPU/EX_Rd1\[31:0\]} \
{/TestBench/CPU/EX_Rd2\[31:0\]} \
{/TestBench/CPU/EX_Rd2_MUX_to_MUX\[31:0\]} \
{/TestBench/CPU/EX_RegDest\[4:0\]} \
{/TestBench/CPU/EX_RegWrite_toRegEXMEM} \
{/TestBench/CPU/EX_Rs1_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/EX_Rs2_to_forwardUnit\[4:0\]} \
{/TestBench/CPU/Flush} \
{/TestBench/CPU/ID_ALUOp_toRegIDEX\[1:0\]} \
{/TestBench/CPU/ID_ALUSrc_toRegIDEX} \
{/TestBench/CPU/ID_ImmGen_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_MemRead_toRegIDEX} \
{/TestBench/CPU/ID_MemWrite_toRegIDEX} \
{/TestBench/CPU/ID_MemtoReg_toRegIDEX} \
{/TestBench/CPU/ID_Rd1_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_Rd2_toRegIDEX\[31:0\]} \
{/TestBench/CPU/ID_RegWrite_toRegIDEX} \
{/TestBench/CPU/ID_instr_fromIF\[31:0\]} \
{/TestBench/CPU/ID_pc\[31:0\]} \
{/TestBench/CPU/IF_instr_mem_o\[31:0\]} \
{/TestBench/CPU/IF_pc_i\[31:0\]} \
{/TestBench/CPU/IF_pc_mux_i\[31:0\]} \
{/TestBench/CPU/IF_pc_o\[31:0\]} \
{/TestBench/CPU/MEM_MemAddr_or_ALUResult\[31:0\]} \
{/TestBench/CPU/MEM_MemRead} \
{/TestBench/CPU/MEM_MemReadData\[31:0\]} \
{/TestBench/CPU/MEM_MemWrite} \
{/TestBench/CPU/MEM_MemWriteData\[31:0\]} \
{/TestBench/CPU/MEM_MemtoReg_toRegMEMWB} \
{/TestBench/CPU/MEM_RegDest\[4:0\]} \
{/TestBench/CPU/MEM_RegWrite_toRegMEMWB} \
{/TestBench/CPU/NoOp} \
{/TestBench/CPU/PCWrite} \
{/TestBench/CPU/WB_ALUResult\[31:0\]} \
{/TestBench/CPU/WB_MemReadData\[31:0\]} \
{/TestBench/CPU/WB_MemtoReg} \
{/TestBench/CPU/WB_RegDest\[4:0\]} \
{/TestBench/CPU/WB_RegWrite} \
{/TestBench/CPU/WB_RegWriteData\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/forwardA\[1:0\]} \
{/TestBench/CPU/forwardB\[1:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/stall} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/Instruction_Memory/addr_i\[31:0\]} \
{/TestBench/CPU/Instruction_Memory/instr_o\[31:0\]} \
{/TestBench/CPU/Registers/RDaddr_i\[4:0\]} \
{/TestBench/CPU/Registers/RDdata_i\[31:0\]} \
{/TestBench/CPU/Registers/RS1addr_i\[4:0\]} \
{/TestBench/CPU/Registers/RS1data_o\[31:0\]} \
{/TestBench/CPU/Registers/RS2addr_i\[4:0\]} \
{/TestBench/CPU/Registers/RS2data_o\[31:0\]} \
{/TestBench/CPU/Registers/RegWrite_i} \
{/TestBench/CPU/Registers/clk_i} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 60 61 62 63 64 65 66 67 )} 
wvSetPosition -win $_nWave1 {("G1" 67)}
wvGetSignalClose -win $_nWave1
wvResizeWindow -win $_nWave1 1 31 766 793
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 44.086692 -snap {("G1" 64)}
wvSetCursor -win $_nWave1 39.188171 -snap {("G1" 64)}
wvSetCursor -win $_nWave1 44.086692 -snap {("G1" 64)}
wvSetCursor -win $_nWave1 44.086692 -snap {("G1" 64)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 801
wvScrollDown -win $_nWave1 0
wvSetCursor -win $_nWave1 545.415018 -snap {("G1" 58)}
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSelectSignal -win $_nWave1 {( "G1" 59 )} 
wvSelectSignal -win $_nWave1 {( "G1" 58 59 60 61 62 63 64 65 66 67 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 57)}
wvSetCursor -win $_nWave1 490.090966 -snap {("G1" 35)}
wvSetCursor -win $_nWave1 591.897302 -snap {("G1" 35)}
wvScrollUp -win $_nWave1 23
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvResizeWindow -win $_nWave1 8 31 1540 845
wvResizeWindow -win $_nWave1 8 303 1540 573
wvResizeWindow -win $_nWave1 1 31 766 792
wvResizeWindow -win $_nWave1 1 31 766 792
wvSetCursor -win $_nWave1 648.058648 -snap {("G1" 31)}
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSelectSignal -win $_nWave1 {( "G1" 27 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSelectSignal -win $_nWave1 {( "G1" 28 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 697.154000 -snap {("G1" 30)}
wvScrollUp -win $_nWave1 7
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 0 23 1536 801
wvSetCursor -win $_nWave1 746.278413 -snap {("G1" 16)}
wvSetCursor -win $_nWave1 746.278413 -snap {("G1" 16)}
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 850.185708 -snap {("G1" 49)}
wvSetCursor -win $_nWave1 795.870531 -snap {("G1" 49)}
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvSetCursor -win $_nWave1 741.555354 -snap {("G1" 40)}
wvSetCursor -win $_nWave1 800.593590 -snap {("G1" 40)}
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetRadix -win $_nWave1 -format Bin
wvSelectSignal -win $_nWave1 {( "G1" 40 )} 
wvSetRadix -win $_nWave1 -format UDec
wvSetCursor -win $_nWave1 836.016531 -snap {("G1" 40)}
wvScrollUp -win $_nWave1 10
wvScrollUp -win $_nWave1 1
wvScrollUp -win $_nWave1 9
wvScrollUp -win $_nWave1 3
wvSelectSignal -win $_nWave1 {( "G1" 11 )} 
wvScrollDown -win $_nWave1 10
wvSelectSignal -win $_nWave1 {( "G1" 25 )} 
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/Lab1/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollUp -win $_nWave1 1
wvScrollDown -win $_nWave1 1
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
wvScrollDown -win $_nWave1 0
