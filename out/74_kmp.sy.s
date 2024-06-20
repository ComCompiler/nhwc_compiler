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
    .globl get_next
    .type get_next,@function
get_next:
    addi    sp,sp,-128
    sd      ra,120(sp)
    sd      s0,112(sp)
    addi    s0,sp,128
.L8_0:
    li      a2, 0
    li      a3, 1
    li      a4, 0
    add     a2,a2,a1
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    li      a5, -1
    sd      a5,0(a2)
    li      a6, 0
    li      a7, -1
    j       .while.head_22
.while.head_22:
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    xor     s3,s2,a4
    snez    s3, s3
    bnez    s3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      s4, 0
    add     s4,s4,a0
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    li      s5, 0
    add     s5,s5,a0
    slli s5,s5,3
    add     s5,s5,sp
    add     s5,s5,s5
    xor     s8,s6,s7
    seqz    s8, s8
    xor     s9,a7,a5
    seqz    s9, s9
    bnez    s10, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    add     s11,a7,a3
    add     a4,a6,a3
    li      a3, 0
    li      a5, 1
    add     a3,a3,a1
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    sd      a7,0(a3)
    j       .L9_0
.branch_false_25:
    li      a5, 0
    sd      a0,104(sp)
    li      a0, 1
    add     a5,a5,a1
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    j       .L9_0
.L9_0:
    j       .while.head_22
.while.exit_22:
    .globl KMP
    .type KMP,@function
KMP:
    li      a2, -16528
    li      a2, -16528
    add     sp,a2,sp
    sd      ra,16520(sp)
    sd      s0,16512(sp)
    li      a3, 16528
    li      a3, 16528
    add     s0,a3,sp
.L4_0:
    sd      a0,16504(sp)
    sd      a1,16496(sp)
    call    get_next
    li      a0, 0
    li      a1, 0
    j       .while.head_38
.while.head_38:
    li      a4, 0
    li      a5, 1
    mul     a6,a5,a1
    add     a4,a4,a6
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
    li      s1, 0
    xor     s2,a7,s1
    snez    s2, s2
    bnez    s2, .while.body_38
    j       .while.exit_38
.while.body_38:
    li      s3, 0
    add     s3,s3,a6
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    li      s4, 0
    mul     s5,a5,a0
    add     s4,s4,s5
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    xor     s8,s6,s7
    seqz    s8, s8
    bnez    s8, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    add     s9,a0,a5
    add     s10,a1,a5
    j       .L5_0
.L5_0:
    li      s11, 0
    add     s11,s11,s5
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    xor     a3,a2,s1
    snez    a3, a3
    xori    a5,a3,-1
    bnez    a5, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    li      s1, 16520
    add     s1,sp,s1
    ld      ra,0(s1)
    sw      a0,108(sp)
    li      a0, 16512
    add     a0,sp,a0
    ld      s0,0(a0)
    mv      a0, a1
    sd      a0,16512(sp)
    li      a0, 16528
    li      a0, 16528
    add     sp,a0,sp
    ret
.branch_false_46:
.branch_false_41:
    li      a0, 0
    sw      a1,104(sp)
    li      a1, 1
    sw      a2,36(sp)
    sb      a3,35(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    j       .L6_0
.L6_0:
    sd      a0,24(sp)
    li      a0, -1
    sw      a1,20(sp)
    xor     a1,a2,a0
    seqz    a1, a1
    bnez    a1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      a0, 1
    sb      a1,19(sp)
    add     a1,a2,a0
    sw      a1,12(sp)
    li      a1, 1
    sw      a2,108(sp)
    add     a2,a0,a1
    j       .branch_false_52
.branch_false_52:
.L7_0:
    j       .while.head_38
.while.exit_38:
    li      a1, 0
    sw      a0,104(sp)
    li      a0, 1
    sw      a2,8(sp)
    sub     a2,a1,a0
    mv      ra, s1
    li      a0, 16512
    add     a0,sp,a0
    ld      s0,0(a0)
    mv      a0, a2
    li      a1, 16528
    li      a1, 16528
    add     sp,a1,sp
    ret
    .globl read_str
    .type read_str,@function
read_str:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L1_0:
    li      a1, 0
    j       .while.head_62
.while.head_62:
    li      a2, 1
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
    bnez    a4, .while.body_62
    j       .while.exit_62
.while.body_62:
    li      a5, 0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    call    getch
    sd      a0,56(sp)
    sw      a0,36(sp)
    sd      a0,0(a5)
    j       .L2_0
.L2_0:
    li      a6, 0
    mul     a7,a2,a1
    add     a6,a6,a7
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    li      s2, 10
    xor     s3,s1,s2
    seqz    s3, s3
    bnez    s3, .branch_true_66
    j       .branch_false_66
.branch_true_66:
    j       .while.exit_62
.while.exit_62:
    li      s4, 0
    add     s4,s4,a7
    slli s4,s4,3
    add     s4,s4,sp
    add     s4,s4,s4
    sd      a3,0(s4)
    ld      ra,72(sp)
    ld      s0,64(sp)
    mv      a0, a1
    addi    sp,sp,80
    ret
.branch_false_66:
.L3_0:
    add     s5,a1,a2
    j       .while.head_62
    .globl main
    .type main,@function
main:
    li      a0, -32800
    li      a0, -32800
    add     sp,a0,sp
    sd      ra,32792(sp)
    sd      s0,32784(sp)
    li      a1, 32800
    li      a1, 32800
    add     s0,a1,sp
.L0_0:
    call    read_str
    sw      a0,12(sp)
    sw      a0,12(sp)
    call    read_str
    sw      a0,8(sp)
    sw      a0,8(sp)
    call    KMP
    sw      a0,4(sp)
    sw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 32792
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 32784
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      a2, 32800
    li      a2, 32800
    add     sp,a2,sp
    ret
