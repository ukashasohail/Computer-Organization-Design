.data

it0: .asciiz "Enter marks obtained in Compplex engineering problem: "
it1: .asciiz "What wsas the difficulty level of project? "
ot0: .asciiz "CEP marks are: "

.text
.globl main
.ent main
main:

#displaying input text
li $v0, 4
la $a0, it0
syscall

#reading input
li $v0, 5
syscall

#storing CEP marks in $t0
move $t0, $v0

#diplaying 2nd input text
li $v0, 4
la $a0, it1
syscall

#reading input 
li $v0, 5
syscall

#storing difficulty level in $t1
move $t1, $v0

# if t1<3,t2=1
slti $t2, $t1, 3

# if $t2 !=0t1 then target
bne	$t2, $0, target	

addi $t0, $t0, 5
j OUT

target: li $v0, 4
la $a0, ot0
syscall

OUT: li $v0, 4
la $a0, ot0
syscall

li $v0,1
move $a0, $t0
syscall

li $v0, 10
syscall
jr $ra 
.end main