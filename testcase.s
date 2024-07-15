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
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
    sd      a0,72(sp)
    ld      a0,72(sp)
    li      a1, 0
    li      a2, 24
    call    memset
    li      a0, 0
    li      a1, 3
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    mul     a5,a4,a2
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
    sw      a4,0(a0)
    li      a6, 0
    mul     a7,a1,a4
    add     a6,a6,a7
    mul     s1,a4,a2
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,0
    li      s2, 4
    sw      s2,0(a6)
    li      s3, 0
    mul     s4,a1,a4
    add     s3,s3,s4
    li      s5, 1
    mul     s6,a4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,0
    li      s7, 5
    sw      s7,0(s3)
    li      s7, 0
    mul     s8,a1,a4
    add     s7,s7,s8
    li      a1, 2
    mul     a4,s5,a1
    add     s7,s7,a4
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,0
    li      a1, 6
    sw      a1,0(s7)
    li      a1, 0
    li      s5, 3
    mul     s9,s5,a2
    add     a1,a1,s9
    li      a2, 1
    li      s5, 1
    mul     s9,a2,s5
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
    li      a2, 2
    sw      a2,0(a1)
    li      a2, 0
    li      s5, 3
    li      s9, 0
    mul     s10,s5,s9
    add     a2,a2,s10
    li      s5, 1
    li      s9, 2
    mul     s10,s5,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
    sd      a2,24(sp)
    ld      a2,24(sp)
    li      s5, 3
    sw      s5,0(a2)
    sd      a2,24(sp)
    j       .exit_2
.exit_2:
    ld      ra,88(sp)
    ld      s0,80(sp)
    sd      a0,64(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
