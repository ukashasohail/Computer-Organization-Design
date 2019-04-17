.data

input0: .asciiz "Enter positive integer n: "
output0: .asciiz "The result is: "

.text
.globl main
.ent main
main:

#displaying input string
li $v0, 4
la $a0, input0
syscall

#reading integer input
li $v0, 5
syscall

#storing n in $t0
move $t0, $v0

#sum = 0 in $t1
add $t1, $0, $0

#loop initialization $t2=0 (i)
addi $t2, $0, 0

loop:

# t3 = 1 if t2<t0 (i<n)
slt $t3, $t2, $t0

# n = n+i
add $t1, $t1, $t2

#increamenting loop variable
addi $t2, $t2, 1

#check condition to end loop
beq $t3, $0, outer
j loop

outer:

#displaying output
li $v0, 4
la $a0, output0
syscall

li $v0, 1
move $a0, $t1
syscall

#exiting
li $v0, 10
syscall

jr $ra
.end main