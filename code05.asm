.data

# list: .byte 7, 8, 9, 10, 11, 12, 13, 14, 15
# list: .half 7, 8, 9, 10, 11, 12, 13, 14, 15
# list: .word 7, 8, 9, 10, 11, 12, 13, 14, 15
list: .ascii "y", "n"
.text

.globl main

.ent main
main:


jr $ra
.end main