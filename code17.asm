.data
input0: .asciiz "Enter Number: "
output0: .asciiz "Number is Prime."
output1: .asciiz "Number is Composite."

.text
.globl main
.ent main
main:
#displaying input string
li $v0, 4
la $a0, input0
syscall

#reading input
li $v0, 5
syscall

move $t1, $v0

addi $s0, $0, 1

#if n=1 then it is composite
beq $t1, $s0, composite 

#t0 =0
addi $t0, $0, 0

#$t2 =2
addi $t2, $0, 2

div $t1,$t2
mflo $s1

loop:

slt $s2, $t2, $s1
beq $s2, $0, prime 
div $t1, $t2
mfhi $t6

beq $t6, $0, composite
addi $t2, $t2, 1
j loop

composite:

li $v0, 4
la $a0,output1
syscall
j goto

prime:
li $v0, 4
la $a0, output0
syscall

goto:
jr $ra
.end main