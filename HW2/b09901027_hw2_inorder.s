.globl __start

.text
__start:
    li a0, 5
    ecall
    mv x20, a0
    # now x20 has n
    li a0, 9
    add a1, x20, x0
    ecall
    # now a0 is the pointer to the heap
    add x19, a0, x0 # x19 saves heap pointer
    add x29, x0, x0 # x29 saves index when reading
    add x12, x0, x0
    bne x29, x20, read
    j exit
read:
    li a0, 5
    ecall
    slli x29, x29, 3
    add x28, x29, x19
    sw a0, 0(x28)
    srli x29, x29, 3
    addi x29, x29, 1
    bne x29, x20, read
    jal x1, inorder
    j exit
inorder:
    addi sp, sp, -16
    sw x1, 8(sp)
    sw x12, 0(sp) # 23 saves argument
    blt x12, x20, L1 
    addi sp, sp, 16 # pop return address and n reserved for the call
    jalr x0, 0(x1)
L1:
    slli x12, x12, 1
    addi x12, x12, 1
    jal x1, inorder
    
    lw x12, 0(sp)
    #print value
    li a0, 1
    slli x12, x12, 3
    add x28, x19, x12 # 21 saves the memory index to load from 
    lw x24, 0(x28) # 24 saves the value from heap
    mv a1, x24
    ecall # print value
    li a0, 11  # ecall code
    li a1, ' ' # character to print
    ecall
    
    srli x12, x12, 2 # now x12 act as argument, shift right 2
    addi x12, x12, 2
    jal x1, inorder
    
    lw x12, 0(sp) #restore caller's n
    lw x1, 8(sp) # restore caller's return address
    
    addi sp, sp, 16
    jalr x0, 0(x1)

exit:
    # Exit program(necessary)
    li a0, 10
    ecall