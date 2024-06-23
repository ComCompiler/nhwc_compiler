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
              #                    regtab 
              #                          Define search_0 [x_20, y_20, n_20] -> search_ret_0 
    .globl search
    .type search,@function
search:
              #                    mem layout:|ra_search:8 at 248|s0_search:8 at 240|x:4 at 236|y:4 at 232|n:4 at 228|temp_9_cmp:1 at 227|none:3 at 224|num:4 at 220|i:4 at 216|temp_10_cmp:1 at 215|none:3 at 212|coun:4 at 208|x2:4 at 204|y2:4 at 200|temp_11_array_ptr:8 at 192|temp_12_array_ele:4 at 188|temp_13_cmp:1 at 187|none:3 at 184|temp_14_ptr2globl:4 at 180|temp_15_cmp:1 at 179|none:3 at 176|temp_16_ptr2globl:4 at 172|temp_17_cmp:1 at 171|temp_18_logic:1 at 170|none:2 at 168|temp_19_array_ptr:8 at 160|temp_20_array_ele:4 at 156|temp_21_arithop:4 at 152|temp_22_array_ptr:8 at 144|temp_23_array_ele:4 at 140|temp_24_arithop:4 at 136|temp_25_arithop:4 at 132|temp_26_ptr2globl:4 at 128|temp_27_cmp:1 at 127|none:3 at 124|temp_28_ptr2globl:4 at 120|temp_29_cmp:1 at 119|temp_30_logic:1 at 118|temp_31_cmp:1 at 117|none:1 at 116|temp_32_arithop:4 at 112|temp_33_ptr2globl:4 at 108|temp_34_arithop:4 at 104|temp_35_cmp:1 at 103|temp_36_cmp:1 at 102|temp_37_logic:1 at 101|none:1 at 100|temp_38_ptr2globl:4 at 96|temp_39_arithop:4 at 92|temp_40_cmp:1 at 91|temp_41_logic:1 at 90|temp_42_cmp:1 at 89|temp_43_logic:1 at 88|temp_44_arithop:4 at 84|none:4 at 80|temp_45_index_ptr:8 at 72|temp_46_array_ptr:8 at 64|temp_47_array_ele:4 at 60|temp_48_arithop:4 at 56|temp_49_array_ptr:8 at 48|temp_50_array_ele:4 at 44|temp_51_arithop:4 at 40|temp_52_arithop:4 at 36|temp_53_ret_of_search:4 at 32|temp_54_arithop:4 at 28|searchResult:4 at 24|temp_55_cmp:1 at 23|none:7 at 16|temp_56_index_ptr:8 at 8|temp_57_arithop:4 at 4|temp_58_cmp:1 at 3|none:3 at 0
    addi    sp,sp,-256
              #                    store to ra_search_0 in mem offset legal
    sd      ra,248(sp)
              #                    store to s0_search_0 in mem offset legal
    sd      s0,240(sp)
    addi    s0,sp,256
              #                          alloc i1 temp_9_cmp_23 
              #                          alloc i32 num_22 
              #                          alloc i32 i_22 
              #                          alloc i1 temp_10_cmp_28 
              #                          alloc i32 coun_30 
              #                          alloc i32 x2_30 
              #                          alloc i32 y2_30 
              #                          alloc ptr->i32 temp_11_array_ptr_33 
              #                          alloc i32 temp_12_array_ele_33 
              #                          alloc i1 temp_13_cmp_33 
              #                          alloc i32 temp_14_ptr2globl_36 
              #                          alloc i1 temp_15_cmp_36 
              #                          alloc i32 temp_16_ptr2globl_36 
              #                          alloc i1 temp_17_cmp_36 
              #                          alloc i1 temp_18_logic_36 
              #                          alloc ptr->i32 temp_19_array_ptr_35 
              #                          alloc i32 temp_20_array_ele_35 
              #                          alloc i32 temp_21_arithop_35 
              #                          alloc ptr->i32 temp_22_array_ptr_35 
              #                          alloc i32 temp_23_array_ele_35 
              #                          alloc i32 temp_24_arithop_35 
              #                          alloc i32 temp_25_arithop_35 
              #                          alloc i32 temp_26_ptr2globl_42 
              #                          alloc i1 temp_27_cmp_42 
              #                          alloc i32 temp_28_ptr2globl_42 
              #                          alloc i1 temp_29_cmp_42 
              #                          alloc i1 temp_30_logic_42 
              #                          alloc i1 temp_31_cmp_45 
              #                          alloc i32 temp_32_arithop_47 
              #                          alloc i32 temp_33_ptr2globl_50 
              #                          alloc i32 temp_34_arithop_50 
              #                          alloc i1 temp_35_cmp_50 
              #                          alloc i1 temp_36_cmp_50 
              #                          alloc i1 temp_37_logic_50 
              #                          alloc i32 temp_38_ptr2globl_50 
              #                          alloc i32 temp_39_arithop_50 
              #                          alloc i1 temp_40_cmp_50 
              #                          alloc i1 temp_41_logic_50 
              #                          alloc i1 temp_42_cmp_50 
              #                          alloc i1 temp_43_logic_50 
              #                          alloc i32 temp_44_arithop_52 
              #                          alloc ptr->i32 temp_45_index_ptr_30 
              #                          alloc ptr->i32 temp_46_array_ptr_30 
              #                          alloc i32 temp_47_array_ele_30 
              #                          alloc i32 temp_48_arithop_30 
              #                          alloc ptr->i32 temp_49_array_ptr_30 
              #                          alloc i32 temp_50_array_ele_30 
              #                          alloc i32 temp_51_arithop_30 
              #                          alloc i32 temp_52_arithop_30 
              #                          alloc i32 temp_53_ret_of_search_30 
              #                          alloc i32 temp_54_arithop_30 
              #                          alloc i32 searchResult_30 
              #                          alloc i1 temp_55_cmp_57 
              #                          alloc ptr->i32 temp_56_index_ptr_30 
              #                          alloc i32 temp_57_arithop_30 
              #                          alloc i1 temp_58_cmp_62 
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_9_cmp_23:i1 
              #                          temp_9_cmp_23 = icmp i32 Sgt n_20, 10_0 
              #                    occupy a2 with n_20
              #                    occupy a3 with 10_0
    li      a3, 10
              #                    occupy a4 with temp_9_cmp_23
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_9_cmp_23, label branch_true_24, label branch_false_24 
              #                    occupy a4 with temp_9_cmp_23
              #                    free a4
              #                    occupy a4 with temp_9_cmp_23
    bnez    a4, .branch_true_24
              #                    free a4
    j       .branch_false_24
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } | 
              #                          label branch_true_24: 
.branch_true_24:
              #                          ret 1073741824_0 
              #                    load from ra_search_0 in mem
    ld      ra,248(sp)
              #                    load from s0_search_0 in mem
    ld      s0,240(sp)
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } | 
              #                          label branch_false_24: 
.branch_false_24:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          num_22 = i32 1073741824_0 
              #                    occupy a3 with num_22
    li      a3, 1073741824
              #                    free a3
              #                          i_22 = i32 0_0 
              #                    occupy a5 with i_22
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_10_cmp_28:i1 
              #                          temp_10_cmp_28 = icmp i32 Slt i_22, 4_0 
              #                    occupy a5 with i_22
              #                    occupy a6 with 4_0
    li      a6, 4
              #                    occupy a7 with temp_10_cmp_28
    slt     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_10_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a7 with temp_10_cmp_28
              #                    free a7
              #                    occupy a7 with temp_10_cmp_28
    bnez    a7, .while.body_29
              #                    free a7
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          coun_30 = i32 0_0 
              #                    occupy a6 with coun_30
    li      a6, 0
              #                    free a6
              #                          x2_30 = i32 x_20 
              #                    occupy a0 with x_20
              #                    occupy s1 with x2_30
    mv      s1, a0
              #                    free a0
              #                    free s1
              #                          y2_30 = i32 y_20 
              #                    occupy a1 with y_20
              #                    occupy s2 with y2_30
    mv      s2, a1
              #                    free a1
              #                    free s2
              #                          jump label: while.head_34 
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } | 
              #                          label while.head_34: 
.while.head_34:
              #                          new_var temp_11_array_ptr_33:ptr->i32 
              #                          temp_11_array_ptr_33 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy s3 with temp_11_array_ptr_33
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s1 with x2_30
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s1
              #                    free s4
              #                    free s1
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy s6 with *a_0
              #                       load label a as ptr to reg
    la      s6, a
              #                    occupy reg s6 with *a_0
    add     s3,s3,s6
              #                    free s6
              #                    free s3
              #                          new_var temp_12_array_ele_33:i32 
              #                          temp_12_array_ele_33 = load temp_11_array_ptr_33:ptr->i32 
              #                    occupy s3 with temp_11_array_ptr_33
              #                    occupy s7 with temp_12_array_ele_33
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          new_var temp_13_cmp_33:i1 
              #                          temp_13_cmp_33 = icmp i32 Ne temp_12_array_ele_33, 1_0 
              #                    occupy s7 with temp_12_array_ele_33
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s8 with temp_13_cmp_33
    xor     s8,s7,s4
    snez    s8, s8
              #                    free s7
              #                    free s4
              #                    free s8
              #                          br i1 temp_13_cmp_33, label while.body_34, label while.exit_34 
              #                    occupy s8 with temp_13_cmp_33
              #                    free s8
              #                    occupy s8 with temp_13_cmp_33
    bnez    s8, .while.body_34
              #                    free s8
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label while.body_34: 
.while.body_34:
              #                          new_var temp_14_ptr2globl_36:i32 
              #                          temp_14_ptr2globl_36 = load *y_1_0:ptr->i32 
              #                    occupy s4 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      s4, y_1
              #                    occupy reg s4 with *y_1_0
              #                    occupy s5 with temp_14_ptr2globl_36
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_15_cmp_36:i1 
              #                          temp_15_cmp_36 = icmp i32 Eq y2_30, temp_14_ptr2globl_36 
              #                    occupy s2 with y2_30
              #                    occupy s5 with temp_14_ptr2globl_36
              #                    occupy s6 with temp_15_cmp_36
    xor     s6,s2,s5
    seqz    s6, s6
              #                    free s2
              #                    free s5
              #                    free s6
              #                          new_var temp_16_ptr2globl_36:i32 
              #                          temp_16_ptr2globl_36 = load *x_1_0:ptr->i32 
              #                    occupy s9 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      s9, x_1
              #                    occupy reg s9 with *x_1_0
              #                    occupy s10 with temp_16_ptr2globl_36
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_17_cmp_36:i1 
              #                          temp_17_cmp_36 = icmp i32 Eq x2_30, temp_16_ptr2globl_36 
              #                    occupy s1 with x2_30
              #                    occupy s10 with temp_16_ptr2globl_36
              #                    occupy s11 with temp_17_cmp_36
    xor     s11,s1,s10
    seqz    s11, s11
              #                    free s1
              #                    free s10
              #                    free s11
              #                          new_var temp_18_logic_36:i1 
              #                          temp_18_logic_36 = And i1 temp_17_cmp_36, temp_15_cmp_36 
              #                    occupy s11 with temp_17_cmp_36
              #                    occupy s6 with temp_15_cmp_36
              #                    occupy s4 with temp_18_logic_36
    and     s4,s11,s6
              #                    free s11
              #                    free s6
              #                    free s4
              #                          br i1 temp_18_logic_36, label branch_true_37, label branch_false_37 
              #                    occupy s4 with temp_18_logic_36
              #                    free s4
              #                    occupy s4 with temp_18_logic_36
    bnez    s4, .branch_true_37
              #                    free s4
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_16_ptr2globl_36, tracked: true } |     s11:Freed { symidx: temp_17_cmp_36, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_18_logic_36, tracked: true } |     s5:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s6:Freed { symidx: temp_15_cmp_36, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          jump label: while.exit_34 
              #                    store to temp_15_cmp_36 in mem offset legal
    sb      s6,179(sp)
              #                    release s6 with temp_15_cmp_36
              #                    store to temp_14_ptr2globl_36 in mem offset legal
    sw      s5,180(sp)
              #                    release s5 with temp_14_ptr2globl_36
              #                    store to temp_18_logic_36 in mem offset legal
    sb      s4,170(sp)
              #                    release s4 with temp_18_logic_36
              #                    store to temp_16_ptr2globl_36 in mem offset legal
    sw      s10,172(sp)
              #                    release s10 with temp_16_ptr2globl_36
              #                    store to temp_17_cmp_36 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_17_cmp_36
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label while.exit_34: 
.while.exit_34:
              #                          new_var temp_26_ptr2globl_42:i32 
              #                          temp_26_ptr2globl_42 = load *y_1_0:ptr->i32 
              #                    occupy s4 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      s4, y_1
              #                    occupy reg s4 with *y_1_0
              #                    occupy s5 with temp_26_ptr2globl_42
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_27_cmp_42:i1 
              #                          temp_27_cmp_42 = icmp i32 Eq y2_30, temp_26_ptr2globl_42 
              #                    occupy s2 with y2_30
              #                    occupy s5 with temp_26_ptr2globl_42
              #                    occupy s6 with temp_27_cmp_42
    xor     s6,s2,s5
    seqz    s6, s6
              #                    free s2
              #                    free s5
              #                    free s6
              #                          new_var temp_28_ptr2globl_42:i32 
              #                          temp_28_ptr2globl_42 = load *x_1_0:ptr->i32 
              #                    occupy s9 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      s9, x_1
              #                    occupy reg s9 with *x_1_0
              #                    occupy s10 with temp_28_ptr2globl_42
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_29_cmp_42:i1 
              #                          temp_29_cmp_42 = icmp i32 Eq x2_30, temp_28_ptr2globl_42 
              #                    occupy s1 with x2_30
              #                    occupy s10 with temp_28_ptr2globl_42
              #                    occupy s11 with temp_29_cmp_42
    xor     s11,s1,s10
    seqz    s11, s11
              #                    free s1
              #                    free s10
              #                    free s11
              #                          new_var temp_30_logic_42:i1 
              #                          temp_30_logic_42 = And i1 temp_29_cmp_42, temp_27_cmp_42 
              #                    occupy s11 with temp_29_cmp_42
              #                    occupy s6 with temp_27_cmp_42
              #                    occupy s4 with temp_30_logic_42
    and     s4,s11,s6
              #                    free s11
              #                    free s6
              #                    free s4
              #                          br i1 temp_30_logic_42, label branch_true_43, label branch_false_43 
              #                    occupy s4 with temp_30_logic_42
              #                    free s4
              #                    occupy s4 with temp_30_logic_42
    bnez    s4, .branch_true_43
              #                    free s4
    j       .branch_false_43
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_true_43: 
.branch_true_43:
              #                          ret 1_0 
              #                    load from ra_search_0 in mem
    ld      ra,248(sp)
              #                    load from s0_search_0 in mem
    ld      s0,240(sp)
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_false_43: 
.branch_false_43:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_31_cmp_45:i1 
              #                          temp_31_cmp_45 = icmp i32 Sle coun_30, 1_0 
              #                    occupy a6 with coun_30
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with temp_31_cmp_45
    slt     a0,s9,a6
    xori    a0,a0,1
              #                    free a6
              #                    free s9
              #                    free a0
              #                          br i1 temp_31_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy a0 with temp_31_cmp_45
              #                    free a0
              #                    occupy a0 with temp_31_cmp_45
    bnez    a0, .branch_true_46
              #                    free a0
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_31_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          new_var temp_32_arithop_47:i32 
              #                          temp_32_arithop_47 = Add i32 i_22, 1_0 
              #                    occupy a5 with i_22
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to temp_31_cmp_45 in mem offset legal
    sb      a0,117(sp)
              #                    release a0 with temp_31_cmp_45
              #                    occupy a0 with temp_32_arithop_47
    add     a0,a5,s9
              #                    free a5
              #                    free s9
              #                    free a0
              #                          i_22 = i32 temp_32_arithop_47 
              #                    occupy a0 with temp_32_arithop_47
              #                    occupy a5 with i_22
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.exit_34 
              #                    store to temp_32_arithop_47 in mem offset legal
    sw      a0,112(sp)
              #                    release a0 with temp_32_arithop_47
              #                    store to temp_27_cmp_42 in mem offset legal
    sb      s6,127(sp)
              #                    release s6 with temp_27_cmp_42
              #                    store to temp_26_ptr2globl_42 in mem offset legal
    sw      s5,128(sp)
              #                    release s5 with temp_26_ptr2globl_42
              #                    store to temp_30_logic_42 in mem offset legal
    sb      s4,118(sp)
              #                    release s4 with temp_30_logic_42
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s10,120(sp)
              #                    release s10 with temp_28_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s11,119(sp)
              #                    release s11 with temp_29_cmp_42
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a0,236(sp)
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: temp_31_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: temp_31_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_33_ptr2globl_50:i32 
              #                          temp_33_ptr2globl_50 = load *w_0:ptr->i32 
              #                    occupy s9 with *w_0
              #                       load label w as ptr to reg
    la      s9, w
              #                    occupy reg s9 with *w_0
              #                    store to temp_31_cmp_45 in mem offset legal
    sb      a0,117(sp)
              #                    release a0 with temp_31_cmp_45
              #                    occupy a0 with temp_33_ptr2globl_50
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_34_arithop_50:i32 
              #                          temp_34_arithop_50 = Add i32 temp_33_ptr2globl_50, 1_0 
              #                    occupy a0 with temp_33_ptr2globl_50
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to y_20 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with y_20
              #                    occupy a1 with temp_34_arithop_50
    add     a1,a0,s9
              #                    free a0
              #                    free s9
              #                    free a1
              #                          new_var temp_35_cmp_50:i1 
              #                          temp_35_cmp_50 = icmp i32 Eq y2_30, temp_34_arithop_50 
              #                    occupy s2 with y2_30
              #                    occupy a1 with temp_34_arithop_50
              #                    occupy s9 with temp_35_cmp_50
    xor     s9,s2,a1
    seqz    s9, s9
              #                    free s2
              #                    free a1
              #                    free s9
              #                          new_var temp_36_cmp_50:i1 
              #                          temp_36_cmp_50 = icmp i32 Eq y2_30, 0_0 
              #                    occupy s2 with y2_30
              #                    store to temp_33_ptr2globl_50 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_33_ptr2globl_50
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_34_arithop_50 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_34_arithop_50
              #                    occupy a1 with temp_36_cmp_50
    xor     a1,s2,a0
    seqz    a1, a1
              #                    free s2
              #                    free a0
              #                    free a1
              #                          new_var temp_37_logic_50:i1 
              #                          temp_37_logic_50 = Or i1 temp_36_cmp_50, temp_35_cmp_50 
              #                    occupy a1 with temp_36_cmp_50
              #                    occupy s9 with temp_35_cmp_50
              #                    occupy s9 with temp_35_cmp_50
              #                    free a1
              #                    free s9
              #                    free s9
              #                          new_var temp_38_ptr2globl_50:i32 
              #                          temp_38_ptr2globl_50 = load *h_0:ptr->i32 
              #                    occupy a0 with *h_0
              #                       load label h as ptr to reg
    la      a0, h
              #                    occupy reg a0 with *h_0
              #                    store to temp_36_cmp_50 in mem offset legal
    sb      a1,102(sp)
              #                    release a1 with temp_36_cmp_50
              #                    occupy a1 with temp_38_ptr2globl_50
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_39_arithop_50:i32 
              #                          temp_39_arithop_50 = Add i32 temp_38_ptr2globl_50, 1_0 
              #                    occupy a1 with temp_38_ptr2globl_50
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to n_20 in mem offset legal
    sw      a2,228(sp)
              #                    release a2 with n_20
              #                    occupy a2 with temp_39_arithop_50
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_40_cmp_50:i1 
              #                          temp_40_cmp_50 = icmp i32 Eq x2_30, temp_39_arithop_50 
              #                    occupy s1 with x2_30
              #                    occupy a2 with temp_39_arithop_50
              #                    occupy a0 with temp_40_cmp_50
    xor     a0,s1,a2
    seqz    a0, a0
              #                    free s1
              #                    free a2
              #                    free a0
              #                          new_var temp_41_logic_50:i1 
              #                          temp_41_logic_50 = Or i1 temp_40_cmp_50, temp_37_logic_50 
              #                    occupy a0 with temp_40_cmp_50
              #                    store to temp_38_ptr2globl_50 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with temp_38_ptr2globl_50
              #                    occupy a1 with temp_37_logic_50
              #                    load from temp_37_logic_50 in mem
    lb      a1,101(sp)
              #                    occupy a1 with temp_37_logic_50
              #                    free a0
              #                    free a1
              #                    free a1
              #                          new_var temp_42_cmp_50:i1 
              #                          temp_42_cmp_50 = icmp i32 Eq x2_30, 0_0 
              #                    occupy s1 with x2_30
              #                    store to temp_40_cmp_50 in mem offset legal
    sb      a0,91(sp)
              #                    release a0 with temp_40_cmp_50
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_37_logic_50 in mem offset legal
    sb      a1,101(sp)
              #                    release a1 with temp_37_logic_50
              #                    occupy a1 with temp_42_cmp_50
    xor     a1,s1,a0
    seqz    a1, a1
              #                    free s1
              #                    free a0
              #                    free a1
              #                          new_var temp_43_logic_50:i1 
              #                          temp_43_logic_50 = Or i1 temp_42_cmp_50, temp_41_logic_50 
              #                    occupy a1 with temp_42_cmp_50
              #                    occupy a0 with temp_41_logic_50
              #                    load from temp_41_logic_50 in mem
    lb      a0,90(sp)
              #                    occupy a0 with temp_41_logic_50
              #                    free a1
              #                    free a0
              #                    free a0
              #                          br i1 temp_43_logic_50, label branch_true_51, label branch_false_51 
              #                    store to temp_41_logic_50 in mem offset legal
    sb      a0,90(sp)
              #                    release a0 with temp_41_logic_50
              #                    occupy a0 with temp_43_logic_50
              #                    load from temp_43_logic_50 in mem
    lb      a0,88(sp)
              #                    free a0
              #                    store to i_22 in mem offset legal
    sw      a5,216(sp)
              #                    release a5 with i_22
              #                    occupy a0 with temp_43_logic_50
    bnez    a0, .branch_true_51
              #                    free a0
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_43_logic_50, tracked: true } |     a1:Freed { symidx: temp_42_cmp_50, tracked: true } |     a2:Freed { symidx: temp_39_arithop_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } |     s9:Freed { symidx: temp_35_cmp_50, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var temp_44_arithop_52:i32 
              #                          temp_44_arithop_52 = Add i32 i_22, 1_0 
              #                    occupy a5 with i_22
              #                    load from i_22 in mem


    lw      a5,216(sp)
              #                    store to temp_43_logic_50 in mem offset legal
    sb      a0,88(sp)
              #                    release a0 with temp_43_logic_50
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_42_cmp_50 in mem offset legal
    sb      a1,89(sp)
              #                    release a1 with temp_42_cmp_50
              #                    occupy a1 with temp_44_arithop_52
    add     a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                          i_22 = i32 temp_44_arithop_52 
              #                    occupy a1 with temp_44_arithop_52
              #                    occupy a5 with i_22
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: while.exit_34 
              #                    store to temp_39_arithop_50 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with temp_39_arithop_50
              #                    store to temp_44_arithop_52 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_44_arithop_52
              #                    store to temp_27_cmp_42 in mem offset legal
    sb      s6,127(sp)
              #                    release s6 with temp_27_cmp_42
              #                    store to temp_26_ptr2globl_42 in mem offset legal
    sw      s5,128(sp)
              #                    release s5 with temp_26_ptr2globl_42
              #                    store to temp_30_logic_42 in mem offset legal
    sb      s4,118(sp)
              #                    release s4 with temp_30_logic_42
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s10,120(sp)
              #                    release s10 with temp_28_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s11,119(sp)
              #                    release s11 with temp_29_cmp_42
              #                    store to temp_35_cmp_50 in mem offset legal
    sb      s9,103(sp)
              #                    release s9 with temp_35_cmp_50
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a0,236(sp)
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem


    lw      a2,228(sp)
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem


    lw      a1,232(sp)
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: temp_43_logic_50, tracked: true } |     a1:Freed { symidx: temp_42_cmp_50, tracked: true } |     a2:Freed { symidx: temp_39_arithop_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } |     s9:Freed { symidx: temp_35_cmp_50, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_43_logic_50, tracked: true } |     a1:Freed { symidx: temp_42_cmp_50, tracked: true } |     a2:Freed { symidx: temp_39_arithop_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } |     s9:Freed { symidx: temp_35_cmp_50, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_45_index_ptr_30:ptr->i32 
              #                          temp_45_index_ptr_30 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy a5 with temp_45_index_ptr_30
    li      a5, 0
              #                    store to temp_43_logic_50 in mem offset legal
    sb      a0,88(sp)
              #                    release a0 with temp_43_logic_50
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s1 with x2_30
              #                    store to temp_42_cmp_50 in mem offset legal
    sb      a1,89(sp)
              #                    release a1 with temp_42_cmp_50
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s1
              #                    free a0
              #                    free s1
    add     a5,a5,a1
              #                    free a1
    slli a5,a5,2
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          store 0_0:i32 temp_45_index_ptr_30:ptr->i32 
              #                    occupy a5 with temp_45_index_ptr_30
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          mu *a_0:230 
              #                          *a_0 = chi *a_0:230 
              #                          new_var temp_46_array_ptr_30:ptr->i32 
              #                          temp_46_array_ptr_30 = getelementptr *step_0:ptr->Array:i32:[Some(2_0)] [Some(i_22), Some(0_0)] 
              #                    occupy a0 with temp_46_array_ptr_30
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_39_arithop_50 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with temp_39_arithop_50
              #                    occupy a2 with i_22
              #                    load from i_22 in mem


    lw      a2,216(sp)
              #                    store to num_22 in mem offset legal
    sw      a3,220(sp)
              #                    release a3 with num_22
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *step_0
              #                       load label step as ptr to reg
    la      a1, step
              #                    occupy reg a1 with *step_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_47_array_ele_30:i32 
              #                          temp_47_array_ele_30 = load temp_46_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_46_array_ptr_30
              #                    occupy a1 with temp_47_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_48_arithop_30:i32 
              #                          temp_48_arithop_30 = Sub i32 x2_30, temp_47_array_ele_30 
              #                    occupy s1 with x2_30
              #                    occupy a1 with temp_47_array_ele_30
              #                    occupy a3 with temp_48_arithop_30
              #                    regtab:    a0:Freed { symidx: temp_46_array_ptr_30, tracked: true } |     a1:Occupied { symidx: temp_47_array_ele_30, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_22, tracked: true } |     a3:Occupied { symidx: temp_48_arithop_30, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: temp_45_index_ptr_30, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Occupied { symidx: x2_30, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } |     s9:Freed { symidx: temp_35_cmp_50, tracked: true } | 


    sub     a3,s1,a1
              #                    free s1
              #                    free a1
              #                    free a3
              #                          new_var temp_49_array_ptr_30:ptr->i32 
              #                          temp_49_array_ptr_30 = getelementptr *step_0:ptr->Array:i32:[Some(2_0)] [Some(i_22), Some(1_0)] 
              #                    store to temp_46_array_ptr_30 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_46_array_ptr_30
              #                    occupy a0 with temp_49_array_ptr_30
    li      a0, 0
              #                    store to temp_47_array_ele_30 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_47_array_ele_30
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with i_22
              #                    store to temp_48_arithop_30 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with temp_48_arithop_30
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *step_0
              #                       load label step as ptr to reg
    la      a1, step
              #                    occupy reg a1 with *step_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_50_array_ele_30:i32 
              #                          temp_50_array_ele_30 = load temp_49_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_49_array_ptr_30
              #                    occupy a1 with temp_50_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_51_arithop_30:i32 
              #                          temp_51_arithop_30 = Sub i32 y2_30, temp_50_array_ele_30 
              #                    occupy s2 with y2_30
              #                    occupy a1 with temp_50_array_ele_30
              #                    occupy a3 with temp_51_arithop_30
              #                    regtab:    a0:Freed { symidx: temp_49_array_ptr_30, tracked: true } |     a1:Occupied { symidx: temp_50_array_ele_30, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_22, tracked: true } |     a3:Occupied { symidx: temp_51_arithop_30, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: temp_45_index_ptr_30, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s11:Freed { symidx: temp_29_cmp_42, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Occupied { symidx: y2_30, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_30_logic_42, tracked: true } |     s5:Freed { symidx: temp_26_ptr2globl_42, tracked: true } |     s6:Freed { symidx: temp_27_cmp_42, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } |     s9:Freed { symidx: temp_35_cmp_50, tracked: true } | 


    sub     a3,s2,a1
              #                    free s2
              #                    free a1
              #                    free a3
              #                          new_var temp_52_arithop_30:i32 
              #                          temp_52_arithop_30 = Add i32 n_20, 1_0 
              #                    store to temp_49_array_ptr_30 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_49_array_ptr_30
              #                    occupy a0 with n_20
              #                    load from n_20 in mem


    lw      a0,228(sp)
              #                    store to temp_50_array_ele_30 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with temp_50_array_ele_30
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to i_22 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_22
              #                    occupy a2 with temp_52_arithop_30
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_53_ret_of_search_30:i32 
              #                          temp_53_ret_of_search_30 =  Call i32 search_0(temp_48_arithop_30, temp_51_arithop_30, temp_52_arithop_30) 
              #                    saved register dumping to mem
              #                    store to x2_30 in mem offset legal
    sw      s1,204(sp)
              #                    release s1 with x2_30
              #                    store to y2_30 in mem offset legal
    sw      s2,200(sp)
              #                    release s2 with y2_30
              #                    store to temp_11_array_ptr_33 in mem offset legal
    sd      s3,192(sp)
              #                    release s3 with temp_11_array_ptr_33
              #                    store to temp_30_logic_42 in mem offset legal
    sb      s4,118(sp)
              #                    release s4 with temp_30_logic_42
              #                    store to temp_26_ptr2globl_42 in mem offset legal
    sw      s5,128(sp)
              #                    release s5 with temp_26_ptr2globl_42
              #                    store to temp_27_cmp_42 in mem offset legal
    sb      s6,127(sp)
              #                    release s6 with temp_27_cmp_42
              #                    store to temp_12_array_ele_33 in mem offset legal
    sw      s7,188(sp)
              #                    release s7 with temp_12_array_ele_33
              #                    store to temp_13_cmp_33 in mem offset legal
    sb      s8,187(sp)
              #                    release s8 with temp_13_cmp_33
              #                    store to temp_35_cmp_50 in mem offset legal
    sb      s9,103(sp)
              #                    release s9 with temp_35_cmp_50
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s10,120(sp)
              #                    release s10 with temp_28_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s11,119(sp)
              #                    release s11 with temp_29_cmp_42
              #                    store to n_20 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with n_20
              #                    store to temp_52_arithop_30 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_52_arithop_30
              #                    store to temp_51_arithop_30 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with temp_51_arithop_30
              #                    store to temp_9_cmp_23 in mem offset legal
    sb      a4,227(sp)
              #                    release a4 with temp_9_cmp_23
              #                    store to temp_45_index_ptr_30 in mem offset legal
    sd      a5,72(sp)
              #                    release a5 with temp_45_index_ptr_30
              #                    store to coun_30 in mem offset legal
    sw      a6,208(sp)
              #                    release a6 with coun_30
              #                    store to temp_10_cmp_28 in mem offset legal
    sb      a7,215(sp)
              #                    release a7 with temp_10_cmp_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_48_arithop_30_0
              #                    load from temp_48_arithop_30 in mem


    lw      a0,56(sp)
              #                    occupy a1 with _anonymous_of_temp_51_arithop_30_0
              #                    load from temp_51_arithop_30 in mem


    lw      a1,40(sp)
              #                    occupy a2 with _anonymous_of_temp_52_arithop_30_0
              #                    load from temp_52_arithop_30 in mem


    lw      a2,36(sp)
              #                    arg load ended


    call    search
              #                    store to temp_53_ret_of_search_30 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_54_arithop_30:i32 
              #                          temp_54_arithop_30 = Add i32 temp_53_ret_of_search_30, 1_0 
              #                    occupy a0 with temp_53_ret_of_search_30
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_54_arithop_30
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          searchResult_30 = i32 temp_54_arithop_30 
              #                    occupy a2 with temp_54_arithop_30
              #                    occupy a3 with searchResult_30
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_search_30, tracked: true } |     a2:Freed { symidx: temp_54_arithop_30, tracked: true } |     a3:Freed { symidx: searchResult_30, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_55_cmp_57:i1 
              #                          temp_55_cmp_57 = icmp i32 Slt searchResult_30, num_22 
              #                    occupy a3 with searchResult_30
              #                    occupy a1 with num_22
              #                    load from num_22 in mem


    lw      a1,220(sp)
              #                    occupy a4 with temp_55_cmp_57
    slt     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          br i1 temp_55_cmp_57, label branch_true_58, label branch_false_58 
              #                    occupy a4 with temp_55_cmp_57
              #                    free a4
              #                    occupy a4 with temp_55_cmp_57
    bnez    a4, .branch_true_58
              #                    free a4
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_54_arithop_30, tracked: true } |     a3:Freed { symidx: searchResult_30, tracked: true } |     a4:Freed { symidx: temp_55_cmp_57, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                          num_22 = i32 searchResult_30 
              #                    occupy a3 with searchResult_30
              #                    occupy a1 with num_22
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: branch_false_58 
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_54_arithop_30, tracked: true } |     a3:Freed { symidx: searchResult_30, tracked: true } |     a4:Freed { symidx: temp_55_cmp_57, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_54_arithop_30, tracked: true } |     a3:Freed { symidx: searchResult_30, tracked: true } |     a4:Freed { symidx: temp_55_cmp_57, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_56_index_ptr_30:ptr->i32 
              #                          temp_56_index_ptr_30 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy a5 with temp_56_index_ptr_30
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with x2_30
              #                    load from x2_30 in mem


    lw      a7,204(sp)
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
    slli a5,a5,2
              #                    occupy s2 with *a_0
              #                       load label a as ptr to reg
    la      s2, a
              #                    occupy reg s2 with *a_0
    add     a5,a5,s2
              #                    free s2
              #                    free a5
              #                          store 1_0:i32 temp_56_index_ptr_30:ptr->i32 
              #                    occupy a5 with temp_56_index_ptr_30
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu *a_0:272 
              #                          *a_0 = chi *a_0:272 
              #                          new_var temp_57_arithop_30:i32 
              #                          temp_57_arithop_30 = Add i32 i_22, 1_0 
              #                    occupy s3 with i_22
              #                    load from i_22 in mem


    lw      s3,216(sp)
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_57_arithop_30
    add     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          i_22 = i32 temp_57_arithop_30 
              #                    occupy s4 with temp_57_arithop_30
              #                    occupy s3 with i_22
    mv      s3, s4
              #                    free s4
              #                    free s3
              #                          jump label: while.head_29 
              #                    store to temp_56_index_ptr_30 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_56_index_ptr_30
              #                    store to temp_53_ret_of_search_30 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_53_ret_of_search_30
              #                    store to temp_54_arithop_30 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_54_arithop_30
              #                    store to num_22 in mem offset legal
    sw      a1,220(sp)
              #                    release a1 with num_22
              #                    store to x2_30 in mem offset legal
    sw      a7,204(sp)
              #                    release a7 with x2_30
              #                    store to i_22 in mem offset legal
    sw      s3,216(sp)
              #                    release s3 with i_22
              #                    store to temp_57_arithop_30 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_57_arithop_30
              #                    store to searchResult_30 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with searchResult_30
              #                    store to temp_55_cmp_57 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_55_cmp_57
              #                    occupy a5 with _anonymous_of_i_22_0
              #                    load from i_22 in mem


    lw      a5,216(sp)
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a0,236(sp)
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem


    lw      a2,228(sp)
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem


    lw      a1,232(sp)
              #                    occupy a3 with _anonymous_of_num_22_0
              #                    load from num_22 in mem


    lw      a3,220(sp)
              #                    occupy a4 with _anonymous_of_temp_9_cmp_23_0
              #                    load from temp_9_cmp_23 in mem
    lb      a4,227(sp)
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_16_ptr2globl_36, tracked: true } |     s11:Freed { symidx: temp_17_cmp_36, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_18_logic_36, tracked: true } |     s5:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s6:Freed { symidx: temp_15_cmp_36, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s10:Freed { symidx: temp_16_ptr2globl_36, tracked: true } |     s11:Freed { symidx: temp_17_cmp_36, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s4:Freed { symidx: temp_18_logic_36, tracked: true } |     s5:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s6:Freed { symidx: temp_15_cmp_36, tracked: true } |     s7:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s8:Freed { symidx: temp_13_cmp_33, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_19_array_ptr_35:ptr->i32 
              #                          temp_19_array_ptr_35 = getelementptr *step_0:ptr->Array:i32:[Some(2_0)] [Some(i_22), Some(0_0)] 
              #                    occupy s9 with temp_19_array_ptr_35
    li      s9, 0
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with i_22
              #                    store to y_20 in mem offset legal
    sw      a1,232(sp)
              #                    release a1 with y_20
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     s9,s9,a1
              #                    free a1
    slli s9,s9,2
              #                    occupy a0 with *step_0
              #                       load label step as ptr to reg
    la      a0, step
              #                    occupy reg a0 with *step_0
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_20_array_ele_35:i32 
              #                          temp_20_array_ele_35 = load temp_19_array_ptr_35:ptr->i32 
              #                    occupy s9 with temp_19_array_ptr_35
              #                    occupy a0 with temp_20_array_ele_35
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_21_arithop_35:i32 
              #                          temp_21_arithop_35 = Add i32 x2_30, temp_20_array_ele_35 
              #                    occupy s1 with x2_30
              #                    occupy a0 with temp_20_array_ele_35
              #                    occupy a1 with temp_21_arithop_35
    add     a1,s1,a0
              #                    free s1
              #                    free a0
              #                    free a1
              #                          x2_30 = i32 temp_21_arithop_35 
              #                    occupy a1 with temp_21_arithop_35
              #                    occupy s1 with x2_30
    mv      s1, a1
              #                    free a1
              #                    free s1
              #                          new_var temp_22_array_ptr_35:ptr->i32 
              #                          temp_22_array_ptr_35 = getelementptr *step_0:ptr->Array:i32:[Some(2_0)] [Some(i_22), Some(1_0)] 
              #                    store to temp_20_array_ele_35 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_20_array_ele_35
              #                    occupy a0 with temp_22_array_ptr_35
    li      a0, 0
              #                    store to temp_21_arithop_35 in mem offset legal
    sw      a1,152(sp)
              #                    release a1 with temp_21_arithop_35
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with i_22
              #                    store to n_20 in mem offset legal
    sw      a2,228(sp)
              #                    release a2 with n_20
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a1 with *step_0
              #                       load label step as ptr to reg
    la      a1, step
              #                    occupy reg a1 with *step_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_23_array_ele_35:i32 
              #                          temp_23_array_ele_35 = load temp_22_array_ptr_35:ptr->i32 
              #                    occupy a0 with temp_22_array_ptr_35
              #                    occupy a1 with temp_23_array_ele_35
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_24_arithop_35:i32 
              #                          temp_24_arithop_35 = Add i32 y2_30, temp_23_array_ele_35 
              #                    occupy s2 with y2_30
              #                    occupy a1 with temp_23_array_ele_35
              #                    occupy a2 with temp_24_arithop_35
    add     a2,s2,a1
              #                    free s2
              #                    free a1
              #                    free a2
              #                          y2_30 = i32 temp_24_arithop_35 
              #                    occupy a2 with temp_24_arithop_35
              #                    occupy s2 with y2_30
    mv      s2, a2
              #                    free a2
              #                    free s2
              #                          new_var temp_25_arithop_35:i32 
              #                          temp_25_arithop_35 = Add i32 coun_30, 1_0 
              #                    occupy a6 with coun_30
              #                    store to temp_22_array_ptr_35 in mem offset legal
    sd      a0,144(sp)
              #                    release a0 with temp_22_array_ptr_35
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_23_array_ele_35 in mem offset legal
    sw      a1,140(sp)
              #                    release a1 with temp_23_array_ele_35
              #                    occupy a1 with temp_25_arithop_35
    add     a1,a6,a0
              #                    free a6
              #                    free a0
              #                    free a1
              #                          coun_30 = i32 temp_25_arithop_35 
              #                    occupy a1 with temp_25_arithop_35
              #                    occupy a6 with coun_30
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                          jump label: while.head_34 
              #                    store to temp_13_cmp_33 in mem offset legal
    sb      s8,187(sp)
              #                    release s8 with temp_13_cmp_33
              #                    store to temp_24_arithop_35 in mem offset legal
    sw      a2,136(sp)
              #                    release a2 with temp_24_arithop_35
              #                    store to temp_25_arithop_35 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with temp_25_arithop_35
              #                    store to temp_15_cmp_36 in mem offset legal
    sb      s6,179(sp)
              #                    release s6 with temp_15_cmp_36
              #                    store to temp_11_array_ptr_33 in mem offset legal
    sd      s3,192(sp)
              #                    release s3 with temp_11_array_ptr_33
              #                    store to temp_14_ptr2globl_36 in mem offset legal
    sw      s5,180(sp)
              #                    release s5 with temp_14_ptr2globl_36
              #                    store to temp_12_array_ele_33 in mem offset legal
    sw      s7,188(sp)
              #                    release s7 with temp_12_array_ele_33
              #                    store to temp_18_logic_36 in mem offset legal
    sb      s4,170(sp)
              #                    release s4 with temp_18_logic_36
              #                    store to temp_16_ptr2globl_36 in mem offset legal
    sw      s10,172(sp)
              #                    release s10 with temp_16_ptr2globl_36
              #                    store to temp_17_cmp_36 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_17_cmp_36
              #                    store to temp_19_array_ptr_35 in mem offset legal
    sd      s9,160(sp)
              #                    release s9 with temp_19_array_ptr_35
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem


    lw      a0,236(sp)
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem


    lw      a2,228(sp)
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem


    lw      a1,232(sp)
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          new_var temp_58_cmp_62:i1 
              #                          temp_58_cmp_62 = icmp i32 Sgt num_22, 10_0 
              #                    occupy a3 with num_22
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy s1 with temp_58_cmp_62
    slt     s1,a6,a3
              #                    free a3
              #                    free a6
              #                    free s1
              #                          br i1 temp_58_cmp_62, label branch_true_63, label branch_false_63 
              #                    occupy s1 with temp_58_cmp_62
              #                    free s1
              #                    occupy s1 with temp_58_cmp_62
    bnez    s1, .branch_true_63
              #                    free s1
    j       .branch_false_63
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: temp_58_cmp_62, tracked: true } | 
              #                          label branch_true_63: 
.branch_true_63:
              #                          ret 1073741824_0 
              #                    load from ra_search_0 in mem
    ld      ra,248(sp)
              #                    load from s0_search_0 in mem
    ld      s0,240(sp)
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: temp_58_cmp_62, tracked: true } | 
              #                          label branch_false_63: 
.branch_false_63:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: temp_58_cmp_62, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          ret num_22 
              #                    load from ra_search_0 in mem
    ld      ra,248(sp)
              #                    load from s0_search_0 in mem
    ld      s0,240(sp)
              #                    store to num_22 in mem offset legal
    sw      a3,220(sp)
              #                    release a3 with num_22
              #                    store to x_20 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with x_20
              #                    occupy a0 with num_22
              #                    load from num_22 in mem


    lw      a0,220(sp)
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_9_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_10_cmp_28, tracked: true } |     s1:Freed { symidx: temp_58_cmp_62, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 160|s0_main:8 at 152|temp_59_ret_of_getint:4 at 148|temp_60_ret_of_getint:4 at 144|temp_61_ptr2globl:4 at 140|temp_62_cmp:1 at 139|none:3 at 136|i:4 at 132|j:4 at 128|temp_63_cmp:1 at 127|temp_64_cmp:1 at 126|none:6 at 120|temp_65_index_ptr:8 at 112|temp_66_arithop:4 at 108|temp_67_arithop:4 at 104|temp_68_ptr2globl:4 at 100|temp_69_cmp:1 at 99|none:3 at 96|temp_70_ptr2globl:4 at 92|temp_71_cmp:1 at 91|none:3 at 88|temp_72_index_ptr:8 at 80|temp_73_ret_of_getint:4 at 76|none:4 at 72|temp_74_array_ptr:8 at 64|temp_75_array_ele:4 at 60|temp_76_cmp:1 at 59|none:3 at 56|temp_77_arithop:4 at 52|none:4 at 48|temp_78_array_ptr:8 at 40|temp_79_array_ele:4 at 36|temp_80_cmp:1 at 35|none:3 at 32|temp_81_arithop:4 at 28|temp_82_ptr2globl:4 at 24|temp_83_ptr2globl:4 at 20|temp_84_ret_of_search:4 at 16|res:4 at 12|temp_85_cmp:1 at 11|none:3 at 8|temp_86_ret_of_getint:4 at 4|temp_87_ret_of_getint:4 at 0
    addi    sp,sp,-168
              #                    store to ra_main_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                          alloc i32 temp_59_ret_of_getint_67 
              #                          alloc i32 temp_60_ret_of_getint_67 
              #                          alloc i32 temp_61_ptr2globl_70 
              #                          alloc i1 temp_62_cmp_70 
              #                          alloc i32 i_72 
              #                          alloc i32 j_72 
              #                          alloc i1 temp_63_cmp_75 
              #                          alloc i1 temp_64_cmp_79 
              #                          alloc ptr->i32 temp_65_index_ptr_81 
              #                          alloc i32 temp_66_arithop_81 
              #                          alloc i32 temp_67_arithop_77 
              #                          alloc i32 temp_68_ptr2globl_86 
              #                          alloc i1 temp_69_cmp_86 
              #                          alloc i32 temp_70_ptr2globl_90 
              #                          alloc i1 temp_71_cmp_90 
              #                          alloc ptr->i32 temp_72_index_ptr_92 
              #                          alloc i32 temp_73_ret_of_getint_92 
              #                          alloc ptr->i32 temp_74_array_ptr_94 
              #                          alloc i32 temp_75_array_ele_94 
              #                          alloc i1 temp_76_cmp_94 
              #                          alloc i32 temp_77_arithop_92 
              #                          alloc ptr->i32 temp_78_array_ptr_99 
              #                          alloc i32 temp_79_array_ele_99 
              #                          alloc i1 temp_80_cmp_99 
              #                          alloc i32 temp_81_arithop_88 
              #                          alloc i32 temp_82_ptr2globl_72 
              #                          alloc i32 temp_83_ptr2globl_72 
              #                          alloc i32 temp_84_ret_of_search_72 
              #                          alloc i32 res_72 
              #                          alloc i1 temp_85_cmp_107 
              #                          alloc i32 temp_86_ret_of_getint_72 
              #                          alloc i32 temp_87_ret_of_getint_72 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_59_ret_of_getint_67:i32 
              #                          temp_59_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_59_ret_of_getint_67 in mem offset legal
    sw      a0,148(sp)
              #                          store temp_59_ret_of_getint_67:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_59_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_60_ret_of_getint_67:i32 
              #                          temp_60_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_59_ret_of_getint_67 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_59_ret_of_getint_67
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_60_ret_of_getint_67 in mem offset legal
    sw      a0,144(sp)
              #                          store temp_60_ret_of_getint_67:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_60_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } | 
              #                          label while.head_71: 
.while.head_71:
              #                          new_var temp_61_ptr2globl_70:i32 
              #                          temp_61_ptr2globl_70 = load *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a2 with temp_61_ptr2globl_70
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_62_cmp_70:i1 
              #                          temp_62_cmp_70 = icmp i32 Ne temp_61_ptr2globl_70, 0_0 
              #                    occupy a2 with temp_61_ptr2globl_70
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_62_cmp_70
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_62_cmp_70, label while.body_71, label while.exit_71 
              #                    occupy a4 with temp_62_cmp_70
              #                    free a4
              #                    occupy a4 with temp_62_cmp_70
    bnez    a4, .while.body_71
              #                    free a4
    j       .while.exit_71
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } | 
              #                          label while.body_71: 
.while.body_71:
              #                          new_var i_72:i32 
              #                          new_var j_72:i32 
              #                          i_72 = i32 0_0 
              #                    occupy a1 with i_72
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_76 
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } | 
              #                          label while.head_76: 
.while.head_76:
              #                          new_var temp_63_cmp_75:i1 
              #                          temp_63_cmp_75 = icmp i32 Slt i_72, 30_0 
              #                    occupy a1 with i_72
              #                    occupy a3 with 30_0
    li      a3, 30
              #                    occupy a5 with temp_63_cmp_75
    slt     a5,a1,a3
              #                    free a1
              #                    free a3
              #                    free a5
              #                          br i1 temp_63_cmp_75, label while.body_76, label while.exit_76 
              #                    occupy a5 with temp_63_cmp_75
              #                    free a5
              #                    occupy a5 with temp_63_cmp_75
    bnez    a5, .while.body_76
              #                    free a5
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } | 
              #                          label while.body_76: 
.while.body_76:
              #                          j_72 = i32 0_0 
              #                    occupy a3 with j_72
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } | 
              #                          label while.head_80: 
.while.head_80:
              #                          new_var temp_64_cmp_79:i1 
              #                          temp_64_cmp_79 = icmp i32 Slt j_72, 30_0 
              #                    occupy a3 with j_72
              #                    occupy a6 with 30_0
    li      a6, 30
              #                    occupy a7 with temp_64_cmp_79
    slt     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          br i1 temp_64_cmp_79, label while.body_80, label while.exit_80 
              #                    occupy a7 with temp_64_cmp_79
              #                    free a7
              #                    occupy a7 with temp_64_cmp_79
    bnez    a7, .while.body_80
              #                    free a7
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a7:Freed { symidx: temp_64_cmp_79, tracked: true } | 
              #                          label while.body_80: 
.while.body_80:
              #                          new_var temp_65_index_ptr_81:ptr->i32 
              #                          temp_65_index_ptr_81 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a6 with temp_65_index_ptr_81
    li      a6, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a1 with i_72
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a1
              #                    free s1
              #                    free a1
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
    add     a6,a6,s3
              #                    free s3
              #                    free a6
              #                          store 1_0:i32 temp_65_index_ptr_81:ptr->i32 
              #                    occupy a6 with temp_65_index_ptr_81
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          mu *a_0:333 
              #                          *a_0 = chi *a_0:333 
              #                          new_var temp_66_arithop_81:i32 
              #                          temp_66_arithop_81 = Add i32 j_72, 1_0 
              #                    occupy a3 with j_72
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s4 with temp_66_arithop_81
    add     s4,a3,s1
              #                    free a3
              #                    free s1
              #                    free s4
              #                          j_72 = i32 temp_66_arithop_81 
              #                    occupy s4 with temp_66_arithop_81
              #                    occupy a3 with j_72
    mv      a3, s4
              #                    free s4
              #                    free a3
              #                          jump label: while.head_80 
              #                    store to temp_66_arithop_81 in mem offset legal
    sw      s4,108(sp)
              #                    release s4 with temp_66_arithop_81
              #                    store to temp_65_index_ptr_81 in mem offset legal
    sd      a6,112(sp)
              #                    release a6 with temp_65_index_ptr_81
              #                    store to temp_64_cmp_79 in mem offset legal
    sb      a7,126(sp)
              #                    release a7 with temp_64_cmp_79
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a7:Freed { symidx: temp_64_cmp_79, tracked: true } | 
              #                          label while.exit_80: 
.while.exit_80:
              #                          new_var temp_67_arithop_77:i32 
              #                          temp_67_arithop_77 = Add i32 i_72, 1_0 
              #                    occupy a1 with i_72
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_67_arithop_77
    add     s1,a1,a6
              #                    free a1
              #                    free a6
              #                    free s1
              #                          i_72 = i32 temp_67_arithop_77 
              #                    occupy s1 with temp_67_arithop_77
              #                    occupy a1 with i_72
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_76 
              #                    store to temp_67_arithop_77 in mem offset legal
    sw      s1,104(sp)
              #                    release s1 with temp_67_arithop_77
              #                    store to j_72 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with j_72
              #                    store to temp_63_cmp_75 in mem offset legal
    sb      a5,127(sp)
              #                    release a5 with temp_63_cmp_75
              #                    store to temp_64_cmp_79 in mem offset legal
    sb      a7,126(sp)
              #                    release a7 with temp_64_cmp_79
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } | 
              #                          label while.exit_76: 
.while.exit_76:
              #                          i_72 = i32 1_0 
              #                    occupy a1 with i_72
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } | 
              #                          label while.head_87: 
.while.head_87:
              #                          new_var temp_68_ptr2globl_86:i32 
              #                          temp_68_ptr2globl_86 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a6 with temp_68_ptr2globl_86
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_69_cmp_86:i1 
              #                          temp_69_cmp_86 = icmp i32 Sle i_72, temp_68_ptr2globl_86 
              #                    occupy a1 with i_72
              #                    occupy a6 with temp_68_ptr2globl_86
              #                    occupy a7 with temp_69_cmp_86
    slt     a7,a6,a1
    xori    a7,a7,1
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_69_cmp_86, label while.body_87, label while.exit_87 
              #                    occupy a7 with temp_69_cmp_86
              #                    free a7
              #                    occupy a7 with temp_69_cmp_86
    bnez    a7, .while.body_87
              #                    free a7
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a6:Freed { symidx: temp_68_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_69_cmp_86, tracked: true } | 
              #                          label while.body_87: 
.while.body_87:
              #                          j_72 = i32 1_0 
              #                    occupy a3 with j_72
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a6:Freed { symidx: temp_68_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_69_cmp_86, tracked: true } | 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_70_ptr2globl_90:i32 
              #                          temp_70_ptr2globl_90 = load *w_0:ptr->i32 
              #                    occupy s1 with *w_0
              #                       load label w as ptr to reg
    la      s1, w
              #                    occupy reg s1 with *w_0
              #                    occupy s2 with temp_70_ptr2globl_90
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_71_cmp_90:i1 
              #                          temp_71_cmp_90 = icmp i32 Sle j_72, temp_70_ptr2globl_90 
              #                    occupy a3 with j_72
              #                    occupy s2 with temp_70_ptr2globl_90
              #                    occupy s3 with temp_71_cmp_90
    slt     s3,s2,a3
    xori    s3,s3,1
              #                    free a3
              #                    free s2
              #                    free s3
              #                          br i1 temp_71_cmp_90, label while.body_91, label while.exit_91 
              #                    occupy s3 with temp_71_cmp_90
              #                    free s3
              #                    occupy s3 with temp_71_cmp_90
    bnez    s3, .while.body_91
              #                    free s3
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a6:Freed { symidx: temp_68_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_69_cmp_86, tracked: true } |     s2:Freed { symidx: temp_70_ptr2globl_90, tracked: true } |     s3:Freed { symidx: temp_71_cmp_90, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_72_index_ptr_92:ptr->i32 
              #                          temp_72_index_ptr_92 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy s1 with temp_72_index_ptr_92
    li      s1, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with i_72
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s6 with *a_0
              #                       load label a as ptr to reg
    la      s6, a
              #                    occupy reg s6 with *a_0
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          new_var temp_73_ret_of_getint_92:i32 
              #                          temp_73_ret_of_getint_92 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_72_index_ptr_92 in mem offset legal
    sd      s1,80(sp)
              #                    release s1 with temp_72_index_ptr_92
              #                    store to temp_70_ptr2globl_90 in mem offset legal
    sw      s2,92(sp)
              #                    release s2 with temp_70_ptr2globl_90
              #                    store to temp_71_cmp_90 in mem offset legal
    sb      s3,91(sp)
              #                    release s3 with temp_71_cmp_90
              #                    store to temp_60_ret_of_getint_67 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_60_ret_of_getint_67
              #                    store to i_72 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with i_72
              #                    store to temp_61_ptr2globl_70 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with temp_61_ptr2globl_70
              #                    store to j_72 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with j_72
              #                    store to temp_62_cmp_70 in mem offset legal
    sb      a4,139(sp)
              #                    release a4 with temp_62_cmp_70
              #                    store to temp_63_cmp_75 in mem offset legal
    sb      a5,127(sp)
              #                    release a5 with temp_63_cmp_75
              #                    store to temp_68_ptr2globl_86 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with temp_68_ptr2globl_86
              #                    store to temp_69_cmp_86 in mem offset legal
    sb      a7,99(sp)
              #                    release a7 with temp_69_cmp_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_73_ret_of_getint_92 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_73_ret_of_getint_92:i32 temp_72_index_ptr_92:ptr->i32 
              #                    occupy a1 with temp_72_index_ptr_92
              #                    load from temp_72_index_ptr_92 in mem
    ld      a1,80(sp)
              #                    occupy a0 with temp_73_ret_of_getint_92
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *a_0:374 
              #                          *a_0 = chi *a_0:374 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_74_array_ptr_94:ptr->i32 
              #                          temp_74_array_ptr_94 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a2 with temp_74_array_ptr_94
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_72
              #                    load from i_72 in mem


    lw      a4,132(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *a_0
              #                       load label a as ptr to reg
    la      a6, a
              #                    occupy reg a6 with *a_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_75_array_ele_94:i32 
              #                          temp_75_array_ele_94 = load temp_74_array_ptr_94:ptr->i32 
              #                    occupy a2 with temp_74_array_ptr_94
              #                    occupy a7 with temp_75_array_ele_94
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_76_cmp_94:i1 
              #                          temp_76_cmp_94 = icmp i32 Eq temp_75_array_ele_94, 2_0 
              #                    occupy a7 with temp_75_array_ele_94
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s2 with temp_76_cmp_94
    xor     s2,a7,s1
    seqz    s2, s2
              #                    free a7
              #                    free s1
              #                    free s2
              #                          br i1 temp_76_cmp_94, label branch_true_95, label branch_false_95 
              #                    occupy s2 with temp_76_cmp_94
              #                    free s2
              #                    occupy s2 with temp_76_cmp_94
    bnez    s2, .branch_true_95
              #                    free s2
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } | 
              #                          label branch_true_95: 
.branch_true_95:
              #                          store i_72:i32 *x_0_0:ptr->i32 
              #                    occupy a3 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a3, x_0
              #                    occupy reg a3 with *x_0_0
              #                    occupy a4 with i_72
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          store j_72:i32 *y_0_0:ptr->i32 
              #                    occupy a5 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      a5, y_0
              #                    occupy reg a5 with *y_0_0
              #                    occupy a6 with j_72
              #                    load from j_72 in mem


    lw      a6,128(sp)
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } | 
              #                          label branch_false_95: 
.branch_false_95:
              #                          new_var temp_78_array_ptr_99:ptr->i32 
              #                          temp_78_array_ptr_99 = getelementptr *a_0:ptr->Array:i32:[Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a3 with temp_78_array_ptr_99
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a4 with i_72
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a4
              #                    free a5
              #                    free a4
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy s1 with *a_0
              #                       load label a as ptr to reg
    la      s1, a
              #                    occupy reg s1 with *a_0
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                          new_var temp_79_array_ele_99:i32 
              #                          temp_79_array_ele_99 = load temp_78_array_ptr_99:ptr->i32 
              #                    occupy a3 with temp_78_array_ptr_99
              #                    occupy s3 with temp_79_array_ele_99
    lw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          new_var temp_80_cmp_99:i1 
              #                          temp_80_cmp_99 = icmp i32 Eq temp_79_array_ele_99, 3_0 
              #                    occupy s3 with temp_79_array_ele_99
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with temp_80_cmp_99
    xor     s5,s3,s4
    seqz    s5, s5
              #                    free s3
              #                    free s4
              #                    free s5
              #                          br i1 temp_80_cmp_99, label branch_true_100, label branch_false_100 
              #                    occupy s5 with temp_80_cmp_99
              #                    free s5
              #                    occupy s5 with temp_80_cmp_99
    bnez    s5, .branch_true_100
              #                    free s5
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a3:Freed { symidx: temp_78_array_ptr_99, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } |     s3:Freed { symidx: temp_79_array_ele_99, tracked: true } |     s5:Freed { symidx: temp_80_cmp_99, tracked: true } | 
              #                          label branch_true_100: 
.branch_true_100:
              #                          store i_72:i32 *x_1_0:ptr->i32 
              #                    occupy a5 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      a5, x_1
              #                    occupy reg a5 with *x_1_0
              #                    occupy a4 with i_72
    sw      a4,0(a5)
              #                    free a4
              #                    free a5
              #                          store j_72:i32 *y_1_0:ptr->i32 
              #                    occupy a6 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      a6, y_1
              #                    occupy reg a6 with *y_1_0
              #                    occupy s1 with j_72
              #                    load from j_72 in mem


    lw      s1,128(sp)
    sw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          jump label: branch_false_100 
              #                    store to j_72 in mem offset legal
    sw      s1,128(sp)
              #                    release s1 with j_72
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a3:Freed { symidx: temp_78_array_ptr_99, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } |     s3:Freed { symidx: temp_79_array_ele_99, tracked: true } |     s5:Freed { symidx: temp_80_cmp_99, tracked: true } | 
              #                          label branch_false_100: 
.branch_false_100:
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a6:Freed { symidx: j_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_73_ret_of_getint_92, tracked: true } |     a1:Freed { symidx: temp_72_index_ptr_92, tracked: true } |     a2:Freed { symidx: temp_74_array_ptr_94, tracked: true } |     a4:Freed { symidx: i_72, tracked: true } |     a6:Freed { symidx: j_72, tracked: true } |     a7:Freed { symidx: temp_75_array_ele_94, tracked: true } |     s2:Freed { symidx: temp_76_cmp_94, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_77_arithop_92:i32 
              #                          temp_77_arithop_92 = Add i32 j_72, 1_0 
              #                    occupy a6 with j_72
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_77_arithop_92
    add     a5,a6,a3
              #                    free a6
              #                    free a3
              #                    free a5
              #                          j_72 = i32 temp_77_arithop_92 
              #                    occupy a5 with temp_77_arithop_92
              #                    occupy a6 with j_72
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: while.head_91 
              #                    store to temp_74_array_ptr_94 in mem offset legal
    sd      a2,64(sp)
              #                    release a2 with temp_74_array_ptr_94
              #                    store to i_72 in mem offset legal
    sw      a4,132(sp)
              #                    release a4 with i_72
              #                    store to temp_73_ret_of_getint_92 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_73_ret_of_getint_92
              #                    store to j_72 in mem offset legal
    sw      a6,128(sp)
              #                    release a6 with j_72
              #                    store to temp_77_arithop_92 in mem offset legal
    sw      a5,52(sp)
              #                    release a5 with temp_77_arithop_92
              #                    store to temp_72_index_ptr_92 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_72_index_ptr_92
              #                    store to temp_76_cmp_94 in mem offset legal
    sb      s2,59(sp)
              #                    release s2 with temp_76_cmp_94
              #                    store to temp_75_array_ele_94 in mem offset legal
    sw      a7,60(sp)
              #                    release a7 with temp_75_array_ele_94
              #                    occupy a2 with _anonymous_of_temp_61_ptr2globl_70_0
              #                    load from temp_61_ptr2globl_70 in mem


    lw      a2,140(sp)
              #                    occupy a4 with _anonymous_of_temp_62_cmp_70_0
              #                    load from temp_62_cmp_70 in mem
    lb      a4,139(sp)
              #                    occupy a0 with _anonymous_of_temp_60_ret_of_getint_67_0
              #                    load from temp_60_ret_of_getint_67 in mem


    lw      a0,144(sp)
              #                    occupy a6 with _anonymous_of_temp_68_ptr2globl_86_0
              #                    load from temp_68_ptr2globl_86 in mem


    lw      a6,100(sp)
              #                    occupy a3 with _anonymous_of_j_72_0
              #                    load from j_72 in mem


    lw      a3,128(sp)
              #                    occupy a5 with _anonymous_of_temp_63_cmp_75_0
              #                    load from temp_63_cmp_75 in mem
    lb      a5,127(sp)
              #                    occupy a1 with _anonymous_of_i_72_0
              #                    load from i_72 in mem


    lw      a1,132(sp)
              #                    occupy a7 with _anonymous_of_temp_69_cmp_86_0
              #                    load from temp_69_cmp_86 in mem
    lb      a7,99(sp)
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a6:Freed { symidx: temp_68_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_69_cmp_86, tracked: true } |     s2:Freed { symidx: temp_70_ptr2globl_90, tracked: true } |     s3:Freed { symidx: temp_71_cmp_90, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
              #                          new_var temp_81_arithop_88:i32 
              #                          temp_81_arithop_88 = Add i32 i_72, 1_0 
              #                    occupy a1 with i_72
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_81_arithop_88
    add     s4,a1,s1
              #                    free a1
              #                    free s1
              #                    free s4
              #                          i_72 = i32 temp_81_arithop_88 
              #                    occupy s4 with temp_81_arithop_88
              #                    occupy a1 with i_72
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: while.head_87 
              #                    store to temp_71_cmp_90 in mem offset legal
    sb      s3,91(sp)
              #                    release s3 with temp_71_cmp_90
              #                    store to temp_81_arithop_88 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_81_arithop_88
              #                    store to temp_68_ptr2globl_86 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with temp_68_ptr2globl_86
              #                    store to j_72 in mem offset legal
    sw      a3,128(sp)
              #                    release a3 with j_72
              #                    store to temp_70_ptr2globl_90 in mem offset legal
    sw      s2,92(sp)
              #                    release s2 with temp_70_ptr2globl_90
              #                    store to temp_69_cmp_86 in mem offset legal
    sb      a7,99(sp)
              #                    release a7 with temp_69_cmp_86
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } |     a5:Freed { symidx: temp_63_cmp_75, tracked: true } |     a6:Freed { symidx: temp_68_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_69_cmp_86, tracked: true } | 
              #                          label while.exit_87: 
.while.exit_87:
              #                          new_var temp_82_ptr2globl_72:i32 
              #                          temp_82_ptr2globl_72 = load *x_0_0:ptr->i32 
              #                    occupy a3 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a3, x_0
              #                    occupy reg a3 with *x_0_0
              #                    occupy s1 with temp_82_ptr2globl_72
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_83_ptr2globl_72:i32 
              #                          temp_83_ptr2globl_72 = load *y_0_0:ptr->i32 
              #                    occupy s2 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      s2, y_0
              #                    occupy reg s2 with *y_0_0
              #                    occupy s3 with temp_83_ptr2globl_72
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_84_ret_of_search_72:i32 
              #                          temp_84_ret_of_search_72 =  Call i32 search_0(temp_82_ptr2globl_72, temp_83_ptr2globl_72, 1_0) 
              #                    saved register dumping to mem
              #                    store to temp_82_ptr2globl_72 in mem offset legal
    sw      s1,24(sp)
              #                    release s1 with temp_82_ptr2globl_72
              #                    store to temp_83_ptr2globl_72 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_83_ptr2globl_72
              #                    store to temp_60_ret_of_getint_67 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_60_ret_of_getint_67
              #                    store to i_72 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with i_72
              #                    store to temp_61_ptr2globl_70 in mem offset legal
    sw      a2,140(sp)
              #                    release a2 with temp_61_ptr2globl_70
              #                    store to temp_62_cmp_70 in mem offset legal
    sb      a4,139(sp)
              #                    release a4 with temp_62_cmp_70
              #                    store to temp_63_cmp_75 in mem offset legal
    sb      a5,127(sp)
              #                    release a5 with temp_63_cmp_75
              #                    store to temp_68_ptr2globl_86 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with temp_68_ptr2globl_86
              #                    store to temp_69_cmp_86 in mem offset legal
    sb      a7,99(sp)
              #                    release a7 with temp_69_cmp_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_82_ptr2globl_72_0
              #                    load from temp_82_ptr2globl_72 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_83_ptr2globl_72_0
              #                    load from temp_83_ptr2globl_72 in mem


    lw      a1,20(sp)
              #                    occupy a2 with _anonymous_of_1_0_0
    li      a2, 1
              #                    arg load ended


    call    search
              #                    store to temp_84_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                          res_72 = i32 temp_84_ret_of_search_72 
              #                    occupy a0 with temp_84_ret_of_search_72
              #                    occupy a1 with res_72
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_84_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_85_cmp_107:i1 
              #                          temp_85_cmp_107 = icmp i32 Sle res_72, 10_0 
              #                    occupy a1 with res_72
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with temp_85_cmp_107
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_85_cmp_107, label branch_true_108, label branch_false_108 
              #                    occupy a3 with temp_85_cmp_107
              #                    free a3
              #                    occupy a3 with temp_85_cmp_107
    bnez    a3, .branch_true_108
              #                    free a3
    j       .branch_false_108
              #                    regtab     a0:Freed { symidx: temp_84_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } |     a3:Freed { symidx: temp_85_cmp_107, tracked: true } | 
              #                          label branch_true_108: 
.branch_true_108:
              #                           Call void putint_0(res_72) 
              #                    saved register dumping to mem
              #                    store to temp_84_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_84_ret_of_search_72
              #                    store to res_72 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with res_72
              #                    store to temp_85_cmp_107 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_85_cmp_107
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_res_72_0
              #                    load from res_72 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_84_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } |     a3:Freed { symidx: temp_85_cmp_107, tracked: true } | 
              #                          label branch_false_108: 
.branch_false_108:
              #                           Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    store to temp_84_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_84_ret_of_search_72
              #                    store to res_72 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with res_72
              #                    store to temp_85_cmp_107 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_85_cmp_107
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_-1_0_0
    li      a0, -1
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab 
              #                          label L5_0: 
.L5_0:
              #                    regtab 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_86_ret_of_getint_72:i32 
              #                          temp_86_ret_of_getint_72 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_86_ret_of_getint_72 in mem offset legal
    sw      a0,4(sp)
              #                          store temp_86_ret_of_getint_72:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_86_ret_of_getint_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_87_ret_of_getint_72:i32 
              #                          temp_87_ret_of_getint_72 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_getint_72 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_86_ret_of_getint_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_87_ret_of_getint_72 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_87_ret_of_getint_72:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_87_ret_of_getint_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_71 
              #                    store to temp_87_ret_of_getint_72 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_87_ret_of_getint_72
              #                    occupy a0 with _anonymous_of_temp_60_ret_of_getint_67_0
              #                    load from temp_60_ret_of_getint_67 in mem


    lw      a0,144(sp)
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_67, tracked: true } |     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } | 
              #                          label while.exit_71: 
.while.exit_71:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,160(sp)
              #                    load from s0_main_0 in mem
    ld      s0,152(sp)
              #                    store to temp_60_ret_of_getint_67 in mem offset legal
    sw      a0,144(sp)
              #                    release a0 with temp_60_ret_of_getint_67
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_61_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_62_cmp_70, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl y_1
              #                          global i32 y_1_0 
    .type y_1,@object
y_1:
    .word 0
    .align 4
    .globl x_1
              #                          global i32 x_1_0 
    .type x_1,@object
x_1:
    .word 0
    .align 4
    .globl y_0
              #                          global i32 y_0_0 
    .type y_0,@object
y_0:
    .word 0
    .align 4
    .globl x_0
              #                          global i32 x_0_0 
    .type x_0,@object
x_0:
    .word 0
    .align 4
    .globl h
              #                          global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl w
              #                          global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl step
              #                          global Array:i32:[Some(4_0), Some(2_0)] step_0 
    .type step,@object
step:
    .word 1
    .word 0
    .word 0
    .word -1
    .word 0
    .word 1
    .word 0
    .word -1
    .zero 4
    .align 4
    .globl a
              #                          global Array:i32:[Some(30_0), Some(30_0)] a_0 
    .type a,@object
a:
    .zero 3600
    .align 4
    .globl INF
              #                          global i32 INF_0 
    .type INF,@object
INF:
    .word 1073741824
