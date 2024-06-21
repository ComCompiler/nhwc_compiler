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
                    #      Define search_0 [x_20, y_20, n_20] -> search_ret_0 
    .globl search
    .type search,@function
search:
                    #mem layout:|ra_search:8|s0_search:8|x:4|y:4|n:4|temp_13:1|none:3|num:4|i:4|temp_14:1|none:3|coun:4|x2:4|y2:4|temp_15:3600|temp_16:8|temp_17:4|temp_18:1|none:3|temp_19:4|temp_20:1|none:3|temp_21:4|temp_22:1|temp_23:1|none:2|temp_24:32|temp_25:8|temp_26:4|temp_27:4|temp_28:32|temp_29:8|temp_30:4|temp_31:4|temp_32:4|temp_33:4|temp_34:1|none:3|temp_35:4|temp_36:1|temp_37:1|temp_38:1|none:1|temp_39:4|temp_40:4|temp_41:4|temp_42:1|temp_43:1|temp_44:1|none:1|temp_45:4|temp_46:4|temp_47:1|temp_48:1|temp_49:1|temp_50:1|temp_51:4|none:4|temp_52:8|temp_53:32|temp_54:8|temp_55:4|temp_56:4|temp_57:32|temp_58:8|temp_59:4|temp_60:4|temp_61:4|temp_62:4|temp_63:4|searchResult:4|temp_64:1|none:7|temp_65:8|temp_66:4|temp_67:1|none:3
    li      a3, -3984
    li      a3, -3984
    add     sp,a3,sp
    li      a4, 3976
    add     a4,sp,a4
    sd      ra,0(a4)
    li      a5, 3968
    add     a5,sp,a5
    sd      s0,0(a5)
    li      a6, 3984
    li      a6, 3984
    add     s0,a6,sp
                    #      alloc i1 temp_13_23 
                    #      alloc i32 num_22 
                    #      alloc i32 i_22 
                    #      alloc i1 temp_14_28 
                    #      alloc i32 coun_30 
                    #      alloc i32 x2_30 
                    #      alloc i32 y2_30 
                    #      alloc Array:i32:[Some(30_0), Some(30_0)] temp_15_33 
                    #      alloc ptr->i32 temp_16_33 
                    #      alloc i32 temp_17_33 
                    #      alloc i1 temp_18_33 
                    #      alloc i32 temp_19_36 
                    #      alloc i1 temp_20_36 
                    #      alloc i32 temp_21_36 
                    #      alloc i1 temp_22_36 
                    #      alloc i1 temp_23_36 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] temp_24_35 
                    #      alloc ptr->i32 temp_25_35 
                    #      alloc i32 temp_26_35 
                    #      alloc i32 temp_27_35 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] temp_28_35 
                    #      alloc ptr->i32 temp_29_35 
                    #      alloc i32 temp_30_35 
                    #      alloc i32 temp_31_35 
                    #      alloc i32 temp_32_35 
                    #      alloc i32 temp_33_42 
                    #      alloc i1 temp_34_42 
                    #      alloc i32 temp_35_42 
                    #      alloc i1 temp_36_42 
                    #      alloc i1 temp_37_42 
                    #      alloc i1 temp_38_45 
                    #      alloc i32 temp_39_47 
                    #      alloc i32 temp_40_50 
                    #      alloc i32 temp_41_50 
                    #      alloc i1 temp_42_50 
                    #      alloc i1 temp_43_50 
                    #      alloc i1 temp_44_50 
                    #      alloc i32 temp_45_50 
                    #      alloc i32 temp_46_50 
                    #      alloc i1 temp_47_50 
                    #      alloc i1 temp_48_50 
                    #      alloc i1 temp_49_50 
                    #      alloc i1 temp_50_50 
                    #      alloc i32 temp_51_52 
                    #      alloc ptr->i32 temp_52_30 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] temp_53_30 
                    #      alloc ptr->i32 temp_54_30 
                    #      alloc i32 temp_55_30 
                    #      alloc i32 temp_56_30 
                    #      alloc Array:i32:[Some(4_0), Some(2_0)] temp_57_30 
                    #      alloc ptr->i32 temp_58_30 
                    #      alloc i32 temp_59_30 
                    #      alloc i32 temp_60_30 
                    #      alloc i32 temp_61_30 
                    #      alloc i32 temp_62_30 
                    #      alloc i32 temp_63_30 
                    #      alloc i32 searchResult_30 
                    #      alloc i1 temp_64_57 
                    #      alloc ptr->i32 temp_65_30 
                    #      alloc i32 temp_66_30 
                    #      alloc i1 temp_67_62 
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_13_23:i1 
                    #      temp_13_23 = icmp i32 Sgt n_20, 10_0 
    li      a7, 10
    slt     s1,a7,a2
                    #      br i1 temp_13_23, label branch_true_24, label branch_false_24 
    bnez    s1, .branch_true_24
    j       .branch_false_24
                    #      label branch_true_24: 
.branch_true_24:
                    #      ret 1073741824_0 
    li      a3, 3976
    add     a3,sp,a3
    ld      ra,0(a3)
    li      a4, 3968
    add     a4,sp,a4
    ld      s0,0(a4)
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1073741824
    li      a5, 3984
    li      a5, 3984
    add     sp,a5,sp
    ret
                    #      label branch_false_24: 
.branch_false_24:
                    #      label L8_0: 
.L8_0:
                    #      num_22 = i32 1073741824_0 
    li      a3, 1073741824
                    #      i_22 = i32 0_0 
    li      a4, 0
                    #      jump label: while.head_29 
    j       .while.head_29
                    #      label while.head_29: 
.while.head_29:
                    #      new_var temp_14_28:i1 
                    #      temp_14_28 = icmp i32 Slt i_22, 4_0 
    li      a5, 4
    slt     a6,a4,a5
                    #      br i1 temp_14_28, label while.body_29, label while.exit_29 
    bnez    a6, .while.body_29
    j       .while.exit_29
                    #      label while.body_29: 
.while.body_29:
                    #      coun_30 = i32 0_0 
    li      a5, 0
                    #      x2_30 = i32 x_20 
    mv      a7, a0
                    #      y2_30 = i32 y_20 
    mv      s2, a1
                    #      jump label: while.head_34 
    j       .while.head_34
                    #      label while.head_34: 
.while.head_34:
                    #      new_var temp_15_33:Array:i32:[Some(30_0), Some(30_0)] 
                    #      temp_15_33 = load *a_0:ptr->Array:i32:[Some(30_0)] 
                    #   load label a as ptr to reg
    la      s3, a
                    #occupy reg s3 with *a_0
    lw      s4,0(s3)
                    #      new_var temp_16_33:ptr->i32 
                    #      new_var temp_17_33:i32 
                    #      temp_16_33 = getelementptr temp_15_33:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
    li      s5, 0
    li      s6, 30
    add     s5,s5,s4
    li      s7, 1
    add     s5,s5,s4
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
                    #      temp_17_33 = load temp_16_33:ptr->i32 
    lw      s8,0(s5)
                    #      new_var temp_18_33:i1 
                    #      temp_18_33 = icmp i32 Ne temp_17_33, 1_0 
                    #found literal reg Some(s7) already exist with 1_0
    xor     s9,s8,s7
    snez    s9, s9
                    #      br i1 temp_18_33, label while.body_34, label while.exit_34 
    bnez    s9, .while.body_34
    j       .while.exit_34
                    #      label while.body_34: 
.while.body_34:
                    #      new_var temp_19_36:i32 
                    #      temp_19_36 = load *y_1_0:ptr->i32 
                    #   load label y_1 as ptr to reg
    la      s3, y_1
                    #occupy reg s3 with *y_1_0
    lw      s6,0(s3)
                    #      new_var temp_20_36:i1 
                    #      temp_20_36 = icmp i32 Eq y2_30, temp_19_36 
    xor     s7,s2,s6
    seqz    s7, s7
                    #      new_var temp_21_36:i32 
                    #      temp_21_36 = load *x_1_0:ptr->i32 
                    #   load label x_1 as ptr to reg
    la      s10, x_1
                    #occupy reg s10 with *x_1_0
    lw      s11,0(s10)
                    #      new_var temp_22_36:i1 
                    #      temp_22_36 = icmp i32 Eq x2_30, temp_21_36 
    xor     s3,a7,s11
    seqz    s3, s3
                    #      new_var temp_23_36:i1 
                    #      temp_23_36 = And i1 temp_22_36, temp_20_36 
    and     s10,s3,s7
                    #      br i1 temp_23_36, label branch_true_37, label branch_false_37 
    bnez    s10, .branch_true_37
    j       .branch_false_37
                    #      label branch_true_37: 
.branch_true_37:
                    #      jump label: while.exit_34 
    sb      s3,299(sp)
    sw      s6,308(sp)
    sw      s11,300(sp)
    sb      s7,307(sp)
    sb      s10,298(sp)
    j       .while.exit_34
                    #      label while.exit_34: 
.while.exit_34:
                    #      new_var temp_33_42:i32 
                    #      temp_33_42 = load *y_1_0:ptr->i32 
                    #   load label y_1 as ptr to reg
    la      s3, y_1
                    #occupy reg s3 with *y_1_0
    lw      s6,0(s3)
                    #      new_var temp_34_42:i1 
                    #      temp_34_42 = icmp i32 Eq y2_30, temp_33_42 
    xor     s7,s2,s6
    seqz    s7, s7
                    #      new_var temp_35_42:i32 
                    #      temp_35_42 = load *x_1_0:ptr->i32 
                    #   load label x_1 as ptr to reg
    la      s10, x_1
                    #occupy reg s10 with *x_1_0
    lw      s11,0(s10)
                    #      new_var temp_36_42:i1 
                    #      temp_36_42 = icmp i32 Eq x2_30, temp_35_42 
    xor     s3,a7,s11
    seqz    s3, s3
                    #      new_var temp_37_42:i1 
                    #      temp_37_42 = And i1 temp_36_42, temp_34_42 
    and     s10,s3,s7
                    #      br i1 temp_37_42, label branch_true_43, label branch_false_43 
    bnez    s10, .branch_true_43
    j       .branch_false_43
                    #      label branch_true_43: 
.branch_true_43:
                    #      ret 1_0 
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3976
    add     a0,sp,a0
    ld      ra,0(a0)
    li      a0, 3976
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 3968
    add     a0,sp,a0
    ld      s0,0(a0)
    li      a0, 3968
    add     a0,sp,a0
    sd      a0,0(a0)
    li      a0, 1
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
    li      a1, 3984
    li      a1, 3984
    add     sp,a1,sp
    ret
                    #      label branch_false_43: 
.branch_false_43:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_38_45:i1 
                    #      temp_38_45 = icmp i32 Sle coun_30, 1_0 
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
    slt     a1,a0,a5
    xori    a1,a1,1
                    #      br i1 temp_38_45, label branch_true_46, label branch_false_46 
    bnez    a1, .branch_true_46
    j       .branch_false_46
                    #      label branch_true_46: 
.branch_true_46:
                    #      new_var temp_39_47:i32 
                    #      temp_39_47 = Add i32 i_22, 1_0 
    li      a0, 1
    sb      a1,181(sp)
    add     a1,a4,a0
                    #      i_22 = i32 temp_39_47 
    mv      a4, a1
                    #      jump label: while.exit_34 
    sb      s3,183(sp)
    sw      s6,192(sp)
    sw      a1,176(sp)
    li      a0, 3960
    add     a0,sp,a0
    lw      a1,0(a0)
    sw      s11,184(sp)
    li      a0, 3960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a2, 3956
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 3964
    add     a2,sp,a2
    lw      a0,0(a2)
    sb      s7,191(sp)
    sb      s10,182(sp)
    j       .while.exit_34
                    #      label branch_false_46: 
.branch_false_46:
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_40_50:i32 
                    #      temp_40_50 = load *w_0:ptr->i32 
                    #   load label w as ptr to reg
    la      a0, w
                    #occupy reg a0 with *w_0
    sb      a1,181(sp)
    lw      a1,0(a0)
                    #      new_var temp_41_50:i32 
                    #      temp_41_50 = Add i32 temp_40_50, 1_0 
    li      a0, 1
    li      a2, 3956
    add     a2,sp,a2
    sw      a2,0(a2)
    add     a2,a1,a0
                    #      new_var temp_42_50:i1 
                    #      temp_42_50 = icmp i32 Eq temp_41_50, y2_30 
    xor     a0,a2,s2
    seqz    a0, a0
                    #      new_var temp_43_50:i1 
                    #      temp_43_50 = icmp i32 Eq y2_30, 0_0 
    sb      a0,167(sp)
    li      a0, 0
    sw      a1,172(sp)
    xor     a1,s2,a0
    seqz    a1, a1
                    #      new_var temp_44_50:i1 
                    #      temp_44_50 = Or i1 temp_43_50, temp_42_50 
                    #      new_var temp_45_50:i32 
                    #      temp_45_50 = load *h_0:ptr->i32 
    sb      a0,167(sp)
                    #   load label h as ptr to reg
    la      a0, h
                    #occupy reg a0 with *h_0
    sb      a1,166(sp)
    lw      a1,0(a0)
                    #      new_var temp_46_50:i32 
                    #      temp_46_50 = Add i32 temp_45_50, 1_0 
    li      a0, 1
    sw      a2,168(sp)
    add     a2,a1,a0
                    #      new_var temp_47_50:i1 
                    #      temp_47_50 = icmp i32 Eq temp_46_50, x2_30 
    xor     a0,a2,a7
    seqz    a0, a0
                    #      new_var temp_48_50:i1 
                    #      temp_48_50 = Or i1 temp_47_50, temp_44_50 
    sw      a1,160(sp)
                    #      new_var temp_49_50:i1 
                    #      temp_49_50 = icmp i32 Eq x2_30, 0_0 
    sb      a0,155(sp)
    li      a0, 0
    sb      a1,165(sp)
    xor     a1,a7,a0
    seqz    a1, a1
                    #      new_var temp_50_50:i1 
                    #      temp_50_50 = Or i1 temp_49_50, temp_48_50 
                    #      br i1 temp_50_50, label branch_true_51, label branch_false_51 
    sb      a0,154(sp)
    bnez    a0, .branch_true_51
    j       .branch_false_51
                    #      label branch_true_51: 
.branch_true_51:
                    #      new_var temp_51_52:i32 
                    #      temp_51_52 = Add i32 i_22, 1_0 
    sb      a0,152(sp)
    li      a0, 1
    sb      a1,153(sp)
    add     a1,a4,a0
                    #      i_22 = i32 temp_51_52 
    mv      a4, a1
                    #      jump label: while.exit_34 
    sb      s3,183(sp)
    sw      s6,192(sp)
    sw      a2,156(sp)
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
    sw      a1,148(sp)
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3960
    add     a0,sp,a0
    lw      a1,0(a0)
    sw      s11,184(sp)
    li      a0, 3960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a3, 3964
    add     a3,sp,a3
    lw      a0,0(a3)
    sb      s7,191(sp)
    sb      s10,182(sp)
    j       .while.exit_34
                    #      label branch_false_51: 
.branch_false_51:
                    #      label L11_0: 
.L11_0:
                    #      new_var temp_52_30:ptr->i32 
                    #      temp_52_30 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
    sb      a0,152(sp)
    li      a0, 0
    sb      a1,153(sp)
    li      a1, 30
    sw      a2,156(sp)
    mul     a2,a1,a7
                    #occupy reg a2 with a_0
    add     a0,a0,a2
    li      a1, 1
    mul     a2,a1,s2
                    #occupy reg a2 with a_0
    add     a0,a0,a2
    slli a0,a0,2
    add     a0,a0,a0
                    #      store 0_0:i32 temp_52_30:ptr->i32 
    li      a1, 0
    sd      a1,0(a0)
                    #      mu a_0:261 
                    #      a_0 = chi a_0:261 
                    #      new_var temp_53_30:Array:i32:[Some(4_0), Some(2_0)] 
                    #      temp_53_30 = load *step_0:ptr->Array:i32:[Some(2_0)] 
                    #   load label step as ptr to reg
    la      a1, step
                    #occupy reg a1 with *step_0
    lw      a2,0(a1)
                    #      new_var temp_54_30:ptr->i32 
                    #      new_var temp_55_30:i32 
                    #      temp_54_30 = getelementptr temp_53_30:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(0_0)] 
    li      a1, 0
    sd      a0,136(sp)
    li      a0, 2
    add     a1,a1,a2
    li      a0, 1
    sw      a2,132(sp)
    li      a2, 0
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a0,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
                    #      temp_55_30 = load temp_54_30:ptr->i32 
    lw      a0,0(a1)
                    #      new_var temp_56_30:i32 
                    #      temp_56_30 = Sub i32 x2_30, temp_55_30 
    sub     a2,a7,a0
                    #      new_var temp_57_30:Array:i32:[Some(4_0), Some(2_0)] 
                    #      temp_57_30 = load *step_0:ptr->Array:i32:[Some(2_0)] 
    sw      a0,92(sp)
                    #   load label step as ptr to reg
    la      a0, step
                    #occupy reg a0 with *step_0
    sd      a1,96(sp)
    lw      a1,0(a0)
                    #      new_var temp_58_30:ptr->i32 
                    #      new_var temp_59_30:i32 
                    #      temp_58_30 = getelementptr temp_57_30:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(1_0)] 
    li      a0, 0
    sw      a1,84(sp)
    li      a1, 2
    sw      a2,88(sp)
    mul     a2,a1,a4
    add     a0,a0,a2
    li      a1, 1
    sw      a2,84(sp)
    li      a2, 1
    sw      a3,132(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_59_30 = load temp_58_30:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_60_30:i32 
                    #      temp_60_30 = Sub i32 y2_30, temp_59_30 
    sub     a2,s2,a1
                    #      new_var temp_61_30:i32 
                    #      temp_61_30 = Add i32 n_20, 1_0 
    sd      a0,48(sp)
    sw      a1,44(sp)
    li      a1, 1
    sw      a2,40(sp)
    add     a2,a0,a1
                    #      new_var temp_62_30:i32 
                    #      temp_62_30 =  Call i32 search_0(temp_56_30, temp_60_30, temp_61_30) 
                    #saved register dumping to mem
    li      s1, 3955
    add     s1,sp,s1
    sb      s1,0(s1)
    li      s2, 3928
    add     s2,sp,s2
    sw      s2,0(s2)
    sb      s3,183(sp)
    li      s3, 3924
    add     s3,sp,s3
    sw      s4,0(s3)
    sd      s5,320(sp)
    sw      s6,192(sp)
    sb      s7,191(sp)
    sw      s8,316(sp)
    sb      s9,315(sp)
    sb      s10,182(sp)
    sw      s11,184(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,88(sp)
    lw      a1,40(sp)
    sw      a2,36(sp)
    lw      a2,36(sp)
                    #arg load ended
    call    search
    sw      a0,32(sp)
                    #      new_var temp_63_30:i32 
                    #      temp_63_30 = Add i32 temp_62_30, 1_0 
    li      a1, 1
    add     a2,a0,a1
                    #      searchResult_30 = i32 temp_63_30 
    mv      s4, a2
                    #      jump label: L12_0 
    j       .L12_0
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_64_57:i1 
                    #      temp_64_57 = icmp i32 Slt searchResult_30, num_22 
    slt     s1,s4,a1
                    #      br i1 temp_64_57, label branch_true_58, label branch_false_58 
    bnez    s1, .branch_true_58
    j       .branch_false_58
                    #      label branch_true_58: 
.branch_true_58:
                    #      num_22 = i32 searchResult_30 
    mv      a1, s4
                    #      jump label: branch_false_58 
    j       .branch_false_58
                    #      label branch_false_58: 
.branch_false_58:
                    #      label L13_0: 
.L13_0:
                    #      new_var temp_65_30:ptr->i32 
                    #      temp_65_30 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
    li      s2, 0
    li      s3, 30
    mul     s5,s3,a7
                    #occupy reg s5 with a_0
    add     s2,s2,s5
    li      s6, 1
    mul     s8,s6,s7
                    #occupy reg s8 with a_0
    add     s2,s2,s8
    slli s2,s2,2
    add     s2,s2,s2
                    #      store 1_0:i32 temp_65_30:ptr->i32 
                    #found literal reg Some(s6) already exist with 1_0
    sd      s6,0(s2)
                    #      mu a_0:309 
                    #      a_0 = chi a_0:309 
                    #      new_var temp_66_30:i32 
                    #      temp_66_30 = Add i32 i_22, 1_0 
                    #found literal reg Some(s6) already exist with 1_0
    add     s9,a4,s6
                    #      i_22 = i32 temp_66_30 
    mv      a4, s9
                    #      jump label: while.head_29 
    li      a7, 3932
    add     a7,sp,a7
    sw      a7,0(a7)
    sw      s9,4(sp)
    sb      s1,23(sp)
    li      s10, 3955
    add     s10,sp,s10
    lb      s1,0(s10)
    li      a5, 3936
    add     a5,sp,a5
    sw      a5,0(a5)
    sd      s2,8(sp)
    sw      s4,24(sp)
    sw      a2,28(sp)
    li      s11, 3956
    add     s11,sp,s11
    lw      a2,0(s11)
    sw      a3,84(sp)
    mv      a3, a1
    li      a1, 3948
    add     a1,sp,a1
    sw      a1,0(a1)
    sw      a0,32(sp)
    li      a0, 3960
    add     a0,sp,a0
    lw      a1,0(a0)
    li      s11, 3956
    add     s11,sp,s11
    sw      s11,0(s11)
    li      a0, 3960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a4, 3944
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 3964
    add     a4,sp,a4
    lw      a0,0(a4)
    li      a6, 3943
    add     a6,sp,a6
    sb      a6,0(a6)
    li      s7, 3928
    add     s7,sp,s7
    sw      s7,0(s7)
    li      s10, 3955
    add     s10,sp,s10
    sb      s10,0(s10)
    j       .while.head_29
                    #      label branch_false_37: 
.branch_false_37:
                    #      label L14_0: 
.L14_0:
                    #      new_var temp_24_35:Array:i32:[Some(4_0), Some(2_0)] 
                    #      temp_24_35 = load *step_0:ptr->Array:i32:[Some(2_0)] 
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
                    #   load label step as ptr to reg
    la      a0, step
                    #occupy reg a0 with *step_0
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,0(a0)
                    #      new_var temp_25_35:ptr->i32 
                    #      new_var temp_26_35:i32 
                    #      temp_25_35 = getelementptr temp_24_35:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(0_0)] 
    li      a0, 0
    sw      a1,292(sp)
    li      a1, 2
    li      a2, 3956
    add     a2,sp,a2
    sw      a2,0(a2)
    mul     a2,a1,a4
    add     a0,a0,a2
    li      a1, 1
    sw      a2,292(sp)
    li      a2, 0
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_26_35 = load temp_25_35:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_27_35:i32 
                    #      temp_27_35 = Add i32 x2_30, temp_26_35 
    add     a2,a7,a1
                    #      x2_30 = i32 temp_27_35 
    mv      a7, a2
                    #      new_var temp_28_35:Array:i32:[Some(4_0), Some(2_0)] 
                    #      temp_28_35 = load *step_0:ptr->Array:i32:[Some(2_0)] 
    sd      a0,256(sp)
                    #   load label step as ptr to reg
    la      a0, step
                    #occupy reg a0 with *step_0
    sw      a1,252(sp)
    lw      a1,0(a0)
                    #      new_var temp_29_35:ptr->i32 
                    #      new_var temp_30_35:i32 
                    #      temp_29_35 = getelementptr temp_28_35:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(1_0)] 
    li      a0, 0
    sw      a1,244(sp)
    li      a1, 2
    sw      a2,248(sp)
    mul     a2,a1,a4
    add     a0,a0,a2
    li      a1, 1
    sw      a2,244(sp)
    li      a2, 1
    sw      a3,292(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
                    #      temp_30_35 = load temp_29_35:ptr->i32 
    lw      a1,0(a0)
                    #      new_var temp_31_35:i32 
                    #      temp_31_35 = Add i32 y2_30, temp_30_35 
    add     a2,s2,a1
                    #      y2_30 = i32 temp_31_35 
    mv      s2, a2
                    #      new_var temp_32_35:i32 
                    #      temp_32_35 = Add i32 coun_30, 1_0 
    sd      a0,208(sp)
    li      a0, 1
    sw      a1,204(sp)
    add     a1,a5,a0
                    #      coun_30 = i32 temp_32_35 
    mv      a5, a1
                    #      jump label: while.head_34 
    sb      s9,315(sp)
    sw      s8,316(sp)
    sb      s3,299(sp)
    li      s4, 3924
    add     s4,sp,s4
    sw      s4,0(s4)
    sd      s5,320(sp)
    sw      s6,308(sp)
    sw      a2,200(sp)
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
    sw      a3,244(sp)
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3948
    add     a0,sp,a0
    lw      a3,0(a0)
    sw      a1,196(sp)
    li      a0, 3948
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 3960
    add     a0,sp,a0
    lw      a1,0(a0)
    sw      s11,300(sp)
    li      a0, 3960
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a4, 3944
    add     a4,sp,a4
    sw      a4,0(a4)
    li      a4, 3964
    add     a4,sp,a4
    lw      a0,0(a4)
    sb      s7,307(sp)
    sb      s10,298(sp)
    j       .while.head_34
                    #      label while.exit_29: 
.while.exit_29:
                    #      new_var temp_67_62:i1 
                    #      temp_67_62 = icmp i32 Sgt num_22, 10_0 
    li      a5, 10
    slt     a7,a5,a3
                    #      br i1 temp_67_62, label branch_true_63, label branch_false_63 
    bnez    a7, .branch_true_63
    j       .branch_false_63
                    #      label branch_true_63: 
.branch_true_63:
                    #      ret 1073741824_0 
    li      a5, 3976
    add     a5,sp,a5
    ld      ra,0(a5)
    li      s2, 3968
    add     s2,sp,s2
    ld      s0,0(s2)
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 1073741824
    li      s3, 3984
    li      s3, 3984
    add     sp,s3,sp
    ret
                    #      label branch_false_63: 
.branch_false_63:
                    #      label L15_0: 
.L15_0:
                    #      ret num_22 
    li      a5, 3976
    add     a5,sp,a5
    ld      ra,0(a5)
    li      s2, 3968
    add     s2,sp,s2
    ld      s0,0(s2)
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s3, 3984
    li      s3, 3984
    add     sp,s3,sp
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_68:4|temp_69:4|temp_70:4|temp_71:1|none:3|i:4|j:4|temp_72:1|temp_73:1|none:6|temp_74:8|temp_75:4|temp_76:4|temp_77:4|temp_78:1|none:3|temp_79:4|temp_80:1|none:3|temp_81:8|temp_82:4|temp_83:3600|none:4|temp_84:8|temp_85:4|temp_86:1|none:3|temp_87:4|temp_88:3600|none:4|temp_89:8|temp_90:4|temp_91:1|none:3|temp_92:4|temp_93:4|temp_94:4|temp_95:4|res:4|temp_96:1|none:3|temp_97:4|temp_98:4
    li      a0, -7368
    li      a0, -7368
    add     sp,a0,sp
    li      a1, 7360
    add     a1,sp,a1
    sd      ra,0(a1)
    li      a2, 7352
    add     a2,sp,a2
    sd      s0,0(a2)
    li      a3, 7368
    li      a3, 7368
    add     s0,a3,sp
                    #      alloc i32 temp_68_67 
                    #      alloc i32 temp_69_67 
                    #      alloc i32 temp_70_70 
                    #      alloc i1 temp_71_70 
                    #      alloc i32 i_72 
                    #      alloc i32 j_72 
                    #      alloc i1 temp_72_75 
                    #      alloc i1 temp_73_79 
                    #      alloc ptr->i32 temp_74_81 
                    #      alloc i32 temp_75_81 
                    #      alloc i32 temp_76_77 
                    #      alloc i32 temp_77_86 
                    #      alloc i1 temp_78_86 
                    #      alloc i32 temp_79_90 
                    #      alloc i1 temp_80_90 
                    #      alloc ptr->i32 temp_81_92 
                    #      alloc i32 temp_82_92 
                    #      alloc Array:i32:[Some(30_0), Some(30_0)] temp_83_94 
                    #      alloc ptr->i32 temp_84_94 
                    #      alloc i32 temp_85_94 
                    #      alloc i1 temp_86_94 
                    #      alloc i32 temp_87_92 
                    #      alloc Array:i32:[Some(30_0), Some(30_0)] temp_88_99 
                    #      alloc ptr->i32 temp_89_99 
                    #      alloc i32 temp_90_99 
                    #      alloc i1 temp_91_99 
                    #      alloc i32 temp_92_88 
                    #      alloc i32 temp_93_72 
                    #      alloc i32 temp_94_72 
                    #      alloc i32 temp_95_72 
                    #      alloc i32 res_72 
                    #      alloc i1 temp_96_107 
                    #      alloc i32 temp_97_72 
                    #      alloc i32 temp_98_72 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_68_67:i32 
                    #      temp_68_67 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 7348
    add     a0,sp,a0
    sw      a0,0(a0)
                    #      store temp_68_67:i32 *w_0:ptr->i32 
                    #   load label w as ptr to reg
    la      a4, w
                    #occupy reg a4 with *w_0
    sd      a0,0(a4)
                    #      new_var temp_69_67:i32 
                    #      temp_69_67 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 7348
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a5, 7344
    add     a5,sp,a5
    sw      a0,0(a5)
                    #      store temp_69_67:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a6, h
                    #occupy reg a6 with *h_0
    sd      a0,0(a6)
                    #      jump label: while.head_71 
    j       .while.head_71
                    #      label while.head_71: 
.while.head_71:
                    #      new_var temp_70_70:i32 
                    #      temp_70_70 = load *w_0:ptr->i32 
                    #   load label w as ptr to reg
    la      a1, w
                    #occupy reg a1 with *w_0
    lw      a2,0(a1)
                    #      new_var temp_71_70:i1 
                    #      temp_71_70 = icmp i32 Ne temp_70_70, 0_0 
    li      a3, 0
    xor     a4,a2,a3
    snez    a4, a4
                    #      br i1 temp_71_70, label while.body_71, label while.exit_71 
    bnez    a4, .while.body_71
    j       .while.exit_71
                    #      label while.body_71: 
.while.body_71:
                    #      new_var i_72:i32 
                    #      new_var j_72:i32 
                    #      i_72 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_76 
    j       .while.head_76
                    #      label while.head_76: 
.while.head_76:
                    #      new_var temp_72_75:i1 
                    #      temp_72_75 = icmp i32 Slt i_72, 30_0 
    li      a3, 30
    slt     a5,a1,a3
                    #      br i1 temp_72_75, label while.body_76, label while.exit_76 
    bnez    a5, .while.body_76
    j       .while.exit_76
                    #      label while.body_76: 
.while.body_76:
                    #      j_72 = i32 0_0 
    li      a3, 0
                    #      jump label: while.head_80 
    j       .while.head_80
                    #      label while.head_80: 
.while.head_80:
                    #      new_var temp_73_79:i1 
                    #      temp_73_79 = icmp i32 Slt j_72, 30_0 
    li      a6, 30
    slt     a7,a3,a6
                    #      br i1 temp_73_79, label while.body_80, label while.exit_80 
    bnez    a7, .while.body_80
    j       .while.exit_80
                    #      label while.body_80: 
.while.body_80:
                    #      new_var temp_74_81:ptr->i32 
                    #      temp_74_81 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
    li      a6, 0
    li      s1, 30
    mul     s2,s1,a1
                    #occupy reg s2 with a_0
    add     a6,a6,s2
    li      s3, 1
    mul     s4,s3,a3
                    #occupy reg s4 with a_0
    add     a6,a6,s4
    slli a6,a6,2
    add     a6,a6,a6
                    #      store 1_0:i32 temp_74_81:ptr->i32 
                    #found literal reg Some(s3) already exist with 1_0
    sd      s3,0(a6)
                    #      mu a_0:370 
                    #      a_0 = chi a_0:370 
                    #      new_var temp_75_81:i32 
                    #      temp_75_81 = Add i32 j_72, 1_0 
                    #found literal reg Some(s3) already exist with 1_0
    add     s5,a3,s3
                    #      j_72 = i32 temp_75_81 
    mv      a3, s5
                    #      jump label: while.head_80 
    li      a6, 7312
    add     a6,sp,a6
    sd      a6,0(a6)
    li      s5, 7308
    add     s5,sp,s5
    sw      s5,0(s5)
    li      a7, 7326
    add     a7,sp,a7
    sb      a7,0(a7)
    j       .while.head_80
                    #      label while.exit_80: 
.while.exit_80:
                    #      new_var temp_76_77:i32 
                    #      temp_76_77 = Add i32 i_72, 1_0 
    li      a6, 1
    add     s1,a1,a6
                    #      i_72 = i32 temp_76_77 
    mv      a1, s1
                    #      jump label: while.head_76 
    li      s1, 7304
    add     s1,sp,s1
    sw      s1,0(s1)
    li      a3, 7328
    add     a3,sp,a3
    sw      a3,0(a3)
    li      a7, 7326
    add     a7,sp,a7
    sb      a7,0(a7)
    li      a5, 7327
    add     a5,sp,a5
    sb      a5,0(a5)
    j       .while.head_76
                    #      label while.exit_76: 
.while.exit_76:
                    #      i_72 = i32 1_0 
                    #      jump label: while.head_87 
    j       .while.head_87
                    #      label while.head_87: 
.while.head_87:
                    #      new_var temp_77_86:i32 
                    #      temp_77_86 = load *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      a3, h
                    #occupy reg a3 with *h_0
    lw      a6,0(a3)
                    #      new_var temp_78_86:i1 
                    #      temp_78_86 = icmp i32 Sle i_72, temp_77_86 
    slt     a7,a6,a1
    xori    a7,a7,1
                    #      br i1 temp_78_86, label while.body_87, label while.exit_87 
    bnez    a7, .while.body_87
    j       .while.exit_87
                    #      label while.body_87: 
.while.body_87:
                    #      j_72 = i32 1_0 
    li      a3, 1
                    #      jump label: while.head_91 
    j       .while.head_91
                    #      label while.head_91: 
.while.head_91:
                    #      new_var temp_79_90:i32 
                    #      temp_79_90 = load *w_0:ptr->i32 
                    #   load label w as ptr to reg
    la      s1, w
                    #occupy reg s1 with *w_0
    lw      s2,0(s1)
                    #      new_var temp_80_90:i1 
                    #      temp_80_90 = icmp i32 Sle j_72, temp_79_90 
    slt     s3,s2,a3
    xori    s3,s3,1
                    #      br i1 temp_80_90, label while.body_91, label while.exit_91 
    bnez    s3, .while.body_91
    j       .while.exit_91
                    #      label while.body_91: 
.while.body_91:
                    #      new_var temp_81_92:ptr->i32 
                    #      temp_81_92 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
    li      s1, 0
    li      s4, 30
    mul     s5,s4,a1
                    #occupy reg s5 with a_0
    add     s1,s1,s5
    li      s6, 1
    mul     s7,s6,a3
                    #occupy reg s7 with a_0
    add     s1,s1,s7
    slli s1,s1,2
    add     s1,s1,s1
                    #      new_var temp_82_92:i32 
                    #      temp_82_92 =  Call i32 getint_0() 
                    #saved register dumping to mem
    li      s1, 7280
    add     s1,sp,s1
    sd      s1,0(s1)
    li      s2, 7292
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 7291
    add     s3,sp,s3
    sb      s3,0(s3)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s4, 7276
    add     s4,sp,s4
    sw      a0,0(s4)
                    #      store temp_82_92:i32 temp_81_92:ptr->i32 
    sd      a0,0(s5)
                    #      mu a_0:411 
                    #      a_0 = chi a_0:411 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_83_94:Array:i32:[Some(30_0), Some(30_0)] 
                    #      temp_83_94 = load *a_0:ptr->Array:i32:[Some(30_0)] 
                    #   load label a as ptr to reg
    la      s1, a
                    #occupy reg s1 with *a_0
    lw      s2,0(s1)
                    #      new_var temp_84_94:ptr->i32 
                    #      new_var temp_85_94:i32 
                    #      temp_84_94 = getelementptr temp_83_94:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
    li      s3, 0
    li      s4, 30
    add     s3,s3,s2
    li      s6, 1
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
                    #      temp_85_94 = load temp_84_94:ptr->i32 
    lw      s7,0(s3)
                    #      new_var temp_86_94:i1 
                    #      temp_86_94 = icmp i32 Eq temp_85_94, 2_0 
    li      s8, 2
    xor     s9,s7,s8
    seqz    s9, s9
                    #      br i1 temp_86_94, label branch_true_95, label branch_false_95 
    bnez    s9, .branch_true_95
    j       .branch_false_95
                    #      label branch_true_95: 
.branch_true_95:
                    #      store i_72:i32 *x_0_0:ptr->i32 
                    #   load label x_0 as ptr to reg
    la      s1, x_0
                    #occupy reg s1 with *x_0_0
    sd      a1,0(s1)
                    #      store j_72:i32 *y_0_0:ptr->i32 
                    #   load label y_0 as ptr to reg
    la      s4, y_0
                    #occupy reg s4 with *y_0_0
    sd      a3,0(s4)
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_95: 
.branch_false_95:
                    #      new_var temp_88_99:Array:i32:[Some(30_0), Some(30_0)] 
                    #      temp_88_99 = load *a_0:ptr->Array:i32:[Some(30_0)] 
                    #   load label a as ptr to reg
    la      s1, a
                    #occupy reg s1 with *a_0
    lw      s4,0(s1)
                    #      new_var temp_89_99:ptr->i32 
                    #      new_var temp_90_99:i32 
                    #      temp_89_99 = getelementptr temp_88_99:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
    li      s6, 0
    li      s8, 30
    add     s6,s6,s4
    li      s10, 1
    add     s6,s6,s4
    slli s6,s6,2
    add     s6,s6,sp
    add     s6,s6,s6
                    #      temp_90_99 = load temp_89_99:ptr->i32 
    lw      s11,0(s6)
                    #      new_var temp_91_99:i1 
                    #      temp_91_99 = icmp i32 Eq temp_90_99, 3_0 
    li      s1, 3
    xor     s8,s11,s1
    seqz    s8, s8
                    #      br i1 temp_91_99, label branch_true_100, label branch_false_100 
    bnez    s8, .branch_true_100
    j       .branch_false_100
                    #      label branch_true_100: 
.branch_true_100:
                    #      store i_72:i32 *x_1_0:ptr->i32 
                    #   load label x_1 as ptr to reg
    la      s1, x_1
                    #occupy reg s1 with *x_1_0
    sd      a1,0(s1)
                    #      store j_72:i32 *y_1_0:ptr->i32 
                    #   load label y_1 as ptr to reg
    la      s10, y_1
                    #occupy reg s10 with *y_1_0
    sd      a3,0(s10)
                    #      jump label: branch_false_100 
    j       .branch_false_100
                    #      label branch_false_100: 
.branch_false_100:
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_87_92:i32 
                    #      temp_87_92 = Add i32 j_72, 1_0 
    li      s1, 1
    add     s4,a3,s1
                    #      j_72 = i32 temp_87_92 
    mv      a3, s4
                    #      jump label: while.head_91 
    li      s6, 3660
    add     s6,sp,s6
    sw      s7,0(s6)
    li      s5, 7280
    add     s5,sp,s5
    sd      s5,0(s5)
    li      s4, 3652
    add     s4,sp,s4
    sw      s4,0(s4)
    li      s2, 7272
    add     s2,sp,s2
    sw      s2,0(s2)
    li      a0, 7276
    add     a0,sp,a0
    sw      a0,0(a0)
    li      s6, 7344
    add     s6,sp,s6
    lw      a0,0(s6)
    li      s3, 3664
    add     s3,sp,s3
    sd      s3,0(s3)
    li      s6, 7344
    add     s6,sp,s6
    sw      s6,0(s6)
    li      s9, 3659
    add     s9,sp,s9
    sb      s9,0(s9)
    j       .while.head_91
                    #      label while.exit_91: 
.while.exit_91:
                    #      new_var temp_92_88:i32 
                    #      temp_92_88 = Add i32 i_72, 1_0 
    li      s1, 1
    add     s4,a1,s1
                    #      i_72 = i32 temp_92_88 
    mv      a1, s4
                    #      jump label: while.head_87 
    li      a6, 7300
    add     a6,sp,a6
    sw      a6,0(a6)
    li      a3, 7328
    add     a3,sp,a3
    sw      a3,0(a3)
    sw      s4,28(sp)
    li      s2, 7292
    add     s2,sp,s2
    sw      s2,0(s2)
    li      s3, 7291
    add     s3,sp,s3
    sb      s3,0(s3)
    li      a7, 7299
    add     a7,sp,a7
    sb      a7,0(a7)
    j       .while.head_87
                    #      label while.exit_87: 
.while.exit_87:
                    #      new_var temp_93_72:i32 
                    #      temp_93_72 = load *x_0_0:ptr->i32 
                    #   load label x_0 as ptr to reg
    la      a3, x_0
                    #occupy reg a3 with *x_0_0
    lw      s1,0(a3)
                    #      new_var temp_94_72:i32 
                    #      temp_94_72 = load *y_0_0:ptr->i32 
                    #   load label y_0 as ptr to reg
    la      s2, y_0
                    #occupy reg s2 with *y_0_0
    lw      s3,0(s2)
                    #      new_var temp_95_72:i32 
                    #      temp_95_72 =  Call i32 search_0(temp_93_72, temp_94_72, 1_0) 
                    #saved register dumping to mem
    sw      s1,24(sp)
    sw      s3,20(sp)
                    #saved register dumped to mem
                    #arg load start
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
    lw      a0,24(sp)
    li      a1, 7332
    add     a1,sp,a1
    sw      a1,0(a1)
    lw      a1,20(sp)
    li      a2, 7340
    add     a2,sp,a2
    sw      a2,0(a2)
    li      a2, 1
                    #arg load ended
    call    search
    sw      a0,16(sp)
                    #      res_72 = i32 temp_95_72 
    mv      a1, a0
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_96_107:i1 
                    #      temp_96_107 = icmp i32 Sle res_72, 10_0 
    li      a2, 10
    slt     a3,a2,a1
    xori    a3,a3,1
                    #      br i1 temp_96_107, label branch_true_108, label branch_false_108 
    bnez    a3, .branch_true_108
    j       .branch_false_108
                    #      label branch_true_108: 
.branch_true_108:
                    #       Call void putint_0(res_72) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L5_0 
    j       .L5_0
                    #      label branch_false_108: 
.branch_false_108:
                    #       Call void putint_0(-1_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    li      a0, -1
                    #arg load ended
    call    putint
                    #       Call void putch_0(10_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 10
                    #arg load ended
    call    putch
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_97_72:i32 
                    #      temp_97_72 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,4(sp)
                    #      store temp_97_72:i32 *w_0:ptr->i32 
                    #   load label w as ptr to reg
    la      a2, w
                    #occupy reg a2 with *w_0
    sd      a0,0(a2)
                    #      new_var temp_98_72:i32 
                    #      temp_98_72 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,4(sp)
    sw      a0,0(sp)
                    #      store temp_98_72:i32 *h_0:ptr->i32 
                    #   load label h as ptr to reg
    la      s1, h
                    #occupy reg s1 with *h_0
    sd      a0,0(s1)
                    #      jump label: while.head_71 
    li      a4, 7339
    add     a4,sp,a4
    sb      a4,0(a4)
    li      a6, 7300
    add     a6,sp,a6
    sw      a6,0(a6)
    sw      a1,12(sp)
    sb      a3,11(sp)
    sw      a0,0(sp)
    li      s3, 7344
    add     s3,sp,s3
    lw      a0,0(s3)
    li      s3, 7344
    add     s3,sp,s3
    sw      s3,0(s3)
    li      a7, 7299
    add     a7,sp,a7
    sb      a7,0(a7)
    li      a5, 7327
    add     a5,sp,a5
    sb      a5,0(a5)
    j       .while.head_71
                    #      label while.exit_71: 
.while.exit_71:
                    #      ret 0_0 
    li      a1, 7360
    add     a1,sp,a1
    ld      ra,0(a1)
    li      a3, 7352
    add     a3,sp,a3
    ld      s0,0(a3)
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
    li      a0, 0
    li      a5, 7368
    li      a5, 7368
    add     sp,a5,sp
    ret
.section        .data
    .align 4
    .globl y_1
                    #      global i32 y_1_0 
    .type y_1,@object
y_1:
    .word 0
    .align 4
    .globl x_1
                    #      global i32 x_1_0 
    .type x_1,@object
x_1:
    .word 0
    .align 4
    .globl y_0
                    #      global i32 y_0_0 
    .type y_0,@object
y_0:
    .word 0
    .align 4
    .globl x_0
                    #      global i32 x_0_0 
    .type x_0,@object
x_0:
    .word 0
    .align 4
    .globl h
                    #      global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl w
                    #      global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl step
                    #      global Array:i32:[Some(4_0), Some(2_0)] step_0 
    .type step,@object
step:
    .word 1
    .word 0
    .word 0
    .word -1
    .word 0
    .word 0
    .word 1
    .word 0
    .word 1
    .word 0
    .word -1
    .word 0
    .word -1
    .zero 20
    .align 4
    .globl a
                    #      global Array:i32:[Some(30_0), Some(30_0)] a_0 
    .type a,@object
a:
    .zero 3600
    .align 4
    .globl INF
                    #      global i32 INF_0 
    .type INF,@object
INF:
    .word 1073741824
