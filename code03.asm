.data

msg0: .asciiz "Enter the first number followed by enter: "
msg1: .asciiz "\n Enter the second number followed by enter: "
msg2: .asciiz "\n The result of addition is: "

.text

.globl main

.ent main
main:
#moving 4 to v0 to display msg0
li $v0,4 
la $a0,msg0
syscall

#reading 1st integer value given by user which will be saved in v0
li $v0,5 
syscall

move $t1,$v0 #moving that integer to t1.

#moving 4 to v0 to display msg1
li $v0,4
la $a0,msg1
syscall

#reading 2nd integer value given by user
li $v0,5
syscall 

move $t2,$v0 #moving that integer to t2

add $t3,$t1,$t2 #adding both integers and saving result in t3

#displaying msg2
li $v0,4
la $a0,msg2
syscall 

#moving 1 to v0 to for print_int
li $v0,1
move $a0,$t3 #moving addition result to a0
syscall #sum is printed

li $v0,10 #exiting 
syscall

jr $ra
.end main