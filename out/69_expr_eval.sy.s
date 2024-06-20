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
                    #      Define next_char_0 [] -> next_char_ret_0 
    .globl next_char
    .type next_char,@function
next_char:
                    #mem layout:|ra_next_char:8|s0_next_char:8|temp_0:4|temp_1:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_0_20 
                    #      alloc i32 temp_1_20 
                    #      label L28_0: 
.L28_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,4(sp)
                    #      store temp_0_20:i32 *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a1, last_char
                    #occupy reg a1 with *last_char_0
    sd      a0,0(a1)
                    #      new_var temp_1_20:i32 
                    #      temp_1_20 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a2, last_char
                    #occupy reg a2 with *last_char_0
    lw      a3,0(a2)
                    #      ret temp_1_20 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a3,0(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
                    #      Define is_space_0 [c_23] -> is_space_ret_0 
    .globl is_space
    .type is_space,@function
is_space:
                    #mem layout:|ra_is_space:8|s0_is_space:8|c:4|temp_2:1|temp_3:1|temp_4:1|none:1
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_2_26 
                    #      alloc i1 temp_3_26 
                    #      alloc i1 temp_4_26 
                    #      label L26_0: 
.L26_0:
                    #      new_var temp_2_26:i1 
                    #      temp_2_26 = icmp i32 Eq 10_0, c_23 
    li      a1, 10
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_3_26:i1 
                    #      temp_3_26 = icmp i32 Eq c_23, 32_0 
    li      a3, 32
    xor     a4,a0,a3
    seqz    a4, a4
                    #      new_var temp_4_26:i1 
                    #      temp_4_26 = Or i1 temp_3_26, temp_2_26 
                    #      br i1 temp_4_26, label branch_true_27, label branch_false_27 
    bnez    a5, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #      label branch_false_27: 
.branch_false_27:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      label L27_0: 
.L27_0:
                    #      Define is_num_0 [c_32] -> is_num_ret_0 
    .globl is_num
    .type is_num,@function
is_num:
                    #mem layout:|ra_is_num:8|s0_is_num:8|c:4|temp_5:1|temp_6:1|temp_7:1|none:1
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i1 temp_5_35 
                    #      alloc i1 temp_6_35 
                    #      alloc i1 temp_7_35 
                    #      label L24_0: 
.L24_0:
                    #      new_var temp_5_35:i1 
                    #      temp_5_35 = icmp i32 Sle 57_0, c_32 
    li      a1, 57
    slt     a2,a0,a1
    xori    a2,a2,1
                    #      new_var temp_6_35:i1 
                    #      temp_6_35 = icmp i32 Sge c_32, 48_0 
    li      a3, 48
    slt     a4,a0,a3
    xori    a4,a4,1
                    #      new_var temp_7_35:i1 
                    #      temp_7_35 = And i1 temp_6_35, temp_5_35 
    and     a5,a4,a2
                    #      br i1 temp_7_35, label branch_true_36, label branch_false_36 
    bnez    a5, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #      label branch_false_36: 
.branch_false_36:
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
                    #      label L25_0: 
.L25_0:
                    #      Define next_token_0 [] -> next_token_ret_0 
    .globl next_token
    .type next_token,@function
next_token:
                    #mem layout:|ra_next_token:8|s0_next_token:8|temp_8:4|temp_9:4|temp_10:1|none:3|temp_11:4|temp_12:4|temp_13:4|temp_14:1|none:3|temp_15:4|temp_16:4|temp_17:4|temp_18:4|temp_19:1|none:3|temp_20:4|temp_21:4|temp_22:4|temp_23:4|temp_24:4|temp_25:4|temp_26:4|temp_27:4
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 temp_8_43 
                    #      alloc i32 temp_9_43 
                    #      alloc i1 temp_10_494 
                    #      alloc i32 temp_11_42 
                    #      alloc i32 temp_12_46 
                    #      alloc i32 temp_13_46 
                    #      alloc i1 temp_14_565 
                    #      alloc i32 temp_15_48 
                    #      alloc i32 temp_16_48 
                    #      alloc i32 temp_17_50 
                    #      alloc i32 temp_18_50 
                    #      alloc i1 temp_19_651 
                    #      alloc i32 temp_20_52 
                    #      alloc i32 temp_21_52 
                    #      alloc i32 temp_22_52 
                    #      alloc i32 temp_23_52 
                    #      alloc i32 temp_24_52 
                    #      alloc i32 temp_25_42 
                    #      alloc i32 temp_26_55 
                    #      alloc i32 temp_27_55 
                    #      label while.head_44: 
.while.head_44:
                    #      new_var temp_8_43:i32 
                    #      temp_8_43 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a0, last_char
                    #occupy reg a0 with *last_char_0
    lw      a1,0(a0)
                    #      new_var temp_9_43:i32 
                    #      temp_9_43 =  Call i32 is_space_0(temp_8_43) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,76(sp)
                    #arg load ended
    call    is_space
    sw      a0,72(sp)
                    #      new_var temp_10_494:i1 
                    #      temp_10_494 = icmp i32 Ne temp_9_43, 0_0 
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
                    #      br i1 temp_10_494, label while.body_44, label while.exit_44 
    bnez    a2, .while.body_44
    j       .while.exit_44
                    #      label while.body_44: 
.while.body_44:
                    #      new_var temp_11_42:i32 
                    #      temp_11_42 =  Call i32 next_char_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_char
    sw      a0,72(sp)
    sw      a0,64(sp)
                    #      jump label: while.head_44 
    j       .while.head_44
                    #      label while.exit_44: 
.while.exit_44:
                    #      new_var temp_12_46:i32 
                    #      temp_12_46 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a3, last_char
                    #occupy reg a3 with *last_char_0
    lw      a4,0(a3)
                    #      new_var temp_13_46:i32 
                    #      temp_13_46 =  Call i32 is_num_0(temp_12_46) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a4,60(sp)
    sw      a0,64(sp)
                    #arg load ended
    call    is_num
    sw      a0,56(sp)
                    #      new_var temp_14_565:i1 
                    #      temp_14_565 = icmp i32 Ne temp_13_46, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
    xor     a4,a0,a1
    snez    a4, a4
                    #      br i1 temp_14_565, label branch_true_47, label branch_false_47 
    bnez    a4, .branch_true_47
    j       .branch_false_47
                    #      label branch_true_47: 
.branch_true_47:
                    #      new_var temp_15_48:i32 
                    #      temp_15_48 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a5, last_char
                    #occupy reg a5 with *last_char_0
    lw      a6,0(a5)
                    #      new_var temp_16_48:i32 
                    #      temp_16_48 = Sub i32 temp_15_48, 48_0 
    li      a7, 48
    sub     s1,a6,a7
                    #      store temp_16_48:i32 *num_0:ptr->i32 
                    #   load label num as ptr to reg
    la      s2, num
                    #occupy reg s2 with *num_0
    sd      s1,0(s2)
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.head_51: 
.while.head_51:
                    #      new_var temp_17_50:i32 
                    #      temp_17_50 =  Call i32 next_char_0() 
                    #saved register dumping to mem
    sw      s1,44(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_char
    sw      a0,56(sp)
    sw      a0,40(sp)
                    #      new_var temp_18_50:i32 
                    #      temp_18_50 =  Call i32 is_num_0(temp_17_50) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
                    #arg load ended
    call    is_num
    sw      a0,36(sp)
                    #      new_var temp_19_651:i1 
                    #      temp_19_651 = icmp i32 Ne temp_18_50, 0_0 
                    #found literal reg Some(a1) already exist with 0_0
    xor     s1,a0,a1
    snez    s1, s1
                    #      br i1 temp_19_651, label while.body_51, label while.exit_51 
    bnez    s1, .while.body_51
    j       .while.exit_51
                    #      label while.body_51: 
.while.body_51:
                    #      new_var temp_20_52:i32 
                    #      temp_20_52 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      s2, last_char
                    #occupy reg s2 with *last_char_0
    lw      s3,0(s2)
                    #      new_var temp_21_52:i32 
                    #      temp_21_52 = Sub i32 temp_20_52, 48_0 
                    #found literal reg Some(a7) already exist with 48_0
    sub     s4,s3,a7
                    #      new_var temp_22_52:i32 
                    #      temp_22_52 = load *num_0:ptr->i32 
                    #   load label num as ptr to reg
    la      s5, num
                    #occupy reg s5 with *num_0
    lw      s6,0(s5)
                    #      new_var temp_23_52:i32 
                    #      temp_23_52 = Mul i32 temp_22_52, 10_0 
    li      s7, 10
    mul     s8,s6,s7
                    #      new_var temp_24_52:i32 
                    #      temp_24_52 = Add i32 temp_23_52, temp_21_52 
    add     s9,s8,s4
                    #      store temp_24_52:i32 *num_0:ptr->i32 
                    #   load label num as ptr to reg
    la      s10, num
                    #occupy reg s10 with *num_0
    sd      s9,0(s10)
                    #      jump label: while.head_51 
    j       .while.head_51
                    #      label while.exit_51: 
.while.exit_51:
                    #      store 0_0:i32 *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      s11, cur_token
                    #occupy reg s11 with *cur_token_0
                    #found literal reg Some(a1) already exist with 0_0
    sd      a1,0(s11)
                    #      jump label: L22_0 
    j       .L22_0
                    #      label branch_false_47: 
.branch_false_47:
                    #      new_var temp_26_55:i32 
                    #      temp_26_55 = load *last_char_0:ptr->i32 
                    #   load label last_char as ptr to reg
    la      a1, last_char
                    #occupy reg a1 with *last_char_0
    lw      a3,0(a1)
                    #      store temp_26_55:i32 *other_0:ptr->i32 
                    #   load label other as ptr to reg
    la      a1, other
                    #occupy reg a1 with *other_0
    sd      a3,0(a1)
                    #      new_var temp_27_55:i32 
                    #      temp_27_55 =  Call i32 next_char_0() 
                    #saved register dumping to mem
    sb      s1,35(sp)
    sw      s3,28(sp)
    sw      s4,24(sp)
    sw      s6,20(sp)
    sw      s8,16(sp)
    sw      s9,12(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_char
    sw      a0,36(sp)
    sw      a0,0(sp)
                    #      store 1_0:i32 *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      s1, cur_token
                    #occupy reg s1 with *cur_token_0
    li      s2, 1
    sd      s2,0(s1)
                    #      jump label: L22_0 
    j       .L22_0
                    #      label L22_0: 
.L22_0:
                    #      label L23_0: 
.L23_0:
                    #      new_var temp_25_42:i32 
                    #      temp_25_42 = load *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      s3, cur_token
                    #occupy reg s3 with *cur_token_0
    lw      s4,0(s3)
                    #      ret temp_25_42 
    ld      ra,88(sp)
    ld      s0,80(sp)
    sw      s4,8(sp)
    sw      a0,0(sp)
    addi    sp,sp,96
    ret
                    #      Define panic_0 [] -> panic_ret_0 
    .globl panic
    .type panic,@function
panic:
                    #mem layout:|ra_panic:8|s0_panic:8|temp_28:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_28_61 
                    #      label L21_0: 
.L21_0:
                    #       Call void putch_0(112_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 112
                    #arg load ended
    call    putch
                    #       Call void putch_0(97_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 97
                    #arg load ended
    call    putch
                    #       Call void putch_0(110_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 110
                    #arg load ended
    call    putch
                    #       Call void putch_0(105_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 105
                    #arg load ended
    call    putch
                    #       Call void putch_0(99_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 99
                    #arg load ended
    call    putch
                    #       Call void putch_0(33_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 33
                    #arg load ended
    call    putch
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_28_61:i32 
                    #      temp_28_61 = Sub i32 0_0, 1_0 
    li      a0, 0
    li      a1, 1
    sub     a2,a0,a1
                    #      ret temp_28_61 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a2,4(sp)
    addi    sp,sp,24
    ret
                    #      Define get_op_prec_0 [op_70] -> get_op_prec_ret_0 
    .globl get_op_prec
    .type get_op_prec,@function
get_op_prec:
                    #mem layout:|ra_get_op_prec:8|s0_get_op_prec:8|op:4|temp_29:1|temp_30:1|temp_31:1|temp_32:1|temp_33:1|temp_34:1|temp_35:1|temp_36:1|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i1 temp_29_73 
                    #      alloc i1 temp_30_73 
                    #      alloc i1 temp_31_73 
                    #      alloc i1 temp_32_76 
                    #      alloc i1 temp_33_76 
                    #      alloc i1 temp_34_76 
                    #      alloc i1 temp_35_76 
                    #      alloc i1 temp_36_76 
                    #      label L18_0: 
.L18_0:
                    #      new_var temp_29_73:i1 
                    #      temp_29_73 = icmp i32 Eq 45_0, op_70 
    li      a1, 45
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_30_73:i1 
                    #      temp_30_73 = icmp i32 Eq op_70, 43_0 
    li      a3, 43
    xor     a4,a0,a3
    seqz    a4, a4
                    #      new_var temp_31_73:i1 
                    #      temp_31_73 = Or i1 temp_30_73, temp_29_73 
                    #      br i1 temp_31_73, label branch_true_74, label branch_false_74 
    bnez    a5, .branch_true_74
    j       .branch_false_74
                    #      label branch_true_74: 
.branch_true_74:
                    #      ret 10_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 10
    addi    sp,sp,32
    ret
                    #      label branch_false_74: 
.branch_false_74:
                    #      label L19_0: 
.L19_0:
                    #      new_var temp_32_76:i1 
                    #      temp_32_76 = icmp i32 Eq 37_0, op_70 
    li      a6, 37
    xor     s1,a6,a7
    seqz    s1, s1
                    #      new_var temp_33_76:i1 
                    #      temp_33_76 = icmp i32 Eq 47_0, op_70 
    li      s2, 47
    xor     s3,s2,a7
    seqz    s3, s3
                    #      new_var temp_34_76:i1 
                    #      temp_34_76 = Or i1 temp_33_76, temp_32_76 
                    #      new_var temp_35_76:i1 
                    #      temp_35_76 = icmp i32 Eq op_70, 42_0 
    li      s4, 42
    xor     s5,a7,s4
    seqz    s5, s5
                    #      new_var temp_36_76:i1 
                    #      temp_36_76 = Or i1 temp_35_76, temp_34_76 
                    #      br i1 temp_36_76, label branch_true_77, label branch_false_77 
    bnez    s7, .branch_true_77
    j       .branch_false_77
                    #      label branch_true_77: 
.branch_true_77:
                    #      ret 20_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 20
    addi    sp,sp,32
    ret
                    #      label branch_false_77: 
.branch_false_77:
                    #      label L20_0: 
.L20_0:
                    #      ret 0_0 
    ld      ra,24(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
                    #      Define stack_push_0 [s_80, v_80] -> stack_push_ret_0 
    .globl stack_push
    .type stack_push,@function
stack_push:
                    #mem layout:|ra_stack_push:8|s0_stack_push:8|s:8|v:4|none:4|temp_37:8|temp_38:8|temp_39:4|temp_40:4|temp_41:8|temp_42:4|none:4|temp_43:8
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      new_var s_80:ptr->i32 
                    #      alloc ptr->i32 temp_37_82 
                    #      alloc ptr->i32 temp_38_82 
                    #      alloc i32 temp_39_82 
                    #      alloc i32 temp_40_82 
                    #      alloc ptr->i32 temp_41_82 
                    #      alloc i32 temp_42_82 
                    #      alloc ptr->i32 temp_43_82 
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_37_82:ptr->i32 
                    #      temp_37_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
    li      a2, 0
    li      a3, 1
    li      a4, 0
    add     a2,a2,a0
    slli a2,a2,3
    add     a2,a2,sp
    add     a2,a2,a2
                    #      new_var temp_38_82:ptr->i32 
                    #      new_var temp_39_82:i32 
                    #      temp_38_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
    li      a5, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_39_82 = load temp_38_82:ptr->i32 
    lw      a6,0(a5)
                    #      new_var temp_40_82:i32 
                    #      temp_40_82 = Add i32 temp_39_82, 1_0 
                    #found literal reg Some(a3) already exist with 1_0
    add     a7,a6,a3
                    #      store temp_40_82:i32 temp_37_82:ptr->i32 
    sd      a7,0(a2)
                    #      mu s_80:222 
                    #      s_80 = chi s_80:222 
                    #      new_var temp_41_82:ptr->i32 
                    #      new_var temp_42_82:i32 
                    #      temp_41_82 = getelementptr s_80:ptr->i32 [Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(a3) already exist with 1_0
                    #found literal reg Some(a4) already exist with 0_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_42_82 = load temp_41_82:ptr->i32 
    lw      s2,0(s1)
                    #      new_var temp_43_82:ptr->i32 
                    #      temp_43_82 = getelementptr s_80:ptr->i32 [Some(temp_42_82)] 
    li      s3, 0
                    #found literal reg Some(a3) already exist with 1_0
    add     s3,s3,a0
    slli s3,s3,3
    add     s3,s3,sp
    add     s3,s3,s3
                    #      store v_80:i32 temp_43_82:ptr->i32 
    sd      a1,0(s3)
                    #      mu s_80:234 
                    #      s_80 = chi s_80:234 
                    #      Define stack_pop_0 [s_85] -> stack_pop_ret_0 
    .globl stack_pop
    .type stack_pop,@function
stack_pop:
                    #mem layout:|ra_stack_pop:8|s0_stack_pop:8|s:8|temp_44:8|temp_45:4|none:4|temp_46:8|temp_47:4|last:4|temp_48:8|temp_49:8|temp_50:4|temp_51:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      new_var s_85:ptr->i32 
                    #      alloc ptr->i32 temp_44_87 
                    #      alloc i32 temp_45_87 
                    #      alloc ptr->i32 temp_46_87 
                    #      alloc i32 temp_47_87 
                    #      alloc i32 last_87 
                    #      alloc ptr->i32 temp_48_87 
                    #      alloc ptr->i32 temp_49_87 
                    #      alloc i32 temp_50_87 
                    #      alloc i32 temp_51_87 
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_44_87:ptr->i32 
                    #      new_var temp_45_87:i32 
                    #      temp_44_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_45_87 = load temp_44_87:ptr->i32 
    lw      a4,0(a1)
                    #      new_var temp_46_87:ptr->i32 
                    #      new_var temp_47_87:i32 
                    #      temp_46_87 = getelementptr s_85:ptr->i32 [Some(temp_45_87)] 
    li      a5, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_47_87 = load temp_46_87:ptr->i32 
    lw      a6,0(a5)
                    #      last_87 = i32 temp_47_87 
    mv      a7, a6
                    #      new_var temp_48_87:ptr->i32 
                    #      temp_48_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(a2) already exist with 1_0
                    #found literal reg Some(a3) already exist with 0_0
    add     s1,s1,a0
    slli s1,s1,3
    add     s1,s1,sp
    add     s1,s1,s1
                    #      new_var temp_49_87:ptr->i32 
                    #      new_var temp_50_87:i32 
                    #      temp_49_87 = getelementptr s_85:ptr->i32 [Some(0_0)] 
    li      s2, 0
                    #found literal reg Some(a2) already exist with 1_0
                    #found literal reg Some(a3) already exist with 0_0
    add     s2,s2,a0
    slli s2,s2,3
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_50_87 = load temp_49_87:ptr->i32 
    lw      s3,0(s2)
                    #      new_var temp_51_87:i32 
                    #      temp_51_87 = Sub i32 temp_50_87, 1_0 
                    #found literal reg Some(a2) already exist with 1_0
    sub     s4,s3,a2
                    #      store temp_51_87:i32 temp_48_87:ptr->i32 
    sd      s4,0(s1)
                    #      mu s_85:263 
                    #      s_85 = chi s_85:263 
                    #      ret last_87 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a7,24(sp)
    sd      a0,56(sp)
    addi    sp,sp,80
    ret
                    #      Define stack_peek_0 [s_91] -> stack_peek_ret_0 
    .globl stack_peek
    .type stack_peek,@function
stack_peek:
                    #mem layout:|ra_stack_peek:8|s0_stack_peek:8|s:8|temp_52:8|temp_53:4|none:4|temp_54:8|temp_55:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      new_var s_91:ptr->i32 
                    #      alloc ptr->i32 temp_52_93 
                    #      alloc i32 temp_53_93 
                    #      alloc ptr->i32 temp_54_93 
                    #      alloc i32 temp_55_93 
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_52_93:ptr->i32 
                    #      new_var temp_53_93:i32 
                    #      temp_52_93 = getelementptr s_91:ptr->i32 [Some(0_0)] 
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_53_93 = load temp_52_93:ptr->i32 
    lw      a4,0(a1)
                    #      new_var temp_54_93:ptr->i32 
                    #      new_var temp_55_93:i32 
                    #      temp_54_93 = getelementptr s_91:ptr->i32 [Some(temp_53_93)] 
    li      a5, 0
                    #found literal reg Some(a2) already exist with 1_0
    add     a5,a5,a0
    slli a5,a5,3
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_55_93 = load temp_54_93:ptr->i32 
    lw      a6,0(a5)
                    #      ret temp_55_93 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a6,4(sp)
    sd      a0,32(sp)
    addi    sp,sp,56
    ret
                    #      Define stack_size_0 [s_95] -> stack_size_ret_0 
    .globl stack_size
    .type stack_size,@function
stack_size:
                    #mem layout:|ra_stack_size:8|s0_stack_size:8|s:8|temp_56:8|temp_57:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      new_var s_95:ptr->i32 
                    #      alloc ptr->i32 temp_56_97 
                    #      alloc i32 temp_57_97 
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_56_97:ptr->i32 
                    #      new_var temp_57_97:i32 
                    #      temp_56_97 = getelementptr s_95:ptr->i32 [Some(0_0)] 
    li      a1, 0
    li      a2, 1
    li      a3, 0
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_57_97 = load temp_56_97:ptr->i32 
    lw      a4,0(a1)
                    #      ret temp_57_97 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a4,4(sp)
    sd      a0,16(sp)
    addi    sp,sp,40
    ret
                    #      Define eval_op_0 [op_99, lhs_99, rhs_99] -> eval_op_ret_0 
    .globl eval_op
    .type eval_op,@function
eval_op:
                    #mem layout:|ra_eval_op:8|s0_eval_op:8|op:4|lhs:4|rhs:4|temp_58:1|none:3|temp_59:4|temp_60:1|none:3|temp_61:4|temp_62:1|none:3|temp_63:4|temp_64:1|none:3|temp_65:4|temp_66:1|none:3|temp_67:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i1 temp_58_102 
                    #      alloc i32 temp_59_102 
                    #      alloc i1 temp_60_105 
                    #      alloc i32 temp_61_105 
                    #      alloc i1 temp_62_108 
                    #      alloc i32 temp_63_108 
                    #      alloc i1 temp_64_111 
                    #      alloc i32 temp_65_111 
                    #      alloc i1 temp_66_114 
                    #      alloc i32 temp_67_114 
                    #      label L8_0: 
.L8_0:
                    #      new_var temp_58_102:i1 
                    #      temp_58_102 = icmp i32 Eq op_99, 43_0 
    li      a3, 43
    xor     a4,a0,a3
    seqz    a4, a4
                    #      br i1 temp_58_102, label branch_true_103, label branch_false_103 
    bnez    a4, .branch_true_103
    j       .branch_false_103
                    #      label branch_true_103: 
.branch_true_103:
                    #      new_var temp_59_102:i32 
                    #      temp_59_102 = Add i32 lhs_99, rhs_99 
    add     a5,a1,a2
                    #      ret temp_59_102 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a5,36(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_103: 
.branch_false_103:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_60_105:i1 
                    #      temp_60_105 = icmp i32 Eq op_99, 45_0 
    li      a6, 45
    xor     a7,a5,a6
    seqz    a7, a7
                    #      br i1 temp_60_105, label branch_true_106, label branch_false_106 
    bnez    a7, .branch_true_106
    j       .branch_false_106
                    #      label branch_true_106: 
.branch_true_106:
                    #      new_var temp_61_105:i32 
                    #      temp_61_105 = Sub i32 lhs_99, rhs_99 
    sub     s1,a1,a2
                    #      ret temp_61_105 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s1,28(sp)
    sw      a0,36(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_106: 
.branch_false_106:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_62_108:i1 
                    #      temp_62_108 = icmp i32 Eq op_99, 42_0 
    li      s1, 42
    xor     s2,a5,s1
    seqz    s2, s2
                    #      br i1 temp_62_108, label branch_true_109, label branch_false_109 
    bnez    s2, .branch_true_109
    j       .branch_false_109
                    #      label branch_true_109: 
.branch_true_109:
                    #      new_var temp_63_108:i32 
                    #      temp_63_108 = Mul i32 lhs_99, rhs_99 
    mul     s3,a1,a2
                    #      ret temp_63_108 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s3,20(sp)
    sw      a0,28(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_109: 
.branch_false_109:
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_64_111:i1 
                    #      temp_64_111 = icmp i32 Eq op_99, 47_0 
    li      s3, 47
    xor     s4,a5,s3
    seqz    s4, s4
                    #      br i1 temp_64_111, label branch_true_112, label branch_false_112 
    bnez    s4, .branch_true_112
    j       .branch_false_112
                    #      label branch_true_112: 
.branch_true_112:
                    #      new_var temp_65_111:i32 
                    #      temp_65_111 = Div i32 lhs_99, rhs_99 
    div     s5,a1,a2
                    #      ret temp_65_111 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s5,12(sp)
    sw      a0,20(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_112: 
.branch_false_112:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_66_114:i1 
                    #      temp_66_114 = icmp i32 Eq op_99, 37_0 
    li      s5, 37
    xor     s6,a5,s5
    seqz    s6, s6
                    #      br i1 temp_66_114, label branch_true_115, label branch_false_115 
    bnez    s6, .branch_true_115
    j       .branch_false_115
                    #      label branch_true_115: 
.branch_true_115:
                    #      new_var temp_67_114:i32 
                    #      temp_67_114 = Mod i32 lhs_99, rhs_99 
    rem     s7,a1,a2
                    #      ret temp_67_114 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      s7,4(sp)
    sw      a0,12(sp)
    addi    sp,sp,72
    ret
                    #      label branch_false_115: 
.branch_false_115:
                    #      label L13_0: 
.L13_0:
                    #      ret 0_0 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,72
    ret
                    #      Define eval_0 [] -> eval_ret_0 
    .globl eval
    .type eval,@function
eval:
                    #mem layout:|ra_eval:8|s0_eval:8|oprs:1024|ops:1024|temp_68:4|temp_69:1|none:3|temp_70:4|temp_71:4|temp_72:4|temp_73:4|temp_74:1|none:3|temp_75:4|op:4|temp_76:4|temp_77:1|temp_78:1|none:2|temp_79:4|temp_80:4|temp_81:4|temp_82:4|temp_83:1|none:3|temp_84:4|temp_85:1|temp_86:1|none:2|temp_87:4|cur_op:4|temp_88:4|rhs:4|temp_89:4|lhs:4|temp_90:4|temp_91:4|temp_92:1|none:3|temp_93:4|temp_94:4|temp_95:4|temp_96:4|temp_97:4|temp_98:1|none:3|temp_99:4|cur_op:4|temp_100:4|rhs:4|temp_101:4|lhs:4|temp_102:4|temp_103:4|none:4
    li      a0, -2232
    li      a0, -2232
    add     sp,a0,sp
    li      a1, 2224
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2216
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2232
    li      a3, 2232
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(256_0)] oprs_119 
                    #      alloc Array:i32:[Some(256_0)] ops_119 
                    #      alloc i32 temp_68_121 
                    #      alloc i1 temp_69_121 
                    #      alloc i32 temp_70_121 
                    #      alloc i32 temp_71_119 
                    #      alloc i32 temp_72_119 
                    #      alloc i32 temp_73_126 
                    #      alloc i1 temp_74_126 
                    #      alloc i32 temp_75_128 
                    #      alloc i32 op_128 
                    #      alloc i32 temp_76_130 
                    #      alloc i1 temp_77_130 
                    #      alloc i1 temp_78_130 
                    #      alloc i32 temp_79_128 
                    #      alloc i32 temp_80_134 
                    #      alloc i32 temp_81_134 
                    #      alloc i32 temp_82_134 
                    #      alloc i1 temp_83_134 
                    #      alloc i32 temp_84_134 
                    #      alloc i1 temp_85_134 
                    #      alloc i1 temp_86_134 
                    #      alloc i32 temp_87_136 
                    #      alloc i32 cur_op_136 
                    #      alloc i32 temp_88_136 
                    #      alloc i32 rhs_136 
                    #      alloc i32 temp_89_136 
                    #      alloc i32 lhs_136 
                    #      alloc i32 temp_90_136 
                    #      alloc i32 temp_91_141 
                    #      alloc i1 temp_92_141 
                    #      alloc i32 temp_93_141 
                    #      alloc i32 temp_94_128 
                    #      alloc i32 temp_95_128 
                    #      alloc i32 temp_96_119 
                    #      alloc i32 temp_97_147 
                    #      alloc i1 temp_98_3459 
                    #      alloc i32 temp_99_149 
                    #      alloc i32 cur_op_149 
                    #      alloc i32 temp_100_149 
                    #      alloc i32 rhs_149 
                    #      alloc i32 temp_101_149 
                    #      alloc i32 lhs_149 
                    #      alloc i32 temp_102_149 
                    #      alloc i32 temp_103_119 
                    #      label L1_0: 
.L1_0:
                    #      new_var oprs_119:Array:i32:[Some(256_0)] 
                    #      new_var ops_119:Array:i32:[Some(256_0)] 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_68_121:i32 
                    #      temp_68_121 = load *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      a4, cur_token
                    #occupy reg a4 with *cur_token_0
    lw      a5,0(a4)
                    #      new_var temp_69_121:i1 
                    #      temp_69_121 = icmp i32 Ne temp_68_121, 0_0 
    li      a6, 0
    xor     a7,a5,a6
    snez    a7, a7
                    #      br i1 temp_69_121, label branch_true_122, label branch_false_122 
    bnez    a7, .branch_true_122
    j       .branch_false_122
                    #      label branch_true_122: 
.branch_true_122:
                    #      new_var temp_70_121:i32 
                    #      temp_70_121 =  Call i32 panic_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    panic
    sw      a0,156(sp)
                    #      ret temp_70_121 
    li      s1, 2224
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2216
    add     s2,sp,s2
    ld      s0,0(s2)
    sw      a0,156(sp)
                    #found literal reg Some(a3) already exist with 2232_0
    li      a3, 2232
    add     sp,a3,sp
    ret
                    #      label branch_false_122: 
.branch_false_122:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_71_119:i32 
                    #      temp_71_119 = load *num_0:ptr->i32 
                    #   load label num as ptr to reg
    la      s3, num
                    #occupy reg s3 with *num_0
    lw      s4,0(s3)
                    #       Call void stack_push_0(oprs_119, temp_71_119) 
                    #saved register dumping to mem
                    #found literal reg Some(a1) already exist with 2224_0
    add     a1,sp,a1
    sd      s1,0(a1)
                    #found literal reg Some(a2) already exist with 2216_0
    add     a2,sp,a2
    sd      s2,0(a2)
    sw      s4,152(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,156(sp)
                    #arg load ended
    call    stack_push
                    #      new_var temp_72_119:i32 
                    #      temp_72_119 =  Call i32 next_token_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_token
    sw      a0,148(sp)
                    #      jump label: while.head_127 
    j       .while.head_127
                    #      label while.head_127: 
.while.head_127:
                    #      new_var temp_73_126:i32 
                    #      temp_73_126 = load *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      a1, cur_token
                    #occupy reg a1 with *cur_token_0
    lw      s1,0(a1)
                    #      new_var temp_74_126:i1 
                    #      temp_74_126 = icmp i32 Eq temp_73_126, 1_0 
    li      s2, 1
    xor     s3,s1,s2
    seqz    s3, s3
                    #      br i1 temp_74_126, label while.body_127, label while.exit_127 
    bnez    s3, .while.body_127
    j       .while.exit_127
                    #      label while.body_127: 
.while.body_127:
                    #      new_var temp_75_128:i32 
                    #      temp_75_128 = load *other_0:ptr->i32 
                    #   load label other as ptr to reg
    la      s4, other
                    #occupy reg s4 with *other_0
    lw      s5,0(s4)
                    #      op_128 = i32 temp_75_128 
    mv      s6, s5
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_76_130:i32 
                    #      temp_76_130 =  Call i32 get_op_prec_0(op_128) 
                    #saved register dumping to mem
    sw      s1,144(sp)
    sb      s3,143(sp)
    sw      s5,136(sp)
    sw      s6,132(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,148(sp)
                    #arg load ended
    call    get_op_prec
    sw      a0,128(sp)
                    #      new_var temp_77_130:i1 
                    #      temp_77_130 = icmp i1 Ne temp_76_130, 0_0 
                    #found literal reg Some(a6) already exist with 0_0
    xor     s1,a0,a6
    snez    s1, s1
                    #      new_var temp_78_130:i1 
                    #      temp_78_130 = xor i1 temp_77_130, true 
    seqz    s2, s1
                    #      br i1 temp_78_130, label branch_true_131, label branch_false_131 
    bnez    s2, .branch_true_131
    j       .branch_false_131
                    #      label branch_true_131: 
.branch_true_131:
                    #      jump label: while.exit_127 
    j       .while.exit_127
                    #      label while.exit_127: 
.while.exit_127:
                    #      new_var temp_96_119:i32 
                    #      temp_96_119 =  Call i32 next_token_0() 
                    #saved register dumping to mem
    sb      s1,127(sp)
    sb      s2,126(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_token
    sw      a0,128(sp)
    sw      a0,44(sp)
                    #      jump label: while.head_148 
    j       .while.head_148
                    #      label while.head_148: 
.while.head_148:
                    #      new_var temp_97_147:i32 
                    #      temp_97_147 =  Call i32 stack_size_0(ops_119) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,44(sp)
                    #arg load ended
    call    stack_size
    sw      a0,40(sp)
                    #      new_var temp_98_3459:i1 
                    #      temp_98_3459 = icmp i32 Ne temp_97_147, 0_0 
                    #found literal reg Some(a6) already exist with 0_0
    xor     s1,a0,a6
    snez    s1, s1
                    #      br i1 temp_98_3459, label while.body_148, label while.exit_148 
    bnez    s1, .while.body_148
    j       .while.exit_148
                    #      label while.body_148: 
.while.body_148:
                    #      new_var temp_99_149:i32 
                    #      temp_99_149 =  Call i32 stack_pop_0(ops_119) 
                    #saved register dumping to mem
    sb      s1,39(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,40(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,32(sp)
                    #      cur_op_149 = i32 temp_99_149 
    mv      s1, a0
                    #      new_var temp_100_149:i32 
                    #      temp_100_149 =  Call i32 stack_pop_0(oprs_119) 
                    #saved register dumping to mem
    sw      s1,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,32(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,24(sp)
                    #      rhs_149 = i32 temp_100_149 
    mv      s1, a0
                    #      new_var temp_101_149:i32 
                    #      temp_101_149 =  Call i32 stack_pop_0(oprs_119) 
                    #saved register dumping to mem
    sw      s1,20(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,16(sp)
                    #      lhs_149 = i32 temp_101_149 
    mv      s1, a0
                    #      new_var temp_102_149:i32 
                    #      temp_102_149 =  Call i32 eval_op_0(cur_op_149, lhs_149, rhs_149) 
                    #saved register dumping to mem
    sw      s1,12(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
                    #arg load ended
    call    eval_op
    sw      a0,8(sp)
                    #       Call void stack_push_0(oprs_119, temp_102_149) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
                    #arg load ended
    call    stack_push
                    #      jump label: while.head_148 
    j       .while.head_148
                    #      label while.exit_148: 
.while.exit_148:
                    #      new_var temp_103_119:i32 
                    #      temp_103_119 =  Call i32 stack_peek_0(oprs_119) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    stack_peek
    sw      a0,4(sp)
                    #      ret temp_103_119 
    li      a1, 2224
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a2, 2216
    add     a2,sp,a2
    ld      s0,0(a2)
    sw      a0,4(sp)
                    #found literal reg Some(a3) already exist with 2232_0
    li      a3, 2232
    add     sp,a3,sp
    ret
                    #      label branch_false_131: 
.branch_false_131:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_79_128:i32 
                    #      temp_79_128 =  Call i32 next_token_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_token
    sw      a0,4(sp)
    sw      a0,120(sp)
                    #      jump label: while.head_135 
    j       .while.head_135
                    #      label while.head_135: 
.while.head_135:
                    #      new_var temp_80_134:i32 
                    #      temp_80_134 =  Call i32 get_op_prec_0(op_128) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,120(sp)
                    #arg load ended
    call    get_op_prec
    sw      a0,116(sp)
                    #      new_var temp_81_134:i32 
                    #      temp_81_134 =  Call i32 stack_peek_0(ops_119) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,116(sp)
                    #arg load ended
    call    stack_peek
    sw      a0,112(sp)
                    #      new_var temp_82_134:i32 
                    #      temp_82_134 =  Call i32 get_op_prec_0(temp_81_134) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,112(sp)
                    #arg load ended
    call    get_op_prec
    sw      a0,108(sp)
                    #      new_var temp_83_134:i1 
                    #      temp_83_134 = icmp i32 Sge temp_82_134, temp_80_134 
    slt     s2,a0,s1
    xori    s2,s2,1
                    #      new_var temp_84_134:i32 
                    #      temp_84_134 =  Call i32 stack_size_0(ops_119) 
                    #saved register dumping to mem
    sw      s1,116(sp)
    sb      s2,107(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,108(sp)
                    #arg load ended
    call    stack_size
    sw      a0,100(sp)
                    #      new_var temp_85_134:i1 
                    #      temp_85_134 = icmp i32 Ne temp_84_134, 0_0 
                    #found literal reg Some(a6) already exist with 0_0
    xor     s1,a0,a6
    snez    s1, s1
                    #      new_var temp_86_134:i1 
                    #      temp_86_134 = And i1 temp_85_134, temp_83_134 
    and     s3,s1,s2
                    #      br i1 temp_86_134, label while.body_135, label while.exit_135 
    bnez    s3, .while.body_135
    j       .while.exit_135
                    #      label while.body_135: 
.while.body_135:
                    #      new_var temp_87_136:i32 
                    #      temp_87_136 =  Call i32 stack_pop_0(ops_119) 
                    #saved register dumping to mem
    sb      s1,99(sp)
    sb      s2,107(sp)
    sb      s3,98(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,100(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,92(sp)
                    #      cur_op_136 = i32 temp_87_136 
    mv      s1, a0
                    #      new_var temp_88_136:i32 
                    #      temp_88_136 =  Call i32 stack_pop_0(oprs_119) 
                    #saved register dumping to mem
    sw      s1,88(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,92(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,84(sp)
                    #      rhs_136 = i32 temp_88_136 
    mv      s1, a0
                    #      new_var temp_89_136:i32 
                    #      temp_89_136 =  Call i32 stack_pop_0(oprs_119) 
                    #saved register dumping to mem
    sw      s1,80(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,84(sp)
                    #arg load ended
    call    stack_pop
    sw      a0,76(sp)
                    #      lhs_136 = i32 temp_89_136 
    mv      s1, a0
                    #      new_var temp_90_136:i32 
                    #      temp_90_136 =  Call i32 eval_op_0(cur_op_136, lhs_136, rhs_136) 
                    #saved register dumping to mem
    sw      s1,72(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,76(sp)
    li      a0, 2224
    add     a0,sp,a0
    sd      a1,0(a0)
    li      a1, 2216
    add     a1,sp,a1
    sd      a2,0(a1)
                    #arg load ended
    call    eval_op
    sw      a0,68(sp)
                    #       Call void stack_push_0(oprs_119, temp_90_136) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,68(sp)
                    #arg load ended
    call    stack_push
                    #      jump label: while.head_135 
    j       .while.head_135
                    #      label while.exit_135: 
.while.exit_135:
                    #       Call void stack_push_0(ops_119, op_128) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    stack_push
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_91_141:i32 
                    #      temp_91_141 = load *cur_token_0:ptr->i32 
                    #   load label cur_token as ptr to reg
    la      a0, cur_token
                    #occupy reg a0 with *cur_token_0
    lw      a1,0(a0)
                    #      new_var temp_92_141:i1 
                    #      temp_92_141 = icmp i32 Ne temp_91_141, 0_0 
                    #found literal reg Some(a6) already exist with 0_0
    xor     a2,a1,a6
    snez    a2, a2
                    #      br i1 temp_92_141, label branch_true_142, label branch_false_142 
    bnez    a2, .branch_true_142
    j       .branch_false_142
                    #      label branch_true_142: 
.branch_true_142:
                    #      new_var temp_93_141:i32 
                    #      temp_93_141 =  Call i32 panic_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    panic
    sw      a0,56(sp)
                    #      ret temp_93_141 
    li      s1, 2224
    add     s1,sp,s1
    ld      ra,0(s1)
    li      s2, 2216
    add     s2,sp,s2
    ld      s0,0(s2)
    sw      a0,56(sp)
                    #found literal reg Some(a3) already exist with 2232_0
    li      a3, 2232
    add     sp,a3,sp
    ret
                    #      label branch_false_142: 
.branch_false_142:
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_94_128:i32 
                    #      temp_94_128 = load *num_0:ptr->i32 
                    #   load label num as ptr to reg
    la      s3, num
                    #occupy reg s3 with *num_0
    lw      s4,0(s3)
                    #       Call void stack_push_0(oprs_119, temp_94_128) 
                    #saved register dumping to mem
    li      s1, 2224
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 2216
    add     s2,sp,s2
    sd      s2,0(s2)
    sw      s4,52(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,56(sp)
    sw      a1,64(sp)
                    #arg load ended
    call    stack_push
                    #      new_var temp_95_128:i32 
                    #      temp_95_128 =  Call i32 next_token_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_token
    sw      a0,48(sp)
                    #      jump label: while.head_127 
    j       .while.head_127
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_104:4|count:4|temp_105:4|temp_106:4|temp_107:1|none:3|temp_108:4|temp_109:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 temp_104_155 
                    #      alloc i32 count_155 
                    #      alloc i32 temp_105_155 
                    #      alloc i32 temp_106_155 
                    #      alloc i1 temp_107_3925 
                    #      alloc i32 temp_108_161 
                    #      alloc i32 temp_109_161 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_104_155:i32 
                    #      temp_104_155 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,28(sp)
                    #      count_155 = i32 temp_104_155 
    mv      a1, a0
                    #      new_var temp_105_155:i32 
                    #      temp_105_155 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,28(sp)
    sw      a0,20(sp)
                    #      new_var temp_106_155:i32 
                    #      temp_106_155 =  Call i32 next_token_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    next_token
    sw      a0,20(sp)
    sw      a0,16(sp)
                    #      jump label: while.head_160 
    j       .while.head_160
                    #      label while.head_160: 
.while.head_160:
                    #      new_var temp_107_3925:i1 
                    #      temp_107_3925 = icmp i32 Ne count_155, 0_0 
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
                    #      br i1 temp_107_3925, label while.body_160, label while.exit_160 
    bnez    a3, .while.body_160
    j       .while.exit_160
                    #      label while.body_160: 
.while.body_160:
                    #      new_var temp_108_161:i32 
                    #      temp_108_161 =  Call i32 eval_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    eval
    sw      a0,16(sp)
    sw      a0,8(sp)
                    #       Call void putint_0(temp_108_161) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_109_161:i32 
                    #      temp_109_161 = Sub i32 count_155, 1_0 
    li      a0, 1
    sub     a4,a1,a0
                    #      count_155 = i32 temp_109_161 
                    #      jump label: while.head_160 
    j       .while.head_160
                    #      label while.exit_160: 
.while.exit_160:
                    #      ret 0_0 
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.section        .data
    .align 4
    .globl cur_token
                    #      global i32 cur_token_0 
    .type cur_token,@object
cur_token:
    .word 0
    .align 4
    .globl other
                    #      global i32 other_0 
    .type other,@object
other:
    .word 0
    .align 4
    .globl num
                    #      global i32 num_0 
    .type num,@object
num:
    .word 0
    .align 4
    .globl last_char
                    #      global i32 last_char_0 
    .type last_char,@object
last_char:
    .word 32
    .align 4
    .globl TOKEN_OTHER
                    #      global i32 TOKEN_OTHER_0 
    .type TOKEN_OTHER,@object
TOKEN_OTHER:
    .word 1
    .align 4
    .globl TOKEN_NUM
                    #      global i32 TOKEN_NUM_0 
    .type TOKEN_NUM,@object
TOKEN_NUM:
    .word 0
