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
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,a1
    li      a6, -1
    sw      a6,0(a2)
    li      a7, 0
    li      s1, -1
    j       .while.head_22
.while.head_22:
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a7
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,a0
    lw      a6,0(a3)
    li      s2, 0
    xor     s3,a6,s2
    snez    s3, s3
    bnez    s3, .while.body_22
    j       .while.exit_22
.while.body_22:
    li      a4, 0
    li      a5, 1
    mul     s2,a5,s1
    add     a4,a4,s2
    slli a4,a4,2
    add     a4,a4,a0
    lw      s4,0(a4)
    li      s5, 0
    mul     s6,a5,a7
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    xor     s8,s7,s4
    seqz    s8, s8
    li      s9, -1
    xor     s10,s1,s9
    seqz    s10, s10
    or      s11,s10,s8
    bnez    s11, .branch_true_25
    j       .branch_false_25
.branch_true_25:
    li      a5, 1
    add     s2,s1,a5
    mv      s1, s2
    add     s6,a7,a5
    mv      a7, s6
    li      s9, 0
    sd      a0,104(sp)
    mul     a0,a5,a7
    add     s9,s9,a0
    slli s9,s9,2
    add     s9,s9,a1
    sw      s1,0(s9)
    j       .L9_0
.branch_false_25:
    li      a5, 0
    li      s2, 1
    mul     s6,s2,s1
    add     a5,a5,s6
    slli a5,a5,2
    add     a5,a5,a1
    lw      s9,0(a5)
    mv      s1, s9
    sw      s9,4(sp)
    sd      a0,104(sp)
    sd      a5,8(sp)
    ld      s9,16(sp)
    lw      s6,24(sp)
    lw      s2,28(sp)
    j       .L9_0
.L9_0:
    sb      s3,67(sp)
    sd      s9,16(sp)
    sb      s8,35(sp)
    sb      s11,33(sp)
    sw      s7,36(sp)
    sw      a6,68(sp)
    sd      a4,56(sp)
    sw      s6,24(sp)
    sw      s4,52(sp)
    sd      s5,40(sp)
    sb      s10,34(sp)
    sw      s2,28(sp)
    sd      a3,72(sp)
    ld      a0,104(sp)
    j       .while.head_22
.while.exit_22:
    ld      ra,120(sp)
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
    .globl KMP
    .type KMP,@function
KMP:
    li      a2, -16536
    li      a2, -16536
    add     sp,a2,sp
    li      a3, 16528
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 16520
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 16536
    li      a5, 16536
    add     s0,a5,sp
.L4_0:
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
    li      a0, 16512
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 16504
    add     a0,sp,a0
    sd      a1,0(a0)
    sd      a2,112(sp)
    li      a1, 16512
    add     a1,sp,a1
    ld      a0,0(a1)
    ld      a1,112(sp)
    call    get_next
    li      a0, 0
    li      a1, 0
    j       .while.head_38
.while.head_38:
    li      a2, 0
    li      a3, 1
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    li      a6, 16504
    add     a6,sp,a6
    ld      a5,0(a6)
    add     a2,a2,a5
    lw      a7,0(a2)
    li      s1, 0
    xor     s2,a7,s1
    snez    s2, s2
    bnez    s2, .while.body_38
    j       .while.exit_38
.while.body_38:
    li      a3, 0
    li      a4, 1
    mul     a6,a4,a1
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,a5
    lw      s1,0(a3)
    li      s3, 0
    mul     s4,a4,a0
    add     s3,s3,s4
    slli s3,s3,2
    li      s6, 16512
    add     s6,sp,s6
    ld      s5,0(s6)
    add     s3,s3,s5
    lw      s7,0(s3)
    xor     s8,s7,s1
    seqz    s8, s8
    bnez    s8, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    li      a4, 1
    add     a6,a0,a4
    mv      a0, a6
    add     s4,a1,a4
    mv      a1, s4
    j       .L5_0
.L5_0:
    li      a4, 0
    li      s6, 1
    mul     s9,s6,a0
    add     a4,a4,s9
    slli a4,a4,2
    add     a4,a4,s5
    lw      s10,0(a4)
    li      s11, 0
    xor     s6,s10,s11
    snez    s6, s6
    seqz    s9, s6
    bnez    s9, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    li      s11, 16528
    add     s11,sp,s11
    ld      ra,0(s11)
    li      s11, 16520
    add     s11,sp,s11
    ld      s0,0(s11)
    sw      a1,104(sp)
    sw      a0,108(sp)
    lw      a0,104(sp)
    li      a1, 16536
    li      a1, 16536
    add     sp,a1,sp
    ret
.branch_false_46:
.branch_false_41:
    li      a4, 0
    li      a6, 1
    mul     s4,a6,a0
    add     a4,a4,s4
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,120
    lw      s6,0(a4)
    mv      a0, s6
    j       .L6_0
.L6_0:
    li      a6, -1
    xor     s4,a0,a6
    seqz    s4, s4
    bnez    s4, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      a6, 1
    add     s9,a0,a6
    mv      a0, s9
    add     s10,a1,a6
    mv      a1, s10
    sw      s9,12(sp)
    sw      s10,8(sp)
    j       .branch_false_52
.branch_false_52:
.L7_0:
    sw      s6,20(sp)
    sd      a2,96(sp)
    sb      s8,59(sp)
    sw      s7,60(sp)
    sb      s4,19(sp)
    sd      a4,24(sp)
    sb      s2,91(sp)
    sd      a3,80(sp)
    sw      a7,92(sp)
    sw      s1,76(sp)
    sd      s3,64(sp)
    li      a2, 16512
    add     a2,sp,a2
    sd      s5,0(a2)
    li      a3, 16504
    add     a3,sp,a3
    sd      a5,0(a3)
    j       .while.head_38
.while.exit_38:
    li      a3, 0
    li      a4, 1
    sub     a6,a3,a4
    li      s1, 16528
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s3, 16520
    add     s3,sp,s3
    ld      s0,0(s3)
    sw      a6,4(sp)
    sw      a0,108(sp)
    lw      a0,4(sp)
    li      a6, 16536
    li      a6, 16536
    add     sp,a6,sp
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
    li      a2, 0
    li      a3, 1
    mul     a5,a3,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,a0
    sd      a0,56(sp)
    sw      a1,52(sp)
    sd      a2,40(sp)
    sb      a4,51(sp)
    call    getch
    sw      a0,36(sp)
    ld      a1,40(sp)
    sw      a0,0(a1)
    j       .L2_0
.L2_0:
    li      a2, 0
    li      a3, 1
    lw      a4,52(sp)
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    ld      a6,56(sp)
    add     a2,a2,a6
    lw      a7,0(a2)
    li      s1, 10
    xor     s2,a7,s1
    seqz    s2, s2
    bnez    s2, .branch_true_66
    j       .branch_false_66
.branch_true_66:
    sd      a1,40(sp)
    sd      a2,24(sp)
    sw      a7,20(sp)
    sd      a6,56(sp)
    sw      a0,36(sp)
    sb      s2,19(sp)
    sw      a4,52(sp)
    lw      a1,52(sp)
    ld      a0,56(sp)
    lb      a4,51(sp)
    j       .while.exit_62
.while.exit_62:
    li      a2, 0
    li      a3, 1
    mul     a5,a3,a1
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,a0
    li      a6, 0
    sw      a6,0(a2)
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a1,52(sp)
    sd      a0,56(sp)
    lw      a0,52(sp)
    addi    sp,sp,80
    ret
.branch_false_66:
.L3_0:
    li      a3, 1
    add     a5,a4,a3
    mv      a4, a5
    sd      a1,40(sp)
    sd      a2,24(sp)
    sw      a7,20(sp)
    sw      a5,12(sp)
    sd      a6,56(sp)
    sw      a0,36(sp)
    sb      s2,19(sp)
    sw      a4,52(sp)
    lw      a1,52(sp)
    ld      a0,56(sp)
    j       .while.head_62
    .globl main
    .type main,@function
main:
    li      a0, -32840
    li      a0, -32840
    add     sp,a0,sp
    li      a1, 32832
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 32824
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 32840
    li      a3, 32840
    add     s0,a3,sp
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    li      a1, 16440
    li      a1, 16440
    add     a0,a1,a0
    sd      a0,48(sp)
    ld      a0,48(sp)
    call    read_str
    sw      a0,44(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,56
    sw      a0,44(sp)
    sd      a1,32(sp)
    ld      a0,32(sp)
    call    read_str
    sw      a0,28(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    li      a2, 16440
    li      a2, 16440
    add     a1,a2,a1
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,56
    sw      a0,28(sp)
    sd      a1,16(sp)
    sd      a3,8(sp)
    ld      a0,16(sp)
    ld      a1,8(sp)
    call    KMP
    sw      a0,4(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 32832
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 32824
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      a2, 32840
    li      a2, 32840
    add     sp,a2,sp
    ret
