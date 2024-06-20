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
    addi    sp,sp,-712
    sd      ra,704(sp)
    sd      s0,688(sp)
    addi    s0,sp,712
.L0_0:
    li      a0, 0
    li      a1, 2
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a4,0(a0)
    li      a5, 0
    li      a6, 2
    add     a5,a5,a3
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      a7, 7
    sd      a7,0(a5)
    li      s1, 0
    add     s1,s1,a3
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 3
    sd      s2,0(s1)
    li      s3, 0
    add     s3,s3,a3
    li      s4, 1
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      a1,0(s3)
    li      s5, 0
    add     s5,s5,a3
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s6, 4
    sd      s6,0(s5)
    mv      s7, s2
    li      s8, 0
    mul     s9,a1,a2
    add     s8,s8,s9
    add     s8,s8,s9
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    sd      a1,0(s8)
    li      s10, 0
    add     s10,s10,s9
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    sd      s6,0(s10)
    li      s11, 0
    add     s11,s11,s9
    add     s11,s11,s9
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sd      s2,0(s11)
    li      a1, 0
    add     a1,a1,s9
    add     a1,a1,s9
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a2, 8
    sd      a2,0(a1)
    li      a2, 0
    add     a2,a2,s9
    li      a6, 0
    add     a2,a2,s9
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      a7,0(a2)
    li      a4, 0
    li      a6, 2
    li      a7, 0
    add     a4,a4,s9
    add     a4,a4,s9
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s4,0(a4)
    li      a6, 0
    li      a7, 2
    li      s2, 2
    add     a6,a6,s9
    li      a7, 1
    add     a6,a6,s9
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      a7, 6
    sd      a7,0(a6)
    li      a7, 0
    li      s4, 2
    add     a7,a7,s9
    li      s2, 1
    li      s4, 0
    add     a7,a7,s9
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 5
    sd      s2,0(a7)
    li      s2, 0
    li      s4, 2
    li      s6, 3
    add     s2,s2,a3
    li      s4, 1
    li      s6, 0
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s4, 0
    li      s6, 2
    sd      a0,672(sp)
    li      a0, 1
    sd      a1,464(sp)
    mul     a1,s6,a0
    add     s4,s4,a1
    li      s6, 0
    add     s4,s4,a1
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      a0, 3
    sd      a0,0(s4)
    li      a0, 0
    li      s6, 2
    sw      a1,240(sp)
    li      a1, 2
    sd      a2,448(sp)
    mul     a2,s6,a1
    add     a0,a0,a2
    li      a1, 1
    li      s6, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      s6, 0
    sd      a0,312(sp)
    li      a0, 2
    sw      a1,344(sp)
    li      a1, 0
    add     s6,s6,a2
    li      a0, 1
    add     s6,s6,a2
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      a0,0(s6)
    li      a0, 0
    li      a1, 2
    sw      a2,240(sp)
    li      a2, 2
    sw      a3,600(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,280(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,264(sp)
    li      a1, 1
    add     a0,a0,a3
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,248(sp)
    li      a0, 2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      a2, 2
    sd      a1,200(sp)
    li      a1, 2
    add     a0,a0,s9
    li      a1, 1
    li      a2, 1
    add     a0,a0,s9
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 2
    sd      a0,176(sp)
    li      a0, 2
    sw      a3,240(sp)
    mul     a3,a2,a0
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
    sd      a1,152(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,136(sp)
    li      a0, 2
    sw      a1,192(sp)
    li      a1, 3
    add     a2,a2,a3
    li      a0, 1
    li      a1, 0
    add     a2,a2,a3
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a0, 7
    sd      a0,0(a2)
    li      a0, 0
    li      a1, 2
    sd      a2,120(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,104(sp)
    li      a0, 1
    add     a1,a1,a3
    li      a2, 0
    add     a1,a1,a3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,88(sp)
    li      a1, 1
    add     a0,a0,a3
    li      a2, 1
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
    sd      a0,72(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a0,0(a1)
    li      a2, 0
    sw      a0,168(sp)
    li      a0, 2
    sd      a1,56(sp)
    li      a1, 2
    add     a2,a2,a3
    li      a0, 1
    li      a1, 1
    add     a2,a2,a3
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a0, 6
    sd      a0,0(a2)
    ld      ra,704(sp)
    ld      s0,688(sp)
    li      a0, 3
    addi    sp,sp,712
    ret
