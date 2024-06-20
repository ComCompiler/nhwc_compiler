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
    addi    sp,sp,-840
    sd      ra,832(sp)
    sd      s0,816(sp)
    addi    s0,sp,840
.L0_0:
    li      a0, 0
    li      a1, 2
    li      a2, 2
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a4, 1
    li      a5, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a6, 6
    sd      a6,0(a0)
    li      a7, 0
    add     a7,a7,a3
    li      s1, 0
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    li      s2, 5
    sd      s2,0(a7)
    li      s3, 0
    add     s3,s3,a3
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      a5,0(s3)
    li      s4, 0
    add     s4,s4,a3
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 4
    sd      s5,0(s4)
    li      s6, 0
    li      s7, 3
    add     s6,s6,a3
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s8, 7
    sd      s8,0(s6)
    li      s9, 0
    add     s9,s9,a3
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    li      s10, 8
    sd      s10,0(s9)
    li      s11, 0
    add     s11,s11,a3
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sd      a2,0(s11)
    li      a1, 0
    add     a1,a1,a3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s7,0(a1)
    li      a2, 0
    li      a4, 2
    li      a5, 2
    mul     a6,a4,a5
    add     a2,a2,a6
    li      a4, 1
    li      a5, 1
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a4, 6
    sd      a4,0(a2)
    li      a4, 0
    li      a5, 2
    li      s1, 1
    add     a4,a4,a6
    li      a5, 1
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s5,0(a4)
    li      a5, 0
    li      s1, 2
    li      s2, 0
    add     a5,a5,a6
    li      s1, 1
    add     a5,a5,a6
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    sd      s1,0(a5)
    li      s1, 0
    li      s2, 2
    li      s5, 0
    add     s1,s1,a6
    li      s2, 1
    li      s5, 1
    add     s1,s1,a6
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 2
    sd      s2,0(s1)
    li      s2, 0
    li      s5, 2
    li      s7, 2
    add     s2,s2,a6
    li      s5, 1
    li      s7, 0
    add     s2,s2,a6
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    li      s5, 5
    sd      s5,0(s2)
    li      s5, 0
    li      s7, 2
    li      s8, 3
    add     s5,s5,a6
    li      s7, 1
    li      s8, 1
    add     s5,s5,a6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sd      s10,0(s5)
    li      s7, 0
    li      s8, 2
    li      s10, 3
    add     s7,s7,a6
    li      s8, 1
    li      s10, 0
    add     s7,s7,a6
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 7
    sd      s8,0(s7)
    li      s8, 0
    li      s10, 2
    sd      a0,768(sp)
    li      a0, 1
    add     s8,s8,a6
    li      s10, 0
    add     s8,s8,a6
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      a0, 3
    sd      a0,0(s8)
    li      a0, 0
    li      s10, 2
    sd      a1,656(sp)
    li      a1, 2
    sd      a2,608(sp)
    mul     a2,s10,a1
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
    sd      a0,448(sp)
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
    sd      a1,432(sp)
    li      a1, 1
    add     a0,a0,a2
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,416(sp)
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
    sd      a1,400(sp)
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
    sd      a0,384(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    li      s10, 0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a0, 0
    li      s10, 2
    sd      a1,368(sp)
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
    sd      a0,320(sp)
    li      a0, 2
    add     a1,a1,a6
    li      a0, 1
    li      s10, 1
    add     a1,a1,a6
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    li      s10, 2
    sd      a1,296(sp)
    li      a1, 3
    sw      a2,360(sp)
    mul     a2,s10,a1
    add     a0,a0,a2
    li      a1, 1
    li      s10, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 8
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,272(sp)
    li      a0, 1
    add     a1,a1,a2
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
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
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    li      s10, 2
    sd      a0,240(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    li      s10, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    li      s10, 2
    sd      a1,224(sp)
    li      a1, 0
    add     a0,a0,a2
    li      a1, 1
    li      s10, 0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      s10, 0
    sd      a0,208(sp)
    li      a0, 2
    sw      a1,312(sp)
    li      a1, 1
    add     s10,s10,a2
    li      a0, 0
    add     s10,s10,a2
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a0, 3
    sd      a0,0(s10)
    li      a0, 0
    li      a1, 2
    sw      a2,152(sp)
    li      a2, 0
    sw      a3,648(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    li      a2, 0
    sd      a0,176(sp)
    li      a0, 2
    sw      a1,288(sp)
    li      a1, 3
    add     a2,a2,a3
    li      a0, 1
    li      a1, 0
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    li      a0, 7
    sd      a0,0(a2)
    li      a0, 0
    li      a1, 2
    sd      a2,160(sp)
    li      a2, 2
    sw      a3,152(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 2
    sd      a0,112(sp)
    li      a0, 0
    sw      a3,808(sp)
    mul     a3,a2,a0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    mv      a2, a2
    sd      a1,88(sp)
    add     a1,a0,a2
    sw      a0,80(sp)
    li      a0, 0
    sw      a1,72(sp)
    li      a1, 2
    sw      a2,104(sp)
    li      a2, 0
    add     a0,a0,a3
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    mv      a2, a2
    sd      a0,56(sp)
    add     a0,a1,a2
    sw      a0,40(sp)
    li      a0, 0
    sw      a1,48(sp)
    li      a1, 2
    sw      a2,72(sp)
    li      a2, 3
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    mv      a2, a2
    sd      a0,24(sp)
    add     a0,a1,a2
    ld      ra,832(sp)
    ld      s0,816(sp)
    mv      a0, a0
    addi    sp,sp,840
    ret
