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
    .globl read_program
    .type read_program,@function
read_program:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L12_0:
    li      a0, 0
    sw      a0,36(sp)
    call    getint
    sw      a0,32(sp)
    mv      a1, a0
    j       .while.head_22
.while.head_22:
    lw      a2,36(sp)
    slt     a3,a2,a1
    bnez    a3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, program
    add     a4,a4,a7
    sw      a0,32(sp)
    sw      a1,28(sp)
    sw      a2,36(sp)
    sb      a3,27(sp)
    sd      a4,16(sp)
    call    getch
    sw      a0,12(sp)
    ld      a1,16(sp)
    sw      a0,0(a1)
    lw      a2,36(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sw      a2,36(sp)
    sw      a0,12(sp)
    sw      a4,8(sp)
    sd      a1,16(sp)
    lw      a0,32(sp)
    lw      a1,28(sp)
    j       .while.head_22
.while.exit_22:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a4,a4,a6
    slli a4,a4,2
    la      a7, program
    add     a4,a4,a7
    li      s1, 0
    sw      s1,0(a4)
    ld      ra,48(sp)
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
    .globl interpret
    .type interpret,@function
interpret:
    addi    sp,sp,-280
    sd      ra,272(sp)
    sd      s0,264(sp)
    addi    s0,sp,280
.L1_0:
    li      a1, 0
    j       .while.head_32
.while.head_32:
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,a0
    lw      a5,0(a2)
    li      a6, 0
    xor     a7,a5,a6
    snez    a7, a7
    bnez    a7, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      a3, 0
    li      a4, 1
    mul     a6,a4,a1
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,a0
    lw      s1,0(a3)
    mv      s2, s1
    j       .L2_0
.L2_0:
    li      a4, 62
    xor     a6,s2,a4
    seqz    a6, a6
    bnez    a6, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    la      a4, ptr
    lw      s3,0(a4)
    li      s4, 1
    add     s5,s3,s4
    la      s6, ptr
    sw      s5,0(s6)
    j       .L10_0
.branch_false_36:
    li      a4, 60
    xor     s3,s2,a4
    seqz    s3, s3
    bnez    s3, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    la      a4, ptr
    lw      s4,0(a4)
    li      s5, 1
    sub     s6,s4,s5
    la      s7, ptr
    sw      s6,0(s7)
    j       .L9_0
.branch_false_40:
    li      a4, 43
    xor     s4,s2,a4
    seqz    s4, s4
    bnez    s4, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    la      a4, ptr
    lw      s5,0(a4)
    li      s6, 0
    li      s7, 1
    mul     s8,s7,s5
    add     s6,s6,s8
    slli s6,s6,2
    la      s9, tape
    add     s6,s6,s9
    la      s10, ptr
    lw      s11,0(s10)
    li      a4, 0
    mul     s8,s7,s11
    add     a4,a4,s8
    slli a4,a4,2
    la      s7, tape
    add     a4,a4,s7
    lw      s7,0(a4)
    li      s8, 1
    add     s9,s7,s8
    sw      s9,0(s6)
    j       .L8_0
.branch_false_44:
    li      a4, 45
    xor     s5,s2,a4
    seqz    s5, s5
    bnez    s5, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    la      a4, ptr
    lw      s6,0(a4)
    li      s7, 0
    li      s8, 1
    mul     s9,s8,s6
    add     s7,s7,s9
    slli s7,s7,2
    la      s10, tape
    add     s7,s7,s10
    la      s11, ptr
    lw      a4,0(s11)
    li      s8, 0
    li      s9, 1
    mul     s10,s9,a4
    add     s8,s8,s10
    slli s8,s8,2
    la      s9, tape
    add     s8,s8,s9
    lw      s9,0(s8)
    li      s10, 1
    sub     s11,s9,s10
    sw      s11,0(s7)
    j       .L7_0
.branch_false_48:
    li      a4, 46
    xor     s6,s2,a4
    seqz    s6, s6
    bnez    s6, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    la      a4, ptr
    lw      s7,0(a4)
    li      s8, 0
    li      s9, 1
    mul     s10,s9,s7
    add     s8,s8,s10
    slli s8,s8,2
    la      s11, tape
    add     s8,s8,s11
    lw      a4,0(s8)
    sw      s1,212(sp)
    sw      s2,252(sp)
    sb      s3,195(sp)
    sb      s4,183(sp)
    sb      s5,143(sp)
    sb      s6,103(sp)
    sw      s7,96(sp)
    sd      s8,88(sp)
    sd      a0,256(sp)
    sw      a1,244(sp)
    sd      a2,232(sp)
    sd      a3,216(sp)
    sw      a4,84(sp)
    sw      a5,228(sp)
    sb      a6,211(sp)
    sb      a7,227(sp)
    lw      a0,84(sp)
    call    putch
    j       .L6_0
.branch_false_52:
    li      a4, 44
    xor     s7,s2,a4
    seqz    s7, s7
    bnez    s7, .branch_true_56
    j       .branch_false_56
.branch_true_56:
    la      a4, ptr
    lw      s8,0(a4)
    li      s9, 0
    li      s10, 1
    mul     s11,s10,s8
    add     s9,s9,s11
    slli s9,s9,2
    la      a4, tape
    add     s9,s9,a4
    sw      s1,212(sp)
    sw      s2,252(sp)
    sb      s3,195(sp)
    sb      s4,183(sp)
    sb      s5,143(sp)
    sb      s6,103(sp)
    sb      s7,83(sp)
    sw      s8,76(sp)
    sd      s9,64(sp)
    sd      a0,256(sp)
    sw      a1,244(sp)
    sd      a2,232(sp)
    sd      a3,216(sp)
    sw      a5,228(sp)
    sb      a6,211(sp)
    sb      a7,227(sp)
    call    getch
    sw      a0,60(sp)
    ld      a1,64(sp)
    sw      a0,0(a1)
    j       .L5_0
.branch_false_56:
    la      a4, ptr
    lw      s8,0(a4)
    li      s9, 0
    li      s10, 1
    mul     s11,s10,s8
    add     s9,s9,s11
    slli s9,s9,2
    la      a4, tape
    add     s9,s9,a4
    lw      a4,0(s9)
    li      s10, 93
    xor     s11,s2,s10
    seqz    s11, s11
    li      s10, 0
    sd      a0,256(sp)
    xor     a0,a4,s10
    snez    a0, a0
    and     s10,s11,a0
    sw      a1,244(sp)
    bnez    s10, .branch_true_60
    j       .branch_false_60
.branch_true_60:
    li      a1, 1
    sw      a1,248(sp)
    j       .while.head_64
.while.head_64:
    lw      a1,248(sp)
    sb      a0,42(sp)
    li      a0, 0
    sd      a2,232(sp)
    slt     a2,a0,a1
    bnez    a2, .while.body_64
    sw      a1,248(sp)
    sb      a2,40(sp)
    ld      a2,232(sp)
    lb      a0,42(sp)
    j       .branch_false_60
.while.body_64:
    lw      a0,244(sp)
    sw      a1,248(sp)
    li      a1, 1
    sb      a2,40(sp)
    sub     a2,a0,a1
    mv      a0, a2
    li      a1, 0
    sw      a0,244(sp)
    li      a0, 1
    sw      a2,36(sp)
    lw      a2,244(sp)
    sd      a3,216(sp)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    ld      a0,256(sp)
    add     a1,a1,a0
    lw      a3,0(a1)
    mv      s2, a3
    sd      a1,24(sp)
    j       .L3_0
.L3_0:
    li      a1, 91
    sd      a0,256(sp)
    xor     a0,s2,a1
    seqz    a0, a0
    bnez    a0, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    lw      a1,248(sp)
    sb      a0,19(sp)
    li      a0, 1
    sw      a2,244(sp)
    sub     a2,a1,a0
    mv      a1, a2
    j       .L4_0
.branch_false_69:
    li      a1, 93
    sb      a0,19(sp)
    xor     a0,s2,a1
    seqz    a0, a0
    bnez    a0, .branch_true_73
    j       .branch_false_73
.branch_true_73:
    lw      a1,248(sp)
    sb      a0,11(sp)
    li      a0, 1
    sw      a2,244(sp)
    add     a2,a1,a0
    mv      a1, a2
    sw      a1,248(sp)
    sw      a2,4(sp)
    lw      a2,244(sp)
    lb      a0,11(sp)
    j       .branch_false_73
.branch_false_73:
.L4_0:
    sw      a1,248(sp)
    sw      a3,20(sp)
    sw      a2,12(sp)
    ld      a3,216(sp)
    ld      a2,232(sp)
    lb      a0,42(sp)
    j       .while.head_64
.branch_false_60:
.L5_0:
.L6_0:
.L7_0:
.L8_0:
.L9_0:
.L10_0:
.L11_0:
    li      a4, 1
    add     s4,a1,a4
    mv      a1, s4
    sw      a5,228(sp)
    sd      a3,216(sp)
    sw      s2,252(sp)
    sb      a7,227(sp)
    sw      s4,196(sp)
    sw      s3,204(sp)
    sb      a6,211(sp)
    sd      a2,232(sp)
    sw      s5,200(sp)
    sw      s1,212(sp)
    j       .while.head_32
.while.exit_32:
    ld      ra,272(sp)
    ld      s0,264(sp)
    addi    sp,sp,280
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
.L0_0:
    call    read_program
    la      a0, program
    call    interpret
    ld      ra,8(sp)
    ld      s0,0(sp)
    li      a0, 0
    addi    sp,sp,16
    ret
.section ___var
    .data
    .align 4
    .globl ptr
    .type ptr,@object
ptr:
    .word 0
    .align 4
    .globl program
    .type program,@object
program:
    .zero 131072
    .align 4
    .globl tape
    .type tape,@object
tape:
    .zero 262144
    .align 4
    .globl BUFFER_LEN
    .type BUFFER_LEN,@object
BUFFER_LEN:
    .word 32768
    .align 4
    .globl TAPE_LEN
    .type TAPE_LEN,@object
TAPE_LEN:
    .word 65536
