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
              #                          Define merge_sort_0 [l_17, r_17] -> merge_sort_ret_0 
    .globl merge_sort
    .type merge_sort,@function
merge_sort:
              #                    mem layout:|ra_merge_sort:8 at 240|s0_merge_sort:8 at 232|l:4 at 228|r:4 at 224|temp_0_arithop:4 at 220|temp_1_cmp:1 at 219|none:3 at 216|temp_2_arithop:4 at 212|temp_3_arithop:4 at 208|mid:4 at 204|i:4 at 200|j:4 at 196|k:4 at 192|temp_4_cmp:1 at 191|temp_5_cmp:1 at 190|temp_6_logic:1 at 189|none:5 at 184|temp_7_array_ptr:8 at 176|temp_8_array_ele:4 at 172|none:4 at 168|temp_9_array_ptr:8 at 160|temp_10_array_ele:4 at 156|temp_11_cmp:1 at 155|none:3 at 152|temp_12_index_ptr:8 at 144|temp_13_array_ptr:8 at 136|temp_14_array_ele:4 at 132|temp_15_arithop:4 at 128|temp_16_arithop:4 at 124|none:4 at 120|temp_17_index_ptr:8 at 112|temp_18_array_ptr:8 at 104|temp_19_array_ele:4 at 100|temp_20_arithop:4 at 96|temp_21_cmp:1 at 95|none:7 at 88|temp_22_index_ptr:8 at 80|temp_23_array_ptr:8 at 72|temp_24_array_ele:4 at 68|temp_25_arithop:4 at 64|temp_26_arithop:4 at 60|temp_27_cmp:1 at 59|none:3 at 56|temp_28_index_ptr:8 at 48|temp_29_array_ptr:8 at 40|temp_30_array_ele:4 at 36|temp_31_arithop:4 at 32|temp_32_arithop:4 at 28|temp_33_cmp:1 at 27|none:3 at 24|temp_34_index_ptr:8 at 16|temp_35_array_ptr:8 at 8|temp_36_array_ele:4 at 4|temp_37_arithop:4 at 0
    addi    sp,sp,-248
              #                    store to ra_merge_sort_0 in mem offset legal
    sd      ra,240(sp)
              #                    store to s0_merge_sort_0 in mem offset legal
    sd      s0,232(sp)
    addi    s0,sp,248
              #                          alloc i32 temp_0_arithop_20 
              #                          alloc i1 temp_1_cmp_20 
              #                          alloc i32 temp_2_arithop_19 
              #                          alloc i32 temp_3_arithop_19 
              #                          alloc i32 mid_19 
              #                          alloc i32 i_19 
              #                          alloc i32 j_19 
              #                          alloc i32 k_19 
              #                          alloc i1 temp_4_cmp_27 
              #                          alloc i1 temp_5_cmp_27 
              #                          alloc i1 temp_6_logic_27 
              #                          alloc ptr->i32 temp_7_array_ptr_30 
              #                          alloc i32 temp_8_array_ele_30 
              #                          alloc ptr->i32 temp_9_array_ptr_30 
              #                          alloc i32 temp_10_array_ele_30 
              #                          alloc i1 temp_11_cmp_30 
              #                          alloc ptr->i32 temp_12_index_ptr_32 
              #                          alloc ptr->i32 temp_13_array_ptr_32 
              #                          alloc i32 temp_14_array_ele_32 
              #                          alloc i32 temp_15_arithop_32 
              #                          alloc i32 temp_16_arithop_29 
              #                          alloc ptr->i32 temp_17_index_ptr_35 
              #                          alloc ptr->i32 temp_18_array_ptr_35 
              #                          alloc i32 temp_19_array_ele_35 
              #                          alloc i32 temp_20_arithop_35 
              #                          alloc i1 temp_21_cmp_39 
              #                          alloc ptr->i32 temp_22_index_ptr_41 
              #                          alloc ptr->i32 temp_23_array_ptr_41 
              #                          alloc i32 temp_24_array_ele_41 
              #                          alloc i32 temp_25_arithop_41 
              #                          alloc i32 temp_26_arithop_41 
              #                          alloc i1 temp_27_cmp_45 
              #                          alloc ptr->i32 temp_28_index_ptr_47 
              #                          alloc ptr->i32 temp_29_array_ptr_47 
              #                          alloc i32 temp_30_array_ele_47 
              #                          alloc i32 temp_31_arithop_47 
              #                          alloc i32 temp_32_arithop_47 
              #                          alloc i1 temp_33_cmp_51 
              #                          alloc ptr->i32 temp_34_index_ptr_53 
              #                          alloc ptr->i32 temp_35_array_ptr_53 
              #                          alloc i32 temp_36_array_ele_53 
              #                          alloc i32 temp_37_arithop_53 
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: r_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_arithop_20:i32 
              #                          temp_0_arithop_20 = Add i32 l_17, 1_0 
              #                    occupy a0 with l_17
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_0_arithop_20
    add     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          new_var temp_1_cmp_20:i1 
              #                          temp_1_cmp_20 = icmp i32 Sge temp_0_arithop_20, r_17 
              #                    occupy a3 with temp_0_arithop_20
              #                    occupy a1 with r_17
              #                    occupy a4 with temp_1_cmp_20
    slt     a4,a3,a1
    xori    a4,a4,1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          br i1 temp_1_cmp_20, label branch_true_21, label branch_false_21 
              #                    occupy a4 with temp_1_cmp_20
              #                    free a4
              #                    occupy a4 with temp_1_cmp_20
    bnez    a4, .branch_true_21
              #                    free a4
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: r_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_20, tracked: true } |     a4:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          ret 
              #                    load from ra_merge_sort_0 in mem
    ld      ra,240(sp)
              #                    load from s0_merge_sort_0 in mem
    ld      s0,232(sp)
    addi    sp,sp,248
    ret
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: r_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_20, tracked: true } |     a4:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: r_17, tracked: true } |     a3:Freed { symidx: temp_0_arithop_20, tracked: true } |     a4:Freed { symidx: temp_1_cmp_20, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_2_arithop_19:i32 
              #                          temp_2_arithop_19 = Add i32 l_17, r_17 
              #                    occupy a0 with l_17
              #                    occupy a1 with r_17
              #                    occupy a2 with temp_2_arithop_19
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_3_arithop_19:i32 
              #                          temp_3_arithop_19 = Div i32 temp_2_arithop_19, 2_0 
              #                    occupy a2 with temp_2_arithop_19
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a6 with temp_3_arithop_19
    div     a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                          mid_19 = i32 temp_3_arithop_19 
              #                    occupy a6 with temp_3_arithop_19
              #                    occupy a7 with mid_19
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                           Call void merge_sort_0(l_17, mid_19) 
              #                    saved register dumping to mem
              #                    store to l_17 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with l_17
              #                    store to r_17 in mem offset legal
    sw      a1,224(sp)
              #                    release a1 with r_17
              #                    store to temp_2_arithop_19 in mem offset legal
    sw      a2,212(sp)
              #                    release a2 with temp_2_arithop_19
              #                    store to temp_0_arithop_20 in mem offset legal
    sw      a3,220(sp)
              #                    release a3 with temp_0_arithop_20
              #                    store to temp_1_cmp_20 in mem offset legal
    sb      a4,219(sp)
              #                    release a4 with temp_1_cmp_20
              #                    store to temp_3_arithop_19 in mem offset legal
    sw      a6,208(sp)
              #                    release a6 with temp_3_arithop_19
              #                    store to mid_19 in mem offset legal
    sw      a7,204(sp)
              #                    release a7 with mid_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_l_17_0
              #                    load from l_17 in mem


    lw      a0,228(sp)
              #                    occupy a1 with _anonymous_of_mid_19_0
              #                    load from mid_19 in mem


    lw      a1,204(sp)
              #                    arg load ended


    call    merge_sort
              #                           Call void merge_sort_0(mid_19, r_17) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_mid_19_0
              #                    load from mid_19 in mem


    lw      a0,204(sp)
              #                    occupy a1 with _anonymous_of_r_17_0
              #                    load from r_17 in mem


    lw      a1,224(sp)
              #                    arg load ended


    call    merge_sort
              #                          i_19 = i32 l_17 
              #                    occupy a0 with l_17
              #                    load from l_17 in mem


    lw      a0,228(sp)
              #                    occupy a1 with i_19
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          j_19 = i32 mid_19 
              #                    occupy a2 with mid_19
              #                    load from mid_19 in mem


    lw      a2,204(sp)
              #                    occupy a3 with j_19
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          k_19 = i32 l_17 
              #                    occupy a0 with l_17
              #                    occupy a4 with k_19
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } | 
              #                          label while.head_28: 
.while.head_28:
              #                          new_var temp_4_cmp_27:i1 
              #                          temp_4_cmp_27 = icmp i32 Slt j_19, r_17 
              #                    occupy a3 with j_19
              #                    occupy a5 with r_17
              #                    load from r_17 in mem


    lw      a5,224(sp)
              #                    occupy a6 with temp_4_cmp_27
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_5_cmp_27:i1 
              #                          temp_5_cmp_27 = icmp i32 Slt i_19, mid_19 
              #                    occupy a1 with i_19
              #                    occupy a2 with mid_19
              #                    occupy a7 with temp_5_cmp_27
    slt     a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                          new_var temp_6_logic_27:i1 
              #                          temp_6_logic_27 = And i1 temp_5_cmp_27, temp_4_cmp_27 
              #                    occupy a7 with temp_5_cmp_27
              #                    occupy a6 with temp_4_cmp_27
              #                    occupy s1 with temp_6_logic_27
    and     s1,a7,a6
              #                    free a7
              #                    free a6
              #                    free s1
              #                          br i1 temp_6_logic_27, label while.body_28, label while.exit_28 
              #                    occupy s1 with temp_6_logic_27
              #                    free s1
              #                    occupy s1 with temp_6_logic_27
    bnez    s1, .while.body_28
              #                    free s1
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } | 
              #                          label while.body_28: 
.while.body_28:
              #                          new_var temp_7_array_ptr_30:ptr->i32 
              #                          temp_7_array_ptr_30 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy s2 with temp_7_array_ptr_30
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
              #                    occupy s6 with *buf_0
              #                       load label buf as ptr to reg
    la      s6, buf
              #                    occupy reg s6 with *buf_0
    add     s2,s2,s6
              #                    free s6
              #                    free s2
              #                          new_var temp_8_array_ele_30:i32 
              #                          temp_8_array_ele_30 = load temp_7_array_ptr_30:ptr->i32 
              #                    occupy s2 with temp_7_array_ptr_30
              #                    occupy s7 with temp_8_array_ele_30
    lw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          new_var temp_9_array_ptr_30:ptr->i32 
              #                          temp_9_array_ptr_30 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy s8 with temp_9_array_ptr_30
    li      s8, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    found literal reg Some(s4) already exist with 0_0
              #                    occupy s4 with 0_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s3,s4
              #                    free s3
              #                    free s4
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *buf_0
              #                       load label buf as ptr to reg
    la      s10, buf
              #                    occupy reg s10 with *buf_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          new_var temp_10_array_ele_30:i32 
              #                          temp_10_array_ele_30 = load temp_9_array_ptr_30:ptr->i32 
              #                    occupy s8 with temp_9_array_ptr_30
              #                    occupy s11 with temp_10_array_ele_30
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_11_cmp_30:i1 
              #                          temp_11_cmp_30 = icmp i32 Slt temp_10_array_ele_30, temp_8_array_ele_30 
              #                    occupy s11 with temp_10_array_ele_30
              #                    occupy s7 with temp_8_array_ele_30
              #                    occupy s3 with temp_11_cmp_30
    slt     s3,s11,s7
              #                    free s11
              #                    free s7
              #                    free s3
              #                          br i1 temp_11_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy s3 with temp_11_cmp_30
              #                    free s3
              #                    occupy s3 with temp_11_cmp_30
    bnez    s3, .branch_true_31
              #                    free s3
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_10_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_7_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_9_array_ptr_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var temp_12_index_ptr_32:ptr->i32 
              #                          temp_12_index_ptr_32 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s4 with temp_12_index_ptr_32
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
              #                    occupy s10 with *buf_0
              #                       load label buf as ptr to reg
    la      s10, buf
              #                    occupy reg s10 with *buf_0
    add     s4,s4,s10
              #                    free s10
              #                    free s4
              #                          new_var temp_13_array_ptr_32:ptr->i32 
              #                          temp_13_array_ptr_32 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy s5 with temp_13_array_ptr_32
    li      s5, 0
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s6,s9
              #                    free s6
              #                    free s9
    add     s5,s5,s10
              #                    free s10
    slli s5,s5,2
              #                    occupy s6 with *buf_0
              #                       load label buf as ptr to reg
    la      s6, buf
              #                    occupy reg s6 with *buf_0
    add     s5,s5,s6
              #                    free s6
              #                    free s5
              #                          new_var temp_14_array_ele_32:i32 
              #                          temp_14_array_ele_32 = load temp_13_array_ptr_32:ptr->i32 
              #                    occupy s5 with temp_13_array_ptr_32
              #                    occupy s6 with temp_14_array_ele_32
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          store temp_14_array_ele_32:i32 temp_12_index_ptr_32:ptr->i32 
              #                    occupy s4 with temp_12_index_ptr_32
              #                    occupy s6 with temp_14_array_ele_32
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mu *buf_0:87 
              #                          *buf_0 = chi *buf_0:87 
              #                          new_var temp_15_arithop_32:i32 
              #                          temp_15_arithop_32 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with temp_15_arithop_32
    add     s10,a1,s9
              #                    free a1
              #                    free s9
              #                    free s10
              #                          i_19 = i32 temp_15_arithop_32 
              #                    occupy s10 with temp_15_arithop_32
              #                    occupy a1 with i_19
    mv      a1, s10
              #                    free s10
              #                    free a1
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_10_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_7_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_9_array_ptr_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_17_index_ptr_35:ptr->i32 
              #                          temp_17_index_ptr_35 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s4 with temp_17_index_ptr_35
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
              #                    occupy s10 with *buf_0
              #                       load label buf as ptr to reg
    la      s10, buf
              #                    occupy reg s10 with *buf_0
    add     s4,s4,s10
              #                    free s10
              #                    free s4
              #                          new_var temp_18_array_ptr_35:ptr->i32 
              #                          temp_18_array_ptr_35 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy s5 with temp_18_array_ptr_35
    li      s5, 0
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s6,s9
              #                    free s6
              #                    free s9
    add     s5,s5,s10
              #                    free s10
    slli s5,s5,2
              #                    occupy s6 with *buf_0
              #                       load label buf as ptr to reg
    la      s6, buf
              #                    occupy reg s6 with *buf_0
    add     s5,s5,s6
              #                    free s6
              #                    free s5
              #                          new_var temp_19_array_ele_35:i32 
              #                          temp_19_array_ele_35 = load temp_18_array_ptr_35:ptr->i32 
              #                    occupy s5 with temp_18_array_ptr_35
              #                    occupy s6 with temp_19_array_ele_35
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          store temp_19_array_ele_35:i32 temp_17_index_ptr_35:ptr->i32 
              #                    occupy s4 with temp_17_index_ptr_35
              #                    occupy s6 with temp_19_array_ele_35
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mu *buf_0:107 
              #                          *buf_0 = chi *buf_0:107 
              #                          new_var temp_20_arithop_35:i32 
              #                          temp_20_arithop_35 = Add i32 j_19, 1_0 
              #                    occupy a3 with j_19
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with temp_20_arithop_35
    add     s10,a3,s9
              #                    free a3
              #                    free s9
              #                    free s10
              #                          j_19 = i32 temp_20_arithop_35 
              #                    occupy s10 with temp_20_arithop_35
              #                    occupy a3 with j_19
    mv      a3, s10
              #                    free s10
              #                    free a3
              #                          jump label: L3_0 
              #                    store to temp_17_index_ptr_35 in mem offset legal
    sd      s4,112(sp)
              #                    release s4 with temp_17_index_ptr_35
              #                    store to temp_18_array_ptr_35 in mem offset legal
    sd      s5,104(sp)
              #                    release s5 with temp_18_array_ptr_35
              #                    store to temp_20_arithop_35 in mem offset legal
    sw      s10,96(sp)
              #                    release s10 with temp_20_arithop_35
              #                    store to temp_19_array_ele_35 in mem offset legal
    sw      s6,100(sp)
              #                    release s6 with temp_19_array_ele_35
              #                    occupy s4 with _anonymous_of_temp_12_index_ptr_32_0
              #                    load from temp_12_index_ptr_32 in mem
    ld      s4,144(sp)
              #                    occupy s5 with _anonymous_of_temp_13_array_ptr_32_0
              #                    load from temp_13_array_ptr_32 in mem
    ld      s5,136(sp)
              #                    occupy s10 with _anonymous_of_temp_15_arithop_32_0
              #                    load from temp_15_arithop_32 in mem


    lw      s10,128(sp)
              #                    occupy s6 with _anonymous_of_temp_14_array_ele_32_0
              #                    load from temp_14_array_ele_32 in mem


    lw      s6,132(sp)
    j       .L3_0
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s10:Freed { symidx: temp_15_arithop_32, tracked: true } |     s11:Freed { symidx: temp_10_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_7_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30, tracked: true } |     s4:Freed { symidx: temp_12_index_ptr_32, tracked: true } |     s5:Freed { symidx: temp_13_array_ptr_32, tracked: true } |     s6:Freed { symidx: temp_14_array_ele_32, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_9_array_ptr_30, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s10:Freed { symidx: temp_15_arithop_32, tracked: true } |     s11:Freed { symidx: temp_10_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_7_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_11_cmp_30, tracked: true } |     s4:Freed { symidx: temp_12_index_ptr_32, tracked: true } |     s5:Freed { symidx: temp_13_array_ptr_32, tracked: true } |     s6:Freed { symidx: temp_14_array_ele_32, tracked: true } |     s7:Freed { symidx: temp_8_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_9_array_ptr_30, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_16_arithop_29:i32 
              #                          temp_16_arithop_29 = Add i32 k_19, 1_0 
              #                    occupy a4 with k_19
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to l_17 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with l_17
              #                    occupy a0 with temp_16_arithop_29
    add     a0,a4,s9
              #                    free a4
              #                    free s9
              #                    free a0
              #                          k_19 = i32 temp_16_arithop_29 
              #                    occupy a0 with temp_16_arithop_29
              #                    occupy a4 with k_19
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_28 
              #                    store to r_17 in mem offset legal
    sw      a5,224(sp)
              #                    release a5 with r_17
              #                    store to temp_7_array_ptr_30 in mem offset legal
    sd      s2,176(sp)
              #                    release s2 with temp_7_array_ptr_30
              #                    store to temp_4_cmp_27 in mem offset legal
    sb      a6,191(sp)
              #                    release a6 with temp_4_cmp_27
              #                    store to temp_9_array_ptr_30 in mem offset legal
    sd      s8,160(sp)
              #                    release s8 with temp_9_array_ptr_30
              #                    store to temp_12_index_ptr_32 in mem offset legal
    sd      s4,144(sp)
              #                    release s4 with temp_12_index_ptr_32
              #                    store to temp_5_cmp_27 in mem offset legal
    sb      a7,190(sp)
              #                    release a7 with temp_5_cmp_27
              #                    store to temp_13_array_ptr_32 in mem offset legal
    sd      s5,136(sp)
              #                    release s5 with temp_13_array_ptr_32
              #                    store to temp_16_arithop_29 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_16_arithop_29
              #                    store to temp_11_cmp_30 in mem offset legal
    sb      s3,155(sp)
              #                    release s3 with temp_11_cmp_30
              #                    store to temp_8_array_ele_30 in mem offset legal
    sw      s7,172(sp)
              #                    release s7 with temp_8_array_ele_30
              #                    store to temp_10_array_ele_30 in mem offset legal
    sw      s11,156(sp)
              #                    release s11 with temp_10_array_ele_30
              #                    store to temp_15_arithop_32 in mem offset legal
    sw      s10,128(sp)
              #                    release s10 with temp_15_arithop_32
              #                    store to temp_14_array_ele_32 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with temp_14_array_ele_32
              #                    store to temp_6_logic_27 in mem offset legal
    sb      s1,189(sp)
              #                    release s1 with temp_6_logic_27
              #                    occupy a0 with _anonymous_of_l_17_0
              #                    load from l_17 in mem


    lw      a0,228(sp)
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } | 
              #                          label while.exit_28: 
.while.exit_28:
              #                          new_var temp_21_cmp_39:i1 
              #                          temp_21_cmp_39 = icmp i32 Slt i_19, mid_19 
              #                    occupy a1 with i_19
              #                    occupy a2 with mid_19
              #                    occupy s2 with temp_21_cmp_39
    slt     s2,a1,a2
              #                    free a1
              #                    free a2
              #                    free s2
              #                          br i1 temp_21_cmp_39, label while.body_40, label while.exit_40 
              #                    occupy s2 with temp_21_cmp_39
              #                    free s2
              #                    occupy s2 with temp_21_cmp_39
    bnez    s2, .while.body_40
              #                    free s2
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } | 
              #                          label while.body_40: 
.while.body_40:
              #                          new_var temp_22_index_ptr_41:ptr->i32 
              #                          temp_22_index_ptr_41 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s3 with temp_22_index_ptr_41
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s6
              #                    free s6
    slli s3,s3,2
              #                    occupy s7 with *buf_0
              #                       load label buf as ptr to reg
    la      s7, buf
              #                    occupy reg s7 with *buf_0
    add     s3,s3,s7
              #                    free s7
              #                    free s3
              #                          new_var temp_23_array_ptr_41:ptr->i32 
              #                          temp_23_array_ptr_41 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy s8 with temp_23_array_ptr_41
    li      s8, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,s4,s9
              #                    free s4
              #                    free s9
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
              #                    occupy s11 with *buf_0
              #                       load label buf as ptr to reg
    la      s11, buf
              #                    occupy reg s11 with *buf_0
    add     s8,s8,s11
              #                    free s11
              #                    free s8
              #                          new_var temp_24_array_ele_41:i32 
              #                          temp_24_array_ele_41 = load temp_23_array_ptr_41:ptr->i32 
              #                    occupy s8 with temp_23_array_ptr_41
              #                    occupy s4 with temp_24_array_ele_41
    lw      s4,0(s8)
              #                    free s4
              #                    free s8
              #                          store temp_24_array_ele_41:i32 temp_22_index_ptr_41:ptr->i32 
              #                    occupy s3 with temp_22_index_ptr_41
              #                    occupy s4 with temp_24_array_ele_41
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu *buf_0:130 
              #                          *buf_0 = chi *buf_0:130 
              #                          new_var temp_25_arithop_41:i32 
              #                          temp_25_arithop_41 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s6 with temp_25_arithop_41
    add     s6,a1,s5
              #                    free a1
              #                    free s5
              #                    free s6
              #                          i_19 = i32 temp_25_arithop_41 
              #                    occupy s6 with temp_25_arithop_41
              #                    occupy a1 with i_19
    mv      a1, s6
              #                    free s6
              #                    free a1
              #                          new_var temp_26_arithop_41:i32 
              #                          temp_26_arithop_41 = Add i32 k_19, 1_0 
              #                    occupy a4 with k_19
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s7 with temp_26_arithop_41
    add     s7,a4,s5
              #                    free a4
              #                    free s5
              #                    free s7
              #                          k_19 = i32 temp_26_arithop_41 
              #                    occupy s7 with temp_26_arithop_41
              #                    occupy a4 with k_19
    mv      a4, s7
              #                    free s7
              #                    free a4
              #                          jump label: while.exit_28 
              #                    store to temp_21_cmp_39 in mem offset legal
    sb      s2,95(sp)
              #                    release s2 with temp_21_cmp_39
              #                    store to temp_23_array_ptr_41 in mem offset legal
    sd      s8,72(sp)
              #                    release s8 with temp_23_array_ptr_41
              #                    store to temp_24_array_ele_41 in mem offset legal
    sw      s4,68(sp)
              #                    release s4 with temp_24_array_ele_41
              #                    store to temp_22_index_ptr_41 in mem offset legal
    sd      s3,80(sp)
              #                    release s3 with temp_22_index_ptr_41
              #                    store to temp_26_arithop_41 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_26_arithop_41
              #                    store to temp_25_arithop_41 in mem offset legal
    sw      s6,64(sp)
              #                    release s6 with temp_25_arithop_41
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } | 
              #                          label while.exit_40: 
.while.exit_40:
              #                          new_var temp_27_cmp_45:i1 
              #                          temp_27_cmp_45 = icmp i32 Slt j_19, r_17 
              #                    occupy a3 with j_19
              #                    occupy a5 with r_17
              #                    occupy s3 with temp_27_cmp_45
    slt     s3,a3,a5
              #                    free a3
              #                    free a5
              #                    free s3
              #                          br i1 temp_27_cmp_45, label while.body_46, label while.exit_46 
              #                    occupy s3 with temp_27_cmp_45
              #                    free s3
              #                    occupy s3 with temp_27_cmp_45
    bnez    s3, .while.body_46
              #                    free s3
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } |     s3:Freed { symidx: temp_27_cmp_45, tracked: true } | 
              #                          label while.body_46: 
.while.body_46:
              #                          new_var temp_28_index_ptr_47:ptr->i32 
              #                          temp_28_index_ptr_47 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s4 with temp_28_index_ptr_47
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s7
              #                    free s7
    slli s4,s4,2
              #                    occupy s8 with *buf_0
              #                       load label buf as ptr to reg
    la      s8, buf
              #                    occupy reg s8 with *buf_0
    add     s4,s4,s8
              #                    free s8
              #                    free s4
              #                          new_var temp_29_array_ptr_47:ptr->i32 
              #                          temp_29_array_ptr_47 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy s9 with temp_29_array_ptr_47
    li      s9, 0
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s5,s10
              #                    free s5
              #                    free s10
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
              #                    occupy s5 with *buf_0
              #                       load label buf as ptr to reg
    la      s5, buf
              #                    occupy reg s5 with *buf_0
    add     s9,s9,s5
              #                    free s5
              #                    free s9
              #                          new_var temp_30_array_ele_47:i32 
              #                          temp_30_array_ele_47 = load temp_29_array_ptr_47:ptr->i32 
              #                    occupy s9 with temp_29_array_ptr_47
              #                    occupy s5 with temp_30_array_ele_47
    lw      s5,0(s9)
              #                    free s5
              #                    free s9
              #                          store temp_30_array_ele_47:i32 temp_28_index_ptr_47:ptr->i32 
              #                    occupy s4 with temp_28_index_ptr_47
              #                    occupy s5 with temp_30_array_ele_47
    sw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          mu *buf_0:157 
              #                          *buf_0 = chi *buf_0:157 
              #                          new_var temp_31_arithop_47:i32 
              #                          temp_31_arithop_47 = Add i32 j_19, 1_0 
              #                    occupy a3 with j_19
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s7 with temp_31_arithop_47
    add     s7,a3,s6
              #                    free a3
              #                    free s6
              #                    free s7
              #                          j_19 = i32 temp_31_arithop_47 
              #                    occupy s7 with temp_31_arithop_47
              #                    occupy a3 with j_19
    mv      a3, s7
              #                    free s7
              #                    free a3
              #                          new_var temp_32_arithop_47:i32 
              #                          temp_32_arithop_47 = Add i32 k_19, 1_0 
              #                    occupy a4 with k_19
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s8 with temp_32_arithop_47
    add     s8,a4,s6
              #                    free a4
              #                    free s6
              #                    free s8
              #                          k_19 = i32 temp_32_arithop_47 
              #                    occupy s8 with temp_32_arithop_47
              #                    occupy a4 with k_19
    mv      a4, s8
              #                    free s8
              #                    free a4
              #                          jump label: while.exit_40 
              #                    store to temp_32_arithop_47 in mem offset legal
    sw      s8,28(sp)
              #                    release s8 with temp_32_arithop_47
              #                    store to temp_28_index_ptr_47 in mem offset legal
    sd      s4,48(sp)
              #                    release s4 with temp_28_index_ptr_47
              #                    store to temp_30_array_ele_47 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_30_array_ele_47
              #                    store to temp_27_cmp_45 in mem offset legal
    sb      s3,59(sp)
              #                    release s3 with temp_27_cmp_45
              #                    store to temp_31_arithop_47 in mem offset legal
    sw      s7,32(sp)
              #                    release s7 with temp_31_arithop_47
              #                    store to temp_29_array_ptr_47 in mem offset legal
    sd      s9,40(sp)
              #                    release s9 with temp_29_array_ptr_47
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } |     s3:Freed { symidx: temp_27_cmp_45, tracked: true } | 
              #                          label while.exit_46: 
.while.exit_46:
              #                          new_var temp_33_cmp_51:i1 
              #                          temp_33_cmp_51 = icmp i32 Slt l_17, r_17 
              #                    occupy a0 with l_17
              #                    occupy a5 with r_17
              #                    occupy s4 with temp_33_cmp_51
    slt     s4,a0,a5
              #                    free a0
              #                    free a5
              #                    free s4
              #                          br i1 temp_33_cmp_51, label while.body_52, label while.exit_52 
              #                    occupy s4 with temp_33_cmp_51
              #                    free s4
              #                    occupy s4 with temp_33_cmp_51
    bnez    s4, .while.body_52
              #                    free s4
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } |     s3:Freed { symidx: temp_27_cmp_45, tracked: true } |     s4:Freed { symidx: temp_33_cmp_51, tracked: true } | 
              #                          label while.body_52: 
.while.body_52:
              #                          new_var temp_34_index_ptr_53:ptr->i32 
              #                          temp_34_index_ptr_53 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0), Some(l_17)] 
              #                    occupy s5 with temp_34_index_ptr_53
    li      s5, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s8
              #                    free s8
    slli s5,s5,2
              #                    occupy s9 with *buf_0
              #                       load label buf as ptr to reg
    la      s9, buf
              #                    occupy reg s9 with *buf_0
    add     s5,s5,s9
              #                    free s9
              #                    free s5
              #                          new_var temp_35_array_ptr_53:ptr->i32 
              #                          temp_35_array_ptr_53 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(1_0), Some(l_17)] 
              #                    occupy s10 with temp_35_array_ptr_53
    li      s10, 0
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s6,s11
              #                    free s6
              #                    free s11
    add     s10,s10,s7
              #                    free s7
    slli s10,s10,2
              #                    occupy s6 with *buf_0
              #                       load label buf as ptr to reg
    la      s6, buf
              #                    occupy reg s6 with *buf_0
    add     s10,s10,s6
              #                    free s6
              #                    free s10
              #                          new_var temp_36_array_ele_53:i32 
              #                          temp_36_array_ele_53 = load temp_35_array_ptr_53:ptr->i32 
              #                    occupy s10 with temp_35_array_ptr_53
              #                    occupy s6 with temp_36_array_ele_53
    lw      s6,0(s10)
              #                    free s6
              #                    free s10
              #                          store temp_36_array_ele_53:i32 temp_34_index_ptr_53:ptr->i32 
              #                    occupy s5 with temp_34_index_ptr_53
              #                    occupy s6 with temp_36_array_ele_53
    sw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          mu *buf_0:184 
              #                          *buf_0 = chi *buf_0:184 
              #                          new_var temp_37_arithop_53:i32 
              #                          temp_37_arithop_53 = Add i32 l_17, 1_0 
              #                    occupy a0 with l_17
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s7 with temp_37_arithop_53
    add     s7,a0,s11
              #                    free a0
              #                    free s11
              #                    free s7
              #                          l_17 = i32 temp_37_arithop_53 
              #                    occupy s7 with temp_37_arithop_53
              #                    occupy a0 with l_17
    mv      a0, s7
              #                    free s7
              #                    free a0
              #                          jump label: while.exit_46 
              #                    store to temp_33_cmp_51 in mem offset legal
    sb      s4,27(sp)
              #                    release s4 with temp_33_cmp_51
              #                    store to temp_34_index_ptr_53 in mem offset legal
    sd      s5,16(sp)
              #                    release s5 with temp_34_index_ptr_53
              #                    store to temp_37_arithop_53 in mem offset legal
    sw      s7,0(sp)
              #                    release s7 with temp_37_arithop_53
              #                    store to temp_35_array_ptr_53 in mem offset legal
    sd      s10,8(sp)
              #                    release s10 with temp_35_array_ptr_53
              #                    store to temp_36_array_ele_53 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_36_array_ele_53
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: j_19, tracked: true } |     a4:Freed { symidx: k_19, tracked: true } |     a5:Freed { symidx: r_17, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_21_cmp_39, tracked: true } |     s3:Freed { symidx: temp_27_cmp_45, tracked: true } |     s4:Freed { symidx: temp_33_cmp_51, tracked: true } | 
              #                          label while.exit_52: 
.while.exit_52:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_38_array_ptr:8 at 16|temp_39_ret_of_getarray:4 at 12|n:4 at 8|temp_40_array_ptr:8 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc ptr->i32 temp_38_array_ptr_57 
              #                          alloc i32 temp_39_ret_of_getarray_57 
              #                          alloc i32 n_57 
              #                          alloc ptr->i32 temp_40_array_ptr_57 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_38_array_ptr_57:ptr->i32 
              #                          temp_38_array_ptr_57 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0)] 
              #                    occupy a0 with temp_38_array_ptr_57
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *buf_0
              #                       load label buf as ptr to reg
    la      a4, buf
              #                    occupy reg a4 with *buf_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_39_ret_of_getarray_57:i32 
              #                          temp_39_ret_of_getarray_57 =  Call i32 getarray_0(temp_38_array_ptr_57) 
              #                    saved register dumping to mem
              #                    store to temp_38_array_ptr_57 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_38_array_ptr_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_38_array_ptr_57_0
              #                    load from temp_38_array_ptr_57 in mem
    ld      a0,16(sp)
              #                    arg load ended


    call    getarray
              #                    store to temp_39_ret_of_getarray_57 in mem offset legal
    sw      a0,12(sp)
              #                          n_57 = i32 temp_39_ret_of_getarray_57 
              #                    occupy a0 with temp_39_ret_of_getarray_57
              #                    occupy a1 with n_57
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void merge_sort_0(0_0, n_57) 
              #                    saved register dumping to mem
              #                    store to temp_39_ret_of_getarray_57 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_39_ret_of_getarray_57
              #                    store to n_57 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with n_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_n_57_0
              #                    load from n_57 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    merge_sort
              #                          new_var temp_40_array_ptr_57:ptr->i32 
              #                          temp_40_array_ptr_57 = getelementptr *buf_0:ptr->Array:i32:[Some(100_0)] [Some(0_0)] 
              #                    occupy a0 with temp_40_array_ptr_57
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *buf_0
              #                       load label buf as ptr to reg
    la      a4, buf
              #                    occupy reg a4 with *buf_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                           Call void putarray_0(n_57, temp_40_array_ptr_57) 
              #                    saved register dumping to mem
              #                    store to temp_40_array_ptr_57 in mem offset legal
    sd      a0,0(sp)
              #                    release a0 with temp_40_array_ptr_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_n_57_0
              #                    load from n_57 in mem


    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_temp_40_array_ptr_57_0
              #                    load from temp_40_array_ptr_57 in mem
    ld      a1,0(sp)
              #                    arg load ended


    call    putarray
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl buf
              #                          global Array:i32:[Some(2_0), Some(100_0)] buf_0 
    .type buf,@object
buf:
    .zero 800
