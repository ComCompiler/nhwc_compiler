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
                    #      Define inc_a_0 [] -> inc_a_ret_0 
    .globl inc_a
    .type inc_a,@function
inc_a:
                    #mem layout:|ra_inc_a:8|s0_inc_a:8|temp_0:4|b:4|temp_1:4|temp_2:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 temp_0_18 
                    #      alloc i32 b_18 
                    #      alloc i32 temp_1_18 
                    #      alloc i32 temp_2_18 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      a1,0(a0)
                    #      b_18 = i32 temp_0_18 
    mv      a2, a1
                    #      new_var temp_1_18:i32 
                    #      temp_1_18 = Add i32 b_18, 1_0 
    li      a3, 1
    add     a4,a2,a3
                    #      b_18 = i32 temp_1_18 
    mv      a2, a4
                    #      store b_18:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a5, a
                    #occupy reg a5 with *a_0
    sd      a2,0(a5)
                    #      new_var temp_2_18:i32 
                    #      temp_2_18 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a6, a
                    #occupy reg a6 with *a_0
    lw      a7,0(a6)
                    #      ret temp_2_18 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a7,0(sp)
    addi    sp,sp,32
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|k:4|temp_3:1|none:3|temp_4:4|temp_5:4|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|temp_10:1|temp_11:1|none:2|temp_12:4|temp_13:4|temp_14:4|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:1|temp_20:1|temp_21:1|none:1|temp_22:4|temp_23:1|temp_24:1|none:2|temp_25:4|temp_26:4|temp_27:4|temp_28:4|temp_29:4|temp_30:4|temp_31:4|temp_32:4|none:4
    addi    sp,sp,-120
    sd      ra,112(sp)
    sd      s0,104(sp)
    addi    s0,sp,120
                    #      alloc i32 k_24 
                    #      alloc i1 temp_3_26 
                    #      alloc i32 temp_4_29 
                    #      alloc i32 temp_5_29 
                    #      alloc i1 temp_6_29 
                    #      alloc i1 temp_7_29 
                    #      alloc i1 temp_8_29 
                    #      alloc i32 temp_9_29 
                    #      alloc i1 temp_10_29 
                    #      alloc i1 temp_11_29 
                    #      alloc i32 temp_12_31 
                    #      alloc i32 temp_13_31 
                    #      alloc i32 temp_14_36 
                    #      alloc i32 temp_15_36 
                    #      alloc i32 temp_16_36 
                    #      alloc i32 temp_17_36 
                    #      alloc i32 temp_18_36 
                    #      alloc i1 temp_19_36 
                    #      alloc i1 temp_20_36 
                    #      alloc i1 temp_21_36 
                    #      alloc i32 temp_22_36 
                    #      alloc i1 temp_23_36 
                    #      alloc i1 temp_24_36 
                    #      alloc i32 temp_25_38 
                    #      alloc i32 temp_26_38 
                    #      alloc i32 temp_27_38 
                    #      alloc i32 temp_28_28 
                    #      alloc i32 temp_29_42 
                    #      alloc i32 temp_30_24 
                    #      alloc i32 temp_31_24 
                    #      alloc i32 temp_32_24 
                    #      label L0_0: 
.L0_0:
                    #      k_24 = i32 5_0 
    li      a0, 5
                    #      jump label: while.head_27 
    j       .while.head_27
                    #      label while.head_27: 
.while.head_27:
                    #      new_var temp_3_26:i1 
                    #      temp_3_26 = icmp i32 Sge k_24, 0_0 
    li      a1, 0
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      br i1 temp_3_26, label while.body_27, label while.exit_27 
    bnez    a2, .while.body_27
    j       .while.exit_27
                    #      label while.body_27: 
.while.body_27:
                    #      new_var temp_4_29:i32 
                    #      temp_4_29 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,100(sp)
    sw      a0,92(sp)
                    #      new_var temp_5_29:i32 
                    #      temp_5_29 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,92(sp)
    sw      a0,88(sp)
                    #      new_var temp_6_29:i1 
                    #      temp_6_29 = icmp i32 Ne temp_5_29, 0_0 
    li      a1, 0
    xor     a3,a0,a1
    snez    a3, a3
                    #      new_var temp_7_29:i1 
                    #      temp_6_29 = icmp i32 Ne temp_4_29, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
                    #      new_var temp_8_29:i1 
                    #      temp_8_29 = And i1 temp_6_29, temp_7_29 
    and     a6,a3,a5
                    #      new_var temp_9_29:i32 
                    #      temp_9_29 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,88(sp)
    sw      a0,80(sp)
                    #      new_var temp_10_29:i1 
                    #      temp_10_29 = icmp i32 Ne temp_9_29, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
    xor     a7,a0,a1
    snez    a7, a7
                    #      new_var temp_11_29:i1 
                    #      temp_11_29 = And i1 temp_10_29, temp_8_29 
    and     s1,a7,a6
                    #      br i1 temp_11_29, label branch_true_30, label branch_false_30 
    bnez    s1, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      new_var temp_12_31:i32 
                    #      temp_12_31 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      s2,0(a1)
                    #       Call void putint_0(temp_12_31) 
                    #saved register dumping to mem
    sb      s1,78(sp)
    sw      s2,72(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,80(sp)
    lw      a0,72(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_13_31:i32 
                    #      temp_13_31 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      s1,0(a0)
                    #       Call void putint_0(temp_13_31) 
                    #saved register dumping to mem
    sw      s1,68(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,68(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: branch_false_30 
    lw      a0,80(sp)
    lb      s1,78(sp)
    j       .branch_false_30
                    #      label branch_false_30: 
.branch_false_30:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_14_36:i32 
                    #      temp_14_36 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
    sb      s1,78(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,80(sp)
    sw      a0,64(sp)
                    #      new_var temp_15_36:i32 
                    #      temp_15_36 = Add i32 temp_14_36, 1_0 
    li      a1, 1
    add     s1,a0,a1
                    #      new_var temp_16_36:i32 
                    #      temp_16_36 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
    sw      s1,60(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,64(sp)
    sw      a0,56(sp)
                    #      new_var temp_17_36:i32 
                    #      temp_17_36 = Sub i32 temp_16_36, temp_15_36 
    sub     s2,a0,s1
                    #      new_var temp_18_36:i32 
                    #      temp_18_36 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
    sw      s1,60(sp)
    sw      s2,52(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,56(sp)
    sw      a0,48(sp)
                    #      new_var temp_19_36:i1 
                    #      temp_19_36 = icmp i32 Ne temp_18_36, 0_0 
    li      s1, 0
    xor     s2,a0,s1
    snez    s2, s2
                    #      new_var temp_20_36:i1 
                    #      temp_19_36 = icmp i32 Ne temp_17_36, 0_0 
                    #found literal reg Some(s1) already exist with 0_0
                    #      new_var temp_21_36:i1 
                    #      temp_21_36 = And i1 temp_19_36, temp_20_36 
    and     s5,s2,s4
                    #      new_var temp_22_36:i32 
                    #      temp_22_36 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
    sb      s2,47(sp)
    sw      s3,52(sp)
    sb      s4,46(sp)
    sb      s5,45(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,48(sp)
    sw      a0,40(sp)
                    #      new_var temp_23_36:i1 
                    #      temp_23_36 = icmp i32 Slt temp_22_36, 14_0 
    li      s1, 14
    slt     s2,a0,s1
                    #      new_var temp_24_36:i1 
                    #      temp_24_36 = Or i1 temp_23_36, temp_21_36 
                    #      br i1 temp_24_36, label branch_true_37, label branch_false_37 
    bnez    s4, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      new_var temp_25_38:i32 
                    #      temp_25_38 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      s1,0(a1)
                    #       Call void putint_0(temp_25_38) 
                    #saved register dumping to mem
    sw      s1,32(sp)
    sb      s2,39(sp)
    sb      s3,45(sp)
    sb      s4,38(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
    lw      a0,32(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_26_38:i32 
                    #      temp_26_38 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      s1,0(a0)
                    #      new_var temp_27_38:i32 
                    #      temp_27_38 = Mul i32 temp_26_38, 2_0 
    li      s2, 2
    mul     s3,s1,s2
                    #      store temp_27_38:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s4, b
                    #occupy reg s4 with *b_0
    sd      s3,0(s4)
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_37: 
.branch_false_37:
                    #      new_var temp_29_42:i32 
                    #      temp_29_42 =  Call i32 inc_a_0() 
                    #saved register dumping to mem
    sb      s2,39(sp)
    sb      s3,45(sp)
    sb      s4,38(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    inc_a
    sw      a0,40(sp)
    sw      a0,16(sp)
                    #      jump label: L2_0 
    sw      a0,16(sp)
    lw      s3,24(sp)
    lw      s1,28(sp)
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_28_28:i32 
                    #      temp_28_28 = Sub i32 k_24, 1_0 
    li      a1, 1
    sub     s2,a0,a1
                    #      k_24 = i32 temp_28_28 
    mv      a0, s2
                    #      jump label: while.head_27 
    sb      a3,87(sp)
    sw      s2,20(sp)
    sb      a2,99(sp)
    sw      a4,92(sp)
    sb      a6,85(sp)
    sb      a5,86(sp)
    sw      s3,24(sp)
    sb      a7,79(sp)
    sw      s1,28(sp)
    j       .while.head_27
                    #      label while.exit_27: 
.while.exit_27:
                    #      new_var temp_30_24:i32 
                    #      temp_30_24 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    lw      a3,0(a1)
                    #       Call void putint_0(temp_30_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_31_24:i32 
                    #      temp_31_24 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a0, b
                    #occupy reg a0 with *b_0
    lw      a4,0(a0)
                    #       Call void putint_0(temp_31_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a4
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_32_24:i32 
                    #      temp_32_24 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      a5,0(a0)
                    #      ret temp_32_24 
    ld      ra,112(sp)
    ld      s0,104(sp)
    sw      a5,4(sp)
    addi    sp,sp,120
    ret
.section        .data
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word -1
