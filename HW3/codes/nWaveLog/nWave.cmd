wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/ALU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/ALUCtrl_to_ALU\[2:0\]} \
{/TestBench/CPU/ALUOp_to_ALUCtrl\[1:0\]} \
{/TestBench/CPU/ALUSrc} \
{/TestBench/CPU/ALUSrc_Mux_to_ALU\[31:0\]} \
{/TestBench/CPU/ALU_to_Reg\[31:0\]} \
{/TestBench/CPU/IDLE} \
{/TestBench/CPU/Read1_to_ALU\[31:0\]} \
{/TestBench/CPU/Read2_to_Mux\[31:0\]} \
{/TestBench/CPU/RegWrite} \
{/TestBench/CPU/START} \
{/TestBench/CPU/SignExt_to_Mux\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/instr\[31:0\]} \
{/TestBench/CPU/instr_size} \
{/TestBench/CPU/pc_i\[31:0\]} \
{/TestBench/CPU/pc_o\[31:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/state_r} \
{/TestBench/CPU/state_w} \
{/LOGIC_LOW} \
{/LOGIC_HIGH} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvResizeWindow -win $_nWave1 0 31 1536 692
wvResizeWindow -win $_nWave1 771 31 762 689
wvSetCursor -win $_nWave1 169.658762 -snap {("G2" 0)}
wvResizeWindow -win $_nWave1 771 31 762 488
wvResizeWindow -win $_nWave1 771 31 762 680
wvResizeWindow -win $_nWave1 768 31 762 488
wvResizeWindow -win $_nWave1 78 64 1536 692
wvSetCursor -win $_nWave1 3.668678 -snap {("G1" 15)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 )} 
wvResizeWindow -win $_nWave1 -2 68 1605 692
wvSetCursor -win $_nWave1 511.022622 -snap {("G2" 0)}
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/PC"
wvSetPosition -win $_nWave1 {("G1" 28)}
wvSetPosition -win $_nWave1 {("G1" 28)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/ALUCtrl_to_ALU\[2:0\]} \
{/TestBench/CPU/ALUOp_to_ALUCtrl\[1:0\]} \
{/TestBench/CPU/ALUSrc} \
{/TestBench/CPU/ALUSrc_Mux_to_ALU\[31:0\]} \
{/TestBench/CPU/ALU_to_Reg\[31:0\]} \
{/TestBench/CPU/IDLE} \
{/TestBench/CPU/Read1_to_ALU\[31:0\]} \
{/TestBench/CPU/Read2_to_Mux\[31:0\]} \
{/TestBench/CPU/RegWrite} \
{/TestBench/CPU/START} \
{/TestBench/CPU/SignExt_to_Mux\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/instr\[31:0\]} \
{/TestBench/CPU/instr_size} \
{/TestBench/CPU/pc_i\[31:0\]} \
{/TestBench/CPU/pc_o\[31:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/state_r} \
{/TestBench/CPU/state_w} \
{/LOGIC_LOW} \
{/LOGIC_HIGH} \
{/BLANK} \
{/TestBench/CPU/PC/clk_i} \
{/TestBench/CPU/PC/pc_i\[31:0\]} \
{/TestBench/CPU/PC/pc_o\[31:0\]} \
{/TestBench/CPU/PC/rst_i} \
{/TestBench/CPU/PC/start_i} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 25 26 27 28 )} 
wvSetPosition -win $_nWave1 {("G1" 28)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 24.975743 -snap {("G1" 26)}
wvSetCursor -win $_nWave1 21.767850 -snap {("G1" 24)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvSetCursor -win $_nWave1 6.471836 -snap {("G1" 17)}
wvCloseFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvTpfCloseForm -win $_nWave1
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd"
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 \
           {/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb}
wvSetCursor -win $_nWave1 17.589275
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 23)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/ALUCtrl_to_ALU\[2:0\]} \
{/TestBench/CPU/ALUOp_to_ALUCtrl\[1:0\]} \
{/TestBench/CPU/ALUSrc} \
{/TestBench/CPU/ALUSrc_Mux_to_ALU\[31:0\]} \
{/TestBench/CPU/ALU_to_Reg\[31:0\]} \
{/TestBench/CPU/IDLE} \
{/TestBench/CPU/Read1_to_ALU\[31:0\]} \
{/TestBench/CPU/Read2_to_Mux\[31:0\]} \
{/TestBench/CPU/RegWrite} \
{/TestBench/CPU/START} \
{/TestBench/CPU/SignExt_to_Mux\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/instr\[31:0\]} \
{/TestBench/CPU/instr_size} \
{/TestBench/CPU/pc_i\[31:0\]} \
{/TestBench/CPU/pc_o\[31:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/state_r} \
{/TestBench/CPU/state_w} \
{/LOGIC_LOW} \
{/LOGIC_HIGH} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 \
           18 19 20 21 22 23 )} 
wvSetPosition -win $_nWave1 {("G1" 23)}
wvGetSignalClose -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/PC"
wvSetPosition -win $_nWave1 {("G1" 31)}
wvSetPosition -win $_nWave1 {("G1" 31)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/TestBench/CPU/ALUCtrl_to_ALU\[2:0\]} \
{/TestBench/CPU/ALUOp_to_ALUCtrl\[1:0\]} \
{/TestBench/CPU/ALUSrc} \
{/TestBench/CPU/ALUSrc_Mux_to_ALU\[31:0\]} \
{/TestBench/CPU/ALU_to_Reg\[31:0\]} \
{/TestBench/CPU/IDLE} \
{/TestBench/CPU/Read1_to_ALU\[31:0\]} \
{/TestBench/CPU/Read2_to_Mux\[31:0\]} \
{/TestBench/CPU/RegWrite} \
{/TestBench/CPU/START} \
{/TestBench/CPU/SignExt_to_Mux\[31:0\]} \
{/TestBench/CPU/clk_i} \
{/TestBench/CPU/instr\[31:0\]} \
{/TestBench/CPU/instr_size} \
{/TestBench/CPU/pc_i\[31:0\]} \
{/TestBench/CPU/pc_o\[31:0\]} \
{/TestBench/CPU/rst_i} \
{/TestBench/CPU/start_i} \
{/TestBench/CPU/state_r} \
{/TestBench/CPU/state_w} \
{/LOGIC_LOW} \
{/LOGIC_HIGH} \
{/BLANK} \
{/TestBench/CPU/PC/clk_i} \
{/TestBench/CPU/PC/pc_i\[31:0\]} \
{/TestBench/CPU/PC/pc_o\[31:0\]} \
{/TestBench/CPU/PC/rst_i} \
{/TestBench/CPU/PC/start_i} \
{/LOGIC_LOW} \
{/LOGIC_HIGH} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 24 25 26 27 28 29 30 31 )} 
wvSetPosition -win $_nWave1 {("G1" 31)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 8.200405 -snap {("G1" 26)}
wvZoomIn -win $_nWave1
wvZoomIn -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvZoomOut -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/TestBench"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/PC"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Registers"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/MUX_ALUSrc"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Instruction_Memory"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Control"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/Add_PC"
wvGetSignalSetScope -win $_nWave1 "/TestBench/CPU/PC"
wvSetCursor -win $_nWave1 11.646952 -snap {("G1" 17)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd.fsdb" \
           "/home/raid7_2/userb09/b09027/NTU-Computer-Architecture-2022/HW3/codes/CPU.vcd"
wvReloadFile -win $_nWave1
wvResizeWindow -win $_nWave1 -3 31 1536 692
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSelectSignal -win $_nWave1 {( "G1" 13 )} 
wvSetRadix -win $_nWave1 -format Bin
wvResizeWindow -win $_nWave1 -3 31 1536 692
wvResizeWindow -win $_nWave1 -3 31 1536 692
wvResizeWindow -win $_nWave1 530 77 1605 692
wvResizeWindow -win $_nWave1 -3 31 1536 692
wvExit
