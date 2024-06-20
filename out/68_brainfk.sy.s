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
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L12_0:
    li      a0, 0
    call    getint
    sw      a0,36(sp)
    sw      a0,32(sp)
    mv      a1, a0
    j       .while.head_22
.while.head_22:
    slt     a3,a2,a1
    bnez    a3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,a4
    call    getch
    sw      a0,32(sp)
    sw      a0,12(sp)
    sd      a0,0(a4)
    add     a7,a2,a5
    j       .while.head_22
.while.exit_22:
    li      s1, 0
    mul     s2,a5,a2
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
    li      s3, 0
    sd      s3,0(s1)
    .globl interpret
    .type interpret,@function
interpret:
    li      a1, -1048856
    li      a1, -1048856
    add     sp,a1,sp
    sd      ra,1048848(sp)
    sd      s0,1048840(sp)
    li      a2, 1048856
    li      a2, 1048856
    add     s0,a2,sp
.L1_0:
    li      a3, 0
    j       .while.head_32
.while.head_32:
    li      a4, 0
    li      a5, 1
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
    li      a7, 0
    xor     s1,a6,a7
    snez    s1, s1
    bnez    s1, .while.body_32
    j       .while.exit_32
.while.body_32:
    li      s2, 0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s4, s3
    j       .L2_0
.L2_0:
    li      s5, 62
    xor     s6,s4,s5
    seqz    s6, s6
    bnez    s6, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    la      s7, ptr
    lw      s8,0(s7)
    add     s10,s9,a5
    la      s11, ptr
    sd      s10,0(s11)
    j       .L10_0
.branch_false_36:
    li      a1, 60
    xor     a2,s4,a1
    seqz    a2, a2
    bnez    a2, .branch_true_40
    j       .branch_false_40
.branch_true_40:
    la      a1, ptr
    lw      a5,0(a1)
    li      a5, 1
    sub     a7,a1,a5
    la      a5, ptr
    sd      a7,0(a5)
    j       .L9_0
.branch_false_40:
    li      a5, 43
    xor     s5,s4,a5
    seqz    s5, s5
    bnez    s5, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    la      a5, ptr
    lw      s7,0(a5)
    li      a5, 0
    li      s7, 1
    mul     s11,s7,s8
    add     a5,a5,s11
    slli a5,a5,2
    add     a5,a5,a5
    la      s7, ptr
    lw      s11,0(s7)
    la      s7, tape
    lw      s11,0(s7)
    li      s7, 0
    li      s11, 1
    sd      a0,1048832(sp)
    sw      a1,1048764(sp)
    mul     a1,s11,a0
    add     s7,s7,a1
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
    sw      a0,1048740(sp)
    li      a0, 1
    sw      a1,1048736(sp)
    add     a1,s11,a0
    sd      a1,0(a5)
    j       .L8_0
.branch_false_44:
    li      a0, 45
    sw      a1,786576(sp)
    xor     a1,s4,a0
    seqz    a1, a1
    bnez    a1, .branch_true_48
    j       .branch_false_48
.branch_true_48:
    la      a0, ptr
    sb      a1,786575(sp)
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sb      a2,1048771(sp)
    sw      a3,1048820(sp)
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
    sd      a0,786560(sp)
    sw      a2,786568(sp)
    mul     a2,a3,a0
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      a0,786556(sp)
    li      a0, 1
    sd      a1,524400(sp)
    sub     a1,a3,a0
    sd      a1,0(a0)
    j       .L7_0
.branch_false_48:
    sd      a0,786560(sp)
    li      a0, 46
    sw      a1,524392(sp)
    xor     a1,s4,a0
    seqz    a1, a1
    bnez    a1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    la      a0, ptr
    sb      a1,524391(sp)
    lw      a1,0(a0)
    la      a0, tape
    lw      a1,0(a0)
    li      a0, 0
    li      a1, 1
    sw      a2,786552(sp)
    sw      a3,524396(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sb      s1,1048803(sp)
    sd      s2,1048792(sp)
    sw      s3,1048788(sp)
    sw      s4,1048828(sp)
    sb      s5,1048759(sp)
    sb      s6,1048787(sp)
    sd      s7,786584(sp)
    sw      s8,1048752(sp)
    sw      s9,1048780(sp)
    sw      s10,1048776(sp)
    sw      s11,786580(sp)
    sd      a0,262232(sp)
    call    putch
    j       .L6_0
.branch_false_52:
    li      s1, 44
    xor     s2,a0,s1
    seqz    s2, s2
    bnez    s2, .branch_true_56
    j       .branch_false_56
.branch_true_56:
    la      s3, ptr
    lw      s4,0(s3)
    li      s5, 0
    mul     s7,a1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,s5
    sb      s2,262227(sp)
    sd      s5,262208(sp)
    sw      s6,262220(sp)
    call    getch
    sw      a0,1048828(sp)
    sw      a0,262204(sp)
    sd      a0,0(s1)
    j       .L5_0
.branch_false_56:
    la      s2, ptr
    lw      s3,0(s2)
    la      s4, tape
    lw      s5,0(s4)
    li      s6, 0
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
    li      s10, 93
    xor     s11,s9,s10
    seqz    s11, s11
    li      s2, 0
    xor     s3,a1,s2
    snez    s3, s3
    and     s2,s11,s3
    bnez    s2, .branch_true_60
    j       .branch_false_60
.branch_true_60:
    li      s4, 1
    j       .while.head_64
.while.head_64:
    li      s5, 0
    slt     s10,s5,s4
    bnez    s10, .while.body_64
    j       .while.exit_64
.while.body_64:
    sw      a0,262204(sp)
    li      a0, 1
    sw      a1,44(sp)
    sub     a1,s5,a0
    li      a0, 0
    sw      a1,36(sp)
    li      a1, 1
    sw      a2,524384(sp)
    mul     a2,a1,s5
    add     a0,a0,a2
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    j       .L3_0
.L3_0:
    sd      a0,24(sp)
    li      a0, 91
    sw      a1,20(sp)
    xor     a1,s9,a0
    seqz    a1, a1
    bnez    a1, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    li      a0, 1
    sb      a1,19(sp)
    sub     a1,s4,a0
    j       .L4_0
.branch_false_69:
    li      a0, 93
    sw      a1,12(sp)
    xor     a1,s9,a0
    seqz    a1, a1
    bnez    a1, .branch_true_73
    j       .branch_false_73
.branch_true_73:
    li      a0, 1
    sb      a1,11(sp)
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
    sw      a1,4(sp)
    add     a1,s5,a0
    j       .while.head_32
.while.exit_32:
    .globl main
    .type main,@function
main:
    li      a0, -131088
    li      a0, -131088
    add     sp,a0,sp
    sd      ra,131080(sp)
    sd      s0,131072(sp)
    li      a1, 131088
    li      a1, 131088
    add     s0,a1,sp
.L0_0:
    call    read_program
    la      a2, program
    lw      a3,0(a2)
    call    interpret
    li      a0, 131080
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a4, 131072
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a0, 0
    li      a1, 131088
    add     sp,a1,sp
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
