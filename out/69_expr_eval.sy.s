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
    .globl next_char
    .type next_char,@function
next_char:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L28_0:
    call    getch
    sw      a0,4(sp)
    la      a1, last_char
    sd      a0,0(a1)
    la      a2, last_char
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl is_space
    .type is_space,@function
is_space:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L26_0:
    li      a1, 10
    xor     a2,a1,a0
    seqz    a2, a2
    li      a3, 32
    xor     a4,a0,a3
    seqz    a4, a4
    bnez    a5, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_27:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
.L27_0:
    .globl is_num
    .type is_num,@function
is_num:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L24_0:
    li      a1, 57
    slt     a2,a0,a1
    xori    a2,a2,1
    li      a3, 48
    slt     a4,a0,a3
    xori    a4,a4,1
    and     a5,a4,a2
    bnez    a5, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_36:
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
.L25_0:
    .globl next_token
    .type next_token,@function
next_token:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
.while.head_44:
    la      a0, last_char
    lw      a1,0(a0)
    call    is_space
    sw      a0,72(sp)
    li      a2, 0
    xor     a3,a0,a2
    snez    a3, a3
    bnez    a3, .while.body_44
    j       .while.exit_44
.while.body_44:
    call    next_char
    sw      a0,72(sp)
    sw      a0,64(sp)
    j       .while.head_44
.while.exit_44:
    la      a4, last_char
    lw      a5,0(a4)
    sw      a0,64(sp)
    call    is_num
    sw      a0,56(sp)
    xor     a6,a0,a2
    snez    a6, a6
    bnez    a6, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    la      a7, last_char
    lw      s1,0(a7)
    li      s3, 48
    sub     s4,s2,s3
    la      s5, num
    sd      s4,0(s5)
    j       .while.head_51
.while.head_51:
    sw      s2,48(sp)
    sw      s4,44(sp)
    call    next_char
    sw      a0,56(sp)
    sw      a0,40(sp)
    sw      a0,40(sp)
    call    is_num
    sw      a0,36(sp)
    xor     s1,a0,a2
    snez    s1, s1
    bnez    s1, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s2, last_char
    lw      s3,0(s2)
    li      s5, 48
    sub     s6,s4,s5
    la      s7, num
    lw      s8,0(s7)
    li      s10, 10
    mul     s11,s9,s10
    add     a1,s11,s6
    la      a2, num
    sd      a1,0(a2)
    j       .while.head_51
.while.exit_51:
    la      a2, cur_token
    li      a4, 0
    sd      a4,0(a2)
    j       .L22_0
.branch_false_47:
    la      a2, last_char
    lw      a4,0(a2)
    la      a2, other
    sd      a4,0(a2)
    sb      s1,35(sp)
    sw      s4,28(sp)
    sw      s6,24(sp)
    sw      s9,20(sp)
    sw      s11,16(sp)
    call    next_char
    sw      a0,36(sp)
    sw      a0,0(sp)
    la      s1, cur_token
    li      s2, 1
    sd      s2,0(s1)
    j       .L22_0
.L22_0:
.L23_0:
    la      s3, cur_token
    lw      s4,0(s3)
    ld      ra,88(sp)
    ld      s0,80(sp)
    lw      a0,8(sp)
    addi    sp,sp,96
    ret
    .globl panic
    .type panic,@function
panic:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L21_0:
    li      a0, 112
    call    putch
    li      a0, 97
    call    putch
    li      a0, 110
    call    putch
    li      a0, 105
    call    putch
    li      a0, 99
    call    putch
    li      a0, 33
    call    putch
    li      a0, 10
    call    putch
    li      a0, 0
    li      a1, 1
    sub     a2,a0,a1
    ld      ra,16(sp)
    ld      s0,8(sp)
    mv      a0, a2
    addi    sp,sp,24
    ret
    .globl get_op_prec
    .type get_op_prec,@function
get_op_prec:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L18_0:
    li      a1, 45
    xor     a2,a1,a0
    seqz    a2, a2
    li      a3, 43
    xor     a4,a0,a3
    seqz    a4, a4
    bnez    a5, .branch_true_74
    j       .branch_false_74
.branch_true_74:
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 10
    addi    sp,sp,32
    ret
.branch_false_74:
.L19_0:
    li      a6, 37
    xor     a7,a6,a0
    seqz    a7, a7
    li      s1, 47
    xor     s2,s1,a0
    seqz    s2, s2
    li      s3, 42
    xor     s4,a0,s3
    seqz    s4, s4
    bnez    s6, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 20
    addi    sp,sp,32
    ret
.branch_false_77:
.L20_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
    .globl stack_push
    .type stack_push,@function
stack_push:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L17_0:
    li      a2, 0
    li      a3, 1
    li      a4, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    li      a5, 0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
    add     a7,a6,a3
    sd      a7,0(a2)
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    sd      a1,0(s2)
    .globl stack_pop
    .type stack_pop,@function
stack_pop:
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
.L16_0:
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    li      a4, 0
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
    mv      a7, a6
    li      s1, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    li      s2, 0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
    sub     s4,s3,a2
    sd      s4,0(s1)
    ld      ra,72(sp)
    ld      s0,64(sp)
    mv      a0, a7
    addi    sp,sp,80
    ret
    .globl stack_peek
    .type stack_peek,@function
stack_peek:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
.L15_0:
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    li      a4, 0
    add     a4,a4,a0
    slli a4,a4,3
    add     a4,a4,sp
    add     a4,a4,a4
    ld      ra,48(sp)
    ld      s0,40(sp)
    lw      a0,4(sp)
    addi    sp,sp,56
    ret
    .globl stack_size
    .type stack_size,@function
stack_size:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L14_0:
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    ld      ra,32(sp)
    ld      s0,24(sp)
    lw      a0,4(sp)
    addi    sp,sp,40
    ret
    .globl eval_op
    .type eval_op,@function
eval_op:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
.L8_0:
    li      a3, 43
    xor     a4,a0,a3
    seqz    a4, a4
    bnez    a4, .branch_true_103
    j       .branch_false_103
.branch_true_103:
    add     a5,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, a5
    addi    sp,sp,72
    ret
.branch_false_103:
.L9_0:
    li      a6, 45
    xor     a7,a0,a6
    seqz    a7, a7
    bnez    a7, .branch_true_106
    j       .branch_false_106
.branch_true_106:
    sub     s1,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, s1
    addi    sp,sp,72
    ret
.branch_false_106:
.L10_0:
    li      s2, 42
    xor     s3,a0,s2
    seqz    s3, s3
    bnez    s3, .branch_true_109
    j       .branch_false_109
.branch_true_109:
    mul     s4,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, s4
    addi    sp,sp,72
    ret
.branch_false_109:
.L11_0:
    li      s5, 47
    xor     s6,a0,s5
    seqz    s6, s6
    bnez    s6, .branch_true_112
    j       .branch_false_112
.branch_true_112:
    div     s7,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, s7
    addi    sp,sp,72
    ret
.branch_false_112:
.L12_0:
    li      s8, 37
    xor     s9,a0,s8
    seqz    s9, s9
    bnez    s9, .branch_true_115
    j       .branch_false_115
.branch_true_115:
    rem     s10,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    mv      a0, s10
    addi    sp,sp,72
    ret
.branch_false_115:
.L13_0:
    ld      ra,64(sp)
    ld      s0,56(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
    .globl eval
    .type eval,@function
eval:
    li      a0, -2232
    li      a0, -2232
    add     sp,a0,sp
    sd      ra,2224(sp)
    sd      s0,2216(sp)
    li      a1, 2232
    li      a1, 2232
    add     s0,a1,sp
.L1_0:
    j       .L2_0
.L2_0:
    la      a2, cur_token
    lw      a3,0(a2)
    li      a5, 0
    xor     a6,a4,a5
    snez    a6, a6
    bnez    a6, .branch_true_122
    j       .branch_false_122
.branch_true_122:
    call    panic
    sw      a0,156(sp)
    li      a7, 2224
    add     a7,sp,a7
    ld      ra,0(a7)
    li      s1, 2216
    add     s1,sp,s1
    ld      s0,0(s1)
    li      a1, 2232
    add     sp,a1,sp
    ret
.branch_false_122:
.L3_0:
    la      s2, num
    lw      s3,0(s2)
    sd      s1,2216(sp)
    sw      a0,156(sp)
    call    stack_push
    call    next_token
    sw      a0,148(sp)
    j       .while.head_127
.while.head_127:
    la      a1, cur_token
    lw      s1,0(a1)
    li      s3, 1
    xor     s4,s2,s3
    seqz    s4, s4
    bnez    s4, .while.body_127
    j       .while.exit_127
.while.body_127:
    la      s5, other
    lw      s6,0(s5)
    mv      s8, s7
    j       .L4_0
.L4_0:
    sw      s2,144(sp)
    sb      s4,143(sp)
    sw      s7,136(sp)
    sw      s8,132(sp)
    sw      a0,148(sp)
    call    get_op_prec
    sw      a0,128(sp)
    xor     s1,a0,a5
    snez    s1, s1
    xori    s2,s1,-1
    bnez    s2, .branch_true_131
    j       .branch_false_131
.branch_true_131:
    j       .while.exit_127
.while.exit_127:
    sb      s1,127(sp)
    sb      s2,126(sp)
    call    next_token
    sw      a0,128(sp)
    sw      a0,44(sp)
    j       .while.head_148
.while.head_148:
    sw      a0,44(sp)
    call    stack_size
    sw      a0,40(sp)
    xor     s1,a0,a5
    snez    s1, s1
    bnez    s1, .while.body_148
    j       .while.exit_148
.while.body_148:
    sb      s1,39(sp)
    sw      a0,40(sp)
    call    stack_pop
    sw      a0,32(sp)
    mv      s1, a0
    sw      s1,28(sp)
    sw      a0,32(sp)
    call    stack_pop
    sw      a0,24(sp)
    mv      s1, a0
    sw      s1,20(sp)
    sw      a0,24(sp)
    call    stack_pop
    sw      a0,16(sp)
    mv      s1, a0
    sw      s1,12(sp)
    sw      a0,16(sp)
    call    eval_op
    sw      a0,8(sp)
    sw      a0,8(sp)
    call    stack_push
    j       .while.head_148
.while.exit_148:
    call    stack_peek
    sw      a0,4(sp)
    mv      ra, a7
    li      a1, 2216
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a2, 2232
    li      a2, 2232
    add     sp,a2,sp
    ret
.branch_false_131:
.L5_0:
    call    next_token
    sw      a0,4(sp)
    sw      a0,120(sp)
    j       .while.head_135
.while.head_135:
    sw      a0,120(sp)
    call    get_op_prec
    sw      a0,116(sp)
    sw      a0,116(sp)
    call    stack_peek
    sw      a0,112(sp)
    sw      a0,112(sp)
    call    get_op_prec
    sw      a0,108(sp)
    slt     s2,a0,s1
    xori    s2,s2,1
    sw      s1,116(sp)
    sb      s2,107(sp)
    sw      a0,108(sp)
    call    stack_size
    sw      a0,100(sp)
    xor     s1,a0,a5
    snez    s1, s1
    and     s3,s1,s2
    bnez    s3, .while.body_135
    j       .while.exit_135
.while.body_135:
    sb      s1,99(sp)
    sb      s2,107(sp)
    sb      s3,98(sp)
    sw      a0,100(sp)
    call    stack_pop
    sw      a0,92(sp)
    mv      s1, a0
    sw      s1,88(sp)
    sw      a0,92(sp)
    call    stack_pop
    sw      a0,84(sp)
    mv      s1, a0
    sw      s1,80(sp)
    sw      a0,84(sp)
    call    stack_pop
    sw      a0,76(sp)
    mv      s1, a0
    sw      s1,72(sp)
    sw      a0,76(sp)
    sd      a1,2216(sp)
    call    eval_op
    sw      a0,68(sp)
    sw      a0,68(sp)
    call    stack_push
    j       .while.head_135
.while.exit_135:
    call    stack_push
    j       .L6_0
.L6_0:
    la      a0, cur_token
    lw      a1,0(a0)
    xor     s1,a2,a5
    snez    s1, s1
    bnez    s1, .branch_true_142
    j       .branch_false_142
.branch_true_142:
    sb      s1,63(sp)
    call    panic
    sw      a0,56(sp)
    mv      ra, a7
    li      s1, 2216
    add     s1,sp,s1
    ld      s0,0(s1)
    li      s2, 2232
    li      s2, 2232
    add     sp,s2,sp
    ret
.branch_false_142:
.L7_0:
    la      s3, num
    lw      s4,0(s3)
    sd      s1,2216(sp)
    sw      a0,56(sp)
    call    stack_push
    call    next_token
    sw      a0,48(sp)
    j       .while.head_127
    .globl main
    .type main,@function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L0_0:
    call    getint
    sw      a0,28(sp)
    mv      a1, a0
    call    getch
    sw      a0,28(sp)
    sw      a0,20(sp)
    call    next_token
    sw      a0,20(sp)
    sw      a0,16(sp)
    j       .while.head_160
.while.head_160:
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_160
    j       .while.exit_160
.while.body_160:
    call    eval
    sw      a0,16(sp)
    sw      a0,8(sp)
    sw      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    li      a0, 1
    sub     a4,a1,a0
    j       .while.head_160
.while.exit_160:
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.section        .data
    .align 4
    .globl cur_token
    .type cur_token,@object
cur_token:
    .word 0
    .align 4
    .globl other
    .type other,@object
other:
    .word 0
    .align 4
    .globl num
    .type num,@object
num:
    .word 0
    .align 4
    .globl last_char
    .type last_char,@object
last_char:
    .word 32
    .align 4
    .globl TOKEN_OTHER
    .type TOKEN_OTHER,@object
TOKEN_OTHER:
    .word 1
    .align 4
    .globl TOKEN_NUM
    .type TOKEN_NUM,@object
TOKEN_NUM:
    .word 0
