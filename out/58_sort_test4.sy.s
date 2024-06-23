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
              #                          Define select_sort_0 [A_17, n_17] -> select_sort_ret_0 
    .globl select_sort
    .type select_sort,@function
select_sort:
              #                    mem layout:|ra_select_sort:8 at 152|s0_select_sort:8 at 144|A:8 at 136|n:4 at 132|i:4 at 128|j:4 at 124|min:4 at 120|temp_0_arithop:4 at 116|temp_1_cmp:1 at 115|none:3 at 112|temp_2_arithop:4 at 108|temp_3_cmp:1 at 107|none:3 at 104|temp_4_array_ptr:8 at 96|temp_5_array_ele:4 at 92|none:4 at 88|temp_6_array_ptr:8 at 80|temp_7_array_ele:4 at 76|temp_8_cmp:1 at 75|none:3 at 72|temp_9_arithop:4 at 68|temp_10_cmp:1 at 67|none:3 at 64|tmp:4 at 60|none:4 at 56|temp_11_array_ptr:8 at 48|temp_12_array_ele:4 at 44|none:4 at 40|temp_13_index_ptr:8 at 32|temp_14_array_ptr:8 at 24|temp_15_array_ele:4 at 20|none:4 at 16|temp_16_index_ptr:8 at 8|temp_17_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-160
              #                    store to ra_select_sort_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_select_sort_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          new_var A_17:ptr->i32 
              #                          alloc i32 i_19 
              #                          alloc i32 j_19 
              #                          alloc i32 min_19 
              #                          alloc i32 temp_0_arithop_24 
              #                          alloc i1 temp_1_cmp_24 
              #                          alloc i32 temp_2_arithop_26 
              #                          alloc i1 temp_3_cmp_29 
              #                          alloc ptr->i32 temp_4_array_ptr_32 
              #                          alloc i32 temp_5_array_ele_32 
              #                          alloc ptr->i32 temp_6_array_ptr_32 
              #                          alloc i32 temp_7_array_ele_32 
              #                          alloc i1 temp_8_cmp_32 
              #                          alloc i32 temp_9_arithop_31 
              #                          alloc i1 temp_10_cmp_37 
              #                          alloc i32 tmp_39 
              #                          alloc ptr->i32 temp_11_array_ptr_39 
              #                          alloc i32 temp_12_array_ele_39 
              #                          alloc ptr->i32 temp_13_index_ptr_39 
              #                          alloc ptr->i32 temp_14_array_ptr_39 
              #                          alloc i32 temp_15_array_ele_39 
              #                          alloc ptr->i32 temp_16_index_ptr_39 
              #                          alloc i32 temp_17_arithop_26 
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var i_19:i32 
              #                          new_var j_19:i32 
              #                          new_var min_19:i32 
              #                          i_19 = i32 0_0 
              #                    occupy a2 with i_19
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_25: 
.while.head_25:
              #                          new_var temp_0_arithop_24:i32 
              #                          temp_0_arithop_24 = Sub i32 n_17, 1_0 
              #                    occupy a1 with n_17
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_0_arithop_24
              #                    regtab:    a0:Freed { symidx: A_17, tracked: true } |     a1:Occupied { symidx: n_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_0_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          new_var temp_1_cmp_24:i1 
              #                          temp_1_cmp_24 = icmp i32 Slt i_19, temp_0_arithop_24 
              #                    occupy a2 with i_19
              #                    occupy a4 with temp_0_arithop_24
              #                    occupy a5 with temp_1_cmp_24
    slt     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_1_cmp_24, label while.body_25, label while.exit_25 
              #                    occupy a5 with temp_1_cmp_24
              #                    free a5
              #                    occupy a5 with temp_1_cmp_24
    bnez    a5, .while.body_25
              #                    free a5
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          min_19 = i32 i_19 
              #                    occupy a2 with i_19
              #                    occupy a3 with min_19
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_2_arithop_26:i32 
              #                          temp_2_arithop_26 = Add i32 i_19, 1_0 
              #                    occupy a2 with i_19
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_2_arithop_26
    add     a7,a2,a6
              #                    free a2
              #                    free a6
              #                    free a7
              #                          j_19 = i32 temp_2_arithop_26 
              #                    occupy a7 with temp_2_arithop_26
              #                    occupy s1 with j_19
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } | 
              #                          label while.head_30: 
.while.head_30:
              #                          new_var temp_3_cmp_29:i1 
              #                          temp_3_cmp_29 = icmp i32 Slt j_19, n_17 
              #                    occupy s1 with j_19
              #                    occupy a1 with n_17
              #                    occupy a6 with temp_3_cmp_29
    slt     a6,s1,a1
              #                    free s1
              #                    free a1
              #                    free a6
              #                          br i1 temp_3_cmp_29, label while.body_30, label while.exit_30 
              #                    occupy a6 with temp_3_cmp_29
              #                    free a6
              #                    occupy a6 with temp_3_cmp_29
    bnez    a6, .while.body_30
              #                    free a6
    j       .while.exit_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } | 
              #                          label while.body_30: 
.while.body_30:
              #                          new_var temp_4_array_ptr_32:ptr->i32 
              #                          temp_4_array_ptr_32 = getelementptr A_17:ptr->i32 [Some(j_19)] 
              #                    occupy s2 with temp_4_array_ptr_32
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s1 with j_19
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s3,s1
              #                    free s3
              #                    free s1
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy a0 with A_17
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_5_array_ele_32:i32 
              #                          temp_5_array_ele_32 = load temp_4_array_ptr_32:ptr->i32 
              #                    occupy s2 with temp_4_array_ptr_32
              #                    occupy s5 with temp_5_array_ele_32
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_6_array_ptr_32:ptr->i32 
              #                          temp_6_array_ptr_32 = getelementptr A_17:ptr->i32 [Some(min_19)] 
              #                    occupy s6 with temp_6_array_ptr_32
    li      s6, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a3 with min_19
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s3,a3
              #                    free s3
              #                    free a3
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a0 with A_17
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_7_array_ele_32:i32 
              #                          temp_7_array_ele_32 = load temp_6_array_ptr_32:ptr->i32 
              #                    occupy s6 with temp_6_array_ptr_32
              #                    occupy s8 with temp_7_array_ele_32
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          new_var temp_8_cmp_32:i1 
              #                          temp_8_cmp_32 = icmp i32 Sgt temp_7_array_ele_32, temp_5_array_ele_32 
              #                    occupy s8 with temp_7_array_ele_32
              #                    occupy s5 with temp_5_array_ele_32
              #                    occupy s9 with temp_8_cmp_32
    slt     s9,s5,s8
              #                    free s8
              #                    free s5
              #                    free s9
              #                          br i1 temp_8_cmp_32, label branch_true_33, label branch_false_33 
              #                    occupy s9 with temp_8_cmp_32
              #                    free s9
              #                    occupy s9 with temp_8_cmp_32
    bnez    s9, .branch_true_33
              #                    free s9
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_4_array_ptr_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_32, tracked: true } |     s6:Freed { symidx: temp_6_array_ptr_32, tracked: true } |     s8:Freed { symidx: temp_7_array_ele_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_true_33: 
.branch_true_33:
              #                          min_19 = i32 j_19 
              #                    occupy s1 with j_19
              #                    occupy a3 with min_19
    mv      a3, s1
              #                    free s1
              #                    free a3
              #                          jump label: branch_false_33 
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_4_array_ptr_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_32, tracked: true } |     s6:Freed { symidx: temp_6_array_ptr_32, tracked: true } |     s8:Freed { symidx: temp_7_array_ele_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_false_33: 
.branch_false_33:
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_4_array_ptr_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ele_32, tracked: true } |     s6:Freed { symidx: temp_6_array_ptr_32, tracked: true } |     s8:Freed { symidx: temp_7_array_ele_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_9_arithop_31:i32 
              #                          temp_9_arithop_31 = Add i32 j_19, 1_0 
              #                    occupy s1 with j_19
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_9_arithop_31
    add     s4,s1,s3
              #                    free s1
              #                    free s3
              #                    free s4
              #                          j_19 = i32 temp_9_arithop_31 
              #                    occupy s4 with temp_9_arithop_31
              #                    occupy s1 with j_19
    mv      s1, s4
              #                    free s4
              #                    free s1
              #                          jump label: while.head_30 
              #                    store to temp_5_array_ele_32 in mem offset legal
    sw      s5,92(sp)
              #                    release s5 with temp_5_array_ele_32
              #                    store to temp_9_arithop_31 in mem offset legal
    sw      s4,68(sp)
              #                    release s4 with temp_9_arithop_31
              #                    store to temp_3_cmp_29 in mem offset legal
    sb      a6,107(sp)
              #                    release a6 with temp_3_cmp_29
              #                    store to temp_4_array_ptr_32 in mem offset legal
    sd      s2,96(sp)
              #                    release s2 with temp_4_array_ptr_32
              #                    store to temp_8_cmp_32 in mem offset legal
    sb      s9,75(sp)
              #                    release s9 with temp_8_cmp_32
              #                    store to temp_7_array_ele_32 in mem offset legal
    sw      s8,76(sp)
              #                    release s8 with temp_7_array_ele_32
              #                    store to temp_6_array_ptr_32 in mem offset legal
    sd      s6,80(sp)
              #                    release s6 with temp_6_array_ptr_32
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } | 
              #                          label while.exit_30: 
.while.exit_30:
              #                          new_var temp_10_cmp_37:i1 
              #                          temp_10_cmp_37 = icmp i32 Ne min_19, i_19 
              #                    occupy a3 with min_19
              #                    occupy a2 with i_19
              #                    occupy s2 with temp_10_cmp_37
    xor     s2,a3,a2
    snez    s2, s2
              #                    free a3
              #                    free a2
              #                    free s2
              #                          br i1 temp_10_cmp_37, label branch_true_38, label branch_false_38 
              #                    occupy s2 with temp_10_cmp_37
              #                    free s2
              #                    occupy s2 with temp_10_cmp_37
    bnez    s2, .branch_true_38
              #                    free s2
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_10_cmp_37, tracked: true } | 
              #                          label branch_true_38: 
.branch_true_38:
              #                          new_var tmp_39:i32 
              #                          new_var temp_11_array_ptr_39:ptr->i32 
              #                          temp_11_array_ptr_39 = getelementptr A_17:ptr->i32 [Some(min_19)] 
              #                    occupy s3 with temp_11_array_ptr_39
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a3 with min_19
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,a3
              #                    free s4
              #                    free a3
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy a0 with A_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_12_array_ele_39:i32 
              #                          temp_12_array_ele_39 = load temp_11_array_ptr_39:ptr->i32 
              #                    occupy s3 with temp_11_array_ptr_39
              #                    occupy s6 with temp_12_array_ele_39
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          tmp_39 = i32 temp_12_array_ele_39 
              #                    occupy s6 with temp_12_array_ele_39
              #                    occupy s7 with tmp_39
    mv      s7, s6
              #                    free s6
              #                    free s7
              #                          new_var temp_13_index_ptr_39:ptr->i32 
              #                          temp_13_index_ptr_39 = getelementptr A_17:ptr->i32 [Some(min_19)] 
              #                    occupy s8 with temp_13_index_ptr_39
    li      s8, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a3 with min_19
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s4,a3
              #                    free s4
              #                    free a3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy a0 with A_17
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_14_array_ptr_39:ptr->i32 
              #                          temp_14_array_ptr_39 = getelementptr A_17:ptr->i32 [Some(i_19)] 
              #                    occupy s10 with temp_14_array_ptr_39
    li      s10, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a2 with i_19
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s4,a2
              #                    free s4
              #                    free a2
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a0 with A_17
    add     s10,s10,a0
              #                    free a0
              #                    free s10
              #                          new_var temp_15_array_ele_39:i32 
              #                          temp_15_array_ele_39 = load temp_14_array_ptr_39:ptr->i32 
              #                    occupy s10 with temp_14_array_ptr_39
              #                    occupy s4 with temp_15_array_ele_39
    lw      s4,0(s10)
              #                    free s4
              #                    free s10
              #                          store temp_15_array_ele_39:i32 temp_13_index_ptr_39:ptr->i32 
              #                    occupy s8 with temp_13_index_ptr_39
              #                    occupy s4 with temp_15_array_ele_39
    sw      s4,0(s8)
              #                    free s4
              #                    free s8
              #                          mu A_17:97 
              #                          A_17 = chi A_17:97 
              #                          new_var temp_16_index_ptr_39:ptr->i32 
              #                          temp_16_index_ptr_39 = getelementptr A_17:ptr->i32 [Some(i_19)] 
              #                    occupy s5 with temp_16_index_ptr_39
    li      s5, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a2 with i_19
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s9,a2
              #                    free s9
              #                    free a2
    add     s5,s5,s11
              #                    free s11
    slli s5,s5,2
              #                    occupy a0 with A_17
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          store tmp_39:i32 temp_16_index_ptr_39:ptr->i32 
              #                    occupy s5 with temp_16_index_ptr_39
              #                    occupy s7 with tmp_39
    sw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          mu A_17:103 
              #                          A_17 = chi A_17:103 
              #                          jump label: branch_false_38 
              #                    store to temp_16_index_ptr_39 in mem offset legal
    sd      s5,8(sp)
              #                    release s5 with temp_16_index_ptr_39
              #                    store to temp_14_array_ptr_39 in mem offset legal
    sd      s10,24(sp)
              #                    release s10 with temp_14_array_ptr_39
              #                    store to temp_15_array_ele_39 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_15_array_ele_39
              #                    store to temp_11_array_ptr_39 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_11_array_ptr_39
              #                    store to tmp_39 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with tmp_39
              #                    store to temp_13_index_ptr_39 in mem offset legal
    sd      s8,32(sp)
              #                    release s8 with temp_13_index_ptr_39
              #                    store to temp_12_array_ele_39 in mem offset legal
    sw      s6,44(sp)
              #                    release s6 with temp_12_array_ele_39
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_10_cmp_37, tracked: true } | 
              #                          label branch_false_38: 
.branch_false_38:
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: min_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_3_cmp_29, tracked: true } |     a7:Freed { symidx: temp_2_arithop_26, tracked: true } |     s1:Freed { symidx: j_19, tracked: true } |     s2:Freed { symidx: temp_10_cmp_37, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_17_arithop_26:i32 
              #                          temp_17_arithop_26 = Add i32 i_19, 1_0 
              #                    occupy a2 with i_19
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_17_arithop_26
    add     s4,a2,s3
              #                    free a2
              #                    free s3
              #                    free s4
              #                          i_19 = i32 temp_17_arithop_26 
              #                    occupy s4 with temp_17_arithop_26
              #                    occupy a2 with i_19
    mv      a2, s4
              #                    free s4
              #                    free a2
              #                          jump label: while.head_25 
              #                    store to temp_17_arithop_26 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_17_arithop_26
              #                    store to temp_3_cmp_29 in mem offset legal
    sb      a6,107(sp)
              #                    release a6 with temp_3_cmp_29
              #                    store to temp_0_arithop_24 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with temp_0_arithop_24
              #                    store to temp_10_cmp_37 in mem offset legal
    sb      s2,67(sp)
              #                    release s2 with temp_10_cmp_37
              #                    store to j_19 in mem offset legal
    sw      s1,124(sp)
              #                    release s1 with j_19
              #                    store to temp_1_cmp_24 in mem offset legal
    sb      a5,115(sp)
              #                    release a5 with temp_1_cmp_24
              #                    store to min_19 in mem offset legal
    sw      a3,120(sp)
              #                    release a3 with min_19
              #                    store to temp_2_arithop_26 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with temp_2_arithop_26
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          ret 0_0 
              #                    load from ra_select_sort_0 in mem
    ld      ra,152(sp)
              #                    load from s0_select_sort_0 in mem
    ld      s0,144(sp)
              #                    store to A_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with A_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,160
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: n_17, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 168|s0_main:8 at 160|a:40 at 120|temp_18_index_ptr:8 at 112|temp_19_index_ptr:8 at 104|temp_20_index_ptr:8 at 96|temp_21_index_ptr:8 at 88|temp_22_index_ptr:8 at 80|temp_23_index_ptr:8 at 72|temp_24_index_ptr:8 at 64|temp_25_index_ptr:8 at 56|temp_26_index_ptr:8 at 48|temp_27_index_ptr:8 at 40|i:4 at 36|temp_28_ptr2globl:4 at 32|temp_29_ret_of_select_sort:4 at 28|temp_30_ptr2globl:4 at 24|temp_31_cmp:1 at 23|none:3 at 20|tmp:4 at 16|temp_32_array_ptr:8 at 8|temp_33_array_ele:4 at 4|temp_34_arithop:4 at 0
    addi    sp,sp,-176
              #                    store to ra_main_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                          alloc Array:i32:[Some(10_0)] a_47 
              #                          alloc ptr->i32 temp_18_index_ptr_47 
              #                          alloc ptr->i32 temp_19_index_ptr_47 
              #                          alloc ptr->i32 temp_20_index_ptr_47 
              #                          alloc ptr->i32 temp_21_index_ptr_47 
              #                          alloc ptr->i32 temp_22_index_ptr_47 
              #                          alloc ptr->i32 temp_23_index_ptr_47 
              #                          alloc ptr->i32 temp_24_index_ptr_47 
              #                          alloc ptr->i32 temp_25_index_ptr_47 
              #                          alloc ptr->i32 temp_26_index_ptr_47 
              #                          alloc ptr->i32 temp_27_index_ptr_47 
              #                          alloc i32 i_47 
              #                          alloc i32 temp_28_ptr2globl_47 
              #                          alloc i32 temp_29_ret_of_select_sort_47 
              #                          alloc i32 temp_30_ptr2globl_63 
              #                          alloc i1 temp_31_cmp_63 
              #                          alloc i32 tmp_65 
              #                          alloc ptr->i32 temp_32_array_ptr_65 
              #                          alloc i32 temp_33_array_ele_65 
              #                          alloc i32 temp_34_arithop_65 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var a_47:Array:i32:[Some(10_0)] 
              #                          new_var temp_18_index_ptr_47:ptr->i32 
              #                          temp_18_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_18_index_ptr_47
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          store 4_0:i32 temp_18_index_ptr_47:ptr->i32 
              #                    occupy a2 with temp_18_index_ptr_47
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_47:118 
              #                          a_47 = chi a_47:118 
              #                          new_var temp_19_index_ptr_47:ptr->i32 
              #                          temp_19_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_19_index_ptr_47
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,120
              #                    free a7
              #                          store 3_0:i32 temp_19_index_ptr_47:ptr->i32 
              #                    occupy a7 with temp_19_index_ptr_47
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_47:124 
              #                          a_47 = chi a_47:124 
              #                          new_var temp_20_index_ptr_47:ptr->i32 
              #                          temp_20_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_20_index_ptr_47
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s1,s5
              #                    free s1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,120
              #                    free s4
              #                          store 9_0:i32 temp_20_index_ptr_47:ptr->i32 
              #                    occupy s4 with temp_20_index_ptr_47
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_47:130 
              #                          a_47 = chi a_47:130 
              #                          new_var temp_21_index_ptr_47:ptr->i32 
              #                          temp_21_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_21_index_ptr_47
    li      s8, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s1,s3
              #                    free s1
              #                    free s3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,120
              #                    free s8
              #                          store 2_0:i32 temp_21_index_ptr_47:ptr->i32 
              #                    occupy s8 with temp_21_index_ptr_47
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_47:136 
              #                          a_47 = chi a_47:136 
              #                          new_var temp_22_index_ptr_47:ptr->i32 
              #                          temp_22_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_22_index_ptr_47
    li      s10, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(a6) already exist with 4_0
              #                    occupy a6 with 4_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s1,a6
              #                    free s1
              #                    free a6
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,120
              #                    free s10
              #                          store 0_0:i32 temp_22_index_ptr_47:ptr->i32 
              #                    occupy s10 with temp_22_index_ptr_47
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_47:142 
              #                          a_47 = chi a_47:142 
              #                          new_var temp_23_index_ptr_47:ptr->i32 
              #                          temp_23_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_23_index_ptr_47
    li      a0, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,s1,a1
              #                    free s1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,120
              #                    free a0
              #                          store 1_0:i32 temp_23_index_ptr_47:ptr->i32 
              #                    occupy a0 with temp_23_index_ptr_47
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu a_47:148 
              #                          a_47 = chi a_47:148 
              #                          new_var temp_24_index_ptr_47:ptr->i32 
              #                          temp_24_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_24_index_ptr_47
    li      a1, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a3 with 6_0
    li      a3, 6
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,s1,a3
              #                    free s1
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,120
              #                    free a1
              #                          store 6_0:i32 temp_24_index_ptr_47:ptr->i32 
              #                    occupy a1 with temp_24_index_ptr_47
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu a_47:154 
              #                          a_47 = chi a_47:154 
              #                          new_var temp_25_index_ptr_47:ptr->i32 
              #                          temp_25_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_25_index_ptr_47
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,120
              #                    free a3
              #                          store 5_0:i32 temp_25_index_ptr_47:ptr->i32 
              #                    occupy a3 with temp_25_index_ptr_47
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_47:160 
              #                          a_47 = chi a_47:160 
              #                          new_var temp_26_index_ptr_47:ptr->i32 
              #                          temp_26_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_26_index_ptr_47
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with 8_0
    li      a5, 8
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s1,a5
              #                    free s1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,120
              #                    free a4
              #                          store 7_0:i32 temp_26_index_ptr_47:ptr->i32 
              #                    occupy a4 with temp_26_index_ptr_47
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_47:166 
              #                          a_47 = chi a_47:166 
              #                          new_var temp_27_index_ptr_47:ptr->i32 
              #                          temp_27_index_ptr_47 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_27_index_ptr_47
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s1,s7
              #                    free s1
              #                    free s7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,120
              #                    free a5
              #                          store 8_0:i32 temp_27_index_ptr_47:ptr->i32 
              #                    occupy a5 with temp_27_index_ptr_47
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_47:172 
              #                          a_47 = chi a_47:172 
              #                          new_var i_47:i32 
              #                          i_47 = i32 0_0 
              #                    occupy a6 with i_47
    li      a6, 0
              #                    free a6
              #                          new_var temp_28_ptr2globl_47:i32 
              #                          temp_28_ptr2globl_47 = load *n_0:ptr->i32 
              #                    occupy s1 with *n_0
              #                       load label n as ptr to reg
    la      s1, n
              #                    occupy reg s1 with *n_0
              #                    occupy s2 with temp_28_ptr2globl_47
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_29_ret_of_select_sort_47:i32 
              #                          temp_29_ret_of_select_sort_47 =  Call i32 select_sort_0(a_47, temp_28_ptr2globl_47) 
              #                    saved register dumping to mem
              #                    store to temp_28_ptr2globl_47 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_28_ptr2globl_47
              #                    store to temp_20_index_ptr_47 in mem offset legal
    sd      s4,96(sp)
              #                    release s4 with temp_20_index_ptr_47
              #                    store to temp_21_index_ptr_47 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_21_index_ptr_47
              #                    store to temp_22_index_ptr_47 in mem offset legal
    sd      s10,80(sp)
              #                    release s10 with temp_22_index_ptr_47
              #                    store to temp_23_index_ptr_47 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_23_index_ptr_47
              #                    store to temp_24_index_ptr_47 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_24_index_ptr_47
              #                    store to temp_18_index_ptr_47 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_18_index_ptr_47
              #                    store to temp_25_index_ptr_47 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_25_index_ptr_47
              #                    store to temp_26_index_ptr_47 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_26_index_ptr_47
              #                    store to temp_27_index_ptr_47 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_27_index_ptr_47
              #                    store to i_47 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with i_47
              #                    store to temp_19_index_ptr_47 in mem offset legal
    sd      a7,104(sp)
              #                    release a7 with temp_19_index_ptr_47
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_47_0
              #                    load from a_47 in mem
    lw      a0,120(sp)
              #                    occupy a1 with _anonymous_of_temp_28_ptr2globl_47_0
              #                    load from temp_28_ptr2globl_47 in mem


    lw      a1,32(sp)
              #                    arg load ended


    call    select_sort
              #                    store to temp_29_ret_of_select_sort_47 in mem offset legal
    sw      a0,28(sp)
              #                          i_47 = i32 temp_29_ret_of_select_sort_47 
              #                    occupy a0 with temp_29_ret_of_select_sort_47
              #                    occupy a1 with i_47
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_select_sort_47, tracked: true } |     a1:Freed { symidx: i_47, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_30_ptr2globl_63:i32 
              #                          temp_30_ptr2globl_63 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_30_ptr2globl_63
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_31_cmp_63:i1 
              #                          temp_31_cmp_63 = icmp i32 Slt i_47, temp_30_ptr2globl_63 
              #                    occupy a1 with i_47
              #                    occupy a3 with temp_30_ptr2globl_63
              #                    occupy a4 with temp_31_cmp_63
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_31_cmp_63, label while.body_64, label while.exit_64 
              #                    occupy a4 with temp_31_cmp_63
              #                    free a4
              #                    occupy a4 with temp_31_cmp_63
    bnez    a4, .while.body_64
              #                    free a4
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_select_sort_47, tracked: true } |     a1:Freed { symidx: i_47, tracked: true } |     a3:Freed { symidx: temp_30_ptr2globl_63, tracked: true } |     a4:Freed { symidx: temp_31_cmp_63, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          new_var tmp_65:i32 
              #                          new_var temp_32_array_ptr_65:ptr->i32 
              #                          temp_32_array_ptr_65 = getelementptr a_47:Array:i32:[Some(10_0)] [Some(i_47)] 
              #                    occupy a2 with temp_32_array_ptr_65
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_47
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          new_var temp_33_array_ele_65:i32 
              #                          temp_33_array_ele_65 = load temp_32_array_ptr_65:ptr->i32 
              #                    occupy a2 with temp_32_array_ptr_65
              #                    occupy a7 with temp_33_array_ele_65
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_65 = i32 temp_33_array_ele_65 
              #                    occupy a7 with temp_33_array_ele_65
              #                    occupy s1 with tmp_65
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_65) 
              #                    saved register dumping to mem
              #                    store to tmp_65 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with tmp_65
              #                    store to temp_29_ret_of_select_sort_47 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_29_ret_of_select_sort_47
              #                    store to i_47 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_47
              #                    store to temp_32_array_ptr_65 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_32_array_ptr_65
              #                    store to temp_30_ptr2globl_63 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_30_ptr2globl_63
              #                    store to temp_31_cmp_63 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_31_cmp_63
              #                    store to temp_33_array_ele_65 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_33_array_ele_65
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_65_0
              #                    load from tmp_65 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          tmp_65 = i32 10_0 
              #                    occupy a0 with tmp_65
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_65) 
              #                    saved register dumping to mem
              #                    store to tmp_65 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with tmp_65
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_65_0
              #                    load from tmp_65 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_34_arithop_65:i32 
              #                          temp_34_arithop_65 = Add i32 i_47, 1_0 
              #                    occupy a0 with i_47
              #                    load from i_47 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_34_arithop_65
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_47 = i32 temp_34_arithop_65 
              #                    occupy a2 with temp_34_arithop_65
              #                    occupy a0 with i_47
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_64 
              #                    store to i_47 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_47
              #                    store to temp_34_arithop_65 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_34_arithop_65
              #                    occupy a0 with _anonymous_of_temp_29_ret_of_select_sort_47_0
              #                    load from temp_29_ret_of_select_sort_47 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_i_47_0
              #                    load from i_47 in mem


    lw      a1,36(sp)
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_select_sort_47, tracked: true } |     a1:Freed { symidx: i_47, tracked: true } |     a3:Freed { symidx: temp_30_ptr2globl_63, tracked: true } |     a4:Freed { symidx: temp_31_cmp_63, tracked: true } | 
              #                          label while.exit_64: 
.while.exit_64:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,168(sp)
              #                    load from s0_main_0 in mem
    ld      s0,160(sp)
              #                    store to temp_29_ret_of_select_sort_47 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_29_ret_of_select_sort_47
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_47, tracked: true } |     a3:Freed { symidx: temp_30_ptr2globl_63, tracked: true } |     a4:Freed { symidx: temp_31_cmp_63, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
