.data

it0: .asciiz "Enter uppercase alphabet followed by Enter: "

ot0: .asciiz "\nYou Entered: "

.text

.globl main
.ent main
main:

#displaying input string
li $v0,4
la $a0,it0
syscall

#reading character
li $v0,12
syscall

#moving read character ascii code to $t0
move $t0,$v0

#adding 32 to ascii code to make it lowercase of same alphabet
addi $t1,$t0,32

#displaying output text string
li $v0,4
la $a0,ot0
syscall

#displaying lowercase character
li $v0,11
move $a0,$t1
syscall

#exiting
li $v0,10
syscall

jr $ra 
.end main