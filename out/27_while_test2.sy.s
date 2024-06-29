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
    .globl FourWhile
    .type FourWhile,@function
FourWhile:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,72(sp)
    addi    s0,sp,88
.L1_0:
    li      a0, 5
    li      a1, 6
    li      a2, 7
    li      a3, 10
    j       .while.head_27
.while.head_27:
    li      a4, 20
    slt     a5,a0,a4
    bnez    a5, .while.body_27
    j       .while.exit_27
.while.body_27:
    li      a4, 3
    add     a6,a0,a4
    mv      a0, a6
    j       .while.head_31
.while.head_31:
    li      a4, 10
    slt     a7,a1,a4
    bnez    a7, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      a4, 1
    add     s1,a1,a4
    mv      a1, s1
    j       .while.head_35
.while.head_35:
    li      a4, 7
    xor     s2,a2,a4
    seqz    s2, s2
    bnez    s2, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      a4, 1
    sub     s3,a2,a4
    mv      a2, s3
    j       .while.head_39
.while.head_39:
    li      a4, 20
    slt     s4,a3,a4
    bnez    s4, .while.body_39
    j       .while.exit_39
.while.body_39:
    li      a4, 3
    add     s5,a3,a4
    mv      a3, s5
    sb      s4,31(sp)
    sw      s5,24(sp)
    j       .while.head_39
.while.exit_39:
    li      a4, 1
    sub     s5,a3,a4
    mv      a3, s5
    sb      s4,31(sp)
    sb      s2,39(sp)
    sw      s3,32(sp)
    sw      s5,20(sp)
    j       .while.head_35
.while.exit_35:
    li      a4, 1
    add     s3,a2,a4
    mv      a2, s3
    sb      s2,39(sp)
    sb      a7,47(sp)
    sw      s3,16(sp)
    sw      s1,40(sp)
    j       .while.head_31
.while.exit_31:
    li      a4, 2
    sub     s1,a1,a4
    mv      a1, s1
    sw      a6,48(sp)
    sb      a7,47(sp)
    sb      a5,55(sp)
    sw      s1,12(sp)
    j       .while.head_27
.while.exit_27:
    add     a4,a1,a3
    add     a6,a0,a4
    add     a7,a6,a2
    ld      ra,80(sp)
    ld      s0,72(sp)
    sw      a7,0(sp)
    sw      a0,68(sp)
    lw      a0,0(sp)
    addi    sp,sp,88
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L0_0:
    call    FourWhile
    sw      a0,4(sp)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,24
    ret
