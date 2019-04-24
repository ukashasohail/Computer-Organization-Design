.data

input0: .asciiz "enter number: "
input1: .asciiz "enter power: "

.text
.globl main
.ent main
main:

#input of number
li $v0, 4
la $a0, input0
syscall

li $v0, 5
syscall

# $t0 = number
move $t0, $v0

#input of power
li $v0, 4
la $a0, input1
syscall

li $v0,5
syscall

# $t1 = power
move $t1, $v0

move $a0, $t0
move $a1, $t1

jal power

move $t2, $v0


li $v0,10
syscall
.end main

.globl power
.ent power
power:

move $s0, $a0 #number
move $s1, $a1 #power

loop:

mult $s0, $s0



jr $ra
.end power
