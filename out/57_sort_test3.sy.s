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
              #                          Define QuickSort_0 [arr_17, low_17, high_17] -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
              #                    mem layout:|ra_QuickSort:8 at 192|s0_QuickSort:8 at 184|arr:8 at 176|low:4 at 172|high:4 at 168|temp_0_cmp:1 at 167|none:3 at 164|i:4 at 160|j:4 at 156|k:4 at 152|temp_1_array_ptr:8 at 144|temp_2_array_ele:4 at 140|temp_3_cmp:1 at 139|none:3 at 136|temp_4_arithop:4 at 132|none:4 at 128|temp_5_array_ptr:8 at 120|temp_6_array_ele:4 at 116|temp_7_cmp:1 at 115|temp_8_cmp:1 at 114|temp_9_logic:1 at 113|none:1 at 112|temp_10_arithop:4 at 108|temp_11_cmp:1 at 107|none:3 at 104|temp_12_index_ptr:8 at 96|temp_13_array_ptr:8 at 88|temp_14_array_ele:4 at 84|temp_15_arithop:4 at 80|temp_16_array_ptr:8 at 72|temp_17_array_ele:4 at 68|temp_18_cmp:1 at 67|temp_19_cmp:1 at 66|temp_20_logic:1 at 65|none:1 at 64|temp_21_arithop:4 at 60|temp_22_cmp:1 at 59|none:3 at 56|temp_23_index_ptr:8 at 48|temp_24_array_ptr:8 at 40|temp_25_array_ele:4 at 36|temp_26_arithop:4 at 32|temp_27_index_ptr:8 at 24|tmp:4 at 20|temp_28_arithop:4 at 16|temp_29_ret_of_QuickSort:4 at 12|temp_30_arithop:4 at 8|temp_31_ret_of_QuickSort:4 at 4|none:4 at 0
    addi    sp,sp,-200
              #                    store to ra_QuickSort_0 in mem offset legal
    sd      ra,192(sp)
              #                    store to s0_QuickSort_0 in mem offset legal
    sd      s0,184(sp)
    addi    s0,sp,200
              #                          new_var arr_17:ptr->i32 
              #                          alloc i1 temp_0_cmp_20 
              #                          alloc i32 i_22 
              #                          alloc i32 j_22 
              #                          alloc i32 k_22 
              #                          alloc ptr->i32 temp_1_array_ptr_22 
              #                          alloc i32 temp_2_array_ele_22 
              #                          alloc i1 temp_3_cmp_29 
              #                          alloc i32 temp_4_arithop_32 
              #                          alloc ptr->i32 temp_5_array_ptr_32 
              #                          alloc i32 temp_6_array_ele_32 
              #                          alloc i1 temp_7_cmp_32 
              #                          alloc i1 temp_8_cmp_32 
              #                          alloc i1 temp_9_logic_32 
              #                          alloc i32 temp_10_arithop_34 
              #                          alloc i1 temp_11_cmp_36 
              #                          alloc ptr->i32 temp_12_index_ptr_38 
              #                          alloc ptr->i32 temp_13_array_ptr_38 
              #                          alloc i32 temp_14_array_ele_38 
              #                          alloc i32 temp_15_arithop_38 
              #                          alloc ptr->i32 temp_16_array_ptr_41 
              #                          alloc i32 temp_17_array_ele_41 
              #                          alloc i1 temp_18_cmp_41 
              #                          alloc i1 temp_19_cmp_41 
              #                          alloc i1 temp_20_logic_41 
              #                          alloc i32 temp_21_arithop_43 
              #                          alloc i1 temp_22_cmp_45 
              #                          alloc ptr->i32 temp_23_index_ptr_47 
              #                          alloc ptr->i32 temp_24_array_ptr_47 
              #                          alloc i32 temp_25_array_ele_47 
              #                          alloc i32 temp_26_arithop_47 
              #                          alloc ptr->i32 temp_27_index_ptr_22 
              #                          alloc i32 tmp_22 
              #                          alloc i32 temp_28_arithop_22 
              #                          alloc i32 temp_29_ret_of_QuickSort_22 
              #                          alloc i32 temp_30_arithop_22 
              #                          alloc i32 temp_31_ret_of_QuickSort_22 
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_cmp_20:i1 
              #                          temp_0_cmp_20 = icmp i32 Slt low_17, high_17 
              #                    occupy a1 with low_17
              #                    occupy a2 with high_17
              #                    occupy a3 with temp_0_cmp_20
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_20, label branch_true_21, label branch_false_21 
              #                    occupy a3 with temp_0_cmp_20
              #                    free a3
              #                    occupy a3 with temp_0_cmp_20
    bnez    a3, .branch_true_21
              #                    free a3
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          new_var i_22:i32 
              #                          i_22 = i32 low_17 
              #                    occupy a1 with low_17
              #                    occupy a4 with i_22
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          new_var j_22:i32 
              #                          j_22 = i32 high_17 
              #                    occupy a2 with high_17
              #                    occupy a5 with j_22
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                          new_var k_22:i32 
              #                          new_var temp_1_array_ptr_22:ptr->i32 
              #                          temp_1_array_ptr_22 = getelementptr arr_17:ptr->i32 [Some(low_17)] 
              #                    occupy a6 with temp_1_array_ptr_22
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a1 with low_17
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a7,a1
              #                    free a7
              #                    free a1
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy a0 with arr_17
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_2_array_ele_22:i32 
              #                          temp_2_array_ele_22 = load temp_1_array_ptr_22:ptr->i32 
              #                    occupy a6 with temp_1_array_ptr_22
              #                    occupy s2 with temp_2_array_ele_22
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                          k_22 = i32 temp_2_array_ele_22 
              #                    occupy s2 with temp_2_array_ele_22
              #                    occupy s3 with k_22
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } | 
              #                          label while.head_30: 
.while.head_30:
              #                          new_var temp_3_cmp_29:i1 
              #                          temp_3_cmp_29 = icmp i32 Slt i_22, j_22 
              #                    occupy a4 with i_22
              #                    occupy a5 with j_22
              #                    occupy a7 with temp_3_cmp_29
    slt     a7,a4,a5
              #                    free a4
              #                    free a5
              #                    free a7
              #                          br i1 temp_3_cmp_29, label while.body_30, label while.exit_30 
              #                    occupy a7 with temp_3_cmp_29
              #                    free a7
              #                    occupy a7 with temp_3_cmp_29
    bnez    a7, .while.body_30
              #                    free a7
    j       .while.exit_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } | 
              #                          label while.body_30: 
.while.body_30:
              #                          new_var temp_4_arithop_32:i32 
              #                          temp_4_arithop_32 = Sub i32 k_22, 1_0 
              #                    occupy s3 with k_22
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_4_arithop_32
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Occupied { symidx: k_22, tracked: true, occupy_count: 1 } |     s4:Occupied { symidx: temp_4_arithop_32, tracked: true, occupy_count: 1 } | 


    sub     s4,s3,s1
              #                    free s3
              #                    free s1
              #                    free s4
              #                          new_var temp_5_array_ptr_32:ptr->i32 
              #                          temp_5_array_ptr_32 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
              #                    occupy s5 with temp_5_array_ptr_32
    li      s5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with j_22
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s1,a5
              #                    free s1
              #                    free a5
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with arr_17
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_6_array_ele_32:i32 
              #                          temp_6_array_ele_32 = load temp_5_array_ptr_32:ptr->i32 
              #                    occupy s5 with temp_5_array_ptr_32
              #                    occupy s7 with temp_6_array_ele_32
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_7_cmp_32:i1 
              #                          temp_7_cmp_32 = icmp i32 Sgt temp_6_array_ele_32, temp_4_arithop_32 
              #                    occupy s7 with temp_6_array_ele_32
              #                    occupy s4 with temp_4_arithop_32
              #                    occupy s8 with temp_7_cmp_32
    slt     s8,s4,s7
              #                    free s7
              #                    free s4
              #                    free s8
              #                          new_var temp_8_cmp_32:i1 
              #                          temp_8_cmp_32 = icmp i32 Slt i_22, j_22 
              #                    occupy a4 with i_22
              #                    occupy a5 with j_22
              #                    occupy s9 with temp_8_cmp_32
    slt     s9,a4,a5
              #                    free a4
              #                    free a5
              #                    free s9
              #                          new_var temp_9_logic_32:i1 
              #                          temp_9_logic_32 = And i1 temp_8_cmp_32, temp_7_cmp_32 
              #                    occupy s9 with temp_8_cmp_32
              #                    occupy s8 with temp_7_cmp_32
              #                    occupy s10 with temp_9_logic_32
    and     s10,s9,s8
              #                    free s9
              #                    free s8
              #                    free s10
              #                          br i1 temp_9_logic_32, label while.body_33, label while.exit_33 
              #                    occupy s10 with temp_9_logic_32
              #                    free s10
              #                    occupy s10 with temp_9_logic_32
    bnez    s10, .while.body_33
              #                    free s10
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_10_arithop_34:i32 
              #                          temp_10_arithop_34 = Sub i32 j_22, 1_0 
              #                    occupy a5 with j_22
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s6 with temp_10_arithop_34
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Occupied { symidx: j_22, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s6:Occupied { symidx: temp_10_arithop_34, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 


    sub     s6,a5,s1
              #                    free a5
              #                    free s1
              #                    free s6
              #                          j_22 = i32 temp_10_arithop_34 
              #                    occupy s6 with temp_10_arithop_34
              #                    occupy a5 with j_22
    mv      a5, s6
              #                    free s6
              #                    free a5
              #                          jump label: while.body_30 
              #                    store to temp_5_array_ptr_32 in mem offset legal
    sd      s5,120(sp)
              #                    release s5 with temp_5_array_ptr_32
              #                    store to temp_7_cmp_32 in mem offset legal
    sb      s8,115(sp)
              #                    release s8 with temp_7_cmp_32
              #                    store to temp_9_logic_32 in mem offset legal
    sb      s10,113(sp)
              #                    release s10 with temp_9_logic_32
              #                    store to temp_4_arithop_32 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_4_arithop_32
              #                    store to temp_6_array_ele_32 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_6_array_ele_32
              #                    store to temp_10_arithop_34 in mem offset legal
    sw      s6,108(sp)
              #                    release s6 with temp_10_arithop_34
              #                    store to temp_8_cmp_32 in mem offset legal
    sb      s9,114(sp)
              #                    release s9 with temp_8_cmp_32
    j       .while.body_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          new_var temp_11_cmp_36:i1 
              #                          temp_11_cmp_36 = icmp i32 Slt i_22, j_22 
              #                    occupy a4 with i_22
              #                    occupy a5 with j_22
              #                    occupy s1 with temp_11_cmp_36
    slt     s1,a4,a5
              #                    free a4
              #                    free a5
              #                    free s1
              #                          br i1 temp_11_cmp_36, label branch_true_37, label branch_false_37 
              #                    occupy s1 with temp_11_cmp_36
              #                    free s1
              #                    occupy s1 with temp_11_cmp_36
    bnez    s1, .branch_true_37
              #                    free s1
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          new_var temp_12_index_ptr_38:ptr->i32 
              #                          temp_12_index_ptr_38 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
              #                    occupy s6 with temp_12_index_ptr_38
    li      s6, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a4 with i_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s11,a4
              #                    free s11
              #                    free a4
    add     s6,s6,a0
              #                    free a0
    slli s6,s6,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_13_array_ptr_38:ptr->i32 
              #                          temp_13_array_ptr_38 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
              #                    occupy s11 with temp_13_array_ptr_38
    li      s11, 0
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_22
              #                    store to low_17 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_17
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_14_array_ele_38:i32 
              #                          temp_14_array_ele_38 = load temp_13_array_ptr_38:ptr->i32 
              #                    occupy s11 with temp_13_array_ptr_38
              #                    occupy a1 with temp_14_array_ele_38
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          store temp_14_array_ele_38:i32 temp_12_index_ptr_38:ptr->i32 
              #                    occupy s6 with temp_12_index_ptr_38
              #                    occupy a1 with temp_14_array_ele_38
    sw      a1,0(s6)
              #                    free a1
              #                    free s6
              #                          mu arr_17:89 
              #                          arr_17 = chi arr_17:89 
              #                          new_var temp_15_arithop_38:i32 
              #                          temp_15_arithop_38 = Add i32 i_22, 1_0 
              #                    occupy a4 with i_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_14_array_ele_38 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_14_array_ele_38
              #                    occupy a1 with temp_15_arithop_38
    add     a1,a4,a0
              #                    free a4
              #                    free a0
              #                    free a1
              #                          i_22 = i32 temp_15_arithop_38 
              #                    occupy a1 with temp_15_arithop_38
              #                    occupy a4 with i_22
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          jump label: branch_false_37 
              #                    store to temp_15_arithop_38 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with temp_15_arithop_38
              #                    store to temp_13_array_ptr_38 in mem offset legal
    sd      s11,88(sp)
              #                    release s11 with temp_13_array_ptr_38
              #                    store to temp_12_index_ptr_38 in mem offset legal
    sd      s6,96(sp)
              #                    release s6 with temp_12_index_ptr_38
              #                    occupy a1 with _anonymous_of_low_17_0
              #                    load from low_17 in mem


    lw      a1,172(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_5_array_ptr_32, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label while.head_42: 
.while.head_42:
              #                          new_var temp_16_array_ptr_41:ptr->i32 
              #                          temp_16_array_ptr_41 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
              #                    occupy s6 with temp_16_array_ptr_41
    li      s6, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a4 with i_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s11,a4
              #                    free s11
              #                    free a4
    add     s6,s6,a0
              #                    free a0
    slli s6,s6,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_17_array_ele_41:i32 
              #                          temp_17_array_ele_41 = load temp_16_array_ptr_41:ptr->i32 
              #                    occupy s6 with temp_16_array_ptr_41
              #                    occupy s11 with temp_17_array_ele_41
    lw      s11,0(s6)
              #                    free s11
              #                    free s6
              #                          new_var temp_18_cmp_41:i1 
              #                          temp_18_cmp_41 = icmp i32 Slt temp_17_array_ele_41, k_22 
              #                    occupy s11 with temp_17_array_ele_41
              #                    occupy s3 with k_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with temp_18_cmp_41
    slt     a0,s11,s3
              #                    free s11
              #                    free s3
              #                    free a0
              #                          new_var temp_19_cmp_41:i1 
              #                          temp_19_cmp_41 = icmp i32 Slt i_22, j_22 
              #                    occupy a4 with i_22
              #                    occupy a5 with j_22
              #                    store to temp_18_cmp_41 in mem offset legal
    sb      a0,67(sp)
              #                    release a0 with temp_18_cmp_41
              #                    occupy a0 with temp_19_cmp_41
    slt     a0,a4,a5
              #                    free a4
              #                    free a5
              #                    free a0
              #                          new_var temp_20_logic_41:i1 
              #                          temp_20_logic_41 = And i1 temp_19_cmp_41, temp_18_cmp_41 
              #                    occupy a0 with temp_19_cmp_41
              #                    store to low_17 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_17
              #                    occupy a1 with temp_18_cmp_41
              #                    load from temp_18_cmp_41 in mem
    lb      a1,67(sp)
              #                    store to high_17 in mem offset legal
    sw      a2,168(sp)
              #                    release a2 with high_17
              #                    occupy a2 with temp_20_logic_41
    and     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_20_logic_41, label while.body_42, label while.exit_42 
              #                    occupy a2 with temp_20_logic_41
              #                    free a2
              #                    store to temp_5_array_ptr_32 in mem offset legal
    sd      s5,120(sp)
              #                    release s5 with temp_5_array_ptr_32
              #                    occupy a2 with temp_20_logic_41
    bnez    a2, .while.body_42
              #                    free a2
    j       .while.exit_42
              #                    regtab     a0:Freed { symidx: temp_19_cmp_41, tracked: true } |     a1:Freed { symidx: temp_18_cmp_41, tracked: true } |     a2:Freed { symidx: temp_20_logic_41, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s11:Freed { symidx: temp_17_array_ele_41, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s6:Freed { symidx: temp_16_array_ptr_41, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label while.body_42: 
.while.body_42:
              #                          new_var temp_21_arithop_43:i32 
              #                          temp_21_arithop_43 = Add i32 i_22, 1_0 
              #                    occupy a4 with i_22
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    store to temp_19_cmp_41 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_19_cmp_41
              #                    occupy a0 with temp_21_arithop_43
    add     a0,a4,s5
              #                    free a4
              #                    free s5
              #                    free a0
              #                          i_22 = i32 temp_21_arithop_43 
              #                    occupy a0 with temp_21_arithop_43
              #                    occupy a4 with i_22
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_42 
              #                    store to temp_18_cmp_41 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_18_cmp_41
              #                    store to temp_17_array_ele_41 in mem offset legal
    sw      s11,68(sp)
              #                    release s11 with temp_17_array_ele_41
              #                    store to temp_20_logic_41 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_20_logic_41
              #                    store to temp_16_array_ptr_41 in mem offset legal
    sd      s6,72(sp)
              #                    release s6 with temp_16_array_ptr_41
              #                    store to temp_21_arithop_43 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_21_arithop_43
              #                    occupy s5 with _anonymous_of_temp_5_array_ptr_32_0
              #                    load from temp_5_array_ptr_32 in mem
    ld      s5,120(sp)
              #                    occupy a1 with _anonymous_of_low_17_0
              #                    load from low_17 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_17_0
              #                    load from high_17 in mem


    lw      a2,168(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    j       .while.head_42
              #                    regtab     a0:Freed { symidx: temp_19_cmp_41, tracked: true } |     a1:Freed { symidx: temp_18_cmp_41, tracked: true } |     a2:Freed { symidx: temp_20_logic_41, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s11:Freed { symidx: temp_17_array_ele_41, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s6:Freed { symidx: temp_16_array_ptr_41, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label while.exit_42: 
.while.exit_42:
              #                          new_var temp_22_cmp_45:i1 
              #                          temp_22_cmp_45 = icmp i32 Slt i_22, j_22 
              #                    occupy a4 with i_22
              #                    occupy a5 with j_22
              #                    occupy s5 with temp_22_cmp_45
    slt     s5,a4,a5
              #                    free a4
              #                    free a5
              #                    free s5
              #                          br i1 temp_22_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy s5 with temp_22_cmp_45
              #                    free s5
              #                    store to temp_22_cmp_45 in mem offset legal
    sb      s5,59(sp)
              #                    release s5 with temp_22_cmp_45
              #                    occupy s5 with temp_22_cmp_45
              #                    load from temp_22_cmp_45 in mem
    lb      s5,59(sp)
    bnez    s5, .branch_true_46
              #                    free s5
              #                    store to temp_22_cmp_45 in mem offset legal
    sb      s5,59(sp)
              #                    release s5 with temp_22_cmp_45
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_19_cmp_41, tracked: true } |     a1:Freed { symidx: temp_18_cmp_41, tracked: true } |     a2:Freed { symidx: temp_20_logic_41, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s11:Freed { symidx: temp_17_array_ele_41, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s6:Freed { symidx: temp_16_array_ptr_41, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          new_var temp_23_index_ptr_47:ptr->i32 
              #                          temp_23_index_ptr_47 = getelementptr arr_17:ptr->i32 [Some(j_22)] 
              #                    occupy s5 with temp_23_index_ptr_47
    li      s5, 0
              #                    store to temp_19_cmp_41 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_19_cmp_41
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_22
              #                    store to temp_18_cmp_41 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_18_cmp_41
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     s5,s5,a1
              #                    free a1
    slli s5,s5,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_24_array_ptr_47:ptr->i32 
              #                          temp_24_array_ptr_47 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
              #                    occupy a1 with temp_24_array_ptr_47
    li      a1, 0
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a4 with i_22
              #                    store to temp_20_logic_41 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_20_logic_41
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a4
              #                    free a0
              #                    free a4
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_25_array_ele_47:i32 
              #                          temp_25_array_ele_47 = load temp_24_array_ptr_47:ptr->i32 
              #                    occupy a1 with temp_24_array_ptr_47
              #                    occupy a2 with temp_25_array_ele_47
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          store temp_25_array_ele_47:i32 temp_23_index_ptr_47:ptr->i32 
              #                    occupy s5 with temp_23_index_ptr_47
              #                    occupy a2 with temp_25_array_ele_47
    sw      a2,0(s5)
              #                    free a2
              #                    free s5
              #                          mu arr_17:135 
              #                          arr_17 = chi arr_17:135 
              #                          new_var temp_26_arithop_47:i32 
              #                          temp_26_arithop_47 = Sub i32 j_22, 1_0 
              #                    occupy a5 with j_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_24_array_ptr_47 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_24_array_ptr_47
              #                    occupy a1 with temp_26_arithop_47
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_26_arithop_47, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_25_array_ele_47, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Occupied { symidx: j_22, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s11:Freed { symidx: temp_17_array_ele_41, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s5:Freed { symidx: temp_23_index_ptr_47, tracked: true } |     s6:Freed { symidx: temp_16_array_ptr_41, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 


    sub     a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                          j_22 = i32 temp_26_arithop_47 
              #                    occupy a1 with temp_26_arithop_47
              #                    occupy a5 with j_22
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: branch_false_46 
              #                    store to temp_23_index_ptr_47 in mem offset legal
    sd      s5,48(sp)
              #                    release s5 with temp_23_index_ptr_47
              #                    store to temp_26_arithop_47 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_26_arithop_47
              #                    store to temp_25_array_ele_47 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_25_array_ele_47
              #                    occupy a1 with _anonymous_of_temp_18_cmp_41_0
              #                    load from temp_18_cmp_41 in mem
    lb      a1,67(sp)
              #                    occupy a2 with _anonymous_of_temp_20_logic_41_0
              #                    load from temp_20_logic_41 in mem
    lb      a2,65(sp)
              #                    occupy a0 with _anonymous_of_temp_19_cmp_41_0
              #                    load from temp_19_cmp_41 in mem
    lb      a0,66(sp)
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_19_cmp_41, tracked: true } |     a1:Freed { symidx: temp_18_cmp_41, tracked: true } |     a2:Freed { symidx: temp_20_logic_41, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s10:Freed { symidx: temp_9_logic_32, tracked: true } |     s11:Freed { symidx: temp_17_array_ele_41, tracked: true } |     s1:Freed { symidx: temp_11_cmp_36, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Freed { symidx: temp_4_arithop_32, tracked: true } |     s6:Freed { symidx: temp_16_array_ptr_41, tracked: true } |     s7:Freed { symidx: temp_6_array_ele_32, tracked: true } |     s8:Freed { symidx: temp_7_cmp_32, tracked: true } |     s9:Freed { symidx: temp_8_cmp_32, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                          jump label: while.head_30 
              #                    store to temp_18_cmp_41 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_18_cmp_41
              #                    store to temp_7_cmp_32 in mem offset legal
    sb      s8,115(sp)
              #                    release s8 with temp_7_cmp_32
              #                    store to temp_17_array_ele_41 in mem offset legal
    sw      s11,68(sp)
              #                    release s11 with temp_17_array_ele_41
              #                    store to temp_20_logic_41 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_20_logic_41
              #                    store to temp_9_logic_32 in mem offset legal
    sb      s10,113(sp)
              #                    release s10 with temp_9_logic_32
              #                    store to temp_4_arithop_32 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_4_arithop_32
              #                    store to temp_6_array_ele_32 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_6_array_ele_32
              #                    store to temp_16_array_ptr_41 in mem offset legal
    sd      s6,72(sp)
              #                    release s6 with temp_16_array_ptr_41
              #                    store to temp_19_cmp_41 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_19_cmp_41
              #                    store to temp_3_cmp_29 in mem offset legal
    sb      a7,139(sp)
              #                    release a7 with temp_3_cmp_29
              #                    store to temp_11_cmp_36 in mem offset legal
    sb      s1,107(sp)
              #                    release s1 with temp_11_cmp_36
              #                    store to temp_8_cmp_32 in mem offset legal
    sb      s9,114(sp)
              #                    release s9 with temp_8_cmp_32
              #                    occupy a1 with _anonymous_of_low_17_0
              #                    load from low_17 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_17_0
              #                    load from high_17 in mem


    lw      a2,168(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: i_22, tracked: true } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } | 
              #                          label while.exit_30: 
.while.exit_30:
              #                          new_var temp_27_index_ptr_22:ptr->i32 
              #                          temp_27_index_ptr_22 = getelementptr arr_17:ptr->i32 [Some(i_22)] 
              #                    occupy s1 with temp_27_index_ptr_22
    li      s1, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a4 with i_22
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,a4
              #                    free s4
              #                    free a4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy a0 with arr_17
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          store k_22:i32 temp_27_index_ptr_22:ptr->i32 
              #                    occupy s1 with temp_27_index_ptr_22
              #                    occupy s3 with k_22
    sw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          mu arr_17:145 
              #                          arr_17 = chi arr_17:145 
              #                          new_var tmp_22:i32 
              #                          new_var temp_28_arithop_22:i32 
              #                          temp_28_arithop_22 = Sub i32 i_22, 1_0 
              #                    occupy a4 with i_22
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s6 with temp_28_arithop_22
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Occupied { symidx: i_22, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: j_22, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_22, tracked: true } |     a7:Freed { symidx: temp_3_cmp_29, tracked: true } |     s1:Freed { symidx: temp_27_index_ptr_22, tracked: true } |     s2:Freed { symidx: temp_2_array_ele_22, tracked: true } |     s3:Freed { symidx: k_22, tracked: true } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s6:Occupied { symidx: temp_28_arithop_22, tracked: true, occupy_count: 1 } | 


    sub     s6,a4,s4
              #                    free a4
              #                    free s4
              #                    free s6
              #                          tmp_22 = i32 temp_28_arithop_22 
              #                    occupy s6 with temp_28_arithop_22
              #                    occupy s7 with tmp_22
    mv      s7, s6
              #                    free s6
              #                    free s7
              #                          new_var temp_29_ret_of_QuickSort_22:i32 
              #                          temp_29_ret_of_QuickSort_22 =  Call i32 QuickSort_0(arr_17, low_17, tmp_22) 
              #                    saved register dumping to mem
              #                    store to temp_27_index_ptr_22 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_27_index_ptr_22
              #                    store to temp_2_array_ele_22 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with temp_2_array_ele_22
              #                    store to k_22 in mem offset legal
    sw      s3,152(sp)
              #                    release s3 with k_22
              #                    store to temp_28_arithop_22 in mem offset legal
    sw      s6,16(sp)
              #                    release s6 with temp_28_arithop_22
              #                    store to tmp_22 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with tmp_22
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    store to low_17 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_17
              #                    store to high_17 in mem offset legal
    sw      a2,168(sp)
              #                    release a2 with high_17
              #                    store to temp_0_cmp_20 in mem offset legal
    sb      a3,167(sp)
              #                    release a3 with temp_0_cmp_20
              #                    store to i_22 in mem offset legal
    sw      a4,160(sp)
              #                    release a4 with i_22
              #                    store to j_22 in mem offset legal
    sw      a5,156(sp)
              #                    release a5 with j_22
              #                    store to temp_1_array_ptr_22 in mem offset legal
    sd      a6,144(sp)
              #                    release a6 with temp_1_array_ptr_22
              #                    store to temp_3_cmp_29 in mem offset legal
    sb      a7,139(sp)
              #                    release a7 with temp_3_cmp_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_17_0
              #                    load from low_17 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_tmp_22_0
              #                    load from tmp_22 in mem


    lw      a2,20(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_29_ret_of_QuickSort_22 in mem offset legal
    sw      a0,12(sp)
              #                          tmp_22 = i32 temp_29_ret_of_QuickSort_22 
              #                    occupy a0 with temp_29_ret_of_QuickSort_22
              #                    occupy a1 with tmp_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_30_arithop_22:i32 
              #                          temp_30_arithop_22 = Add i32 i_22, 1_0 
              #                    occupy a2 with i_22
              #                    load from i_22 in mem


    lw      a2,160(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_30_arithop_22
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          tmp_22 = i32 temp_30_arithop_22 
              #                    occupy a4 with temp_30_arithop_22
              #                    occupy a1 with tmp_22
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          new_var temp_31_ret_of_QuickSort_22:i32 
              #                          temp_31_ret_of_QuickSort_22 =  Call i32 QuickSort_0(arr_17, tmp_22, high_17) 
              #                    saved register dumping to mem
              #                    store to temp_29_ret_of_QuickSort_22 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_29_ret_of_QuickSort_22
              #                    store to tmp_22 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with tmp_22
              #                    store to i_22 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with i_22
              #                    store to temp_30_arithop_22 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_30_arithop_22
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_tmp_22_0
              #                    load from tmp_22 in mem


    lw      a1,20(sp)
              #                    occupy a2 with _anonymous_of_high_17_0
              #                    load from high_17 in mem


    lw      a2,168(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_31_ret_of_QuickSort_22 in mem offset legal
    sw      a0,4(sp)
              #                          tmp_22 = i32 temp_31_ret_of_QuickSort_22 
              #                    occupy a0 with temp_31_ret_of_QuickSort_22
              #                    occupy a1 with tmp_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_21 
              #                    store to tmp_22 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with tmp_22
              #                    store to temp_31_ret_of_QuickSort_22 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_31_ret_of_QuickSort_22
              #                    occupy a1 with _anonymous_of_low_17_0
              #                    load from low_17 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_17_0
              #                    load from high_17 in mem


    lw      a2,168(sp)
              #                    occupy a3 with _anonymous_of_temp_0_cmp_20_0
              #                    load from temp_0_cmp_20 in mem
    lb      a3,167(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,176(sp)
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          ret 0_0 
              #                    load from ra_QuickSort_0 in mem
    ld      ra,192(sp)
              #                    load from s0_QuickSort_0 in mem
    ld      s0,184(sp)
              #                    store to arr_17 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,200
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: low_17, tracked: true } |     a2:Freed { symidx: high_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 168|s0_main:8 at 160|a:40 at 120|temp_32_index_ptr:8 at 112|temp_33_index_ptr:8 at 104|temp_34_index_ptr:8 at 96|temp_35_index_ptr:8 at 88|temp_36_index_ptr:8 at 80|temp_37_index_ptr:8 at 72|temp_38_index_ptr:8 at 64|temp_39_index_ptr:8 at 56|temp_40_index_ptr:8 at 48|temp_41_index_ptr:8 at 40|i:4 at 36|tmp:4 at 32|temp_42_ret_of_QuickSort:4 at 28|temp_43_ptr2globl:4 at 24|temp_44_cmp:1 at 23|none:3 at 20|tmp:4 at 16|temp_45_array_ptr:8 at 8|temp_46_array_ele:4 at 4|temp_47_arithop:4 at 0
    addi    sp,sp,-176
              #                    store to ra_main_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                          alloc Array:i32:[Some(10_0)] a_58 
              #                          alloc ptr->i32 temp_32_index_ptr_58 
              #                          alloc ptr->i32 temp_33_index_ptr_58 
              #                          alloc ptr->i32 temp_34_index_ptr_58 
              #                          alloc ptr->i32 temp_35_index_ptr_58 
              #                          alloc ptr->i32 temp_36_index_ptr_58 
              #                          alloc ptr->i32 temp_37_index_ptr_58 
              #                          alloc ptr->i32 temp_38_index_ptr_58 
              #                          alloc ptr->i32 temp_39_index_ptr_58 
              #                          alloc ptr->i32 temp_40_index_ptr_58 
              #                          alloc ptr->i32 temp_41_index_ptr_58 
              #                          alloc i32 i_58 
              #                          alloc i32 tmp_58 
              #                          alloc i32 temp_42_ret_of_QuickSort_58 
              #                          alloc i32 temp_43_ptr2globl_76 
              #                          alloc i1 temp_44_cmp_76 
              #                          alloc i32 tmp_78 
              #                          alloc ptr->i32 temp_45_array_ptr_78 
              #                          alloc i32 temp_46_array_ele_78 
              #                          alloc i32 temp_47_arithop_78 
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
              #                          new_var a_58:Array:i32:[Some(10_0)] 
              #                          new_var temp_32_index_ptr_58:ptr->i32 
              #                          temp_32_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_32_index_ptr_58
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
              #                          store 4_0:i32 temp_32_index_ptr_58:ptr->i32 
              #                    occupy a2 with temp_32_index_ptr_58
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_58:174 
              #                          a_58 = chi a_58:174 
              #                          new_var temp_33_index_ptr_58:ptr->i32 
              #                          temp_33_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_33_index_ptr_58
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
              #                          store 3_0:i32 temp_33_index_ptr_58:ptr->i32 
              #                    occupy a7 with temp_33_index_ptr_58
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_58:180 
              #                          a_58 = chi a_58:180 
              #                          new_var temp_34_index_ptr_58:ptr->i32 
              #                          temp_34_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_34_index_ptr_58
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
              #                          store 9_0:i32 temp_34_index_ptr_58:ptr->i32 
              #                    occupy s4 with temp_34_index_ptr_58
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_58:186 
              #                          a_58 = chi a_58:186 
              #                          new_var temp_35_index_ptr_58:ptr->i32 
              #                          temp_35_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_35_index_ptr_58
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
              #                          store 2_0:i32 temp_35_index_ptr_58:ptr->i32 
              #                    occupy s8 with temp_35_index_ptr_58
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_58:192 
              #                          a_58 = chi a_58:192 
              #                          new_var temp_36_index_ptr_58:ptr->i32 
              #                          temp_36_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_36_index_ptr_58
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
              #                          store 0_0:i32 temp_36_index_ptr_58:ptr->i32 
              #                    occupy s10 with temp_36_index_ptr_58
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_58:198 
              #                          a_58 = chi a_58:198 
              #                          new_var temp_37_index_ptr_58:ptr->i32 
              #                          temp_37_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_37_index_ptr_58
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
              #                          store 1_0:i32 temp_37_index_ptr_58:ptr->i32 
              #                    occupy a0 with temp_37_index_ptr_58
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu a_58:204 
              #                          a_58 = chi a_58:204 
              #                          new_var temp_38_index_ptr_58:ptr->i32 
              #                          temp_38_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_38_index_ptr_58
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
              #                          store 6_0:i32 temp_38_index_ptr_58:ptr->i32 
              #                    occupy a1 with temp_38_index_ptr_58
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu a_58:210 
              #                          a_58 = chi a_58:210 
              #                          new_var temp_39_index_ptr_58:ptr->i32 
              #                          temp_39_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_39_index_ptr_58
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
              #                          store 5_0:i32 temp_39_index_ptr_58:ptr->i32 
              #                    occupy a3 with temp_39_index_ptr_58
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_58:216 
              #                          a_58 = chi a_58:216 
              #                          new_var temp_40_index_ptr_58:ptr->i32 
              #                          temp_40_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_40_index_ptr_58
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
              #                          store 7_0:i32 temp_40_index_ptr_58:ptr->i32 
              #                    occupy a4 with temp_40_index_ptr_58
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_58:222 
              #                          a_58 = chi a_58:222 
              #                          new_var temp_41_index_ptr_58:ptr->i32 
              #                          temp_41_index_ptr_58 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_41_index_ptr_58
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
              #                          store 8_0:i32 temp_41_index_ptr_58:ptr->i32 
              #                    occupy a5 with temp_41_index_ptr_58
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_58:228 
              #                          a_58 = chi a_58:228 
              #                          new_var i_58:i32 
              #                          i_58 = i32 0_0 
              #                    occupy a6 with i_58
    li      a6, 0
              #                    free a6
              #                          new_var tmp_58:i32 
              #                          tmp_58 = i32 9_0 
              #                    occupy s1 with tmp_58
    li      s1, 9
              #                    free s1
              #                          new_var temp_42_ret_of_QuickSort_58:i32 
              #                          temp_42_ret_of_QuickSort_58 =  Call i32 QuickSort_0(a_58, i_58, tmp_58) 
              #                    saved register dumping to mem
              #                    store to tmp_58 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with tmp_58
              #                    store to temp_34_index_ptr_58 in mem offset legal
    sd      s4,96(sp)
              #                    release s4 with temp_34_index_ptr_58
              #                    store to temp_35_index_ptr_58 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_35_index_ptr_58
              #                    store to temp_36_index_ptr_58 in mem offset legal
    sd      s10,80(sp)
              #                    release s10 with temp_36_index_ptr_58
              #                    store to temp_37_index_ptr_58 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_37_index_ptr_58
              #                    store to temp_38_index_ptr_58 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_38_index_ptr_58
              #                    store to temp_32_index_ptr_58 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_32_index_ptr_58
              #                    store to temp_39_index_ptr_58 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_39_index_ptr_58
              #                    store to temp_40_index_ptr_58 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_40_index_ptr_58
              #                    store to temp_41_index_ptr_58 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_41_index_ptr_58
              #                    store to i_58 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with i_58
              #                    store to temp_33_index_ptr_58 in mem offset legal
    sd      a7,104(sp)
              #                    release a7 with temp_33_index_ptr_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_58_0
              #                    load from a_58 in mem
    lw      a0,120(sp)
              #                    occupy a1 with _anonymous_of_i_58_0
              #                    load from i_58 in mem


    lw      a1,36(sp)
              #                    occupy a2 with _anonymous_of_tmp_58_0
              #                    load from tmp_58 in mem


    lw      a2,32(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_42_ret_of_QuickSort_58 in mem offset legal
    sw      a0,28(sp)
              #                          i_58 = i32 temp_42_ret_of_QuickSort_58 
              #                    occupy a0 with temp_42_ret_of_QuickSort_58
              #                    occupy a1 with i_58
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_77 
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: temp_42_ret_of_QuickSort_58, tracked: true } |     a1:Freed { symidx: i_58, tracked: true } | 
              #                          label while.head_77: 
.while.head_77:
              #                          new_var temp_43_ptr2globl_76:i32 
              #                          temp_43_ptr2globl_76 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_43_ptr2globl_76
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_44_cmp_76:i1 
              #                          temp_44_cmp_76 = icmp i32 Slt i_58, temp_43_ptr2globl_76 
              #                    occupy a1 with i_58
              #                    occupy a3 with temp_43_ptr2globl_76
              #                    occupy a4 with temp_44_cmp_76
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_44_cmp_76, label while.body_77, label while.exit_77 
              #                    occupy a4 with temp_44_cmp_76
              #                    free a4
              #                    occupy a4 with temp_44_cmp_76
    bnez    a4, .while.body_77
              #                    free a4
    j       .while.exit_77
              #                    regtab     a0:Freed { symidx: temp_42_ret_of_QuickSort_58, tracked: true } |     a1:Freed { symidx: i_58, tracked: true } |     a3:Freed { symidx: temp_43_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_44_cmp_76, tracked: true } | 
              #                          label while.body_77: 
.while.body_77:
              #                          new_var tmp_78:i32 
              #                          new_var temp_45_array_ptr_78:ptr->i32 
              #                          temp_45_array_ptr_78 = getelementptr a_58:Array:i32:[Some(10_0)] [Some(i_58)] 
              #                    occupy a2 with temp_45_array_ptr_78
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_58
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
              #                          new_var temp_46_array_ele_78:i32 
              #                          temp_46_array_ele_78 = load temp_45_array_ptr_78:ptr->i32 
              #                    occupy a2 with temp_45_array_ptr_78
              #                    occupy a7 with temp_46_array_ele_78
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_78 = i32 temp_46_array_ele_78 
              #                    occupy a7 with temp_46_array_ele_78
              #                    occupy s1 with tmp_78
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_78) 
              #                    saved register dumping to mem
              #                    store to tmp_78 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with tmp_78
              #                    store to temp_42_ret_of_QuickSort_58 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_42_ret_of_QuickSort_58
              #                    store to i_58 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_58
              #                    store to temp_45_array_ptr_78 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_45_array_ptr_78
              #                    store to temp_43_ptr2globl_76 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_43_ptr2globl_76
              #                    store to temp_44_cmp_76 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_44_cmp_76
              #                    store to temp_46_array_ele_78 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_46_array_ele_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_78_0
              #                    load from tmp_78 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          tmp_78 = i32 10_0 
              #                    occupy a0 with tmp_78
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_78) 
              #                    saved register dumping to mem
              #                    store to tmp_78 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with tmp_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_78_0
              #                    load from tmp_78 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_47_arithop_78:i32 
              #                          temp_47_arithop_78 = Add i32 i_58, 1_0 
              #                    occupy a0 with i_58
              #                    load from i_58 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_47_arithop_78
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_58 = i32 temp_47_arithop_78 
              #                    occupy a2 with temp_47_arithop_78
              #                    occupy a0 with i_58
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_77 
              #                    store to temp_47_arithop_78 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_47_arithop_78
              #                    store to i_58 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_58
              #                    occupy a0 with _anonymous_of_temp_42_ret_of_QuickSort_58_0
              #                    load from temp_42_ret_of_QuickSort_58 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_i_58_0
              #                    load from i_58 in mem


    lw      a1,36(sp)
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: temp_42_ret_of_QuickSort_58, tracked: true } |     a1:Freed { symidx: i_58, tracked: true } |     a3:Freed { symidx: temp_43_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_44_cmp_76, tracked: true } | 
              #                          label while.exit_77: 
.while.exit_77:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,168(sp)
              #                    load from s0_main_0 in mem
    ld      s0,160(sp)
              #                    store to temp_42_ret_of_QuickSort_58 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_42_ret_of_QuickSort_58
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_58, tracked: true } |     a3:Freed { symidx: temp_43_ptr2globl_76, tracked: true } |     a4:Freed { symidx: temp_44_cmp_76, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
