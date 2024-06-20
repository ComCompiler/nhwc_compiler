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
    .globl foo
    .type foo,@function
foo:
    addi    sp,sp,-840
    sd      ra,832(sp)
    sd      s0,816(sp)
    addi    s0,sp,840
.L1_0:
    li      a0, 0
    li      a1, 1
    li      a2, 7
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a4, 3
    sd      a4,0(a0)
    li      a5, 0
    li      a6, 9
    add     a5,a5,a3
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
    sd      a1,0(a5)
    li      a7, 0
    li      s1, 19
    add     a7,a7,a3
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
    sd      a4,0(a7)
    li      s2, 0
    li      s3, 21
    add     s2,s2,a3
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sd      a1,0(s2)
    li      s4, 0
    li      s5, 6
    add     s4,s4,a3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    li      s6, 2
    sd      s6,0(s4)
    li      s7, 0
    add     s7,s7,a3
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sd      a4,0(s7)
    li      s8, 0
    li      s9, 16
    add     s8,s8,a3
    slli s8,s8,2
    add     s8,s8,sp
    add     s8,s8,s8
    li      s10, 0
    sd      s10,0(s8)
    li      s11, 0
    li      a2, 20
    add     s11,s11,a3
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sd      s10,0(s11)
    li      a1, 0
    li      a2, 1
    li      a4, 23
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a2, 3
    sd      a2,0(a1)
    li      a2, 0
    li      a4, 1
    li      a6, 24
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    sd      s10,0(a2)
    li      a4, 0
    li      a6, 1
    li      s1, 22
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    sd      s6,0(a4)
    li      a6, 0
    li      s1, 1
    li      s3, 5
    add     a6,a6,a3
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    sd      s1,0(a6)
    li      s1, 0
    li      s3, 1
    li      s5, 25
    add     s1,s1,a3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s3,0(s1)
    li      s3, 0
    li      s5, 1
    li      s6, 26
    add     s3,s3,a3
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 2
    sd      s5,0(s3)
    li      s5, 0
    li      s6, 1
    li      s9, 4
    add     s5,s5,a3
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sd      s10,0(s5)
    li      s6, 0
    li      s9, 1
    li      s10, 27
    add     s6,s6,a3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s9, 3
    sd      s9,0(s6)
    li      s9, 0
    li      s10, 1
    sd      a0,800(sp)
    li      a0, 1
    add     s9,s9,a3
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sd      s10,0(s9)
    li      a0, 0
    sd      a1,672(sp)
    li      a1, 8
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,528(sp)
    li      a0, 2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,512(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,496(sp)
    li      a0, 14
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,480(sp)
    li      a1, 18
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,464(sp)
    li      a0, 15
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,448(sp)
    li      a1, 17
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s10,0(a0)
    li      a1, 0
    sd      a0,432(sp)
    li      a0, 13
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      s10,0(a1)
    li      a0, 0
    sd      a1,416(sp)
    li      a1, 10
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    sd      a0,400(sp)
    li      a0, 12
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 0
    sd      a0,0(a1)
    li      a0, 0
    sd      a1,384(sp)
    li      a1, 11
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    mv      s10, a1
    li      a1, 7
    sd      a0,368(sp)
    mv      a0, a1
    li      a1, 5
    sw      a0,284(sp)
    mv      a0, a1
    li      a1, 6
    sw      a0,276(sp)
    mv      a0, a1
    li      a1, 1
    sw      a0,268(sp)
    mv      a0, a1
    li      a1, 0
    sw      a0,260(sp)
    mv      a0, a1
    li      a1, 3
    sw      a0,252(sp)
    mv      a0, a1
    li      a1, 5
    sw      a0,244(sp)
    mv      a0, a1
    li      a1, 4
    sw      a0,236(sp)
    mv      a0, a1
    li      a1, 2
    sw      a0,228(sp)
    mv      a0, a1
    li      a1, 7
    sw      a0,220(sp)
    mv      a0, a1
    li      a1, 9
    sw      a0,212(sp)
    mv      a0, a1
    li      a1, 8
    sw      a0,204(sp)
    mv      a0, a1
    li      a1, 1
    sw      a0,196(sp)
    mv      a0, a1
    li      a1, 4
    sw      a0,188(sp)
    mv      a0, a1
    li      a1, 6
    sw      a0,180(sp)
    mv      a0, a1
    mv      a1, a1
    sw      a0,172(sp)
    mv      a0, a0
    sd      a2,656(sp)
    add     a2,a1,a0
    sw      a0,236(sp)
    mv      a0, a0
    sw      a1,244(sp)
    add     a1,a0,a2
    sw      a0,252(sp)
    mv      a0, a0
    sw      a2,164(sp)
    add     a2,a0,a1
    sw      a0,260(sp)
    mv      a0, a0
    sw      a1,156(sp)
    add     a1,a0,a2
    sw      a0,268(sp)
    mv      a0, a0
    sw      a2,148(sp)
    add     a2,a0,a1
    sw      a0,276(sp)
    mv      a0, a0
    sw      a1,140(sp)
    add     a1,a0,a2
    sw      a0,284(sp)
    add     a0,s10,a1
    sw      a1,124(sp)
    mv      a1, a0
    sw      a0,116(sp)
    mv      a0, a0
    sw      a1,108(sp)
    mv      a1, a1
    sw      a2,132(sp)
    add     a2,a0,a1
    sw      a0,180(sp)
    mv      a0, a0
    sw      a1,172(sp)
    add     a1,a0,a2
    sw      a0,188(sp)
    mv      a0, a0
    sw      a2,100(sp)
    add     a2,a0,a1
    sw      a0,196(sp)
    mv      a0, a0
    sw      a1,92(sp)
    add     a1,a0,a2
    sw      a0,204(sp)
    mv      a0, a0
    sw      a2,84(sp)
    add     a2,a0,a1
    sw      a0,212(sp)
    mv      a0, a0
    sw      a1,76(sp)
    add     a1,a0,a2
    sw      a0,220(sp)
    mv      a0, a0
    sw      a2,68(sp)
    add     a2,a0,a1
    sw      a0,228(sp)
    mv      a0, a2
    sw      a0,44(sp)
    li      a0, 0
    sw      a1,60(sp)
    li      a1, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a0,32(sp)
    mv      a0, a0
    sw      a2,52(sp)
    add     a2,a1,a0
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,44(sp)
    add     a1,a0,a2
    ld      ra,832(sp)
    ld      s0,816(sp)
    mv      a0, a1
    addi    sp,sp,840
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-472
    sd      ra,464(sp)
    sd      s0,448(sp)
    addi    s0,sp,472
.L0_0:
    sw      a0,108(sp)
    li      a0, 3
    sw      a1,8(sp)
    mv      a1, a0
    li      a0, 7
    sw      a1,440(sp)
    mv      a1, a0
    li      a0, 5
    sw      a1,432(sp)
    mv      a1, a0
    li      a0, 6
    sw      a1,424(sp)
    mv      a1, a0
    li      a0, 1
    sw      a1,416(sp)
    mv      a1, a0
    li      a0, 0
    sw      a1,408(sp)
    mv      a1, a0
    li      a0, 3
    sw      a1,400(sp)
    mv      a1, a0
    li      a0, 5
    sw      a1,392(sp)
    mv      a1, a0
    li      a0, 4
    sw      a1,384(sp)
    mv      a1, a0
    li      a0, 2
    sw      a1,376(sp)
    mv      a1, a0
    li      a0, 7
    sw      a1,368(sp)
    mv      a1, a0
    li      a0, 9
    sw      a1,360(sp)
    mv      a1, a0
    li      a0, 8
    sw      a1,352(sp)
    mv      a1, a0
    li      a0, 1
    sw      a1,344(sp)
    mv      a1, a0
    li      a0, 4
    sw      a1,336(sp)
    mv      a1, a0
    li      a0, 6
    sw      a1,328(sp)
    mv      a1, a0
    mv      a0, a0
    sw      a1,320(sp)
    mv      a1, a1
    sw      a2,16(sp)
    add     a2,a0,a1
    sw      a0,392(sp)
    mv      a0, a0
    sw      a1,384(sp)
    add     a1,a0,a2
    sw      a0,400(sp)
    mv      a0, a0
    sw      a2,312(sp)
    add     a2,a0,a1
    sw      a0,408(sp)
    mv      a0, a0
    sw      a1,304(sp)
    add     a1,a0,a2
    sw      a0,416(sp)
    mv      a0, a0
    sw      a2,296(sp)
    add     a2,a0,a1
    sw      a0,424(sp)
    mv      a0, a0
    sw      a1,288(sp)
    add     a1,a0,a2
    sw      a0,432(sp)
    mv      a0, a0
    sw      a2,280(sp)
    add     a2,a0,a1
    sw      a0,440(sp)
    mv      a0, a2
    sw      a0,256(sp)
    mv      a0, a0
    sw      a1,272(sp)
    mv      a1, a1
    sw      a2,264(sp)
    add     a2,a0,a1
    sw      a0,328(sp)
    mv      a0, a0
    sw      a1,320(sp)
    add     a1,a0,a2
    sw      a0,336(sp)
    mv      a0, a0
    sw      a2,248(sp)
    add     a2,a0,a1
    sw      a0,344(sp)
    mv      a0, a0
    sw      a1,240(sp)
    add     a1,a0,a2
    sw      a0,352(sp)
    mv      a0, a0
    sw      a2,232(sp)
    add     a2,a0,a1
    sw      a0,360(sp)
    mv      a0, a0
    sw      a1,224(sp)
    add     a1,a0,a2
    sw      a0,368(sp)
    mv      a0, a0
    sw      a2,216(sp)
    add     a2,a0,a1
    sw      a0,376(sp)
    mv      a0, a2
    sd      s1,608(sp)
    sd      s2,752(sp)
    sd      s3,592(sp)
    sd      s4,736(sp)
    sd      s5,576(sp)
    sd      s6,560(sp)
    sd      s7,720(sp)
    sd      s8,704(sp)
    sd      s9,544(sp)
    sw      s10,292(sp)
    sd      s11,688(sp)
    call    foo
    sw      a0,192(sp)
    sw      a0,184(sp)
    mv      s1, s1
    add     s2,s1,a0
    li      s3, 4
    mv      s4, s3
    li      s5, 7
    mv      s6, s5
    li      s7, 2
    mv      s8, s7
    li      s9, 5
    mv      s10, s9
    li      s11, 8
    mv      s3, s11
    li      s5, 0
    mv      s7, s5
    li      s5, 6
    mv      s9, s5
    li      s5, 3
    mv      s11, s5
    sw      s1,256(sp)
    sw      s2,176(sp)
    sw      s3,136(sp)
    sw      s4,168(sp)
    sw      s6,160(sp)
    sw      s7,128(sp)
    sw      s8,152(sp)
    sw      s9,120(sp)
    sw      s10,144(sp)
    sw      s11,112(sp)
    call    foo
    sw      a0,184(sp)
    sw      a0,104(sp)
    mv      s1, s1
    add     s2,s1,a0
    mv      s3, s3
    mv      s4, s3
    mv      s5, s5
    mv      s6, s5
    mv      s7, s7
    mv      s8, s7
    mv      s9, s9
    mv      s10, s9
    mv      s11, s11
    sw      a0,104(sp)
    mv      a0, s11
    sw      a0,408(sp)
    mv      a0, a0
    sw      a1,208(sp)
    mv      a1, a0
    sw      a0,336(sp)
    mv      a0, a0
    sw      a1,400(sp)
    mv      a1, a0
    sw      a0,328(sp)
    mv      a0, a0
    sw      a1,392(sp)
    mv      a1, a0
    sw      a0,320(sp)
    mv      a0, a0
    sw      a1,384(sp)
    mv      a1, a1
    sw      a2,200(sp)
    add     a2,a0,a1
    sw      a0,120(sp)
    mv      a0, a0
    sw      a1,112(sp)
    add     a1,a0,a2
    sw      a0,128(sp)
    mv      a0, a0
    sw      a2,88(sp)
    add     a2,a0,a1
    sw      a0,136(sp)
    mv      a0, a0
    sw      a1,80(sp)
    add     a1,a0,a2
    sw      a0,144(sp)
    mv      a0, a0
    sw      a2,72(sp)
    add     a2,a0,a1
    sw      a0,152(sp)
    mv      a0, a0
    sw      a1,64(sp)
    add     a1,a0,a2
    sw      a0,160(sp)
    mv      a0, a0
    sw      a2,56(sp)
    add     a2,a0,a1
    sw      a0,168(sp)
    mv      a0, a2
    sw      a1,48(sp)
    add     a1,s1,a0
    sw      a0,32(sp)
    mv      a0, a0
    sw      a2,40(sp)
    add     a2,a0,a1
    sw      a0,256(sp)
    mv      a0, a2
    sw      s1,192(sp)
    sw      s2,96(sp)
    sw      s3,376(sp)
    sw      s4,440(sp)
    sw      s5,368(sp)
    sw      s6,432(sp)
    sw      s7,360(sp)
    sw      s8,424(sp)
    sw      s9,352(sp)
    sw      s10,416(sp)
    sw      s11,344(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    ld      ra,464(sp)
    ld      s0,448(sp)
    li      a0, 0
    addi    sp,sp,472
    ret
