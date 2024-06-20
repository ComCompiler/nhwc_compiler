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
    addi    sp,sp,-512
    sd      ra,504(sp)
    sd      s0,496(sp)
    addi    s0,sp,512
.L0_0:
    li      a0, 0
    li      a1, 2
    li      a2, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a6, 0
    add     a6,a6,a3
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    li      a7, 3
    sd      a7,0(a6)
    li      s1, 0
    li      s2, 2
    add     s1,s1,a3
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 5
    sd      s3,0(s1)
    li      s4, 0
    add     s4,s4,a3
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 8
    sd      s5,0(s4)
    li      s6, 0
    add     s6,s6,a3
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    sd      a5,0(s6)
    li      s7, 0
    add     s7,s7,a3
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 4
    sd      s8,0(s7)
    li      s9, 0
    add     s9,s9,a3
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      s10, 7
    sd      s10,0(s9)
    li      s11, 0
    add     s11,s11,a3
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    li      a1, 6
    sd      a1,0(s11)
    li      a1, 0
    mul     a2,s2,a5
    add     a1,a1,a2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s8,0(a1)
    li      a4, 0
    add     a4,a4,a2
    li      a7, 1
    add     a4,a4,a2
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s5,0(a4)
    li      a5, 0
    li      a7, 0
    add     a5,a5,a2
    li      a7, 1
    li      s2, 1
    add     a5,a5,a2
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    li      a7, 2
    sd      a7,0(a5)
    li      a7, 0
    li      s2, 2
    li      s3, 2
    add     a7,a7,a2
    li      s2, 1
    li      s3, 1
    add     a7,a7,a2
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 6
    sd      s2,0(a7)
    li      s2, 0
    li      s3, 2
    li      s5, 0
    add     s2,s2,a2
    li      s3, 1
    add     s2,s2,a2
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      s3,0(s2)
    li      s3, 0
    li      s5, 2
    li      s8, 1
    add     s3,s3,a2
    li      s5, 0
    add     s3,s3,a2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 3
    sd      s5,0(s3)
    li      s5, 0
    li      s8, 2
    li      s10, 2
    add     s5,s5,a2
    li      s8, 1
    li      s10, 0
    add     s5,s5,a2
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    li      s8, 5
    sd      s8,0(s5)
    li      s8, 0
    li      s10, 2
    sd      a0,456(sp)
    li      a0, 3
    add     s8,s8,a2
    li      a0, 1
    li      s10, 0
    add     s8,s8,a2
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      a0, 7
    sd      a0,0(s8)
    li      a0, 0
    li      s10, 2
    sd      a1,360(sp)
    li      a1, 0
    sw      a2,300(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,264(sp)
    li      a0, 1
    add     a1,a1,a2
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    li      s10, 2
    sd      a1,256(sp)
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 7
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,248(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 8
    sd      a0,0(a1)
    li      a0, 0
    li      s10, 2
    sd      a1,240(sp)
    li      a1, 1
    add     a0,a0,a2
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,232(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    li      s10, 2
    sd      a1,224(sp)
    li      a1, 2
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      s10, 2
    sd      a0,184(sp)
    li      a0, 2
    sw      a2,220(sp)
    mul     a2,s10,a0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s10, 2
    sd      a1,168(sp)
    li      a1, 0
    sw      a2,300(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      s10, 0
    sd      a0,152(sp)
    li      a0, 2
    sw      a1,180(sp)
    li      a1, 3
    add     s10,s10,a2
    li      a0, 1
    li      a1, 0
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a0, 7
    sd      a0,0(s10)
    li      a0, 0
    li      a1, 2
    sw      a2,92(sp)
    li      a2, 3
    sw      a3,396(sp)
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
    sd      a0,136(sp)
    li      a0, 2
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 5
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 2
    sd      a1,128(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,120(sp)
    li      a0, 2
    sw      a1,164(sp)
    li      a1, 1
    add     a2,a2,a3
    li      a0, 1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a0, 4
    sd      a0,0(a2)
    li      a0, 0
    li      a1, 2
    sd      a2,112(sp)
    li      a2, 2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 6
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 2
    sd      a0,104(sp)
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
    sd      a1,96(sp)
    li      a1, 2
    sw      a3,92(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 2
    sd      a0,56(sp)
    li      a0, 0
    sw      a3,492(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a1,40(sp)
    add     a1,a0,a2
    sw      a0,36(sp)
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 2
    sw      a2,52(sp)
    li      a2, 0
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,24(sp)
    add     a0,a1,a2
    sw      a0,16(sp)
    li      a0, 0
    sw      a1,20(sp)
    li      a1, 2
    sw      a2,32(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a0,8(sp)
    add     a0,a1,a2
    ld      ra,504(sp)
    ld      s0,496(sp)
    addi    sp,sp,512
    ret
