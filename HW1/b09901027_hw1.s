.globl __start

.rodata
    division_by_zero: .string "division by zero"


.text
__start:
    # Read first operand
    li a0, 5
    ecall
    mv s0, a0
    # Read operation
    li a0, 5
    ecall
    mv s1, a0
    # Read second operand
    li a0, 5
    ecall
    mv s2, a0
    
    addi x1, x0, 0
    beq s1, x1, addition
    
    addi x1, x1, 1
    beq s1, x1, subtraction
    
    addi x1, x1, 1
    beq s1, x1, multiplication
    
    addi x1, x1, 1
    beq s1, x1, division
    
    addi x1, x1, 1
    beq s1, x1, get_min
    
    addi x1, x1, 1
    addi s3, x0, 1
    addi x2, x0, 0 # counter for power
    beq s1, x1, power
    
    # factorial also need s3 = 1 in advance
    
    addi x1, x1, 1
    beq s1, x1, factorial
    
    j output
    
    
    
###################################
#  TODO: Develop your calculator  #
#                                 #
###################################

addition:
    add s3, s0, s2
    j output
    
subtraction:
    sub s3, s0, s2
    j output

multiplication:
    mul s3, s0, s2
    j output

division:
    beq s2, x0, division_by_zero_except
    div s3, s0, s2
    j output

get_min:
    bge s0, s2, caseA
    blt s0, s2, caseB

caseA:
    add s3, x0, s2
    j output

caseB: 
    add s3, x0, s0
    j output

power:
    beq s2, x0, output
    mul s3, s3, s0
    addi x2, x2, 1
    blt x2, s2, power
    j output
    
factorial:
    beq s0, x0, output
    mul s3, s3, s0
    addi s0, s0, -1
    bne s0, x0, factorial
    j output
    
    
output:
    # Output the result
    li a0, 1
    mv a1, s3
    ecall

exit:
    # Exit program(necessary)
    li a0, 10
    ecall

division_by_zero_except:
    li a0, 4
    la a1, division_by_zero
    ecall
    jal zero, exit
