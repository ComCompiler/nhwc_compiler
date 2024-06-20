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
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L28_0:
    call    getch
    sw      a0,16(sp)
    la      a1, last_char
    sd      a0,0(a1)
    la      a2, last_char
    lw      a3,0(a2)
    ld      ra,40(sp)
    ld      s0,24(sp)
    lw      a0,8(sp)
    addi    sp,sp,48
    ret
    .globl is_space
    .type is_space,@function
is_space:
    addi    sp,sp,-35
    sd      ra,27(sp)
    sd      s0,11(sp)
    addi    s0,sp,35
.L26_0:
    li      a4, 10
    xor     a5,a4,a0
    sltiu   a5,a5,1
    li      a6, 32
    xor     a7,a0,a6
    sltiu   a7,a7,1
    mv      s1, s1
    bnez    s1, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 1
    addi    sp,sp,35
    ret
.branch_false_27:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 0
    addi    sp,sp,35
    ret
.L27_0:
    .globl is_num
    .type is_num,@function
is_num:
    addi    sp,sp,-35
    sd      ra,27(sp)
    sd      s0,11(sp)
    addi    s0,sp,35
.L24_0:
    li      s2, 57
    slt     s3,s2,a0
    xori    s3,s3,1
    li      s4, 48
    slt     s5,s4,a0
    xori    s5,s5,1
    and     s6,s5,s3
    bnez    s6, .branch_true_36
    j       .branch_false_36
.branch_true_36:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 1
    addi    sp,sp,35
    ret
.branch_false_36:
    ld      ra,27(sp)
    ld      s0,11(sp)
    li      a0, 0
    addi    sp,sp,35
    ret
.L25_0:
    .globl next_token
    .type next_token,@function
next_token:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.while.head_44:
    la      s7, last_char
    lw      s8,0(s7)
    sb      s1,0(sp)
    sb      s3,2(sp)
    sb      s5,1(sp)
    sb      s6,0(sp)
    sw      a0,3(sp)
    mv      a0, a0
    call    is_space
    sw      a0,112(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_44
    j       .while.exit_44
.while.body_44:
    sb      s2,111(sp)
    call    next_char
    sw      a0,112(sp)
    sw      a0,107(sp)
    j       .while.head_44
.while.exit_44:
    la      s1, last_char
    lw      s2,0(s1)
    sw      a0,107(sp)
    mv      a0, a0
    call    is_num
    sw      a0,92(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    la      s3, last_char
    lw      s4,0(s3)
    mv      s5, s5
    li      s6, 48
    sub     s7,s5,s6
    la      s8, num
    sd      s7,0(s8)
    j       .while.head_51
.while.head_51:
    sb      s2,91(sp)
    sw      s5,84(sp)
    sw      s7,80(sp)
    call    next_char
    sw      a0,92(sp)
    sw      a0,72(sp)
    sw      a0,72(sp)
    mv      a0, a0
    call    is_num
    sw      a0,64(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      s3, last_char
    lw      s4,0(s3)
    mv      s5, s5
    li      s6, 48
    sub     s7,s5,s6
    la      s8, num
    lw      s9,0(s8)
    mv      s10, s10
    mul     s11,s10,a4
    add     a1,s11,s7
    la      a2, num
    sd      a1,0(a2)
    j       .while.head_51
.while.exit_51:
    la      a2, cur_token
    sd      s1,0(a2)
    j       .L22_0
.branch_false_47:
    la      a2, last_char
    lw      a3,0(a2)
    la      a2, other
    mv      a3, a3
    sd      a3,0(a2)
    sb      s2,63(sp)
    sw      s5,56(sp)
    sw      s7,52(sp)
    sw      s10,44(sp)
    sw      s11,36(sp)
    call    next_char
    sw      a0,64(sp)
    sw      a0,4(sp)
    la      s1, cur_token
    li      s2, 1
    sd      s2,0(s1)
    j       .L22_0
.L22_0:
.L23_0:
    la      s3, cur_token
    lw      s4,0(s3)
    ld      ra,144(sp)
    ld      s0,128(sp)
    lw      a0,20(sp)
    addi    sp,sp,152
    ret
    .globl panic
    .type panic,@function
panic:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L21_0:
    sw      a0,4(sp)
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
    li      s1, 1
    sub     s2,a0,s1
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, s2
    addi    sp,sp,40
    ret
    .globl get_op_prec
    .type get_op_prec,@function
get_op_prec:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L18_0:
    li      s3, 45
    xor     s4,s3,a0
    sltiu   s4,s4,1
    li      s5, 43
    xor     s6,a0,s5
    sltiu   s6,s6,1
    mv      s7, s7
    bnez    s7, .branch_true_74
    j       .branch_false_74
.branch_true_74:
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 10
    addi    sp,sp,48
    ret
.branch_false_74:
.L19_0:
    li      s8, 37
    xor     s9,s8,a0
    sltiu   s9,s9,1
    li      s10, 47
    xor     s11,s10,a0
    sltiu   s11,s11,1
    li      a2, 42
    xor     a4,a0,a2
    sltiu   a4,a4,1
    mv      a2, a2
    mv      a6, a6
    bnez    a6, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 20
    addi    sp,sp,48
    ret
.branch_false_77:
.L20_0:
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
    .globl stack_push
    .type stack_push,@function
stack_push:
    addi    sp,sp,-144
    sd      ra,136(sp)
    sd      s0,120(sp)
    addi    s0,sp,144
.L17_0:
    li      s1, 0
    li      s3, 1
    li      s5, 0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
    li      s3, 0
    li      s5, 1
    li      s8, 0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
    mv      s5, s5
    li      s8, 1
    add     s10,s5,s8
    sd      s10,0(s1)
    li      s8, 0
    sd      a0,104(sp)
    li      a0, 1
    sw      a1,96(sp)
    li      a1, 0
    sb      a2,10(sp)
    mul     a2,a0,a1
    add     s8,s8,a2
    slli s8,s8,3
    add     s8,s8,sp
    add     s8,s8,s8
    li      a0, 0
    li      a1, 1
    sd      a2,104(sp)
    mv      a2, a2
    sw      a3,12(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    sd      a1,0(a0)
    .globl stack_pop
    .type stack_pop,@function
stack_pop:
    addi    sp,sp,-152
    sd      ra,144(sp)
    sd      s0,128(sp)
    addi    s0,sp,152
.L16_0:
    sd      a0,112(sp)
    li      a0, 0
    sw      a1,96(sp)
    li      a1, 1
    sw      a2,24(sp)
    li      a2, 0
    sd      a3,104(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 1
    sd      a0,96(sp)
    mv      a0, a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a2, a2
    sw      a0,88(sp)
    mv      a0, a2
    sw      a0,56(sp)
    li      a0, 0
    sd      a1,72(sp)
    li      a1, 1
    sw      a2,64(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 1
    sd      a0,40(sp)
    li      a0, 0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    mv      a0, a0
    sd      a1,24(sp)
    sub     a1,a0,a2
    mv      a2, a2
    sd      a1,0(a2)
    ld      ra,144(sp)
    ld      s0,128(sp)
    lw      a0,56(sp)
    addi    sp,sp,152
    ret
    .globl stack_peek
    .type stack_peek,@function
stack_peek:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,72(sp)
    addi    s0,sp,96
.L15_0:
    sd      a0,56(sp)
    li      a0, 0
    sw      a1,8(sp)
    li      a1, 1
    sd      a2,40(sp)
    li      a2, 0
    sd      a3,112(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 0
    li      a2, 1
    sd      a0,40(sp)
    mv      a0, a0
    add     a1,a1,a3
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    ld      ra,88(sp)
    ld      s0,72(sp)
    lw      a0,8(sp)
    addi    sp,sp,96
    ret
    .globl stack_size
    .type stack_size,@function
stack_size:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L14_0:
    li      a2, 0
    sd      a0,32(sp)
    li      a0, 1
    sd      a1,16(sp)
    li      a1, 0
    sd      a3,56(sp)
    mul     a3,a0,a1
    add     a2,a2,a3
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
    ld      ra,64(sp)
    ld      s0,48(sp)
    lw      a0,8(sp)
    addi    sp,sp,72
    ret
    .globl eval_op
    .type eval_op,@function
eval_op:
    addi    sp,sp,-88
    sd      ra,80(sp)
    sd      s0,64(sp)
    addi    s0,sp,88
.L8_0:
    sw      a1,48(sp)
    li      a1, 43
    sw      a2,40(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_103
    j       .branch_false_103
.branch_true_103:
    mv      a1, a1
    sw      a0,56(sp)
    mv      a0, a0
    sb      a2,39(sp)
    add     a2,a1,a0
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a2
    addi    sp,sp,88
    ret
.branch_false_103:
.L9_0:
    sw      a0,40(sp)
    mv      a0, a0
    sw      a1,48(sp)
    li      a1, 45
    sw      a2,32(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_106
    j       .branch_false_106
.branch_true_106:
    mv      a1, a1
    sw      a0,56(sp)
    mv      a0, a0
    sb      a2,31(sp)
    sub     a2,a1,a0
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a2
    addi    sp,sp,88
    ret
.branch_false_106:
.L10_0:
    sw      a0,40(sp)
    mv      a0, a0
    sw      a1,48(sp)
    li      a1, 42
    sw      a2,24(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_109
    j       .branch_false_109
.branch_true_109:
    mv      a1, a1
    sw      a0,56(sp)
    mv      a0, a0
    sb      a2,23(sp)
    mul     a2,a1,a0
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a2
    addi    sp,sp,88
    ret
.branch_false_109:
.L11_0:
    sw      a0,40(sp)
    mv      a0, a0
    sw      a1,48(sp)
    li      a1, 47
    sw      a2,19(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_112
    j       .branch_false_112
.branch_true_112:
    mv      a1, a1
    sw      a0,56(sp)
    mv      a0, a0
    sb      a2,18(sp)
    div     a2,a1,a0
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a2
    addi    sp,sp,88
    ret
.branch_false_112:
.L12_0:
    sw      a0,40(sp)
    mv      a0, a0
    sw      a1,48(sp)
    li      a1, 37
    sw      a2,12(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    bnez    a2, .branch_true_115
    j       .branch_false_115
.branch_true_115:
    mv      a1, a1
    sw      a0,56(sp)
    mv      a0, a0
    sb      a2,11(sp)
    mv      a2, a2
    rem     a2,a1,a0
    ld      ra,80(sp)
    ld      s0,64(sp)
    mv      a0, a2
    addi    sp,sp,88
    ret
.branch_false_115:
.L13_0:
    ld      ra,80(sp)
    ld      s0,64(sp)
    li      a0, 0
    addi    sp,sp,88
    ret
    .globl eval
    .type eval,@function
eval:
    sw      a0,40(sp)
    li      a0, -2336
    li      a0, -2336
    add     sp,a0,sp
    sd      ra,2328(sp)
    sd      s0,2312(sp)
    li      a0, 2336
    li      a0, 2336
    add     s0,a0,sp
.L1_0:
    j       .L2_0
.L2_0:
    la      a0, cur_token
    sw      a1,48(sp)
    lw      a1,0(a0)
    mv      a0, a0
    li      a1, 0
    sw      a2,4(sp)
    xor     a2,a0,a1
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_122
    j       .branch_false_122
.branch_true_122:
    sd      s1,80(sp)
    sw      s2,8(sp)
    sd      s3,64(sp)
    sb      s4,15(sp)
    sw      s5,56(sp)
    sb      s6,14(sp)
    sb      s7,13(sp)
    sd      s8,32(sp)
    sb      s9,12(sp)
    sw      s10,48(sp)
    sb      s11,11(sp)
    call    panic
    sw      a0,248(sp)
    sw      a0,240(sp)
    li      s1, 2328
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2312
    add     s2,sp,s2
    ld      s0,0(s2)
    mv      a0, a0
    li      s3, 2336
    li      s3, 2336
    add     sp,s3,sp
    ret
.branch_false_122:
.L3_0:
    la      s4, num
    lw      s5,0(s4)
    sd      s1,2328(sp)
    sd      s2,2312(sp)
    sw      a0,240(sp)
    mv      a0, a0
    mv      a1, a1
    call    stack_push
    call    next_token
    sw      a0,228(sp)
    j       .while.head_127
.while.head_127:
    la      a1, cur_token
    lw      s1,0(a1)
    mv      s2, s2
    li      s3, 1
    xor     s4,s2,s3
    sltiu   s4,s4,1
    bnez    s4, .while.body_127
    j       .while.exit_127
.while.body_127:
    la      s5, other
    lw      s6,0(s5)
    mv      s7, s7
    mv      s8, s7
    j       .L4_0
.L4_0:
    sw      s2,220(sp)
    sb      s4,219(sp)
    sw      s7,212(sp)
    sw      s8,208(sp)
    sw      a0,228(sp)
    mv      a0, a0
    call    get_op_prec
    sw      a0,200(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    xori    s3,s2,-1
    bnez    s3, .branch_true_131
    j       .branch_false_131
.branch_true_131:
    j       .while.exit_127
.while.exit_127:
    sb      s2,199(sp)
    sb      s3,198(sp)
    call    next_token
    sw      a0,200(sp)
    sw      a0,72(sp)
    j       .while.head_148
.while.head_148:
    sw      a0,72(sp)
    mv      a0, a0
    call    stack_size
    sw      a0,64(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_148
    j       .while.exit_148
.while.body_148:
    sb      s2,63(sp)
    sw      a0,64(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,59(sp)
    mv      s1, a0
    sw      s1,52(sp)
    sw      a0,59(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,44(sp)
    mv      s1, a0
    sw      s1,36(sp)
    sw      a0,44(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,28(sp)
    mv      s1, a0
    sw      s1,20(sp)
    sw      a0,28(sp)
    mv      a0, a0
    mv      a1, a1
    sb      a2,247(sp)
    mv      a2, a2
    call    eval_op
    sw      a0,12(sp)
    sw      a0,12(sp)
    mv      a0, a0
    mv      a1, a1
    call    stack_push
    j       .while.head_148
.while.exit_148:
    mv      a0, a0
    call    stack_peek
    sw      a0,4(sp)
    li      a1, 2328
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 2312
    add     a2,sp,a2
    ld      s0,0(a2)
    mv      a0, a0
    li      s1, 2336
    li      s1, 2336
    add     sp,s1,sp
    ret
.branch_false_131:
.L5_0:
    call    next_token
    sw      a0,4(sp)
    sw      a0,192(sp)
    j       .while.head_135
.while.head_135:
    sw      a0,192(sp)
    mv      a0, a0
    call    get_op_prec
    sw      a0,184(sp)
    sw      a0,184(sp)
    mv      a0, a0
    call    stack_peek
    sw      a0,176(sp)
    sw      a0,176(sp)
    mv      a0, a0
    call    get_op_prec
    sw      a0,168(sp)
    mv      s1, s1
    slt     s2,s1,a0
    xori    s2,s2,1
    sw      s1,184(sp)
    sb      s2,167(sp)
    sw      a0,168(sp)
    mv      a0, a0
    call    stack_size
    sw      a0,160(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    mv      s3, s3
    and     s4,s2,s3
    bnez    s4, .while.body_135
    j       .while.exit_135
.while.body_135:
    sb      s2,159(sp)
    sb      s3,167(sp)
    sb      s4,158(sp)
    sw      a0,160(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,152(sp)
    mv      s1, a0
    sw      s1,148(sp)
    sw      a0,152(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,140(sp)
    mv      s1, a0
    sw      s1,132(sp)
    sw      a0,140(sp)
    mv      a0, a0
    call    stack_pop
    sw      a0,124(sp)
    mv      s1, a0
    sw      s1,116(sp)
    sw      a0,124(sp)
    mv      a0, a0
    sd      a1,2328(sp)
    mv      a1, a1
    sd      a2,2312(sp)
    mv      a2, a2
    call    eval_op
    sw      a0,108(sp)
    sw      a0,108(sp)
    mv      a0, a0
    mv      a1, a1
    call    stack_push
    j       .while.head_135
.while.exit_135:
    mv      a0, a0
    mv      a1, a1
    call    stack_push
    j       .L6_0
.L6_0:
    la      a0, cur_token
    lw      a1,0(a0)
    mv      a2, a2
    li      s1, 0
    xor     s2,a2,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_142
    j       .branch_false_142
.branch_true_142:
    sb      s2,99(sp)
    call    panic
    sw      a0,92(sp)
    li      s1, 2328
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2312
    add     s2,sp,s2
    ld      s0,0(s2)
    mv      a0, a0
    li      s3, 2336
    li      s3, 2336
    add     sp,s3,sp
    ret
.branch_false_142:
.L7_0:
    la      s4, num
    lw      s5,0(s4)
    sd      s1,2328(sp)
    sd      s2,2312(sp)
    sw      a0,92(sp)
    mv      a0, a0
    mv      a1, a1
    call    stack_push
    call    next_token
    sw      a0,80(sp)
    j       .while.head_127
    .globl main
    .type main,@function
main:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L0_0:
    call    getint
    sw      a0,80(sp)
    sw      a0,40(sp)
    mv      a1, a0
    call    getch
    sw      a0,40(sp)
    sw      a0,24(sp)
    call    next_token
    sw      a0,24(sp)
    sw      a0,16(sp)
    j       .while.head_160
.while.head_160:
    li      s1, 0
    xor     s2,a1,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .while.body_160
    j       .while.exit_160
.while.body_160:
    sb      s2,15(sp)
    call    eval
    sw      a0,16(sp)
    sw      a0,11(sp)
    sw      a0,11(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    li      a0, 1
    sub     s1,a1,a0
    j       .while.head_160
.while.exit_160:
    ld      ra,64(sp)
    ld      s0,48(sp)
    li      a0, 0
    addi    sp,sp,72
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
