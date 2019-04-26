.data

i1: .asciiz "Enter First Number: "
i2: .asciiz "Enter Second Number: "
i3: .asciiz "Enter Third Number: "
out: .asciiz "The Output is: "

.text
.globl main
.ent main
main:

li $v0, 4
la $a0, i1
syscall

li $v0, 5
syscall

# $t0 = n1
move $t0, $v0

li $v0, 4
la $a0, i2
syscall

li $v0, 5
syscall

# $t1 = n2
move $t1, $v0

li $v0, 4
la $a0, i3
syscall

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
la $a0, out
syscall

li $v0, 1
move $a0, $t3
syscall

li $v0, 10
syscall

.end main

.globl AVERAGE
.ent AVERAGE
AVERAGE:

move $s0, $a0 
move $s1, $a1 
move $s2, $a2 

add $s3, $s0, $s1 
add $s3, $s3, $s2

addi $s3, $s3, 1
addi $s4, $0, 3
div $s3, $s4
mflo $s5 

move $v0, $s5

jr $ra
.end AVERAGE
