.data 
#AVERAGE
input0: .asciiz "Enter First Number: "
input1: .asciiz "Enter Second Number: "
input2: .asciiz "Enter Third Number: "
output0: .asciiz "The Output is: "

.text
.globl main
.ent main
main:

#input#1
li $v0, 4
la $a0, input0
syscall

#reading input#1
li $v0, 5
syscall

# $t0 = n1
move $t0, $v0

#input#2
li $v0, 4
la $a0, input1
syscall

#reading input#2
li $v0, 5
syscall

# $t1 = n2
move $t1, $v0

#input#3
li $v0, 4
la $a0, input2
syscall

#reading input#2
li $v0, 5
syscall

# $t2 = n3
move $t2, $v0

move $a0, $t0
move $a1, $t1
move $a2, $t2

jal AVERAGE

move $t3, $v0

li $v0, 4
la $a0, output0
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall

.end main

#AVERAGE FUNCTION
.globl AVERAGE
.ent AVERAGE
AVERAGE:

move $s0, $a0 # s0 = n1 
move $s1, $a1 # s1 = n2
move $s2, $a2 # s2 = n3

add $s3, $s0, $s1 # s3 = n1+n2
add $s3, $s3, $s2 # s3 = s3+n3

addi $s3, $s3, 1 #adding half the divisor i.e 1

addi $s4, $0, 3 # s4 = 3

div $s3, $s4

mflo $s5 # result = s5

move $v0, $s5

jr $ra
.end AVERAGE