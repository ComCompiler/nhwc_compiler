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
    addi    sp,sp,-208
    sd      ra,200(sp)
    sd      s0,184(sp)
    addi    s0,sp,208
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
    mv      a6, a4
    mv      a7, a5
    j       .while.head_22
.while.head_22:
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    mv      s2, s2
    xor     s3,s2,a4
    sltiu   s3,s3,1
    xori    s3,s3,1
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
    mv      s6, s6
    mv      s7, s7
    xor     s8,s6,s7
    sltiu   s8,s8,1
    xor     s9,a7,a5
    sltiu   s9,s9,1
    mv      s10, s10
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
    sd      a0,168(sp)
    li      a0, 1
    add     a5,a5,a1
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    mv      a0, a0
    j       .L9_0
.L9_0:
    j       .while.head_22
.while.exit_22:
    .globl KMP
    .type KMP,@function
KMP:
    sd      a0,16560(sp)
    li      a0, -16600
    li      a0, -16600
    add     sp,a0,sp
    sd      ra,16592(sp)
    sd      s0,16576(sp)
    li      a0, 16600
    li      a0, 16600
    add     s0,a0,sp
.L4_0:
    sd      s1,104(sp)
    sw      s2,96(sp)
    sb      s3,95(sp)
    sd      s4,80(sp)
    sd      s5,64(sp)
    sw      s6,56(sp)
    sw      s7,76(sp)
    sb      s8,55(sp)
    sb      s9,54(sp)
    sb      s10,53(sp)
    sw      s11,49(sp)
    mv      a0, a0
    sd      a1,16544(sp)
    mv      a1, a1
    call    get_next
    li      a0, 0
    mv      a1, a0
    mv      s1, a0
    j       .while.head_38
.while.head_38:
    li      s2, 0
    li      s3, 1
    mul     s4,s3,s1
    add     s2,s2,s4
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s5, s5
    xor     s6,s5,a0
    sltiu   s6,s6,1
    xori    s6,s6,1
    bnez    s6, .while.body_38
    j       .while.exit_38
.while.body_38:
    li      s7, 0
    add     s7,s7,s4
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    li      s8, 0
    mul     s9,s3,a1
    add     s8,s8,s9
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    mv      s10, s10
    mv      s11, s11
    xor     a0,s10,s11
    sltiu   a0,a0,1
    bnez    a0, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    sb      a0,79(sp)
    add     a0,a1,s3
    sw      a0,72(sp)
    add     a0,s1,s3
    j       .L5_0
.L5_0:
    li      s3, 0
    sw      a0,68(sp)
    li      a0, 1
    add     s3,s3,s9
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    mv      a0, a0
    sw      a1,148(sp)
    li      a1, 0
    sd      a2,136(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    xori    a1,a2,-1
    bnez    a1, .branch_true_46
    j       .branch_false_46
.branch_true_46:
    sw      a0,48(sp)
    li      a0, 16592
    add     a0,sp,a0
    ld      ra,0(a0)
    sd      a0,16592(sp)
    li      a0, 16576
    add     a0,sp,a0
    ld      s0,0(a0)
    mv      a0, s1
    sd      a0,16576(sp)
    li      a0, 16600
    li      a0, 16600
    add     sp,a0,sp
    ret
.branch_false_46:
.branch_false_41:
    li      a0, 0
    sb      a1,46(sp)
    li      a1, 1
    sb      a2,47(sp)
    mv      a2, a2
    sd      a3,32(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    j       .L6_0
.L6_0:
    sd      a0,32(sp)
    li      a0, -1
    sw      a1,24(sp)
    xor     a1,a2,a0
    sltiu   a1,a1,1
    bnez    a1, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    li      a0, 1
    sb      a1,23(sp)
    add     a1,a2,a0
    sw      a1,19(sp)
    add     a1,s1,a0
    j       .branch_false_52
.branch_false_52:
.L7_0:
    j       .while.head_38
.while.exit_38:
    li      a0, 0
    sw      a1,12(sp)
    li      a1, 1
    sw      a2,148(sp)
    sub     a2,a0,a1
    li      a0, 16592
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 16576
    add     a1,sp,a1
    ld      s0,0(a1)
    mv      a0, a2
    sd      a0,16592(sp)
    li      a0, 16600
    li      a0, 16600
    add     sp,a0,sp
    ret
    .globl read_str
    .type read_str,@function
read_str:
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,88(sp)
    addi    s0,sp,112
.L1_0:
    sd      a0,72(sp)
    li      a0, 0
    sd      a1,16576(sp)
    mv      a1, a0
    j       .while.head_62
.while.head_62:
    li      a0, 1
    sw      a1,64(sp)
    li      a1, 0
    sw      a2,4(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .while.body_62
    j       .while.exit_62
.while.body_62:
    li      a0, 0
    li      a1, 1
    sb      a2,63(sp)
    mv      a2, a2
    sw      a3,16536(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    sw      s1,140(sp)
    sd      s2,128(sp)
    sd      s3,56(sp)
    sd      s4,16544(sp)
    sw      s5,120(sp)
    sb      s6,119(sp)
    sd      s7,104(sp)
    sd      s8,88(sp)
    sd      s9,16560(sp)
    sw      s10,80(sp)
    sw      s11,100(sp)
    call    getch
    sd      a0,55(sp)
    sw      a0,48(sp)
    mv      s1, s1
    sd      a0,0(s1)
    j       .L2_0
.L2_0:
    li      s2, 0
    add     s2,s2,a3
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    mv      s3, s3
    li      s4, 10
    xor     s5,s3,s4
    sltiu   s5,s5,1
    bnez    s5, .branch_true_66
    j       .branch_false_66
.branch_true_66:
    j       .while.exit_62
.while.exit_62:
    li      s6, 0
    add     s6,s6,a3
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
    li      s7, 0
    sd      s7,0(s6)
    ld      ra,104(sp)
    ld      s0,88(sp)
    mv      a0, a2
    addi    sp,sp,112
    ret
.branch_false_66:
.L3_0:
    add     s8,a2,a1
    j       .while.head_62
    .globl main
    .type main,@function
main:
    li      s9, -32832
    li      s9, -32832
    add     sp,s9,sp
    sd      ra,32824(sp)
    sd      s0,32808(sp)
    li      s10, 32832
    li      s10, 32832
    add     s0,s10,sp
.L0_0:
    sd      s1,55(sp)
    sd      s2,32(sp)
    sw      s3,24(sp)
    sb      s5,23(sp)
    sd      s6,8(sp)
    sw      s8,19(sp)
    sw      a0,48(sp)
    mv      a0, a0
    call    read_str
    sw      a0,24(sp)
    sw      a0,24(sp)
    mv      a0, a0
    call    read_str
    sw      a0,16(sp)
    sw      a0,16(sp)
    mv      a0, a0
    mv      a1, a1
    call    KMP
    sw      a0,8(sp)
    sw      a0,8(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    li      a0, 32824
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 32808
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 0
    li      s1, 32832
    li      s1, 32832
    add     sp,s1,sp
    ret
