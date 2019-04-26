.data

inpu0: .asciiz "enter number: "
input1: .asciiz "enter power: "
result: .asciiz "Result : "

.text
.globl main
main:

#taking input1
li $v0, 4
la $a0, inpu0
syscall

li $v0, 5
syscall

move $t1, $v0

#taking input 2
li $v0, 4
la $a0, input1
syscall

li $v0, 5
syscall

move $t2, $v0


move $a0, $t1
move $a1, $t2

add $a3, $0, $a0

jal power

add $t3, $0, $v0

li $v0, 4
la $a0, result
syscall

li $v0,1
move $a0, $t3
syscall

li $v0, 10
syscall

power:

addi $sp, $sp, -12
sw $s1, 0($sp)
sw $s2, 4($sp)
sw $s3, 8($sp)

addi $s1, $0, 1

loop:

slt $s2, $s1, $a1
beq $s2, $0, goto

mult $a0, $a3
mflo $a0

addi $s1, $s1, 1
j loop

goto:

add $s3, $0, $a0
add $v0, $0, $s3

lw $s1, 0($sp)
lw $s2, 4($sp)
lw $s3, 8($sp)

addi $sp, $sp, 12
jr $ra 
.end power

