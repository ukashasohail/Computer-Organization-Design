.data 

it0: .asciiz "Enter Divident: "
it1: .asciiz "Enter Divisor: "
ot0: .asciiz "Quotient is: "
ot1: .asciiz "\nRemainder is: "

.text

.globl main
.ent main
main:

#displaying divident input string
li $v0, 4
la $a0,it0
syscall

#reading divident input
li $v0,5
syscall

#storing divident in $t0
move $t0,$v0

#displaying divisor string
li $v0, 4
la $a0, it1
syscall

#reading divisor input
li $v0,5
syscall

#storing divisor in $t1
move $t1, $v0

#dividing
div $t0, $t1
mflo $t2
mfhi $t3

#displaying output quotient
li $v0,4
la $a0,ot0
syscall
li $v0,1
move $a0, $t2
syscall

#displaying output remainder
li $v0,4
la $a0, ot1
syscall
li $v0,1
move $a0, $t3
syscall

#exiting
li $v0,10
syscall
jr $ra 
.end main
