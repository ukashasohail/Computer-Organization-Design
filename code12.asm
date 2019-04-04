.data

str0: .asciiz "Enter temperature of the day: "
str1: .asciiz "It is hot today!"
str2: .asciiz "Pleasant Weather"
str3: .asciiz "It is cold today"

.text
.globl main
.ent main
main:

#displaying input string
li $v0. 4
la $a0, str0
syscall

#reading integer value 
li $v0,5
syscall

#saving integer in register $0
move $t0, $v0

slti $t1, $t0, 30 #if $t0>30 then $t1=0

bne 
