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
    .globl testParam8
    .type testParam8,@function
testParam8:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L3_0:
    add     s1,a0,a1
    add     s2,s1,a2
    add     s3,s2,a3
    add     s4,s3,a4
    add     s5,s4,a5
    add     s6,s5,a6
    add     s7,s6,a7
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      s7,4(sp)
    sw      a0,60(sp)
    lw      a0,4(sp)
    addi    sp,sp,80
    ret
    .globl testParam16
    .type testParam16,@function
testParam16:
    addi    sp,sp,-144
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,144
.L2_0:
    add     s1,a0,a1
    add     s2,s1,a2
    sub     s3,s2,a3
    sub     s4,s3,a4
    sub     s5,s4,a5
    sub     s6,s5,a6
    sub     s7,s6,a7
    lw      s8,140(sp)
    add     s9,s7,s8
    lw      s10,136(sp)
    add     s11,s9,s10
    sw      a0,92(sp)
    lw      a0,132(sp)
    sw      a1,88(sp)
    add     a1,s11,a0
    sw      a0,132(sp)
    lw      a0,128(sp)
    sw      a2,84(sp)
    add     a2,a1,a0
    sw      a0,128(sp)
    lw      a0,124(sp)
    sw      a1,24(sp)
    add     a1,a2,a0
    sw      a0,124(sp)
    lw      a0,120(sp)
    sw      a2,20(sp)
    add     a2,a1,a0
    sw      a0,120(sp)
    lw      a0,116(sp)
    sw      a1,16(sp)
    add     a1,a2,a0
    sw      a0,116(sp)
    lw      a0,112(sp)
    sw      a2,12(sp)
    add     a2,a1,a0
    ld      ra,104(sp)
    ld      s0,96(sp)
    sw      a2,4(sp)
    sw      a0,112(sp)
    lw      a0,4(sp)
    addi    sp,sp,144
    ret
    .globl testParam32
    .type testParam32,@function
testParam32:
    addi    sp,sp,-272
    sd      ra,168(sp)
    sd      s0,160(sp)
    addi    s0,sp,272
.L1_0:
    add     s1,a0,a1
    add     s2,s1,a2
    add     s3,s2,a3
    add     s4,s3,a4
    add     s5,s4,a5
    add     s6,s5,a6
    add     s7,s6,a7
    lw      s8,268(sp)
    add     s9,s7,s8
    lw      s10,264(sp)
    add     s11,s9,s10
    sw      a0,156(sp)
    lw      a0,260(sp)
    sw      a1,152(sp)
    add     a1,s11,a0
    sw      a0,260(sp)
    lw      a0,256(sp)
    sw      a2,148(sp)
    add     a2,a1,a0
    sw      a0,256(sp)
    lw      a0,252(sp)
    sw      a1,88(sp)
    add     a1,a2,a0
    sw      a0,252(sp)
    lw      a0,248(sp)
    sw      a2,84(sp)
    add     a2,a1,a0
    sw      a0,248(sp)
    lw      a0,244(sp)
    sw      a1,80(sp)
    add     a1,a2,a0
    sw      a0,244(sp)
    lw      a0,240(sp)
    sw      a2,76(sp)
    add     a2,a1,a0
    sw      a0,240(sp)
    lw      a0,236(sp)
    sw      a1,72(sp)
    add     a1,a2,a0
    sw      a0,236(sp)
    lw      a0,232(sp)
    sw      a2,68(sp)
    add     a2,a1,a0
    sw      a0,232(sp)
    lw      a0,228(sp)
    sw      a1,64(sp)
    sub     a1,a2,a0
    sw      a0,228(sp)
    lw      a0,224(sp)
    sw      a2,60(sp)
    sub     a2,a1,a0
    sw      a0,224(sp)
    lw      a0,220(sp)
    sw      a1,56(sp)
    sub     a1,a2,a0
    sw      a0,220(sp)
    lw      a0,216(sp)
    sw      a2,52(sp)
    sub     a2,a1,a0
    sw      a0,216(sp)
    lw      a0,212(sp)
    sw      a1,48(sp)
    sub     a1,a2,a0
    sw      a0,212(sp)
    lw      a0,208(sp)
    sw      a2,44(sp)
    add     a2,a1,a0
    sw      a0,208(sp)
    lw      a0,204(sp)
    sw      a1,40(sp)
    add     a1,a2,a0
    sw      a0,204(sp)
    lw      a0,200(sp)
    sw      a2,36(sp)
    add     a2,a1,a0
    sw      a0,200(sp)
    lw      a0,196(sp)
    sw      a1,32(sp)
    add     a1,a2,a0
    sw      a0,196(sp)
    lw      a0,192(sp)
    sw      a2,28(sp)
    add     a2,a1,a0
    sw      a0,192(sp)
    lw      a0,188(sp)
    sw      a1,24(sp)
    add     a1,a2,a0
    sw      a0,188(sp)
    lw      a0,184(sp)
    sw      a2,20(sp)
    add     a2,a1,a0
    sw      a0,184(sp)
    lw      a0,180(sp)
    sw      a1,16(sp)
    add     a1,a2,a0
    sw      a0,180(sp)
    lw      a0,176(sp)
    sw      a2,12(sp)
    add     a2,a1,a0
    ld      ra,168(sp)
    ld      s0,160(sp)
    sw      a2,4(sp)
    sw      a0,176(sp)
    lw      a0,4(sp)
    addi    sp,sp,272
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-264
    sd      ra,256(sp)
    sd      s0,248(sp)
    addi    s0,sp,264
.L0_0:
    la      a0, a0
    li      a1, 0
    sw      a1,0(a0)
    la      a2, a1
    li      a3, 1
    sw      a3,0(a2)
    la      a4, a2
    li      a5, 2
    sw      a5,0(a4)
    la      a6, a3
    li      a7, 3
    sw      a7,0(a6)
    la      s1, a4
    li      s2, 4
    sw      s2,0(s1)
    la      s3, a5
    li      s4, 5
    sw      s4,0(s3)
    la      s5, a6
    li      s6, 6
    sw      s6,0(s5)
    la      s7, a7
    li      s8, 7
    sw      s8,0(s7)
    la      s9, a8
    li      s10, 8
    sw      s10,0(s9)
    la      s11, a9
    li      a0, 9
    sw      a0,0(s11)
    la      a0, a10
    sw      a1,0(a0)
    la      a0, a11
    sw      a3,0(a0)
    la      a0, a12
    sw      a5,0(a0)
    la      a0, a13
    sw      a7,0(a0)
    la      a0, a14
    sw      s2,0(a0)
    la      a0, a15
    sw      s4,0(a0)
    la      a0, a16
    sw      s6,0(a0)
    la      a0, a17
    sw      s8,0(a0)
    la      a0, a18
    sw      s10,0(a0)
    la      a0, a19
    li      a1, 9
    sw      a1,0(a0)
    la      a0, a20
    li      a1, 0
    sw      a1,0(a0)
    la      a0, a21
    sw      a3,0(a0)
    la      a0, a22
    sw      a5,0(a0)
    la      a0, a23
    sw      a7,0(a0)
    la      a0, a24
    sw      s2,0(a0)
    la      a0, a25
    sw      s4,0(a0)
    la      a0, a26
    sw      s6,0(a0)
    la      a0, a27
    sw      s8,0(a0)
    la      a0, a28
    sw      s10,0(a0)
    la      a0, a29
    li      a1, 9
    sw      a1,0(a0)
    la      a0, a30
    li      a1, 0
    sw      a1,0(a0)
    la      a0, a31
    sw      a3,0(a0)
    la      a0, a32
    sw      s2,0(a0)
    la      a0, a33
    sw      s4,0(a0)
    la      a0, a34
    sw      s6,0(a0)
    la      a0, a35
    sw      s8,0(a0)
    la      a0, a36
    sw      s10,0(a0)
    la      a0, a37
    li      a1, 9
    sw      a1,0(a0)
    la      a0, a38
    li      a1, 0
    sw      a1,0(a0)
    la      a0, a39
    sw      a3,0(a0)
    la      a0, a0
    lw      a1,0(a0)
    la      a0, a1
    lw      a2,0(a0)
    la      a0, a2
    lw      a3,0(a0)
    la      a0, a3
    lw      a4,0(a0)
    la      a0, a4
    lw      a5,0(a0)
    la      a0, a5
    lw      a6,0(a0)
    la      a0, a6
    lw      a7,0(a0)
    la      a0, a7
    lw      s1,0(a0)
    sw      s1,216(sp)
    sw      a1,244(sp)
    sw      a2,240(sp)
    sw      a3,236(sp)
    sw      a4,232(sp)
    sw      a5,228(sp)
    sw      a6,224(sp)
    sw      a7,220(sp)
    lw      a0,244(sp)
    lw      a1,240(sp)
    lw      a2,236(sp)
    lw      a3,232(sp)
    lw      a4,228(sp)
    lw      a5,224(sp)
    lw      a6,220(sp)
    lw      a7,216(sp)
    call    testParam8
    sw      a0,212(sp)
    la      a1, a0
    sw      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,212(sp)
    sw      a3,208(sp)
    lw      a0,208(sp)
    call    putint
    la      a0, a32
    lw      a1,0(a0)
    la      a2, a33
    lw      a3,0(a2)
    la      a4, a34
    lw      a5,0(a4)
    la      a6, a35
    lw      a7,0(a6)
    la      s1, a36
    lw      s2,0(s1)
    la      s3, a37
    lw      s4,0(s3)
    la      s5, a38
    lw      s6,0(s5)
    la      s7, a39
    lw      s8,0(s7)
    la      s9, a8
    lw      s10,0(s9)
    la      s11, a9
    lw      a0,0(s11)
    la      a2, a10
    lw      a4,0(a2)
    la      a2, a11
    lw      a6,0(a2)
    la      a2, a12
    lw      s1,0(a2)
    la      a2, a13
    lw      s3,0(a2)
    la      a2, a14
    lw      s5,0(a2)
    la      a2, a15
    lw      s7,0(a2)
    sw      s10,-4(sp)
    sw      a0,-8(sp)
    sw      a4,-12(sp)
    sw      a6,-16(sp)
    sw      s1,-20(sp)
    sw      s3,-24(sp)
    sw      s5,-28(sp)
    sw      s7,-32(sp)
    sw      s1,156(sp)
    sw      s2,188(sp)
    sw      s3,152(sp)
    sw      s4,184(sp)
    sw      s5,148(sp)
    sw      s6,180(sp)
    sw      s7,144(sp)
    sw      s8,176(sp)
    sw      s10,172(sp)
    sw      a0,168(sp)
    sw      a1,204(sp)
    sw      a3,200(sp)
    sw      a4,164(sp)
    sw      a5,196(sp)
    sw      a6,160(sp)
    sw      a7,192(sp)
    lw      a0,204(sp)
    lw      a1,200(sp)
    lw      a2,196(sp)
    lw      a3,192(sp)
    lw      a4,188(sp)
    lw      a5,184(sp)
    lw      a6,180(sp)
    lw      a7,176(sp)
    call    testParam16
    sw      a0,140(sp)
    la      a1, a0
    sw      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,140(sp)
    sw      a3,136(sp)
    lw      a0,136(sp)
    call    putint
    la      a0, a0
    lw      a1,0(a0)
    la      a2, a1
    lw      a3,0(a2)
    la      a4, a2
    lw      a5,0(a4)
    la      a6, a3
    lw      a7,0(a6)
    la      s1, a4
    lw      s2,0(s1)
    la      s3, a5
    lw      s4,0(s3)
    la      s5, a6
    lw      s6,0(s5)
    la      s7, a7
    lw      s8,0(s7)
    la      s9, a8
    lw      s10,0(s9)
    la      s11, a9
    lw      a0,0(s11)
    la      a2, a10
    lw      a4,0(a2)
    la      a2, a11
    lw      a6,0(a2)
    la      a2, a12
    lw      s1,0(a2)
    la      a2, a13
    lw      s3,0(a2)
    la      a2, a14
    lw      s5,0(a2)
    la      a2, a15
    lw      s7,0(a2)
    la      a2, a16
    lw      s9,0(a2)
    la      a2, a17
    lw      s11,0(a2)
    la      a2, a18
    sw      a0,96(sp)
    lw      a0,0(a2)
    la      a2, a19
    sw      a0,60(sp)
    lw      a0,0(a2)
    la      a2, a20
    sw      a0,56(sp)
    lw      a0,0(a2)
    la      a2, a21
    sw      a0,52(sp)
    lw      a0,0(a2)
    la      a2, a22
    sw      a0,48(sp)
    lw      a0,0(a2)
    la      a2, a23
    sw      a0,44(sp)
    lw      a0,0(a2)
    la      a2, a24
    sw      a0,40(sp)
    lw      a0,0(a2)
    la      a2, a25
    sw      a0,36(sp)
    lw      a0,0(a2)
    la      a2, a26
    sw      a0,32(sp)
    lw      a0,0(a2)
    la      a2, a27
    sw      a0,28(sp)
    lw      a0,0(a2)
    la      a2, a28
    sw      a0,24(sp)
    lw      a0,0(a2)
    la      a2, a29
    sw      a0,20(sp)
    lw      a0,0(a2)
    la      a2, a30
    sw      a0,16(sp)
    lw      a0,0(a2)
    la      a2, a31
    sw      a0,12(sp)
    lw      a0,0(a2)
    sw      s10,-4(sp)
    lw      a2,96(sp)
    sw      a2,-8(sp)
    sw      a4,-12(sp)
    sw      a6,-16(sp)
    sw      s1,-20(sp)
    sw      s3,-24(sp)
    sw      s5,-28(sp)
    sw      s7,-32(sp)
    sw      s9,-36(sp)
    sw      s11,-40(sp)
    sw      a0,8(sp)
    lw      a0,60(sp)
    sw      a0,-44(sp)
    sw      a0,60(sp)
    lw      a0,56(sp)
    sw      a0,-48(sp)
    sw      a0,56(sp)
    lw      a0,52(sp)
    sw      a0,-52(sp)
    sw      a0,52(sp)
    lw      a0,48(sp)
    sw      a0,-56(sp)
    sw      a0,48(sp)
    lw      a0,44(sp)
    sw      a0,-60(sp)
    sw      a0,44(sp)
    lw      a0,40(sp)
    sw      a0,-64(sp)
    sw      a0,40(sp)
    lw      a0,36(sp)
    sw      a0,-68(sp)
    sw      a0,36(sp)
    lw      a0,32(sp)
    sw      a0,-72(sp)
    sw      a0,32(sp)
    lw      a0,28(sp)
    sw      a0,-76(sp)
    sw      a0,28(sp)
    lw      a0,24(sp)
    sw      a0,-80(sp)
    sw      a0,24(sp)
    lw      a0,20(sp)
    sw      a0,-84(sp)
    sw      a0,20(sp)
    lw      a0,16(sp)
    sw      a0,-88(sp)
    sw      a0,16(sp)
    lw      a0,12(sp)
    sw      a0,-92(sp)
    sw      a0,12(sp)
    lw      a0,8(sp)
    sw      a0,-96(sp)
    sw      s1,84(sp)
    sw      s2,116(sp)
    sw      s3,80(sp)
    sw      s4,112(sp)
    sw      s5,76(sp)
    sw      s6,108(sp)
    sw      s7,72(sp)
    sw      s8,104(sp)
    sw      s9,68(sp)
    sw      s10,100(sp)
    sw      s11,64(sp)
    sw      a0,8(sp)
    sw      a1,132(sp)
    sw      a2,96(sp)
    sw      a3,128(sp)
    sw      a4,92(sp)
    sw      a5,124(sp)
    sw      a6,88(sp)
    sw      a7,120(sp)
    lw      a0,132(sp)
    lw      a1,128(sp)
    lw      a2,124(sp)
    lw      a3,120(sp)
    lw      a4,116(sp)
    lw      a5,112(sp)
    lw      a6,108(sp)
    lw      a7,104(sp)
    call    testParam32
    sw      a0,4(sp)
    la      a1, a0
    sw      a0,0(a1)
    la      a2, a0
    lw      a3,0(a2)
    sw      a0,4(sp)
    sw      a3,0(sp)
    lw      a0,0(sp)
    call    putint
    ld      ra,256(sp)
    ld      s0,248(sp)
    li      a0, 0
    addi    sp,sp,264
    ret
.section ___var
    .data
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
