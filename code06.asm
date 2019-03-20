.data

it0: .asciiz "Enter some integer value for x followed by enter: "
it1: .asciiz "Enter some integer value for y followed by enter: "
it2: .asciiz "Enter some integer value for z followed by enter: "

ot0: .asciiz "Result of x+y+z-12 is: "

.text

.globl main
.ent main
main:

#displaying it0
li $v0,4
la $a0,it0
syscall

#read int x
li $v0,5
syscall

move $t0,$v0

#displaying it1
li $v0,4
la $a0,it1
syscall

#read int y
li $v0,5
syscall

move $t1,$v0

#displaying it2
li $v0,4
la $a0,it2
syscall

move $t2,$v0

sub $t3, $t0, $t1
addi $t4, $t2, -12
add $t5, $t3, $t4

#printing result

li $v0,4
la $a0,ot0
syscall

#print int
li $v0,1
move $a0, $t5
syscall

li $v0,10 #exiting 
syscall

jr $ra
.end main