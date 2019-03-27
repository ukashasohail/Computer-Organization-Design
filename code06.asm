.data

it0: .asciiz "Enter some integer value for x followed by enter: " #string of input of x
it1: .asciiz "Enter some integer value for y followed by enter: " #string of input of y
it2: .asciiz "Enter some integer value for z followed by enter: " #string of input of z

ot0: .asciiz "Result of x-y+z-12 is: " #result string

.text

.globl main
.ent main
main:

#displaying input x string
li $v0,4
la $a0,it0
syscall

#read int x
li $v0,5
syscall

move $t0,$v0 #saving x to $t0

#displaying input y string
li $v0,4
la $a0,it1
syscall

#read int y
li $v0,5
syscall

move $t1,$v0 #saving y to $t1

#displaying input z string
li $v0,4
la $a0,it2
syscall

#read int z
li $v0,5
syscall

move $t2,$v0 #saving z to t2
# (x-y) + (z-12)
sub $t3, $t0, $t1 #subtracting x and y
addi $t4, $t2, -12 #subtracting z and 12
add $t5, $t3, $t4 #adding the final result

#printing result string
li $v0,4
la $a0,ot0
syscall

#print calculated result
li $v0,1
move $a0, $t5
syscall

li $v0,10 #exiting 
syscall

jr $ra
.end main