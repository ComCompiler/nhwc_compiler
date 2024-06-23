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
              #                    mem layout:|ra_merge_sort:8 at 5840|s0_merge_sort:8 at 5832|l:4 at 5828|r:4 at 5824|temp_0_arithop:4 at 5820|temp_1_cmp:1 at 5819|none:3 at 5816|temp_2_arithop:4 at 5812|temp_3_arithop:4 at 5808|mid:4 at 5804|i:4 at 5800|j:4 at 5796|k:4 at 5792|temp_4_cmp:1 at 5791|temp_5_cmp:1 at 5790|temp_6_logic:1 at 5789|none:1 at 5788|temp_7_ptr2globl:800 at 4988|none:4 at 4984|temp_8_array_ptr:8 at 4976|temp_9_array_ele:4 at 4972|temp_10_ptr2globl:800 at 4172|none:4 at 4168|temp_11_array_ptr:8 at 4160|temp_12_array_ele:4 at 4156|temp_13_cmp:1 at 4155|none:3 at 4152|temp_14_index_ptr:8 at 4144|temp_15_ptr2globl:800 at 3344|temp_16_array_ptr:8 at 3336|temp_17_array_ele:4 at 3332|temp_18_arithop:4 at 3328|temp_19_arithop:4 at 3324|none:4 at 3320|temp_20_index_ptr:8 at 3312|temp_21_ptr2globl:800 at 2512|temp_22_array_ptr:8 at 2504|temp_23_array_ele:4 at 2500|temp_24_arithop:4 at 2496|temp_25_cmp:1 at 2495|none:7 at 2488|temp_26_index_ptr:8 at 2480|temp_27_ptr2globl:800 at 1680|temp_28_array_ptr:8 at 1672|temp_29_array_ele:4 at 1668|temp_30_arithop:4 at 1664|temp_31_arithop:4 at 1660|temp_32_cmp:1 at 1659|none:3 at 1656|temp_33_index_ptr:8 at 1648|temp_34_ptr2globl:800 at 848|temp_35_array_ptr:8 at 840|temp_36_array_ele:4 at 836|temp_37_arithop:4 at 832|temp_38_arithop:4 at 828|temp_39_cmp:1 at 827|none:3 at 824|temp_40_index_ptr:8 at 816|temp_41_ptr2globl:800 at 16|temp_42_array_ptr:8 at 8|temp_43_array_ele:4 at 4|temp_44_arithop:4 at 0
              #                    occupy a2 with -5848_0
    li      a2, -5848
    li      a2, -5848
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_merge_sort_0 in mem offset_illegal
              #                    occupy a3 with 5840_0
    li      a3, 5840
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_merge_sort_0 in mem offset_illegal
              #                    occupy a4 with 5832_0
    li      a4, 5832
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 5848_0
    li      a5, 5848
    li      a5, 5848
    add     s0,a5,sp
              #                    free a5
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
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_7_ptr2globl_30 
              #                          alloc ptr->i32 temp_8_array_ptr_30 
              #                          alloc i32 temp_9_array_ele_30 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_10_ptr2globl_30 
              #                          alloc ptr->i32 temp_11_array_ptr_30 
              #                          alloc i32 temp_12_array_ele_30 
              #                          alloc i1 temp_13_cmp_30 
              #                          alloc ptr->i32 temp_14_index_ptr_32 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_15_ptr2globl_32 
              #                          alloc ptr->i32 temp_16_array_ptr_32 
              #                          alloc i32 temp_17_array_ele_32 
              #                          alloc i32 temp_18_arithop_32 
              #                          alloc i32 temp_19_arithop_29 
              #                          alloc ptr->i32 temp_20_index_ptr_35 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_21_ptr2globl_35 
              #                          alloc ptr->i32 temp_22_array_ptr_35 
              #                          alloc i32 temp_23_array_ele_35 
              #                          alloc i32 temp_24_arithop_35 
              #                          alloc i1 temp_25_cmp_39 
              #                          alloc ptr->i32 temp_26_index_ptr_41 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_27_ptr2globl_41 
              #                          alloc ptr->i32 temp_28_array_ptr_41 
              #                          alloc i32 temp_29_array_ele_41 
              #                          alloc i32 temp_30_arithop_41 
              #                          alloc i32 temp_31_arithop_41 
              #                          alloc i1 temp_32_cmp_45 
              #                          alloc ptr->i32 temp_33_index_ptr_47 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_34_ptr2globl_47 
              #                          alloc ptr->i32 temp_35_array_ptr_47 
              #                          alloc i32 temp_36_array_ele_47 
              #                          alloc i32 temp_37_arithop_47 
              #                          alloc i32 temp_38_arithop_47 
              #                          alloc i1 temp_39_cmp_51 
              #                          alloc ptr->i32 temp_40_index_ptr_53 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_41_ptr2globl_53 
              #                          alloc ptr->i32 temp_42_array_ptr_53 
              #                          alloc i32 temp_43_array_ele_53 
              #                          alloc i32 temp_44_arithop_53 
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
              #                    occupy a2 with ra_merge_sort_0
    li      a2, 5840
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_merge_sort_0 in mem
              #                    occupy a5 with s0_merge_sort_0
    li      a5, 5832
    add     a5,sp,a5
    ld      s0,0(a5)
              #                    free a5
              #                    occupy a6 with 5848_0
    li      a6, 5848
    li      a6, 5848
    add     sp,a6,sp
              #                    free a6
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
              #                    store to l_17 in mem offset_illegal
              #                    occupy a0 with 5828_0
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with l_17
              #                    store to r_17 in mem offset_illegal
              #                    occupy a0 with 5824_0
    li      a0, 5824
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with r_17
              #                    store to temp_2_arithop_19 in mem offset_illegal
              #                    occupy a1 with 5812_0
    li      a1, 5812
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_2_arithop_19
              #                    store to temp_0_arithop_20 in mem offset_illegal
              #                    occupy a2 with 5820_0
    li      a2, 5820
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_0_arithop_20
              #                    store to temp_1_cmp_20 in mem offset_illegal
              #                    occupy a3 with 5819_0
    li      a3, 5819
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_1_cmp_20
              #                    store to temp_3_arithop_19 in mem offset_illegal
              #                    occupy a4 with 5808_0
    li      a4, 5808
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_3_arithop_19
              #                    store to mid_19 in mem offset_illegal
              #                    occupy a5 with 5804_0
    li      a5, 5804
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with mid_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_l_17_0
              #                    load from l_17 in mem

              #                    occupy a6 with l_17
    li      a6, 5828
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    occupy a1 with _anonymous_of_mid_19_0
              #                    load from mid_19 in mem

              #                    occupy a7 with mid_19
    li      a7, 5804
    add     a7,sp,a7
    lw      a1,0(a7)
              #                    free a7
              #                    arg load ended


    call    merge_sort
              #                           Call void merge_sort_0(mid_19, r_17) 
              #                    saved register dumping to mem
              #                    store to l_17 in mem offset_illegal
              #                    occupy a0 with 5828_0
    li      a0, 5828
    add     a0,sp,a0
    sw      a6,0(a0)
              #                    free a0
              #                    release a6 with l_17
              #                    store to mid_19 in mem offset_illegal
              #                    occupy a1 with 5804_0
    li      a1, 5804
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with mid_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_mid_19_0
              #                    load from mid_19 in mem

              #                    occupy a2 with mid_19
    li      a2, 5804
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a1 with _anonymous_of_r_17_0
              #                    load from r_17 in mem

              #                    occupy a3 with r_17
    li      a3, 5824
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    arg load ended


    call    merge_sort
              #                          i_19 = i32 l_17 
              #                    occupy a0 with l_17
              #                    load from l_17 in mem

              #                    occupy a0 with l_17
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    occupy a1 with i_19
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          j_19 = i32 mid_19 
              #                    occupy a2 with mid_19
              #                    occupy a4 with j_19
    mv      a4, a2
              #                    free a2
              #                    free a4
              #                          k_19 = i32 l_17 
              #                    occupy a0 with l_17
              #                    occupy a5 with k_19
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } | 
              #                          label while.head_28: 
.while.head_28:
              #                          new_var temp_4_cmp_27:i1 
              #                          temp_4_cmp_27 = icmp i32 Slt j_19, r_17 
              #                    occupy a4 with j_19
              #                    occupy a3 with r_17
              #                    occupy a6 with temp_4_cmp_27
    slt     a6,a4,a3
              #                    free a4
              #                    free a3
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
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } | 
              #                          label while.body_28: 
.while.body_28:
              #                          new_var temp_7_ptr2globl_30:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_7_ptr2globl_30 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s2 with *buf_0
              #                       load label buf as ptr to reg
    la      s2, buf
              #                    occupy reg s2 with *buf_0
              #                    occupy s3 with temp_7_ptr2globl_30
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_8_array_ptr_30:ptr->i32 
              #                          temp_8_array_ptr_30 = getelementptr temp_7_ptr2globl_30:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy s4 with temp_8_array_ptr_30
    li      s4, 0
              #                    occupy s5 with 100_0
    li      s5, 100
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_7_ptr2globl_30_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s7
              #                    free s7
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a4 with j_19
              #                    occupy s9 with _anonymous_of_temp_7_ptr2globl_30_0
    mul     s9,s8,a4
              #                    free s8
              #                    free a4
    add     s4,s4,s9
              #                    free s9
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s10 with 4988_0
    li      s10, 4988
    li      s10, 4988
    add     s4,s10,s4
              #                    free s10
              #                    free s4
              #                          new_var temp_9_array_ele_30:i32 
              #                          temp_9_array_ele_30 = load temp_8_array_ptr_30:ptr->i32 
              #                    occupy s4 with temp_8_array_ptr_30
              #                    occupy s11 with temp_9_array_ele_30
    lw      s11,0(s4)
              #                    free s11
              #                    free s4
              #                          new_var temp_10_ptr2globl_30:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_10_ptr2globl_30 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s2 with *buf_0
              #                       load label buf as ptr to reg
    la      s2, buf
              #                    occupy reg s2 with *buf_0
              #                    occupy s5 with temp_10_ptr2globl_30
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_11_array_ptr_30:ptr->i32 
              #                          temp_11_array_ptr_30 = getelementptr temp_10_ptr2globl_30:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy s2 with temp_11_array_ptr_30
    li      s2, 0
              #                    occupy s6 with 100_0
    li      s6, 100
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_10_ptr2globl_30_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s2,s2,s8
              #                    free s8
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a1 with i_19
              #                    occupy s7 with _anonymous_of_temp_10_ptr2globl_30_0
    mul     s7,s6,a1
              #                    free s6
              #                    free a1
    add     s2,s2,s7
              #                    free s7
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s6 with 4172_0
    li      s6, 4172
    li      s6, 4172
    add     s2,s6,s2
              #                    free s6
              #                    free s2
              #                          new_var temp_12_array_ele_30:i32 
              #                          temp_12_array_ele_30 = load temp_11_array_ptr_30:ptr->i32 
              #                    occupy s2 with temp_11_array_ptr_30
              #                    occupy s6 with temp_12_array_ele_30
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_13_cmp_30:i1 
              #                          temp_13_cmp_30 = icmp i32 Slt temp_12_array_ele_30, temp_9_array_ele_30 
              #                    occupy s6 with temp_12_array_ele_30
              #                    occupy s11 with temp_9_array_ele_30
              #                    occupy s7 with temp_13_cmp_30
    slt     s7,s6,s11
              #                    free s6
              #                    free s11
              #                    free s7
              #                          br i1 temp_13_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy s7 with temp_13_cmp_30
              #                    free s7
              #                    occupy s7 with temp_13_cmp_30
    bnez    s7, .branch_true_31
              #                    free s7
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_11_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_7_ptr2globl_30, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_30, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_30, tracked: true } |     s7:Freed { symidx: temp_13_cmp_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var temp_14_index_ptr_32:ptr->i32 
              #                          temp_14_index_ptr_32 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s8 with temp_14_index_ptr_32
    li      s8, 0
              #                    occupy s9 with 100_0
    li      s9, 100
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to l_17 in mem offset_illegal
              #                    occupy a0 with 5828_0
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with l_17
              #                    occupy a0 with _anonymous_of_buf_0_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     s8,s8,a0
              #                    free a0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a5 with k_19
              #                    occupy a0 with _anonymous_of_buf_0_0
    mul     a0,s10,a5
              #                    free s10
              #                    free a5
    add     s8,s8,a0
              #                    free a0
    slli s8,s8,2
              #                    occupy a0 with _anonymous_of_buf_0_0
    la      a0, buf
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_15_ptr2globl_32:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_15_ptr2globl_32 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy a0 with *buf_0
              #                       load label buf as ptr to reg
    la      a0, buf
              #                    occupy reg a0 with *buf_0
              #                    occupy s9 with temp_15_ptr2globl_32
    lw      s9,0(a0)
              #                    free s9
              #                    free a0
              #                          new_var temp_16_array_ptr_32:ptr->i32 
              #                          temp_16_array_ptr_32 = getelementptr temp_15_ptr2globl_32:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy a0 with temp_16_array_ptr_32
    li      a0, 0
              #                    occupy s10 with 100_0
    li      s10, 100
              #                    store to i_19 in mem offset_illegal
              #                    occupy a1 with 5800_0
    li      a1, 5800
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_19
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    store to mid_19 in mem offset_illegal
              #                    occupy a2 with 5804_0
    li      a2, 5804
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with mid_19
              #                    occupy a2 with _anonymous_of_temp_15_ptr2globl_32_0
    mul     a2,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with i_19
              #                    load from i_19 in mem

              #                    occupy a2 with i_19
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    occupy s10 with _anonymous_of_temp_15_ptr2globl_32_0
    mul     s10,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,s10
              #                    free s10
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 3344_0
    li      a1, 3344
    li      a1, 3344
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_17_array_ele_32:i32 
              #                          temp_17_array_ele_32 = load temp_16_array_ptr_32:ptr->i32 
              #                    occupy a0 with temp_16_array_ptr_32
              #                    occupy a1 with temp_17_array_ele_32
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_17_array_ele_32:i32 temp_14_index_ptr_32:ptr->i32 
              #                    occupy s8 with temp_14_index_ptr_32
              #                    occupy a1 with temp_17_array_ele_32
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu buf_0:96 
              #                          buf_0 = chi buf_0:96 
              #                          new_var temp_18_arithop_32:i32 
              #                          temp_18_arithop_32 = Add i32 i_19, 1_0 
              #                    occupy a2 with i_19
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to temp_16_array_ptr_32 in mem offset_illegal
              #                    occupy a0 with 3336_0
    li      a0, 3336
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_16_array_ptr_32
              #                    occupy a0 with temp_18_arithop_32
    add     a0,a2,s10
              #                    free a2
              #                    free s10
              #                    free a0
              #                          i_19 = i32 temp_18_arithop_32 
              #                    occupy a0 with temp_18_arithop_32
              #                    occupy a2 with i_19
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_11_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_7_ptr2globl_30, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_30, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_30, tracked: true } |     s7:Freed { symidx: temp_13_cmp_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_20_index_ptr_35:ptr->i32 
              #                          temp_20_index_ptr_35 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s8 with temp_20_index_ptr_35
    li      s8, 0
              #                    occupy s9 with 100_0
    li      s9, 100
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to l_17 in mem offset_illegal
              #                    occupy a0 with 5828_0
    li      a0, 5828
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with l_17
              #                    occupy a0 with _anonymous_of_buf_0_0
    mul     a0,s9,s10
              #                    free s9
              #                    free s10
    add     s8,s8,a0
              #                    free a0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy a5 with k_19
              #                    occupy a0 with _anonymous_of_buf_0_0
    mul     a0,s10,a5
              #                    free s10
              #                    free a5
    add     s8,s8,a0
              #                    free a0
    slli s8,s8,2
              #                    occupy a0 with _anonymous_of_buf_0_0
    la      a0, buf
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_21_ptr2globl_35:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_21_ptr2globl_35 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy a0 with *buf_0
              #                       load label buf as ptr to reg
    la      a0, buf
              #                    occupy reg a0 with *buf_0
              #                    occupy s9 with temp_21_ptr2globl_35
    lw      s9,0(a0)
              #                    free s9
              #                    free a0
              #                          new_var temp_22_array_ptr_35:ptr->i32 
              #                          temp_22_array_ptr_35 = getelementptr temp_21_ptr2globl_35:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy a0 with temp_22_array_ptr_35
    li      a0, 0
              #                    occupy s10 with 100_0
    li      s10, 100
              #                    store to i_19 in mem offset_illegal
              #                    occupy a1 with 5800_0
    li      a1, 5800
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_19
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    store to mid_19 in mem offset_illegal
              #                    occupy a2 with 5804_0
    li      a2, 5804
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with mid_19
              #                    occupy a2 with _anonymous_of_temp_21_ptr2globl_35_0
    mul     a2,s10,a1
              #                    free s10
              #                    free a1
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with j_19
              #                    occupy a2 with _anonymous_of_temp_21_ptr2globl_35_0
    mul     a2,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 2512_0
    li      a1, 2512
    li      a1, 2512
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_23_array_ele_35:i32 
              #                          temp_23_array_ele_35 = load temp_22_array_ptr_35:ptr->i32 
              #                    occupy a0 with temp_22_array_ptr_35
              #                    occupy a1 with temp_23_array_ele_35
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_23_array_ele_35:i32 temp_20_index_ptr_35:ptr->i32 
              #                    occupy s8 with temp_20_index_ptr_35
              #                    occupy a1 with temp_23_array_ele_35
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu buf_0:119 
              #                          buf_0 = chi buf_0:119 
              #                          new_var temp_24_arithop_35:i32 
              #                          temp_24_arithop_35 = Add i32 j_19, 1_0 
              #                    occupy a4 with j_19
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s10 with temp_24_arithop_35
    add     s10,a4,a2
              #                    free a4
              #                    free a2
              #                    free s10
              #                          j_19 = i32 temp_24_arithop_35 
              #                    occupy s10 with temp_24_arithop_35
              #                    occupy a4 with j_19
    mv      a4, s10
              #                    free s10
              #                    free a4
              #                          jump label: L3_0 
              #                    store to temp_22_array_ptr_35 in mem offset_illegal
              #                    occupy a0 with 2504_0
    li      a0, 2504
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_array_ptr_35
              #                    store to temp_20_index_ptr_35 in mem offset_illegal
              #                    occupy a0 with 3312_0
    li      a0, 3312
    add     a0,sp,a0
    sd      s8,0(a0)
              #                    free a0
              #                    release s8 with temp_20_index_ptr_35
              #                    store to temp_24_arithop_35 in mem offset_illegal
              #                    occupy s8 with 2496_0
    li      s8, 2496
    add     s8,sp,s8
    sw      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_24_arithop_35
              #                    store to temp_23_array_ele_35 in mem offset_illegal
              #                    occupy a1 with 2500_0
    li      a1, 2500
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_23_array_ele_35
              #                    store to temp_21_ptr2globl_35 in mem offset_illegal
              #                    occupy a1 with 2512_0
    li      a1, 2512
    add     a1,sp,a1
    sw      s9,0(a1)
              #                    free a1
              #                    release s9 with temp_21_ptr2globl_35
              #                    occupy a0 with _anonymous_of_temp_18_arithop_32_0
              #                    load from temp_18_arithop_32 in mem

              #                    occupy a2 with temp_18_arithop_32
    li      a2, 3328
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy s8 with _anonymous_of_temp_14_index_ptr_32_0
              #                    load from temp_14_index_ptr_32 in mem
              #                    occupy s9 with temp_14_index_ptr_32
    li      s9, 4144
    add     s9,sp,s9
    ld      s8,0(s9)
              #                    free s9
              #                    store to temp_18_arithop_32 in mem offset_illegal
              #                    occupy a2 with 3328_0
    li      a2, 3328
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_18_arithop_32
              #                    occupy a2 with _anonymous_of_i_19_0
              #                    load from i_19 in mem

              #                    occupy s10 with i_19
    li      s10, 5800
    add     s10,sp,s10
    lw      a2,0(s10)
              #                    free s10
              #                    occupy a1 with _anonymous_of_temp_17_array_ele_32_0
              #                    load from temp_17_array_ele_32 in mem

              #                    store to r_17 in mem offset_illegal
              #                    occupy a3 with 5824_0
    li      a3, 5824
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with r_17
              #                    occupy a3 with temp_17_array_ele_32
    li      a3, 3332
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    store to temp_14_index_ptr_32 in mem offset_illegal
              #                    occupy s9 with 4144_0
    li      s9, 4144
    add     s9,sp,s9
    sd      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_14_index_ptr_32
              #                    occupy s9 with _anonymous_of_temp_15_ptr2globl_32_0
              #                    load from temp_15_ptr2globl_32 in mem
              #                    store to temp_17_array_ele_32 in mem offset_illegal
              #                    occupy a3 with 3332_0
    li      a3, 3332
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_17_array_ele_32
              #                    occupy a3 with temp_15_ptr2globl_32
    li      a3, 3344
    add     a3,sp,a3
    lw      s9,0(a3)
              #                    free a3
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_18_arithop_32, tracked: true } |     a1:Freed { symidx: temp_17_array_ele_32, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_11_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_7_ptr2globl_30, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_30, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_30, tracked: true } |     s7:Freed { symidx: temp_13_cmp_30, tracked: true } |     s8:Freed { symidx: temp_14_index_ptr_32, tracked: true } |     s9:Freed { symidx: temp_15_ptr2globl_32, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: temp_18_arithop_32, tracked: true } |     a1:Freed { symidx: temp_17_array_ele_32, tracked: true } |     a2:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s11:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_11_array_ptr_30, tracked: true } |     s3:Freed { symidx: temp_7_ptr2globl_30, tracked: true } |     s4:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s5:Freed { symidx: temp_10_ptr2globl_30, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_30, tracked: true } |     s7:Freed { symidx: temp_13_cmp_30, tracked: true } |     s8:Freed { symidx: temp_14_index_ptr_32, tracked: true } |     s9:Freed { symidx: temp_15_ptr2globl_32, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_19_arithop_29:i32 
              #                          temp_19_arithop_29 = Add i32 k_19, 1_0 
              #                    occupy a5 with k_19
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to temp_18_arithop_32 in mem offset_illegal
              #                    occupy a0 with 3328_0
    li      a0, 3328
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_18_arithop_32
              #                    occupy a0 with temp_19_arithop_29
    add     a0,a5,s10
              #                    free a5
              #                    free s10
              #                    free a0
              #                          k_19 = i32 temp_19_arithop_29 
              #                    occupy a0 with temp_19_arithop_29
              #                    occupy a5 with k_19
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.head_28 
              #                    store to temp_19_arithop_29 in mem offset_illegal
              #                    occupy a0 with 3324_0
    li      a0, 3324
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_19_arithop_29
              #                    store to temp_5_cmp_27 in mem offset_illegal
              #                    occupy a0 with 5790_0
    li      a0, 5790
    add     a0,sp,a0
    sb      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_5_cmp_27
              #                    store to temp_14_index_ptr_32 in mem offset_illegal
              #                    occupy a7 with 4144_0
    li      a7, 4144
    add     a7,sp,a7
    sd      s8,0(a7)
              #                    free a7
              #                    release s8 with temp_14_index_ptr_32
              #                    store to temp_11_array_ptr_30 in mem offset_illegal
              #                    occupy s2 with 4160_0
    li      s2, 4160
    add     s2,sp,s2
    sd      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_11_array_ptr_30
              #                    store to temp_12_array_ele_30 in mem offset_illegal
              #                    occupy s2 with 4156_0
    li      s2, 4156
    add     s2,sp,s2
    sw      s6,0(s2)
              #                    free s2
              #                    release s6 with temp_12_array_ele_30
              #                    store to temp_6_logic_27 in mem offset_illegal
              #                    occupy s1 with 5789_0
    li      s1, 5789
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_6_logic_27
              #                    store to i_19 in mem offset_illegal
              #                    occupy a2 with 5800_0
    li      a2, 5800
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_19
              #                    store to temp_7_ptr2globl_30 in mem offset_illegal
              #                    occupy a2 with 4988_0
    li      a2, 4988
    add     a2,sp,a2
    sw      s3,0(a2)
              #                    free a2
              #                    release s3 with temp_7_ptr2globl_30
              #                    store to temp_4_cmp_27 in mem offset_illegal
              #                    occupy a6 with 5791_0
    li      a6, 5791
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_4_cmp_27
              #                    store to temp_13_cmp_30 in mem offset_illegal
              #                    occupy a6 with 4155_0
    li      a6, 4155
    add     a6,sp,a6
    sb      s7,0(a6)
              #                    free a6
              #                    release s7 with temp_13_cmp_30
              #                    store to temp_8_array_ptr_30 in mem offset_illegal
              #                    occupy s1 with 4976_0
    li      s1, 4976
    add     s1,sp,s1
    sd      s4,0(s1)
              #                    free s1
              #                    release s4 with temp_8_array_ptr_30
              #                    store to temp_9_array_ele_30 in mem offset_illegal
              #                    occupy s3 with 4972_0
    li      s3, 4972
    add     s3,sp,s3
    sw      s11,0(s3)
              #                    free s3
              #                    release s11 with temp_9_array_ele_30
              #                    store to temp_17_array_ele_32 in mem offset_illegal
              #                    occupy a1 with 3332_0
    li      a1, 3332
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_17_array_ele_32
              #                    store to temp_10_ptr2globl_30 in mem offset_illegal
              #                    occupy a1 with 4172_0
    li      a1, 4172
    add     a1,sp,a1
    sw      s5,0(a1)
              #                    free a1
              #                    release s5 with temp_10_ptr2globl_30
              #                    store to temp_15_ptr2globl_32 in mem offset_illegal
              #                    occupy s4 with 3344_0
    li      s4, 3344
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_15_ptr2globl_32
              #                    occupy a0 with _anonymous_of_l_17_0
              #                    load from l_17 in mem

              #                    occupy s5 with l_17
    li      s5, 5828
    add     s5,sp,s5
    lw      a0,0(s5)
              #                    free s5
              #                    occupy a2 with _anonymous_of_mid_19_0
              #                    load from mid_19 in mem

              #                    occupy a7 with mid_19
    li      a7, 5804
    add     a7,sp,a7
    lw      a2,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_i_19_0
              #                    load from i_19 in mem

              #                    occupy a6 with i_19
    li      a6, 5800
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    store to l_17 in mem offset_illegal
              #                    occupy s1 with 5828_0
    li      s1, 5828
    add     s1,sp,s1
    sw      s5,0(s1)
              #                    free s1
              #                    release s5 with l_17
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } | 
              #                          label while.exit_28: 
.while.exit_28:
              #                          new_var temp_25_cmp_39:i1 
              #                          temp_25_cmp_39 = icmp i32 Slt i_19, mid_19 
              #                    occupy a1 with i_19
              #                    occupy a2 with mid_19
              #                    occupy s2 with temp_25_cmp_39
    slt     s2,a1,a2
              #                    free a1
              #                    free a2
              #                    free s2
              #                          br i1 temp_25_cmp_39, label while.body_40, label while.exit_40 
              #                    occupy s2 with temp_25_cmp_39
              #                    free s2
              #                    occupy s2 with temp_25_cmp_39
    bnez    s2, .while.body_40
              #                    free s2
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } | 
              #                          label while.body_40: 
.while.body_40:
              #                          new_var temp_26_index_ptr_41:ptr->i32 
              #                          temp_26_index_ptr_41 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s3 with temp_26_index_ptr_41
    li      s3, 0
              #                    occupy s4 with 100_0
    li      s4, 100
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with _anonymous_of_buf_0_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s6
              #                    free s6
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy a5 with k_19
              #                    occupy s7 with _anonymous_of_buf_0_0
    mul     s7,s5,a5
              #                    free s5
              #                    free a5
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy s8 with _anonymous_of_buf_0_0
    la      s8, buf
    add     s3,s3,s8
              #                    free s8
              #                    free s3
              #                          new_var temp_27_ptr2globl_41:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_27_ptr2globl_41 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s9 with *buf_0
              #                       load label buf as ptr to reg
    la      s9, buf
              #                    occupy reg s9 with *buf_0
              #                    occupy s10 with temp_27_ptr2globl_41
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_28_array_ptr_41:ptr->i32 
              #                          temp_28_array_ptr_41 = getelementptr temp_27_ptr2globl_41:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(i_19)] 
              #                    occupy s11 with temp_28_array_ptr_41
    li      s11, 0
              #                    found literal reg Some(s4) already exist with 100_0
              #                    occupy s4 with 100_0
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_27_ptr2globl_41_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     s11,s11,s6
              #                    free s6
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with i_19
              #                    occupy s5 with _anonymous_of_temp_27_ptr2globl_41_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s11,s11,s5
              #                    free s5
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,1680
              #                    free s11
              #                          new_var temp_29_array_ele_41:i32 
              #                          temp_29_array_ele_41 = load temp_28_array_ptr_41:ptr->i32 
              #                    occupy s11 with temp_28_array_ptr_41
              #                    occupy s4 with temp_29_array_ele_41
    lw      s4,0(s11)
              #                    free s4
              #                    free s11
              #                          store temp_29_array_ele_41:i32 temp_26_index_ptr_41:ptr->i32 
              #                    occupy s3 with temp_26_index_ptr_41
              #                    occupy s4 with temp_29_array_ele_41
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu buf_0:145 
              #                          buf_0 = chi buf_0:145 
              #                          new_var temp_30_arithop_41:i32 
              #                          temp_30_arithop_41 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_30_arithop_41
    add     s6,a1,s5
              #                    free a1
              #                    free s5
              #                    free s6
              #                          i_19 = i32 temp_30_arithop_41 
              #                    occupy s6 with temp_30_arithop_41
              #                    occupy a1 with i_19
    mv      a1, s6
              #                    free s6
              #                    free a1
              #                          new_var temp_31_arithop_41:i32 
              #                          temp_31_arithop_41 = Add i32 k_19, 1_0 
              #                    occupy a5 with k_19
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s7 with temp_31_arithop_41
    add     s7,a5,s5
              #                    free a5
              #                    free s5
              #                    free s7
              #                          k_19 = i32 temp_31_arithop_41 
              #                    occupy s7 with temp_31_arithop_41
              #                    occupy a5 with k_19
    mv      a5, s7
              #                    free s7
              #                    free a5
              #                          jump label: while.exit_28 
              #                    store to temp_27_ptr2globl_41 in mem offset legal
    sw      s10,1680(sp)
              #                    release s10 with temp_27_ptr2globl_41
              #                    store to temp_25_cmp_39 in mem offset_illegal
              #                    occupy s2 with 2495_0
    li      s2, 2495
    add     s2,sp,s2
    sb      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_25_cmp_39
              #                    store to temp_30_arithop_41 in mem offset legal
    sw      s6,1664(sp)
              #                    release s6 with temp_30_arithop_41
              #                    store to temp_26_index_ptr_41 in mem offset_illegal
              #                    occupy s2 with 2480_0
    li      s2, 2480
    add     s2,sp,s2
    sd      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_26_index_ptr_41
              #                    store to temp_31_arithop_41 in mem offset legal
    sw      s7,1660(sp)
              #                    release s7 with temp_31_arithop_41
              #                    store to temp_29_array_ele_41 in mem offset legal
    sw      s4,1668(sp)
              #                    release s4 with temp_29_array_ele_41
              #                    store to temp_28_array_ptr_41 in mem offset legal
    sd      s11,1672(sp)
              #                    release s11 with temp_28_array_ptr_41
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } | 
              #                          label while.exit_40: 
.while.exit_40:
              #                          new_var temp_32_cmp_45:i1 
              #                          temp_32_cmp_45 = icmp i32 Slt j_19, r_17 
              #                    occupy a4 with j_19
              #                    occupy a3 with r_17
              #                    occupy s3 with temp_32_cmp_45
    slt     s3,a4,a3
              #                    free a4
              #                    free a3
              #                    free s3
              #                          br i1 temp_32_cmp_45, label while.body_46, label while.exit_46 
              #                    occupy s3 with temp_32_cmp_45
              #                    free s3
              #                    occupy s3 with temp_32_cmp_45
    bnez    s3, .while.body_46
              #                    free s3
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } |     s3:Freed { symidx: temp_32_cmp_45, tracked: true } | 
              #                          label while.body_46: 
.while.body_46:
              #                          new_var temp_33_index_ptr_47:ptr->i32 
              #                          temp_33_index_ptr_47 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(k_19)] 
              #                    occupy s4 with temp_33_index_ptr_47
    li      s4, 0
              #                    occupy s5 with 100_0
    li      s5, 100
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with _anonymous_of_buf_0_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s4,s4,s7
              #                    free s7
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
              #                    occupy a5 with k_19
              #                    occupy s8 with _anonymous_of_buf_0_0
    mul     s8,s6,a5
              #                    free s6
              #                    free a5
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy s9 with _anonymous_of_buf_0_0
    la      s9, buf
    add     s4,s4,s9
              #                    free s9
              #                    free s4
              #                          new_var temp_34_ptr2globl_47:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_34_ptr2globl_47 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s10 with *buf_0
              #                       load label buf as ptr to reg
    la      s10, buf
              #                    occupy reg s10 with *buf_0
              #                    occupy s11 with temp_34_ptr2globl_47
    lw      s11,0(s10)
              #                    free s11
              #                    free s10
              #                          new_var temp_35_array_ptr_47:ptr->i32 
              #                          temp_35_array_ptr_47 = getelementptr temp_34_ptr2globl_47:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(j_19)] 
              #                    occupy s5 with temp_35_array_ptr_47
    li      s5, 0
              #                    occupy s6 with 100_0
    li      s6, 100
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_34_ptr2globl_47_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s8
              #                    free s8
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a4 with j_19
              #                    occupy s7 with _anonymous_of_temp_34_ptr2globl_47_0
    mul     s7,s6,a4
              #                    free s6
              #                    free a4
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,848
              #                    free s5
              #                          new_var temp_36_array_ele_47:i32 
              #                          temp_36_array_ele_47 = load temp_35_array_ptr_47:ptr->i32 
              #                    occupy s5 with temp_35_array_ptr_47
              #                    occupy s6 with temp_36_array_ele_47
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          store temp_36_array_ele_47:i32 temp_33_index_ptr_47:ptr->i32 
              #                    occupy s4 with temp_33_index_ptr_47
              #                    occupy s6 with temp_36_array_ele_47
    sw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mu buf_0:175 
              #                          buf_0 = chi buf_0:175 
              #                          new_var temp_37_arithop_47:i32 
              #                          temp_37_arithop_47 = Add i32 j_19, 1_0 
              #                    occupy a4 with j_19
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with temp_37_arithop_47
    add     s8,a4,s7
              #                    free a4
              #                    free s7
              #                    free s8
              #                          j_19 = i32 temp_37_arithop_47 
              #                    occupy s8 with temp_37_arithop_47
              #                    occupy a4 with j_19
    mv      a4, s8
              #                    free s8
              #                    free a4
              #                          new_var temp_38_arithop_47:i32 
              #                          temp_38_arithop_47 = Add i32 k_19, 1_0 
              #                    occupy a5 with k_19
              #                    found literal reg Some(s7) already exist with 1_0
              #                    occupy s7 with 1_0
              #                    occupy s9 with temp_38_arithop_47
    add     s9,a5,s7
              #                    free a5
              #                    free s7
              #                    free s9
              #                          k_19 = i32 temp_38_arithop_47 
              #                    occupy s9 with temp_38_arithop_47
              #                    occupy a5 with k_19
    mv      a5, s9
              #                    free s9
              #                    free a5
              #                          jump label: while.exit_40 
              #                    store to temp_37_arithop_47 in mem offset legal
    sw      s8,832(sp)
              #                    release s8 with temp_37_arithop_47
              #                    store to temp_36_array_ele_47 in mem offset legal
    sw      s6,836(sp)
              #                    release s6 with temp_36_array_ele_47
              #                    store to temp_32_cmp_45 in mem offset legal
    sb      s3,1659(sp)
              #                    release s3 with temp_32_cmp_45
              #                    store to temp_33_index_ptr_47 in mem offset legal
    sd      s4,1648(sp)
              #                    release s4 with temp_33_index_ptr_47
              #                    store to temp_34_ptr2globl_47 in mem offset legal
    sw      s11,848(sp)
              #                    release s11 with temp_34_ptr2globl_47
              #                    store to temp_35_array_ptr_47 in mem offset legal
    sd      s5,840(sp)
              #                    release s5 with temp_35_array_ptr_47
              #                    store to temp_38_arithop_47 in mem offset legal
    sw      s9,828(sp)
              #                    release s9 with temp_38_arithop_47
    j       .while.exit_40
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } |     s3:Freed { symidx: temp_32_cmp_45, tracked: true } | 
              #                          label while.exit_46: 
.while.exit_46:
              #                          new_var temp_39_cmp_51:i1 
              #                          temp_39_cmp_51 = icmp i32 Slt l_17, r_17 
              #                    occupy a0 with l_17
              #                    occupy a3 with r_17
              #                    occupy s4 with temp_39_cmp_51
    slt     s4,a0,a3
              #                    free a0
              #                    free a3
              #                    free s4
              #                          br i1 temp_39_cmp_51, label while.body_52, label while.exit_52 
              #                    occupy s4 with temp_39_cmp_51
              #                    free s4
              #                    occupy s4 with temp_39_cmp_51
    bnez    s4, .while.body_52
              #                    free s4
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } |     s3:Freed { symidx: temp_32_cmp_45, tracked: true } |     s4:Freed { symidx: temp_39_cmp_51, tracked: true } | 
              #                          label while.body_52: 
.while.body_52:
              #                          new_var temp_40_index_ptr_53:ptr->i32 
              #                          temp_40_index_ptr_53 = getelementptr buf_0:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0), Some(l_17)] 
              #                    occupy s5 with temp_40_index_ptr_53
    li      s5, 0
              #                    occupy s6 with 100_0
    li      s6, 100
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with _anonymous_of_buf_0_0
    mul     s8,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s8
              #                    free s8
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy a0 with l_17
              #                    occupy s10 with _anonymous_of_buf_0_0
    mul     s10,s9,a0
              #                    free s9
              #                    free a0
    add     s5,s5,s10
              #                    free s10
    slli s5,s5,2
              #                    occupy s11 with _anonymous_of_buf_0_0
    la      s11, buf
    add     s5,s5,s11
              #                    free s11
              #                    free s5
              #                          new_var temp_41_ptr2globl_53:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_41_ptr2globl_53 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy s6 with *buf_0
              #                       load label buf as ptr to reg
    la      s6, buf
              #                    occupy reg s6 with *buf_0
              #                    occupy s7 with temp_41_ptr2globl_53
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_42_array_ptr_53:ptr->i32 
              #                          temp_42_array_ptr_53 = getelementptr temp_41_ptr2globl_53:Array:i32:[Some(2_0), Some(100_0)] [Some(1_0), Some(l_17)] 
              #                    occupy s6 with temp_42_array_ptr_53
    li      s6, 0
              #                    occupy s8 with 100_0
    li      s8, 100
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s10 with _anonymous_of_temp_41_ptr2globl_53_0
    mul     s10,s8,s9
              #                    free s8
              #                    free s9
    add     s6,s6,s10
              #                    free s10
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy a0 with l_17
              #                    occupy s8 with _anonymous_of_temp_41_ptr2globl_53_0
    mul     s8,s9,a0
              #                    free s9
              #                    free a0
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,16
              #                    free s6
              #                          new_var temp_43_array_ele_53:i32 
              #                          temp_43_array_ele_53 = load temp_42_array_ptr_53:ptr->i32 
              #                    occupy s6 with temp_42_array_ptr_53
              #                    occupy s8 with temp_43_array_ele_53
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          store temp_43_array_ele_53:i32 temp_40_index_ptr_53:ptr->i32 
              #                    occupy s5 with temp_40_index_ptr_53
              #                    occupy s8 with temp_43_array_ele_53
    sw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          mu buf_0:205 
              #                          buf_0 = chi buf_0:205 
              #                          new_var temp_44_arithop_53:i32 
              #                          temp_44_arithop_53 = Add i32 l_17, 1_0 
              #                    occupy a0 with l_17
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    occupy s10 with temp_44_arithop_53
    add     s10,a0,s9
              #                    free a0
              #                    free s9
              #                    free s10
              #                          l_17 = i32 temp_44_arithop_53 
              #                    occupy s10 with temp_44_arithop_53
              #                    occupy a0 with l_17
    mv      a0, s10
              #                    free s10
              #                    free a0
              #                          jump label: while.exit_46 
              #                    store to temp_43_array_ele_53 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_43_array_ele_53
              #                    store to temp_44_arithop_53 in mem offset legal
    sw      s10,0(sp)
              #                    release s10 with temp_44_arithop_53
              #                    store to temp_42_array_ptr_53 in mem offset legal
    sd      s6,8(sp)
              #                    release s6 with temp_42_array_ptr_53
              #                    store to temp_41_ptr2globl_53 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_41_ptr2globl_53
              #                    store to temp_39_cmp_51 in mem offset legal
    sb      s4,827(sp)
              #                    release s4 with temp_39_cmp_51
              #                    store to temp_40_index_ptr_53 in mem offset legal
    sd      s5,816(sp)
              #                    release s5 with temp_40_index_ptr_53
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: l_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: mid_19, tracked: true } |     a3:Freed { symidx: r_17, tracked: true } |     a4:Freed { symidx: j_19, tracked: true } |     a5:Freed { symidx: k_19, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_5_cmp_27, tracked: true } |     s1:Freed { symidx: temp_6_logic_27, tracked: true } |     s2:Freed { symidx: temp_25_cmp_39, tracked: true } |     s3:Freed { symidx: temp_32_cmp_45, tracked: true } |     s4:Freed { symidx: temp_39_cmp_51, tracked: true } | 
              #                          label while.exit_52: 
.while.exit_52:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 1632|s0_main:8 at 1624|temp_45_ptr2globl:800 at 824|temp_46_array_ptr:8 at 816|temp_47_ret_of_getarray:4 at 812|n:4 at 808|temp_48_ptr2globl:800 at 8|temp_49_array_ptr:8 at 0
    addi    sp,sp,-1640
              #                    store to ra_main_0 in mem offset legal
    sd      ra,1632(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,1624(sp)
    addi    s0,sp,1640
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_45_ptr2globl_57 
              #                          alloc ptr->i32 temp_46_array_ptr_57 
              #                          alloc i32 temp_47_ret_of_getarray_57 
              #                          alloc i32 n_57 
              #                          alloc Array:i32:[Some(2_0), Some(100_0)] temp_48_ptr2globl_57 
              #                          alloc ptr->i32 temp_49_array_ptr_57 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_45_ptr2globl_57:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_45_ptr2globl_57 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy a0 with *buf_0
              #                       load label buf as ptr to reg
    la      a0, buf
              #                    occupy reg a0 with *buf_0
              #                    occupy a1 with temp_45_ptr2globl_57
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_46_array_ptr_57:ptr->i32 
              #                          temp_46_array_ptr_57 = getelementptr temp_45_ptr2globl_57:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0)] 
              #                    occupy a2 with temp_46_array_ptr_57
    li      a2, 0
              #                    occupy a3 with 100_0
    li      a3, 100
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_45_ptr2globl_57_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,824
              #                    free a2
              #                          new_var temp_47_ret_of_getarray_57:i32 
              #                          temp_47_ret_of_getarray_57 =  Call i32 getarray_0(temp_46_array_ptr_57) 
              #                    saved register dumping to mem
              #                    store to temp_45_ptr2globl_57 in mem offset legal
    sw      a1,824(sp)
              #                    release a1 with temp_45_ptr2globl_57
              #                    store to temp_46_array_ptr_57 in mem offset legal
    sd      a2,816(sp)
              #                    release a2 with temp_46_array_ptr_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_array_ptr_57_0
              #                    load from temp_46_array_ptr_57 in mem
    ld      a0,816(sp)
              #                    arg load ended


    call    getarray
              #                    store to temp_47_ret_of_getarray_57 in mem offset legal
    sw      a0,812(sp)
              #                          n_57 = i32 temp_47_ret_of_getarray_57 
              #                    occupy a0 with temp_47_ret_of_getarray_57
              #                    occupy a1 with n_57
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void merge_sort_0(0_0, n_57) 
              #                    saved register dumping to mem
              #                    store to temp_47_ret_of_getarray_57 in mem offset legal
    sw      a0,812(sp)
              #                    release a0 with temp_47_ret_of_getarray_57
              #                    store to n_57 in mem offset legal
    sw      a1,808(sp)
              #                    release a1 with n_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_n_57_0
              #                    load from n_57 in mem


    lw      a1,808(sp)
              #                    arg load ended


    call    merge_sort
              #                          new_var temp_48_ptr2globl_57:Array:i32:[Some(2_0), Some(100_0)] 
              #                          temp_48_ptr2globl_57 = load *buf_0:ptr->Array:i32:[Some(100_0)] 
              #                    occupy a0 with *buf_0
              #                       load label buf as ptr to reg
    la      a0, buf
              #                    occupy reg a0 with *buf_0
              #                    occupy a1 with temp_48_ptr2globl_57
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_49_array_ptr_57:ptr->i32 
              #                          temp_49_array_ptr_57 = getelementptr temp_48_ptr2globl_57:Array:i32:[Some(2_0), Some(100_0)] [Some(0_0)] 
              #                    occupy a2 with temp_49_array_ptr_57
    li      a2, 0
              #                    occupy a3 with 100_0
    li      a3, 100
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_48_ptr2globl_57_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,8
              #                    free a2
              #                           Call void putarray_0(n_57, temp_49_array_ptr_57) 
              #                    saved register dumping to mem
              #                    store to temp_48_ptr2globl_57 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_48_ptr2globl_57
              #                    store to temp_49_array_ptr_57 in mem offset legal
    sd      a2,0(sp)
              #                    release a2 with temp_49_array_ptr_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_n_57_0
              #                    load from n_57 in mem


    lw      a0,808(sp)
              #                    occupy a1 with _anonymous_of_temp_49_array_ptr_57_0
              #                    load from temp_49_array_ptr_57 in mem
    ld      a1,0(sp)
              #                    arg load ended


    call    putarray
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,1632(sp)
              #                    load from s0_main_0 in mem
    ld      s0,1624(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1640
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
