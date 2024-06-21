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
                    #      Define search_0 [root_23, x_23] -> search_ret_0 
    .globl search
    .type search,@function
search:
                    #mem layout:|ra_search:8|s0_search:8|root:4|x:4|temp_0:40000|temp_1:8|temp_2:4|temp_3:1|temp_4:1|temp_5:1|none:1|temp_6:40000|temp_7:8|temp_8:4|temp_9:1|none:3|temp_10:40000|temp_11:8|temp_12:4|temp_13:4|temp_14:40000|temp_15:8|temp_16:4|temp_17:4
    li      a2, -160088
    li      a2, -160088
    add     sp,a2,sp
    li      a3, 160080
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 160072
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 160088
    li      a5, 160088
    add     s0,a5,sp
                    #      alloc Array:i32:[Some(10000_0)] temp_0_26 
                    #      alloc ptr->i32 temp_1_26 
                    #      alloc i32 temp_2_26 
                    #      alloc i1 temp_3_26 
                    #      alloc i1 temp_4_26 
                    #      alloc i1 temp_5_26 
                    #      alloc Array:i32:[Some(10000_0)] temp_6_29 
                    #      alloc ptr->i32 temp_7_29 
                    #      alloc i32 temp_8_29 
                    #      alloc i1 temp_9_29 
                    #      alloc Array:i32:[Some(10000_0)] temp_10_29 
                    #      alloc ptr->i32 temp_11_29 
                    #      alloc i32 temp_12_29 
                    #      alloc i32 temp_13_29 
                    #      alloc Array:i32:[Some(10000_0)] temp_14_29 
                    #      alloc ptr->i32 temp_15_29 
                    #      alloc i32 temp_16_29 
                    #      alloc i32 temp_17_29 
                    #      label L20_0: 
.L20_0:
                    #      new_var temp_0_26:Array:i32:[Some(10000_0)] 
                    #      temp_0_26 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a6, value
                    #occupy reg a6 with *value_0
    lw      a7,0(a6)
                    #      new_var temp_1_26:ptr->i32 
                    #      new_var temp_2_26:i32 
                    #      temp_1_26 = getelementptr temp_0_26:Array:i32:[Some(10000_0)] [Some(root_23)] 
    li      s1, 0
    li      s2, 1
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_2_26 = load temp_1_26:ptr->i32 
    lw      s3,0(s1)
                    #      new_var temp_3_26:i1 
                    #      temp_3_26 = icmp i32 Eq temp_2_26, x_23 
    xor     s4,s3,a1
    seqz    s4, s4
                    #      new_var temp_4_26:i1 
                    #      temp_4_26 = icmp i32 Eq root_23, -1_0 
    li      s5, -1
    xor     s6,a0,s5
    seqz    s6, s6
                    #      new_var temp_5_26:i1 
                    #      temp_5_26 = Or i1 temp_4_26, temp_3_26 
                    #      br i1 temp_5_26, label branch_true_27, label branch_false_27 
    bnez    s7, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #      ret root_23 
    li      a2, 160080
    add     a2,sp,a2
    ld      ra,0(a2)
    li      a3, 160072
    add     a3,sp,a3
    ld      s0,0(a3)
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a4, 160088
    li      a4, 160088
    add     sp,a4,sp
    ret
                    #      label branch_false_27: 
.branch_false_27:
                    #      new_var temp_6_29:Array:i32:[Some(10000_0)] 
                    #      temp_6_29 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a2, value
                    #occupy reg a2 with *value_0
    lw      a3,0(a2)
                    #      new_var temp_7_29:ptr->i32 
                    #      new_var temp_8_29:i32 
                    #      temp_7_29 = getelementptr temp_6_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
    li      a4, 0
    li      a5, 1
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_8_29 = load temp_7_29:ptr->i32 
    lw      a6,0(a4)
                    #      new_var temp_9_29:i1 
                    #      temp_9_29 = icmp i32 Sgt x_23, temp_8_29 
    slt     s2,a6,a1
                    #      br i1 temp_9_29, label branch_true_30, label branch_false_30 
    bnez    s2, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      new_var temp_10_29:Array:i32:[Some(10000_0)] 
                    #      temp_10_29 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      a2, right_child
                    #occupy reg a2 with *right_child_0
    lw      a5,0(a2)
                    #      new_var temp_11_29:ptr->i32 
                    #      new_var temp_12_29:i32 
                    #      temp_11_29 = getelementptr temp_10_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
    li      s5, 0
    li      s8, 1
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_12_29 = load temp_11_29:ptr->i32 
    lw      s9,0(s5)
                    #      new_var temp_13_29:i32 
                    #      temp_13_29 =  Call i32 search_0(temp_12_29, x_23) 
                    #saved register dumping to mem
    li      s1, 120056
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 80035
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 120052
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 120051
    add     s4,sp,s4
    sb      s4,0(s4)
    li      s5, 40024
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s6, 120050
    add     s6,sp,s6
    sb      s6,0(s6)
    li      s7, 120049
    add     s7,sp,s7
    sb      s7,0(s7)
    li      s8, 40020
    add     s8,sp,s8
    sw      s9,0(s8)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s9, 40020
    add     s9,sp,s9
    lw      a0,0(s9)
    li      a1, 160064
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s10, 160064
    add     s10,sp,s10
    lw      a1,0(s10)
                    #arg load ended
    call    search
    li      a0, 40016
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      ret temp_13_29 
    li      a1, 160080
    add     a1,sp,a1
    ld      ra,0(a1)
    li      s11, 160072
    add     s11,sp,s11
    ld      s0,0(s11)
    li      a0, 40016
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 160088
    li      a2, 160088
    add     sp,a2,sp
    ret
                    #      label branch_false_30: 
.branch_false_30:
                    #      new_var temp_14_29:Array:i32:[Some(10000_0)] 
                    #      temp_14_29 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a2, left_child
                    #occupy reg a2 with *left_child_0
    lw      a5,0(a2)
                    #      new_var temp_15_29:ptr->i32 
                    #      new_var temp_16_29:i32 
                    #      temp_15_29 = getelementptr temp_14_29:Array:i32:[Some(10000_0)] [Some(root_23)] 
    li      s5, 0
    li      s8, 1
    add     s5,s5,a5
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_16_29 = load temp_15_29:ptr->i32 
    lw      s9,0(s5)
                    #      new_var temp_17_29:i32 
                    #      temp_17_29 =  Call i32 search_0(temp_16_29, x_23) 
                    #saved register dumping to mem
    li      s1, 120056
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 80035
    add     s2,sp,s2
    sb      s2,0(s2)
    li      s3, 120052
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 120051
    add     s4,sp,s4
    sb      s4,0(s4)
    sd      s5,8(sp)
    li      s5, 120050
    add     s5,sp,s5
    sb      s6,0(s5)
    li      s6, 120049
    add     s6,sp,s6
    sb      s7,0(s6)
    sw      s9,4(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 160068
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,4(sp)
    li      a1, 160064
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s7, 160064
    add     s7,sp,s7
    lw      a1,0(s7)
                    #arg load ended
    call    search
    sw      a0,0(sp)
                    #      ret temp_17_29 
    li      a1, 160080
    add     a1,sp,a1
    ld      ra,0(a1)
    li      s8, 160072
    add     s8,sp,s8
    ld      s0,0(s8)
    sw      a0,0(sp)
    li      s9, 160088
    li      s9, 160088
    add     sp,s9,sp
    ret
                    #      label L21_0: 
.L21_0:
                    #      label L22_0: 
.L22_0:
                    #      Define find_minimum_0 [root_33] -> find_minimum_ret_0 
    .globl find_minimum
    .type find_minimum,@function
find_minimum:
                    #mem layout:|ra_find_minimum:8|s0_find_minimum:8|root:4|temp_18:1|none:3|temp_19:4|temp_20:40000|none:4|temp_21:8|temp_22:4|temp_23:1|none:3|temp_24:40000|temp_25:8|temp_26:4|temp_27:4
    li      a1, -80064
    li      a1, -80064
    add     sp,a1,sp
    li      a2, 80056
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 80048
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 80064
    li      a4, 80064
    add     s0,a4,sp
                    #      alloc i1 temp_18_36 
                    #      alloc i32 temp_19_38 
                    #      alloc Array:i32:[Some(10000_0)] temp_20_40 
                    #      alloc ptr->i32 temp_21_40 
                    #      alloc i32 temp_22_40 
                    #      alloc i1 temp_23_40 
                    #      alloc Array:i32:[Some(10000_0)] temp_24_42 
                    #      alloc ptr->i32 temp_25_42 
                    #      alloc i32 temp_26_42 
                    #      alloc i32 temp_27_42 
                    #      label L17_0: 
.L17_0:
                    #      new_var temp_18_36:i1 
                    #      temp_18_36 = icmp i32 Eq root_33, -1_0 
    li      a5, -1
    xor     a6,a0,a5
    seqz    a6, a6
                    #      br i1 temp_18_36, label branch_true_37, label branch_false_37 
    bnez    a6, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      new_var temp_19_38:i32 
                    #      temp_19_38 = Sub i32 0_0, 1_0 
    li      a1, 0
    li      a2, 1
    sub     a3,a1,a2
                    #      ret temp_19_38 
    li      a4, 80056
    add     a4,sp,a4
    ld      ra,0(a4)
    li      a5, 80048
    add     a5,sp,a5
    ld      s0,0(a5)
    li      a3, 80036
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 80064
    li      a7, 80064
    add     sp,a7,sp
    ret
                    #      label branch_false_37: 
.branch_false_37:
                    #      new_var temp_20_40:Array:i32:[Some(10000_0)] 
                    #      temp_20_40 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a1, left_child
                    #occupy reg a1 with *left_child_0
    lw      a2,0(a1)
                    #      new_var temp_21_40:ptr->i32 
                    #      new_var temp_22_40:i32 
                    #      temp_21_40 = getelementptr temp_20_40:Array:i32:[Some(10000_0)] [Some(root_33)] 
    li      a3, 0
    li      a4, 1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_22_40 = load temp_21_40:ptr->i32 
    lw      a5,0(a3)
                    #      new_var temp_23_40:i1 
                    #      temp_23_40 = icmp i32 Ne temp_22_40, -1_0 
    li      a7, -1
    xor     s1,a5,a7
    snez    s1, s1
                    #      br i1 temp_23_40, label branch_true_41, label branch_false_41 
    bnez    s1, .branch_true_41
    j       .branch_false_41
                    #      label branch_true_41: 
.branch_true_41:
                    #      new_var temp_24_42:Array:i32:[Some(10000_0)] 
                    #      temp_24_42 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a1, left_child
                    #occupy reg a1 with *left_child_0
    lw      a4,0(a1)
                    #      new_var temp_25_42:ptr->i32 
                    #      new_var temp_26_42:i32 
                    #      temp_25_42 = getelementptr temp_24_42:Array:i32:[Some(10000_0)] [Some(root_33)] 
    li      a7, 0
    li      s2, 1
    add     a7,a7,a4
    slli a7,a7,2
    add     a7,a7,sp
    add     a7,a7,a7
                    #      temp_26_42 = load temp_25_42:ptr->i32 
    lw      s3,0(a7)
                    #      new_var temp_27_42:i32 
                    #      temp_27_42 =  Call i32 find_minimum_0(temp_26_42) 
                    #saved register dumping to mem
    li      s1, 40019
    add     s1,sp,s1
    sb      s1,0(s1)
    sw      s3,4(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,4(sp)
                    #arg load ended
    call    find_minimum
    sw      a0,0(sp)
                    #      ret temp_27_42 
    li      s2, 80056
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s3, 80048
    add     s3,sp,s3
    ld      s0,0(s3)
    sw      a0,0(sp)
    li      s4, 80064
    li      s4, 80064
    add     sp,s4,sp
    ret
                    #      label branch_false_41: 
.branch_false_41:
                    #      label L18_0: 
.L18_0:
                    #      label L19_0: 
.L19_0:
                    #      ret root_33 
    li      a1, 80056
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a4, 80048
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a0, 80044
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a7, 80064
    li      a7, 80064
    add     sp,a7,sp
    ret
                    #      Define new_node_0 [x_45] -> new_node_ret_0 
    .globl new_node
    .type new_node,@function
new_node:
                    #mem layout:|ra_new_node:8|s0_new_node:8|x:4|temp_28:4|temp_29:8|temp_30:4|none:4|temp_31:8|temp_32:4|none:4|temp_33:8|temp_34:4|temp_35:4|temp_36:4|temp_37:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 temp_28_47 
                    #      alloc ptr->i32 temp_29_47 
                    #      alloc i32 temp_30_47 
                    #      alloc ptr->i32 temp_31_47 
                    #      alloc i32 temp_32_47 
                    #      alloc ptr->i32 temp_33_47 
                    #      alloc i32 temp_34_47 
                    #      alloc i32 temp_35_47 
                    #      alloc i32 temp_36_47 
                    #      alloc i32 temp_37_47 
                    #      label L16_0: 
.L16_0:
                    #      new_var temp_28_47:i32 
                    #      temp_28_47 = load *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      a1, now
                    #occupy reg a1 with *now_0
    lw      a2,0(a1)
                    #      new_var temp_29_47:ptr->i32 
                    #      temp_29_47 = getelementptr value_0:Array:i32:[Some(10000_0)] [Some(temp_28_47)] 
    li      a3, 0
    li      a4, 1
    mul     a5,a4,a2
                    #occupy reg a5 with value_0
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,a3
                    #      store x_45:i32 temp_29_47:ptr->i32 
    sd      a0,0(a3)
                    #      mu value_0:149 
                    #      value_0 = chi value_0:149 
                    #      new_var temp_30_47:i32 
                    #      temp_30_47 = load *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      a6, now
                    #occupy reg a6 with *now_0
    lw      a7,0(a6)
                    #      new_var temp_31_47:ptr->i32 
                    #      temp_31_47 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(temp_30_47)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s2,a4,a7
                    #occupy reg s2 with left_child_0
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
                    #      store -1_0:i32 temp_31_47:ptr->i32 
    li      s3, -1
    sd      s3,0(s1)
                    #      mu left_child_0:158 
                    #      left_child_0 = chi left_child_0:158 
                    #      new_var temp_32_47:i32 
                    #      temp_32_47 = load *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      s4, now
                    #occupy reg s4 with *now_0
    lw      s5,0(s4)
                    #      new_var temp_33_47:ptr->i32 
                    #      temp_33_47 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(temp_32_47)] 
    li      s6, 0
                    #found literal reg Some(a4) already exist with 1_0
    mul     s7,a4,s5
                    #occupy reg s7 with right_child_0
    add     s6,s6,s7
    slli s6,s6,2
    add     s6,s6,s6
                    #      store -1_0:i32 temp_33_47:ptr->i32 
                    #found literal reg Some(s3) already exist with -1_0
    sd      s3,0(s6)
                    #      mu right_child_0:167 
                    #      right_child_0 = chi right_child_0:167 
                    #      new_var temp_34_47:i32 
                    #      temp_34_47 = load *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      s8, now
                    #occupy reg s8 with *now_0
    lw      s9,0(s8)
                    #      new_var temp_35_47:i32 
                    #      temp_35_47 = Add i32 temp_34_47, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s10,s9,a4
                    #      store temp_35_47:i32 *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      s11, now
                    #occupy reg s11 with *now_0
    sd      s10,0(s11)
                    #      new_var temp_36_47:i32 
                    #      temp_36_47 = load *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      a1, now
                    #occupy reg a1 with *now_0
    lw      a4,0(a1)
                    #      new_var temp_37_47:i32 
                    #      temp_37_47 = Sub i32 temp_36_47, 1_0 
    li      a1, 1
    sub     a5,a4,a1
                    #      ret temp_37_47 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a5,0(sp)
    sw      a0,60(sp)
    addi    sp,sp,80
    ret
                    #      Define insert_0 [root_53, x_53] -> insert_ret_0 
    .globl insert
    .type insert,@function
insert:
                    #mem layout:|ra_insert:8|s0_insert:8|root:4|x:4|temp_38:1|none:3|temp_39:4|temp_40:40000|temp_41:8|temp_42:4|temp_43:1|none:3|temp_44:8|temp_45:40000|temp_46:8|temp_47:4|temp_48:4|temp_49:8|temp_50:40000|temp_51:8|temp_52:4|temp_53:4
    li      a2, -120096
    li      a2, -120096
    add     sp,a2,sp
    li      a3, 120088
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 120080
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 120096
    li      a5, 120096
    add     s0,a5,sp
                    #      alloc i1 temp_38_56 
                    #      alloc i32 temp_39_58 
                    #      alloc Array:i32:[Some(10000_0)] temp_40_60 
                    #      alloc ptr->i32 temp_41_60 
                    #      alloc i32 temp_42_60 
                    #      alloc i1 temp_43_60 
                    #      alloc ptr->i32 temp_44_60 
                    #      alloc Array:i32:[Some(10000_0)] temp_45_60 
                    #      alloc ptr->i32 temp_46_60 
                    #      alloc i32 temp_47_60 
                    #      alloc i32 temp_48_60 
                    #      alloc ptr->i32 temp_49_63 
                    #      alloc Array:i32:[Some(10000_0)] temp_50_63 
                    #      alloc ptr->i32 temp_51_63 
                    #      alloc i32 temp_52_63 
                    #      alloc i32 temp_53_63 
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_38_56:i1 
                    #      temp_38_56 = icmp i32 Eq root_53, -1_0 
    li      a6, -1
    xor     a7,a0,a6
    seqz    a7, a7
                    #      br i1 temp_38_56, label branch_true_57, label branch_false_57 
    bnez    a7, .branch_true_57
    j       .branch_false_57
                    #      label branch_true_57: 
.branch_true_57:
                    #      new_var temp_39_58:i32 
                    #      temp_39_58 =  Call i32 new_node_0(x_53) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    new_node
    li      a0, 120064
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      ret temp_39_58 
    li      a2, 120088
    add     a2,sp,a2
    ld      ra,0(a2)
    li      a3, 120080
    add     a3,sp,a3
    ld      s0,0(a3)
    li      a0, 120064
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a4, 120096
    li      a4, 120096
    add     sp,a4,sp
    ret
                    #      label branch_false_57: 
.branch_false_57:
                    #      new_var temp_40_60:Array:i32:[Some(10000_0)] 
                    #      temp_40_60 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a2, value
                    #occupy reg a2 with *value_0
    lw      a3,0(a2)
                    #      new_var temp_41_60:ptr->i32 
                    #      new_var temp_42_60:i32 
                    #      temp_41_60 = getelementptr temp_40_60:Array:i32:[Some(10000_0)] [Some(root_53)] 
    li      a4, 0
    li      a5, 1
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_42_60 = load temp_41_60:ptr->i32 
    lw      a6,0(a4)
                    #      new_var temp_43_60:i1 
                    #      temp_43_60 = icmp i32 Sgt x_53, temp_42_60 
    slt     s1,a6,a1
                    #      br i1 temp_43_60, label branch_true_61, label branch_false_61 
    bnez    s1, .branch_true_61
    j       .branch_false_61
                    #      label branch_true_61: 
.branch_true_61:
                    #      new_var temp_44_60:ptr->i32 
                    #      temp_44_60 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_53)] 
    li      a2, 0
    li      a5, 1
    mul     s2,a5,a0
                    #occupy reg s2 with right_child_0
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_45_60:Array:i32:[Some(10000_0)] 
                    #      temp_45_60 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      s3, right_child
                    #occupy reg s3 with *right_child_0
    lw      s4,0(s3)
                    #      new_var temp_46_60:ptr->i32 
                    #      new_var temp_47_60:i32 
                    #      temp_46_60 = getelementptr temp_45_60:Array:i32:[Some(10000_0)] [Some(root_53)] 
    li      s5, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_47_60 = load temp_46_60:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_48_60:i32 
                    #      temp_48_60 =  Call i32 insert_0(temp_47_60, x_53) 
                    #saved register dumping to mem
    li      s1, 80051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 80036
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 40032
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 40028
    add     s4,sp,s4
    sw      s6,0(s4)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s5, 40028
    add     s5,sp,s5
    lw      a0,0(s5)
    li      a1, 120072
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s6, 120072
    add     s6,sp,s6
    lw      a1,0(s6)
                    #arg load ended
    call    insert
    li      a0, 40024
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_48_60:i32 temp_44_60:ptr->i32 
    sd      a0,0(a2)
                    #      mu right_child_0:228 
                    #      right_child_0 = chi right_child_0:228 
                    #      jump label: L13_0 
    j       .L13_0
                    #      label branch_false_61: 
.branch_false_61:
                    #      new_var temp_49_63:ptr->i32 
                    #      temp_49_63 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(root_53)] 
    li      a2, 0
    li      a5, 1
    mul     s2,a5,a0
                    #occupy reg s2 with left_child_0
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_50_63:Array:i32:[Some(10000_0)] 
                    #      temp_50_63 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      s3, left_child
                    #occupy reg s3 with *left_child_0
    lw      s4,0(s3)
                    #      new_var temp_51_63:ptr->i32 
                    #      new_var temp_52_63:i32 
                    #      temp_51_63 = getelementptr temp_50_63:Array:i32:[Some(10000_0)] [Some(root_53)] 
    li      s5, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_52_63 = load temp_51_63:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_53_63:i32 
                    #      temp_53_63 =  Call i32 insert_0(temp_52_63, x_53) 
                    #saved register dumping to mem
    li      s1, 80051
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 40012
    add     s2,sp,s2
    sw      s4,0(s2)
    sd      s5,8(sp)
    sw      s6,4(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120076
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,4(sp)
    li      a1, 120072
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s3, 120072
    add     s3,sp,s3
    lw      a1,0(s3)
                    #arg load ended
    call    insert
    sw      a0,0(sp)
                    #      store temp_53_63:i32 temp_49_63:ptr->i32 
    sd      a0,0(a2)
                    #      mu left_child_0:246 
                    #      left_child_0 = chi left_child_0:246 
                    #      jump label: L13_0 
    sw      a0,0(sp)
    li      a1, 40024
    add     a1,sp,a1
    lw      a0,0(a1)
    li      s3, 120072
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s5, 120072
    add     s5,sp,s5
    lw      s6,0(s5)
    li      a1, 40024
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s5, 120072
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s7, 40028
    add     s7,sp,s7
    lw      s5,0(s7)
    li      a2, 40016
    add     a2,sp,a2
    sd      a2,0(a2)
    li      a3, 120060
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 80040
    add     a3,sp,a3
    ld      a2,0(a3)
    li      s7, 40028
    add     s7,sp,s7
    sw      s7,0(s7)
    j       .L13_0
                    #      label L13_0: 
.L13_0:
                    #      label L14_0: 
.L14_0:
                    #      label L15_0: 
.L15_0:
                    #      ret root_53 
    li      a1, 120088
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a5, 120080
    add     a5,sp,a5
    ld      s0,0(a5)
    li      a0, 40024
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 120096
    li      s1, 120096
    add     sp,s1,sp
    ret
                    #      Define delete_0 [root_66, x_66] -> delete_ret_0 
    .globl delete
    .type delete,@function
delete:
                    #mem layout:|ra_delete:8|s0_delete:8|root:4|x:4|temp_54:1|none:3|temp_55:4|temp_56:40000|temp_57:8|temp_58:4|temp_59:1|none:3|temp_60:8|temp_61:40000|temp_62:8|temp_63:4|temp_64:4|temp_65:40000|temp_66:8|temp_67:4|temp_68:1|none:3|temp_69:8|temp_70:40000|temp_71:8|temp_72:4|temp_73:4|temp_74:40000|temp_75:8|temp_76:4|temp_77:1|none:3|temp_78:40000|temp_79:8|temp_80:4|temp_81:1|temp_82:1|none:2|temp_83:4|temp_84:40000|none:4|temp_85:8|temp_86:4|temp_87:1|none:3|temp_88:40000|temp_89:8|temp_90:4|temp_91:1|temp_92:1|none:2|temp_93:40000|temp_94:8|temp_95:4|temp_96:1|none:3|temp_97:40000|temp_98:8|temp_99:4|temp_100:40000|none:4|temp_101:8|temp_102:4|temp_103:40000|none:4|temp_104:8|temp_105:4|temp_106:4|tmp:4|none:4|temp_107:8|temp_108:40000|temp_109:8|temp_110:4|none:4|temp_111:8|temp_112:40000|temp_113:8|temp_114:4|temp_115:40000|none:4|temp_116:8|temp_117:4|temp_118:4
    li      a2, -600320
    li      a2, -600320
    add     sp,a2,sp
    li      a3, 600312
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 600304
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 600320
    li      a5, 600320
    add     s0,a5,sp
                    #      alloc i1 temp_54_69 
                    #      alloc i32 temp_55_69 
                    #      alloc Array:i32:[Some(10000_0)] temp_56_72 
                    #      alloc ptr->i32 temp_57_72 
                    #      alloc i32 temp_58_72 
                    #      alloc i1 temp_59_72 
                    #      alloc ptr->i32 temp_60_72 
                    #      alloc Array:i32:[Some(10000_0)] temp_61_72 
                    #      alloc ptr->i32 temp_62_72 
                    #      alloc i32 temp_63_72 
                    #      alloc i32 temp_64_72 
                    #      alloc Array:i32:[Some(10000_0)] temp_65_75 
                    #      alloc ptr->i32 temp_66_75 
                    #      alloc i32 temp_67_75 
                    #      alloc i1 temp_68_75 
                    #      alloc ptr->i32 temp_69_75 
                    #      alloc Array:i32:[Some(10000_0)] temp_70_75 
                    #      alloc ptr->i32 temp_71_75 
                    #      alloc i32 temp_72_75 
                    #      alloc i32 temp_73_75 
                    #      alloc Array:i32:[Some(10000_0)] temp_74_78 
                    #      alloc ptr->i32 temp_75_78 
                    #      alloc i32 temp_76_78 
                    #      alloc i1 temp_77_78 
                    #      alloc Array:i32:[Some(10000_0)] temp_78_78 
                    #      alloc ptr->i32 temp_79_78 
                    #      alloc i32 temp_80_78 
                    #      alloc i1 temp_81_78 
                    #      alloc i1 temp_82_78 
                    #      alloc i32 temp_83_78 
                    #      alloc Array:i32:[Some(10000_0)] temp_84_81 
                    #      alloc ptr->i32 temp_85_81 
                    #      alloc i32 temp_86_81 
                    #      alloc i1 temp_87_81 
                    #      alloc Array:i32:[Some(10000_0)] temp_88_81 
                    #      alloc ptr->i32 temp_89_81 
                    #      alloc i32 temp_90_81 
                    #      alloc i1 temp_91_81 
                    #      alloc i1 temp_92_81 
                    #      alloc Array:i32:[Some(10000_0)] temp_93_83 
                    #      alloc ptr->i32 temp_94_83 
                    #      alloc i32 temp_95_83 
                    #      alloc i1 temp_96_83 
                    #      alloc Array:i32:[Some(10000_0)] temp_97_83 
                    #      alloc ptr->i32 temp_98_83 
                    #      alloc i32 temp_99_83 
                    #      alloc Array:i32:[Some(10000_0)] temp_100_83 
                    #      alloc ptr->i32 temp_101_83 
                    #      alloc i32 temp_102_83 
                    #      alloc Array:i32:[Some(10000_0)] temp_103_87 
                    #      alloc ptr->i32 temp_104_87 
                    #      alloc i32 temp_105_87 
                    #      alloc i32 temp_106_87 
                    #      alloc i32 tmp_87 
                    #      alloc ptr->i32 temp_107_87 
                    #      alloc Array:i32:[Some(10000_0)] temp_108_87 
                    #      alloc ptr->i32 temp_109_87 
                    #      alloc i32 temp_110_87 
                    #      alloc ptr->i32 temp_111_87 
                    #      alloc Array:i32:[Some(10000_0)] temp_112_87 
                    #      alloc ptr->i32 temp_113_87 
                    #      alloc i32 temp_114_87 
                    #      alloc Array:i32:[Some(10000_0)] temp_115_87 
                    #      alloc ptr->i32 temp_116_87 
                    #      alloc i32 temp_117_87 
                    #      alloc i32 temp_118_87 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_54_69:i1 
                    #      temp_54_69 = icmp i32 Eq root_66, -1_0 
    li      a6, -1
    xor     a7,a0,a6
    seqz    a7, a7
                    #      br i1 temp_54_69, label branch_true_70, label branch_false_70 
    bnez    a7, .branch_true_70
    j       .branch_false_70
                    #      label branch_true_70: 
.branch_true_70:
                    #      new_var temp_55_69:i32 
                    #      temp_55_69 = Sub i32 0_0, 1_0 
    li      a2, 0
    li      a3, 1
    sub     a4,a2,a3
                    #      ret temp_55_69 
    li      a5, 600312
    add     a5,sp,a5
    ld      ra,0(a5)
    li      a6, 600304
    add     a6,sp,a6
    ld      s0,0(a6)
    li      a4, 600288
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 600320
    li      s1, 600320
    add     sp,s1,sp
    ret
                    #      label branch_false_70: 
.branch_false_70:
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_56_72:Array:i32:[Some(10000_0)] 
                    #      temp_56_72 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a2, value
                    #occupy reg a2 with *value_0
    lw      a3,0(a2)
                    #      new_var temp_57_72:ptr->i32 
                    #      new_var temp_58_72:i32 
                    #      temp_57_72 = getelementptr temp_56_72:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a4, 0
    li      a5, 1
    add     a4,a4,a3
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
                    #      temp_58_72 = load temp_57_72:ptr->i32 
    lw      a6,0(a4)
                    #      new_var temp_59_72:i1 
                    #      temp_59_72 = icmp i32 Sgt x_66, temp_58_72 
    slt     s1,a6,a1
                    #      br i1 temp_59_72, label branch_true_73, label branch_false_73 
    bnez    s1, .branch_true_73
    j       .branch_false_73
                    #      label branch_true_73: 
.branch_true_73:
                    #      new_var temp_60_72:ptr->i32 
                    #      temp_60_72 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a2, 0
    li      a5, 1
    mul     s2,a5,a0
                    #occupy reg s2 with right_child_0
    add     a2,a2,s2
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_61_72:Array:i32:[Some(10000_0)] 
                    #      temp_61_72 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      s3, right_child
                    #occupy reg s3 with *right_child_0
    lw      s4,0(s3)
                    #      new_var temp_62_72:ptr->i32 
                    #      new_var temp_63_72:i32 
                    #      temp_62_72 = getelementptr temp_61_72:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s5, 0
                    #found literal reg Some(a5) already exist with 1_0
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_63_72 = load temp_62_72:ptr->i32 
    lw      s6,0(s5)
                    #      new_var temp_64_72:i32 
                    #      temp_64_72 =  Call i32 delete_0(temp_63_72, x_66) 
                    #saved register dumping to mem
    li      s1, 560275
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 560260
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 520256
    add     s3,sp,s3
    sd      s5,0(s3)
    li      s4, 520252
    add     s4,sp,s4
    sw      s6,0(s4)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s5, 520252
    add     s5,sp,s5
    lw      a0,0(s5)
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s6, 600296
    add     s6,sp,s6
    lw      a1,0(s6)
                    #arg load ended
    call    delete
    li      a0, 520248
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_64_72:i32 temp_60_72:ptr->i32 
    sd      a0,0(a2)
                    #      mu right_child_0:290 
                    #      right_child_0 = chi right_child_0:290 
                    #      jump label: L10_0 
    j       .L10_0
                    #      label branch_false_73: 
.branch_false_73:
                    #      new_var temp_65_75:Array:i32:[Some(10000_0)] 
                    #      temp_65_75 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a2, value
                    #occupy reg a2 with *value_0
    lw      a5,0(a2)
                    #      new_var temp_66_75:ptr->i32 
                    #      new_var temp_67_75:i32 
                    #      temp_66_75 = getelementptr temp_65_75:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s2, 0
    li      s3, 1
    add     s2,s2,a5
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_67_75 = load temp_66_75:ptr->i32 
    lw      s4,0(s2)
                    #      new_var temp_68_75:i1 
                    #      temp_68_75 = icmp i32 Slt x_66, temp_67_75 
    slt     s5,a1,s4
                    #      br i1 temp_68_75, label branch_true_76, label branch_false_76 
    bnez    s5, .branch_true_76
    j       .branch_false_76
                    #      label branch_true_76: 
.branch_true_76:
                    #      new_var temp_69_75:ptr->i32 
                    #      temp_69_75 = getelementptr left_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a2, 0
    li      s3, 1
    mul     s6,s3,a0
                    #occupy reg s6 with left_child_0
    add     a2,a2,s6
    slli a2,a2,2
    add     a2,a2,a2
                    #      new_var temp_70_75:Array:i32:[Some(10000_0)] 
                    #      temp_70_75 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      s7, left_child
                    #occupy reg s7 with *left_child_0
    lw      s8,0(s7)
                    #      new_var temp_71_75:ptr->i32 
                    #      new_var temp_72_75:i32 
                    #      temp_71_75 = getelementptr temp_70_75:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s9, 0
                    #found literal reg Some(s3) already exist with 1_0
    add     s9,s9,s8
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
                    #      temp_72_75 = load temp_71_75:ptr->i32 
    lw      s10,0(s9)
                    #      new_var temp_73_75:i32 
                    #      temp_73_75 =  Call i32 delete_0(temp_72_75, x_66) 
                    #saved register dumping to mem
    li      s1, 560275
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 480240
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s3, 480236
    add     s3,sp,s3
    sw      s4,0(s3)
    li      s4, 480235
    add     s4,sp,s4
    sb      s5,0(s4)
    li      s5, 480220
    add     s5,sp,s5
    sw      s8,0(s5)
    li      s6, 440216
    add     s6,sp,s6
    sd      s9,0(s6)
    li      s7, 440212
    add     s7,sp,s7
    sw      s10,0(s7)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s8, 440212
    add     s8,sp,s8
    lw      a0,0(s8)
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      s9, 600296
    add     s9,sp,s9
    lw      a1,0(s9)
                    #arg load ended
    call    delete
    li      a0, 440208
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_73_75:i32 temp_69_75:ptr->i32 
    sd      a0,0(a2)
                    #      mu left_child_0:325 
                    #      left_child_0 = chi left_child_0:325 
                    #      jump label: L9_0 
    j       .L9_0
                    #      label branch_false_76: 
.branch_false_76:
                    #      new_var temp_74_78:Array:i32:[Some(10000_0)] 
                    #      temp_74_78 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      a2, right_child
                    #occupy reg a2 with *right_child_0
    lw      s3,0(a2)
                    #      new_var temp_75_78:ptr->i32 
                    #      new_var temp_76_78:i32 
                    #      temp_75_78 = getelementptr temp_74_78:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s6, 0
    li      s7, 1
    add     s6,s6,s3
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_76_78 = load temp_75_78:ptr->i32 
    lw      s8,0(s6)
                    #      new_var temp_77_78:i1 
                    #      temp_77_78 = icmp i32 Eq temp_76_78, -1_0 
    li      s9, -1
    xor     s10,s8,s9
    seqz    s10, s10
                    #      new_var temp_78_78:Array:i32:[Some(10000_0)] 
                    #      temp_78_78 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      s11, left_child
                    #occupy reg s11 with *left_child_0
    lw      a2,0(s11)
                    #      new_var temp_79_78:ptr->i32 
                    #      new_var temp_80_78:i32 
                    #      temp_79_78 = getelementptr temp_78_78:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s7, 0
    li      s9, 1
    add     s7,s7,a2
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_80_78 = load temp_79_78:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_81_78:i1 
                    #      temp_81_78 = icmp i32 Eq temp_80_78, -1_0 
    li      s11, -1
    li      a0, 600300
    add     a0,sp,a0
    sw      a0,0(a0)
    xor     a0,s9,s11
    seqz    a0, a0
                    #      new_var temp_82_78:i1 
                    #      temp_82_78 = And i1 temp_81_78, temp_77_78 
    and     s11,a0,s10
                    #      br i1 temp_82_78, label branch_true_79, label branch_false_79 
    bnez    s11, .branch_true_79
    j       .branch_false_79
                    #      label branch_true_79: 
.branch_true_79:
                    #      new_var temp_83_78:i32 
                    #      temp_83_78 = Sub i32 0_0, 1_0 
    li      a0, 360179
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 0
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 400188
    add     a2,sp,a2
    sw      a2,0(a2)
    sub     a2,a0,a1
                    #      ret temp_83_78 
    li      a0, 600312
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 600304
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a2, 360172
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a0, 600312
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a2, 600320
    li      a2, 600320
    add     sp,a2,sp
    ret
                    #      label branch_false_79: 
.branch_false_79:
                    #      new_var temp_84_81:Array:i32:[Some(10000_0)] 
                    #      temp_84_81 = load *right_child_0:ptr->i32 
    li      a0, 360179
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label right_child as ptr to reg
    la      a0, right_child
                    #occupy reg a0 with *right_child_0
    li      a1, 600296
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_85_81:ptr->i32 
                    #      new_var temp_86_81:i32 
                    #      temp_85_81 = getelementptr temp_84_81:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 360168
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 400188
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a3, 600284
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_86_81 = load temp_85_81:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_87_81:i1 
                    #      temp_87_81 = icmp i32 Eq temp_86_81, -1_0 
    li      a0, 320160
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, -1
    li      a2, 600300
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_88_81:Array:i32:[Some(10000_0)] 
                    #      temp_88_81 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a0, left_child
                    #occupy reg a0 with *left_child_0
    li      a1, 320156
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_89_81:ptr->i32 
                    #      new_var temp_90_81:i32 
                    #      temp_89_81 = getelementptr temp_88_81:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 320148
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 320155
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 360168
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_90_81 = load temp_89_81:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_91_81:i1 
                    #      temp_91_81 = icmp i32 Eq temp_90_81, -1_0 
    li      a0, 280144
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, -1
    li      a2, 600300
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      new_var temp_92_81:i1 
                    #      temp_92_81 = Or i1 temp_91_81, temp_87_81 
                    #      br i1 temp_92_81, label branch_true_82, label branch_false_82 
    li      a0, 320155
    add     a0,sp,a0
    sb      a0,0(a0)
    bnez    a0, .branch_true_82
    j       .branch_false_82
                    #      label branch_true_82: 
.branch_true_82:
                    #      new_var temp_93_83:Array:i32:[Some(10000_0)] 
                    #      temp_93_83 = load *left_child_0:ptr->i32 
    li      a0, 280138
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label left_child as ptr to reg
    la      a0, left_child
                    #occupy reg a0 with *left_child_0
    li      a1, 280140
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_94_83:ptr->i32 
                    #      new_var temp_95_83:i32 
                    #      temp_94_83 = getelementptr temp_93_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 280132
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 280139
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 320148
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_95_83 = load temp_94_83:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_96_83:i1 
                    #      temp_96_83 = icmp i32 Eq temp_95_83, -1_0 
    li      a0, 240128
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, -1
    li      a2, 600300
    add     a2,sp,a2
    sw      a2,0(a2)
    xor     a2,a1,a0
    seqz    a2, a2
                    #      br i1 temp_96_83, label branch_true_84, label branch_false_84 
    bnez    a2, .branch_true_84
    j       .branch_false_84
                    #      label branch_true_84: 
.branch_true_84:
                    #      new_var temp_97_83:Array:i32:[Some(10000_0)] 
                    #      temp_97_83 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      a0, right_child
                    #occupy reg a0 with *right_child_0
    li      a1, 240124
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_98_83:ptr->i32 
                    #      new_var temp_99_83:i32 
                    #      temp_98_83 = getelementptr temp_97_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 240116
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 240123
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 280132
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_99_83 = load temp_98_83:ptr->i32 
    lw      a1,0(a0)
                    #      ret temp_99_83 
    li      a0, 200112
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 600312
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 600312
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 600304
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a1, 200108
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 600304
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 600320
    li      a1, 600320
    add     sp,a1,sp
    ret
                    #      label branch_false_84: 
.branch_false_84:
                    #      new_var temp_100_83:Array:i32:[Some(10000_0)] 
                    #      temp_100_83 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a0, left_child
                    #occupy reg a0 with *left_child_0
    li      a1, 240124
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_101_83:ptr->i32 
                    #      new_var temp_102_83:i32 
                    #      temp_101_83 = getelementptr temp_100_83:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 200104
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 240123
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 280132
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_102_83 = load temp_101_83:ptr->i32 
    lw      a1,0(a0)
                    #      ret temp_102_83 
    li      a0, 160096
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 600312
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 600312
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 600304
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a1, 160092
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a0, 600304
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a1, 600320
    li      a1, 600320
    add     sp,a1,sp
    ret
                    #      label L6_0: 
.L6_0:
                    #      label branch_false_82: 
.branch_false_82:
                    #      new_var temp_103_87:Array:i32:[Some(10000_0)] 
                    #      temp_103_87 = load *right_child_0:ptr->i32 
    li      a0, 280138
    add     a0,sp,a0
    sb      a0,0(a0)
                    #   load label right_child as ptr to reg
    la      a0, right_child
                    #occupy reg a0 with *right_child_0
    li      a1, 280140
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_104_87:ptr->i32 
                    #      new_var temp_105_87:i32 
                    #      temp_104_87 = getelementptr temp_103_87:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      a0, 0
    li      a1, 160088
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 1
    li      a2, 280139
    add     a2,sp,a2
    sb      a2,0(a2)
    li      a3, 320148
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_105_87 = load temp_104_87:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_106_87:i32 
                    #      temp_106_87 =  Call i32 find_minimum_0(temp_105_87) 
                    #saved register dumping to mem
    li      s1, 560275
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 480240
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s3, 440204
    add     s3,sp,s3
    sw      s3,0(s3)
    li      s4, 480236
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 480235
    add     s5,sp,s5
    sb      s5,0(s5)
    li      s6, 400200
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 360184
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 400196
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 360180
    add     s9,sp,s9
    sw      s9,0(s9)
    li      s10, 400195
    add     s10,sp,s10
    sb      s10,0(s10)
    li      s11, 360178
    add     s11,sp,s11
    sb      s11,0(s11)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120080
    add     a0,sp,a0
    sd      a0,0(a0)
    mv      a0, a1
                    #arg load ended
    call    find_minimum
    li      a0, 120072
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      tmp_87 = i32 temp_106_87 
    mv      s1, a0
                    #      new_var temp_107_87:ptr->i32 
                    #      temp_107_87 = getelementptr value_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s2, 0
    li      s3, 1
    mul     s4,s3,a2
                    #occupy reg s4 with value_0
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,s2
                    #      new_var temp_108_87:Array:i32:[Some(10000_0)] 
                    #      temp_108_87 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      s3, value
                    #occupy reg s3 with *value_0
    lw      s4,0(s3)
                    #      new_var temp_109_87:ptr->i32 
                    #      new_var temp_110_87:i32 
                    #      temp_109_87 = getelementptr temp_108_87:Array:i32:[Some(10000_0)] [Some(tmp_87)] 
    li      s3, 0
    li      s5, 1
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_110_87 = load temp_109_87:ptr->i32 
    lw      s5,0(s3)
                    #      store temp_110_87:i32 temp_107_87:ptr->i32 
    sd      s5,0(s2)
                    #      mu value_0:456 
                    #      value_0 = chi value_0:456 
                    #      new_var temp_111_87:ptr->i32 
                    #      temp_111_87 = getelementptr right_child_0:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s6, 0
    li      s7, 1
    mul     s8,s7,a2
                    #occupy reg s8 with right_child_0
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,s6
                    #      new_var temp_112_87:Array:i32:[Some(10000_0)] 
                    #      temp_112_87 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      s7, right_child
                    #occupy reg s7 with *right_child_0
    lw      s8,0(s7)
                    #      new_var temp_113_87:ptr->i32 
                    #      new_var temp_114_87:i32 
                    #      temp_113_87 = getelementptr temp_112_87:Array:i32:[Some(10000_0)] [Some(root_66)] 
    li      s7, 0
    li      s9, 1
    add     s7,s7,s8
    slli s7,s7,2
    add     s7,s7,sp
    add     s7,s7,s7
                    #      temp_114_87 = load temp_113_87:ptr->i32 
    lw      s9,0(s7)
                    #      new_var temp_115_87:Array:i32:[Some(10000_0)] 
                    #      temp_115_87 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      s10, value
                    #occupy reg s10 with *value_0
    lw      s11,0(s10)
                    #      new_var temp_116_87:ptr->i32 
                    #      new_var temp_117_87:i32 
                    #      temp_116_87 = getelementptr temp_115_87:Array:i32:[Some(10000_0)] [Some(tmp_87)] 
    li      s10, 0
    li      a0, 120072
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_117_87 = load temp_116_87:ptr->i32 
    lw      a0,0(s10)
                    #      new_var temp_118_87:i32 
                    #      temp_118_87 =  Call i32 delete_0(temp_114_87, temp_117_87) 
                    #saved register dumping to mem
    li      s1, 120068
    add     s1,sp,s1
    sw      s1,0(s1)
    li      s2, 120056
    add     s2,sp,s2
    sd      s2,0(s2)
    li      s3, 80048
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s4, 120052
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s5, 80044
    add     s5,sp,s5
    sw      s5,0(s5)
    li      s6, 80032
    add     s6,sp,s6
    sd      s6,0(s6)
    li      s7, 40024
    add     s7,sp,s7
    sd      s7,0(s7)
    li      s8, 80028
    add     s8,sp,s8
    sw      s8,0(s8)
    li      s9, 40020
    add     s9,sp,s9
    sw      s9,0(s9)
    sd      s10,8(sp)
    li      s10, 40016
    add     s10,sp,s10
    sw      s11,0(s10)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    li      s11, 40020
    add     s11,sp,s11
    lw      a0,0(s11)
    li      a1, 120076
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,4(sp)
                    #arg load ended
    call    delete
    sw      a0,0(sp)
                    #      store temp_118_87:i32 temp_111_87:ptr->i32 
    sd      a0,0(a1)
                    #      mu right_child_0:483 
                    #      right_child_0 = chi right_child_0:483 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      label L11_0: 
.L11_0:
                    #      ret root_66 
    li      a1, 600312
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a5, 600304
    add     a5,sp,a5
    ld      s0,0(a5)
    li      a0, 520248
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s1, 600320
    li      s1, 600320
    add     sp,s1,sp
    ret
                    #      Define inorder_0 [root_92] -> inorder_ret_0 
    .globl inorder
    .type inorder,@function
inorder:
                    #mem layout:|ra_inorder:8|s0_inorder:8|root:4|temp_119:1|none:3|temp_120:40000|temp_121:8|temp_122:4|temp_123:40000|none:4|temp_124:8|temp_125:4|temp_126:40000|none:4|temp_127:8|temp_128:4|none:4
    li      a1, -120072
    li      a1, -120072
    add     sp,a1,sp
    li      a2, 120064
    add     a2,sp,a2
    sd      ra,0(a2)
    li      a3, 120056
    add     a3,sp,a3
    sd      s0,0(a3)
    li      a4, 120072
    li      a4, 120072
    add     s0,a4,sp
                    #      alloc i1 temp_119_95 
                    #      alloc Array:i32:[Some(10000_0)] temp_120_97 
                    #      alloc ptr->i32 temp_121_97 
                    #      alloc i32 temp_122_97 
                    #      alloc Array:i32:[Some(10000_0)] temp_123_97 
                    #      alloc ptr->i32 temp_124_97 
                    #      alloc i32 temp_125_97 
                    #      alloc Array:i32:[Some(10000_0)] temp_126_97 
                    #      alloc ptr->i32 temp_127_97 
                    #      alloc i32 temp_128_97 
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_119_95:i1 
                    #      temp_119_95 = icmp i32 Ne root_92, -1_0 
    li      a5, -1
    xor     a6,a0,a5
    snez    a6, a6
                    #      br i1 temp_119_95, label branch_true_96, label branch_false_96 
    bnez    a6, .branch_true_96
    j       .branch_false_96
                    #      label branch_true_96: 
.branch_true_96:
                    #      new_var temp_120_97:Array:i32:[Some(10000_0)] 
                    #      temp_120_97 = load *left_child_0:ptr->i32 
                    #   load label left_child as ptr to reg
    la      a1, left_child
                    #occupy reg a1 with *left_child_0
    lw      a2,0(a1)
                    #      new_var temp_121_97:ptr->i32 
                    #      new_var temp_122_97:i32 
                    #      temp_121_97 = getelementptr temp_120_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
    li      a3, 0
    li      a4, 1
    add     a3,a3,a2
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_122_97 = load temp_121_97:ptr->i32 
    lw      a5,0(a3)
                    #       Call void inorder_0(temp_122_97) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 120052
    add     a0,sp,a0
    sw      a0,0(a0)
    mv      a0, a5
                    #arg load ended
    call    inorder
                    #      new_var temp_123_97:Array:i32:[Some(10000_0)] 
                    #      temp_123_97 = load *value_0:ptr->i32 
                    #   load label value as ptr to reg
    la      a0, value
                    #occupy reg a0 with *value_0
    lw      a7,0(a0)
                    #      new_var temp_124_97:ptr->i32 
                    #      new_var temp_125_97:i32 
                    #      temp_124_97 = getelementptr temp_123_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
    li      s1, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s1,s1,a7
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_125_97 = load temp_124_97:ptr->i32 
    lw      s3,0(s1)
                    #       Call void putint_0(temp_125_97) 
                    #saved register dumping to mem
    li      s1, 40024
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 120052
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 40020
    add     s3,sp,s3
    sw      s3,0(s3)
                    #saved register dumped to mem
                    #arg load start
    li      s4, 40020
    add     s4,sp,s4
    lw      a0,0(s4)
                    #arg load ended
    call    putint
                    #       Call void putch_0(32_0) 
                    #saved register dumping to mem
    li      a0, 40020
    add     a0,sp,a0
    sw      s4,0(a0)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 32
                    #arg load ended
    call    putch
                    #      new_var temp_126_97:Array:i32:[Some(10000_0)] 
                    #      temp_126_97 = load *right_child_0:ptr->i32 
                    #   load label right_child as ptr to reg
    la      a0, right_child
                    #occupy reg a0 with *right_child_0
    lw      s1,0(a0)
                    #      new_var temp_127_97:ptr->i32 
                    #      new_var temp_128_97:i32 
                    #      temp_127_97 = getelementptr temp_126_97:Array:i32:[Some(10000_0)] [Some(root_92)] 
    li      s2, 0
                    #found literal reg Some(a4) already exist with 1_0
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
                    #      temp_128_97 = load temp_127_97:ptr->i32 
    lw      s4,0(s2)
                    #       Call void inorder_0(temp_128_97) 
                    #saved register dumping to mem
    li      s1, 40016
    add     s1,sp,s1
    sw      s1,0(s1)
    sd      s2,8(sp)
    li      s2, 120052
    add     s2,sp,s2
    sw      s3,0(s2)
    sw      s4,4(sp)
                    #saved register dumped to mem
                    #arg load start
    lw      a0,4(sp)
                    #arg load ended
    call    inorder
                    #      jump label: branch_false_96 
    li      a0, 80032
    add     a0,sp,a0
    sw      a7,0(a0)
    li      a5, 80036
    add     a5,sp,a5
    sw      a5,0(a5)
    li      s3, 120052
    add     s3,sp,s3
    lw      a0,0(s3)
    li      a3, 80040
    add     a3,sp,a3
    sd      a3,0(a3)
    li      s3, 120052
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a2, 120044
    add     a2,sp,a2
    sw      a2,0(a2)
    j       .branch_false_96
                    #      label branch_false_96: 
.branch_false_96:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_129:4|n:4|temp_130:1|temp_131:1|none:2|temp_132:4|temp_133:4|root:4|i:4|temp_134:1|none:3|temp_135:4|temp_136:4|temp_137:4|temp_138:4|temp_139:1|none:3|temp_140:4|temp_141:4|temp_142:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 temp_129_103 
                    #      alloc i32 n_103 
                    #      alloc i1 temp_130_106 
                    #      alloc i1 temp_131_106 
                    #      alloc i32 temp_132_103 
                    #      alloc i32 temp_133_103 
                    #      alloc i32 root_103 
                    #      alloc i32 i_103 
                    #      alloc i1 temp_134_110 
                    #      alloc i32 temp_135_112 
                    #      alloc i32 temp_136_112 
                    #      alloc i32 temp_137_112 
                    #      alloc i32 temp_138_103 
                    #      alloc i1 temp_139_119 
                    #      alloc i32 temp_140_121 
                    #      alloc i32 temp_141_121 
                    #      alloc i32 temp_142_121 
                    #      label L0_0: 
.L0_0:
                    #      store 0_0:i32 *now_0:ptr->i32 
                    #   load label now as ptr to reg
    la      a0, now
                    #occupy reg a0 with *now_0
    li      a1, 0
    sd      a1,0(a0)
                    #      new_var temp_129_103:i32 
                    #      temp_129_103 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,60(sp)
                    #      n_103 = i32 temp_129_103 
    mv      a2, a0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_130_106:i1 
                    #      temp_130_106 = icmp i1 Ne n_103, 0_0 
    li      a1, 0
    xor     a3,a2,a1
    snez    a3, a3
                    #      new_var temp_131_106:i1 
                    #      temp_131_106 = xor i1 temp_130_106, true 
    seqz    a4, a3
                    #      br i1 temp_131_106, label branch_true_107, label branch_false_107 
    bnez    a4, .branch_true_107
    j       .branch_false_107
                    #      label branch_true_107: 
.branch_true_107:
                    #      ret 0_0 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a0,60(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
                    #      label branch_false_107: 
.branch_false_107:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_132_103:i32 
                    #      temp_132_103 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,60(sp)
    sw      a0,48(sp)
                    #      new_var temp_133_103:i32 
                    #      temp_133_103 =  Call i32 new_node_0(temp_132_103) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,48(sp)
    lw      a0,48(sp)
                    #arg load ended
    call    new_node
    sw      a0,44(sp)
                    #      root_103 = i32 temp_133_103 
    mv      a1, a0
                    #      i_103 = i32 1_0 
    li      a5, 1
                    #      jump label: while.head_111 
    j       .while.head_111
                    #      label while.head_111: 
.while.head_111:
                    #      new_var temp_134_110:i1 
                    #      temp_134_110 = icmp i32 Slt i_103, n_103 
    slt     a6,a5,a2
                    #      br i1 temp_134_110, label while.body_111, label while.exit_111 
    bnez    a6, .while.body_111
    j       .while.exit_111
                    #      label while.body_111: 
.while.body_111:
                    #      new_var temp_135_112:i32 
                    #      temp_135_112 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,44(sp)
    sw      a0,28(sp)
                    #      new_var temp_136_112:i32 
                    #      temp_136_112 =  Call i32 insert_0(root_103, temp_135_112) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    mv      a0, a1
    sw      a1,40(sp)
    lw      a1,28(sp)
                    #arg load ended
    call    insert
    sw      a0,24(sp)
                    #      new_var temp_137_112:i32 
                    #      temp_137_112 = Add i32 i_103, 1_0 
    li      a1, 1
    add     a7,a5,a1
                    #      i_103 = i32 temp_137_112 
    mv      a5, a7
                    #      jump label: while.head_111 
    lw      a1,40(sp)
    sw      a0,24(sp)
    lw      a0,44(sp)
    sw      a7,20(sp)
    sb      a6,35(sp)
    j       .while.head_111
                    #      label while.exit_111: 
.while.exit_111:
                    #       Call void inorder_0(root_103) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,44(sp)
    mv      a0, a1
                    #arg load ended
    call    inorder
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      new_var temp_138_103:i32 
                    #      temp_138_103 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,16(sp)
                    #      n_103 = i32 temp_138_103 
    mv      a2, a0
                    #      i_103 = i32 0_0 
                    #      jump label: while.head_120 
    j       .while.head_120
                    #      label while.head_120: 
.while.head_120:
                    #      new_var temp_139_119:i1 
                    #      temp_139_119 = icmp i32 Slt i_103, n_103 
    slt     a7,a5,a2
                    #      br i1 temp_139_119, label while.body_120, label while.exit_120 
    bnez    a7, .while.body_120
    j       .while.exit_120
                    #      label while.body_120: 
.while.body_120:
                    #      new_var temp_140_121:i32 
                    #      temp_140_121 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,16(sp)
    sw      a0,8(sp)
                    #      new_var temp_141_121:i32 
                    #      temp_141_121 =  Call i32 delete_0(root_103, temp_140_121) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    mv      a0, a1
    sw      a1,40(sp)
    lw      a1,8(sp)
                    #arg load ended
    call    delete
    sw      a0,4(sp)
                    #      root_103 = i32 temp_141_121 
    mv      a1, a0
                    #      new_var temp_142_121:i32 
                    #      temp_142_121 = Add i32 i_103, 1_0 
    li      s1, 1
    add     s2,a5,s1
                    #      i_103 = i32 temp_142_121 
    mv      a5, s2
                    #      jump label: while.head_120 
    sw      s2,0(sp)
    sw      a0,4(sp)
    lw      a0,16(sp)
    sb      a7,15(sp)
    j       .while.head_120
                    #      label while.exit_120: 
.while.exit_120:
                    #       Call void inorder_0(root_103) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    mv      a0, a1
                    #arg load ended
    call    inorder
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      ret 0_0 
    ld      ra,72(sp)
    ld      s0,64(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl now
                    #      global i32 now_0 
    .type now,@object
now:
    .word 0
    .align 4
    .globl right_child
                    #      global Array:i32:[Some(10000_0)] right_child_0 
    .type right_child,@object
right_child:
    .zero 40000
    .align 4
    .globl left_child
                    #      global Array:i32:[Some(10000_0)] left_child_0 
    .type left_child,@object
left_child:
    .zero 40000
    .align 4
    .globl value
                    #      global Array:i32:[Some(10000_0)] value_0 
    .type value,@object
value:
    .zero 40000
    .align 4
    .globl maxNode
                    #      global i32 maxNode_0 
    .type maxNode,@object
maxNode:
    .word 10000
    .align 4
    .globl LF
                    #      global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
                    #      global i32 space_0 
    .type space,@object
space:
    .word 32
