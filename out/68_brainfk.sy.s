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
    .globl read_program
    .type read_program,@function
read_program:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,72(sp)
    addi    s0,sp,96
.L12_0:
    li      a0, 0
    mv      a1, a0
    call    getint
    sw      a0,56(sp)
    mv      a2, a0
    j       .while.head_22
.while.head_22:
    slt     a3,a1,a2
    bnez    a3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
    call    getch
    sw      a0,56(sp)
    sw      a0,28(sp)
    sd      a0,0(a4)
    add     a7,a1,a5
    j       .while.head_22
.while.exit_22:
    li      s1, 0
    mul     s2,a5,a1
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
    li      s3, 0
    sd      s3,0(s1)
    .globl interpret
    .type interpret,@function
interpret:
    li      s4, -1048976
    li      s4, -1048976
    add     sp,s4,sp
    sd      ra,1048968(sp)
    sd      s0,1048952(sp)
    li      s5, 1048976
    li      s5, 1048976
    add     s0,s5,sp
.L1_0:
    mv      s6, s3
    j       .while.head_32
.while.head_32:
    li      s7, 0
    add     s7,s7,a0
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    mv      s8, s8
    xor     s9,s8,s3
    sltiu   s9,s9,1
    xori    s9,s9,1
    bnez    s9, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      s10, 0
    add     s10,s10,a0
    slli s10,s10,3
    add     s10,s10,sp
    add     s10,s10,s10
    mv      s11, s11
    mv      a5, s11
    j       .L2_0
.L2_0:
    li      a6, 62
    xor     s2,a5,a6
    sltiu   s2,s2,1
    bnez    s2, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    la      a6, ptr
    lw      s3,0(a6)
    mv      a6, a6
    li      s3, 1
    add     s4,a6,s3
    la      s3, ptr
    sd      s4,0(s3)
    j       .L10_0
.branch_false_36:
    li      s3, 60
    xor     s5,a5,s3
    sltiu   s5,s5,1
    bnez    s5, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    la      s3, ptr
    sd      a0,1048936(sp)
    lw      a0,0(s3)
    mv      a0, a0
    li      s3, 1
    sw      a1,64(sp)
    sub     a1,a0,s3
    la      s3, ptr
    sd      a1,0(s3)
    j       .L9_0
.branch_false_40:
    li      s3, 43
    sw      a0,1048844(sp)
    xor     a0,a5,s3
    sltiu   a0,a0,1
    bnez    a0, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    la      s3, ptr
    sb      a0,1048839(sp)
    lw      a0,0(s3)
    li      a0, 0
    li      s3, 1
    sw      a1,1048840(sp)
    mv      a1, a1
    sw      a2,48(sp)
    mul     a2,s3,a1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
    la      a2, ptr
    lw      s3,0(a2)
    la      a2, tape
    lw      s3,0(a2)
    li      a2, 0
    li      s3, 1
    sd      a0,1048824(sp)
    mv      a0, a0
    sw      a1,1048832(sp)
    mul     a1,s3,a0
    add     a2,a2,a1
    slli a2,a2,2
    add     a2,a2,sp
    add     a2,a2,a2
    mv      s3, s3
    sw      a0,1048816(sp)
    li      a0, 1
    sw      a1,1048808(sp)
    add     a1,s3,a0
    mv      a0, a0
    sd      a1,0(a0)
    j       .L8_0
.branch_false_44:
    sd      a0,1048824(sp)
    li      a0, 45
    sw      a1,786640(sp)
    xor     a1,a5,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    la      a0, ptr
    sb      a1,786639(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sd      a2,786656(sp)
    mv      a2, a2
    sb      a3,47(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
    la      a1, ptr
    lw      a3,0(a1)
    la      a1, tape
    lw      a3,0(a1)
    li      a1, 0
    li      a3, 1
    sd      a0,786624(sp)
    mv      a0, a0
    sw      a2,786635(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a3, a3
    sw      a0,786616(sp)
    li      a0, 1
    sd      a1,524456(sp)
    sub     a1,a3,a0
    mv      a0, a0
    sd      a1,0(a0)
    j       .L7_0
.branch_false_48:
    sd      a0,786624(sp)
    li      a0, 46
    sw      a1,524440(sp)
    xor     a1,a5,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    la      a0, ptr
    sb      a1,524439(sp)
    lw      a1,0(a0)
    la      a0, tape
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,786608(sp)
    mv      a2, a2
    sw      a3,524448(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,8(sp)
    sb      s2,1048871(sp)
    sw      s3,786648(sp)
    sw      s4,1048860(sp)
    sb      s5,1048851(sp)
    sw      s6,1048912(sp)
    sd      s7,1048896(sp)
    sw      s8,1048888(sp)
    sb      s9,1048887(sp)
    sd      s10,1048879(sp)
    sw      s11,1048872(sp)
    sd      a0,262272(sp)
    mv      a0, a0
    call    putch
    j       .L6_0
.branch_false_52:
    li      a0, 44
    xor     s1,a5,a0
    sltiu   s1,s1,1
    bnez    s1, .branch_true_56
    j       .branch_false_56
.branch_true_56:
    la      s2, ptr
    lw      s3,0(s2)
    li      s4, 0
    mv      s5, s5
    mul     s6,a1,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
    sb      s1,262263(sp)
    sd      s4,262240(sp)
    sw      s5,262256(sp)
    call    getch
    sw      a0,262232(sp)
    mv      s1, s1
    sd      a0,0(s1)
    j       .L5_0
.branch_false_56:
    la      s2, ptr
    lw      s3,0(s2)
    la      s4, tape
    lw      s5,0(s4)
    li      s6, 0
    mv      s7, s7
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s9, 93
    xor     s10,a5,s9
    sltiu   s10,s10,1
    mv      s11, s11
    li      a1, 0
    xor     s2,s11,a1
    sltiu   s2,s2,1
    xori    s2,s2,1
    and     a1,s10,s2
    bnez    a1, .branch_true_60
    j       .branch_false_60
.branch_true_60:
    li      s3, 1
    mv      s4, s3
    j       .while.head_64
.while.head_64:
    li      s3, 0
    slt     s5,s3,s4
    bnez    s5, .while.body_64
    j       .while.exit_64
.while.body_64:
    mv      s3, s3
    li      s9, 1
    sw      a0,262232(sp)
    sub     a0,s3,s9
    li      s9, 0
    sw      a0,44(sp)
    li      a0, 1
    sb      a1,53(sp)
    mul     a1,a0,s3
    add     s9,s9,a1
    slli s9,s9,3
    add     s9,s9,sp
    add     s9,s9,s9
    mv      a0, a0
    j       .L3_0
.L3_0:
    sw      a0,24(sp)
    li      a0, 91
    sd      a1,1048936(sp)
    xor     a1,a5,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    li      a0, 1
    sb      a1,23(sp)
    sub     a1,s4,a0
    j       .L4_0
.branch_false_69:
    li      a0, 93
    sw      a1,16(sp)
    xor     a1,a5,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_73
    j       .branch_false_73
.branch_true_73:
    li      a0, 1
    sb      a1,15(sp)
    add     a1,s4,a0
    j       .branch_false_73
.branch_false_73:
.L4_0:
    j       .while.head_64
.while.exit_64:
.L5_0:
.L6_0:
.L7_0:
.L8_0:
.L9_0:
.L10_0:
.L11_0:
    sw      a1,8(sp)
    add     a1,s3,a0
    j       .while.head_32
.while.exit_32:
    .globl main
    .type main,@function
main:
    li      a0, -131104
    li      a0, -131104
    add     sp,a0,sp
    sd      ra,131096(sp)
    sd      s0,131080(sp)
    li      a0, 131104
    li      a0, 131104
    add     s0,a0,sp
.L0_0:
    sd      s1,262240(sp)
    sb      s2,54(sp)
    sw      s3,1048912(sp)
    sw      s4,1048920(sp)
    sb      s5,52(sp)
    sd      s6,64(sp)
    sw      s7,262228(sp)
    sw      s8,262220(sp)
    sd      s9,32(sp)
    sb      s10,55(sp)
    sw      s11,56(sp)
    call    read_program
    la      s1, program
    lw      s2,0(s1)
    mv      a0, a0
    call    interpret
    li      a0, 131096
    add     a0,sp,a0
    ld      ra,0(a0)
    li      s1, 131080
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a0, 0
    li      s2, 131104
    li      s2, 131104
    add     sp,s2,sp
    ret
.section        .data
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
