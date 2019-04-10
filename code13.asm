.data

it0: .asciiz "Enter some integer: "

ot0: .asciiz "The number is even"
ot1: .asciiz "The number is odd"

.text

.globl main
.ent  main
main:

#displaying input string
li $v0, 4
la $a0, it0
syscall

#reading integer input
li $v0, 5
syscall

#storing input in $t0
move $t0, $v0

#storing 2 in $t1
addi $t1, $0, 2

#dividing input by 2
div $t0, $t1
mfhi $t2

beq $t2, $0, label
j OUT

label: li $v0,4
la $a0, ot0
syscall
jr $ra 

OUT: li $v0, 4
la $a0, ot1
syscall
jr $ra		

.end main