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
    .globl init
    .type init,@function
init:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L1_0:
    li      a1, 0
    j       .while.head_21
.while.head_21:
    li      a2, 3
    slt     a3,a1,a2
    bnez    a3, .while.body_21
    j       .while.exit_21
.while.body_21:
    li      a2, 0
    j       .while.head_25
.while.head_25:
    li      a4, 3
    slt     a5,a2,a4
    bnez    a5, .while.body_25
    j       .while.exit_25
.while.body_25:
    li      a4, 0
    li      a7, 3
    mul     a6,a7,a1
    add     a4,a4,a6
    mv      s1, a2
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,a0
    sw      a2,0(a4)
    li      s2, 1
    ADDW    s3,a2,s2
    mv      a2, s3
    sb      a5,7(sp)
    sd      a4,16(sp)
    sw      s3,12(sp)
    j       .while.head_25
.while.exit_25:
    li      a4, 1
    ADDW    a6,a1,a4
    mv      a1, a6
    sw      a6,28(sp)
    sb      a5,7(sp)
    sb      a3,11(sp)
    sw      a2,32(sp)
    j       .while.head_21
.while.exit_21:
    li      a2, 10
    slt     a4,a1,a2
    bnez    a4, .while.body_31
    j       .while.exit_31
.while.body_31:
    li      a2, 0
    li      a5, 10
    j       .while.head_36
.while.head_36:
    li      a6, 0
    slt     a7,a5,a6
    xori    a7,a7,1
    bnez    a7, .while.body_36
    j       .while.exit_36
.while.body_36:
    ADDW    a6,a2,a5
    ADDW    s1,a6,a1
    li      s2, 1
    subw    s3,a5,s2
    mv      a2, s1
    mv      a5, s3
    sw      a6,44(sp)
    sb      a7,9(sp)
    sw      s1,40(sp)
    sw      s3,36(sp)
    j       .while.head_36
.while.exit_36:
    li      a6, 5
    slt     s1,a6,a5
    bnez    s1, .while.body_41
    j       .while.exit_41
.while.body_41:
    subw    a6,a2,a5
    li      s2, 1
    subw    s3,a5,s2
    sw      a5,64(sp)
    mv      a5, s3
    sw      s3,48(sp)
    mv      a2, a6
    sw      a6,52(sp)
    sb      s1,8(sp)
    j       .while.exit_36
.while.exit_41:
    li      a6, 1
    ADDW    s2,a1,a6
    mv      a1, s2
    sw      s2,56(sp)
    sw      a5,64(sp)
    sb      a7,9(sp)
    sb      a4,10(sp)
    sw      a2,60(sp)
    sb      s1,8(sp)
    j       .while.exit_21
.while.exit_31:
    ld      ra,88(sp)
    ld      s0,80(sp)
    addi    sp,sp,96
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,12
    sd      a0,0(sp)
    ld      a0,0(sp)
    call    init
    ld      ra,56(sp)
    ld      s0,48(sp)
    li      a0, 0
    addi    sp,sp,64
    ret
