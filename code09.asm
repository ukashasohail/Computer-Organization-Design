.data

it0: .asciiz "Enter first Integer: "
it1: .asciiz "Enter second Integer: "
ot0: .asciiz "Product is: "

.text

.globl main
.ent main
main:

#displaying input string 1
li $v0, 4
la $a0, it0
syscall

#reading first integer
li $v0, 5
syscall

#saving value of 1st int. in $t0
move $t0, $v0 

#displaying input string 2
li $v0, 4
la $a0, it1
syscall

#reading second integer
li $v0, 5
syscall

#saving value of 2nd int. in $t1
move $t1, $v0

mult	$t0, $t1			# $t0 * $t1 = Hi and Lo registers
mflo	$t2					# copy Lo to $t2

#displaying result string
li $v0, 4
la $a0, ot0
syscall

#printing result
li $v0, 1
move $a0, $t2
syscall

#exiting
li $v0,10
syscall

jr $ra 
.end main