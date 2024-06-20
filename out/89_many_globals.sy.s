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
    .globl testParam8
    .type testParam8,@function
testParam8:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L3_0:
    add     s1,a6,a7
    add     s2,a5,s1
    add     s3,a4,s2
    add     s4,a3,s3
    add     s5,a2,s4
    add     s6,a1,s5
    add     s7,a0,s6
    ld      ra,144(sp)
    ld      s0,128(sp)
    mv      a0, s7
    addi    sp,sp,152
    ret
    .globl testParam16
    .type testParam16,@function
testParam16:
    addi    sp,sp,-280
    sd      ra,208(sp)
    sd      s0,192(sp)
    addi    s0,sp,280
.L2_0:
    mv      s8, s8
    mv      s9, s9
    add     s10,s8,s9
    mv      s11, s11
    sw      a0,184(sp)
    add     a0,s11,s10
    sw      a0,112(sp)
    mv      a0, a0
    sw      a1,176(sp)
    mv      a1, a1
    sw      a2,168(sp)
    add     a2,a0,a1
    sw      a0,244(sp)
    mv      a0, a0
    sw      a1,112(sp)
    add     a1,a0,a2
    sw      a0,252(sp)
    mv      a0, a0
    sw      a2,104(sp)
    add     a2,a0,a1
    sw      a0,260(sp)
    mv      a0, a0
    sw      a1,96(sp)
    add     a1,a0,a2
    sw      a0,268(sp)
    mv      a0, a0
    sw      a2,88(sp)
    add     a2,a0,a1
    sw      a0,276(sp)
    add     a0,a7,a2
    sw      a1,80(sp)
    sub     a1,a6,a0
    sw      a0,64(sp)
    sub     a0,a5,a1
    sw      a1,56(sp)
    sub     a1,a4,a0
    sw      a0,48(sp)
    sub     a0,a3,a1
    sw      a0,32(sp)
    mv      a0, a0
    sw      a1,40(sp)
    mv      a1, a1
    sw      a2,72(sp)
    sub     a2,a0,a1
    sw      a0,168(sp)
    mv      a0, a0
    sw      a1,32(sp)
    add     a1,a0,a2
    sw      a0,176(sp)
    mv      a0, a0
    sw      a2,24(sp)
    add     a2,a0,a1
    ld      ra,208(sp)
    ld      s0,192(sp)
    mv      a0, a2
    addi    sp,sp,280
    ret
    .globl testParam32
    .type testParam32,@function
testParam32:
    addi    sp,sp,-536
    sd      ra,336(sp)
    sd      s0,320(sp)
    addi    s0,sp,536
.L1_0:
    sw      a0,312(sp)
    mv      a0, a0
    sw      a1,304(sp)
    mv      a1, a1
    sw      a2,296(sp)
    add     a2,a0,a1
    sw      a0,356(sp)
    mv      a0, a0
    sw      a1,348(sp)
    add     a1,a0,a2
    sw      a0,364(sp)
    mv      a0, a0
    sw      a2,248(sp)
    add     a2,a0,a1
    sw      a0,372(sp)
    mv      a0, a0
    sw      a1,240(sp)
    add     a1,a0,a2
    sw      a0,380(sp)
    mv      a0, a0
    sw      a2,232(sp)
    add     a2,a0,a1
    sw      a0,388(sp)
    mv      a0, a0
    sw      a1,224(sp)
    add     a1,a0,a2
    sw      a0,396(sp)
    mv      a0, a0
    sw      a2,216(sp)
    add     a2,a0,a1
    sw      a0,404(sp)
    mv      a0, a0
    sw      a1,208(sp)
    add     a1,a0,a2
    sw      a0,412(sp)
    mv      a0, a0
    sw      a2,200(sp)
    add     a2,a0,a1
    sw      a0,420(sp)
    mv      a0, a0
    sw      a1,192(sp)
    sub     a1,a0,a2
    sw      a0,428(sp)
    mv      a0, a0
    sw      a2,184(sp)
    sub     a2,a0,a1
    sw      a0,436(sp)
    mv      a0, a0
    sw      a1,176(sp)
    sub     a1,a0,a2
    sw      a0,444(sp)
    mv      a0, a0
    sw      a2,168(sp)
    sub     a2,a0,a1
    sw      a0,452(sp)
    mv      a0, a0
    sw      a1,160(sp)
    sub     a1,a0,a2
    sw      a0,460(sp)
    mv      a0, a0
    sw      a2,152(sp)
    add     a2,a0,a1
    sw      a0,468(sp)
    mv      a0, a0
    sw      a1,144(sp)
    add     a1,a0,a2
    sw      a0,476(sp)
    mv      a0, a0
    sw      a2,136(sp)
    add     a2,a0,a1
    sw      a0,484(sp)
    mv      a0, a0
    sw      a1,128(sp)
    add     a1,a0,a2
    sw      a0,492(sp)
    mv      a0, a0
    sw      a2,120(sp)
    add     a2,a0,a1
    sw      a0,500(sp)
    mv      a0, a0
    sw      a1,112(sp)
    add     a1,a0,a2
    sw      a0,508(sp)
    mv      a0, a0
    sw      a2,104(sp)
    add     a2,a0,a1
    sw      a0,516(sp)
    mv      a0, a0
    sw      a1,96(sp)
    add     a1,a0,a2
    sw      a0,524(sp)
    mv      a0, a0
    sw      a2,88(sp)
    add     a2,a0,a1
    sw      a0,532(sp)
    add     a0,a7,a2
    sw      a1,80(sp)
    add     a1,a6,a0
    sw      a0,64(sp)
    add     a0,a5,a1
    sw      a1,56(sp)
    add     a1,a4,a0
    sw      a0,48(sp)
    add     a0,a3,a1
    sw      a0,32(sp)
    mv      a0, a0
    sw      a1,40(sp)
    mv      a1, a1
    sw      a2,72(sp)
    add     a2,a0,a1
    sw      a0,296(sp)
    mv      a0, a0
    sw      a1,32(sp)
    add     a1,a0,a2
    sw      a0,304(sp)
    mv      a0, a0
    sw      a2,24(sp)
    add     a2,a0,a1
    ld      ra,336(sp)
    ld      s0,320(sp)
    mv      a0, a2
    addi    sp,sp,536
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-528
    sd      ra,520(sp)
    sd      s0,504(sp)
    addi    s0,sp,528
.L0_0:
    sw      a0,312(sp)
    la      a0, a0
    sw      a1,16(sp)
    li      a1, 0
    sd      a1,0(a0)
    la      a0, a1
    li      a1, 1
    sd      a1,0(a0)
    la      a0, a2
    li      a1, 2
    sd      a1,0(a0)
    la      a0, a3
    li      a1, 3
    sd      a1,0(a0)
    la      a0, a4
    li      a1, 4
    sd      a1,0(a0)
    la      a0, a5
    li      a1, 5
    sd      a1,0(a0)
    la      a0, a6
    li      a1, 6
    sd      a1,0(a0)
    la      a0, a7
    li      a1, 7
    sd      a1,0(a0)
    la      a0, a8
    li      a1, 8
    sd      a1,0(a0)
    la      a0, a9
    li      a1, 9
    sd      a1,0(a0)
    la      a0, a10
    li      a1, 0
    sd      a1,0(a0)
    la      a0, a11
    li      a1, 1
    sd      a1,0(a0)
    la      a0, a12
    li      a1, 2
    sd      a1,0(a0)
    la      a0, a13
    li      a1, 3
    sd      a1,0(a0)
    la      a0, a14
    li      a1, 4
    sd      a1,0(a0)
    la      a0, a15
    li      a1, 5
    sd      a1,0(a0)
    la      a0, a16
    li      a1, 6
    sd      a1,0(a0)
    la      a0, a17
    li      a1, 7
    sd      a1,0(a0)
    la      a0, a18
    li      a1, 8
    sd      a1,0(a0)
    la      a0, a19
    li      a1, 9
    sd      a1,0(a0)
    la      a0, a20
    li      a1, 0
    sd      a1,0(a0)
    la      a0, a21
    li      a1, 1
    sd      a1,0(a0)
    la      a0, a22
    li      a1, 2
    sd      a1,0(a0)
    la      a0, a23
    li      a1, 3
    sd      a1,0(a0)
    la      a0, a24
    li      a1, 4
    sd      a1,0(a0)
    la      a0, a25
    li      a1, 5
    sd      a1,0(a0)
    la      a0, a26
    li      a1, 6
    sd      a1,0(a0)
    la      a0, a27
    li      a1, 7
    sd      a1,0(a0)
    la      a0, a28
    li      a1, 8
    sd      a1,0(a0)
    la      a0, a29
    li      a1, 9
    sd      a1,0(a0)
    la      a0, a30
    li      a1, 0
    sd      a1,0(a0)
    la      a0, a31
    li      a1, 1
    sd      a1,0(a0)
    la      a0, a32
    li      a1, 4
    sd      a1,0(a0)
    la      a0, a33
    li      a1, 5
    sd      a1,0(a0)
    la      a0, a34
    li      a1, 6
    sd      a1,0(a0)
    la      a0, a35
    li      a1, 7
    sd      a1,0(a0)
    la      a0, a36
    li      a1, 8
    sd      a1,0(a0)
    la      a0, a37
    li      a1, 9
    sd      a1,0(a0)
    la      a0, a38
    li      a1, 0
    sd      a1,0(a0)
    la      a0, a39
    li      a1, 1
    sd      a1,0(a0)
    la      a0, a0
    lw      a1,0(a0)
    la      a0, a1
    lw      a1,0(a0)
    la      a0, a2
    lw      a1,0(a0)
    la      a0, a3
    lw      a1,0(a0)
    la      a0, a4
    lw      a1,0(a0)
    la      a0, a5
    lw      a1,0(a0)
    la      a0, a6
    lw      a1,0(a0)
    la      a0, a7
    lw      a1,0(a0)
    sw      s1,56(sp)
    sw      s2,48(sp)
    sw      s3,40(sp)
    sw      s4,32(sp)
    sw      s5,24(sp)
    sw      s6,16(sp)
    sw      s7,8(sp)
    sw      s8,228(sp)
    sw      s9,220(sp)
    sw      s10,120(sp)
    sw      s11,236(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,8(sp)
    mv      a2, a2
    sw      a3,288(sp)
    mv      a3, a3
    sw      a4,280(sp)
    mv      a4, a4
    sw      a5,272(sp)
    mv      a5, a5
    sw      a6,264(sp)
    mv      a6, a6
    sw      a7,256(sp)
    mv      a7, a7
    call    testParam8
    sw      a0,432(sp)
    la      a1, a0
    sd      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,432(sp)
    mv      a0, a0
    call    putint
    la      a0, a32
    lw      a4,0(a0)
    la      a5, a33
    lw      a6,0(a5)
    la      a7, a34
    lw      s1,0(a7)
    la      s2, a35
    lw      s3,0(s2)
    la      s4, a36
    lw      s5,0(s4)
    la      s6, a37
    lw      s7,0(s6)
    la      s8, a38
    lw      s9,0(s8)
    la      s10, a39
    lw      s11,0(s10)
    la      a0, a8
    lw      a1,0(a0)
    la      a0, a9
    lw      a1,0(a0)
    la      a0, a10
    lw      a1,0(a0)
    la      a0, a11
    lw      a1,0(a0)
    la      a0, a12
    lw      a1,0(a0)
    la      a0, a13
    lw      a1,0(a0)
    la      a0, a14
    lw      a1,0(a0)
    la      a0, a15
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    mv      a3, a3
    mv      a4, a4
    mv      a5, a5
    mv      a6, a6
    mv      a7, a7
    call    testParam16
    sw      a0,288(sp)
    la      a1, a0
    sd      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,288(sp)
    mv      a0, a0
    call    putint
    la      a0, a0
    lw      a4,0(a0)
    la      a5, a1
    lw      a6,0(a5)
    la      a7, a2
    lw      s1,0(a7)
    la      s2, a3
    lw      s3,0(s2)
    la      s4, a4
    lw      s5,0(s4)
    la      s6, a5
    lw      s7,0(s6)
    la      s8, a6
    lw      s9,0(s8)
    la      s10, a7
    lw      s11,0(s10)
    la      a0, a8
    lw      a1,0(a0)
    la      a0, a9
    lw      a1,0(a0)
    la      a0, a10
    lw      a1,0(a0)
    la      a0, a11
    lw      a1,0(a0)
    la      a0, a12
    lw      a1,0(a0)
    la      a0, a13
    lw      a1,0(a0)
    la      a0, a14
    lw      a1,0(a0)
    la      a0, a15
    lw      a1,0(a0)
    la      a0, a16
    lw      a1,0(a0)
    la      a0, a17
    lw      a1,0(a0)
    la      a0, a18
    lw      a1,0(a0)
    la      a0, a19
    lw      a1,0(a0)
    la      a0, a20
    lw      a1,0(a0)
    la      a0, a21
    lw      a1,0(a0)
    la      a0, a22
    lw      a1,0(a0)
    la      a0, a23
    lw      a1,0(a0)
    la      a0, a24
    lw      a1,0(a0)
    la      a0, a25
    lw      a1,0(a0)
    la      a0, a26
    lw      a1,0(a0)
    la      a0, a27
    lw      a1,0(a0)
    la      a0, a28
    lw      a1,0(a0)
    la      a0, a29
    lw      a1,0(a0)
    la      a0, a30
    lw      a1,0(a0)
    la      a0, a31
    lw      a1,0(a0)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    mv      a3, a3
    mv      a4, a4
    mv      a5, a5
    mv      a6, a6
    mv      a7, a7
    call    testParam32
    sw      a0,16(sp)
    la      a1, a0
    sd      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,16(sp)
    mv      a0, a0
    call    putint
    ld      ra,520(sp)
    ld      s0,504(sp)
    li      a0, 0
    addi    sp,sp,528
    ret
.section        .data
    .align 4
    .globl a39
    .type a39,@object
a39:
    .word 0
    .align 4
    .globl a38
    .type a38,@object
a38:
    .word 0
    .align 4
    .globl a37
    .type a37,@object
a37:
    .word 0
    .align 4
    .globl a36
    .type a36,@object
a36:
    .word 0
    .align 4
    .globl a35
    .type a35,@object
a35:
    .word 0
    .align 4
    .globl a34
    .type a34,@object
a34:
    .word 0
    .align 4
    .globl a33
    .type a33,@object
a33:
    .word 0
    .align 4
    .globl a32
    .type a32,@object
a32:
    .word 0
    .align 4
    .globl a31
    .type a31,@object
a31:
    .word 0
    .align 4
    .globl a30
    .type a30,@object
a30:
    .word 0
    .align 4
    .globl a29
    .type a29,@object
a29:
    .word 0
    .align 4
    .globl a28
    .type a28,@object
a28:
    .word 0
    .align 4
    .globl a27
    .type a27,@object
a27:
    .word 0
    .align 4
    .globl a26
    .type a26,@object
a26:
    .word 0
    .align 4
    .globl a25
    .type a25,@object
a25:
    .word 0
    .align 4
    .globl a24
    .type a24,@object
a24:
    .word 0
    .align 4
    .globl a23
    .type a23,@object
a23:
    .word 0
    .align 4
    .globl a22
    .type a22,@object
a22:
    .word 0
    .align 4
    .globl a21
    .type a21,@object
a21:
    .word 0
    .align 4
    .globl a20
    .type a20,@object
a20:
    .word 0
    .align 4
    .globl a19
    .type a19,@object
a19:
    .word 0
    .align 4
    .globl a18
    .type a18,@object
a18:
    .word 0
    .align 4
    .globl a17
    .type a17,@object
a17:
    .word 0
    .align 4
    .globl a16
    .type a16,@object
a16:
    .word 0
    .align 4
    .globl a15
    .type a15,@object
a15:
    .word 0
    .align 4
    .globl a14
    .type a14,@object
a14:
    .word 0
    .align 4
    .globl a13
    .type a13,@object
a13:
    .word 0
    .align 4
    .globl a12
    .type a12,@object
a12:
    .word 0
    .align 4
    .globl a11
    .type a11,@object
a11:
    .word 0
    .align 4
    .globl a10
    .type a10,@object
a10:
    .word 0
    .align 4
    .globl a9
    .type a9,@object
a9:
    .word 0
    .align 4
    .globl a8
    .type a8,@object
a8:
    .word 0
    .align 4
    .globl a7
    .type a7,@object
a7:
    .word 0
    .align 4
    .globl a6
    .type a6,@object
a6:
    .word 0
    .align 4
    .globl a5
    .type a5,@object
a5:
    .word 0
    .align 4
    .globl a4
    .type a4,@object
a4:
    .word 0
    .align 4
    .globl a3
    .type a3,@object
a3:
    .word 0
    .align 4
    .globl a2
    .type a2,@object
a2:
    .word 0
    .align 4
    .globl a1
    .type a1,@object
a1:
    .word 0
    .align 4
    .globl a0
    .type a0,@object
a0:
    .word 0
