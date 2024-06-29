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
    .globl foo
    .type foo,@function
foo:
    addi    sp,sp,-464
    sd      ra,456(sp)
    sd      s0,448(sp)
    addi    s0,sp,464
.L1_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    sd      a0,440(sp)
    ld      a0,440(sp)
    li      a1, 0
    li      a2, 64
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 12
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    li      a4, 0
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 8
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,152
    li      s1, 2
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 25
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,152
    sw      s1,0(s2)
    li      s5, 0
    li      s6, 5
    mul     s7,a1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,152
    sw      a4,0(s5)
    li      s8, 0
    li      s9, 26
    mul     s10,a1,s9
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,152
    li      s11, 3
    sw      s11,0(s8)
    li      a1, 0
    li      a2, 1
    li      a3, 19
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sw      s11,0(a1)
    li      a2, 0
    li      a3, 1
    li      a4, 24
    mul     a6,a3,a4
    add     a2,a2,a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,152
    sw      s1,0(a2)
    li      a3, 0
    li      a4, 1
    li      a6, 17
    mul     a7,a4,a6
    add     a3,a3,a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,152
    sw      s1,0(a3)
    li      a4, 0
    li      a6, 1
    li      a7, 4
    mul     s1,a6,a7
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,152
    li      a6, 0
    sw      a6,0(a4)
    li      a6, 0
    li      a7, 1
    li      s1, 16
    mul     s3,a7,s1
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,152
    li      a7, 2
    sw      a7,0(a6)
    li      a7, 0
    li      s1, 1
    li      s3, 13
    mul     s4,s1,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,152
    li      s1, 0
    sw      s1,0(a7)
    li      s1, 0
    li      s3, 1
    li      s4, 10
    mul     s6,s3,s4
    add     s1,s1,s6
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,152
    sw      s11,0(s1)
    li      s3, 0
    li      s4, 1
    li      s6, 2
    mul     s7,s4,s6
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,152
    sw      s6,0(s3)
    li      s4, 0
    li      s6, 1
    mul     s7,s6,s11
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,152
    sw      s11,0(s4)
    li      s6, 0
    li      s7, 1
    li      s9, 22
    mul     s10,s7,s9
    add     s6,s6,s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,152
    sw      s7,0(s6)
    li      s7, 0
    li      s9, 1
    li      s10, 1
    mul     s11,s9,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,152
    sw      s9,0(s7)
    li      s9, 0
    li      s11, 14
    sd      a0,432(sp)
    mul     a0,s10,s11
    add     s9,s9,a0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,152
    sw      s10,0(s9)
    li      a0, 0
    li      s11, 0
    sd      a1,392(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    sw      s11,0(a0)
    li      a1, 0
    li      s11, 15
    sd      a0,296(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sw      s10,0(a1)
    li      a0, 0
    li      s11, 21
    sd      a1,288(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    li      a1, 0
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 6
    sd      a0,280(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sw      s10,0(a1)
    li      a0, 0
    li      s11, 18
    sd      a1,272(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    li      a1, 3
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 23
    sd      a0,264(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    sw      s10,0(a1)
    li      a0, 0
    li      s11, 27
    sd      a1,256(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    li      a1, 3
    sw      a1,0(a0)
    li      a1, 0
    li      s11, 20
    sd      a0,248(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    li      a0, 0
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 7
    sd      a1,240(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    sw      s10,0(a0)
    li      a1, 0
    li      s11, 9
    sd      a0,232(sp)
    mul     a0,s10,s11
    add     a1,a1,a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,152
    li      a0, 2
    sw      a0,0(a1)
    li      a0, 0
    li      s11, 11
    sd      a1,224(sp)
    mul     a1,s10,s11
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    li      a1, 3
    sw      a1,0(a0)
    li      a1, 3
    li      s10, 7
    li      s11, 5
    sd      a0,216(sp)
    li      a0, 6
    sw      a0,136(sp)
    li      a0, 1
    sw      a0,132(sp)
    li      a0, 0
    sw      a0,128(sp)
    li      a0, 3
    sw      a0,124(sp)
    li      a0, 5
    sw      a0,120(sp)
    li      a0, 4
    sw      a0,116(sp)
    li      a0, 2
    sw      a0,112(sp)
    li      a0, 7
    sw      a0,108(sp)
    li      a0, 9
    sw      a0,104(sp)
    li      a0, 8
    sw      a0,100(sp)
    li      a0, 1
    sw      a0,96(sp)
    li      a0, 4
    sw      a0,92(sp)
    li      a0, 6
    sw      a0,88(sp)
    add     a0,a1,s10
    sw      a1,148(sp)
    add     a1,a0,s11
    sw      a0,84(sp)
    lw      a0,136(sp)
    sd      a2,384(sp)
    add     a2,a1,a0
    sw      a0,136(sp)
    lw      a0,132(sp)
    sw      a1,80(sp)
    add     a1,a2,a0
    sw      a0,132(sp)
    lw      a0,128(sp)
    sw      a2,76(sp)
    add     a2,a1,a0
    sw      a0,128(sp)
    lw      a0,124(sp)
    sw      a1,72(sp)
    add     a1,a2,a0
    sw      a0,124(sp)
    lw      a0,120(sp)
    sw      a2,68(sp)
    add     a2,a1,a0
    sw      a0,120(sp)
    mv      a0, a2
    sw      a0,56(sp)
    lw      a0,116(sp)
    sw      a1,64(sp)
    lw      a1,112(sp)
    sw      a2,60(sp)
    add     a2,a0,a1
    sw      a0,116(sp)
    lw      a0,108(sp)
    sw      a1,112(sp)
    add     a1,a2,a0
    sw      a0,108(sp)
    lw      a0,104(sp)
    sw      a2,52(sp)
    add     a2,a1,a0
    sw      a0,104(sp)
    lw      a0,100(sp)
    sw      a1,48(sp)
    add     a1,a2,a0
    sw      a0,100(sp)
    lw      a0,96(sp)
    sw      a2,44(sp)
    add     a2,a1,a0
    sw      a0,96(sp)
    lw      a0,92(sp)
    sw      a1,40(sp)
    add     a1,a2,a0
    sw      a0,92(sp)
    lw      a0,88(sp)
    sw      a2,36(sp)
    add     a2,a1,a0
    sw      a0,88(sp)
    mv      a0, a2
    sw      a0,24(sp)
    li      a0, 0
    sw      a1,32(sp)
    li      a1, 1
    sw      a2,28(sp)
    lw      a2,148(sp)
    sd      a3,376(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,152
    lw      a1,0(a0)
    lw      a3,56(sp)
    sd      a0,16(sp)
    lw      a0,24(sp)
    sw      a1,12(sp)
    add     a1,a3,a0
    sw      a0,24(sp)
    lw      a0,12(sp)
    sw      a2,148(sp)
    add     a2,a1,a0
    ld      ra,456(sp)
    ld      s0,448(sp)
    sw      a2,4(sp)
    sw      a0,12(sp)
    lw      a0,4(sp)
    addi    sp,sp,464
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-240
    sd      ra,232(sp)
    sd      s0,224(sp)
    addi    s0,sp,240
.L0_0:
    li      a0, 3
    li      a1, 7
    li      a2, 5
    li      a3, 6
    li      a4, 1
    li      a5, 0
    li      a6, 3
    li      a7, 5
    li      s1, 4
    li      s2, 2
    li      s3, 7
    li      s4, 9
    li      s5, 8
    li      s6, 1
    li      s7, 4
    li      s8, 6
    add     s9,a0,a1
    add     s10,s9,a2
    add     s11,s10,a3
    sw      a0,220(sp)
    add     a0,s11,a4
    sw      a1,216(sp)
    add     a1,a0,a5
    sw      a0,144(sp)
    add     a0,a1,a6
    sw      a1,140(sp)
    add     a1,a0,a7
    sw      a0,136(sp)
    mv      a0, a1
    sw      a0,128(sp)
    add     a0,s1,s2
    sw      a1,132(sp)
    add     a1,a0,s3
    sw      a0,124(sp)
    add     a0,a1,s4
    sw      a1,120(sp)
    add     a1,a0,s5
    sw      a0,116(sp)
    add     a0,a1,s6
    sw      a1,112(sp)
    add     a1,a0,s7
    sw      a0,108(sp)
    add     a0,a1,s8
    sw      a1,104(sp)
    mv      a1, a0
    sw      s1,188(sp)
    sw      s2,184(sp)
    sw      s3,180(sp)
    sw      s4,176(sp)
    sw      s5,172(sp)
    sw      s6,168(sp)
    sw      s7,164(sp)
    sw      s8,160(sp)
    sw      s9,156(sp)
    sw      s10,152(sp)
    sw      s11,148(sp)
    sw      a0,100(sp)
    sw      a1,96(sp)
    sw      a2,212(sp)
    sw      a3,208(sp)
    sw      a4,204(sp)
    sw      a5,200(sp)
    sw      a6,196(sp)
    sw      a7,192(sp)
    call    foo
    sw      a0,92(sp)
    lw      a1,128(sp)
    add     a2,a1,a0
    mv      a1, a2
    li      a3, 4
    li      a4, 7
    li      a5, 2
    li      a6, 5
    li      a7, 8
    li      s1, 0
    li      s2, 6
    li      s3, 3
    sw      s1,64(sp)
    sw      s2,60(sp)
    sw      s3,56(sp)
    sw      a0,92(sp)
    sw      a1,128(sp)
    sw      a2,88(sp)
    sw      a3,84(sp)
    sw      a4,80(sp)
    sw      a5,76(sp)
    sw      a6,72(sp)
    sw      a7,68(sp)
    call    foo
    sw      a0,52(sp)
    lw      a1,96(sp)
    add     a2,a1,a0
    mv      a1, a2
    lw      a3,188(sp)
    mv      a4, a3
    lw      a5,184(sp)
    mv      a6, a5
    lw      a7,180(sp)
    mv      s1, a7
    lw      s2,176(sp)
    mv      s3, s2
    lw      s4,172(sp)
    mv      s5, s4
    lw      s6,168(sp)
    mv      s7, s6
    lw      s8,164(sp)
    mv      s9, s8
    lw      s10,160(sp)
    mv      s11, s10
    sw      a0,52(sp)
    lw      a0,84(sp)
    sw      a1,96(sp)
    lw      a1,80(sp)
    sw      a2,48(sp)
    add     a2,a0,a1
    sw      a0,84(sp)
    lw      a0,76(sp)
    sw      a1,80(sp)
    add     a1,a2,a0
    sw      a0,76(sp)
    lw      a0,72(sp)
    sw      a2,44(sp)
    add     a2,a1,a0
    sw      a0,72(sp)
    lw      a0,68(sp)
    sw      a1,40(sp)
    add     a1,a2,a0
    sw      a0,68(sp)
    lw      a0,64(sp)
    sw      a2,36(sp)
    add     a2,a1,a0
    sw      a0,64(sp)
    lw      a0,60(sp)
    sw      a1,32(sp)
    add     a1,a2,a0
    sw      a0,60(sp)
    lw      a0,56(sp)
    sw      a2,28(sp)
    add     a2,a1,a0
    sw      a0,56(sp)
    mv      a0, a2
    sw      a0,16(sp)
    lw      a0,128(sp)
    sw      a1,24(sp)
    lw      a1,96(sp)
    sw      a2,20(sp)
    add     a2,a0,a1
    sw      a0,128(sp)
    lw      a0,16(sp)
    sw      a1,96(sp)
    add     a1,a2,a0
    sw      a0,16(sp)
    mv      a0, a1
    sw      s1,212(sp)
    sw      s2,176(sp)
    sw      s3,208(sp)
    sw      s4,172(sp)
    sw      s5,204(sp)
    sw      s6,168(sp)
    sw      s7,200(sp)
    sw      s8,164(sp)
    sw      s9,196(sp)
    sw      s10,160(sp)
    sw      s11,192(sp)
    sw      a0,4(sp)
    sw      a1,8(sp)
    sw      a2,12(sp)
    sw      a3,188(sp)
    sw      a4,220(sp)
    sw      a5,184(sp)
    sw      a6,216(sp)
    sw      a7,180(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    ld      ra,232(sp)
    ld      s0,224(sp)
    li      a0, 0
    addi    sp,sp,240
    ret
