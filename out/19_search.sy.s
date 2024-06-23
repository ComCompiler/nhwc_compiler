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
              #                    mem layout:|ra_search:8 at 3976|s0_search:8 at 3968|x:4 at 3964|y:4 at 3960|n:4 at 3956|temp_8_cmp:1 at 3955|none:3 at 3952|num:4 at 3948|i:4 at 3944|temp_9_cmp:1 at 3943|none:3 at 3940|coun:4 at 3936|x2:4 at 3932|y2:4 at 3928|temp_10_ptr2globl:3600 at 328|temp_11_array_ptr:8 at 320|temp_12_array_ele:4 at 316|temp_13_cmp:1 at 315|none:3 at 312|temp_14_ptr2globl:4 at 308|temp_15_cmp:1 at 307|none:3 at 304|temp_16_ptr2globl:4 at 300|temp_17_cmp:1 at 299|temp_18_logic:1 at 298|none:2 at 296|temp_19_ptr2globl:32 at 264|temp_20_array_ptr:8 at 256|temp_21_array_ele:4 at 252|temp_22_arithop:4 at 248|temp_23_ptr2globl:32 at 216|temp_24_array_ptr:8 at 208|temp_25_array_ele:4 at 204|temp_26_arithop:4 at 200|temp_27_arithop:4 at 196|temp_28_ptr2globl:4 at 192|temp_29_cmp:1 at 191|none:3 at 188|temp_30_ptr2globl:4 at 184|temp_31_cmp:1 at 183|temp_32_logic:1 at 182|temp_33_cmp:1 at 181|none:1 at 180|temp_34_arithop:4 at 176|temp_35_ptr2globl:4 at 172|temp_36_arithop:4 at 168|temp_37_cmp:1 at 167|temp_38_cmp:1 at 166|temp_39_logic:1 at 165|none:1 at 164|temp_40_ptr2globl:4 at 160|temp_41_arithop:4 at 156|temp_42_cmp:1 at 155|temp_43_logic:1 at 154|temp_44_cmp:1 at 153|temp_45_logic:1 at 152|temp_46_arithop:4 at 148|none:4 at 144|temp_47_index_ptr:8 at 136|temp_48_ptr2globl:32 at 104|temp_49_array_ptr:8 at 96|temp_50_array_ele:4 at 92|temp_51_arithop:4 at 88|temp_52_ptr2globl:32 at 56|temp_53_array_ptr:8 at 48|temp_54_array_ele:4 at 44|temp_55_arithop:4 at 40|temp_56_arithop:4 at 36|temp_57_ret_of_search:4 at 32|temp_58_arithop:4 at 28|searchResult:4 at 24|temp_59_cmp:1 at 23|none:7 at 16|temp_60_index_ptr:8 at 8|temp_61_arithop:4 at 4|temp_62_cmp:1 at 3|none:3 at 0
              #                    occupy a3 with -3984_0
    li      a3, -3984
    li      a3, -3984
    add     sp,a3,sp
              #                    free a3
              #                    store to ra_search_0 in mem offset_illegal
              #                    occupy a4 with 3976_0
    li      a4, 3976
    add     a4,sp,a4
    sd      ra,0(a4)
              #                    free a4
              #                    store to s0_search_0 in mem offset_illegal
              #                    occupy a5 with 3968_0
    li      a5, 3968
    add     a5,sp,a5
    sd      s0,0(a5)
              #                    free a5
              #                    occupy a6 with 3984_0
    li      a6, 3984
    li      a6, 3984
    add     s0,a6,sp
              #                    free a6
              #                          alloc i1 temp_8_cmp_23 
              #                          alloc i32 num_22 
              #                          alloc i32 i_22 
              #                          alloc i1 temp_9_cmp_28 
              #                          alloc i32 coun_30 
              #                          alloc i32 x2_30 
              #                          alloc i32 y2_30 
              #                          alloc Array:i32:[Some(30_0), Some(30_0)] temp_10_ptr2globl_33 
              #                          alloc ptr->i32 temp_11_array_ptr_33 
              #                          alloc i32 temp_12_array_ele_33 
              #                          alloc i1 temp_13_cmp_33 
              #                          alloc i32 temp_14_ptr2globl_36 
              #                          alloc i1 temp_15_cmp_36 
              #                          alloc i32 temp_16_ptr2globl_36 
              #                          alloc i1 temp_17_cmp_36 
              #                          alloc i1 temp_18_logic_36 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] temp_19_ptr2globl_35 
              #                          alloc ptr->i32 temp_20_array_ptr_35 
              #                          alloc i32 temp_21_array_ele_35 
              #                          alloc i32 temp_22_arithop_35 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] temp_23_ptr2globl_35 
              #                          alloc ptr->i32 temp_24_array_ptr_35 
              #                          alloc i32 temp_25_array_ele_35 
              #                          alloc i32 temp_26_arithop_35 
              #                          alloc i32 temp_27_arithop_35 
              #                          alloc i32 temp_28_ptr2globl_42 
              #                          alloc i1 temp_29_cmp_42 
              #                          alloc i32 temp_30_ptr2globl_42 
              #                          alloc i1 temp_31_cmp_42 
              #                          alloc i1 temp_32_logic_42 
              #                          alloc i1 temp_33_cmp_45 
              #                          alloc i32 temp_34_arithop_47 
              #                          alloc i32 temp_35_ptr2globl_50 
              #                          alloc i32 temp_36_arithop_50 
              #                          alloc i1 temp_37_cmp_50 
              #                          alloc i1 temp_38_cmp_50 
              #                          alloc i1 temp_39_logic_50 
              #                          alloc i32 temp_40_ptr2globl_50 
              #                          alloc i32 temp_41_arithop_50 
              #                          alloc i1 temp_42_cmp_50 
              #                          alloc i1 temp_43_logic_50 
              #                          alloc i1 temp_44_cmp_50 
              #                          alloc i1 temp_45_logic_50 
              #                          alloc i32 temp_46_arithop_52 
              #                          alloc ptr->i32 temp_47_index_ptr_30 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] temp_48_ptr2globl_30 
              #                          alloc ptr->i32 temp_49_array_ptr_30 
              #                          alloc i32 temp_50_array_ele_30 
              #                          alloc i32 temp_51_arithop_30 
              #                          alloc Array:i32:[Some(4_0), Some(2_0)] temp_52_ptr2globl_30 
              #                          alloc ptr->i32 temp_53_array_ptr_30 
              #                          alloc i32 temp_54_array_ele_30 
              #                          alloc i32 temp_55_arithop_30 
              #                          alloc i32 temp_56_arithop_30 
              #                          alloc i32 temp_57_ret_of_search_30 
              #                          alloc i32 temp_58_arithop_30 
              #                          alloc i32 searchResult_30 
              #                          alloc i1 temp_59_cmp_57 
              #                          alloc ptr->i32 temp_60_index_ptr_30 
              #                          alloc i32 temp_61_arithop_30 
              #                          alloc i1 temp_62_cmp_62 
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_8_cmp_23:i1 
              #                          temp_8_cmp_23 = icmp i32 Sgt n_20, 10_0 
              #                    occupy a2 with n_20
              #                    occupy a3 with 10_0
    li      a3, 10
              #                    occupy a4 with temp_8_cmp_23
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_8_cmp_23, label branch_true_24, label branch_false_24 
              #                    occupy a4 with temp_8_cmp_23
              #                    free a4
              #                    occupy a4 with temp_8_cmp_23
    bnez    a4, .branch_true_24
              #                    free a4
    j       .branch_false_24
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } | 
              #                          label branch_true_24: 
.branch_true_24:
              #                          ret 1073741824_0 
              #                    load from ra_search_0 in mem
              #                    occupy a3 with ra_search_0
    li      a3, 3976
    add     a3,sp,a3
    ld      ra,0(a3)
              #                    free a3
              #                    load from s0_search_0 in mem
              #                    occupy a5 with s0_search_0
    li      a5, 3968
    add     a5,sp,a5
    ld      s0,0(a5)
              #                    free a5
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
              #                    occupy a6 with 3984_0
    li      a6, 3984
    li      a6, 3984
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } | 
              #                          label branch_false_24: 
.branch_false_24:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_9_cmp_28:i1 
              #                          temp_9_cmp_28 = icmp i32 Slt i_22, 4_0 
              #                    occupy a5 with i_22
              #                    occupy a6 with 4_0
    li      a6, 4
              #                    occupy a7 with temp_9_cmp_28
    slt     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_9_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a7 with temp_9_cmp_28
              #                    free a7
              #                    occupy a7 with temp_9_cmp_28
    bnez    a7, .while.body_29
              #                    free a7
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } | 
              #                          label while.head_34: 
.while.head_34:
              #                          new_var temp_10_ptr2globl_33:Array:i32:[Some(30_0), Some(30_0)] 
              #                          temp_10_ptr2globl_33 = load *a_0:ptr->Array:i32:[Some(30_0)] 
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
              #                    occupy s4 with temp_10_ptr2globl_33
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          new_var temp_11_array_ptr_33:ptr->i32 
              #                          temp_11_array_ptr_33 = getelementptr temp_10_ptr2globl_33:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy s5 with temp_11_array_ptr_33
    li      s5, 0
              #                    occupy s6 with 30_0
    li      s6, 30
              #                    occupy s1 with x2_30
              #                    occupy s7 with _anonymous_of_temp_10_ptr2globl_33_0
    mul     s7,s6,s1
              #                    free s6
              #                    free s1
    add     s5,s5,s7
              #                    free s7
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s2 with y2_30
              #                    occupy s9 with _anonymous_of_temp_10_ptr2globl_33_0
    mul     s9,s8,s2
              #                    free s8
              #                    free s2
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,328
              #                    free s5
              #                          new_var temp_12_array_ele_33:i32 
              #                          temp_12_array_ele_33 = load temp_11_array_ptr_33:ptr->i32 
              #                    occupy s5 with temp_11_array_ptr_33
              #                    occupy s10 with temp_12_array_ele_33
    lw      s10,0(s5)
              #                    free s10
              #                    free s5
              #                          new_var temp_13_cmp_33:i1 
              #                          temp_13_cmp_33 = icmp i32 Ne temp_12_array_ele_33, 1_0 
              #                    occupy s10 with temp_12_array_ele_33
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    occupy s11 with temp_13_cmp_33
    xor     s11,s10,s8
    snez    s11, s11
              #                    free s10
              #                    free s8
              #                    free s11
              #                          br i1 temp_13_cmp_33, label while.body_34, label while.exit_34 
              #                    occupy s11 with temp_13_cmp_33
              #                    free s11
              #                    occupy s11 with temp_13_cmp_33
    bnez    s11, .while.body_34
              #                    free s11
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } | 
              #                          label while.body_34: 
.while.body_34:
              #                          new_var temp_14_ptr2globl_36:i32 
              #                          temp_14_ptr2globl_36 = load *y_1_0:ptr->i32 
              #                    occupy s3 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      s3, y_1
              #                    occupy reg s3 with *y_1_0
              #                    occupy s6 with temp_14_ptr2globl_36
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_15_cmp_36:i1 
              #                          temp_15_cmp_36 = icmp i32 Eq y2_30, temp_14_ptr2globl_36 
              #                    occupy s2 with y2_30
              #                    occupy s6 with temp_14_ptr2globl_36
              #                    occupy s7 with temp_15_cmp_36
    xor     s7,s2,s6
    seqz    s7, s7
              #                    free s2
              #                    free s6
              #                    free s7
              #                          new_var temp_16_ptr2globl_36:i32 
              #                          temp_16_ptr2globl_36 = load *x_1_0:ptr->i32 
              #                    occupy s8 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      s8, x_1
              #                    occupy reg s8 with *x_1_0
              #                    occupy s9 with temp_16_ptr2globl_36
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_17_cmp_36:i1 
              #                          temp_17_cmp_36 = icmp i32 Eq x2_30, temp_16_ptr2globl_36 
              #                    occupy s1 with x2_30
              #                    occupy s9 with temp_16_ptr2globl_36
              #                    occupy s3 with temp_17_cmp_36
    xor     s3,s1,s9
    seqz    s3, s3
              #                    free s1
              #                    free s9
              #                    free s3
              #                          new_var temp_18_logic_36:i1 
              #                          temp_18_logic_36 = And i1 temp_17_cmp_36, temp_15_cmp_36 
              #                    occupy s3 with temp_17_cmp_36
              #                    occupy s7 with temp_15_cmp_36
              #                    occupy s8 with temp_18_logic_36
    and     s8,s3,s7
              #                    free s3
              #                    free s7
              #                    free s8
              #                          br i1 temp_18_logic_36, label branch_true_37, label branch_false_37 
              #                    occupy s8 with temp_18_logic_36
              #                    free s8
              #                    store to n_20 in mem offset_illegal
              #                    occupy a2 with 3956_0
    li      a2, 3956
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with n_20
              #                    occupy s8 with temp_18_logic_36
    bnez    s8, .branch_true_37
              #                    free s8
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_17_cmp_36, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s7:Freed { symidx: temp_15_cmp_36, tracked: true } |     s8:Freed { symidx: temp_18_logic_36, tracked: true } |     s9:Freed { symidx: temp_16_ptr2globl_36, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          jump label: while.exit_34 
              #                    store to temp_17_cmp_36 in mem offset legal
    sb      s3,299(sp)
              #                    release s3 with temp_17_cmp_36
              #                    store to temp_18_logic_36 in mem offset legal
    sb      s8,298(sp)
              #                    release s8 with temp_18_logic_36
              #                    store to temp_14_ptr2globl_36 in mem offset legal
    sw      s6,308(sp)
              #                    release s6 with temp_14_ptr2globl_36
              #                    store to temp_16_ptr2globl_36 in mem offset legal
    sw      s9,300(sp)
              #                    release s9 with temp_16_ptr2globl_36
              #                    store to temp_15_cmp_36 in mem offset legal
    sb      s7,307(sp)
              #                    release s7 with temp_15_cmp_36
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem

              #                    occupy s3 with n_20
    li      s3, 3956
    add     s3,sp,s3
    lw      a2,0(s3)
              #                    free s3
              #                    store to n_20 in mem offset_illegal
              #                    occupy s3 with 3956_0
    li      s3, 3956
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with n_20
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } | 
              #                          label while.exit_34: 
.while.exit_34:
              #                          new_var temp_28_ptr2globl_42:i32 
              #                          temp_28_ptr2globl_42 = load *y_1_0:ptr->i32 
              #                    occupy s3 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      s3, y_1
              #                    occupy reg s3 with *y_1_0
              #                    occupy s6 with temp_28_ptr2globl_42
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_29_cmp_42:i1 
              #                          temp_29_cmp_42 = icmp i32 Eq y2_30, temp_28_ptr2globl_42 
              #                    occupy s2 with y2_30
              #                    occupy s6 with temp_28_ptr2globl_42
              #                    occupy s7 with temp_29_cmp_42
    xor     s7,s2,s6
    seqz    s7, s7
              #                    free s2
              #                    free s6
              #                    free s7
              #                          new_var temp_30_ptr2globl_42:i32 
              #                          temp_30_ptr2globl_42 = load *x_1_0:ptr->i32 
              #                    occupy s8 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      s8, x_1
              #                    occupy reg s8 with *x_1_0
              #                    occupy s9 with temp_30_ptr2globl_42
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_31_cmp_42:i1 
              #                          temp_31_cmp_42 = icmp i32 Eq x2_30, temp_30_ptr2globl_42 
              #                    occupy s1 with x2_30
              #                    occupy s9 with temp_30_ptr2globl_42
              #                    occupy s3 with temp_31_cmp_42
    xor     s3,s1,s9
    seqz    s3, s3
              #                    free s1
              #                    free s9
              #                    free s3
              #                          new_var temp_32_logic_42:i1 
              #                          temp_32_logic_42 = And i1 temp_31_cmp_42, temp_29_cmp_42 
              #                    occupy s3 with temp_31_cmp_42
              #                    occupy s7 with temp_29_cmp_42
              #                    occupy s8 with temp_32_logic_42
    and     s8,s3,s7
              #                    free s3
              #                    free s7
              #                    free s8
              #                          br i1 temp_32_logic_42, label branch_true_43, label branch_false_43 
              #                    occupy s8 with temp_32_logic_42
              #                    free s8
              #                    store to n_20 in mem offset_illegal
              #                    occupy a2 with 3956_0
    li      a2, 3956
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with n_20
              #                    occupy s8 with temp_32_logic_42
    bnez    s8, .branch_true_43
              #                    free s8
    j       .branch_false_43
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_true_43: 
.branch_true_43:
              #                          ret 1_0 
              #                    load from ra_search_0 in mem
              #                    occupy a2 with ra_search_0
    li      a2, 3976
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_search_0 in mem
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with s0_search_0
    li      a0, 3968
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to s0_search_0 in mem offset_illegal
              #                    occupy a0 with 3968_0
    li      a0, 3968
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_search_0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to y_20 in mem offset_illegal
              #                    occupy a1 with 3960_0
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_20
              #                    occupy a1 with 3984_0
    li      a1, 3984
    li      a1, 3984
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_false_43: 
.branch_false_43:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_33_cmp_45:i1 
              #                          temp_33_cmp_45 = icmp i32 Sle coun_30, 1_0 
              #                    occupy a6 with coun_30
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with temp_33_cmp_45
    slt     a0,a2,a6
    xori    a0,a0,1
              #                    free a6
              #                    free a2
              #                    free a0
              #                          br i1 temp_33_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy a0 with temp_33_cmp_45
              #                    free a0
              #                    occupy a0 with temp_33_cmp_45
    bnez    a0, .branch_true_46
              #                    free a0
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: temp_33_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          new_var temp_34_arithop_47:i32 
              #                          temp_34_arithop_47 = Add i32 i_22, 1_0 
              #                    occupy a5 with i_22
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_33_cmp_45 in mem offset legal
    sb      a0,181(sp)
              #                    release a0 with temp_33_cmp_45
              #                    occupy a0 with temp_34_arithop_47
    add     a0,a5,a2
              #                    free a5
              #                    free a2
              #                    free a0
              #                          i_22 = i32 temp_34_arithop_47 
              #                    occupy a0 with temp_34_arithop_47
              #                    occupy a5 with i_22
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.exit_34 
              #                    store to temp_31_cmp_42 in mem offset legal
    sb      s3,183(sp)
              #                    release s3 with temp_31_cmp_42
              #                    store to temp_32_logic_42 in mem offset legal
    sb      s8,182(sp)
              #                    release s8 with temp_32_logic_42
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s6,192(sp)
              #                    release s6 with temp_28_ptr2globl_42
              #                    store to temp_34_arithop_47 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_34_arithop_47
              #                    store to temp_30_ptr2globl_42 in mem offset legal
    sw      s9,184(sp)
              #                    release s9 with temp_30_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s7,191(sp)
              #                    release s7 with temp_29_cmp_42
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem

              #                    occupy a0 with n_20
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    store to n_20 in mem offset_illegal
              #                    occupy a0 with 3956_0
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with n_20
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem

              #                    occupy s3 with x_20
    li      s3, 3964
    add     s3,sp,s3
    lw      a0,0(s3)
              #                    free s3
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: temp_33_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: temp_33_cmp_45, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_35_ptr2globl_50:i32 
              #                          temp_35_ptr2globl_50 = load *w_0:ptr->i32 
              #                    occupy a2 with *w_0
              #                       load label w as ptr to reg
    la      a2, w
              #                    occupy reg a2 with *w_0
              #                    store to temp_33_cmp_45 in mem offset legal
    sb      a0,181(sp)
              #                    release a0 with temp_33_cmp_45
              #                    occupy a0 with temp_35_ptr2globl_50
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_36_arithop_50:i32 
              #                          temp_36_arithop_50 = Add i32 temp_35_ptr2globl_50, 1_0 
              #                    occupy a0 with temp_35_ptr2globl_50
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to y_20 in mem offset_illegal
              #                    occupy a1 with 3960_0
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_20
              #                    occupy a1 with temp_36_arithop_50
    add     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_37_cmp_50:i1 
              #                          temp_37_cmp_50 = icmp i32 Eq y2_30, temp_36_arithop_50 
              #                    occupy s2 with y2_30
              #                    occupy a1 with temp_36_arithop_50
              #                    occupy a2 with temp_37_cmp_50
    xor     a2,s2,a1
    seqz    a2, a2
              #                    free s2
              #                    free a1
              #                    free a2
              #                          new_var temp_38_cmp_50:i1 
              #                          temp_38_cmp_50 = icmp i32 Eq y2_30, 0_0 
              #                    occupy s2 with y2_30
              #                    store to temp_35_ptr2globl_50 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_35_ptr2globl_50
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_36_arithop_50 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with temp_36_arithop_50
              #                    occupy a1 with temp_38_cmp_50
    xor     a1,s2,a0
    seqz    a1, a1
              #                    free s2
              #                    free a0
              #                    free a1
              #                          new_var temp_39_logic_50:i1 
              #                          temp_39_logic_50 = Or i1 temp_38_cmp_50, temp_37_cmp_50 
              #                    occupy a1 with temp_38_cmp_50
              #                    occupy a2 with temp_37_cmp_50
              #                    occupy a2 with temp_37_cmp_50
              #                    free a1
              #                    free a2
              #                    free a2
              #                          new_var temp_40_ptr2globl_50:i32 
              #                          temp_40_ptr2globl_50 = load *h_0:ptr->i32 
              #                    occupy a0 with *h_0
              #                       load label h as ptr to reg
    la      a0, h
              #                    occupy reg a0 with *h_0
              #                    store to temp_38_cmp_50 in mem offset legal
    sb      a1,166(sp)
              #                    release a1 with temp_38_cmp_50
              #                    occupy a1 with temp_40_ptr2globl_50
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_41_arithop_50:i32 
              #                          temp_41_arithop_50 = Add i32 temp_40_ptr2globl_50, 1_0 
              #                    occupy a1 with temp_40_ptr2globl_50
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_37_cmp_50 in mem offset legal
    sb      a2,167(sp)
              #                    release a2 with temp_37_cmp_50
              #                    occupy a2 with temp_41_arithop_50
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_42_cmp_50:i1 
              #                          temp_42_cmp_50 = icmp i32 Eq x2_30, temp_41_arithop_50 
              #                    occupy s1 with x2_30
              #                    occupy a2 with temp_41_arithop_50
              #                    occupy a0 with temp_42_cmp_50
    xor     a0,s1,a2
    seqz    a0, a0
              #                    free s1
              #                    free a2
              #                    free a0
              #                          new_var temp_43_logic_50:i1 
              #                          temp_43_logic_50 = Or i1 temp_42_cmp_50, temp_39_logic_50 
              #                    occupy a0 with temp_42_cmp_50
              #                    store to temp_40_ptr2globl_50 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with temp_40_ptr2globl_50
              #                    occupy a1 with temp_39_logic_50
              #                    load from temp_39_logic_50 in mem
    lb      a1,165(sp)
              #                    occupy a1 with temp_39_logic_50
              #                    free a0
              #                    free a1
              #                    free a1
              #                          new_var temp_44_cmp_50:i1 
              #                          temp_44_cmp_50 = icmp i32 Eq x2_30, 0_0 
              #                    occupy s1 with x2_30
              #                    store to temp_42_cmp_50 in mem offset legal
    sb      a0,155(sp)
              #                    release a0 with temp_42_cmp_50
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    store to temp_39_logic_50 in mem offset legal
    sb      a1,165(sp)
              #                    release a1 with temp_39_logic_50
              #                    occupy a1 with temp_44_cmp_50
    xor     a1,s1,a0
    seqz    a1, a1
              #                    free s1
              #                    free a0
              #                    free a1
              #                          new_var temp_45_logic_50:i1 
              #                          temp_45_logic_50 = Or i1 temp_44_cmp_50, temp_43_logic_50 
              #                    occupy a1 with temp_44_cmp_50
              #                    occupy a0 with temp_43_logic_50
              #                    load from temp_43_logic_50 in mem
    lb      a0,154(sp)
              #                    occupy a0 with temp_43_logic_50
              #                    free a1
              #                    free a0
              #                    free a0
              #                          br i1 temp_45_logic_50, label branch_true_51, label branch_false_51 
              #                    store to temp_43_logic_50 in mem offset legal
    sb      a0,154(sp)
              #                    release a0 with temp_43_logic_50
              #                    occupy a0 with temp_45_logic_50
              #                    load from temp_45_logic_50 in mem
    lb      a0,152(sp)
              #                    free a0
              #                    store to temp_41_arithop_50 in mem offset legal
    sw      a2,156(sp)
              #                    release a2 with temp_41_arithop_50
              #                    occupy a0 with temp_45_logic_50
    bnez    a0, .branch_true_51
              #                    free a0
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_45_logic_50, tracked: true } |     a1:Freed { symidx: temp_44_cmp_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var temp_46_arithop_52:i32 
              #                          temp_46_arithop_52 = Add i32 i_22, 1_0 
              #                    occupy a5 with i_22
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_45_logic_50 in mem offset legal
    sb      a0,152(sp)
              #                    release a0 with temp_45_logic_50
              #                    occupy a0 with temp_46_arithop_52
    add     a0,a5,a2
              #                    free a5
              #                    free a2
              #                    free a0
              #                          i_22 = i32 temp_46_arithop_52 
              #                    occupy a0 with temp_46_arithop_52
              #                    occupy a5 with i_22
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.exit_34 
              #                    store to temp_31_cmp_42 in mem offset legal
    sb      s3,183(sp)
              #                    release s3 with temp_31_cmp_42
              #                    store to temp_32_logic_42 in mem offset legal
    sb      s8,182(sp)
              #                    release s8 with temp_32_logic_42
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s6,192(sp)
              #                    release s6 with temp_28_ptr2globl_42
              #                    store to temp_44_cmp_50 in mem offset legal
    sb      a1,153(sp)
              #                    release a1 with temp_44_cmp_50
              #                    store to temp_46_arithop_52 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_46_arithop_52
              #                    store to temp_30_ptr2globl_42 in mem offset legal
    sw      s9,184(sp)
              #                    release s9 with temp_30_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s7,191(sp)
              #                    release s7 with temp_29_cmp_42
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem

              #                    occupy a0 with n_20
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem

              #                    occupy s3 with y_20
    li      s3, 3960
    add     s3,sp,s3
    lw      a1,0(s3)
              #                    free s3
              #                    store to n_20 in mem offset_illegal
              #                    occupy a0 with 3956_0
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with n_20
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem

              #                    occupy s6 with x_20
    li      s6, 3964
    add     s6,sp,s6
    lw      a0,0(s6)
              #                    free s6
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: temp_45_logic_50, tracked: true } |     a1:Freed { symidx: temp_44_cmp_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_45_logic_50, tracked: true } |     a1:Freed { symidx: temp_44_cmp_50, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_47_index_ptr_30:ptr->i32 
              #                          temp_47_index_ptr_30 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy a2 with temp_47_index_ptr_30
    li      a2, 0
              #                    store to temp_45_logic_50 in mem offset legal
    sb      a0,152(sp)
              #                    release a0 with temp_45_logic_50
              #                    occupy a0 with 30_0
    li      a0, 30
              #                    occupy s1 with x2_30
              #                    store to temp_44_cmp_50 in mem offset legal
    sb      a1,153(sp)
              #                    release a1 with temp_44_cmp_50
              #                    occupy a1 with _anonymous_of_a_0_0
    mul     a1,a0,s1
              #                    free a0
              #                    free s1
    add     a2,a2,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s2 with y2_30
              #                    occupy a1 with _anonymous_of_a_0_0
    mul     a1,a0,s2
              #                    free a0
              #                    free s2
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_a_0_0
    la      a0, a
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store 0_0:i32 temp_47_index_ptr_30:ptr->i32 
              #                    occupy a2 with temp_47_index_ptr_30
              #                    occupy a0 with 0_0
    li      a0, 0
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu a_0:236 
              #                          a_0 = chi a_0:236 
              #                          new_var temp_48_ptr2globl_30:Array:i32:[Some(4_0), Some(2_0)] 
              #                          temp_48_ptr2globl_30 = load *step_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with *step_0
              #                       load label step as ptr to reg
    la      a0, step
              #                    occupy reg a0 with *step_0
              #                    occupy a1 with temp_48_ptr2globl_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_49_array_ptr_30:ptr->i32 
              #                          temp_49_array_ptr_30 = getelementptr temp_48_ptr2globl_30:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(0_0)] 
              #                    occupy a0 with temp_49_array_ptr_30
    li      a0, 0
              #                    store to temp_48_ptr2globl_30 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_48_ptr2globl_30
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a5 with i_22
              #                    store to temp_47_index_ptr_30 in mem offset legal
    sd      a2,136(sp)
              #                    release a2 with temp_47_index_ptr_30
              #                    occupy a2 with _anonymous_of_temp_48_ptr2globl_30_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    store to num_22 in mem offset_illegal
              #                    occupy a3 with 3948_0
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with num_22
              #                    occupy a3 with _anonymous_of_temp_48_ptr2globl_30_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,104
              #                    free a0
              #                          new_var temp_50_array_ele_30:i32 
              #                          temp_50_array_ele_30 = load temp_49_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_49_array_ptr_30
              #                    occupy a1 with temp_50_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_51_arithop_30:i32 
              #                          temp_51_arithop_30 = Sub i32 x2_30, temp_50_array_ele_30 
              #                    occupy s1 with x2_30
              #                    occupy a1 with temp_50_array_ele_30
              #                    occupy a2 with temp_51_arithop_30
              #                    regtab:    a0:Freed { symidx: temp_49_array_ptr_30, tracked: true } |     a1:Occupied { symidx: temp_50_array_ele_30, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_51_arithop_30, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: _anonymous_of_temp_48_ptr2globl_30_0, tracked: false } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Occupied { symidx: x2_30, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 


    sub     a2,s1,a1
              #                    free s1
              #                    free a1
              #                    free a2
              #                          new_var temp_52_ptr2globl_30:Array:i32:[Some(4_0), Some(2_0)] 
              #                          temp_52_ptr2globl_30 = load *step_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with *step_0
              #                       load label step as ptr to reg
    la      a3, step
              #                    occupy reg a3 with *step_0
              #                    store to temp_49_array_ptr_30 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_49_array_ptr_30
              #                    occupy a0 with temp_52_ptr2globl_30
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_53_array_ptr_30:ptr->i32 
              #                          temp_53_array_ptr_30 = getelementptr temp_52_ptr2globl_30:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(1_0)] 
              #                    occupy a3 with temp_53_array_ptr_30
    li      a3, 0
              #                    store to temp_52_ptr2globl_30 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_52_ptr2globl_30
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a5 with i_22
              #                    store to temp_50_array_ele_30 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with temp_50_array_ele_30
              #                    occupy a1 with _anonymous_of_temp_52_ptr2globl_30_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a3,a3,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_51_arithop_30 in mem offset legal
    sw      a2,88(sp)
              #                    release a2 with temp_51_arithop_30
              #                    occupy a2 with _anonymous_of_temp_52_ptr2globl_30_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,56
              #                    free a3
              #                          new_var temp_54_array_ele_30:i32 
              #                          temp_54_array_ele_30 = load temp_53_array_ptr_30:ptr->i32 
              #                    occupy a3 with temp_53_array_ptr_30
              #                    occupy a0 with temp_54_array_ele_30
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_55_arithop_30:i32 
              #                          temp_55_arithop_30 = Sub i32 y2_30, temp_54_array_ele_30 
              #                    occupy s2 with y2_30
              #                    occupy a0 with temp_54_array_ele_30
              #                    occupy a1 with temp_55_arithop_30
              #                    regtab:    a0:Occupied { symidx: temp_54_array_ele_30, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_55_arithop_30, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: _anonymous_of_temp_52_ptr2globl_30_0, tracked: false } |     a3:Freed { symidx: temp_53_array_ptr_30, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Occupied { symidx: y2_30, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: temp_31_cmp_42, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_42, tracked: true } |     s7:Freed { symidx: temp_29_cmp_42, tracked: true } |     s8:Freed { symidx: temp_32_logic_42, tracked: true } |     s9:Freed { symidx: temp_30_ptr2globl_42, tracked: true } | 


    sub     a1,s2,a0
              #                    free s2
              #                    free a0
              #                    free a1
              #                          new_var temp_56_arithop_30:i32 
              #                          temp_56_arithop_30 = Add i32 n_20, 1_0 
              #                    occupy a2 with n_20
              #                    load from n_20 in mem

              #                    occupy a2 with n_20
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_54_array_ele_30 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_54_array_ele_30
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_55_arithop_30 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_55_arithop_30
              #                    occupy a1 with temp_56_arithop_30
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_57_ret_of_search_30:i32 
              #                          temp_57_ret_of_search_30 =  Call i32 search_0(temp_51_arithop_30, temp_55_arithop_30, temp_56_arithop_30) 
              #                    saved register dumping to mem
              #                    store to x2_30 in mem offset_illegal
              #                    occupy s1 with 3932_0
    li      s1, 3932
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with x2_30
              #                    store to y2_30 in mem offset_illegal
              #                    occupy s1 with 3928_0
    li      s1, 3928
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with y2_30
              #                    store to temp_31_cmp_42 in mem offset legal
    sb      s3,183(sp)
              #                    release s3 with temp_31_cmp_42
              #                    store to temp_10_ptr2globl_33 in mem offset legal
    sw      s4,328(sp)
              #                    release s4 with temp_10_ptr2globl_33
              #                    store to temp_11_array_ptr_33 in mem offset legal
    sd      s5,320(sp)
              #                    release s5 with temp_11_array_ptr_33
              #                    store to temp_28_ptr2globl_42 in mem offset legal
    sw      s6,192(sp)
              #                    release s6 with temp_28_ptr2globl_42
              #                    store to temp_29_cmp_42 in mem offset legal
    sb      s7,191(sp)
              #                    release s7 with temp_29_cmp_42
              #                    store to temp_32_logic_42 in mem offset legal
    sb      s8,182(sp)
              #                    release s8 with temp_32_logic_42
              #                    store to temp_30_ptr2globl_42 in mem offset legal
    sw      s9,184(sp)
              #                    release s9 with temp_30_ptr2globl_42
              #                    store to temp_12_array_ele_33 in mem offset legal
    sw      s10,316(sp)
              #                    release s10 with temp_12_array_ele_33
              #                    store to temp_13_cmp_33 in mem offset legal
    sb      s11,315(sp)
              #                    release s11 with temp_13_cmp_33
              #                    store to temp_56_arithop_30 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_56_arithop_30
              #                    store to n_20 in mem offset_illegal
              #                    occupy a0 with 3956_0
    li      a0, 3956
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with n_20
              #                    store to temp_53_array_ptr_30 in mem offset legal
    sd      a3,48(sp)
              #                    release a3 with temp_53_array_ptr_30
              #                    store to temp_8_cmp_23 in mem offset_illegal
              #                    occupy a1 with 3955_0
    li      a1, 3955
    add     a1,sp,a1
    sb      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_8_cmp_23
              #                    store to i_22 in mem offset_illegal
              #                    occupy a2 with 3944_0
    li      a2, 3944
    add     a2,sp,a2
    sw      a5,0(a2)
              #                    free a2
              #                    release a5 with i_22
              #                    store to coun_30 in mem offset_illegal
              #                    occupy a3 with 3936_0
    li      a3, 3936
    add     a3,sp,a3
    sw      a6,0(a3)
              #                    free a3
              #                    release a6 with coun_30
              #                    store to temp_9_cmp_28 in mem offset_illegal
              #                    occupy a4 with 3943_0
    li      a4, 3943
    add     a4,sp,a4
    sb      a7,0(a4)
              #                    free a4
              #                    release a7 with temp_9_cmp_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_51_arithop_30_0
              #                    load from temp_51_arithop_30 in mem


    lw      a0,88(sp)
              #                    occupy a1 with _anonymous_of_temp_55_arithop_30_0
              #                    load from temp_55_arithop_30 in mem


    lw      a1,40(sp)
              #                    occupy a2 with _anonymous_of_temp_56_arithop_30_0
              #                    load from temp_56_arithop_30 in mem


    lw      a2,36(sp)
              #                    arg load ended


    call    search
              #                    store to temp_57_ret_of_search_30 in mem offset legal
    sw      a0,32(sp)
              #                          new_var temp_58_arithop_30:i32 
              #                          temp_58_arithop_30 = Add i32 temp_57_ret_of_search_30, 1_0 
              #                    occupy a0 with temp_57_ret_of_search_30
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_58_arithop_30
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          searchResult_30 = i32 temp_58_arithop_30 
              #                    occupy a2 with temp_58_arithop_30
              #                    occupy a5 with searchResult_30
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_search_30, tracked: true } |     a2:Freed { symidx: temp_58_arithop_30, tracked: true } |     a5:Freed { symidx: searchResult_30, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_59_cmp_57:i1 
              #                          temp_59_cmp_57 = icmp i32 Slt searchResult_30, num_22 
              #                    occupy a5 with searchResult_30
              #                    occupy a1 with num_22
              #                    load from num_22 in mem

              #                    occupy a1 with num_22
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a3 with temp_59_cmp_57
    slt     a3,a5,a1
              #                    free a5
              #                    free a1
              #                    free a3
              #                          br i1 temp_59_cmp_57, label branch_true_58, label branch_false_58 
              #                    occupy a3 with temp_59_cmp_57
              #                    free a3
              #                    occupy a3 with temp_59_cmp_57
    bnez    a3, .branch_true_58
              #                    free a3
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_58_arithop_30, tracked: true } |     a3:Freed { symidx: temp_59_cmp_57, tracked: true } |     a5:Freed { symidx: searchResult_30, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                          num_22 = i32 searchResult_30 
              #                    occupy a5 with searchResult_30
              #                    occupy a1 with num_22
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: branch_false_58 
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_58_arithop_30, tracked: true } |     a3:Freed { symidx: temp_59_cmp_57, tracked: true } |     a5:Freed { symidx: searchResult_30, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_search_30, tracked: true } |     a1:Freed { symidx: num_22, tracked: true } |     a2:Freed { symidx: temp_58_arithop_30, tracked: true } |     a3:Freed { symidx: temp_59_cmp_57, tracked: true } |     a5:Freed { symidx: searchResult_30, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_60_index_ptr_30:ptr->i32 
              #                          temp_60_index_ptr_30 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(x2_30), Some(y2_30)] 
              #                    occupy a4 with temp_60_index_ptr_30
    li      a4, 0
              #                    occupy a6 with 30_0
    li      a6, 30
              #                    occupy a7 with x2_30
              #                    load from x2_30 in mem

              #                    occupy a7 with x2_30
    add     a7,sp,a7
    lw      a7,0(a7)
              #                    free a7
              #                    occupy s1 with _anonymous_of_a_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s1
              #                    free s1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with y2_30
              #                    load from y2_30 in mem

              #                    occupy s3 with y2_30
    add     s3,sp,s3
    lw      s3,0(s3)
              #                    free s3
              #                    occupy s4 with _anonymous_of_a_0_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     a4,a4,s4
              #                    free s4
    slli a4,a4,2
              #                    occupy s5 with _anonymous_of_a_0_0
    la      s5, a
    add     a4,a4,s5
              #                    free s5
              #                    free a4
              #                          store 1_0:i32 temp_60_index_ptr_30:ptr->i32 
              #                    occupy a4 with temp_60_index_ptr_30
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
    sw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          mu a_0:284 
              #                          a_0 = chi a_0:284 
              #                          new_var temp_61_arithop_30:i32 
              #                          temp_61_arithop_30 = Add i32 i_22, 1_0 
              #                    occupy s6 with i_22
              #                    load from i_22 in mem

              #                    occupy s6 with i_22
    add     s6,sp,s6
    lw      s6,0(s6)
              #                    free s6
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s7 with temp_61_arithop_30
    add     s7,s6,s2
              #                    free s6
              #                    free s2
              #                    free s7
              #                          i_22 = i32 temp_61_arithop_30 
              #                    occupy s7 with temp_61_arithop_30
              #                    occupy s6 with i_22
    mv      s6, s7
              #                    free s7
              #                    free s6
              #                          jump label: while.head_29 
              #                    store to temp_58_arithop_30 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_58_arithop_30
              #                    store to y2_30 in mem offset_illegal
              #                    occupy a2 with 3928_0
    li      a2, 3928
    add     a2,sp,a2
    sw      s3,0(a2)
              #                    free a2
              #                    release s3 with y2_30
              #                    store to x2_30 in mem offset_illegal
              #                    occupy a6 with 3932_0
    li      a6, 3932
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with x2_30
              #                    store to i_22 in mem offset_illegal
              #                    occupy a7 with 3944_0
    li      a7, 3944
    add     a7,sp,a7
    sw      s6,0(a7)
              #                    free a7
              #                    release s6 with i_22
              #                    store to temp_59_cmp_57 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_59_cmp_57
              #                    store to searchResult_30 in mem offset legal
    sw      a5,24(sp)
              #                    release a5 with searchResult_30
              #                    store to num_22 in mem offset_illegal
              #                    occupy a1 with 3948_0
    li      a1, 3948
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with num_22
              #                    store to temp_57_ret_of_search_30 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_57_ret_of_search_30
              #                    store to temp_61_arithop_30 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_61_arithop_30
              #                    store to temp_60_index_ptr_30 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_60_index_ptr_30
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem

              #                    occupy a0 with n_20
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    occupy a3 with _anonymous_of_num_22_0
              #                    load from num_22 in mem

              #                    occupy a1 with num_22
    li      a1, 3948
    add     a1,sp,a1
    lw      a3,0(a1)
              #                    free a1
              #                    occupy a5 with _anonymous_of_i_22_0
              #                    load from i_22 in mem

              #                    occupy a4 with i_22
    li      a4, 3944
    add     a4,sp,a4
    lw      a5,0(a4)
              #                    free a4
              #                    store to num_22 in mem offset_illegal
              #                    occupy a1 with 3948_0
    li      a1, 3948
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with num_22
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem

              #                    occupy a6 with y_20
    li      a6, 3960
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    store to n_20 in mem offset_illegal
              #                    occupy a0 with 3956_0
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with n_20
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem

              #                    occupy a7 with x_20
    li      a7, 3964
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    store to i_22 in mem offset_illegal
              #                    occupy a4 with 3944_0
    li      a4, 3944
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with i_22
              #                    occupy a4 with _anonymous_of_temp_8_cmp_23_0
              #                    load from temp_8_cmp_23 in mem
              #                    occupy s1 with temp_8_cmp_23
    li      s1, 3955
    add     s1,sp,s1
    lb      a4,0(s1)
              #                    free s1
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_17_cmp_36, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s7:Freed { symidx: temp_15_cmp_36, tracked: true } |     s8:Freed { symidx: temp_18_logic_36, tracked: true } |     s9:Freed { symidx: temp_16_ptr2globl_36, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: coun_30, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s10:Freed { symidx: temp_12_array_ele_33, tracked: true } |     s11:Freed { symidx: temp_13_cmp_33, tracked: true } |     s1:Freed { symidx: x2_30, tracked: true } |     s2:Freed { symidx: y2_30, tracked: true } |     s3:Freed { symidx: temp_17_cmp_36, tracked: true } |     s4:Freed { symidx: temp_10_ptr2globl_33, tracked: true } |     s5:Freed { symidx: temp_11_array_ptr_33, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_36, tracked: true } |     s7:Freed { symidx: temp_15_cmp_36, tracked: true } |     s8:Freed { symidx: temp_18_logic_36, tracked: true } |     s9:Freed { symidx: temp_16_ptr2globl_36, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_19_ptr2globl_35:Array:i32:[Some(4_0), Some(2_0)] 
              #                          temp_19_ptr2globl_35 = load *step_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a2 with *step_0
              #                       load label step as ptr to reg
    la      a2, step
              #                    occupy reg a2 with *step_0
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with temp_19_ptr2globl_35
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_20_array_ptr_35:ptr->i32 
              #                          temp_20_array_ptr_35 = getelementptr temp_19_ptr2globl_35:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(0_0)] 
              #                    occupy a2 with temp_20_array_ptr_35
    li      a2, 0
              #                    store to temp_19_ptr2globl_35 in mem offset legal
    sw      a0,264(sp)
              #                    release a0 with temp_19_ptr2globl_35
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a5 with i_22
              #                    store to y_20 in mem offset_illegal
              #                    occupy a1 with 3960_0
    li      a1, 3960
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with y_20
              #                    occupy a1 with _anonymous_of_temp_19_ptr2globl_35_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a2,a2,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    store to num_22 in mem offset_illegal
              #                    occupy a3 with 3948_0
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with num_22
              #                    occupy a3 with _anonymous_of_temp_19_ptr2globl_35_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,264
              #                    free a2
              #                          new_var temp_21_array_ele_35:i32 
              #                          temp_21_array_ele_35 = load temp_20_array_ptr_35:ptr->i32 
              #                    occupy a2 with temp_20_array_ptr_35
              #                    occupy a0 with temp_21_array_ele_35
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_22_arithop_35:i32 
              #                          temp_22_arithop_35 = Add i32 x2_30, temp_21_array_ele_35 
              #                    occupy s1 with x2_30
              #                    occupy a0 with temp_21_array_ele_35
              #                    occupy a1 with temp_22_arithop_35
    add     a1,s1,a0
              #                    free s1
              #                    free a0
              #                    free a1
              #                          x2_30 = i32 temp_22_arithop_35 
              #                    occupy a1 with temp_22_arithop_35
              #                    occupy s1 with x2_30
    mv      s1, a1
              #                    free a1
              #                    free s1
              #                          new_var temp_23_ptr2globl_35:Array:i32:[Some(4_0), Some(2_0)] 
              #                          temp_23_ptr2globl_35 = load *step_0:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a3 with *step_0
              #                       load label step as ptr to reg
    la      a3, step
              #                    occupy reg a3 with *step_0
              #                    store to temp_21_array_ele_35 in mem offset legal
    sw      a0,252(sp)
              #                    release a0 with temp_21_array_ele_35
              #                    occupy a0 with temp_23_ptr2globl_35
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_24_array_ptr_35:ptr->i32 
              #                          temp_24_array_ptr_35 = getelementptr temp_23_ptr2globl_35:Array:i32:[Some(4_0), Some(2_0)] [Some(i_22), Some(1_0)] 
              #                    occupy a3 with temp_24_array_ptr_35
    li      a3, 0
              #                    store to temp_23_ptr2globl_35 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with temp_23_ptr2globl_35
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a5 with i_22
              #                    store to temp_22_arithop_35 in mem offset legal
    sw      a1,248(sp)
              #                    release a1 with temp_22_arithop_35
              #                    occupy a1 with _anonymous_of_temp_23_ptr2globl_35_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a3,a3,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_20_array_ptr_35 in mem offset legal
    sd      a2,256(sp)
              #                    release a2 with temp_20_array_ptr_35
              #                    occupy a2 with _anonymous_of_temp_23_ptr2globl_35_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,216
              #                    free a3
              #                          new_var temp_25_array_ele_35:i32 
              #                          temp_25_array_ele_35 = load temp_24_array_ptr_35:ptr->i32 
              #                    occupy a3 with temp_24_array_ptr_35
              #                    occupy a0 with temp_25_array_ele_35
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_26_arithop_35:i32 
              #                          temp_26_arithop_35 = Add i32 y2_30, temp_25_array_ele_35 
              #                    occupy s2 with y2_30
              #                    occupy a0 with temp_25_array_ele_35
              #                    occupy a1 with temp_26_arithop_35
    add     a1,s2,a0
              #                    free s2
              #                    free a0
              #                    free a1
              #                          y2_30 = i32 temp_26_arithop_35 
              #                    occupy a1 with temp_26_arithop_35
              #                    occupy s2 with y2_30
    mv      s2, a1
              #                    free a1
              #                    free s2
              #                          new_var temp_27_arithop_35:i32 
              #                          temp_27_arithop_35 = Add i32 coun_30, 1_0 
              #                    occupy a6 with coun_30
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to temp_25_array_ele_35 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_25_array_ele_35
              #                    occupy a0 with temp_27_arithop_35
    add     a0,a6,a2
              #                    free a6
              #                    free a2
              #                    free a0
              #                          coun_30 = i32 temp_27_arithop_35 
              #                    occupy a0 with temp_27_arithop_35
              #                    occupy a6 with coun_30
    mv      a6, a0
              #                    free a0
              #                    free a6
              #                          jump label: while.head_34 
              #                    store to temp_17_cmp_36 in mem offset legal
    sb      s3,299(sp)
              #                    release s3 with temp_17_cmp_36
              #                    store to temp_12_array_ele_33 in mem offset legal
    sw      s10,316(sp)
              #                    release s10 with temp_12_array_ele_33
              #                    store to temp_11_array_ptr_33 in mem offset legal
    sd      s5,320(sp)
              #                    release s5 with temp_11_array_ptr_33
              #                    store to temp_18_logic_36 in mem offset legal
    sb      s8,298(sp)
              #                    release s8 with temp_18_logic_36
              #                    store to temp_14_ptr2globl_36 in mem offset legal
    sw      s6,308(sp)
              #                    release s6 with temp_14_ptr2globl_36
              #                    store to temp_24_array_ptr_35 in mem offset legal
    sd      a3,208(sp)
              #                    release a3 with temp_24_array_ptr_35
              #                    store to temp_26_arithop_35 in mem offset legal
    sw      a1,200(sp)
              #                    release a1 with temp_26_arithop_35
              #                    store to temp_10_ptr2globl_33 in mem offset legal
    sw      s4,328(sp)
              #                    release s4 with temp_10_ptr2globl_33
              #                    store to temp_27_arithop_35 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_27_arithop_35
              #                    store to temp_16_ptr2globl_36 in mem offset legal
    sw      s9,300(sp)
              #                    release s9 with temp_16_ptr2globl_36
              #                    store to temp_15_cmp_36 in mem offset legal
    sb      s7,307(sp)
              #                    release s7 with temp_15_cmp_36
              #                    store to temp_13_cmp_33 in mem offset legal
    sb      s11,315(sp)
              #                    release s11 with temp_13_cmp_33
              #                    occupy a2 with _anonymous_of_n_20_0
              #                    load from n_20 in mem

              #                    occupy a0 with n_20
    li      a0, 3956
    add     a0,sp,a0
    lw      a2,0(a0)
              #                    free a0
              #                    occupy a3 with _anonymous_of_num_22_0
              #                    load from num_22 in mem

              #                    occupy a1 with num_22
    li      a1, 3948
    add     a1,sp,a1
    lw      a3,0(a1)
              #                    free a1
              #                    store to num_22 in mem offset_illegal
              #                    occupy a1 with 3948_0
    li      a1, 3948
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with num_22
              #                    occupy a1 with _anonymous_of_y_20_0
              #                    load from y_20 in mem

              #                    occupy s3 with y_20
    li      s3, 3960
    add     s3,sp,s3
    lw      a1,0(s3)
              #                    free s3
              #                    store to n_20 in mem offset_illegal
              #                    occupy a0 with 3956_0
    li      a0, 3956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with n_20
              #                    occupy a0 with _anonymous_of_x_20_0
              #                    load from x_20 in mem

              #                    occupy s4 with x_20
    li      s4, 3964
    add     s4,sp,s4
    lw      a0,0(s4)
              #                    free s4
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          new_var temp_62_cmp_62:i1 
              #                          temp_62_cmp_62 = icmp i32 Sgt num_22, 10_0 
              #                    occupy a3 with num_22
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy s1 with temp_62_cmp_62
    slt     s1,a6,a3
              #                    free a3
              #                    free a6
              #                    free s1
              #                          br i1 temp_62_cmp_62, label branch_true_63, label branch_false_63 
              #                    occupy s1 with temp_62_cmp_62
              #                    free s1
              #                    occupy s1 with temp_62_cmp_62
    bnez    s1, .branch_true_63
              #                    free s1
    j       .branch_false_63
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s1:Freed { symidx: temp_62_cmp_62, tracked: true } | 
              #                          label branch_true_63: 
.branch_true_63:
              #                          ret 1073741824_0 
              #                    load from ra_search_0 in mem
              #                    occupy a6 with ra_search_0
    li      a6, 3976
    add     a6,sp,a6
    ld      ra,0(a6)
              #                    free a6
              #                    load from s0_search_0 in mem
              #                    occupy s2 with s0_search_0
    li      s2, 3968
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with 1073741824_0
    li      a0, 1073741824
              #                    occupy s3 with 3984_0
    li      s3, 3984
    li      s3, 3984
    add     sp,s3,sp
              #                    free s3
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s1:Freed { symidx: temp_62_cmp_62, tracked: true } | 
              #                          label branch_false_63: 
.branch_false_63:
              #                    regtab     a0:Freed { symidx: x_20, tracked: true } |     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s1:Freed { symidx: temp_62_cmp_62, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          ret num_22 
              #                    load from ra_search_0 in mem
              #                    occupy a6 with ra_search_0
    li      a6, 3976
    add     a6,sp,a6
    ld      ra,0(a6)
              #                    free a6
              #                    load from s0_search_0 in mem
              #                    occupy s2 with s0_search_0
    li      s2, 3968
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to num_22 in mem offset_illegal
              #                    occupy a3 with 3948_0
    li      a3, 3948
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with num_22
              #                    store to x_20 in mem offset_illegal
              #                    occupy a0 with 3964_0
    li      a0, 3964
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_20
              #                    occupy a0 with num_22
              #                    load from num_22 in mem

              #                    occupy a3 with num_22
    li      a3, 3948
    add     a3,sp,a3
    lw      a0,0(a3)
              #                    free a3
              #                    occupy s3 with 3984_0
    li      s3, 3984
    li      s3, 3984
    add     sp,s3,sp
              #                    free s3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_20, tracked: true } |     a2:Freed { symidx: n_20, tracked: true } |     a3:Freed { symidx: num_22, tracked: true } |     a4:Freed { symidx: temp_8_cmp_23, tracked: true } |     a5:Freed { symidx: i_22, tracked: true } |     a6:Freed { symidx: ra_search_0, tracked: true } |     a7:Freed { symidx: temp_9_cmp_28, tracked: true } |     s1:Freed { symidx: temp_62_cmp_62, tracked: true } |     s2:Freed { symidx: s0_search_0, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 7360|s0_main:8 at 7352|temp_63_ret_of_getint:4 at 7348|temp_64_ret_of_getint:4 at 7344|temp_65_ptr2globl:4 at 7340|temp_66_cmp:1 at 7339|none:3 at 7336|i:4 at 7332|j:4 at 7328|temp_67_cmp:1 at 7327|temp_68_cmp:1 at 7326|none:6 at 7320|temp_69_index_ptr:8 at 7312|temp_70_arithop:4 at 7308|temp_71_arithop:4 at 7304|temp_72_ptr2globl:4 at 7300|temp_73_cmp:1 at 7299|none:3 at 7296|temp_74_ptr2globl:4 at 7292|temp_75_cmp:1 at 7291|none:3 at 7288|temp_76_index_ptr:8 at 7280|temp_77_ret_of_getint:4 at 7276|temp_78_ptr2globl:3600 at 3676|none:4 at 3672|temp_79_array_ptr:8 at 3664|temp_80_array_ele:4 at 3660|temp_81_cmp:1 at 3659|none:3 at 3656|temp_82_arithop:4 at 3652|temp_83_ptr2globl:3600 at 52|none:4 at 48|temp_84_array_ptr:8 at 40|temp_85_array_ele:4 at 36|temp_86_cmp:1 at 35|none:3 at 32|temp_87_arithop:4 at 28|temp_88_ptr2globl:4 at 24|temp_89_ptr2globl:4 at 20|temp_90_ret_of_search:4 at 16|res:4 at 12|temp_91_cmp:1 at 11|none:3 at 8|temp_92_ret_of_getint:4 at 4|temp_93_ret_of_getint:4 at 0
              #                    occupy a0 with -7368_0
    li      a0, -7368
    li      a0, -7368
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 7360_0
    li      a1, 7360
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 7352_0
    li      a2, 7352
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 7368_0
    li      a3, 7368
    li      a3, 7368
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_63_ret_of_getint_67 
              #                          alloc i32 temp_64_ret_of_getint_67 
              #                          alloc i32 temp_65_ptr2globl_70 
              #                          alloc i1 temp_66_cmp_70 
              #                          alloc i32 i_72 
              #                          alloc i32 j_72 
              #                          alloc i1 temp_67_cmp_75 
              #                          alloc i1 temp_68_cmp_79 
              #                          alloc ptr->i32 temp_69_index_ptr_81 
              #                          alloc i32 temp_70_arithop_81 
              #                          alloc i32 temp_71_arithop_77 
              #                          alloc i32 temp_72_ptr2globl_86 
              #                          alloc i1 temp_73_cmp_86 
              #                          alloc i32 temp_74_ptr2globl_90 
              #                          alloc i1 temp_75_cmp_90 
              #                          alloc ptr->i32 temp_76_index_ptr_92 
              #                          alloc i32 temp_77_ret_of_getint_92 
              #                          alloc Array:i32:[Some(30_0), Some(30_0)] temp_78_ptr2globl_94 
              #                          alloc ptr->i32 temp_79_array_ptr_94 
              #                          alloc i32 temp_80_array_ele_94 
              #                          alloc i1 temp_81_cmp_94 
              #                          alloc i32 temp_82_arithop_92 
              #                          alloc Array:i32:[Some(30_0), Some(30_0)] temp_83_ptr2globl_99 
              #                          alloc ptr->i32 temp_84_array_ptr_99 
              #                          alloc i32 temp_85_array_ele_99 
              #                          alloc i1 temp_86_cmp_99 
              #                          alloc i32 temp_87_arithop_88 
              #                          alloc i32 temp_88_ptr2globl_72 
              #                          alloc i32 temp_89_ptr2globl_72 
              #                          alloc i32 temp_90_ret_of_search_72 
              #                          alloc i32 res_72 
              #                          alloc i1 temp_91_cmp_107 
              #                          alloc i32 temp_92_ret_of_getint_72 
              #                          alloc i32 temp_93_ret_of_getint_72 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_63_ret_of_getint_67:i32 
              #                          temp_63_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_63_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7348_0
    li      a0, 7348
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_63_ret_of_getint_67:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_63_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_64_ret_of_getint_67:i32 
              #                          temp_64_ret_of_getint_67 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_63_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7348_0
    li      a0, 7348
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_63_ret_of_getint_67
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7344_0
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_64_ret_of_getint_67:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_64_ret_of_getint_67
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_71 
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } | 
              #                          label while.head_71: 
.while.head_71:
              #                          new_var temp_65_ptr2globl_70:i32 
              #                          temp_65_ptr2globl_70 = load *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a2 with temp_65_ptr2globl_70
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_66_cmp_70:i1 
              #                          temp_66_cmp_70 = icmp i32 Ne temp_65_ptr2globl_70, 0_0 
              #                    occupy a2 with temp_65_ptr2globl_70
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_66_cmp_70
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_66_cmp_70, label while.body_71, label while.exit_71 
              #                    occupy a4 with temp_66_cmp_70
              #                    free a4
              #                    occupy a4 with temp_66_cmp_70
    bnez    a4, .while.body_71
              #                    free a4
    j       .while.exit_71
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } | 
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
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } | 
              #                          label while.head_76: 
.while.head_76:
              #                          new_var temp_67_cmp_75:i1 
              #                          temp_67_cmp_75 = icmp i32 Slt i_72, 30_0 
              #                    occupy a1 with i_72
              #                    occupy a3 with 30_0
    li      a3, 30
              #                    occupy a5 with temp_67_cmp_75
    slt     a5,a1,a3
              #                    free a1
              #                    free a3
              #                    free a5
              #                          br i1 temp_67_cmp_75, label while.body_76, label while.exit_76 
              #                    occupy a5 with temp_67_cmp_75
              #                    free a5
              #                    occupy a5 with temp_67_cmp_75
    bnez    a5, .while.body_76
              #                    free a5
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } | 
              #                          label while.body_76: 
.while.body_76:
              #                          j_72 = i32 0_0 
              #                    occupy a3 with j_72
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } | 
              #                          label while.head_80: 
.while.head_80:
              #                          new_var temp_68_cmp_79:i1 
              #                          temp_68_cmp_79 = icmp i32 Slt j_72, 30_0 
              #                    occupy a3 with j_72
              #                    occupy a6 with 30_0
    li      a6, 30
              #                    occupy a7 with temp_68_cmp_79
    slt     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          br i1 temp_68_cmp_79, label while.body_80, label while.exit_80 
              #                    occupy a7 with temp_68_cmp_79
              #                    free a7
              #                    occupy a7 with temp_68_cmp_79
    bnez    a7, .while.body_80
              #                    free a7
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a7:Freed { symidx: temp_68_cmp_79, tracked: true } | 
              #                          label while.body_80: 
.while.body_80:
              #                          new_var temp_69_index_ptr_81:ptr->i32 
              #                          temp_69_index_ptr_81 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a6 with temp_69_index_ptr_81
    li      a6, 0
              #                    occupy s1 with 30_0
    li      s1, 30
              #                    occupy a1 with i_72
              #                    occupy s2 with _anonymous_of_a_0_0
    mul     s2,s1,a1
              #                    free s1
              #                    free a1
    add     a6,a6,s2
              #                    free s2
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a3 with j_72
              #                    occupy s4 with _anonymous_of_a_0_0
    mul     s4,s3,a3
              #                    free s3
              #                    free a3
    add     a6,a6,s4
              #                    free s4
    slli a6,a6,2
              #                    occupy s5 with _anonymous_of_a_0_0
    la      s5, a
    add     a6,a6,s5
              #                    free s5
              #                    free a6
              #                          store 1_0:i32 temp_69_index_ptr_81:ptr->i32 
              #                    occupy a6 with temp_69_index_ptr_81
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          mu a_0:345 
              #                          a_0 = chi a_0:345 
              #                          new_var temp_70_arithop_81:i32 
              #                          temp_70_arithop_81 = Add i32 j_72, 1_0 
              #                    occupy a3 with j_72
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s6 with temp_70_arithop_81
    add     s6,a3,s3
              #                    free a3
              #                    free s3
              #                    free s6
              #                          j_72 = i32 temp_70_arithop_81 
              #                    occupy s6 with temp_70_arithop_81
              #                    occupy a3 with j_72
    mv      a3, s6
              #                    free s6
              #                    free a3
              #                          jump label: while.head_80 
              #                    store to temp_70_arithop_81 in mem offset_illegal
              #                    occupy s5 with 7308_0
    li      s5, 7308
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_70_arithop_81
              #                    store to temp_68_cmp_79 in mem offset_illegal
              #                    occupy a7 with 7326_0
    li      a7, 7326
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_68_cmp_79
              #                    store to temp_69_index_ptr_81 in mem offset_illegal
              #                    occupy a6 with 7312_0
    li      a6, 7312
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_69_index_ptr_81
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a7:Freed { symidx: temp_68_cmp_79, tracked: true } | 
              #                          label while.exit_80: 
.while.exit_80:
              #                          new_var temp_71_arithop_77:i32 
              #                          temp_71_arithop_77 = Add i32 i_72, 1_0 
              #                    occupy a1 with i_72
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_71_arithop_77
    add     s1,a1,a6
              #                    free a1
              #                    free a6
              #                    free s1
              #                          i_72 = i32 temp_71_arithop_77 
              #                    occupy s1 with temp_71_arithop_77
              #                    occupy a1 with i_72
    mv      a1, s1
              #                    free s1
              #                    free a1
              #                          jump label: while.head_76 
              #                    store to j_72 in mem offset_illegal
              #                    occupy a3 with 7328_0
    li      a3, 7328
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with j_72
              #                    store to temp_68_cmp_79 in mem offset_illegal
              #                    occupy a3 with 7326_0
    li      a3, 7326
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_68_cmp_79
              #                    store to temp_71_arithop_77 in mem offset_illegal
              #                    occupy a7 with 7304_0
    li      a7, 7304
    add     a7,sp,a7
    sw      s1,0(a7)
              #                    free a7
              #                    release s1 with temp_71_arithop_77
              #                    store to temp_67_cmp_75 in mem offset_illegal
              #                    occupy a5 with 7327_0
    li      a5, 7327
    add     a5,sp,a5
    sb      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_67_cmp_75
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } | 
              #                          label while.exit_76: 
.while.exit_76:
              #                          i_72 = i32 1_0 
              #                    occupy a1 with i_72
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } | 
              #                          label while.head_87: 
.while.head_87:
              #                          new_var temp_72_ptr2globl_86:i32 
              #                          temp_72_ptr2globl_86 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a6 with temp_72_ptr2globl_86
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_73_cmp_86:i1 
              #                          temp_73_cmp_86 = icmp i32 Sle i_72, temp_72_ptr2globl_86 
              #                    occupy a1 with i_72
              #                    occupy a6 with temp_72_ptr2globl_86
              #                    occupy a7 with temp_73_cmp_86
    slt     a7,a6,a1
    xori    a7,a7,1
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_73_cmp_86, label while.body_87, label while.exit_87 
              #                    occupy a7 with temp_73_cmp_86
              #                    free a7
              #                    occupy a7 with temp_73_cmp_86
    bnez    a7, .while.body_87
              #                    free a7
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a6:Freed { symidx: temp_72_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_73_cmp_86, tracked: true } | 
              #                          label while.body_87: 
.while.body_87:
              #                          j_72 = i32 1_0 
              #                    occupy a3 with j_72
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a6:Freed { symidx: temp_72_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_73_cmp_86, tracked: true } | 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_74_ptr2globl_90:i32 
              #                          temp_74_ptr2globl_90 = load *w_0:ptr->i32 
              #                    occupy s1 with *w_0
              #                       load label w as ptr to reg
    la      s1, w
              #                    occupy reg s1 with *w_0
              #                    occupy s2 with temp_74_ptr2globl_90
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_75_cmp_90:i1 
              #                          temp_75_cmp_90 = icmp i32 Sle j_72, temp_74_ptr2globl_90 
              #                    occupy a3 with j_72
              #                    occupy s2 with temp_74_ptr2globl_90
              #                    occupy s3 with temp_75_cmp_90
    slt     s3,s2,a3
    xori    s3,s3,1
              #                    free a3
              #                    free s2
              #                    free s3
              #                          br i1 temp_75_cmp_90, label while.body_91, label while.exit_91 
              #                    occupy s3 with temp_75_cmp_90
              #                    free s3
              #                    occupy s3 with temp_75_cmp_90
    bnez    s3, .while.body_91
              #                    free s3
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a6:Freed { symidx: temp_72_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_73_cmp_86, tracked: true } |     s2:Freed { symidx: temp_74_ptr2globl_90, tracked: true } |     s3:Freed { symidx: temp_75_cmp_90, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_76_index_ptr_92:ptr->i32 
              #                          temp_76_index_ptr_92 = getelementptr a_0:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy s1 with temp_76_index_ptr_92
    li      s1, 0
              #                    occupy s4 with 30_0
    li      s4, 30
              #                    occupy a1 with i_72
              #                    occupy s5 with _anonymous_of_a_0_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s1,s1,s5
              #                    free s5
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a3 with j_72
              #                    occupy s7 with _anonymous_of_a_0_0
    mul     s7,s6,a3
              #                    free s6
              #                    free a3
    add     s1,s1,s7
              #                    free s7
    slli s1,s1,2
              #                    occupy s8 with _anonymous_of_a_0_0
    la      s8, a
    add     s1,s1,s8
              #                    free s8
              #                    free s1
              #                          new_var temp_77_ret_of_getint_92:i32 
              #                          temp_77_ret_of_getint_92 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_76_index_ptr_92 in mem offset_illegal
              #                    occupy s1 with 7280_0
    li      s1, 7280
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_76_index_ptr_92
              #                    store to temp_74_ptr2globl_90 in mem offset_illegal
              #                    occupy s1 with 7292_0
    li      s1, 7292
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_74_ptr2globl_90
              #                    store to temp_75_cmp_90 in mem offset_illegal
              #                    occupy s2 with 7291_0
    li      s2, 7291
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_75_cmp_90
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7344_0
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_ret_of_getint_67
              #                    store to i_72 in mem offset_illegal
              #                    occupy a0 with 7332_0
    li      a0, 7332
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with i_72
              #                    store to temp_65_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 7340_0
    li      a1, 7340
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_65_ptr2globl_70
              #                    store to j_72 in mem offset_illegal
              #                    occupy a2 with 7328_0
    li      a2, 7328
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with j_72
              #                    store to temp_66_cmp_70 in mem offset_illegal
              #                    occupy a3 with 7339_0
    li      a3, 7339
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_66_cmp_70
              #                    store to temp_67_cmp_75 in mem offset_illegal
              #                    occupy a4 with 7327_0
    li      a4, 7327
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_67_cmp_75
              #                    store to temp_72_ptr2globl_86 in mem offset_illegal
              #                    occupy a5 with 7300_0
    li      a5, 7300
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_72_ptr2globl_86
              #                    store to temp_73_cmp_86 in mem offset_illegal
              #                    occupy a6 with 7299_0
    li      a6, 7299
    add     a6,sp,a6
    sb      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_73_cmp_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_77_ret_of_getint_92 in mem offset_illegal
              #                    occupy a0 with 7276_0
    li      a0, 7276
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_77_ret_of_getint_92:i32 temp_76_index_ptr_92:ptr->i32 
              #                    occupy a7 with temp_76_index_ptr_92
              #                    load from temp_76_index_ptr_92 in mem
              #                    occupy a7 with temp_76_index_ptr_92
    add     a7,sp,a7
    ld      a7,0(a7)
              #                    free a7
              #                    occupy a0 with temp_77_ret_of_getint_92
    sw      a0,0(a7)
              #                    free a0
              #                    free a7
              #                          mu a_0:386 
              #                          a_0 = chi a_0:386 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_78_ptr2globl_94:Array:i32:[Some(30_0), Some(30_0)] 
              #                          temp_78_ptr2globl_94 = load *a_0:ptr->Array:i32:[Some(30_0)] 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a2 with temp_78_ptr2globl_94
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_79_array_ptr_94:ptr->i32 
              #                          temp_79_array_ptr_94 = getelementptr temp_78_ptr2globl_94:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a3 with temp_79_array_ptr_94
    li      a3, 0
              #                    occupy a4 with 30_0
    li      a4, 30
              #                    occupy a5 with i_72
              #                    load from i_72 in mem

              #                    occupy a5 with i_72
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_78_ptr2globl_94_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with j_72
              #                    load from j_72 in mem

              #                    occupy s2 with j_72
    add     s2,sp,s2
    lw      s2,0(s2)
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_78_ptr2globl_94_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a3,a3,s3
              #                    free s3
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy s4 with 3676_0
    li      s4, 3676
    li      s4, 3676
    add     a3,s4,a3
              #                    free s4
              #                    free a3
              #                          new_var temp_80_array_ele_94:i32 
              #                          temp_80_array_ele_94 = load temp_79_array_ptr_94:ptr->i32 
              #                    occupy a3 with temp_79_array_ptr_94
              #                    occupy s5 with temp_80_array_ele_94
    lw      s5,0(a3)
              #                    free s5
              #                    free a3
              #                          new_var temp_81_cmp_94:i1 
              #                          temp_81_cmp_94 = icmp i32 Eq temp_80_array_ele_94, 2_0 
              #                    occupy s5 with temp_80_array_ele_94
              #                    occupy s6 with 2_0
    li      s6, 2
              #                    occupy s7 with temp_81_cmp_94
    xor     s7,s5,s6
    seqz    s7, s7
              #                    free s5
              #                    free s6
              #                    free s7
              #                          br i1 temp_81_cmp_94, label branch_true_95, label branch_false_95 
              #                    occupy s7 with temp_81_cmp_94
              #                    free s7
              #                    occupy s7 with temp_81_cmp_94
    bnez    s7, .branch_true_95
              #                    free s7
    j       .branch_false_95
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } | 
              #                          label branch_true_95: 
.branch_true_95:
              #                          store i_72:i32 *x_0_0:ptr->i32 
              #                    occupy a1 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a1, x_0
              #                    occupy reg a1 with *x_0_0
              #                    occupy a5 with i_72
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          store j_72:i32 *y_0_0:ptr->i32 
              #                    occupy a4 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      a4, y_0
              #                    occupy reg a4 with *y_0_0
              #                    occupy s2 with j_72
    sw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } | 
              #                          label branch_false_95: 
.branch_false_95:
              #                          new_var temp_83_ptr2globl_99:Array:i32:[Some(30_0), Some(30_0)] 
              #                          temp_83_ptr2globl_99 = load *a_0:ptr->Array:i32:[Some(30_0)] 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a4 with temp_83_ptr2globl_99
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_84_array_ptr_99:ptr->i32 
              #                          temp_84_array_ptr_99 = getelementptr temp_83_ptr2globl_99:Array:i32:[Some(30_0), Some(30_0)] [Some(i_72), Some(j_72)] 
              #                    occupy a6 with temp_84_array_ptr_99
    li      a6, 0
              #                    occupy s1 with 30_0
    li      s1, 30
              #                    occupy a5 with i_72
              #                    occupy s3 with _anonymous_of_temp_83_ptr2globl_99_0
    mul     s3,s1,a5
              #                    free s1
              #                    free a5
    add     a6,a6,s3
              #                    free s3
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s2 with j_72
              #                    occupy s6 with _anonymous_of_temp_83_ptr2globl_99_0
    mul     s6,s4,s2
              #                    free s4
              #                    free s2
    add     a6,a6,s6
              #                    free s6
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,52
              #                    free a6
              #                          new_var temp_85_array_ele_99:i32 
              #                          temp_85_array_ele_99 = load temp_84_array_ptr_99:ptr->i32 
              #                    occupy a6 with temp_84_array_ptr_99
              #                    occupy s8 with temp_85_array_ele_99
    lw      s8,0(a6)
              #                    free s8
              #                    free a6
              #                          new_var temp_86_cmp_99:i1 
              #                          temp_86_cmp_99 = icmp i32 Eq temp_85_array_ele_99, 3_0 
              #                    occupy s8 with temp_85_array_ele_99
              #                    occupy s9 with 3_0
    li      s9, 3
              #                    occupy s10 with temp_86_cmp_99
    xor     s10,s8,s9
    seqz    s10, s10
              #                    free s8
              #                    free s9
              #                    free s10
              #                          br i1 temp_86_cmp_99, label branch_true_100, label branch_false_100 
              #                    occupy s10 with temp_86_cmp_99
              #                    free s10
              #                    occupy s10 with temp_86_cmp_99
    bnez    s10, .branch_true_100
              #                    free s10
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a4:Freed { symidx: temp_83_ptr2globl_99, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a6:Freed { symidx: temp_84_array_ptr_99, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s10:Freed { symidx: temp_86_cmp_99, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } |     s8:Freed { symidx: temp_85_array_ele_99, tracked: true } | 
              #                          label branch_true_100: 
.branch_true_100:
              #                          store i_72:i32 *x_1_0:ptr->i32 
              #                    occupy a1 with *x_1_0
              #                       load label x_1 as ptr to reg
    la      a1, x_1
              #                    occupy reg a1 with *x_1_0
              #                    occupy a5 with i_72
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          store j_72:i32 *y_1_0:ptr->i32 
              #                    occupy s1 with *y_1_0
              #                       load label y_1 as ptr to reg
    la      s1, y_1
              #                    occupy reg s1 with *y_1_0
              #                    occupy s2 with j_72
    sw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          jump label: branch_false_100 
    j       .branch_false_100
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a4:Freed { symidx: temp_83_ptr2globl_99, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a6:Freed { symidx: temp_84_array_ptr_99, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s10:Freed { symidx: temp_86_cmp_99, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } |     s8:Freed { symidx: temp_85_array_ele_99, tracked: true } | 
              #                          label branch_false_100: 
.branch_false_100:
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_getint_92, tracked: true } |     a2:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     a3:Freed { symidx: temp_79_array_ptr_94, tracked: true } |     a5:Freed { symidx: i_72, tracked: true } |     a7:Freed { symidx: temp_76_index_ptr_92, tracked: true } |     s2:Freed { symidx: j_72, tracked: true } |     s5:Freed { symidx: temp_80_array_ele_94, tracked: true } |     s7:Freed { symidx: temp_81_cmp_94, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_82_arithop_92:i32 
              #                          temp_82_arithop_92 = Add i32 j_72, 1_0 
              #                    occupy s2 with j_72
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_82_arithop_92
    add     a4,s2,a1
              #                    free s2
              #                    free a1
              #                    free a4
              #                          j_72 = i32 temp_82_arithop_92 
              #                    occupy a4 with temp_82_arithop_92
              #                    occupy s2 with j_72
    mv      s2, a4
              #                    free a4
              #                    free s2
              #                          jump label: while.head_91 
              #                    store to temp_80_array_ele_94 in mem offset_illegal
              #                    occupy a6 with 3660_0
    li      a6, 3660
    add     a6,sp,a6
    sw      s5,0(a6)
              #                    free a6
              #                    release s5 with temp_80_array_ele_94
              #                    store to temp_78_ptr2globl_94 in mem offset_illegal
              #                    occupy a2 with 3676_0
    li      a2, 3676
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_78_ptr2globl_94
              #                    store to temp_82_arithop_92 in mem offset_illegal
              #                    occupy a2 with 3652_0
    li      a2, 3652
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_82_arithop_92
              #                    store to temp_79_array_ptr_94 in mem offset_illegal
              #                    occupy a3 with 3664_0
    li      a3, 3664
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_79_array_ptr_94
              #                    store to temp_76_index_ptr_92 in mem offset_illegal
              #                    occupy a3 with 7280_0
    li      a3, 7280
    add     a3,sp,a3
    sd      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_76_index_ptr_92
              #                    store to temp_81_cmp_94 in mem offset_illegal
              #                    occupy a4 with 3659_0
    li      a4, 3659
    add     a4,sp,a4
    sb      s7,0(a4)
              #                    free a4
              #                    release s7 with temp_81_cmp_94
              #                    store to temp_77_ret_of_getint_92 in mem offset_illegal
              #                    occupy a0 with 7276_0
    li      a0, 7276
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ret_of_getint_92
              #                    store to i_72 in mem offset_illegal
              #                    occupy a0 with 7332_0
    li      a0, 7332
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with i_72
              #                    store to j_72 in mem offset_illegal
              #                    occupy a1 with 7328_0
    li      a1, 7328
    add     a1,sp,a1
    sw      s2,0(a1)
              #                    free a1
              #                    release s2 with j_72
              #                    occupy a2 with _anonymous_of_temp_65_ptr2globl_70_0
              #                    load from temp_65_ptr2globl_70 in mem

              #                    occupy a5 with temp_65_ptr2globl_70
    li      a5, 7340
    add     a5,sp,a5
    lw      a2,0(a5)
              #                    free a5
              #                    occupy a4 with _anonymous_of_temp_66_cmp_70_0
              #                    load from temp_66_cmp_70 in mem
              #                    occupy a6 with temp_66_cmp_70
    li      a6, 7339
    add     a6,sp,a6
    lb      a4,0(a6)
              #                    free a6
              #                    occupy a3 with _anonymous_of_j_72_0
              #                    load from j_72 in mem

              #                    occupy a7 with j_72
    li      a7, 7328
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    store to j_72 in mem offset_illegal
              #                    found literal reg Some(a1) already exist with 7328_0
              #                    occupy a1 with 7328_0
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with j_72
              #                    occupy a7 with _anonymous_of_temp_73_cmp_86_0
              #                    load from temp_73_cmp_86 in mem
              #                    occupy s1 with temp_73_cmp_86
    li      s1, 7299
    add     s1,sp,s1
    lb      a7,0(s1)
              #                    free s1
              #                    store to temp_73_cmp_86 in mem offset_illegal
              #                    occupy s1 with 7299_0
    li      s1, 7299
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_73_cmp_86
              #                    store to temp_66_cmp_70 in mem offset_illegal
              #                    occupy a6 with 7339_0
    li      a6, 7339
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_66_cmp_70
              #                    occupy a6 with _anonymous_of_temp_72_ptr2globl_86_0
              #                    load from temp_72_ptr2globl_86 in mem

              #                    occupy s1 with temp_72_ptr2globl_86
    li      s1, 7300
    add     s1,sp,s1
    lw      a6,0(s1)
              #                    free s1
              #                    occupy a0 with _anonymous_of_temp_64_ret_of_getint_67_0
              #                    load from temp_64_ret_of_getint_67 in mem

              #                    occupy s2 with temp_64_ret_of_getint_67
    li      s2, 7344
    add     s2,sp,s2
    lw      a0,0(s2)
              #                    free s2
              #                    occupy a1 with _anonymous_of_i_72_0
              #                    load from i_72 in mem

              #                    occupy s3 with i_72
    li      s3, 7332
    add     s3,sp,s3
    lw      a1,0(s3)
              #                    free s3
              #                    store to temp_65_ptr2globl_70 in mem offset_illegal
              #                    occupy a5 with 7340_0
    li      a5, 7340
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_65_ptr2globl_70
              #                    occupy a5 with _anonymous_of_temp_67_cmp_75_0
              #                    load from temp_67_cmp_75 in mem
              #                    occupy s4 with temp_67_cmp_75
    li      s4, 7327
    add     s4,sp,s4
    lb      a5,0(s4)
              #                    free s4
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy s2 with 7344_0
    li      s2, 7344
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_64_ret_of_getint_67
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: j_72, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a6:Freed { symidx: temp_72_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_73_cmp_86, tracked: true } |     s2:Freed { symidx: temp_74_ptr2globl_90, tracked: true } |     s3:Freed { symidx: temp_75_cmp_90, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
              #                          new_var temp_87_arithop_88:i32 
              #                          temp_87_arithop_88 = Add i32 i_72, 1_0 
              #                    occupy a1 with i_72
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_87_arithop_88
    add     s4,a1,s1
              #                    free a1
              #                    free s1
              #                    free s4
              #                          i_72 = i32 temp_87_arithop_88 
              #                    occupy s4 with temp_87_arithop_88
              #                    occupy a1 with i_72
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: while.head_87 
              #                    store to j_72 in mem offset_illegal
              #                    occupy a3 with 7328_0
    li      a3, 7328
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with j_72
              #                    store to temp_73_cmp_86 in mem offset_illegal
              #                    occupy a3 with 7299_0
    li      a3, 7299
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_73_cmp_86
              #                    store to temp_75_cmp_90 in mem offset_illegal
              #                    occupy a7 with 7291_0
    li      a7, 7291
    add     a7,sp,a7
    sb      s3,0(a7)
              #                    free a7
              #                    release s3 with temp_75_cmp_90
              #                    store to temp_72_ptr2globl_86 in mem offset_illegal
              #                    occupy a6 with 7300_0
    li      a6, 7300
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_72_ptr2globl_86
              #                    store to temp_87_arithop_88 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_87_arithop_88
              #                    store to temp_74_ptr2globl_90 in mem offset_illegal
              #                    occupy a6 with 7292_0
    li      a6, 7292
    add     a6,sp,a6
    sw      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_74_ptr2globl_90
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a1:Freed { symidx: i_72, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } |     a5:Freed { symidx: temp_67_cmp_75, tracked: true } |     a6:Freed { symidx: temp_72_ptr2globl_86, tracked: true } |     a7:Freed { symidx: temp_73_cmp_86, tracked: true } | 
              #                          label while.exit_87: 
.while.exit_87:
              #                          new_var temp_88_ptr2globl_72:i32 
              #                          temp_88_ptr2globl_72 = load *x_0_0:ptr->i32 
              #                    occupy a3 with *x_0_0
              #                       load label x_0 as ptr to reg
    la      a3, x_0
              #                    occupy reg a3 with *x_0_0
              #                    occupy s1 with temp_88_ptr2globl_72
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_89_ptr2globl_72:i32 
              #                          temp_89_ptr2globl_72 = load *y_0_0:ptr->i32 
              #                    occupy s2 with *y_0_0
              #                       load label y_0 as ptr to reg
    la      s2, y_0
              #                    occupy reg s2 with *y_0_0
              #                    occupy s3 with temp_89_ptr2globl_72
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_90_ret_of_search_72:i32 
              #                          temp_90_ret_of_search_72 =  Call i32 search_0(temp_88_ptr2globl_72, temp_89_ptr2globl_72, 1_0) 
              #                    saved register dumping to mem
              #                    store to temp_88_ptr2globl_72 in mem offset legal
    sw      s1,24(sp)
              #                    release s1 with temp_88_ptr2globl_72
              #                    store to temp_89_ptr2globl_72 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_89_ptr2globl_72
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7344_0
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_ret_of_getint_67
              #                    store to i_72 in mem offset_illegal
              #                    occupy a0 with 7332_0
    li      a0, 7332
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with i_72
              #                    store to temp_65_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 7340_0
    li      a1, 7340
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_65_ptr2globl_70
              #                    store to temp_66_cmp_70 in mem offset_illegal
              #                    occupy a2 with 7339_0
    li      a2, 7339
    add     a2,sp,a2
    sb      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_66_cmp_70
              #                    store to temp_67_cmp_75 in mem offset_illegal
              #                    occupy a3 with 7327_0
    li      a3, 7327
    add     a3,sp,a3
    sb      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_67_cmp_75
              #                    store to temp_72_ptr2globl_86 in mem offset_illegal
              #                    occupy a4 with 7300_0
    li      a4, 7300
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_72_ptr2globl_86
              #                    store to temp_73_cmp_86 in mem offset_illegal
              #                    occupy a5 with 7299_0
    li      a5, 7299
    add     a5,sp,a5
    sb      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_73_cmp_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_88_ptr2globl_72_0
              #                    load from temp_88_ptr2globl_72 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_89_ptr2globl_72_0
              #                    load from temp_89_ptr2globl_72 in mem


    lw      a1,20(sp)
              #                    occupy a2 with _anonymous_of_1_0_0
    li      a2, 1
              #                    arg load ended


    call    search
              #                    store to temp_90_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                          res_72 = i32 temp_90_ret_of_search_72 
              #                    occupy a0 with temp_90_ret_of_search_72
              #                    occupy a1 with res_72
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_90_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_91_cmp_107:i1 
              #                          temp_91_cmp_107 = icmp i32 Sle res_72, 10_0 
              #                    occupy a1 with res_72
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with temp_91_cmp_107
    slt     a3,a2,a1
    xori    a3,a3,1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_91_cmp_107, label branch_true_108, label branch_false_108 
              #                    occupy a3 with temp_91_cmp_107
              #                    free a3
              #                    occupy a3 with temp_91_cmp_107
    bnez    a3, .branch_true_108
              #                    free a3
    j       .branch_false_108
              #                    regtab     a0:Freed { symidx: temp_90_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } |     a3:Freed { symidx: temp_91_cmp_107, tracked: true } | 
              #                          label branch_true_108: 
.branch_true_108:
              #                           Call void putint_0(res_72) 
              #                    saved register dumping to mem
              #                    store to temp_90_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_90_ret_of_search_72
              #                    store to res_72 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with res_72
              #                    store to temp_91_cmp_107 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_91_cmp_107
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
              #                    regtab     a0:Freed { symidx: temp_90_ret_of_search_72, tracked: true } |     a1:Freed { symidx: res_72, tracked: true } |     a3:Freed { symidx: temp_91_cmp_107, tracked: true } | 
              #                          label branch_false_108: 
.branch_false_108:
              #                           Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_ret_of_search_72 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_90_ret_of_search_72
              #                    store to res_72 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with res_72
              #                    store to temp_91_cmp_107 in mem offset legal
    sb      a3,11(sp)
              #                    release a3 with temp_91_cmp_107
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
              #                          new_var temp_92_ret_of_getint_72:i32 
              #                          temp_92_ret_of_getint_72 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_92_ret_of_getint_72 in mem offset legal
    sw      a0,4(sp)
              #                          store temp_92_ret_of_getint_72:i32 *w_0:ptr->i32 
              #                    occupy a1 with *w_0
              #                       load label w as ptr to reg
    la      a1, w
              #                    occupy reg a1 with *w_0
              #                    occupy a0 with temp_92_ret_of_getint_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_93_ret_of_getint_72:i32 
              #                          temp_93_ret_of_getint_72 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_92_ret_of_getint_72 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_92_ret_of_getint_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_93_ret_of_getint_72 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_93_ret_of_getint_72:i32 *h_0:ptr->i32 
              #                    occupy a1 with *h_0
              #                       load label h as ptr to reg
    la      a1, h
              #                    occupy reg a1 with *h_0
              #                    occupy a0 with temp_93_ret_of_getint_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          jump label: while.head_71 
              #                    store to temp_93_ret_of_getint_72 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_93_ret_of_getint_72
              #                    occupy a0 with _anonymous_of_temp_64_ret_of_getint_67_0
              #                    load from temp_64_ret_of_getint_67 in mem

              #                    occupy a1 with temp_64_ret_of_getint_67
    li      a1, 7344
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy a1 with 7344_0
    li      a1, 7344
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_64_ret_of_getint_67
    j       .while.head_71
              #                    regtab     a0:Freed { symidx: temp_64_ret_of_getint_67, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } | 
              #                          label while.exit_71: 
.while.exit_71:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a1 with ra_main_0
    li      a1, 7360
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_main_0 in mem
              #                    occupy a3 with s0_main_0
    li      a3, 7352
    add     a3,sp,a3
    ld      s0,0(a3)
              #                    free a3
              #                    store to temp_64_ret_of_getint_67 in mem offset_illegal
              #                    occupy a0 with 7344_0
    li      a0, 7344
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_64_ret_of_getint_67
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a5 with 7368_0
    li      a5, 7368
    li      a5, 7368
    add     sp,a5,sp
              #                    free a5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ra_main_0, tracked: true } |     a2:Freed { symidx: temp_65_ptr2globl_70, tracked: true } |     a3:Freed { symidx: s0_main_0, tracked: true } |     a4:Freed { symidx: temp_66_cmp_70, tracked: true } | 
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
    .zero 25
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
