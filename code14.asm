.data

it0: .asciiz "Enter temperature of the day: "

ot0: .asciiz "It is hot today"
ot1: .asciiz "Pleasant weather"
ot2: .asciiz "It is cold today"

.text
.globl main
.ent main
main:

#displaying input string
li $v0, 4
la $a0, it0
syscall

#reading integer value 
li $v0,5
syscall

#saving integer in register $t0
move $t0, $v0

#if $t0<30 then $t1=1
slti $t1, $t0, 30

bne $t1, $0, else

#printing it is hot today
li $v0, 4
la $a0, ot0
syscall

jr $ra

else: slti $t2, $t0, 20 # if $t0<20 then $t2=1
bne $t2, $0, elif

#printing pleasant weather
li $v0, 4
la $a0, ot1
syscall

jr $ra

elif:
#printing it is cold today
li $v0, 4
la $a0, ot2
syscall

#exiting
li $v0, 10
syscall
jr $ra 

.end main