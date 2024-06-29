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
    sw      a0,0(a1)
    la      a2, last_char
    lw      a3,0(a2)
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
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
    xor     a2,a0,a1
    seqz    a2, a2
    li      a3, 32
    xor     a4,a0,a3
    seqz    a4, a4
    or      a5,a4,a2
    bnez    a5, .branch_true_27
    j       .branch_false_27
.branch_true_27:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_27:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
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
    slt     a2,a1,a0
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
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_36:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
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
    sw      a1,76(sp)
    lw      a0,76(sp)
    call    is_space
    sw      a0,72(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .while.body_44
    j       .while.exit_44
.while.body_44:
    sw      a0,72(sp)
    sb      a2,71(sp)
    call    next_char
    sw      a0,64(sp)
    sw      a0,64(sp)
    j       .while.head_44
.while.exit_44:
    la      a1, last_char
    lw      a3,0(a1)
    sw      a0,72(sp)
    sb      a2,71(sp)
    sw      a3,60(sp)
    lw      a0,60(sp)
    call    is_num
    sw      a0,56(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    la      a1, last_char
    lw      a3,0(a1)
    li      a4, 48
    sub     a5,a3,a4
    la      a6, num
    sw      a5,0(a6)
    j       .while.head_51
.while.head_51:
    sw      a0,56(sp)
    sb      a2,55(sp)
    sw      a3,48(sp)
    sw      a5,44(sp)
    call    next_char
    sw      a0,40(sp)
    sw      a0,40(sp)
    lw      a0,40(sp)
    call    is_num
    sw      a0,36(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .while.body_51
    j       .while.exit_51
.while.body_51:
    la      a1, last_char
    lw      a3,0(a1)
    la      a4, num
    lw      a5,0(a4)
    li      a6, 10
    mul     a7,a5,a6
    add     s1,a7,a3
    li      s2, 48
    sub     s3,s1,s2
    la      s4, num
    sw      s3,0(s4)
    sw      a7,20(sp)
    sw      s1,16(sp)
    sw      s3,12(sp)
    sb      a2,35(sp)
    sw      a5,24(sp)
    sw      a0,36(sp)
    sw      a3,28(sp)
    lb      a2,55(sp)
    lw      a5,44(sp)
    lw      a0,56(sp)
    lw      a3,48(sp)
    j       .while.head_51
.while.exit_51:
    la      a1, cur_token
    li      a3, 0
    sw      a3,0(a1)
    j       .L22_0
.branch_false_47:
    la      a1, last_char
    lw      a3,0(a1)
    la      a4, other
    sw      a3,0(a4)
    sw      a0,56(sp)
    sb      a2,55(sp)
    sw      a3,4(sp)
    call    next_char
    sw      a0,0(sp)
    la      a1, cur_token
    li      a2, 1
    sw      a2,0(a1)
    sw      a0,0(sp)
    lb      a2,35(sp)
    lw      a0,36(sp)
    j       .L22_0
.L22_0:
.L23_0:
    la      a1, cur_token
    lw      a3,0(a1)
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      a3,8(sp)
    sw      a0,36(sp)
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
    sw      a2,4(sp)
    lw      a0,4(sp)
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
    xor     a2,a0,a1
    seqz    a2, a2
    li      a3, 43
    xor     a4,a0,a3
    seqz    a4, a4
    or      a5,a4,a2
    bnez    a5, .branch_true_74
    j       .branch_false_74
.branch_true_74:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 10
    addi    sp,sp,32
    ret
.branch_false_74:
.L19_0:
    li      a1, 37
    xor     a3,a0,a1
    seqz    a3, a3
    li      a6, 47
    xor     a7,a0,a6
    seqz    a7, a7
    or      s1,a7,a3
    li      s2, 42
    xor     s3,a0,s2
    seqz    s3, s3
    or      s4,s3,s1
    bnez    s4, .branch_true_77
    j       .branch_false_77
.branch_true_77:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 20
    addi    sp,sp,32
    ret
.branch_false_77:
.L20_0:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
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
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,a0
    li      a6, 0
    mul     a7,a3,a4
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a0
    lw      s1,0(a6)
    add     s2,s1,a3
    sw      s2,0(a2)
    li      s3, 0
    mul     s4,a3,a4
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,a0
    lw      s5,0(s3)
    li      s6, 0
    mul     s7,a3,s5
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,a0
    sw      a1,0(s6)
    ld      ra,72(sp)
    ld      s0,64(sp)
    addi    sp,sp,80
    ret
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
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a0
    lw      a5,0(a1)
    li      a6, 0
    mul     a7,a2,a5
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a0
    lw      s1,0(a6)
    mv      s2, s1
    li      s3, 0
    mul     s4,a2,a3
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,a0
    li      s5, 0
    mul     s6,a2,a3
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,a0
    lw      s7,0(s5)
    sub     s8,s7,a2
    sw      s8,0(s3)
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      s2,24(sp)
    sd      a0,56(sp)
    lw      a0,24(sp)
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
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a0
    lw      a5,0(a1)
    li      a6, 0
    mul     a7,a2,a5
    add     a6,a6,a7
    slli a6,a6,2
    add     a6,a6,a0
    lw      s1,0(a6)
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      s1,4(sp)
    sd      a0,32(sp)
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
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,a0
    lw      a5,0(a1)
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a5,4(sp)
    sd      a0,16(sp)
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
    add     a3,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,36(sp)
    sw      a0,52(sp)
    lw      a0,36(sp)
    addi    sp,sp,72
    ret
.branch_false_103:
.L9_0:
    li      a3, 45
    xor     a5,a0,a3
    seqz    a5, a5
    bnez    a5, .branch_true_106
    j       .branch_false_106
.branch_true_106:
    sub     a3,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,28(sp)
    sw      a0,52(sp)
    lw      a0,28(sp)
    addi    sp,sp,72
    ret
.branch_false_106:
.L10_0:
    li      a3, 42
    xor     a6,a0,a3
    seqz    a6, a6
    bnez    a6, .branch_true_109
    j       .branch_false_109
.branch_true_109:
    mul     a3,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,20(sp)
    sw      a0,52(sp)
    lw      a0,20(sp)
    addi    sp,sp,72
    ret
.branch_false_109:
.L11_0:
    li      a3, 47
    xor     a7,a0,a3
    seqz    a7, a7
    bnez    a7, .branch_true_112
    j       .branch_false_112
.branch_true_112:
    div     a3,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,12(sp)
    sw      a0,52(sp)
    lw      a0,12(sp)
    addi    sp,sp,72
    ret
.branch_false_112:
.L12_0:
    li      a3, 37
    xor     s1,a0,a3
    seqz    s1, s1
    bnez    s1, .branch_true_115
    j       .branch_false_115
.branch_true_115:
    rem     a3,a1,a2
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,4(sp)
    sw      a0,52(sp)
    lw      a0,4(sp)
    addi    sp,sp,72
    ret
.branch_false_115:
.L13_0:
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,52(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
    .globl eval
    .type eval,@function
eval:
    li      a0, -2392
    li      a0, -2392
    add     sp,a0,sp
    li      a1, 2384
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2376
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2392
    li      a3, 2392
    add     s0,a3,sp
.L1_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1344
    li      a0, 2368
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 2368
    add     a1,sp,a1
    ld      a0,0(a1)
    li      a1, 0
    li      a2, 1024
    call    memset
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,312
    sd      a0,1336(sp)
    ld      a0,1336(sp)
    li      a1, 0
    li      a2, 1024
    call    memset
    j       .L2_0
.L2_0:
    la      a0, cur_token
    lw      a1,0(a0)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .branch_true_122
    j       .branch_false_122
.branch_true_122:
    sw      a1,308(sp)
    sb      a3,307(sp)
    call    panic
    sw      a0,300(sp)
    li      a1, 2384
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 2376
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      a0,300(sp)
    lw      a0,300(sp)
    li      a3, 2392
    li      a3, 2392
    add     sp,a3,sp
    ret
.branch_false_122:
.L3_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1344
    la      a2, num
    lw      a4,0(a2)
    sd      a0,288(sp)
    sw      a1,308(sp)
    sb      a3,307(sp)
    sw      a4,284(sp)
    ld      a0,288(sp)
    lw      a1,284(sp)
    call    stack_push
    call    next_token
    sw      a0,280(sp)
    j       .while.head_127
.while.head_127:
    la      a1, cur_token
    lw      a2,0(a1)
    li      a3, 1
    xor     a4,a2,a3
    seqz    a4, a4
    bnez    a4, .while.body_127
    j       .while.exit_127
.while.body_127:
    la      a1, other
    lw      a3,0(a1)
    mv      a5, a3
    j       .L4_0
.L4_0:
    sw      a0,280(sp)
    sw      a2,276(sp)
    sw      a3,268(sp)
    sb      a4,275(sp)
    sw      a5,264(sp)
    lw      a0,264(sp)
    call    get_op_prec
    sw      a0,260(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    seqz    a3, a2
    bnez    a3, .branch_true_131
    j       .branch_false_131
.branch_true_131:
    sb      a2,259(sp)
    sb      a3,258(sp)
    sw      a0,260(sp)
    lw      a2,276(sp)
    lb      a4,275(sp)
    lw      a0,280(sp)
    j       .while.exit_127
.while.exit_127:
    sw      a0,280(sp)
    sw      a2,276(sp)
    sb      a4,275(sp)
    call    next_token
    sw      a0,100(sp)
    j       .while.head_148
.while.head_148:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      a0,100(sp)
    sd      a1,88(sp)
    ld      a0,88(sp)
    call    stack_size
    sw      a0,84(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    bnez    a2, .while.body_148
    j       .while.exit_148
.while.body_148:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      a0,84(sp)
    sd      a1,72(sp)
    sb      a2,83(sp)
    ld      a0,72(sp)
    call    stack_pop
    sw      a0,68(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,68(sp)
    sw      a1,64(sp)
    sd      a2,56(sp)
    ld      a0,56(sp)
    call    stack_pop
    sw      a0,52(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,52(sp)
    sw      a1,48(sp)
    sd      a2,40(sp)
    ld      a0,40(sp)
    call    stack_pop
    sw      a0,36(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,36(sp)
    sw      a1,32(sp)
    sd      a2,24(sp)
    lw      a0,64(sp)
    lw      a1,32(sp)
    lw      a2,48(sp)
    call    eval_op
    sw      a0,20(sp)
    sw      a0,20(sp)
    ld      a0,24(sp)
    lw      a1,20(sp)
    call    stack_push
    lw      a0,100(sp)
    j       .while.head_148
.while.exit_148:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1344
    sw      a0,84(sp)
    sd      a1,8(sp)
    sb      a2,83(sp)
    ld      a0,8(sp)
    call    stack_peek
    sw      a0,4(sp)
    li      a1, 2384
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 2376
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      a0,4(sp)
    lw      a0,4(sp)
    li      a3, 2392
    li      a3, 2392
    add     sp,a3,sp
    ret
.branch_false_131:
.L5_0:
    sw      a0,260(sp)
    sb      a2,259(sp)
    sb      a3,258(sp)
    call    next_token
    sw      a0,252(sp)
    j       .while.head_135
.while.head_135:
    sw      a0,252(sp)
    lw      a0,264(sp)
    call    get_op_prec
    sw      a0,248(sp)
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      a0,248(sp)
    sd      a1,240(sp)
    ld      a0,240(sp)
    call    stack_peek
    sw      a0,236(sp)
    sw      a0,236(sp)
    lw      a0,236(sp)
    call    get_op_prec
    sw      a0,232(sp)
    lw      a1,248(sp)
    slt     a2,a0,a1
    xori    a2,a2,1
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,312
    sw      a0,232(sp)
    sw      a1,248(sp)
    sb      a2,231(sp)
    sd      a3,216(sp)
    ld      a0,216(sp)
    call    stack_size
    sw      a0,212(sp)
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    lb      a3,231(sp)
    and     a4,a2,a3
    bnez    a4, .while.body_135
    j       .while.exit_135
.while.body_135:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      a0,212(sp)
    sd      a1,200(sp)
    sb      a2,211(sp)
    sb      a3,231(sp)
    sb      a4,210(sp)
    ld      a0,200(sp)
    call    stack_pop
    sw      a0,196(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,196(sp)
    sw      a1,192(sp)
    sd      a2,184(sp)
    ld      a0,184(sp)
    call    stack_pop
    sw      a0,180(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,180(sp)
    sw      a1,176(sp)
    sd      a2,168(sp)
    ld      a0,168(sp)
    call    stack_pop
    sw      a0,164(sp)
    mv      a1, a0
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,1344
    sw      a0,164(sp)
    sw      a1,160(sp)
    sd      a2,152(sp)
    lw      a0,192(sp)
    lw      a1,160(sp)
    lw      a2,176(sp)
    call    eval_op
    sw      a0,148(sp)
    sw      a0,148(sp)
    ld      a0,152(sp)
    lw      a1,148(sp)
    call    stack_push
    lw      a0,252(sp)
    j       .while.head_135
.while.exit_135:
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      a0,212(sp)
    sd      a1,136(sp)
    sb      a2,211(sp)
    sb      a3,231(sp)
    sb      a4,210(sp)
    ld      a0,136(sp)
    lw      a1,264(sp)
    call    stack_push
    j       .L6_0
.L6_0:
    la      a0, cur_token
    lw      a1,0(a0)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .branch_true_142
    j       .branch_false_142
.branch_true_142:
    sw      a1,132(sp)
    sb      a3,131(sp)
    call    panic
    sw      a0,124(sp)
    li      a1, 2384
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 2376
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      a0,124(sp)
    lw      a0,124(sp)
    li      a3, 2392
    li      a3, 2392
    add     sp,a3,sp
    ret
.branch_false_142:
.L7_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1344
    la      a2, num
    lw      a4,0(a2)
    sd      a0,112(sp)
    sw      a1,132(sp)
    sb      a3,131(sp)
    sw      a4,108(sp)
    ld      a0,112(sp)
    lw      a1,108(sp)
    call    stack_push
    call    next_token
    sw      a0,104(sp)
    sw      a0,104(sp)
    lw      a0,280(sp)
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
    sw      a0,28(sp)
    sw      a1,24(sp)
    call    getch
    sw      a0,20(sp)
    sw      a0,20(sp)
    call    next_token
    sw      a0,16(sp)
    j       .while.head_160
.while.head_160:
    lw      a1,24(sp)
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .while.body_160
    j       .while.exit_160
.while.body_160:
    sw      a0,16(sp)
    sw      a1,24(sp)
    sb      a3,15(sp)
    call    eval
    sw      a0,8(sp)
    sw      a0,8(sp)
    lw      a0,8(sp)
    call    putint
    li      a0, 10
    call    putch
    lw      a0,24(sp)
    li      a1, 1
    sub     a2,a0,a1
    mv      a0, a2
    sw      a0,24(sp)
    sw      a2,4(sp)
    lw      a0,16(sp)
    j       .while.head_160
.while.exit_160:
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,16(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.section ___var
    .data
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
