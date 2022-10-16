.globl __start

.text
__start:
    li a0, 5
    ecall
    mv x10, a0
    
    addi x3, x0, 2
    addi x4, x0, 1
    addi x11, x0, 0
    jal x1, fact
    j output

fact:
    addi sp, sp, -24
    sw x0, 16(sp) # used to save result
    sw x1, 8(sp)
    sw x10, 0(sp) # because x10 is gonna be used
    bge x10, x3, L1 # n save at x10; if no no need to do anything: for x10 = 0 return 0, x10 = 1 return 1
    beq x10, x4, save
    beq x10, x0, save
    j cont
cont:
    addi sp, sp, 24 # pop return address and n reserved for the call
    jalr x0, 0(x1)
save:
    sw x10, 16(sp)
    j cont

L1: 
    addi x10, x10, -1 #x10 saves argument, x11 saves return value
    jal x1, fact #call fact(n-1)
    lw x11, -8(sp)
    # add x6, x11, x0 #return at x11, remember result at x6
    sw x11, 16(sp) # save in caller space
    
    lw x10, 0(sp) #restore caller's n
    
    addi x10, x10, -2
    jal x1, fact # call fact(n-2)
    lw x11, -8(sp)
    lw x6, 16(sp)
    add x12, x11, x6
    sw x12, 16(sp)
    
    lw x10, 0(sp) #restore caller's n
    lw x1, 8(sp) # restore caller's return address
    
    addi sp, sp, 24
    jalr x0, 0(x1)
    
output:
    # Output the result
    lw x11, -8(sp)
    li a0, 1
    mv a1, x11
    ecall

exit:
    # Exit program(necessary)
    li a0, 10
    ecall