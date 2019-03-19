.data

str0: .asciiz "Enter Your Name: "
str1: .asciiz "Enter Your Age: "

wt0: .asciiz "***Welcome "
wt1: .asciiz "! You are "
wt2: .asciiz "years old now. Stay Blessed***"

.text

.globl main

.ent main
main:

li $v0,4
la $a0, str0
syscall

li $v0,8
la $a0, 

li $v0,10 #exiting 
syscall

jr $ra
.end main