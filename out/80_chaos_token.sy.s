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
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
.L4_0:
    li      a1, 0
    j       .while.head_26
.while.head_26:
    li      a2, 0
    li      a3, 1
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    li      a5, 0
    xor     a6,a4,a5
    snez    a6, a6
    bnez    a6, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a7, 0
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    sd      a0,40(sp)
    call    putch
    add     a0,a1,a3
    j       .while.head_26
.while.exit_26:
    ld      ra,56(sp)
    ld      s0,48(sp)
    mv      a0, a1
    addi    sp,sp,64
    ret
    .globl main
    .type main,@function
main:
    li      a0, -3480
    li      a0, -3480
    add     sp,a0,sp
    sd      ra,3472(sp)
    sd      s0,3464(sp)
    li      a1, 3480
    li      a1, 3480
    add     s0,a1,sp
.L0_0:
    la      a2, __HELLO
    lw      a3,0(a2)
    call    putstr
    sw      a0,3060(sp)
    li      a4, 0
    j       .while.head_36
.while.head_36:
    li      a5, 1
    li      a6, 0
    xor     a7,a5,a6
    snez    a7, a7
    bnez    a7, .while.body_36
    j       .while.exit_36
.while.body_36:
    li      s1, 6
    div     s2,a4,s1
    mv      s3, s2
    rem     s4,a4,s1
    mv      s5, s4
    j       .L1_0
.L1_0:
    xor     s6,s3,s5
    snez    s6, s6
    bnez    s6, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    la      s7, N4__mE___
    lw      s8,0(s7)
    li      s9, 0
    li      s10, 50
    mul     s11,s10,s3
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sw      s2,3048(sp)
    sw      s3,3044(sp)
    sw      s4,3040(sp)
    sw      s5,3036(sp)
    sb      s6,3035(sp)
    sd      s9,1824(sp)
    sw      s11,3028(sp)
    sw      a0,3060(sp)
    call    putstr
    sw      a0,1620(sp)
    la      s1, saY_HeI10_To
    lw      s2,0(s1)
    sw      a0,1620(sp)
    call    putstr
    sw      a0,1456(sp)
    la      s1, N4__mE___
    lw      s2,0(s1)
    li      s3, 0
    li      s4, 50
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sd      s3,248(sp)
    sw      s5,3036(sp)
    sw      s6,1452(sp)
    sw      a0,1456(sp)
    call    putstr
    sw      a0,44(sp)
    la      s1, RET
    lw      s2,0(s1)
    sw      a0,44(sp)
    call    putstr
    sw      a0,20(sp)
    j       .branch_false_41
.branch_false_41:
.L2_0:
    li      s1, 17
    mul     s2,a4,s1
    li      s3, 23
    add     s4,s2,s3
    li      s5, 32
    rem     s6,s4,s5
    j       .L3_0
.L3_0:
    xor     s7,a4,a6
    seqz    s7, s7
    bnez    s7, .branch_true_49
    j       .branch_false_49
.branch_true_49:
    j       .while.exit_36
.while.exit_36:
    li      s8, 3472
    add     s8,sp,s8
    ld      ra,0(s8)
    li      s9, 3464
    add     s9,sp,s9
    ld      s0,0(s9)
    li      a0, 0
    li      a1, 3480
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
