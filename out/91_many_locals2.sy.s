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
    addi    sp,sp,-280
    sd      ra,272(sp)
    sd      s0,264(sp)
    addi    s0,sp,280
.L0_0:
    call    getint
    sw      a0,136(sp)
    mv      a1, a0
    j       .while.head_52
.while.head_52:
    li      a2, 5
    xor     a3,a1,a2
    seqz    a3, a3
    bnez    a3, .while.body_52
    j       .while.exit_52
.while.body_52:
    li      a2, 1
    add     a4,a1,a2
    mv      a1, a4
    sw      a4,128(sp)
    sb      a3,135(sp)
    j       .while.head_52
.while.exit_52:
    li      a2, 0
    li      a4, 1
    add     a5,a2,a4
    mv      a6, a5
    add     a7,a6,a4
    mv      s1, a7
    add     s2,s1,a4
    mv      s3, s2
    add     s4,s3,a4
    mv      s5, s4
    add     s6,s5,a4
    mv      s7, s6
    add     s8,s7,a4
    mv      s9, s8
    add     s10,s9,a4
    mv      s11, s10
    sw      a0,136(sp)
    add     a0,s11,a4
    mv      a4, a0
    sw      a0,96(sp)
    li      a0, 1
    sw      a1,140(sp)
    add     a1,a4,a0
    mv      a0, a1
    sw      a1,92(sp)
    li      a1, 1
    sw      a2,260(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,224(sp)
    li      a0, 1
    sw      a2,88(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,220(sp)
    li      a1, 1
    sw      a2,84(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,216(sp)
    li      a0, 1
    sw      a2,80(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,212(sp)
    li      a1, 1
    sw      a2,76(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,208(sp)
    li      a0, 1
    sw      a2,72(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,204(sp)
    li      a1, 1
    sw      a2,68(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,200(sp)
    li      a0, 1
    sw      a2,64(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,196(sp)
    li      a1, 1
    sw      a2,60(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,192(sp)
    li      a0, 1
    sw      a2,56(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,188(sp)
    li      a1, 1
    sw      a2,52(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,184(sp)
    li      a0, 1
    sw      a2,48(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,180(sp)
    li      a1, 1
    sw      a2,44(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,176(sp)
    li      a0, 1
    sw      a2,40(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,172(sp)
    li      a1, 1
    sw      a2,36(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,168(sp)
    li      a0, 1
    sw      a2,32(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,164(sp)
    li      a1, 1
    sw      a2,28(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,160(sp)
    li      a0, 1
    sw      a2,24(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      a1,156(sp)
    li      a1, 1
    sw      a2,20(sp)
    add     a2,a0,a1
    mv      a1, a2
    sw      a0,152(sp)
    li      a0, 1
    sw      a2,16(sp)
    add     a2,a1,a0
    mv      a0, a2
    sw      s1,252(sp)
    sw      s2,116(sp)
    sw      s3,248(sp)
    sw      s4,112(sp)
    sw      s5,244(sp)
    sw      s6,108(sp)
    sw      s7,240(sp)
    sw      s8,104(sp)
    sw      s9,236(sp)
    sw      s10,100(sp)
    sw      s11,232(sp)
    sw      a0,144(sp)
    sw      a1,148(sp)
    sw      a2,12(sp)
    sb      a3,135(sp)
    sw      a4,228(sp)
    sw      a5,124(sp)
    sw      a6,256(sp)
    sw      a7,120(sp)
    lw      a0,260(sp)
    call    putint
    lw      a0,256(sp)
    call    putint
    lw      a0,252(sp)
    call    putint
    lw      a0,248(sp)
    call    putint
    lw      a0,244(sp)
    call    putint
    lw      a0,240(sp)
    call    putint
    lw      a0,236(sp)
    call    putint
    lw      a0,232(sp)
    call    putint
    lw      a0,228(sp)
    call    putint
    lw      a0,224(sp)
    call    putint
    lw      a0,220(sp)
    call    putint
    lw      a0,216(sp)
    call    putint
    lw      a0,212(sp)
    call    putint
    lw      a0,208(sp)
    call    putint
    lw      a0,204(sp)
    call    putint
    lw      a0,200(sp)
    call    putint
    lw      a0,196(sp)
    call    putint
    lw      a0,192(sp)
    call    putint
    lw      a0,188(sp)
    call    putint
    lw      a0,184(sp)
    call    putint
    lw      a0,180(sp)
    call    putint
    lw      a0,176(sp)
    call    putint
    lw      a0,172(sp)
    call    putint
    lw      a0,168(sp)
    call    putint
    lw      a0,164(sp)
    call    putint
    lw      a0,160(sp)
    call    putint
    lw      a0,156(sp)
    call    putint
    lw      a0,152(sp)
    call    putint
    lw      a0,148(sp)
    call    putint
    lw      a0,144(sp)
    call    putint
    li      a0, 10
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putch
    lw      a0,140(sp)
    call    putint
    lw      a0,4(sp)
    call    putch
    ld      ra,272(sp)
    ld      s0,264(sp)
    lw      a0,160(sp)
    addi    sp,sp,280
    ret
.section ___var
    .data
    .align 4
    .globl n
    .type n,@object
n:
    .word 0
