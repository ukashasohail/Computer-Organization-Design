.data

str0: .asciiz "Enter Your Name: "
str1: .asciiz "Enter Your Age: "

wt0: .asciiz "***Welcome "
wt1: .asciiz "! You are "
wt2: .asciiz "years old now. Stay Blessed***"

temp0: .asciiz ""

.text

.globl main

.ent main
main:

li $v0,4
la $a0, str0
syscall

li $v0,8
la $a0, temp0
li $a1,20
syscall

li $v0,4
la $a0,str1
syscall

li $v0,5
syscall

move $t0,$v0

li $v0,4
la $a0,wt0
syscall

li $v0,4
la $a0,temp0
syscall

li $v0,4
la $a0,wt1
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,4
la $a0,wt2
syscall

li $v0,10 #exiting 
syscall

jr $ra
.end main