.data

input0: .asciiz "Enter Number: "
output0: .asciiz "Output is: "

.text
.globl main
.ent main
main:

back:

#displaying input string
li $v0, 4
la $a0, input0
syscall

#reading integer input
li $v0, 5
syscall

#storing input in $t1 = n
move $t1, $v0

#declaring fact = 1
addi $s1, $0, 1

slt $t6, $t1, $0
bne $t6, $0, back

loop:

slt $t2, $0, $t1

beq $t2, $0, goto

mult $s1, $t1
mflo $s1

addi $t1, $t1, -1
j loop

goto:

li $v0, 4
la $a0, output0
syscall

li $v0,1
move $a0, $s1
syscall

li $v0, 10
syscall

jr $ra
.end main