.data

cTemp: .word 05 #roll no: 105
fTemp: .word 0
num: .word 9, 5, 32

string: .asciiz "The temperature in Fahreheit is: "

.text
.globl main
.ent main
main:

#loading num address in $t0
la $t0, num

#loading 9,5,32 in $t1. $t2 & $t3
lw $t1, 0($t0)
lw $t2, 4($t0)
lw $t3, 8($t0)

#loading cTemp in $t4
la $t4, cTemp
lw $t5, 0($t4)

addi $t5, $t5, 2 # $t5 = $t5+2

mult $t5,$t1
mflo $t5

div $t5, $t2
mflo $t5

add $t6, $t5, $t3

#displaying result
li $v0,4
la $a0,string
syscall

li $v0,1
move $a0, $t6   # $a0 = t6
syscall

jr $ra
.end main
