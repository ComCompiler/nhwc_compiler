# Built-in library
 .text
 .align 4
 .globl starttime
 .type starttime, @function
 starttime:
 mv a0, zero
 tail _sysy_starttime
 
 .text
 .align 4
 .globl stoptime
 .type stoptime, @function
 stoptime:
 mv a0, zero
 tail _sysy_stoptime


.section ___func
    .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-128
    sd      ra,120(sp)
    sd      s0,112(sp)
    addi    s0,sp,128
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
    sd      a0,104(sp)
    ld      a0,104(sp)
    li      a1, 0
    li      a2, 48
    call    memset
    li      a0, 0
    li      a1, 4
    li      a2, 1
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    mul     a5,a2,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
    li      a6, 6
    sw      a6,0(a0)
    li      a7, 0
    li      s1, 0
    mul     s2,a1,s1
    add     a7,a7,s2
    li      s3, 3
    mul     s4,a4,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,0
    sw      a1,0(a7)
    li      s5, 0
    mul     s6,a1,a4
    add     s5,s5,s6
    mul     s7,a4,s1
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,0
    li      a4, 5
    sw      a4,0(s5)
    li      a4, 0
    mul     s8,a1,s1
    add     a4,a4,s8
    li      a1, 0
    mul     s1,a2,a1
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,0
    li      a1, 1
    sw      a1,0(a4)
    li      a1, 0
    li      a2, 4
    li      s9, 1
    mul     s10,a2,s9
    add     a1,a1,s10
    li      a2, 1
    li      s9, 2
    mul     s10,a2,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
    sd      a1,64(sp)
    ld      a1,64(sp)
    li      a2, 7
    sw      a2,0(a1)
    sd      a1,64(sp)
    li      a1, 0
    li      a2, 4
    li      s9, 0
    mul     s10,a2,s9
    add     a1,a1,s10
    li      a2, 1
    li      s9, 2
    mul     s10,a2,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
    sd      a1,56(sp)
    ld      a1,56(sp)
    sw      s3,0(a1)
    li      a2, 0
    li      s3, 4
    li      s9, 0
    mul     s10,s3,s9
    add     a2,a2,s10
    li      s3, 1
    li      s9, 1
    mul     s10,s3,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
    sd      a2,48(sp)
    ld      a2,48(sp)
    li      s3, 2
    sw      s3,0(a2)
    sd      a2,48(sp)
    j       .exit_2
.exit_2:
    ld      ra,120(sp)
    ld      s0,112(sp)
    sd      a0,96(sp)
    li      a0, 0
    addi    sp,sp,128
    ret
