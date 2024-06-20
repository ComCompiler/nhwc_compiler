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
                    #      Define merge_sort_0 [l_17, r_17] -> merge_sort_ret_0 
    .globl merge_sort
    .type merge_sort,@function
merge_sort:
                    #mem layout:|ra_merge_sort:8|s0_merge_sort:8|l:4|r:4|temp_0:4|temp_1:1|none:3|temp_2:4|temp_3:4|mid:4|i:4|j:4|k:4|temp_4:1|temp_5:1|temp_6:1|none:1|temp_7:800|none:4|temp_8:8|temp_9:4|temp_10:800|none:4|temp_11:8|temp_12:4|temp_13:1|none:3|temp_14:8|temp_15:800|temp_16:8|temp_17:4|temp_18:4|temp_19:4|none:4|temp_20:8|temp_21:800|temp_22:8|temp_23:4|temp_24:4|temp_25:1|none:7|temp_26:8|temp_27:800|temp_28:8|temp_29:4|temp_30:4|temp_31:4|temp_32:1|none:3|temp_33:8|temp_34:800|temp_35:8|temp_36:4|temp_37:4|temp_38:4|temp_39:1|none:3|temp_40:8|temp_41:800|temp_42:8|temp_43:4|temp_44:4
    li      a2, -5848
    li      a2, -5848
    add     sp,a2,sp
    li      a3, 5840
    add     a3,sp,a3
    sd      ra,0(a3)
    li      a4, 5832
    add     a4,sp,a4
    sd      s0,0(a4)
    li      a5, 5848
    li      a5, 5848
    add     s0,a5,sp
                    #      alloc i32 temp_0_20 
                    #      alloc i1 temp_1_20 
                    #      alloc i32 temp_2_19 
                    #      alloc i32 temp_3_19 
                    #      alloc i32 mid_19 
                    #      alloc i32 i_19 
                    #      alloc i32 j_19 
                    #      alloc i32 k_19 
                    #      alloc i1 temp_4_27 
                    #      alloc i1 temp_5_27 
                    #      alloc i1 temp_6_27 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_7_30 
                    #      alloc ptr->i32 temp_8_30 
                    #      alloc i32 temp_9_30 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_10_30 
                    #      alloc ptr->i32 temp_11_30 
                    #      alloc i32 temp_12_30 
                    #      alloc i1 temp_13_30 
                    #      alloc ptr->i32 temp_14_32 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_15_32 
                    #      alloc ptr->i32 temp_16_32 
                    #      alloc i32 temp_17_32 
                    #      alloc i32 temp_18_32 
                    #      alloc i32 temp_19_29 
                    #      alloc ptr->i32 temp_20_35 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_21_35 
                    #      alloc ptr->i32 temp_22_35 
                    #      alloc i32 temp_23_35 
                    #      alloc i32 temp_24_35 
                    #      alloc i1 temp_25_39 
                    #      alloc ptr->i32 temp_26_41 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_27_41 
                    #      alloc ptr->i32 temp_28_41 
                    #      alloc i32 temp_29_41 
                    #      alloc i32 temp_30_41 
                    #      alloc i32 temp_31_41 
                    #      alloc i1 temp_32_45 
                    #      alloc ptr->i32 temp_33_47 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_34_47 
                    #      alloc ptr->i32 temp_35_47 
                    #      alloc i32 temp_36_47 
                    #      alloc i32 temp_37_47 
                    #      alloc i32 temp_38_47 
                    #      alloc i1 temp_39_51 
                    #      alloc ptr->i32 temp_40_53 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_41_53 
                    #      alloc ptr->i32 temp_42_53 
                    #      alloc i32 temp_43_53 
                    #      alloc i32 temp_44_53 
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = Add i32 l_17, 1_0 
    li      a6, 1
    add     a7,a0,a6
                    #      new_var temp_1_20:i1 
                    #      temp_1_20 = icmp i32 Sge temp_0_20, r_17 
    slt     s1,a7,a1
    xori    s1,s1,1
                    #      br i1 temp_1_20, label branch_true_21, label branch_false_21 
    bnez    s1, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      ret 
    li      s2, 5840
    add     s2,sp,s2
    ld      ra,0(s2)
    li      s3, 5832
    add     s3,sp,s3
    ld      s0,0(s3)
                    #found literal reg Some(a5) already exist with 5848_0
    li      a5, 5848
    add     sp,a5,sp
    ret
                    #      label branch_false_21: 
.branch_false_21:
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_2_19:i32 
                    #      temp_2_19 = Add i32 l_17, r_17 
    add     s4,a0,a1
                    #      new_var temp_3_19:i32 
                    #      temp_3_19 = Div i32 temp_2_19, 2_0 
    li      s5, 2
    div     s6,s4,s5
                    #      mid_19 = i32 temp_3_19 
    mv      s7, s6
                    #       Call void merge_sort_0(l_17, mid_19) 
                    #saved register dumping to mem
    li      s1, 5819
    add     s1,sp,s1
    sb      s1,0(s1)
                    #found literal reg Some(a3) already exist with 5840_0
    add     a3,sp,a3
    sd      s2,0(a3)
                    #found literal reg Some(a4) already exist with 5832_0
    add     a4,sp,a4
    sd      s3,0(a4)
    li      s2, 5812
    add     s2,sp,s2
    sw      s4,0(s2)
    li      s3, 5808
    add     s3,sp,s3
    sw      s6,0(s3)
    li      s4, 5804
    add     s4,sp,s4
    sw      s7,0(s4)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 5824
    add     a0,sp,a0
    sw      a1,0(a0)
                    #arg load ended
    call    merge_sort
                    #       Call void merge_sort_0(mid_19, r_17) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    merge_sort
                    #      i_19 = i32 l_17 
    mv      a1, a0
                    #      j_19 = i32 mid_19 
    mv      s2, s1
                    #      k_19 = i32 l_17 
    mv      s3, a0
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_28: 
.while.head_28:
                    #      new_var temp_4_27:i1 
                    #      temp_4_27 = icmp i32 Slt j_19, r_17 
    slt     s5,s2,s4
                    #      new_var temp_5_27:i1 
                    #      temp_5_27 = icmp i32 Slt i_19, mid_19 
    slt     s6,a1,s1
                    #      new_var temp_6_27:i1 
                    #      temp_6_27 = And i1 temp_5_27, temp_4_27 
    and     s7,s6,s5
                    #      br i1 temp_6_27, label while.body_28, label while.exit_28 
    bnez    s7, .while.body_28
    j       .while.exit_28
                    #      label while.body_28: 
.while.body_28:
                    #      new_var temp_7_30:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_7_30 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      s8, buf
                    #occupy reg s8 with *buf_0
    lw      s9,0(s8)
                    #      new_var temp_8_30:ptr->i32 
                    #      new_var temp_9_30:i32 
                    #      temp_8_30 = getelementptr temp_7_30:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
    li      s10, 0
    li      s11, 100
    li      a2, 0
    add     s10,s10,s9
                    #found literal reg Some(a6) already exist with 1_0
    add     s10,s10,s9
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
                    #      temp_9_30 = load temp_8_30:ptr->i32 
    lw      a2,0(s10)
                    #      new_var temp_10_30:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_10_30 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a3, buf
                    #occupy reg a3 with *buf_0
    lw      a4,0(a3)
                    #      new_var temp_11_30:ptr->i32 
                    #      new_var temp_12_30:i32 
                    #      temp_11_30 = getelementptr temp_10_30:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
    li      a3, 0
                    #found literal reg Some(s11) already exist with 100_0
    li      a5, 0
    add     a3,a3,a4
                    #found literal reg Some(a6) already exist with 1_0
    add     a3,a3,a4
    slli a3,a3,2
    add     a3,a3,sp
    add     a3,a3,a3
                    #      temp_12_30 = load temp_11_30:ptr->i32 
    lw      a5,0(a3)
                    #      new_var temp_13_30:i1 
                    #      temp_13_30 = icmp i32 Slt temp_12_30, temp_9_30 
    slt     a6,a5,a2
                    #      br i1 temp_13_30, label branch_true_31, label branch_false_31 
    bnez    a6, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var temp_14_32:ptr->i32 
                    #      temp_14_32 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
    li      s8, 0
                    #found literal reg Some(s11) already exist with 100_0
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 5800
    add     a1,sp,a1
    sw      a1,0(a1)
    mul     a1,s11,a0
                    #occupy reg a1 with buf_0
    add     s8,s8,a1
                    #found literal reg Some(a0) already exist with 1_0
    mul     a1,a0,s3
                    #occupy reg a1 with buf_0
    add     s8,s8,a1
    slli s8,s8,2
    add     s8,s8,s8
                    #      new_var temp_15_32:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_15_32 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a0, buf
                    #occupy reg a0 with *buf_0
    lw      a1,0(a0)
                    #      new_var temp_16_32:ptr->i32 
                    #      new_var temp_17_32:i32 
                    #      temp_16_32 = getelementptr temp_15_32:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
    li      a0, 0
                    #found literal reg Some(s11) already exist with 100_0
    li      a1, 4140
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 0
    li      a2, 4972
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,s11,a1
    add     a0,a0,a2
    li      a1, 1
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_17_32 = load temp_16_32:ptr->i32 
    lw      a1,0(a0)
                    #      store temp_17_32:i32 temp_14_32:ptr->i32 
    sd      a1,0(s8)
                    #      mu buf_0:96 
                    #      buf_0 = chi buf_0:96 
                    #      new_var temp_18_32:i32 
                    #      temp_18_32 = Add i32 i_19, 1_0 
    li      a0, 3336
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a1, 3332
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s11,a0
                    #      i_19 = i32 temp_18_32 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_31: 
.branch_false_31:
                    #      new_var temp_20_35:ptr->i32 
                    #      temp_20_35 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
    li      a0, 0
    li      a1, 3328
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 100
    li      a2, 4140
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    li      a3, 4160
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with buf_0
    add     a0,a0,a3
                    #found literal reg Some(a2) already exist with 1_0
    mul     a1,a2,s3
                    #occupy reg a1 with buf_0
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_21_35:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_21_35 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a1, buf
                    #occupy reg a1 with *buf_0
    lw      a2,0(a1)
                    #      new_var temp_22_35:ptr->i32 
                    #      new_var temp_23_35:i32 
                    #      temp_22_35 = getelementptr temp_21_35:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
    li      a1, 0
    li      a3, 100
    li      a0, 3312
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_23_35 = load temp_22_35:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_23_35:i32 temp_20_35:ptr->i32 
    sd      a0,0(a3)
                    #      mu buf_0:119 
                    #      buf_0 = chi buf_0:119 
                    #      new_var temp_24_35:i32 
                    #      temp_24_35 = Add i32 j_19, 1_0 
    li      a0, 2500
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 2504
    add     a1,sp,a1
    sd      a1,0(a1)
    add     a1,s2,a0
                    #      j_19 = i32 temp_24_35 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_19_29:i32 
                    #      temp_19_29 = Add i32 k_19, 1_0 
                    #found literal reg Some(a0) already exist with 1_0
    li      a1, 2496
    add     a1,sp,a1
    sw      a1,0(a1)
    add     a1,s3,a0
                    #      k_19 = i32 temp_19_29 
                    #      jump label: while.head_28 
    j       .while.head_28
                    #      label while.head_40: 
.while.head_40:
                    #      new_var temp_25_39:i1 
                    #      temp_25_39 = icmp i32 Slt i_19, mid_19 
    slt     a0,s11,s1
                    #      br i1 temp_25_39, label while.body_40, label while.exit_40 
    bnez    a0, .while.body_40
    j       .while.exit_40
                    #      label while.body_40: 
.while.body_40:
                    #      new_var temp_26_41:ptr->i32 
                    #      temp_26_41 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
    li      a0, 2495
    add     a0,sp,a0
    sb      a0,0(a0)
    li      a0, 0
    li      a1, 3324
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 100
    li      a2, 3308
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    li      a3, 3312
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with buf_0
    add     a0,a0,a3
                    #found literal reg Some(a2) already exist with 1_0
    mul     a1,a2,s3
                    #occupy reg a1 with buf_0
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_27_41:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_27_41 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a1, buf
                    #occupy reg a1 with *buf_0
    lw      a2,0(a1)
                    #      new_var temp_28_41:ptr->i32 
                    #      new_var temp_29_41:i32 
                    #      temp_28_41 = getelementptr temp_27_41:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
    li      a1, 0
    li      a3, 100
    li      a0, 2480
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_29_41 = load temp_28_41:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_29_41:i32 temp_26_41:ptr->i32 
    sd      a0,0(a3)
                    #      mu buf_0:146 
                    #      buf_0 = chi buf_0:146 
                    #      new_var temp_30_41:i32 
                    #      temp_30_41 = Add i32 i_19, 1_0 
    sw      a0,1668(sp)
    li      a0, 1
    sd      a1,1672(sp)
    add     a1,s11,a0
                    #      i_19 = i32 temp_30_41 
                    #      new_var temp_31_41:i32 
                    #      temp_31_41 = Add i32 k_19, 1_0 
                    #found literal reg Some(a0) already exist with 1_0
    sw      a1,1664(sp)
    add     a1,s3,a0
                    #      k_19 = i32 temp_31_41 
                    #      jump label: while.head_40 
    j       .while.head_40
                    #      label while.head_46: 
.while.head_46:
                    #      new_var temp_32_45:i1 
                    #      temp_32_45 = icmp i32 Slt j_19, r_17 
    slt     a0,s2,s4
                    #      br i1 temp_32_45, label while.body_46, label while.exit_46 
    bnez    a0, .while.body_46
    j       .while.exit_46
                    #      label while.body_46: 
.while.body_46:
                    #      new_var temp_33_47:ptr->i32 
                    #      temp_33_47 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
    sb      a0,1659(sp)
    li      a0, 0
    sw      a1,1660(sp)
    li      a1, 100
    li      a2, 2476
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    li      a3, 2480
    add     a3,sp,a3
    sd      a3,0(a3)
    mul     a3,a1,a2
                    #occupy reg a3 with buf_0
    add     a0,a0,a3
                    #found literal reg Some(a2) already exist with 1_0
    mul     a1,a2,s3
                    #occupy reg a1 with buf_0
    add     a0,a0,a1
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_34_47:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_34_47 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a1, buf
                    #occupy reg a1 with *buf_0
    lw      a2,0(a1)
                    #      new_var temp_35_47:ptr->i32 
                    #      new_var temp_36_47:i32 
                    #      temp_35_47 = getelementptr temp_34_47:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
    li      a1, 0
    li      a3, 100
    sd      a0,1648(sp)
    li      a0, 0
    add     a1,a1,a2
    li      a0, 1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_36_47 = load temp_35_47:ptr->i32 
    lw      a0,0(a1)
                    #      store temp_36_47:i32 temp_33_47:ptr->i32 
    sd      a0,0(a3)
                    #      mu buf_0:177 
                    #      buf_0 = chi buf_0:177 
                    #      new_var temp_37_47:i32 
                    #      temp_37_47 = Add i32 j_19, 1_0 
    sw      a0,836(sp)
    li      a0, 1
    sd      a1,840(sp)
    add     a1,s2,a0
                    #      j_19 = i32 temp_37_47 
                    #      new_var temp_38_47:i32 
                    #      temp_38_47 = Add i32 k_19, 1_0 
                    #found literal reg Some(a0) already exist with 1_0
    sw      a1,832(sp)
    add     a1,s3,a0
                    #      k_19 = i32 temp_38_47 
                    #      jump label: while.head_46 
    j       .while.head_46
                    #      label while.head_52: 
.while.head_52:
                    #      new_var temp_39_51:i1 
                    #      temp_39_51 = icmp i32 Slt l_17, r_17 
    sw      a1,828(sp)
    slt     a1,a0,s4
                    #      br i1 temp_39_51, label while.body_52, label while.exit_52 
    bnez    a1, .while.body_52
    j       .while.exit_52
                    #      label while.body_52: 
.while.body_52:
                    #      new_var temp_40_53:ptr->i32 
                    #      temp_40_53 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(l_17)] 
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    sb      a1,827(sp)
    li      a1, 100
    sw      a2,1644(sp)
    li      a2, 0
    sd      a3,1648(sp)
    mul     a3,a1,a2
                    #occupy reg a3 with buf_0
    add     a0,a0,a3
    li      a1, 1
    mul     a3,a1,a2
                    #occupy reg a3 with buf_0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,a0
                    #      new_var temp_41_53:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_41_53 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a1, buf
                    #occupy reg a1 with *buf_0
    lw      a3,0(a1)
                    #      new_var temp_42_53:ptr->i32 
                    #      new_var temp_43_53:i32 
                    #      temp_42_53 = getelementptr temp_41_53:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(l_17)] 
    li      a1, 0
    sd      a0,816(sp)
    li      a0, 100
    li      a2, 5828
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
    add     a1,a1,a3
                    #found literal reg Some(a2) already exist with 1_0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_43_53 = load temp_42_53:ptr->i32 
    lw      a2,0(a1)
                    #      store temp_43_53:i32 temp_40_53:ptr->i32 
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
    sd      a2,0(a0)
                    #      mu buf_0:208 
                    #      buf_0 = chi buf_0:208 
                    #      new_var temp_44_53:i32 
                    #      temp_44_53 = Add i32 l_17, 1_0 
    sd      a0,816(sp)
    sd      a1,8(sp)
    li      a1, 1
    sw      a2,4(sp)
    add     a2,a0,a1
                    #      l_17 = i32 temp_44_53 
                    #      jump label: while.head_52 
    j       .while.head_52
                    #      label while.exit_52: 
.while.exit_52:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_45:800|temp_46:8|temp_47:400|temp_48:4|n:4|temp_49:800|temp_50:8|temp_51:400
    li      a0, -2440
    li      a0, -2440
    add     sp,a0,sp
    li      a1, 2432
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 2424
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 2440
    li      a3, 2440
    add     s0,a3,sp
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_45_57 
                    #      alloc ptr->i32 temp_46_57 
                    #      alloc Array:i32:[Some(100_0)] temp_47_57 
                    #      alloc i32 temp_48_57 
                    #      alloc i32 n_57 
                    #      alloc Array:i32:[Some(2_0), Some(100_0)] temp_49_57 
                    #      alloc ptr->i32 temp_50_57 
                    #      alloc Array:i32:[Some(100_0)] temp_51_57 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_45_57:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_45_57 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a4, buf
                    #occupy reg a4 with *buf_0
    lw      a5,0(a4)
                    #      new_var temp_46_57:ptr->i32 
                    #      new_var temp_47_57:Array:i32:[Some(100_0)] 
                    #      temp_46_57 = getelementptr temp_45_57:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0)] 
    li      a6, 0
    li      a7, 100
    li      s1, 0
    add     a6,a6,a5
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
                    #      temp_47_57 = load temp_46_57:ptr->i32 
    lw      s2,0(a6)
                    #      new_var temp_48_57:i32 
                    #      temp_48_57 =  Call i32 getarray_0(temp_47_57) 
                    #saved register dumping to mem
    sw      s2,1612(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getarray
    sw      a0,1212(sp)
                    #      n_57 = i32 temp_48_57 
    mv      s1, a0
                    #       Call void merge_sort_0(0_0, n_57) 
                    #saved register dumping to mem
    sw      s1,1208(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,1212(sp)
    li      a0, 0
                    #arg load ended
    call    merge_sort
                    #      new_var temp_49_57:Array:i32:[Some(2_0), Some(100_0)] 
                    #      temp_49_57 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
                    #   load label buf as ptr to reg
    la      a0, buf
                    #occupy reg a0 with *buf_0
    lw      a1,0(a0)
                    #      new_var temp_50_57:ptr->i32 
                    #      new_var temp_51_57:Array:i32:[Some(100_0)] 
                    #      temp_50_57 = getelementptr temp_49_57:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0)] 
    li      s1, 0
                    #found literal reg Some(a7) already exist with 100_0
    li      s2, 0
    add     s1,s1,a1
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
                    #      temp_51_57 = load temp_50_57:ptr->i32 
    lw      s3,0(s1)
                    #       Call void putarray_0(n_57, temp_51_57) 
                    #saved register dumping to mem
    sd      s1,400(sp)
    sw      s3,396(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a1,1204(sp)
                    #arg load ended
    call    putarray
                    #      ret 0_0 
    li      a0, 2432
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a1, 2424
    add     a1,sp,a1
    ld      s0,0(a1)
    li      a0, 2432
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 0
                    #found literal reg Some(a3) already exist with 2440_0
    li      a3, 2440
    add     sp,a3,sp
    ret
.section        .data
    .align 4
    .globl buf
                    #      global Array:i32:[Some(2_0), Some(100_0)] buf_0 
    .type buf,@object
buf:
    .zero 800
