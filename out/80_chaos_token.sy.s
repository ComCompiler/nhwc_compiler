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
    mul     a4,a3,a1
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,a0
    lw      a5,0(a2)
    li      a6, 0
    xor     a7,a5,a6
    snez    a7, a7
    bnez    a7, .while.body_26
    j       .while.exit_26
.while.body_26:
    li      a3, 0
    li      a4, 1
    mul     a6,a4,a1
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,a0
    lw      s1,0(a3)
    sw      s1,4(sp)
    sd      a0,40(sp)
    sw      a1,36(sp)
    sd      a2,24(sp)
    sd      a3,8(sp)
    sw      a5,20(sp)
    sb      a7,19(sp)
    lw      a0,4(sp)
    call    putch
    lw      a0,36(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,36(sp)
    sw      a2,0(sp)
    ld      a0,40(sp)
    lw      a1,36(sp)
    j       .while.head_26
.while.exit_26:
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      a1,36(sp)
    sd      a0,40(sp)
    lw      a0,36(sp)
    addi    sp,sp,64
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.L0_0:
    la      a0, __HELLO
    call    putstr
    sw      a0,76(sp)
    li      a1, 0
    j       .while.head_36
.while.head_36:
    li      a2, 1
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
    bnez    a4, .while.body_36
    j       .while.exit_36
.while.body_36:
    li      a2, 6
    div     a3,a1,a2
    mv      a5, a3
    rem     a6,a1,a2
    mv      a7, a6
    j       .L1_0
.L1_0:
    xor     a2,a5,a7
    snez    a2, a2
    bnez    a2, .branch_true_41
    j       .branch_false_41
.branch_true_41:
    li      s1, 0
    li      s2, 1
    mul     s3,s2,a5
    add     s1,s1,s3
    slli s1,s1,2
    la      s4, N4__mE___
    add     s1,s1,s4
    sd      s1,40(sp)
    sw      a0,76(sp)
    sw      a1,72(sp)
    sb      a2,51(sp)
    sw      a3,64(sp)
    sb      a4,71(sp)
    sw      a5,60(sp)
    sw      a6,56(sp)
    sw      a7,52(sp)
    ld      a0,40(sp)
    call    putstr
    sw      a0,36(sp)
    sw      a0,36(sp)
    la      a0, saY_HeI10_To
    call    putstr
    sw      a0,32(sp)
    li      a1, 0
    li      a2, 1
    lw      a3,52(sp)
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    la      a5, N4__mE___
    add     a1,a1,a5
    sw      a0,32(sp)
    sd      a1,24(sp)
    sw      a3,52(sp)
    ld      a0,24(sp)
    call    putstr
    sw      a0,20(sp)
    sw      a0,20(sp)
    la      a0, RET
    call    putstr
    sw      a0,16(sp)
    sw      a0,16(sp)
    lw      a7,52(sp)
    lb      a4,71(sp)
    lw      a3,64(sp)
    lw      a1,72(sp)
    lw      a5,60(sp)
    lb      a2,51(sp)
    lw      a0,76(sp)
    lw      a6,56(sp)
    j       .branch_false_41
.branch_false_41:
.L2_0:
    li      s1, 17
    mul     s2,a1,s1
    li      s3, 23
    add     s4,s2,s3
    li      s5, 32
    rem     s6,s4,s5
    mv      a1, s6
    j       .L3_0
.L3_0:
    li      s1, 0
    xor     s3,a1,s1
    seqz    s3, s3
    bnez    s3, .branch_true_49
    j       .branch_false_49
.branch_true_49:
    sw      s4,8(sp)
    sw      s6,4(sp)
    sw      a7,52(sp)
    sw      s2,12(sp)
    sw      a3,64(sp)
    sw      a5,60(sp)
    sb      s3,3(sp)
    sb      a2,51(sp)
    sw      a6,56(sp)
    j       .while.exit_36
.while.exit_36:
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a0,76(sp)
    li      a0, 0
    addi    sp,sp,96
    ret
.branch_false_49:
    sw      s4,8(sp)
    sw      s6,4(sp)
    sw      a7,52(sp)
    sw      s2,12(sp)
    sb      a4,71(sp)
    sw      a3,64(sp)
    sw      a5,60(sp)
    sb      s3,3(sp)
    sb      a2,51(sp)
    sw      a6,56(sp)
    j       .while.head_36
.section ___var
    .data
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
    .word 115
    .word 32
    .word 32
    .word 104
    .word 101
    .word 108
    .word 108
    .word 108
    .word 111
    .word 32
    .word 32
    .word 116
    .word 111
    .word 111
    .word 32
    .word 32
    .zero 80
    .align 4
    .globl N4__mE___
    .type N4__mE___,@object
N4__mE___:
    .word 83
    .word 97
    .word 97
    .word 97
    .word 98
    .word 97
    .word 97
    .word 114
    .word 117
    .word 75
    .word 97
    .word 97
    .word 98
    .word 98
    .word 97
    .word 97
    .word 110
    .word 72
    .word 97
    .word 97
    .word 115
    .word 104
    .word 105
    .word 98
    .word 98
    .word 105
    .word 105
    .word 114
    .word 114
    .word 111
    .word 107
    .word 111
    .word 111
    .word 117
    .word 117
    .word 65
    .word 114
    .word 114
    .word 97
    .word 97
    .word 105
    .word 105
    .word 103
    .word 117
    .word 117
    .word 109
    .word 97
    .word 97
    .word 72
    .word 72
    .word 117
    .word 117
    .word 110
    .word 110
    .word 98
    .word 98
    .word 111
    .word 111
    .word 114
    .word 114
    .word 117
    .word 117
    .word 116
    .word 111
    .word 111
    .word 32
    .word 80
    .word 101
    .word 110
    .word 110
    .word 103
    .word 103
    .word 105
    .word 105
    .word 110
    .word 110
    .word 84
    .word 97
    .word 97
    .word 105
    .word 105
    .word 114
    .word 114
    .word 105
    .word 105
    .word 107
    .word 107
    .word 117
    .word 117
    .word 32
    .word 32
    .word 79
    .word 111
    .word 111
    .word 107
    .word 107
    .word 97
    .word 97
    .word 109
    .word 109
    .word 105
    .word 105
    .zero 796
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
    .word 101
    .word 32
    .word 116
    .word 111
    .word 111
    .word 32
    .word 32
    .word 116
    .word 116
    .word 104
    .word 101
    .word 101
    .word 32
    .word 32
    .word 74
    .word 97
    .word 112
    .word 97
    .word 97
    .word 114
    .word 105
    .word 32
    .word 32
    .word 80
    .word 97
    .word 97
    .word 114
    .word 114
    .word 107
    .word 33
    .word 10
    .zero 252
