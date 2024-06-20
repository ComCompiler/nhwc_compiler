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


.section        .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-448
    sd      ra,440(sp)
    sd      s0,432(sp)
    addi    s0,sp,448
.L0_0:
    li      a0, 0
    li      a1, 2
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a6, 7
    sd      a6,0(a0)
    li      a7, 0
    add     a7,a7,a3
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s1, 3
    sd      s1,0(a7)
    li      s2, 0
    add     s2,s2,a3
    li      s3, 1
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      a1,0(s2)
    li      s4, 0
    add     s4,s4,a3
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s3,0(s4)
    li      s5, 0
    add     s5,s5,a3
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s6, 4
    sd      s6,0(s5)
    li      s7, 3
    li      s8, 0
    mul     s9,a1,s1
    add     s8,s8,s9
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a6,0(s8)
    li      s10, 0
    add     s10,s10,s9
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sd      s1,0(s10)
    li      s11, 0
    add     s11,s11,s9
    add     s11,s11,s9
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    li      a1, 8
    sd      a1,0(s11)
    li      a1, 0
    add     a1,a1,s9
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a2,0(a1)
    li      a2, 0
    li      a4, 2
    li      a5, 2
    add     a2,a2,s9
    li      a4, 0
    add     a2,a2,s9
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a4, 5
    sd      a4,0(a2)
    li      a4, 0
    li      a6, 0
    add     a4,a4,s9
    add     a4,a4,s9
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s3,0(a4)
    li      a5, 0
    li      a6, 2
    li      s1, 2
    add     a5,a5,s9
    li      a6, 1
    add     a5,a5,s9
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      a6, 6
    sd      a6,0(a5)
    li      a6, 0
    add     a6,a6,s9
    li      s1, 1
    add     a6,a6,s9
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    sd      s6,0(a6)
    li      s1, 0
    li      s3, 2
    li      s6, 3
    add     s1,s1,a3
    li      s3, 1
    li      s6, 0
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 0
    li      s6, 2
    sd      a0,424(sp)
    li      a0, 2
    sd      a1,288(sp)
    mul     a1,s6,a0
    add     s3,s3,a1
    li      a0, 1
    li      s6, 1
    add     s3,s3,a1
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      a0, 8
    sd      a0,0(s3)
    li      a0, 0
    li      s6, 2
    sw      a1,156(sp)
    li      a1, 1
    sd      a2,280(sp)
    mul     a2,s6,a1
    add     a0,a0,a2
    li      s6, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    li      s6, 2
    sd      a0,192(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s6, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      s6, 0
    sw      a0,212(sp)
    li      a0, 2
    sd      a1,184(sp)
    li      a1, 0
    add     s6,s6,a2
    li      a0, 1
    li      a1, 1
    add     s6,s6,a2
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      a0, 2
    sd      a0,0(s6)
    li      a0, 0
    li      a1, 2
    sw      a2,156(sp)
    li      a2, 0
    sw      a3,388(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,168(sp)
    li      a0, 1
    add     a1,a1,a3
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,160(sp)
    li      a1, 2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 2
    sd      a0,120(sp)
    li      a0, 2
    add     a1,a1,s9
    li      a0, 1
    li      a2, 1
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      a2, 2
    sd      a1,104(sp)
    li      a1, 2
    sw      a3,156(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 6
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,88(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,116(sp)
    li      a0, 2
    sd      a1,80(sp)
    li      a1, 1
    add     a2,a2,a3
    li      a0, 0
    add     a2,a2,a3
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a0, 3
    sd      a0,0(a2)
    li      a0, 0
    li      a1, 2
    sd      a2,72(sp)
    li      a2, 1
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,64(sp)
    li      a0, 2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,56(sp)
    li      a1, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,48(sp)
    li      a0, 3
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,40(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    ld      ra,440(sp)
    ld      s0,432(sp)
    li      a0, 3
    addi    sp,sp,448
    ret
