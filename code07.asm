.data

it0: .asciiz "Enter a number to calculate 2's compliment"

ot0: .asciiz "2's compliment of your entered number is: "

.text

.globl main

.ent main
main:
#displaying input string
li $v0, 4
la $a0, it0
syscall

#reading number entered by user
li $v0,5
syscall

#saving number entered by user to $t0
move $t0,$v0

#noring with 0 to get 1's compliment
nor $t0, $t0, $0
#adding 1 to get 2's compliment
addi $t0, $t0, 1

#displaying output result string
li $v0,4
la $a0,ot0
syscall

#displaying calculated 2's complement
li $v0, 1
move $a0, $t0
syscall
#exiting
li $v0,10
syscall

jr $ra
.end main