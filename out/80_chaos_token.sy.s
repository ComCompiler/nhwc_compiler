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
    .globl putstr
    .type putstr,@function
putstr:
    addi    sp,sp,-104
    sd      ra,96(sp)
    sd      s0,80(sp)
    addi    s0,sp,104
.L4_0:
    li      a1, 0
    mv      a2, a1
    j       .while.head_26
.while.head_26:
    li      a3, 0
    li      a4, 1
    add     a3,a3,a0
    slli a3,a3,3
    add     a3,a3,sp
    add     a3,a3,a3
    mv      a5, a5
    xor     a6,a5,a1
    sltiu   a6,a6,1
    xori    a6,a6,1
    bnez    a6, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a7, 0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    sd      a0,64(sp)
    mv      a0, a0
    call    putch
    add     a0,a2,a4
    j       .while.head_26
.while.exit_26:
    ld      ra,96(sp)
    ld      s0,80(sp)
    mv      a0, a2
    addi    sp,sp,104
    ret
    .globl main
    .type main,@function
main:
    li      s1, -3557
    li      s1, -3557
    add     sp,s1,sp
    sd      ra,3549(sp)
    sd      s0,3533(sp)
    li      s2, 3557
    li      s2, 3557
    add     s0,s2,sp
.L0_0:
    la      s3, __HELLO
    lw      s4,0(s3)
    sw      a0,4(sp)
    mv      a0, a0
    call    putstr
    sw      a0,3121(sp)
    mv      s1, a1
    j       .while.head_36
.while.head_36:
    xor     s2,a4,a1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_36
    j       .while.exit_36
.while.body_36:
    li      s3, 6
    div     s4,s1,s3
    mv      s5, s4
    mv      s6, s6
    rem     s6,s1,s3
    mv      s7, s6
    j       .L1_0
.L1_0:
    xor     s8,s5,s7
    sltiu   s8,s8,1
    xori    s8,s8,1
    bnez    s8, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    la      s9, N4__mE___
    lw      s10,0(s9)
    li      s11, 0
    li      a1, 50
    mul     a4,a1,s5
    add     s11,s11,a4
    slli s11,s11,2
    add     s11,s11,sp
    add     s11,s11,s11
    sw      s1,3113(sp)
    sb      s2,3112(sp)
    sw      s4,3105(sp)
    sw      s5,3101(sp)
    sw      s6,3093(sp)
    sw      s7,3085(sp)
    sb      s8,3084(sp)
    sd      s11,1869(sp)
    sw      a0,3121(sp)
    mv      a0, a0
    call    putstr
    sw      a0,1661(sp)
    la      s1, saY_HeI10_To
    lw      s2,0(s1)
    sw      a0,1661(sp)
    mv      a0, a0
    call    putstr
    sw      a0,1489(sp)
    la      s1, N4__mE___
    lw      s2,0(s1)
    li      s3, 0
    mv      s4, s4
    mul     s5,a1,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      s3,269(sp)
    sw      s4,3085(sp)
    sw      s5,1481(sp)
    sw      a0,1489(sp)
    mv      a0, a0
    call    putstr
    sw      a0,57(sp)
    la      s1, RET
    lw      s2,0(s1)
    sw      a0,57(sp)
    mv      a0, a0
    call    putstr
    sw      a0,25(sp)
    j       .branch_false_41
.branch_false_41:
.L2_0:
    mv      s1, s1
    li      s2, 17
    mul     s3,s1,s2
    li      s4, 23
    add     s5,s3,s4
    li      s6, 32
    mv      s7, s7
    rem     s7,s5,s6
    j       .L3_0
.L3_0:
    li      s8, 0
    xor     s9,s1,s8
    sltiu   s9,s9,1
    bnez    s9, .branch_true_49
    j       .branch_false_49
.branch_true_49:
    j       .while.exit_36
.while.exit_36:
    li      s10, 3549
    add     s10,sp,s10
    ld      ra,0(s10)
    li      s11, 3533
    add     s11,sp,s11
    ld      s0,0(s11)
    li      a0, 0
    li      a1, 3557
    li      a1, 3557
    add     sp,a1,sp
    ret
.branch_false_49:
    j       .while.head_36
.section        .data
    .align 4
    .globl RET
    .type RET,@object
RET:
    .word 10
    .zero 20
    .align 4
    .globl saY_HeI10_To
    .type saY_HeI10_To,@object
saY_HeI10_To:
    .word 32
    .word 115
    .word 97
    .word 121
    .word 115
    .word 32
    .word 104
    .word 101
    .word 108
    .word 108
    .word 111
    .word 32
    .word 116
    .word 111
    .word 32
    .word 115
    .word 32
    .word 108
    .word 32
    .word 111
    .word 32
    .zero 140
    .align 4
    .globl N4__mE___
    .type N4__mE___,@object
N4__mE___:
    .word 83
    .word 97
    .word 97
    .word 98
    .word 97
    .word 114
    .word 117
    .word 97
    .word 97
    .word 75
    .word 97
    .word 98
    .word 97
    .word 110
    .word 97
    .word 98
    .word 97
    .word 72
    .word 97
    .word 115
    .word 104
    .word 105
    .word 98
    .word 105
    .word 114
    .word 111
    .word 107
    .word 111
    .word 117
    .word 97
    .word 98
    .word 105
    .word 114
    .word 111
    .word 117
    .word 65
    .word 114
    .word 97
    .word 105
    .word 103
    .word 117
    .word 109
    .word 97
    .word 114
    .word 97
    .word 105
    .word 117
    .word 97
    .word 72
    .word 117
    .word 110
    .word 98
    .word 111
    .word 114
    .word 117
    .word 116
    .word 111
    .word 32
    .word 80
    .word 101
    .word 110
    .word 103
    .word 105
    .word 110
    .word 72
    .word 117
    .word 110
    .word 98
    .word 111
    .word 114
    .word 117
    .word 111
    .word 110
    .word 103
    .word 105
    .word 110
    .word 84
    .word 97
    .word 105
    .word 114
    .word 105
    .word 107
    .word 117
    .word 32
    .word 79
    .word 111
    .word 107
    .word 97
    .word 109
    .word 105
    .word 97
    .word 105
    .word 114
    .word 105
    .word 107
    .word 117
    .word 32
    .word 111
    .word 107
    .word 97
    .word 109
    .word 105
    .zero 1099
    .align 4
    .globl __HELLO
    .type __HELLO,@object
__HELLO:
    .word 87
    .word 101
    .word 108
    .word 99
    .word 111
    .word 109
    .word 101
    .word 32
    .word 116
    .word 111
    .word 32
    .word 116
    .word 104
    .word 101
    .word 32
    .word 74
    .word 97
    .word 112
    .word 97
    .word 114
    .word 105
    .word 32
    .word 80
    .word 97
    .word 114
    .word 107
    .word 33
    .word 10
    .word 101
    .word 111
    .word 32
    .word 116
    .word 101
    .word 32
    .word 97
    .word 32
    .word 97
    .word 114
    .zero 363
