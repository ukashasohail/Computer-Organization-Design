.data

    txt: .asciiz "\npress 1 to continue: "


.text

.globl main

.ent main
main:


here:
    addi $t1, $0, 1

    jal func


.ent func
func:

    li $v0, 4
    la  $a0, txt
    syscall

    li $v0, 5
    syscall

    move $t0, $v0
    beq $t0, $t1, here

    j out

.end func

out:

li $v0,10
syscall
.end main
