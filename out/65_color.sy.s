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
              #                          Define equal_0 [a_21, b_21] -> equal_ret_0 
    .globl equal
    .type equal,@function
equal:
              #                    mem layout:|ra_equal:8 at 24|s0_equal:8 at 16|a:4 at 12|b:4 at 8|temp_0_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_equal_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_equal_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i1 temp_0_cmp_24 
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_0_cmp_24:i1 
              #                          temp_0_cmp_24 = icmp i32 Eq a_21, b_21 
              #                    occupy a0 with a_21
              #                    occupy a1 with b_21
              #                    occupy a2 with temp_0_cmp_24
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_0_cmp_24, label branch_true_25, label branch_false_25 
              #                    occupy a2 with temp_0_cmp_24
              #                    free a2
              #                    occupy a2 with temp_0_cmp_24
    bnez    a2, .branch_true_25
              #                    free a2
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          ret 1_0 
              #                    load from ra_equal_0 in mem
    ld      ra,24(sp)
              #                    load from s0_equal_0 in mem
    ld      s0,16(sp)
              #                    store to a_21 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_21
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                    regtab     a0:Freed { symidx: a_21, tracked: true } |     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          ret 0_0 
              #                    load from ra_equal_0 in mem
    ld      ra,24(sp)
              #                    load from s0_equal_0 in mem
    ld      s0,16(sp)
              #                    store to a_21 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_21
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_21, tracked: true } |     a2:Freed { symidx: temp_0_cmp_24, tracked: true } | 
              #                    regtab 
              #                          Define dfs_0 [a_28, b_28, c_28, d_28, e_28, last_28] -> dfs_ret_0 
    .globl dfs
    .type dfs,@function
dfs:
              #                    mem layout:|ra_dfs:8 at 158724000|s0_dfs:8 at 158723992|a:4 at 158723988|b:4 at 158723984|c:4 at 158723980|d:4 at 158723976|e:4 at 158723972|last:4 at 158723968|temp_1_ptr2globl:52907904 at 105816064|temp_2_array_ptr:8 at 105816056|temp_3_array_ele:4 at 105816052|temp_4_cmp:1 at 105816051|none:3 at 105816048|temp_5_ptr2globl:52907904 at 52908144|temp_6_array_ptr:8 at 52908136|temp_7_array_ele:4 at 52908132|temp_8_arithop:4 at 52908128|temp_9_arithop:4 at 52908124|temp_10_arithop:4 at 52908120|temp_11_arithop:4 at 52908116|temp_12_cmp:1 at 52908115|none:3 at 52908112|ans:4 at 52908108|temp_13_:1 at 52908107|none:3 at 52908104|temp_14_arithop:4 at 52908100|temp_15_ret_of_dfs:4 at 52908096|temp_16_ret_of_equal:4 at 52908092|temp_17_arithop:4 at 52908088|temp_18_arithop:4 at 52908084|temp_19_arithop:4 at 52908080|temp_20_arithop:4 at 52908076|temp_21_:1 at 52908075|none:3 at 52908072|temp_22_arithop:4 at 52908068|temp_23_arithop:4 at 52908064|temp_24_ret_of_dfs:4 at 52908060|temp_25_ret_of_equal:4 at 52908056|temp_26_arithop:4 at 52908052|temp_27_arithop:4 at 52908048|temp_28_arithop:4 at 52908044|temp_29_arithop:4 at 52908040|temp_30_:1 at 52908039|none:3 at 52908036|temp_31_arithop:4 at 52908032|temp_32_arithop:4 at 52908028|temp_33_ret_of_dfs:4 at 52908024|temp_34_ret_of_equal:4 at 52908020|temp_35_arithop:4 at 52908016|temp_36_arithop:4 at 52908012|temp_37_arithop:4 at 52908008|temp_38_arithop:4 at 52908004|temp_39_:1 at 52908003|none:3 at 52908000|temp_40_arithop:4 at 52907996|temp_41_arithop:4 at 52907992|temp_42_ret_of_dfs:4 at 52907988|temp_43_ret_of_equal:4 at 52907984|temp_44_arithop:4 at 52907980|temp_45_arithop:4 at 52907976|temp_46_arithop:4 at 52907972|temp_47_arithop:4 at 52907968|temp_48_:1 at 52907967|none:3 at 52907964|temp_49_arithop:4 at 52907960|temp_50_arithop:4 at 52907956|temp_51_ret_of_dfs:4 at 52907952|temp_52_arithop:4 at 52907948|temp_53_arithop:4 at 52907944|temp_54_arithop:4 at 52907940|none:4 at 52907936|temp_55_index_ptr:8 at 52907928|temp_56_arithop:4 at 52907924|temp_57_ptr2globl:52907904 at 20|none:4 at 16|temp_58_array_ptr:8 at 8|temp_59_array_ele:4 at 4|none:4 at 0
              #                    occupy a6 with -158724008_0
    li      a6, -158724008
    li      a6, -158724008
    add     sp,a6,sp
              #                    free a6
              #                    store to ra_dfs_0 in mem offset_illegal
              #                    occupy a7 with 158724000_0
    li      a7, 158724000
    add     a7,sp,a7
    sd      ra,0(a7)
              #                    free a7
              #                    store to s0_dfs_0 in mem offset_illegal
              #                    occupy s1 with 158723992_0
    li      s1, 158723992
    add     s1,sp,s1
    sd      s0,0(s1)
              #                    free s1
              #                    occupy s2 with 158724008_0
    li      s2, 158724008
    li      s2, 158724008
    add     s0,s2,sp
              #                    free s2
              #                          alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_1_ptr2globl_31 
              #                          alloc ptr->i32 temp_2_array_ptr_31 
              #                          alloc i32 temp_3_array_ele_31 
              #                          alloc i1 temp_4_cmp_31 
              #                          alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_5_ptr2globl_31 
              #                          alloc ptr->i32 temp_6_array_ptr_31 
              #                          alloc i32 temp_7_array_ele_31 
              #                          alloc i32 temp_8_arithop_34 
              #                          alloc i32 temp_9_arithop_34 
              #                          alloc i32 temp_10_arithop_34 
              #                          alloc i32 temp_11_arithop_34 
              #                          alloc i1 temp_12_cmp_34 
              #                          alloc i32 ans_30 
              #                          alloc i1 temp_13__858 
              #                          alloc i32 temp_14_arithop_38 
              #                          alloc i32 temp_15_ret_of_dfs_38 
              #                          alloc i32 temp_16_ret_of_equal_38 
              #                          alloc i32 temp_17_arithop_38 
              #                          alloc i32 temp_18_arithop_38 
              #                          alloc i32 temp_19_arithop_38 
              #                          alloc i32 temp_20_arithop_38 
              #                          alloc i1 temp_21__1132 
              #                          alloc i32 temp_22_arithop_41 
              #                          alloc i32 temp_23_arithop_41 
              #                          alloc i32 temp_24_ret_of_dfs_41 
              #                          alloc i32 temp_25_ret_of_equal_41 
              #                          alloc i32 temp_26_arithop_41 
              #                          alloc i32 temp_27_arithop_41 
              #                          alloc i32 temp_28_arithop_41 
              #                          alloc i32 temp_29_arithop_41 
              #                          alloc i1 temp_30__1413 
              #                          alloc i32 temp_31_arithop_44 
              #                          alloc i32 temp_32_arithop_44 
              #                          alloc i32 temp_33_ret_of_dfs_44 
              #                          alloc i32 temp_34_ret_of_equal_44 
              #                          alloc i32 temp_35_arithop_44 
              #                          alloc i32 temp_36_arithop_44 
              #                          alloc i32 temp_37_arithop_44 
              #                          alloc i32 temp_38_arithop_44 
              #                          alloc i1 temp_39__1694 
              #                          alloc i32 temp_40_arithop_47 
              #                          alloc i32 temp_41_arithop_47 
              #                          alloc i32 temp_42_ret_of_dfs_47 
              #                          alloc i32 temp_43_ret_of_equal_47 
              #                          alloc i32 temp_44_arithop_47 
              #                          alloc i32 temp_45_arithop_47 
              #                          alloc i32 temp_46_arithop_47 
              #                          alloc i32 temp_47_arithop_47 
              #                          alloc i1 temp_48__1975 
              #                          alloc i32 temp_49_arithop_50 
              #                          alloc i32 temp_50_arithop_50 
              #                          alloc i32 temp_51_ret_of_dfs_50 
              #                          alloc i32 temp_52_arithop_50 
              #                          alloc i32 temp_53_arithop_50 
              #                          alloc i32 temp_54_arithop_50 
              #                          alloc ptr->i32 temp_55_index_ptr_30 
              #                          alloc i32 temp_56_arithop_30 
              #                          alloc Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] temp_57_ptr2globl_30 
              #                          alloc ptr->i32 temp_58_array_ptr_30 
              #                          alloc i32 temp_59_array_ele_30 
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_1_ptr2globl_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                          temp_1_ptr2globl_31 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                    occupy a6 with *dp_0
              #                       load label dp as ptr to reg
    la      a6, dp
              #                    occupy reg a6 with *dp_0
              #                    occupy a7 with temp_1_ptr2globl_31
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_2_array_ptr_31:ptr->i32 
              #                          temp_2_array_ptr_31 = getelementptr temp_1_ptr2globl_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy s1 with temp_2_array_ptr_31
    li      s1, 0
              #                    occupy s2 with 734832_0
    li      s2, 734832
              #                    occupy a0 with a_28
              #                    occupy s3 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s3,s2,a0
              #                    free s2
              #                    free a0
    add     s1,s1,s3
              #                    free s3
              #                    occupy s4 with 40824_0
    li      s4, 40824
              #                    occupy a1 with b_28
              #                    occupy s5 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s1,s1,s5
              #                    free s5
              #                    occupy s6 with 2268_0
    li      s6, 2268
              #                    occupy a2 with c_28
              #                    occupy s7 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s7,s6,a2
              #                    free s6
              #                    free a2
    add     s1,s1,s7
              #                    free s7
              #                    occupy s8 with 126_0
    li      s8, 126
              #                    occupy a3 with d_28
              #                    occupy s9 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s9,s8,a3
              #                    free s8
              #                    free a3
    add     s1,s1,s9
              #                    free s9
              #                    occupy s10 with 7_0
    li      s10, 7
              #                    occupy a4 with e_28
              #                    occupy s11 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s11,s10,a4
              #                    free s10
              #                    free a4
    add     s1,s1,s11
              #                    free s11
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a5 with last_28
              #                    occupy s2 with _anonymous_of_temp_1_ptr2globl_31_0
    mul     s2,a6,a5
              #                    free a6
              #                    free a5
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    li      a6, 105816064
    add     s1,a6,s1
              #                    free a6
              #                    free s1
              #                          new_var temp_3_array_ele_31:i32 
              #                          temp_3_array_ele_31 = load temp_2_array_ptr_31:ptr->i32 
              #                    occupy s1 with temp_2_array_ptr_31
              #                    occupy a6 with temp_3_array_ele_31
    lw      a6,0(s1)
              #                    free a6
              #                    free s1
              #                          new_var temp_4_cmp_31:i1 
              #                          temp_4_cmp_31 = icmp i32 Ne temp_3_array_ele_31, -1_0 
              #                    occupy a6 with temp_3_array_ele_31
              #                    occupy s2 with -1_0
    li      s2, -1
              #                    occupy s3 with temp_4_cmp_31
    xor     s3,a6,s2
    snez    s3, s3
              #                    free a6
              #                    free s2
              #                    free s3
              #                          br i1 temp_4_cmp_31, label branch_true_32, label branch_false_32 
              #                    occupy s3 with temp_4_cmp_31
              #                    free s3
              #                    occupy s3 with temp_4_cmp_31
    bnez    s3, .branch_true_32
              #                    free s3
    j       .branch_false_32
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } | 
              #                          label branch_true_32: 
.branch_true_32:
              #                          new_var temp_5_ptr2globl_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                          temp_5_ptr2globl_31 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
              #                    occupy s4 with temp_5_ptr2globl_31
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                          new_var temp_6_array_ptr_31:ptr->i32 
              #                          temp_6_array_ptr_31 = getelementptr temp_5_ptr2globl_31:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy s5 with temp_6_array_ptr_31
    li      s5, 0
              #                    occupy s6 with 734832_0
    li      s6, 734832
              #                    occupy a0 with a_28
              #                    occupy s7 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s7,s6,a0
              #                    free s6
              #                    free a0
    add     s5,s5,s7
              #                    free s7
              #                    occupy s8 with 40824_0
    li      s8, 40824
              #                    occupy a1 with b_28
              #                    occupy s9 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s9,s8,a1
              #                    free s8
              #                    free a1
    add     s5,s5,s9
              #                    free s9
              #                    occupy s10 with 2268_0
    li      s10, 2268
              #                    occupy a2 with c_28
              #                    occupy s11 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s11,s10,a2
              #                    free s10
              #                    free a2
    add     s5,s5,s11
              #                    free s11
              #                    occupy s2 with 126_0
    li      s2, 126
              #                    occupy a3 with d_28
              #                    occupy s6 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s6,s2,a3
              #                    free s2
              #                    free a3
    add     s5,s5,s6
              #                    free s6
              #                    occupy s2 with 7_0
    li      s2, 7
              #                    occupy a4 with e_28
              #                    occupy s6 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s6,s2,a4
              #                    free s2
              #                    free a4
    add     s5,s5,s6
              #                    free s6
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a5 with last_28
              #                    occupy s6 with _anonymous_of_temp_5_ptr2globl_31_0
    mul     s6,s2,a5
              #                    free s2
              #                    free a5
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
              #                    occupy s2 with 52908144_0
    li      s2, 52908144
    li      s2, 52908144
    add     s5,s2,s5
              #                    free s2
              #                    free s5
              #                          new_var temp_7_array_ele_31:i32 
              #                          temp_7_array_ele_31 = load temp_6_array_ptr_31:ptr->i32 
              #                    occupy s5 with temp_6_array_ptr_31
              #                    occupy s2 with temp_7_array_ele_31
    lw      s2,0(s5)
              #                    free s2
              #                    free s5
              #                          ret temp_7_array_ele_31 
              #                    load from ra_dfs_0 in mem
              #                    occupy s6 with ra_dfs_0
    li      s6, 158724000
    add     s6,sp,s6
    ld      ra,0(s6)
              #                    free s6
              #                    load from s0_dfs_0 in mem
              #                    occupy s7 with s0_dfs_0
    li      s7, 158723992
    add     s7,sp,s7
    ld      s0,0(s7)
              #                    free s7
              #                    store to temp_7_array_ele_31 in mem offset_illegal
              #                    occupy s2 with 52908132_0
    li      s2, 52908132
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_7_array_ele_31
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_28
              #                    occupy a0 with temp_7_array_ele_31
              #                    load from temp_7_array_ele_31 in mem

              #                    occupy s2 with temp_7_array_ele_31
    li      s2, 52908132
    add     s2,sp,s2
    lw      a0,0(s2)
              #                    free s2
              #                    occupy s8 with 158724008_0
    li      s8, 158724008
    li      s8, 158724008
    add     sp,s8,sp
              #                    free s8
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } | 
              #                          label branch_false_32: 
.branch_false_32:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_8_arithop_34:i32 
              #                          temp_8_arithop_34 = Add i32 a_28, b_28 
              #                    occupy a0 with a_28
              #                    occupy a1 with b_28
              #                    occupy s2 with temp_8_arithop_34
    add     s2,a0,a1
              #                    free a0
              #                    free a1
              #                    free s2
              #                          new_var temp_9_arithop_34:i32 
              #                          temp_9_arithop_34 = Add i32 temp_8_arithop_34, c_28 
              #                    occupy s2 with temp_8_arithop_34
              #                    occupy a2 with c_28
              #                    occupy s4 with temp_9_arithop_34
    add     s4,s2,a2
              #                    free s2
              #                    free a2
              #                    free s4
              #                          new_var temp_10_arithop_34:i32 
              #                          temp_10_arithop_34 = Add i32 temp_9_arithop_34, d_28 
              #                    occupy s4 with temp_9_arithop_34
              #                    occupy a3 with d_28
              #                    occupy s5 with temp_10_arithop_34
    add     s5,s4,a3
              #                    free s4
              #                    free a3
              #                    free s5
              #                          new_var temp_11_arithop_34:i32 
              #                          temp_11_arithop_34 = Add i32 temp_10_arithop_34, e_28 
              #                    occupy s5 with temp_10_arithop_34
              #                    occupy a4 with e_28
              #                    occupy s6 with temp_11_arithop_34
    add     s6,s5,a4
              #                    free s5
              #                    free a4
              #                    free s6
              #                          new_var temp_12_cmp_34:i1 
              #                          temp_12_cmp_34 = icmp i32 Eq temp_11_arithop_34, 0_0 
              #                    occupy s6 with temp_11_arithop_34
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s8 with temp_12_cmp_34
    xor     s8,s6,s7
    seqz    s8, s8
              #                    free s6
              #                    free s7
              #                    free s8
              #                          br i1 temp_12_cmp_34, label branch_true_35, label branch_false_35 
              #                    occupy s8 with temp_12_cmp_34
              #                    free s8
              #                    occupy s8 with temp_12_cmp_34
    bnez    s8, .branch_true_35
              #                    free s8
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          ret 1_0 
              #                    load from ra_dfs_0 in mem
              #                    occupy s7 with ra_dfs_0
    li      s7, 158724000
    add     s7,sp,s7
    ld      ra,0(s7)
              #                    free s7
              #                    load from s0_dfs_0 in mem
              #                    occupy s9 with s0_dfs_0
    li      s9, 158723992
    add     s9,sp,s9
    ld      s0,0(s9)
              #                    free s9
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_28
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s10 with 158724008_0
    li      s10, 158724008
    li      s10, 158724008
    add     sp,s10,sp
              #                    free s10
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ans_30 = i32 0_0 
              #                    occupy s7 with ans_30
    li      s7, 0
              #                    free s7
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_13__858:i1 
              #                          temp_13__858 = icmp i32 Ne a_28, 0_0 
              #                    occupy a0 with a_28
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s10 with temp_13__858
    xor     s10,a0,s9
    snez    s10, s10
              #                    free a0
              #                    free s9
              #                    free s10
              #                          br i1 temp_13__858, label branch_true_39, label branch_false_39 
              #                    occupy s10 with temp_13__858
              #                    free s10
              #                    occupy s10 with temp_13__858
    bnez    s10, .branch_true_39
              #                    free s10
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_14_arithop_38:i32 
              #                          temp_14_arithop_38 = Sub i32 a_28, 1_0 
              #                    occupy a0 with a_28
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s11 with temp_14_arithop_38
              #                    regtab:    a0:Occupied { symidx: a_28, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Occupied { symidx: temp_14_arithop_38, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     s11,a0,s9
              #                    free a0
              #                    free s9
              #                    free s11
              #                          new_var temp_15_ret_of_dfs_38:i32 
              #                          temp_15_ret_of_dfs_38 =  Call i32 dfs_0(temp_14_arithop_38, b_28, c_28, d_28, e_28, 1_0) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 105816056_0
    li      s1, 105816056
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ptr_31
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s1 with 52908128_0
    li      s1, 52908128
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s2 with 105816051_0
    li      s2, 105816051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_4_cmp_31
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908124_0
    li      s3, 52908124
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s4 with 52908120_0
    li      s4, 52908120
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s5 with 52908116_0
    li      s5, 52908116
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_11_arithop_34
              #                    store to ans_30 in mem offset_illegal
              #                    occupy s6 with 52908108_0
    li      s6, 52908108
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with ans_30
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s7 with 52908115_0
    li      s7, 52908115
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_12_cmp_34
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy s8 with 52908107_0
    li      s8, 52908107
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_13__858
              #                    store to temp_14_arithop_38 in mem offset_illegal
              #                    occupy s9 with 52908100_0
    li      s9, 52908100
    add     s9,sp,s9
    sw      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_14_arithop_38
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_28
              #                    store to b_28 in mem offset_illegal
              #                    occupy a0 with 158723984_0
    li      a0, 158723984
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with c_28
              #                    store to d_28 in mem offset_illegal
              #                    occupy a2 with 158723976_0
    li      a2, 158723976
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with d_28
              #                    store to e_28 in mem offset_illegal
              #                    occupy a3 with 158723972_0
    li      a3, 158723972
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with e_28
              #                    store to last_28 in mem offset_illegal
              #                    occupy a4 with 158723968_0
    li      a4, 158723968
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with last_28
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_3_array_ele_31
              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_1_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_14_arithop_38_0
              #                    load from temp_14_arithop_38 in mem

              #                    occupy a7 with temp_14_arithop_38
    li      a7, 52908100
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    occupy s11 with c_28
    li      s11, 158723980
    add     s11,sp,s11
    lw      a2,0(s11)
              #                    free s11
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a4 with d_28
    li      a4, 158723976
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    store to d_28 in mem offset_illegal
              #                    occupy a4 with 158723976_0
    li      a4, 158723976
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with d_28
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    occupy a5 with e_28
    li      a5, 158723972
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    store to e_28 in mem offset_illegal
              #                    occupy a5 with 158723972_0
    li      a5, 158723972
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with e_28
              #                    occupy a5 with _anonymous_of_1_0_0
    li      a5, 1
              #                    arg load ended


    call    dfs
              #                    store to temp_15_ret_of_dfs_38 in mem offset_illegal
              #                    occupy a0 with 52908096_0
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_16_ret_of_equal_38:i32 
              #                          temp_16_ret_of_equal_38 =  Call i32 equal_0(last_28, 2_0) 
              #                    saved register dumping to mem
              #                    store to b_28 in mem offset_illegal
              #                    occupy a1 with 158723984_0
    li      a1, 158723984
    add     a1,sp,a1
    sw      s10,0(a1)
              #                    free a1
              #                    release s10 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a2 with 158723980_0
    li      a2, 158723980
    add     a2,sp,a2
    sw      s11,0(a2)
              #                    free a2
              #                    release s11 with c_28
              #                    store to temp_15_ret_of_dfs_38 in mem offset_illegal
              #                    occupy a0 with 52908096_0
    li      a0, 52908096
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_15_ret_of_dfs_38
              #                    store to temp_14_arithop_38 in mem offset_illegal
              #                    occupy a0 with 52908100_0
    li      a0, 52908100
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_14_arithop_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    occupy a1 with last_28
    li      a1, 158723968
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to last_28 in mem offset_illegal
              #                    occupy a1 with 158723968_0
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with last_28
              #                    occupy a1 with _anonymous_of_2_0_0
    li      a1, 2
              #                    arg load ended


    call    equal
              #                    store to temp_16_ret_of_equal_38 in mem offset_illegal
              #                    occupy a0 with 52908092_0
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_17_arithop_38:i32 
              #                          temp_17_arithop_38 = Sub i32 a_28, temp_16_ret_of_equal_38 
              #                    occupy a1 with a_28
              #                    load from a_28 in mem

              #                    occupy a1 with a_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_16_ret_of_equal_38
              #                    occupy a2 with temp_17_arithop_38
              #                    regtab:    a0:Occupied { symidx: temp_16_ret_of_equal_38, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: a_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_17_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_18_arithop_38:i32 
              #                          temp_18_arithop_38 = Mul i32 temp_17_arithop_38, temp_15_ret_of_dfs_38 
              #                    occupy a2 with temp_17_arithop_38
              #                    occupy a3 with temp_15_ret_of_dfs_38
              #                    load from temp_15_ret_of_dfs_38 in mem

              #                    occupy a3 with temp_15_ret_of_dfs_38
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_18_arithop_38
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_19_arithop_38:i32 
              #                          temp_19_arithop_38 = Add i32 ans_30, temp_18_arithop_38 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem

              #                    occupy a5 with ans_30
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a4 with temp_18_arithop_38
              #                    occupy a6 with temp_19_arithop_38
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_20_arithop_38:i32 
              #                          temp_20_arithop_38 = Mod i32 temp_19_arithop_38, 1000000007_0 
              #                    occupy a6 with temp_19_arithop_38
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_20_arithop_38
              #                    load from temp_20_arithop_38 in mem

              #                    occupy s1 with temp_20_arithop_38
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_20_arithop_38 
              #                    occupy s1 with temp_20_arithop_38
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_39 
              #                    store to temp_19_arithop_38 in mem offset_illegal
              #                    occupy a6 with 52908080_0
    li      a6, 52908080
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_19_arithop_38
              #                    store to temp_15_ret_of_dfs_38 in mem offset_illegal
              #                    occupy a3 with 52908096_0
    li      a3, 52908096
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_15_ret_of_dfs_38
              #                    store to a_28 in mem offset_illegal
              #                    occupy a1 with 158723988_0
    li      a1, 158723988
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with a_28
              #                    store to temp_20_arithop_38 in mem offset_illegal
              #                    occupy a1 with 52908076_0
    li      a1, 52908076
    add     a1,sp,a1
    sw      s1,0(a1)
              #                    free a1
              #                    release s1 with temp_20_arithop_38
              #                    store to temp_18_arithop_38 in mem offset_illegal
              #                    occupy a3 with 52908084_0
    li      a3, 52908084
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_18_arithop_38
              #                    store to temp_16_ret_of_equal_38 in mem offset_illegal
              #                    occupy a0 with 52908092_0
    li      a0, 52908092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_16_ret_of_equal_38
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a0 with 52908108_0
    li      a0, 52908108
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with ans_30
              #                    store to temp_17_arithop_38 in mem offset_illegal
              #                    occupy a2 with 52908088_0
    li      a2, 52908088
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_17_arithop_38
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem

              #                    occupy a2 with temp_9_arithop_34
    li      a2, 52908124
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem

              #                    occupy a4 with ans_30
    li      a4, 52908108
    add     a4,sp,a4
    lw      s7,0(a4)
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_3_array_ele_31_0
              #                    load from temp_3_array_ele_31 in mem

              #                    occupy a5 with temp_3_array_ele_31
    li      a5, 105816052
    add     a5,sp,a5
    lw      a6,0(a5)
              #                    free a5
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a7 with d_28
    li      a7, 158723976
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    occupy s8 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
              #                    occupy s1 with temp_12_cmp_34
    li      s1, 52908115
    add     s1,sp,s1
    lb      s8,0(s1)
              #                    free s1
              #                    occupy s5 with _anonymous_of_temp_10_arithop_34_0
              #                    load from temp_10_arithop_34 in mem

              #                    occupy s2 with temp_10_arithop_34
    li      s2, 52908120
    add     s2,sp,s2
    lw      s5,0(s2)
              #                    free s2
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s2 with 52908120_0
    li      s2, 52908120
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_10_arithop_34
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem

              #                    occupy s3 with temp_8_arithop_34
    li      s3, 52908128
    add     s3,sp,s3
    lw      s2,0(s3)
              #                    free s3
              #                    occupy s6 with _anonymous_of_temp_11_arithop_34_0
              #                    load from temp_11_arithop_34 in mem

              #                    occupy s9 with temp_11_arithop_34
    li      s9, 52908116
    add     s9,sp,s9
    lw      s6,0(s9)
              #                    free s9
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908128_0
    li      s3, 52908128
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_8_arithop_34
              #                    occupy s3 with _anonymous_of_temp_4_cmp_31_0
              #                    load from temp_4_cmp_31 in mem
              #                    occupy s11 with temp_4_cmp_31
    li      s11, 105816051
    add     s11,sp,s11
    lb      s3,0(s11)
              #                    free s11
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s1 with 52908115_0
    li      s1, 52908115
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_12_cmp_34
              #                    occupy s1 with _anonymous_of_temp_2_array_ptr_31_0
              #                    load from temp_2_array_ptr_31 in mem
              #                    occupy a0 with temp_2_array_ptr_31
    li      a0, 105816056
    add     a0,sp,a0
    ld      s1,0(a0)
              #                    free a0
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a4 with 52908108_0
    li      a4, 52908108
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with ans_30
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy a0 with 105816056_0
    li      a0, 105816056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_2_array_ptr_31
              #                    occupy a0 with e_28
    li      a0, 158723972
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    store to b_28 in mem offset_illegal
              #                    occupy s10 with 158723984_0
    li      s10, 158723984
    add     s10,sp,s10
    sw      s10,0(s10)
              #                    free s10
              #                    release s10 with b_28
              #                    occupy s10 with _anonymous_of_temp_13__858_0
              #                    load from temp_13__858 in mem
              #                    store to e_28 in mem offset_illegal
              #                    occupy a0 with 158723972_0
    li      a0, 158723972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with e_28
              #                    occupy a0 with temp_13__858
    li      a0, 52908107
    add     a0,sp,a0
    lb      s10,0(a0)
              #                    free a0
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s11 with 105816051_0
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
              #                    free s11
              #                    release s11 with temp_4_cmp_31
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy a0 with 52908107_0
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13__858
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem

              #                    occupy s11 with a_28
    li      s11, 158723988
    add     s11,sp,s11
    lw      a0,0(s11)
              #                    free s11
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_3_array_ele_31
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy a2 with 52908124_0
    li      a2, 52908124
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_arithop_34
              #                    occupy a2 with last_28
    li      a2, 158723968
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s9 with 52908116_0
    li      s9, 52908116
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_11_arithop_34
              #                    store to d_28 in mem offset_illegal
              #                    occupy a7 with 158723976_0
    li      a7, 158723976
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with d_28
              #                    occupy a7 with _anonymous_of_temp_1_ptr2globl_31_0
              #                    load from temp_1_ptr2globl_31 in mem
              #                    occupy s9 with temp_1_ptr2globl_31
    li      s9, 105816064
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to last_28 in mem offset_illegal
              #                    occupy a2 with 158723968_0
    li      a2, 158723968
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with last_28
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy s9 with 105816064_0
    li      s9, 105816064
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_1_ptr2globl_31
              #                    occupy s9 with c_28
    li      s9, 158723980
    add     s9,sp,s9
    lw      a2,0(s9)
              #                    free s9
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_21__1132:i1 
              #                          temp_21__1132 = icmp i32 Ne b_28, 0_0 
              #                    occupy a1 with b_28
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    occupy s11 with temp_21__1132
    xor     s11,a1,s9
    snez    s11, s11
              #                    free a1
              #                    free s9
              #                    free s11
              #                          br i1 temp_21__1132, label branch_true_42, label branch_false_42 
              #                    occupy s11 with temp_21__1132
              #                    free s11
              #                    occupy s11 with temp_21__1132
    bnez    s11, .branch_true_42
              #                    free s11
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          new_var temp_22_arithop_41:i32 
              #                          temp_22_arithop_41 = Add i32 a_28, 1_0 
              #                    occupy a0 with a_28
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to b_28 in mem offset_illegal
              #                    occupy a1 with 158723984_0
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_28
              #                    occupy a1 with temp_22_arithop_41
    add     a1,a0,s9
              #                    free a0
              #                    free s9
              #                    free a1
              #                          new_var temp_23_arithop_41:i32 
              #                          temp_23_arithop_41 = Sub i32 b_28, 1_0 
              #                    occupy s9 with b_28
              #                    load from b_28 in mem

              #                    occupy s9 with b_28
    add     s9,sp,s9
    lw      s9,0(s9)
              #                    free s9
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_28
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_22_arithop_41 in mem offset_illegal
              #                    occupy a1 with 52908068_0
    li      a1, 52908068
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_22_arithop_41
              #                    occupy a1 with temp_23_arithop_41
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_23_arithop_41, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Occupied { symidx: b_28, tracked: true, occupy_count: 1 } | 


    sub     a1,s9,a0
              #                    free s9
              #                    free a0
              #                    free a1
              #                          new_var temp_24_ret_of_dfs_41:i32 
              #                          temp_24_ret_of_dfs_41 =  Call i32 dfs_0(temp_22_arithop_41, temp_23_arithop_41, c_28, d_28, e_28, 2_0) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 105816056_0
    li      s1, 105816056
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ptr_31
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s1 with 52908128_0
    li      s1, 52908128
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s2 with 105816051_0
    li      s2, 105816051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_4_cmp_31
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908124_0
    li      s3, 52908124
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s4 with 52908120_0
    li      s4, 52908120
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s5 with 52908116_0
    li      s5, 52908116
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_11_arithop_34
              #                    store to ans_30 in mem offset_illegal
              #                    occupy s6 with 52908108_0
    li      s6, 52908108
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with ans_30
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s7 with 52908115_0
    li      s7, 52908115
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_12_cmp_34
              #                    store to b_28 in mem offset_illegal
              #                    occupy s8 with 158723984_0
    li      s8, 158723984
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with b_28
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy s9 with 52908107_0
    li      s9, 52908107
    add     s9,sp,s9
    sb      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_13__858
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy s10 with 52908075_0
    li      s10, 52908075
    add     s10,sp,s10
    sb      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_21__1132
              #                    store to temp_23_arithop_41 in mem offset_illegal
              #                    occupy a0 with 52908064_0
    li      a0, 52908064
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_23_arithop_41
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with c_28
              #                    store to d_28 in mem offset_illegal
              #                    occupy a2 with 158723976_0
    li      a2, 158723976
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with d_28
              #                    store to e_28 in mem offset_illegal
              #                    occupy a3 with 158723972_0
    li      a3, 158723972
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with e_28
              #                    store to last_28 in mem offset_illegal
              #                    occupy a4 with 158723968_0
    li      a4, 158723968
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with last_28
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_3_array_ele_31
              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_1_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_22_arithop_41_0
              #                    load from temp_22_arithop_41 in mem

              #                    occupy a7 with temp_22_arithop_41
    li      a7, 52908068
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_23_arithop_41_0
              #                    load from temp_23_arithop_41 in mem

              #                    occupy s11 with temp_23_arithop_41
    li      s11, 52908064
    add     s11,sp,s11
    lw      a1,0(s11)
              #                    free s11
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    occupy a3 with c_28
    li      a3, 158723980
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
              #                    store to c_28 in mem offset_illegal
              #                    occupy a3 with 158723980_0
    li      a3, 158723980
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with c_28
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a4 with d_28
    li      a4, 158723976
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    store to d_28 in mem offset_illegal
              #                    occupy a4 with 158723976_0
    li      a4, 158723976
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with d_28
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    occupy a5 with e_28
    li      a5, 158723972
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    store to e_28 in mem offset_illegal
              #                    occupy a5 with 158723972_0
    li      a5, 158723972
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with e_28
              #                    occupy a5 with _anonymous_of_2_0_0
    li      a5, 2
              #                    arg load ended


    call    dfs
              #                    store to temp_24_ret_of_dfs_41 in mem offset_illegal
              #                    occupy a0 with 52908060_0
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_25_ret_of_equal_41:i32 
              #                          temp_25_ret_of_equal_41 =  Call i32 equal_0(last_28, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_23_arithop_41 in mem offset_illegal
              #                    occupy a1 with 52908064_0
    li      a1, 52908064
    add     a1,sp,a1
    sw      s11,0(a1)
              #                    free a1
              #                    release s11 with temp_23_arithop_41
              #                    store to temp_24_ret_of_dfs_41 in mem offset_illegal
              #                    occupy a0 with 52908060_0
    li      a0, 52908060
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_24_ret_of_dfs_41
              #                    store to temp_22_arithop_41 in mem offset_illegal
              #                    occupy a0 with 52908068_0
    li      a0, 52908068
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with temp_22_arithop_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    occupy a1 with last_28
    li      a1, 158723968
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to last_28 in mem offset_illegal
              #                    occupy a1 with 158723968_0
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with last_28
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    arg load ended


    call    equal
              #                    store to temp_25_ret_of_equal_41 in mem offset_illegal
              #                    occupy a0 with 52908056_0
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_26_arithop_41:i32 
              #                          temp_26_arithop_41 = Sub i32 b_28, temp_25_ret_of_equal_41 
              #                    occupy a1 with b_28
              #                    load from b_28 in mem

              #                    occupy a1 with b_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_25_ret_of_equal_41
              #                    occupy a2 with temp_26_arithop_41
              #                    regtab:    a0:Occupied { symidx: temp_25_ret_of_equal_41, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_26_arithop_41, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_27_arithop_41:i32 
              #                          temp_27_arithop_41 = Mul i32 temp_26_arithop_41, temp_24_ret_of_dfs_41 
              #                    occupy a2 with temp_26_arithop_41
              #                    occupy a3 with temp_24_ret_of_dfs_41
              #                    load from temp_24_ret_of_dfs_41 in mem

              #                    occupy a3 with temp_24_ret_of_dfs_41
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_27_arithop_41
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_28_arithop_41:i32 
              #                          temp_28_arithop_41 = Add i32 ans_30, temp_27_arithop_41 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem

              #                    occupy a5 with ans_30
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a4 with temp_27_arithop_41
              #                    occupy a6 with temp_28_arithop_41
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_29_arithop_41:i32 
              #                          temp_29_arithop_41 = Mod i32 temp_28_arithop_41, 1000000007_0 
              #                    occupy a6 with temp_28_arithop_41
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_29_arithop_41
              #                    load from temp_29_arithop_41 in mem

              #                    occupy s1 with temp_29_arithop_41
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_29_arithop_41 
              #                    occupy s1 with temp_29_arithop_41
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_42 
              #                    store to temp_28_arithop_41 in mem offset_illegal
              #                    occupy a6 with 52908044_0
    li      a6, 52908044
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_28_arithop_41
              #                    store to temp_24_ret_of_dfs_41 in mem offset_illegal
              #                    occupy a3 with 52908060_0
    li      a3, 52908060
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_24_ret_of_dfs_41
              #                    store to temp_29_arithop_41 in mem offset_illegal
              #                    occupy a3 with 52908040_0
    li      a3, 52908040
    add     a3,sp,a3
    sw      s1,0(a3)
              #                    free a3
              #                    release s1 with temp_29_arithop_41
              #                    store to temp_27_arithop_41 in mem offset_illegal
              #                    occupy a4 with 52908048_0
    li      a4, 52908048
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_27_arithop_41
              #                    store to temp_25_ret_of_equal_41 in mem offset_illegal
              #                    occupy a0 with 52908056_0
    li      a0, 52908056
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_25_ret_of_equal_41
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a0 with 52908108_0
    li      a0, 52908108
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with ans_30
              #                    store to temp_26_arithop_41 in mem offset_illegal
              #                    occupy a2 with 52908052_0
    li      a2, 52908052
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_26_arithop_41
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem

              #                    occupy a2 with temp_9_arithop_34
    li      a2, 52908124
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem

              #                    occupy a4 with ans_30
    li      a4, 52908108
    add     a4,sp,a4
    lw      s7,0(a4)
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_3_array_ele_31_0
              #                    load from temp_3_array_ele_31 in mem

              #                    occupy a5 with temp_3_array_ele_31
    li      a5, 105816052
    add     a5,sp,a5
    lw      a6,0(a5)
              #                    free a5
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a7 with d_28
    li      a7, 158723976
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    occupy s8 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
              #                    occupy s1 with temp_12_cmp_34
    li      s1, 52908115
    add     s1,sp,s1
    lb      s8,0(s1)
              #                    free s1
              #                    occupy s5 with _anonymous_of_temp_10_arithop_34_0
              #                    load from temp_10_arithop_34 in mem

              #                    occupy s2 with temp_10_arithop_34
    li      s2, 52908120
    add     s2,sp,s2
    lw      s5,0(s2)
              #                    free s2
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s2 with 52908120_0
    li      s2, 52908120
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_10_arithop_34
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem

              #                    occupy s3 with temp_8_arithop_34
    li      s3, 52908128
    add     s3,sp,s3
    lw      s2,0(s3)
              #                    free s3
              #                    occupy s6 with _anonymous_of_temp_11_arithop_34_0
              #                    load from temp_11_arithop_34 in mem

              #                    occupy s9 with temp_11_arithop_34
    li      s9, 52908116
    add     s9,sp,s9
    lw      s6,0(s9)
              #                    free s9
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908128_0
    li      s3, 52908128
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_8_arithop_34
              #                    occupy s3 with _anonymous_of_temp_4_cmp_31_0
              #                    load from temp_4_cmp_31 in mem
              #                    occupy s10 with temp_4_cmp_31
    li      s10, 105816051
    add     s10,sp,s10
    lb      s3,0(s10)
              #                    free s10
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s1 with 52908115_0
    li      s1, 52908115
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_12_cmp_34
              #                    occupy s1 with _anonymous_of_temp_2_array_ptr_31_0
              #                    load from temp_2_array_ptr_31 in mem
              #                    occupy s11 with temp_2_array_ptr_31
    li      s11, 105816056
    add     s11,sp,s11
    ld      s1,0(s11)
              #                    free s11
              #                    store to ans_30 in mem offset_illegal
              #                    found literal reg Some(a0) already exist with 52908108_0
              #                    occupy a0 with 52908108_0
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with ans_30
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    occupy a0 with e_28
    li      a0, 158723972
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s10 with 105816051_0
    li      s10, 105816051
    add     s10,sp,s10
    sb      s10,0(s10)
              #                    free s10
              #                    release s10 with temp_4_cmp_31
              #                    occupy s10 with _anonymous_of_temp_13__858_0
              #                    load from temp_13__858 in mem
              #                    store to e_28 in mem offset_illegal
              #                    occupy a0 with 158723972_0
    li      a0, 158723972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with e_28
              #                    occupy a0 with temp_13__858
    li      a0, 52908107
    add     a0,sp,a0
    lb      s10,0(a0)
              #                    free a0
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s11 with 105816056_0
    li      s11, 105816056
    add     s11,sp,s11
    sd      s11,0(s11)
              #                    free s11
              #                    release s11 with temp_2_array_ptr_31
              #                    occupy s11 with _anonymous_of_temp_21__1132_0
              #                    load from temp_21__1132 in mem
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy a0 with 52908107_0
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13__858
              #                    occupy a0 with temp_21__1132
    li      a0, 52908075
    add     a0,sp,a0
    lb      s11,0(a0)
              #                    free a0
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy a0 with 52908075_0
    li      a0, 52908075
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_21__1132
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem

              #                    store to b_28 in mem offset_illegal
              #                    occupy a1 with 158723984_0
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_28
              #                    occupy a1 with a_28
    li      a1, 158723988
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_3_array_ele_31
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    store to a_28 in mem offset_illegal
              #                    occupy a1 with 158723988_0
    li      a1, 158723988
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with a_28
              #                    occupy a1 with last_28
    li      a1, 158723968
    add     a1,sp,a1
    lw      a5,0(a1)
              #                    free a1
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s9 with 52908116_0
    li      s9, 52908116
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_11_arithop_34
              #                    store to d_28 in mem offset_illegal
              #                    occupy a7 with 158723976_0
    li      a7, 158723976
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with d_28
              #                    occupy a7 with _anonymous_of_temp_1_ptr2globl_31_0
              #                    load from temp_1_ptr2globl_31 in mem
              #                    occupy s9 with temp_1_ptr2globl_31
    li      s9, 105816064
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy a2 with 52908124_0
    li      a2, 52908124
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_arithop_34
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    store to last_28 in mem offset_illegal
              #                    occupy a1 with 158723968_0
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with last_28
              #                    occupy a1 with c_28
    li      a1, 158723980
    add     a1,sp,a1
    lw      a2,0(a1)
              #                    free a1
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_30__1413:i1 
              #                          temp_30__1413 = icmp i32 Ne c_28, 0_0 
              #                    occupy a2 with c_28
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with a_28
              #                    occupy a0 with temp_30__1413
    xor     a0,a2,s9
    snez    a0, a0
              #                    free a2
              #                    free s9
              #                    free a0
              #                          br i1 temp_30__1413, label branch_true_45, label branch_false_45 
              #                    occupy a0 with temp_30__1413
              #                    free a0
              #                    occupy a0 with temp_30__1413
    bnez    a0, .branch_true_45
              #                    free a0
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_30__1413, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_45: 
.branch_true_45:
              #                          new_var temp_31_arithop_44:i32 
              #                          temp_31_arithop_44 = Add i32 b_28, 1_0 
              #                    occupy a1 with b_28
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to temp_30__1413 in mem offset_illegal
              #                    occupy a0 with 52908039_0
    li      a0, 52908039
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30__1413
              #                    occupy a0 with temp_31_arithop_44
    add     a0,a1,s9
              #                    free a1
              #                    free s9
              #                    free a0
              #                          new_var temp_32_arithop_44:i32 
              #                          temp_32_arithop_44 = Sub i32 c_28, 1_0 
              #                    occupy a2 with c_28
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    store to temp_31_arithop_44 in mem offset_illegal
              #                    occupy a0 with 52908032_0
    li      a0, 52908032
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_31_arithop_44
              #                    occupy a0 with temp_32_arithop_44
              #                    regtab:    a0:Occupied { symidx: temp_32_arithop_44, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Occupied { symidx: c_28, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     a0,a2,s9
              #                    free a2
              #                    free s9
              #                    free a0
              #                          new_var temp_33_ret_of_dfs_44:i32 
              #                          temp_33_ret_of_dfs_44 =  Call i32 dfs_0(a_28, temp_31_arithop_44, temp_32_arithop_44, d_28, e_28, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 105816056_0
    li      s1, 105816056
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ptr_31
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s1 with 52908128_0
    li      s1, 52908128
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s2 with 105816051_0
    li      s2, 105816051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_4_cmp_31
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908124_0
    li      s3, 52908124
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s4 with 52908120_0
    li      s4, 52908120
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s5 with 52908116_0
    li      s5, 52908116
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_11_arithop_34
              #                    store to ans_30 in mem offset_illegal
              #                    occupy s6 with 52908108_0
    li      s6, 52908108
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with ans_30
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s7 with 52908115_0
    li      s7, 52908115
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_12_cmp_34
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy s8 with 52908107_0
    li      s8, 52908107
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_13__858
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy s9 with 52908075_0
    li      s9, 52908075
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_21__1132
              #                    store to temp_32_arithop_44 in mem offset_illegal
              #                    occupy a0 with 52908028_0
    li      a0, 52908028
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_32_arithop_44
              #                    store to b_28 in mem offset_illegal
              #                    occupy a0 with 158723984_0
    li      a0, 158723984
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with c_28
              #                    store to d_28 in mem offset_illegal
              #                    occupy a2 with 158723976_0
    li      a2, 158723976
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with d_28
              #                    store to e_28 in mem offset_illegal
              #                    occupy a3 with 158723972_0
    li      a3, 158723972
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with e_28
              #                    store to last_28 in mem offset_illegal
              #                    occupy a4 with 158723968_0
    li      a4, 158723968
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with last_28
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_3_array_ele_31
              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_1_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem

              #                    occupy a7 with a_28
    li      a7, 158723988
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_31_arithop_44_0
              #                    load from temp_31_arithop_44 in mem

              #                    occupy s10 with temp_31_arithop_44
    li      s10, 52908032
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    occupy a2 with _anonymous_of_temp_32_arithop_44_0
              #                    load from temp_32_arithop_44 in mem

              #                    occupy s11 with temp_32_arithop_44
    li      s11, 52908028
    add     s11,sp,s11
    lw      a2,0(s11)
              #                    free s11
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a4 with d_28
    li      a4, 158723976
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    store to d_28 in mem offset_illegal
              #                    occupy a4 with 158723976_0
    li      a4, 158723976
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with d_28
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    occupy a5 with e_28
    li      a5, 158723972
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    store to e_28 in mem offset_illegal
              #                    occupy a5 with 158723972_0
    li      a5, 158723972
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with e_28
              #                    occupy a5 with _anonymous_of_3_0_0
    li      a5, 3
              #                    arg load ended


    call    dfs
              #                    store to temp_33_ret_of_dfs_44 in mem offset_illegal
              #                    occupy a0 with 52908024_0
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_34_ret_of_equal_44:i32 
              #                          temp_34_ret_of_equal_44 =  Call i32 equal_0(last_28, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_31_arithop_44 in mem offset_illegal
              #                    occupy a1 with 52908032_0
    li      a1, 52908032
    add     a1,sp,a1
    sw      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_31_arithop_44
              #                    store to temp_32_arithop_44 in mem offset_illegal
              #                    occupy a2 with 52908028_0
    li      a2, 52908028
    add     a2,sp,a2
    sw      s11,0(a2)
              #                    free a2
              #                    release s11 with temp_32_arithop_44
              #                    store to temp_33_ret_of_dfs_44 in mem offset_illegal
              #                    occupy a0 with 52908024_0
    li      a0, 52908024
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_33_ret_of_dfs_44
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with a_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    occupy a1 with last_28
    li      a1, 158723968
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to last_28 in mem offset_illegal
              #                    occupy a1 with 158723968_0
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with last_28
              #                    occupy a1 with _anonymous_of_4_0_0
    li      a1, 4
              #                    arg load ended


    call    equal
              #                    store to temp_34_ret_of_equal_44 in mem offset_illegal
              #                    occupy a0 with 52908020_0
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_35_arithop_44:i32 
              #                          temp_35_arithop_44 = Sub i32 c_28, temp_34_ret_of_equal_44 
              #                    occupy a1 with c_28
              #                    load from c_28 in mem

              #                    occupy a1 with c_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_34_ret_of_equal_44
              #                    occupy a2 with temp_35_arithop_44
              #                    regtab:    a0:Occupied { symidx: temp_34_ret_of_equal_44, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: c_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_35_arithop_44, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_36_arithop_44:i32 
              #                          temp_36_arithop_44 = Mul i32 temp_35_arithop_44, temp_33_ret_of_dfs_44 
              #                    occupy a2 with temp_35_arithop_44
              #                    occupy a3 with temp_33_ret_of_dfs_44
              #                    load from temp_33_ret_of_dfs_44 in mem

              #                    occupy a3 with temp_33_ret_of_dfs_44
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_36_arithop_44
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_37_arithop_44:i32 
              #                          temp_37_arithop_44 = Add i32 ans_30, temp_36_arithop_44 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem

              #                    occupy a5 with ans_30
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a4 with temp_36_arithop_44
              #                    occupy a6 with temp_37_arithop_44
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_38_arithop_44:i32 
              #                          temp_38_arithop_44 = Mod i32 temp_37_arithop_44, 1000000007_0 
              #                    occupy a6 with temp_37_arithop_44
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_38_arithop_44
              #                    load from temp_38_arithop_44 in mem

              #                    occupy s1 with temp_38_arithop_44
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_38_arithop_44 
              #                    occupy s1 with temp_38_arithop_44
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_45 
              #                    store to temp_37_arithop_44 in mem offset_illegal
              #                    occupy a6 with 52908008_0
    li      a6, 52908008
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_37_arithop_44
              #                    store to temp_33_ret_of_dfs_44 in mem offset_illegal
              #                    occupy a3 with 52908024_0
    li      a3, 52908024
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_33_ret_of_dfs_44
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with c_28
              #                    store to temp_38_arithop_44 in mem offset_illegal
              #                    occupy a1 with 52908004_0
    li      a1, 52908004
    add     a1,sp,a1
    sw      s1,0(a1)
              #                    free a1
              #                    release s1 with temp_38_arithop_44
              #                    store to temp_36_arithop_44 in mem offset_illegal
              #                    occupy a3 with 52908012_0
    li      a3, 52908012
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_36_arithop_44
              #                    store to temp_34_ret_of_equal_44 in mem offset_illegal
              #                    occupy a0 with 52908020_0
    li      a0, 52908020
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_34_ret_of_equal_44
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a0 with 52908108_0
    li      a0, 52908108
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with ans_30
              #                    store to temp_35_arithop_44 in mem offset_illegal
              #                    occupy a2 with 52908016_0
    li      a2, 52908016
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_35_arithop_44
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem

              #                    occupy a2 with temp_9_arithop_34
    li      a2, 52908124
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem

              #                    occupy a4 with ans_30
    li      a4, 52908108
    add     a4,sp,a4
    lw      s7,0(a4)
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_3_array_ele_31_0
              #                    load from temp_3_array_ele_31 in mem

              #                    occupy a5 with temp_3_array_ele_31
    li      a5, 105816052
    add     a5,sp,a5
    lw      a6,0(a5)
              #                    free a5
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a7 with d_28
    li      a7, 158723976
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    occupy s8 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
              #                    occupy s1 with temp_12_cmp_34
    li      s1, 52908115
    add     s1,sp,s1
    lb      s8,0(s1)
              #                    free s1
              #                    occupy s5 with _anonymous_of_temp_10_arithop_34_0
              #                    load from temp_10_arithop_34 in mem

              #                    occupy s2 with temp_10_arithop_34
    li      s2, 52908120
    add     s2,sp,s2
    lw      s5,0(s2)
              #                    free s2
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s2 with 52908120_0
    li      s2, 52908120
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_10_arithop_34
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem

              #                    occupy s3 with temp_8_arithop_34
    li      s3, 52908128
    add     s3,sp,s3
    lw      s2,0(s3)
              #                    free s3
              #                    occupy s6 with _anonymous_of_temp_11_arithop_34_0
              #                    load from temp_11_arithop_34 in mem

              #                    occupy s9 with temp_11_arithop_34
    li      s9, 52908116
    add     s9,sp,s9
    lw      s6,0(s9)
              #                    free s9
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908128_0
    li      s3, 52908128
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_8_arithop_34
              #                    occupy s3 with _anonymous_of_temp_4_cmp_31_0
              #                    load from temp_4_cmp_31 in mem
              #                    occupy s11 with temp_4_cmp_31
    li      s11, 105816051
    add     s11,sp,s11
    lb      s3,0(s11)
              #                    free s11
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s1 with 52908115_0
    li      s1, 52908115
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_12_cmp_34
              #                    occupy s1 with _anonymous_of_temp_2_array_ptr_31_0
              #                    load from temp_2_array_ptr_31 in mem
              #                    occupy a0 with temp_2_array_ptr_31
    li      a0, 105816056
    add     a0,sp,a0
    ld      s1,0(a0)
              #                    free a0
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a4 with 52908108_0
    li      a4, 52908108
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with ans_30
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy a0 with 105816056_0
    li      a0, 105816056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_2_array_ptr_31
              #                    occupy a0 with e_28
    li      a0, 158723972
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    store to b_28 in mem offset_illegal
              #                    occupy s10 with 158723984_0
    li      s10, 158723984
    add     s10,sp,s10
    sw      s10,0(s10)
              #                    free s10
              #                    release s10 with b_28
              #                    occupy s10 with _anonymous_of_temp_13__858_0
              #                    load from temp_13__858 in mem
              #                    store to e_28 in mem offset_illegal
              #                    occupy a0 with 158723972_0
    li      a0, 158723972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with e_28
              #                    occupy a0 with temp_13__858
    li      a0, 52908107
    add     a0,sp,a0
    lb      s10,0(a0)
              #                    free a0
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s11 with 105816051_0
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
              #                    free s11
              #                    release s11 with temp_4_cmp_31
              #                    occupy s11 with _anonymous_of_temp_21__1132_0
              #                    load from temp_21__1132 in mem
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy a0 with 52908107_0
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13__858
              #                    occupy a0 with temp_21__1132
    li      a0, 52908075
    add     a0,sp,a0
    lb      s11,0(a0)
              #                    free a0
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy a0 with 52908075_0
    li      a0, 52908075
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_21__1132
              #                    occupy a0 with _anonymous_of_temp_30__1413_0
              #                    load from temp_30__1413 in mem
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy a2 with 52908124_0
    li      a2, 52908124
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_arithop_34
              #                    occupy a2 with temp_30__1413
    li      a2, 52908039
    add     a2,sp,a2
    lb      a0,0(a2)
              #                    free a2
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_3_array_ele_31
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    store to temp_30__1413 in mem offset_illegal
              #                    occupy a2 with 52908039_0
    li      a2, 52908039
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_30__1413
              #                    occupy a2 with last_28
    li      a2, 158723968
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s9 with 52908116_0
    li      s9, 52908116
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_11_arithop_34
              #                    store to d_28 in mem offset_illegal
              #                    occupy a7 with 158723976_0
    li      a7, 158723976
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with d_28
              #                    occupy a7 with _anonymous_of_temp_1_ptr2globl_31_0
              #                    load from temp_1_ptr2globl_31 in mem
              #                    occupy s9 with temp_1_ptr2globl_31
    li      s9, 105816064
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to last_28 in mem offset_illegal
              #                    occupy a2 with 158723968_0
    li      a2, 158723968
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with last_28
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy s9 with 105816064_0
    li      s9, 105816064
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_1_ptr2globl_31
              #                    occupy s9 with c_28
    li      s9, 158723980
    add     s9,sp,s9
    lw      a2,0(s9)
              #                    free s9
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_30__1413, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_45: 
.branch_false_45:
              #                    regtab     a0:Freed { symidx: temp_30__1413, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_39__1694:i1 
              #                          temp_39__1694 = icmp i32 Ne d_28, 0_0 
              #                    occupy a3 with d_28
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    store to temp_30__1413 in mem offset_illegal
              #                    occupy a0 with 52908039_0
    li      a0, 52908039
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_30__1413
              #                    occupy a0 with temp_39__1694
    xor     a0,a3,s9
    snez    a0, a0
              #                    free a3
              #                    free s9
              #                    free a0
              #                          br i1 temp_39__1694, label branch_true_48, label branch_false_48 
              #                    occupy a0 with temp_39__1694
              #                    free a0
              #                    occupy a0 with temp_39__1694
    bnez    a0, .branch_true_48
              #                    free a0
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: temp_39__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_48: 
.branch_true_48:
              #                          new_var temp_40_arithop_47:i32 
              #                          temp_40_arithop_47 = Add i32 c_28, 1_0 
              #                    occupy a2 with c_28
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to temp_39__1694 in mem offset_illegal
              #                    occupy a0 with 52908003_0
    li      a0, 52908003
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_39__1694
              #                    occupy a0 with temp_40_arithop_47
    add     a0,a2,s9
              #                    free a2
              #                    free s9
              #                    free a0
              #                          new_var temp_41_arithop_47:i32 
              #                          temp_41_arithop_47 = Sub i32 d_28, 1_0 
              #                    occupy a3 with d_28
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    store to temp_40_arithop_47 in mem offset_illegal
              #                    occupy a0 with 52907996_0
    li      a0, 52907996
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_40_arithop_47
              #                    occupy a0 with temp_41_arithop_47
              #                    regtab:    a0:Occupied { symidx: temp_41_arithop_47, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Occupied { symidx: d_28, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     a0,a3,s9
              #                    free a3
              #                    free s9
              #                    free a0
              #                          new_var temp_42_ret_of_dfs_47:i32 
              #                          temp_42_ret_of_dfs_47 =  Call i32 dfs_0(a_28, b_28, temp_40_arithop_47, temp_41_arithop_47, e_28, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 105816056_0
    li      s1, 105816056
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ptr_31
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s1 with 52908128_0
    li      s1, 52908128
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s2 with 105816051_0
    li      s2, 105816051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_4_cmp_31
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908124_0
    li      s3, 52908124
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s4 with 52908120_0
    li      s4, 52908120
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s5 with 52908116_0
    li      s5, 52908116
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_11_arithop_34
              #                    store to ans_30 in mem offset_illegal
              #                    occupy s6 with 52908108_0
    li      s6, 52908108
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with ans_30
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s7 with 52908115_0
    li      s7, 52908115
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_12_cmp_34
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy s8 with 52908107_0
    li      s8, 52908107
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_13__858
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy s9 with 52908075_0
    li      s9, 52908075
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_21__1132
              #                    store to temp_41_arithop_47 in mem offset_illegal
              #                    occupy a0 with 52907992_0
    li      a0, 52907992
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_41_arithop_47
              #                    store to b_28 in mem offset_illegal
              #                    occupy a0 with 158723984_0
    li      a0, 158723984
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with c_28
              #                    store to d_28 in mem offset_illegal
              #                    occupy a2 with 158723976_0
    li      a2, 158723976
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with d_28
              #                    store to e_28 in mem offset_illegal
              #                    occupy a3 with 158723972_0
    li      a3, 158723972
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with e_28
              #                    store to last_28 in mem offset_illegal
              #                    occupy a4 with 158723968_0
    li      a4, 158723968
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with last_28
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_3_array_ele_31
              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_1_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem

              #                    occupy a7 with a_28
    li      a7, 158723988
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    occupy a2 with _anonymous_of_temp_40_arithop_47_0
              #                    load from temp_40_arithop_47 in mem

              #                    occupy s11 with temp_40_arithop_47
    li      s11, 52907996
    add     s11,sp,s11
    lw      a2,0(s11)
              #                    free s11
              #                    occupy a3 with _anonymous_of_temp_41_arithop_47_0
              #                    load from temp_41_arithop_47 in mem

              #                    occupy a4 with temp_41_arithop_47
    li      a4, 52907992
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    store to temp_41_arithop_47 in mem offset_illegal
              #                    occupy a4 with 52907992_0
    li      a4, 52907992
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_41_arithop_47
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    occupy a5 with e_28
    li      a5, 158723972
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    store to e_28 in mem offset_illegal
              #                    occupy a5 with 158723972_0
    li      a5, 158723972
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with e_28
              #                    occupy a5 with _anonymous_of_4_0_0
    li      a5, 4
              #                    arg load ended


    call    dfs
              #                    store to temp_42_ret_of_dfs_47 in mem offset_illegal
              #                    occupy a0 with 52907988_0
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_43_ret_of_equal_47:i32 
              #                          temp_43_ret_of_equal_47 =  Call i32 equal_0(last_28, 5_0) 
              #                    saved register dumping to mem
              #                    store to b_28 in mem offset_illegal
              #                    occupy a1 with 158723984_0
    li      a1, 158723984
    add     a1,sp,a1
    sw      s10,0(a1)
              #                    free a1
              #                    release s10 with b_28
              #                    store to temp_40_arithop_47 in mem offset_illegal
              #                    occupy a2 with 52907996_0
    li      a2, 52907996
    add     a2,sp,a2
    sw      s11,0(a2)
              #                    free a2
              #                    release s11 with temp_40_arithop_47
              #                    store to temp_42_ret_of_dfs_47 in mem offset_illegal
              #                    occupy a0 with 52907988_0
    li      a0, 52907988
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_42_ret_of_dfs_47
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with a_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    occupy a1 with last_28
    li      a1, 158723968
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to last_28 in mem offset_illegal
              #                    occupy a1 with 158723968_0
    li      a1, 158723968
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with last_28
              #                    occupy a1 with _anonymous_of_5_0_0
    li      a1, 5
              #                    arg load ended


    call    equal
              #                    store to temp_43_ret_of_equal_47 in mem offset_illegal
              #                    occupy a0 with 52907984_0
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_44_arithop_47:i32 
              #                          temp_44_arithop_47 = Sub i32 d_28, temp_43_ret_of_equal_47 
              #                    occupy a1 with d_28
              #                    load from d_28 in mem

              #                    occupy a1 with d_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_43_ret_of_equal_47
              #                    occupy a2 with temp_44_arithop_47
              #                    regtab:    a0:Occupied { symidx: temp_43_ret_of_equal_47, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: d_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_44_arithop_47, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_45_arithop_47:i32 
              #                          temp_45_arithop_47 = Mul i32 temp_44_arithop_47, temp_42_ret_of_dfs_47 
              #                    occupy a2 with temp_44_arithop_47
              #                    occupy a3 with temp_42_ret_of_dfs_47
              #                    load from temp_42_ret_of_dfs_47 in mem

              #                    occupy a3 with temp_42_ret_of_dfs_47
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a4 with temp_45_arithop_47
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_46_arithop_47:i32 
              #                          temp_46_arithop_47 = Add i32 ans_30, temp_45_arithop_47 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem

              #                    occupy a5 with ans_30
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a4 with temp_45_arithop_47
              #                    occupy a6 with temp_46_arithop_47
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_47_arithop_47:i32 
              #                          temp_47_arithop_47 = Mod i32 temp_46_arithop_47, 1000000007_0 
              #                    occupy a6 with temp_46_arithop_47
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_47_arithop_47
              #                    load from temp_47_arithop_47 in mem

              #                    occupy s1 with temp_47_arithop_47
    add     s1,sp,s1
    lw      s1,0(s1)
              #                    free s1
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_47_arithop_47 
              #                    occupy s1 with temp_47_arithop_47
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_48 
              #                    store to temp_46_arithop_47 in mem offset_illegal
              #                    occupy a6 with 52907972_0
    li      a6, 52907972
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_46_arithop_47
              #                    store to temp_42_ret_of_dfs_47 in mem offset_illegal
              #                    occupy a3 with 52907988_0
    li      a3, 52907988
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_42_ret_of_dfs_47
              #                    store to d_28 in mem offset_illegal
              #                    occupy a1 with 158723976_0
    li      a1, 158723976
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with d_28
              #                    store to temp_47_arithop_47 in mem offset_illegal
              #                    occupy a1 with 52907968_0
    li      a1, 52907968
    add     a1,sp,a1
    sw      s1,0(a1)
              #                    free a1
              #                    release s1 with temp_47_arithop_47
              #                    store to temp_45_arithop_47 in mem offset_illegal
              #                    occupy a3 with 52907976_0
    li      a3, 52907976
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_45_arithop_47
              #                    store to temp_43_ret_of_equal_47 in mem offset_illegal
              #                    occupy a0 with 52907984_0
    li      a0, 52907984
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_43_ret_of_equal_47
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a0 with 52908108_0
    li      a0, 52908108
    add     a0,sp,a0
    sw      a5,0(a0)
              #                    free a0
              #                    release a5 with ans_30
              #                    store to temp_44_arithop_47 in mem offset_illegal
              #                    occupy a2 with 52907980_0
    li      a2, 52907980
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_44_arithop_47
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem

              #                    occupy a2 with temp_9_arithop_34
    li      a2, 52908124
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem

              #                    occupy a4 with ans_30
    li      a4, 52908108
    add     a4,sp,a4
    lw      s7,0(a4)
              #                    free a4
              #                    occupy a6 with _anonymous_of_temp_3_array_ele_31_0
              #                    load from temp_3_array_ele_31 in mem

              #                    occupy a5 with temp_3_array_ele_31
    li      a5, 105816052
    add     a5,sp,a5
    lw      a6,0(a5)
              #                    free a5
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy a7 with d_28
    li      a7, 158723976
    add     a7,sp,a7
    lw      a3,0(a7)
              #                    free a7
              #                    occupy s8 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
              #                    occupy s1 with temp_12_cmp_34
    li      s1, 52908115
    add     s1,sp,s1
    lb      s8,0(s1)
              #                    free s1
              #                    occupy s5 with _anonymous_of_temp_10_arithop_34_0
              #                    load from temp_10_arithop_34 in mem

              #                    occupy s2 with temp_10_arithop_34
    li      s2, 52908120
    add     s2,sp,s2
    lw      s5,0(s2)
              #                    free s2
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s2 with 52908120_0
    li      s2, 52908120
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_10_arithop_34
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem

              #                    occupy s3 with temp_8_arithop_34
    li      s3, 52908128
    add     s3,sp,s3
    lw      s2,0(s3)
              #                    free s3
              #                    occupy s6 with _anonymous_of_temp_11_arithop_34_0
              #                    load from temp_11_arithop_34 in mem

              #                    occupy s9 with temp_11_arithop_34
    li      s9, 52908116
    add     s9,sp,s9
    lw      s6,0(s9)
              #                    free s9
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908128_0
    li      s3, 52908128
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_8_arithop_34
              #                    occupy s3 with _anonymous_of_temp_4_cmp_31_0
              #                    load from temp_4_cmp_31 in mem
              #                    occupy s11 with temp_4_cmp_31
    li      s11, 105816051
    add     s11,sp,s11
    lb      s3,0(s11)
              #                    free s11
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s1 with 52908115_0
    li      s1, 52908115
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_12_cmp_34
              #                    occupy s1 with _anonymous_of_temp_2_array_ptr_31_0
              #                    load from temp_2_array_ptr_31 in mem
              #                    occupy a0 with temp_2_array_ptr_31
    li      a0, 105816056
    add     a0,sp,a0
    ld      s1,0(a0)
              #                    free a0
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a4 with 52908108_0
    li      a4, 52908108
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with ans_30
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy a0 with 105816056_0
    li      a0, 105816056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_2_array_ptr_31
              #                    occupy a0 with e_28
    li      a0, 158723972
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    store to b_28 in mem offset_illegal
              #                    occupy s10 with 158723984_0
    li      s10, 158723984
    add     s10,sp,s10
    sw      s10,0(s10)
              #                    free s10
              #                    release s10 with b_28
              #                    occupy s10 with _anonymous_of_temp_13__858_0
              #                    load from temp_13__858 in mem
              #                    store to e_28 in mem offset_illegal
              #                    occupy a0 with 158723972_0
    li      a0, 158723972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with e_28
              #                    occupy a0 with temp_13__858
    li      a0, 52908107
    add     a0,sp,a0
    lb      s10,0(a0)
              #                    free a0
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s11 with 105816051_0
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
              #                    free s11
              #                    release s11 with temp_4_cmp_31
              #                    occupy s11 with _anonymous_of_temp_21__1132_0
              #                    load from temp_21__1132 in mem
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy a0 with 52908107_0
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13__858
              #                    occupy a0 with temp_21__1132
    li      a0, 52908075
    add     a0,sp,a0
    lb      s11,0(a0)
              #                    free a0
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy a0 with 52908075_0
    li      a0, 52908075
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_21__1132
              #                    occupy a0 with _anonymous_of_temp_39__1694_0
              #                    load from temp_39__1694 in mem
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy a2 with 52908124_0
    li      a2, 52908124
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_arithop_34
              #                    occupy a2 with temp_39__1694
    li      a2, 52908003
    add     a2,sp,a2
    lb      a0,0(a2)
              #                    free a2
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_3_array_ele_31
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    store to temp_39__1694 in mem offset_illegal
              #                    occupy a2 with 52908003_0
    li      a2, 52908003
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_39__1694
              #                    occupy a2 with last_28
    li      a2, 158723968
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s9 with 52908116_0
    li      s9, 52908116
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_11_arithop_34
              #                    store to d_28 in mem offset_illegal
              #                    occupy a7 with 158723976_0
    li      a7, 158723976
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with d_28
              #                    occupy a7 with _anonymous_of_temp_1_ptr2globl_31_0
              #                    load from temp_1_ptr2globl_31 in mem
              #                    occupy s9 with temp_1_ptr2globl_31
    li      s9, 105816064
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to last_28 in mem offset_illegal
              #                    occupy a2 with 158723968_0
    li      a2, 158723968
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with last_28
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy s9 with 105816064_0
    li      s9, 105816064
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_1_ptr2globl_31
              #                    occupy s9 with c_28
    li      s9, 158723980
    add     s9,sp,s9
    lw      a2,0(s9)
              #                    free s9
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: temp_39__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_48: 
.branch_false_48:
              #                    regtab     a0:Freed { symidx: temp_39__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_48__1975:i1 
              #                          temp_48__1975 = icmp i32 Ne e_28, 0_0 
              #                    occupy a4 with e_28
              #                    occupy s9 with 0_0
    li      s9, 0
              #                    store to temp_39__1694 in mem offset_illegal
              #                    occupy a0 with 52908003_0
    li      a0, 52908003
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_39__1694
              #                    occupy a0 with temp_48__1975
    xor     a0,a4,s9
    snez    a0, a0
              #                    free a4
              #                    free s9
              #                    free a0
              #                          br i1 temp_48__1975, label branch_true_51, label branch_false_51 
              #                    occupy a0 with temp_48__1975
              #                    free a0
              #                    occupy a0 with temp_48__1975
    bnez    a0, .branch_true_51
              #                    free a0
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_48__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var temp_49_arithop_50:i32 
              #                          temp_49_arithop_50 = Add i32 d_28, 1_0 
              #                    occupy a3 with d_28
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    store to temp_48__1975 in mem offset_illegal
              #                    occupy a0 with 52907967_0
    li      a0, 52907967
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_48__1975
              #                    occupy a0 with temp_49_arithop_50
    add     a0,a3,s9
              #                    free a3
              #                    free s9
              #                    free a0
              #                          new_var temp_50_arithop_50:i32 
              #                          temp_50_arithop_50 = Sub i32 e_28, 1_0 
              #                    occupy a4 with e_28
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    store to temp_49_arithop_50 in mem offset_illegal
              #                    occupy a0 with 52907960_0
    li      a0, 52907960
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_49_arithop_50
              #                    occupy a0 with temp_50_arithop_50
              #                    regtab:    a0:Occupied { symidx: temp_50_arithop_50, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Occupied { symidx: e_28, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     a0,a4,s9
              #                    free a4
              #                    free s9
              #                    free a0
              #                          new_var temp_51_ret_of_dfs_50:i32 
              #                          temp_51_ret_of_dfs_50 =  Call i32 dfs_0(a_28, b_28, c_28, temp_49_arithop_50, temp_50_arithop_50, 5_0) 
              #                    saved register dumping to mem
              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy s1 with 105816056_0
    li      s1, 105816056
    add     s1,sp,s1
    sd      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_2_array_ptr_31
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s1 with 52908128_0
    li      s1, 52908128
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s2 with 105816051_0
    li      s2, 105816051
    add     s2,sp,s2
    sb      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_4_cmp_31
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908124_0
    li      s3, 52908124
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s4 with 52908120_0
    li      s4, 52908120
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s5 with 52908116_0
    li      s5, 52908116
    add     s5,sp,s5
    sw      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_11_arithop_34
              #                    store to ans_30 in mem offset_illegal
              #                    occupy s6 with 52908108_0
    li      s6, 52908108
    add     s6,sp,s6
    sw      s7,0(s6)
              #                    free s6
              #                    release s7 with ans_30
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s7 with 52908115_0
    li      s7, 52908115
    add     s7,sp,s7
    sb      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_12_cmp_34
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy s8 with 52908107_0
    li      s8, 52908107
    add     s8,sp,s8
    sb      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_13__858
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy s9 with 52908075_0
    li      s9, 52908075
    add     s9,sp,s9
    sb      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_21__1132
              #                    store to temp_50_arithop_50 in mem offset_illegal
              #                    occupy a0 with 52907956_0
    li      a0, 52907956
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_50_arithop_50
              #                    store to b_28 in mem offset_illegal
              #                    occupy a0 with 158723984_0
    li      a0, 158723984
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with c_28
              #                    store to d_28 in mem offset_illegal
              #                    occupy a2 with 158723976_0
    li      a2, 158723976
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with d_28
              #                    store to e_28 in mem offset_illegal
              #                    occupy a3 with 158723972_0
    li      a3, 158723972
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with e_28
              #                    store to last_28 in mem offset_illegal
              #                    occupy a4 with 158723968_0
    li      a4, 158723968
    add     a4,sp,a4
    sw      a5,0(a4)
              #                    free a4
              #                    release a5 with last_28
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a5 with 105816052_0
    li      a5, 105816052
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_3_array_ele_31
              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy a6 with 105816064_0
    li      a6, 105816064
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_1_ptr2globl_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem

              #                    occupy a7 with a_28
    li      a7, 158723988
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    occupy s11 with c_28
    li      s11, 158723980
    add     s11,sp,s11
    lw      a2,0(s11)
              #                    free s11
              #                    occupy a3 with _anonymous_of_temp_49_arithop_50_0
              #                    load from temp_49_arithop_50 in mem

              #                    occupy a4 with temp_49_arithop_50
    li      a4, 52907960
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    store to temp_49_arithop_50 in mem offset_illegal
              #                    occupy a4 with 52907960_0
    li      a4, 52907960
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_49_arithop_50
              #                    occupy a4 with _anonymous_of_temp_50_arithop_50_0
              #                    load from temp_50_arithop_50 in mem

              #                    occupy a5 with temp_50_arithop_50
    li      a5, 52907956
    add     a5,sp,a5
    lw      a4,0(a5)
              #                    free a5
              #                    store to temp_50_arithop_50 in mem offset_illegal
              #                    occupy a5 with 52907956_0
    li      a5, 52907956
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_50_arithop_50
              #                    occupy a5 with _anonymous_of_5_0_0
    li      a5, 5
              #                    arg load ended


    call    dfs
              #                    store to temp_51_ret_of_dfs_50 in mem offset_illegal
              #                    occupy a0 with 52907952_0
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_52_arithop_50:i32 
              #                          temp_52_arithop_50 = Mul i32 e_28, temp_51_ret_of_dfs_50 
              #                    occupy a1 with e_28
              #                    load from e_28 in mem

              #                    occupy a1 with e_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a0 with temp_51_ret_of_dfs_50
              #                    occupy a2 with temp_52_arithop_50
    mul     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_53_arithop_50:i32 
              #                          temp_53_arithop_50 = Add i32 ans_30, temp_52_arithop_50 
              #                    occupy a3 with ans_30
              #                    load from ans_30 in mem

              #                    occupy a3 with ans_30
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    occupy a2 with temp_52_arithop_50
              #                    occupy a4 with temp_53_arithop_50
    add     a4,a3,a2
              #                    free a3
              #                    free a2
              #                    free a4
              #                          new_var temp_54_arithop_50:i32 
              #                          temp_54_arithop_50 = Mod i32 temp_53_arithop_50, 1000000007_0 
              #                    occupy a4 with temp_53_arithop_50
              #                    occupy a5 with 1000000007_0
    li      a5, 1000000007
              #                    occupy a6 with temp_54_arithop_50
              #                    load from temp_54_arithop_50 in mem

              #                    occupy a6 with temp_54_arithop_50
    add     a6,sp,a6
    lw      a6,0(a6)
              #                    free a6
    rem     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                          ans_30 = i32 temp_54_arithop_50 
              #                    occupy a6 with temp_54_arithop_50
              #                    occupy a3 with ans_30
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: branch_false_51 
              #                    store to temp_54_arithop_50 in mem offset_illegal
              #                    occupy a6 with 52907940_0
    li      a6, 52907940
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_54_arithop_50
              #                    store to ans_30 in mem offset_illegal
              #                    found literal reg Some(s6) already exist with 52908108_0
              #                    occupy s6 with 52908108_0
    add     s6,sp,s6
    sw      a3,0(s6)
              #                    free s6
              #                    release a3 with ans_30
              #                    store to e_28 in mem offset_illegal
              #                    occupy a1 with 158723972_0
    li      a1, 158723972
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with e_28
              #                    store to temp_53_arithop_50 in mem offset_illegal
              #                    occupy a1 with 52907944_0
    li      a1, 52907944
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_53_arithop_50
              #                    store to b_28 in mem offset_illegal
              #                    occupy a3 with 158723984_0
    li      a3, 158723984
    add     a3,sp,a3
    sw      s10,0(a3)
              #                    free a3
              #                    release s10 with b_28
              #                    store to c_28 in mem offset_illegal
              #                    occupy a4 with 158723980_0
    li      a4, 158723980
    add     a4,sp,a4
    sw      s11,0(a4)
              #                    free a4
              #                    release s11 with c_28
              #                    store to temp_51_ret_of_dfs_50 in mem offset_illegal
              #                    occupy a0 with 52907952_0
    li      a0, 52907952
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_51_ret_of_dfs_50
              #                    store to a_28 in mem offset_illegal
              #                    occupy a0 with 158723988_0
    li      a0, 158723988
    add     a0,sp,a0
    sw      a7,0(a0)
              #                    free a0
              #                    release a7 with a_28
              #                    store to temp_52_arithop_50 in mem offset_illegal
              #                    occupy a2 with 52907948_0
    li      a2, 52907948
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_52_arithop_50
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem

              #                    occupy a2 with temp_9_arithop_34
    li      a2, 52908124
    add     a2,sp,a2
    lw      s4,0(a2)
              #                    free a2
              #                    occupy s7 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem

              #                    occupy a5 with ans_30
    li      a5, 52908108
    add     a5,sp,a5
    lw      s7,0(a5)
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_3_array_ele_31_0
              #                    load from temp_3_array_ele_31 in mem

              #                    occupy a7 with temp_3_array_ele_31
    li      a7, 105816052
    add     a7,sp,a7
    lw      a6,0(a7)
              #                    free a7
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem

              #                    occupy s1 with d_28
    li      s1, 158723976
    add     s1,sp,s1
    lw      a3,0(s1)
              #                    free s1
              #                    occupy s8 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
              #                    occupy s2 with temp_12_cmp_34
    li      s2, 52908115
    add     s2,sp,s2
    lb      s8,0(s2)
              #                    free s2
              #                    occupy s5 with _anonymous_of_temp_10_arithop_34_0
              #                    load from temp_10_arithop_34 in mem

              #                    occupy s3 with temp_10_arithop_34
    li      s3, 52908120
    add     s3,sp,s3
    lw      s5,0(s3)
              #                    free s3
              #                    store to temp_12_cmp_34 in mem offset_illegal
              #                    occupy s2 with 52908115_0
    li      s2, 52908115
    add     s2,sp,s2
    sb      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_12_cmp_34
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem

              #                    occupy s6 with temp_8_arithop_34
    li      s6, 52908128
    add     s6,sp,s6
    lw      s2,0(s6)
              #                    free s6
              #                    store to temp_8_arithop_34 in mem offset_illegal
              #                    occupy s6 with 52908128_0
    li      s6, 52908128
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_8_arithop_34
              #                    occupy s6 with _anonymous_of_temp_11_arithop_34_0
              #                    load from temp_11_arithop_34 in mem

              #                    occupy s9 with temp_11_arithop_34
    li      s9, 52908116
    add     s9,sp,s9
    lw      s6,0(s9)
              #                    free s9
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem

              #                    occupy s10 with b_28
    li      s10, 158723984
    add     s10,sp,s10
    lw      a1,0(s10)
              #                    free s10
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy s3 with 52908120_0
    li      s3, 52908120
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_10_arithop_34
              #                    occupy s3 with _anonymous_of_temp_4_cmp_31_0
              #                    load from temp_4_cmp_31 in mem
              #                    occupy s11 with temp_4_cmp_31
    li      s11, 105816051
    add     s11,sp,s11
    lb      s3,0(s11)
              #                    free s11
              #                    store to d_28 in mem offset_illegal
              #                    occupy s1 with 158723976_0
    li      s1, 158723976
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with d_28
              #                    occupy s1 with _anonymous_of_temp_2_array_ptr_31_0
              #                    load from temp_2_array_ptr_31 in mem
              #                    occupy a0 with temp_2_array_ptr_31
    li      a0, 105816056
    add     a0,sp,a0
    ld      s1,0(a0)
              #                    free a0
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem

              #                    store to temp_2_array_ptr_31 in mem offset_illegal
              #                    occupy a0 with 105816056_0
    li      a0, 105816056
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_2_array_ptr_31
              #                    occupy a0 with e_28
    li      a0, 158723972
    add     a0,sp,a0
    lw      a4,0(a0)
              #                    free a0
              #                    store to b_28 in mem offset_illegal
              #                    occupy s10 with 158723984_0
    li      s10, 158723984
    add     s10,sp,s10
    sw      s10,0(s10)
              #                    free s10
              #                    release s10 with b_28
              #                    occupy s10 with _anonymous_of_temp_13__858_0
              #                    load from temp_13__858 in mem
              #                    store to e_28 in mem offset_illegal
              #                    occupy a0 with 158723972_0
    li      a0, 158723972
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with e_28
              #                    occupy a0 with temp_13__858
    li      a0, 52908107
    add     a0,sp,a0
    lb      s10,0(a0)
              #                    free a0
              #                    store to temp_4_cmp_31 in mem offset_illegal
              #                    occupy s11 with 105816051_0
    li      s11, 105816051
    add     s11,sp,s11
    sb      s11,0(s11)
              #                    free s11
              #                    release s11 with temp_4_cmp_31
              #                    occupy s11 with _anonymous_of_temp_21__1132_0
              #                    load from temp_21__1132 in mem
              #                    store to temp_13__858 in mem offset_illegal
              #                    occupy a0 with 52908107_0
    li      a0, 52908107
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_13__858
              #                    occupy a0 with temp_21__1132
    li      a0, 52908075
    add     a0,sp,a0
    lb      s11,0(a0)
              #                    free a0
              #                    store to temp_21__1132 in mem offset_illegal
              #                    occupy a0 with 52908075_0
    li      a0, 52908075
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_21__1132
              #                    occupy a0 with _anonymous_of_temp_48__1975_0
              #                    load from temp_48__1975 in mem
              #                    store to temp_9_arithop_34 in mem offset_illegal
              #                    occupy a2 with 52908124_0
    li      a2, 52908124
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_9_arithop_34
              #                    occupy a2 with temp_48__1975
    li      a2, 52907967
    add     a2,sp,a2
    lb      a0,0(a2)
              #                    free a2
              #                    store to ans_30 in mem offset_illegal
              #                    occupy a5 with 52908108_0
    li      a5, 52908108
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with ans_30
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem

              #                    store to temp_48__1975 in mem offset_illegal
              #                    occupy a2 with 52907967_0
    li      a2, 52907967
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_48__1975
              #                    occupy a2 with last_28
    li      a2, 158723968
    add     a2,sp,a2
    lw      a5,0(a2)
              #                    free a2
              #                    store to temp_11_arithop_34 in mem offset_illegal
              #                    occupy s9 with 52908116_0
    li      s9, 52908116
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_11_arithop_34
              #                    store to temp_3_array_ele_31 in mem offset_illegal
              #                    occupy a7 with 105816052_0
    li      a7, 105816052
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_3_array_ele_31
              #                    occupy a7 with _anonymous_of_temp_1_ptr2globl_31_0
              #                    load from temp_1_ptr2globl_31 in mem
              #                    occupy s9 with temp_1_ptr2globl_31
    li      s9, 105816064
    add     s9,sp,s9
    lw      a7,0(s9)
              #                    free s9
              #                    store to last_28 in mem offset_illegal
              #                    occupy a2 with 158723968_0
    li      a2, 158723968
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with last_28
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem

              #                    store to temp_1_ptr2globl_31 in mem offset_illegal
              #                    occupy s9 with 105816064_0
    li      s9, 105816064
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with temp_1_ptr2globl_31
              #                    occupy s9 with c_28
    li      s9, 158723980
    add     s9,sp,s9
    lw      a2,0(s9)
              #                    free s9
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_48__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_48__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_55_index_ptr_30:ptr->i32 
              #                          temp_55_index_ptr_30 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy s9 with temp_55_index_ptr_30
    li      s9, 0
              #                    store to temp_48__1975 in mem offset_illegal
              #                    occupy a0 with 52907967_0
    li      a0, 52907967
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_48__1975
              #                    occupy a0 with 734832_0
    li      a0, 734832
              #                    store to b_28 in mem offset_illegal
              #                    occupy a1 with 158723984_0
    li      a1, 158723984
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with b_28
              #                    occupy a1 with a_28
              #                    load from a_28 in mem

              #                    occupy a1 with a_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to c_28 in mem offset_illegal
              #                    occupy a2 with 158723980_0
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with c_28
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,a2
              #                    free a2
              #                    occupy a0 with 40824_0
    li      a0, 40824
              #                    occupy a2 with b_28
              #                    load from b_28 in mem

              #                    occupy a2 with b_28
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to a_28 in mem offset_illegal
              #                    occupy a1 with 158723988_0
    li      a1, 158723988
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with a_28
              #                    occupy a1 with _anonymous_of_dp_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s9,s9,a1
              #                    free a1
              #                    occupy a0 with 2268_0
    li      a0, 2268
              #                    occupy a1 with c_28
              #                    load from c_28 in mem

              #                    occupy a1 with c_28
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to b_28 in mem offset_illegal
              #                    occupy a2 with 158723984_0
    li      a2, 158723984
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with b_28
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,a2
              #                    free a2
              #                    occupy a0 with 126_0
    li      a0, 126
              #                    occupy a3 with d_28
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a3
              #                    free a0
              #                    free a3
    add     s9,s9,a2
              #                    free a2
              #                    occupy a0 with 7_0
    li      a0, 7
              #                    occupy a4 with e_28
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a4
              #                    free a0
              #                    free a4
    add     s9,s9,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with last_28
              #                    occupy a2 with _anonymous_of_dp_0_0
    mul     a2,a0,a5
              #                    free a0
              #                    free a5
    add     s9,s9,a2
              #                    free a2
    slli s9,s9,2
              #                    occupy a0 with _anonymous_of_dp_0_0
    la      a0, dp
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_56_arithop_30:i32 
              #                          temp_56_arithop_30 = Mod i32 ans_30, 1000000007_0 
              #                    occupy s7 with ans_30
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a2 with temp_56_arithop_30
              #                    load from temp_56_arithop_30 in mem

              #                    occupy a2 with temp_56_arithop_30
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
    rem     a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                          store temp_56_arithop_30:i32 temp_55_index_ptr_30:ptr->i32 
              #                    occupy s9 with temp_55_index_ptr_30
              #                    occupy a2 with temp_56_arithop_30
    sw      a2,0(s9)
              #                    free a2
              #                    free s9
              #                          mu dp_0:238 
              #                          dp_0 = chi dp_0:238 
              #                          new_var temp_57_ptr2globl_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                          temp_57_ptr2globl_30 = load *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] 
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
              #                    store to c_28 in mem offset_illegal
              #                    occupy a1 with 158723980_0
    li      a1, 158723980
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with c_28
              #                    occupy a1 with temp_57_ptr2globl_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_58_array_ptr_30:ptr->i32 
              #                          temp_58_array_ptr_30 = getelementptr temp_57_ptr2globl_30:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy a0 with temp_58_array_ptr_30
    li      a0, 0
              #                    store to temp_57_ptr2globl_30 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_57_ptr2globl_30
              #                    occupy a1 with 734832_0
    li      a1, 734832
              #                    store to temp_56_arithop_30 in mem offset_illegal
              #                    occupy a2 with 52907924_0
    li      a2, 52907924
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_56_arithop_30
              #                    occupy a2 with a_28
              #                    load from a_28 in mem

              #                    occupy a2 with a_28
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to d_28 in mem offset_illegal
              #                    occupy a3 with 158723976_0
    li      a3, 158723976
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with d_28
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 40824_0
    li      a1, 40824
              #                    occupy a3 with b_28
              #                    load from b_28 in mem

              #                    occupy a3 with b_28
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to a_28 in mem offset_illegal
              #                    occupy a2 with 158723988_0
    li      a2, 158723988
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with a_28
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 2268_0
    li      a1, 2268
              #                    occupy a2 with c_28
              #                    load from c_28 in mem

              #                    occupy a2 with c_28
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to b_28 in mem offset_illegal
              #                    occupy a3 with 158723984_0
    li      a3, 158723984
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with b_28
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 126_0
    li      a1, 126
              #                    occupy a3 with d_28
              #                    load from d_28 in mem

              #                    occupy a3 with d_28
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to c_28 in mem offset_illegal
              #                    occupy a2 with 158723980_0
    li      a2, 158723980
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with c_28
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 7_0
    li      a1, 7
              #                    occupy a4 with e_28
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a2,a1,a4
              #                    free a1
              #                    free a4
    add     a0,a0,a2
              #                    free a2
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with last_28
              #                    occupy a2 with _anonymous_of_temp_57_ptr2globl_30_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,20
              #                    free a0
              #                          new_var temp_59_array_ele_30:i32 
              #                          temp_59_array_ele_30 = load temp_58_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_58_array_ptr_30
              #                    occupy a1 with temp_59_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          ret temp_59_array_ele_30 
              #                    load from ra_dfs_0 in mem
              #                    occupy a2 with ra_dfs_0
    li      a2, 158724000
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_dfs_0 in mem
              #                    store to temp_58_array_ptr_30 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_58_array_ptr_30
              #                    occupy a0 with s0_dfs_0
    li      a0, 158723992
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to temp_59_array_ele_30 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_59_array_ele_30
              #                    store to s0_dfs_0 in mem offset_illegal
              #                    occupy a0 with 158723992_0
    li      a0, 158723992
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_dfs_0
              #                    occupy a0 with temp_59_array_ele_30
              #                    load from temp_59_array_ele_30 in mem


    lw      a0,4(sp)
              #                    occupy a1 with 158724008_0
    li      a1, 158724008
    li      a1, 158724008
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: ra_dfs_0, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_3_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_1_ptr2globl_31, tracked: true } |     s10:Freed { symidx: temp_13__858, tracked: true } |     s11:Freed { symidx: temp_21__1132, tracked: true } |     s1:Freed { symidx: temp_2_array_ptr_31, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_4_cmp_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_10_arithop_34, tracked: true } |     s6:Freed { symidx: temp_11_arithop_34, tracked: true } |     s7:Freed { symidx: ans_30, tracked: true } |     s8:Freed { symidx: temp_12_cmp_34, tracked: true } |     s9:Freed { symidx: temp_55_index_ptr_30, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 2352|s0_main:8 at 2344|temp_60_ret_of_getint:4 at 2340|n:4 at 2336|i:4 at 2332|temp_61_cmp:1 at 2331|none:3 at 2328|j:4 at 2324|temp_62_cmp:1 at 2323|none:3 at 2320|k:4 at 2316|temp_63_cmp:1 at 2315|none:3 at 2312|l:4 at 2308|temp_64_cmp:1 at 2307|none:3 at 2304|m:4 at 2300|temp_65_cmp:1 at 2299|none:3 at 2296|h:4 at 2292|temp_66_cmp:1 at 2291|none:3 at 2288|temp_67_index_ptr:8 at 2280|temp_68_arithop:4 at 2276|temp_69_arithop:4 at 2272|temp_70_arithop:4 at 2268|temp_71_arithop:4 at 2264|temp_72_arithop:4 at 2260|temp_73_arithop:4 at 2256|temp_74_cmp:1 at 2255|none:7 at 2248|temp_75_index_ptr:8 at 2240|temp_76_ret_of_getint:4 at 2236|temp_77_ptr2globl:800 at 1436|none:4 at 1432|temp_78_array_ptr:8 at 1424|temp_79_array_ele:4 at 1420|none:4 at 1416|temp_80_index_ptr:8 at 1408|temp_81_ptr2globl:800 at 608|temp_82_array_ptr:8 at 600|temp_83_array_ele:4 at 596|temp_84_ptr2globl:80 at 516|none:4 at 512|temp_85_array_ptr:8 at 504|temp_86_array_ele:4 at 500|temp_87_arithop:4 at 496|temp_88_arithop:4 at 492|temp_89_ptr2globl:80 at 412|none:4 at 408|temp_90_array_ptr:8 at 400|temp_91_array_ele:4 at 396|temp_92_ptr2globl:80 at 316|none:4 at 312|temp_93_array_ptr:8 at 304|temp_94_array_ele:4 at 300|temp_95_ptr2globl:80 at 220|none:4 at 216|temp_96_array_ptr:8 at 208|temp_97_array_ele:4 at 204|temp_98_ptr2globl:80 at 124|none:4 at 120|temp_99_array_ptr:8 at 112|temp_100_array_ele:4 at 108|temp_101_ptr2globl:80 at 28|none:4 at 24|temp_102_array_ptr:8 at 16|temp_103_array_ele:4 at 12|temp_104_ret_of_dfs:4 at 8|ans:4 at 4|none:4 at 0
              #                    occupy a0 with -2360_0
    li      a0, -2360
    li      a0, -2360
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 2352_0
    li      a1, 2352
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 2344_0
    li      a2, 2344
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 2360_0
    li      a3, 2360
    li      a3, 2360
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_60_ret_of_getint_56 
              #                          alloc i32 n_56 
              #                          alloc i32 i_56 
              #                          alloc i1 temp_61_cmp_59 
              #                          alloc i32 j_61 
              #                          alloc i1 temp_62_cmp_63 
              #                          alloc i32 k_65 
              #                          alloc i1 temp_63_cmp_67 
              #                          alloc i32 l_69 
              #                          alloc i1 temp_64_cmp_71 
              #                          alloc i32 m_73 
              #                          alloc i1 temp_65_cmp_75 
              #                          alloc i32 h_77 
              #                          alloc i1 temp_66_cmp_79 
              #                          alloc ptr->i32 temp_67_index_ptr_81 
              #                          alloc i32 temp_68_arithop_81 
              #                          alloc i32 temp_69_arithop_77 
              #                          alloc i32 temp_70_arithop_73 
              #                          alloc i32 temp_71_arithop_69 
              #                          alloc i32 temp_72_arithop_65 
              #                          alloc i32 temp_73_arithop_61 
              #                          alloc i1 temp_74_cmp_90 
              #                          alloc ptr->i32 temp_75_index_ptr_92 
              #                          alloc i32 temp_76_ret_of_getint_92 
              #                          alloc Array:i32:[Some(200_0)] temp_77_ptr2globl_92 
              #                          alloc ptr->i32 temp_78_array_ptr_92 
              #                          alloc i32 temp_79_array_ele_92 
              #                          alloc ptr->i32 temp_80_index_ptr_92 
              #                          alloc Array:i32:[Some(200_0)] temp_81_ptr2globl_92 
              #                          alloc ptr->i32 temp_82_array_ptr_92 
              #                          alloc i32 temp_83_array_ele_92 
              #                          alloc Array:i32:[Some(20_0)] temp_84_ptr2globl_92 
              #                          alloc ptr->i32 temp_85_array_ptr_92 
              #                          alloc i32 temp_86_array_ele_92 
              #                          alloc i32 temp_87_arithop_92 
              #                          alloc i32 temp_88_arithop_92 
              #                          alloc Array:i32:[Some(20_0)] temp_89_ptr2globl_56 
              #                          alloc ptr->i32 temp_90_array_ptr_56 
              #                          alloc i32 temp_91_array_ele_56 
              #                          alloc Array:i32:[Some(20_0)] temp_92_ptr2globl_56 
              #                          alloc ptr->i32 temp_93_array_ptr_56 
              #                          alloc i32 temp_94_array_ele_56 
              #                          alloc Array:i32:[Some(20_0)] temp_95_ptr2globl_56 
              #                          alloc ptr->i32 temp_96_array_ptr_56 
              #                          alloc i32 temp_97_array_ele_56 
              #                          alloc Array:i32:[Some(20_0)] temp_98_ptr2globl_56 
              #                          alloc ptr->i32 temp_99_array_ptr_56 
              #                          alloc i32 temp_100_array_ele_56 
              #                          alloc Array:i32:[Some(20_0)] temp_101_ptr2globl_56 
              #                          alloc ptr->i32 temp_102_array_ptr_56 
              #                          alloc i32 temp_103_array_ele_56 
              #                          alloc i32 temp_104_ret_of_dfs_56 
              #                          alloc i32 ans_56 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_60_ret_of_getint_56:i32 
              #                          temp_60_ret_of_getint_56 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_60_ret_of_getint_56 in mem offset_illegal
              #                    occupy a0 with 2340_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          n_56 = i32 temp_60_ret_of_getint_56 
              #                    occupy a0 with temp_60_ret_of_getint_56
              #                    occupy a1 with n_56
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_56 = i32 0_0 
              #                    occupy a2 with i_56
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } | 
              #                          label while.head_60: 
.while.head_60:
              #                          new_var temp_61_cmp_59:i1 
              #                          temp_61_cmp_59 = icmp i32 Slt i_56, 18_0 
              #                    occupy a2 with i_56
              #                    occupy a3 with 18_0
    li      a3, 18
              #                    occupy a4 with temp_61_cmp_59
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_61_cmp_59, label while.body_60, label while.exit_60 
              #                    occupy a4 with temp_61_cmp_59
              #                    free a4
              #                    occupy a4 with temp_61_cmp_59
    bnez    a4, .while.body_60
              #                    free a4
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.body_60: 
.while.body_60:
              #                          j_61 = i32 0_0 
              #                    occupy a3 with j_61
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_62_cmp_63:i1 
              #                          temp_62_cmp_63 = icmp i32 Slt j_61, 18_0 
              #                    occupy a3 with j_61
              #                    occupy a5 with 18_0
    li      a5, 18
              #                    occupy a6 with temp_62_cmp_63
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_62_cmp_63, label while.body_64, label while.exit_64 
              #                    occupy a6 with temp_62_cmp_63
              #                    free a6
              #                    occupy a6 with temp_62_cmp_63
    bnez    a6, .while.body_64
              #                    free a6
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          k_65 = i32 0_0 
              #                    occupy a5 with k_65
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } | 
              #                          label while.head_68: 
.while.head_68:
              #                          new_var temp_63_cmp_67:i1 
              #                          temp_63_cmp_67 = icmp i32 Slt k_65, 18_0 
              #                    occupy a5 with k_65
              #                    occupy a7 with 18_0
    li      a7, 18
              #                    occupy s1 with temp_63_cmp_67
    slt     s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                          br i1 temp_63_cmp_67, label while.body_68, label while.exit_68 
              #                    occupy s1 with temp_63_cmp_67
              #                    free s1
              #                    occupy s1 with temp_63_cmp_67
    bnez    s1, .while.body_68
              #                    free s1
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } | 
              #                          label while.body_68: 
.while.body_68:
              #                          l_69 = i32 0_0 
              #                    occupy a7 with l_69
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } | 
              #                          label while.head_72: 
.while.head_72:
              #                          new_var temp_64_cmp_71:i1 
              #                          temp_64_cmp_71 = icmp i32 Slt l_69, 18_0 
              #                    occupy a7 with l_69
              #                    occupy s2 with 18_0
    li      s2, 18
              #                    occupy s3 with temp_64_cmp_71
    slt     s3,a7,s2
              #                    free a7
              #                    free s2
              #                    free s3
              #                          br i1 temp_64_cmp_71, label while.body_72, label while.exit_72 
              #                    occupy s3 with temp_64_cmp_71
              #                    free s3
              #                    occupy s3 with temp_64_cmp_71
    bnez    s3, .while.body_72
              #                    free s3
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } | 
              #                          label while.body_72: 
.while.body_72:
              #                          m_73 = i32 0_0 
              #                    occupy s2 with m_73
    li      s2, 0
              #                    free s2
              #                          jump label: while.head_76 
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } | 
              #                          label while.head_76: 
.while.head_76:
              #                          new_var temp_65_cmp_75:i1 
              #                          temp_65_cmp_75 = icmp i32 Slt m_73, 18_0 
              #                    occupy s2 with m_73
              #                    occupy s4 with 18_0
    li      s4, 18
              #                    occupy s5 with temp_65_cmp_75
    slt     s5,s2,s4
              #                    free s2
              #                    free s4
              #                    free s5
              #                          br i1 temp_65_cmp_75, label while.body_76, label while.exit_76 
              #                    occupy s5 with temp_65_cmp_75
              #                    free s5
              #                    occupy s5 with temp_65_cmp_75
    bnez    s5, .while.body_76
              #                    free s5
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } |     s5:Freed { symidx: temp_65_cmp_75, tracked: true } | 
              #                          label while.body_76: 
.while.body_76:
              #                          h_77 = i32 0_0 
              #                    occupy s4 with h_77
    li      s4, 0
              #                    free s4
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_65_cmp_75, tracked: true } | 
              #                          label while.head_80: 
.while.head_80:
              #                          new_var temp_66_cmp_79:i1 
              #                          temp_66_cmp_79 = icmp i32 Slt h_77, 7_0 
              #                    occupy s4 with h_77
              #                    occupy s6 with 7_0
    li      s6, 7
              #                    occupy s7 with temp_66_cmp_79
    slt     s7,s4,s6
              #                    free s4
              #                    free s6
              #                    free s7
              #                          br i1 temp_66_cmp_79, label while.body_80, label while.exit_80 
              #                    occupy s7 with temp_66_cmp_79
              #                    free s7
              #                    occupy s7 with temp_66_cmp_79
    bnez    s7, .while.body_80
              #                    free s7
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_65_cmp_75, tracked: true } |     s7:Freed { symidx: temp_66_cmp_79, tracked: true } | 
              #                          label while.body_80: 
.while.body_80:
              #                          new_var temp_67_index_ptr_81:ptr->i32 
              #                          temp_67_index_ptr_81 = getelementptr dp_0:Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(i_56), Some(j_61), Some(k_65), Some(l_69), Some(m_73), Some(h_77)] 
              #                    occupy s6 with temp_67_index_ptr_81
    li      s6, 0
              #                    occupy s8 with 734832_0
    li      s8, 734832
              #                    occupy a2 with i_56
              #                    occupy s9 with _anonymous_of_dp_0_0
    mul     s9,s8,a2
              #                    free s8
              #                    free a2
    add     s6,s6,s9
              #                    free s9
              #                    occupy s10 with 40824_0
    li      s10, 40824
              #                    occupy a3 with j_61
              #                    occupy s11 with _anonymous_of_dp_0_0
    mul     s11,s10,a3
              #                    free s10
              #                    free a3
    add     s6,s6,s11
              #                    free s11
              #                    occupy s8 with 2268_0
    li      s8, 2268
              #                    occupy a5 with k_65
              #                    occupy s9 with _anonymous_of_dp_0_0
    mul     s9,s8,a5
              #                    free s8
              #                    free a5
    add     s6,s6,s9
              #                    free s9
              #                    occupy s8 with 126_0
    li      s8, 126
              #                    occupy a7 with l_69
              #                    occupy s9 with _anonymous_of_dp_0_0
    mul     s9,s8,a7
              #                    free s8
              #                    free a7
    add     s6,s6,s9
              #                    free s9
              #                    occupy s8 with 7_0
    li      s8, 7
              #                    occupy s2 with m_73
              #                    occupy s9 with _anonymous_of_dp_0_0
    mul     s9,s8,s2
              #                    free s8
              #                    free s2
    add     s6,s6,s9
              #                    free s9
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s4 with h_77
              #                    occupy s9 with _anonymous_of_dp_0_0
    mul     s9,s8,s4
              #                    free s8
              #                    free s4
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
              #                    occupy s8 with _anonymous_of_dp_0_0
    la      s8, dp
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          store -1_0:i32 temp_67_index_ptr_81:ptr->i32 
              #                    occupy s6 with temp_67_index_ptr_81
              #                    occupy s8 with -1_0
    li      s8, -1
    sw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          mu dp_0:320 
              #                          dp_0 = chi dp_0:320 
              #                          new_var temp_68_arithop_81:i32 
              #                          temp_68_arithop_81 = Add i32 h_77, 1_0 
              #                    occupy s4 with h_77
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with temp_68_arithop_81
    add     s9,s4,s8
              #                    free s4
              #                    free s8
              #                    free s9
              #                          h_77 = i32 temp_68_arithop_81 
              #                    occupy s9 with temp_68_arithop_81
              #                    occupy s4 with h_77
    mv      s4, s9
              #                    free s9
              #                    free s4
              #                          jump label: while.head_80 
              #                    store to temp_66_cmp_79 in mem offset_illegal
              #                    occupy s7 with 2291_0
    li      s7, 2291
    add     s7,sp,s7
    sb      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_66_cmp_79
              #                    store to temp_68_arithop_81 in mem offset_illegal
              #                    occupy s7 with 2276_0
    li      s7, 2276
    add     s7,sp,s7
    sw      s9,0(s7)
              #                    free s7
              #                    release s9 with temp_68_arithop_81
              #                    store to temp_67_index_ptr_81 in mem offset_illegal
              #                    occupy s6 with 2280_0
    li      s6, 2280
    add     s6,sp,s6
    sd      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_67_index_ptr_81
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_65_cmp_75, tracked: true } |     s7:Freed { symidx: temp_66_cmp_79, tracked: true } | 
              #                          label while.exit_80: 
.while.exit_80:
              #                          new_var temp_69_arithop_77:i32 
              #                          temp_69_arithop_77 = Add i32 m_73, 1_0 
              #                    occupy s2 with m_73
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with temp_69_arithop_77
    add     s8,s2,s6
              #                    free s2
              #                    free s6
              #                    free s8
              #                          m_73 = i32 temp_69_arithop_77 
              #                    occupy s8 with temp_69_arithop_77
              #                    occupy s2 with m_73
    mv      s2, s8
              #                    free s8
              #                    free s2
              #                          jump label: while.head_76 
              #                    store to temp_66_cmp_79 in mem offset_illegal
              #                    occupy s7 with 2291_0
    li      s7, 2291
    add     s7,sp,s7
    sb      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_66_cmp_79
              #                    store to temp_69_arithop_77 in mem offset_illegal
              #                    occupy s7 with 2272_0
    li      s7, 2272
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_69_arithop_77
              #                    store to temp_65_cmp_75 in mem offset_illegal
              #                    occupy s5 with 2299_0
    li      s5, 2299
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_65_cmp_75
              #                    store to h_77 in mem offset_illegal
              #                    occupy s4 with 2292_0
    li      s4, 2292
    add     s4,sp,s4
    sw      s4,0(s4)
              #                    free s4
              #                    release s4 with h_77
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } |     s5:Freed { symidx: temp_65_cmp_75, tracked: true } | 
              #                          label while.exit_76: 
.while.exit_76:
              #                          new_var temp_70_arithop_73:i32 
              #                          temp_70_arithop_73 = Add i32 l_69, 1_0 
              #                    occupy a7 with l_69
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_70_arithop_73
    add     s6,a7,s4
              #                    free a7
              #                    free s4
              #                    free s6
              #                          l_69 = i32 temp_70_arithop_73 
              #                    occupy s6 with temp_70_arithop_73
              #                    occupy a7 with l_69
    mv      a7, s6
              #                    free s6
              #                    free a7
              #                          jump label: while.head_72 
              #                    store to m_73 in mem offset_illegal
              #                    occupy s2 with 2300_0
    li      s2, 2300
    add     s2,sp,s2
    sw      s2,0(s2)
              #                    free s2
              #                    release s2 with m_73
              #                    store to temp_65_cmp_75 in mem offset_illegal
              #                    occupy s2 with 2299_0
    li      s2, 2299
    add     s2,sp,s2
    sb      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_65_cmp_75
              #                    store to temp_70_arithop_73 in mem offset_illegal
              #                    occupy s4 with 2268_0
    li      s4, 2268
    add     s4,sp,s4
    sw      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_70_arithop_73
              #                    store to temp_64_cmp_71 in mem offset_illegal
              #                    occupy s3 with 2307_0
    li      s3, 2307
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_64_cmp_71
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } |     s3:Freed { symidx: temp_64_cmp_71, tracked: true } | 
              #                          label while.exit_72: 
.while.exit_72:
              #                          new_var temp_71_arithop_69:i32 
              #                          temp_71_arithop_69 = Add i32 k_65, 1_0 
              #                    occupy a5 with k_65
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_71_arithop_69
    add     s4,a5,s2
              #                    free a5
              #                    free s2
              #                    free s4
              #                          k_65 = i32 temp_71_arithop_69 
              #                    occupy s4 with temp_71_arithop_69
              #                    occupy a5 with k_65
    mv      a5, s4
              #                    free s4
              #                    free a5
              #                          jump label: while.head_68 
              #                    store to l_69 in mem offset_illegal
              #                    occupy a7 with 2308_0
    li      a7, 2308
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with l_69
              #                    store to temp_71_arithop_69 in mem offset_illegal
              #                    occupy a7 with 2264_0
    li      a7, 2264
    add     a7,sp,a7
    sw      s4,0(a7)
              #                    free a7
              #                    release s4 with temp_71_arithop_69
              #                    store to temp_63_cmp_67 in mem offset_illegal
              #                    occupy s1 with 2315_0
    li      s1, 2315
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_63_cmp_67
              #                    store to temp_64_cmp_71 in mem offset_illegal
              #                    occupy s1 with 2307_0
    li      s1, 2307
    add     s1,sp,s1
    sb      s3,0(s1)
              #                    free s1
              #                    release s3 with temp_64_cmp_71
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } |     s1:Freed { symidx: temp_63_cmp_67, tracked: true } | 
              #                          label while.exit_68: 
.while.exit_68:
              #                          new_var temp_72_arithop_65:i32 
              #                          temp_72_arithop_65 = Add i32 j_61, 1_0 
              #                    occupy a3 with j_61
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_72_arithop_65
    add     s2,a3,a7
              #                    free a3
              #                    free a7
              #                    free s2
              #                          j_61 = i32 temp_72_arithop_65 
              #                    occupy s2 with temp_72_arithop_65
              #                    occupy a3 with j_61
    mv      a3, s2
              #                    free s2
              #                    free a3
              #                          jump label: while.head_64 
              #                    store to temp_62_cmp_63 in mem offset_illegal
              #                    occupy a6 with 2323_0
    li      a6, 2323
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_62_cmp_63
              #                    store to temp_72_arithop_65 in mem offset_illegal
              #                    occupy a6 with 2260_0
    li      a6, 2260
    add     a6,sp,a6
    sw      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_72_arithop_65
              #                    store to k_65 in mem offset_illegal
              #                    occupy a5 with 2316_0
    li      a5, 2316
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with k_65
              #                    store to temp_63_cmp_67 in mem offset_illegal
              #                    occupy a5 with 2315_0
    li      a5, 2315
    add     a5,sp,a5
    sb      s1,0(a5)
              #                    free a5
              #                    release s1 with temp_63_cmp_67
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } |     a6:Freed { symidx: temp_62_cmp_63, tracked: true } | 
              #                          label while.exit_64: 
.while.exit_64:
              #                          new_var temp_73_arithop_61:i32 
              #                          temp_73_arithop_61 = Add i32 i_56, 1_0 
              #                    occupy a2 with i_56
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_73_arithop_61
    add     a7,a2,a5
              #                    free a2
              #                    free a5
              #                    free a7
              #                          i_56 = i32 temp_73_arithop_61 
              #                    occupy a7 with temp_73_arithop_61
              #                    occupy a2 with i_56
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: while.head_60 
              #                    store to temp_61_cmp_59 in mem offset_illegal
              #                    occupy a4 with 2331_0
    li      a4, 2331
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_61_cmp_59
              #                    store to temp_62_cmp_63 in mem offset_illegal
              #                    occupy a4 with 2323_0
    li      a4, 2323
    add     a4,sp,a4
    sb      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_62_cmp_63
              #                    store to j_61 in mem offset_illegal
              #                    occupy a3 with 2324_0
    li      a3, 2324
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with j_61
              #                    store to temp_73_arithop_61 in mem offset_illegal
              #                    occupy a3 with 2256_0
    li      a3, 2256
    add     a3,sp,a3
    sw      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_73_arithop_61
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.exit_60: 
.while.exit_60:
              #                          i_56 = i32 0_0 
              #                    occupy a2 with i_56
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_74_cmp_90:i1 
              #                          temp_74_cmp_90 = icmp i32 Slt i_56, n_56 
              #                    occupy a2 with i_56
              #                    occupy a1 with n_56
              #                    occupy a3 with temp_74_cmp_90
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_74_cmp_90, label while.body_91, label while.exit_91 
              #                    occupy a3 with temp_74_cmp_90
              #                    free a3
              #                    occupy a3 with temp_74_cmp_90
    bnez    a3, .while.body_91
              #                    free a3
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: temp_74_cmp_90, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_75_index_ptr_92:ptr->i32 
              #                          temp_75_index_ptr_92 = getelementptr list_0:Array:i32:[Some(200_0)] [Some(i_56)] 
              #                    occupy a5 with temp_75_index_ptr_92
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_56
              #                    occupy a7 with _anonymous_of_list_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with _anonymous_of_list_0_0
    la      s1, list
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_76_ret_of_getint_92:i32 
              #                          temp_76_ret_of_getint_92 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_60_ret_of_getint_56 in mem offset_illegal
              #                    occupy a0 with 2340_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_60_ret_of_getint_56
              #                    store to n_56 in mem offset_illegal
              #                    occupy a0 with 2336_0
    li      a0, 2336
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with n_56
              #                    store to i_56 in mem offset_illegal
              #                    occupy a1 with 2332_0
    li      a1, 2332
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_56
              #                    store to temp_74_cmp_90 in mem offset_illegal
              #                    occupy a2 with 2255_0
    li      a2, 2255
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_74_cmp_90
              #                    store to temp_61_cmp_59 in mem offset_illegal
              #                    occupy a3 with 2331_0
    li      a3, 2331
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_61_cmp_59
              #                    store to temp_75_index_ptr_92 in mem offset_illegal
              #                    occupy a4 with 2240_0
    li      a4, 2240
    add     a4,sp,a4
    sd      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_75_index_ptr_92
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_76_ret_of_getint_92 in mem offset_illegal
              #                    occupy a0 with 2236_0
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_76_ret_of_getint_92:i32 temp_75_index_ptr_92:ptr->i32 
              #                    occupy a5 with temp_75_index_ptr_92
              #                    load from temp_75_index_ptr_92 in mem
              #                    occupy a5 with temp_75_index_ptr_92
    add     a5,sp,a5
    ld      a5,0(a5)
              #                    free a5
              #                    occupy a0 with temp_76_ret_of_getint_92
    sw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          mu list_0:362 
              #                          list_0 = chi list_0:362 
              #                          new_var temp_77_ptr2globl_92:Array:i32:[Some(200_0)] 
              #                          temp_77_ptr2globl_92 = load *list_0:ptr->i32 
              #                    occupy a6 with *list_0
              #                       load label list as ptr to reg
    la      a6, list
              #                    occupy reg a6 with *list_0
              #                    occupy a7 with temp_77_ptr2globl_92
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_78_array_ptr_92:ptr->i32 
              #                          temp_78_array_ptr_92 = getelementptr temp_77_ptr2globl_92:Array:i32:[Some(200_0)] [Some(i_56)] 
              #                    occupy s1 with temp_78_array_ptr_92
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with i_56
              #                    load from i_56 in mem

              #                    occupy s3 with i_56
    add     s3,sp,s3
    lw      s3,0(s3)
              #                    free s3
              #                    occupy s4 with _anonymous_of_temp_77_ptr2globl_92_0
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,1436
              #                    free s1
              #                          new_var temp_79_array_ele_92:i32 
              #                          temp_79_array_ele_92 = load temp_78_array_ptr_92:ptr->i32 
              #                    occupy s1 with temp_78_array_ptr_92
              #                    occupy s5 with temp_79_array_ele_92
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_80_index_ptr_92:ptr->i32 
              #                          temp_80_index_ptr_92 = getelementptr cns_0:Array:i32:[Some(20_0)] [Some(temp_79_array_ele_92)] 
              #                    occupy s6 with temp_80_index_ptr_92
    li      s6, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s5 with temp_79_array_ele_92
              #                    occupy s7 with _anonymous_of_cns_0_0
    mul     s7,s2,s5
              #                    free s2
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with _anonymous_of_cns_0_0
    la      s8, cns
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_81_ptr2globl_92:Array:i32:[Some(200_0)] 
              #                          temp_81_ptr2globl_92 = load *list_0:ptr->i32 
              #                    occupy s9 with *list_0
              #                       load label list as ptr to reg
    la      s9, list
              #                    occupy reg s9 with *list_0
              #                    occupy s10 with temp_81_ptr2globl_92
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_82_array_ptr_92:ptr->i32 
              #                          temp_82_array_ptr_92 = getelementptr temp_81_ptr2globl_92:Array:i32:[Some(200_0)] [Some(i_56)] 
              #                    occupy s11 with temp_82_array_ptr_92
    li      s11, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s3 with i_56
              #                    occupy a1 with _anonymous_of_temp_81_ptr2globl_92_0
    mul     a1,s2,s3
              #                    free s2
              #                    free s3
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,608
              #                    free s11
              #                          new_var temp_83_array_ele_92:i32 
              #                          temp_83_array_ele_92 = load temp_82_array_ptr_92:ptr->i32 
              #                    occupy s11 with temp_82_array_ptr_92
              #                    occupy a1 with temp_83_array_ele_92
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_84_ptr2globl_92:Array:i32:[Some(20_0)] 
              #                          temp_84_ptr2globl_92 = load *cns_0:ptr->i32 
              #                    occupy a2 with *cns_0
              #                       load label cns as ptr to reg
    la      a2, cns
              #                    occupy reg a2 with *cns_0
              #                    occupy a3 with temp_84_ptr2globl_92
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_85_array_ptr_92:ptr->i32 
              #                          temp_85_array_ptr_92 = getelementptr temp_84_ptr2globl_92:Array:i32:[Some(20_0)] [Some(temp_83_array_ele_92)] 
              #                    occupy a2 with temp_85_array_ptr_92
    li      a2, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a1 with temp_83_array_ele_92
              #                    occupy a4 with _anonymous_of_temp_84_ptr2globl_92_0
    mul     a4,s2,a1
              #                    free s2
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,516
              #                    free a2
              #                          new_var temp_86_array_ele_92:i32 
              #                          temp_86_array_ele_92 = load temp_85_array_ptr_92:ptr->i32 
              #                    occupy a2 with temp_85_array_ptr_92
              #                    occupy a4 with temp_86_array_ele_92
    lw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                          new_var temp_87_arithop_92:i32 
              #                          temp_87_arithop_92 = Add i32 temp_86_array_ele_92, 1_0 
              #                    occupy a4 with temp_86_array_ele_92
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a6 with temp_87_arithop_92
    add     a6,a4,s2
              #                    free a4
              #                    free s2
              #                    free a6
              #                          store temp_87_arithop_92:i32 temp_80_index_ptr_92:ptr->i32 
              #                    occupy s6 with temp_80_index_ptr_92
              #                    occupy a6 with temp_87_arithop_92
    sw      a6,0(s6)
              #                    free a6
              #                    free s6
              #                          mu cns_0:398 
              #                          cns_0 = chi cns_0:398 
              #                          new_var temp_88_arithop_92:i32 
              #                          temp_88_arithop_92 = Add i32 i_56, 1_0 
              #                    occupy s3 with i_56
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s4 with temp_88_arithop_92
    add     s4,s3,s2
              #                    free s3
              #                    free s2
              #                    free s4
              #                          i_56 = i32 temp_88_arithop_92 
              #                    occupy s4 with temp_88_arithop_92
              #                    occupy s3 with i_56
    mv      s3, s4
              #                    free s4
              #                    free s3
              #                          jump label: while.head_91 
              #                    store to temp_76_ret_of_getint_92 in mem offset_illegal
              #                    occupy a0 with 2236_0
    li      a0, 2236
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_76_ret_of_getint_92
              #                    store to temp_86_array_ele_92 in mem offset legal
    sw      a4,500(sp)
              #                    release a4 with temp_86_array_ele_92
              #                    store to temp_87_arithop_92 in mem offset legal
    sw      a6,496(sp)
              #                    release a6 with temp_87_arithop_92
              #                    store to temp_85_array_ptr_92 in mem offset legal
    sd      a2,504(sp)
              #                    release a2 with temp_85_array_ptr_92
              #                    store to temp_81_ptr2globl_92 in mem offset legal
    sw      s10,608(sp)
              #                    release s10 with temp_81_ptr2globl_92
              #                    store to temp_84_ptr2globl_92 in mem offset legal
    sw      a3,516(sp)
              #                    release a3 with temp_84_ptr2globl_92
              #                    store to temp_77_ptr2globl_92 in mem offset legal
    sw      a7,1436(sp)
              #                    release a7 with temp_77_ptr2globl_92
              #                    store to temp_79_array_ele_92 in mem offset legal
    sw      s5,1420(sp)
              #                    release s5 with temp_79_array_ele_92
              #                    store to temp_88_arithop_92 in mem offset legal
    sw      s4,492(sp)
              #                    release s4 with temp_88_arithop_92
              #                    store to temp_75_index_ptr_92 in mem offset_illegal
              #                    occupy a0 with 2240_0
    li      a0, 2240
    add     a0,sp,a0
    sd      a5,0(a0)
              #                    free a0
              #                    release a5 with temp_75_index_ptr_92
              #                    store to temp_83_array_ele_92 in mem offset legal
    sw      a1,596(sp)
              #                    release a1 with temp_83_array_ele_92
              #                    store to temp_78_array_ptr_92 in mem offset legal
    sd      s1,1424(sp)
              #                    release s1 with temp_78_array_ptr_92
              #                    store to temp_80_index_ptr_92 in mem offset legal
    sd      s6,1408(sp)
              #                    release s6 with temp_80_index_ptr_92
              #                    store to temp_82_array_ptr_92 in mem offset legal
    sd      s11,600(sp)
              #                    release s11 with temp_82_array_ptr_92
              #                    store to i_56 in mem offset_illegal
              #                    occupy a1 with 2332_0
    li      a1, 2332
    add     a1,sp,a1
    sw      s3,0(a1)
              #                    free a1
              #                    release s3 with i_56
              #                    occupy a0 with _anonymous_of_temp_60_ret_of_getint_56_0
              #                    load from temp_60_ret_of_getint_56 in mem

              #                    occupy a2 with temp_60_ret_of_getint_56
    li      a2, 2340
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a4 with _anonymous_of_temp_61_cmp_59_0
              #                    load from temp_61_cmp_59 in mem
              #                    occupy a3 with temp_61_cmp_59
    li      a3, 2331
    add     a3,sp,a3
    lb      a4,0(a3)
              #                    free a3
              #                    store to temp_60_ret_of_getint_56 in mem offset_illegal
              #                    occupy a2 with 2340_0
    li      a2, 2340
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_60_ret_of_getint_56
              #                    occupy a2 with _anonymous_of_i_56_0
              #                    load from i_56 in mem

              #                    occupy a5 with i_56
    li      a5, 2332
    add     a5,sp,a5
    lw      a2,0(a5)
              #                    free a5
              #                    store to temp_61_cmp_59 in mem offset_illegal
              #                    occupy a3 with 2331_0
    li      a3, 2331
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_61_cmp_59
              #                    store to i_56 in mem offset_illegal
              #                    found literal reg Some(a1) already exist with 2332_0
              #                    occupy a1 with 2332_0
    add     a1,sp,a1
    sw      a5,0(a1)
              #                    free a1
              #                    release a5 with i_56
              #                    occupy a1 with _anonymous_of_n_56_0
              #                    load from n_56 in mem

              #                    occupy a3 with n_56
    li      a3, 2336
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: temp_74_cmp_90, tracked: true } |     a4:Freed { symidx: temp_61_cmp_59, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
              #                          new_var temp_89_ptr2globl_56:Array:i32:[Some(20_0)] 
              #                          temp_89_ptr2globl_56 = load *cns_0:ptr->i32 
              #                    occupy a5 with *cns_0
              #                       load label cns as ptr to reg
    la      a5, cns
              #                    occupy reg a5 with *cns_0
              #                    occupy a6 with temp_89_ptr2globl_56
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_90_array_ptr_56:ptr->i32 
              #                          temp_90_array_ptr_56 = getelementptr temp_89_ptr2globl_56:Array:i32:[Some(20_0)] [Some(1_0)] 
              #                    occupy a7 with temp_90_array_ptr_56
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_temp_89_ptr2globl_56_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,412
              #                    free a7
              #                          new_var temp_91_array_ele_56:i32 
              #                          temp_91_array_ele_56 = load temp_90_array_ptr_56:ptr->i32 
              #                    occupy a7 with temp_90_array_ptr_56
              #                    occupy s4 with temp_91_array_ele_56
    lw      s4,0(a7)
              #                    free s4
              #                    free a7
              #                          new_var temp_92_ptr2globl_56:Array:i32:[Some(20_0)] 
              #                          temp_92_ptr2globl_56 = load *cns_0:ptr->i32 
              #                    occupy s5 with *cns_0
              #                       load label cns as ptr to reg
    la      s5, cns
              #                    occupy reg s5 with *cns_0
              #                    occupy s6 with temp_92_ptr2globl_56
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_93_array_ptr_56:ptr->i32 
              #                          temp_93_array_ptr_56 = getelementptr temp_92_ptr2globl_56:Array:i32:[Some(20_0)] [Some(2_0)] 
              #                    occupy s7 with temp_93_array_ptr_56
    li      s7, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s8 with 2_0
    li      s8, 2
              #                    occupy s9 with _anonymous_of_temp_92_ptr2globl_56_0
    mul     s9,s2,s8
              #                    free s2
              #                    free s8
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,316
              #                    free s7
              #                          new_var temp_94_array_ele_56:i32 
              #                          temp_94_array_ele_56 = load temp_93_array_ptr_56:ptr->i32 
              #                    occupy s7 with temp_93_array_ptr_56
              #                    occupy s10 with temp_94_array_ele_56
    lw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          new_var temp_95_ptr2globl_56:Array:i32:[Some(20_0)] 
              #                          temp_95_ptr2globl_56 = load *cns_0:ptr->i32 
              #                    occupy s11 with *cns_0
              #                       load label cns as ptr to reg
    la      s11, cns
              #                    occupy reg s11 with *cns_0
              #                    occupy a5 with temp_95_ptr2globl_56
    lw      a5,0(s11)
              #                    free a5
              #                    free s11
              #                          new_var temp_96_array_ptr_56:ptr->i32 
              #                          temp_96_array_ptr_56 = getelementptr temp_95_ptr2globl_56:Array:i32:[Some(20_0)] [Some(3_0)] 
              #                    occupy s1 with temp_96_array_ptr_56
    li      s1, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s5 with _anonymous_of_temp_95_ptr2globl_56_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,220
              #                    free s1
              #                          new_var temp_97_array_ele_56:i32 
              #                          temp_97_array_ele_56 = load temp_96_array_ptr_56:ptr->i32 
              #                    occupy s1 with temp_96_array_ptr_56
              #                    occupy s2 with temp_97_array_ele_56
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_98_ptr2globl_56:Array:i32:[Some(20_0)] 
              #                          temp_98_ptr2globl_56 = load *cns_0:ptr->i32 
              #                    occupy s3 with *cns_0
              #                       load label cns as ptr to reg
    la      s3, cns
              #                    occupy reg s3 with *cns_0
              #                    occupy s5 with temp_98_ptr2globl_56
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          new_var temp_99_array_ptr_56:ptr->i32 
              #                          temp_99_array_ptr_56 = getelementptr temp_98_ptr2globl_56:Array:i32:[Some(20_0)] [Some(4_0)] 
              #                    occupy s3 with temp_99_array_ptr_56
    li      s3, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s9 with 4_0
    li      s9, 4
              #                    occupy s11 with _anonymous_of_temp_98_ptr2globl_56_0
    mul     s11,s8,s9
              #                    free s8
              #                    free s9
    add     s3,s3,s11
              #                    free s11
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,124
              #                    free s3
              #                          new_var temp_100_array_ele_56:i32 
              #                          temp_100_array_ele_56 = load temp_99_array_ptr_56:ptr->i32 
              #                    occupy s3 with temp_99_array_ptr_56
              #                    occupy s8 with temp_100_array_ele_56
    lw      s8,0(s3)
              #                    free s8
              #                    free s3
              #                          new_var temp_101_ptr2globl_56:Array:i32:[Some(20_0)] 
              #                          temp_101_ptr2globl_56 = load *cns_0:ptr->i32 
              #                    occupy s9 with *cns_0
              #                       load label cns as ptr to reg
    la      s9, cns
              #                    occupy reg s9 with *cns_0
              #                    occupy s11 with temp_101_ptr2globl_56
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          new_var temp_102_array_ptr_56:ptr->i32 
              #                          temp_102_array_ptr_56 = getelementptr temp_101_ptr2globl_56:Array:i32:[Some(20_0)] [Some(5_0)] 
              #                    occupy s9 with temp_102_array_ptr_56
    li      s9, 0
              #                    store to temp_60_ret_of_getint_56 in mem offset_illegal
              #                    occupy a0 with 2340_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_60_ret_of_getint_56
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to n_56 in mem offset_illegal
              #                    occupy a1 with 2336_0
    li      a1, 2336
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with n_56
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    store to i_56 in mem offset_illegal
              #                    occupy a2 with 2332_0
    li      a2, 2332
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_56
              #                    occupy a2 with _anonymous_of_temp_101_ptr2globl_56_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,a2
              #                    free a2
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,28
              #                    free s9
              #                          new_var temp_103_array_ele_56:i32 
              #                          temp_103_array_ele_56 = load temp_102_array_ptr_56:ptr->i32 
              #                    occupy s9 with temp_102_array_ptr_56
              #                    occupy a0 with temp_103_array_ele_56
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          new_var temp_104_ret_of_dfs_56:i32 
              #                          temp_104_ret_of_dfs_56 =  Call i32 dfs_0(temp_91_array_ele_56, temp_94_array_ele_56, temp_97_array_ele_56, temp_100_array_ele_56, temp_103_array_ele_56, 0_0) 
              #                    saved register dumping to mem
              #                    store to temp_96_array_ptr_56 in mem offset legal
    sd      s1,208(sp)
              #                    release s1 with temp_96_array_ptr_56
              #                    store to temp_97_array_ele_56 in mem offset legal
    sw      s2,204(sp)
              #                    release s2 with temp_97_array_ele_56
              #                    store to temp_99_array_ptr_56 in mem offset legal
    sd      s3,112(sp)
              #                    release s3 with temp_99_array_ptr_56
              #                    store to temp_91_array_ele_56 in mem offset legal
    sw      s4,396(sp)
              #                    release s4 with temp_91_array_ele_56
              #                    store to temp_98_ptr2globl_56 in mem offset legal
    sw      s5,124(sp)
              #                    release s5 with temp_98_ptr2globl_56
              #                    store to temp_92_ptr2globl_56 in mem offset legal
    sw      s6,316(sp)
              #                    release s6 with temp_92_ptr2globl_56
              #                    store to temp_93_array_ptr_56 in mem offset legal
    sd      s7,304(sp)
              #                    release s7 with temp_93_array_ptr_56
              #                    store to temp_100_array_ele_56 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_100_array_ele_56
              #                    store to temp_102_array_ptr_56 in mem offset legal
    sd      s9,16(sp)
              #                    release s9 with temp_102_array_ptr_56
              #                    store to temp_94_array_ele_56 in mem offset legal
    sw      s10,300(sp)
              #                    release s10 with temp_94_array_ele_56
              #                    store to temp_101_ptr2globl_56 in mem offset legal
    sw      s11,28(sp)
              #                    release s11 with temp_101_ptr2globl_56
              #                    store to temp_103_array_ele_56 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_103_array_ele_56
              #                    store to temp_74_cmp_90 in mem offset_illegal
              #                    occupy a0 with 2255_0
    li      a0, 2255
    add     a0,sp,a0
    sb      a3,0(a0)
              #                    free a0
              #                    release a3 with temp_74_cmp_90
              #                    store to temp_61_cmp_59 in mem offset_illegal
              #                    occupy a1 with 2331_0
    li      a1, 2331
    add     a1,sp,a1
    sb      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_61_cmp_59
              #                    store to temp_95_ptr2globl_56 in mem offset legal
    sw      a5,220(sp)
              #                    release a5 with temp_95_ptr2globl_56
              #                    store to temp_89_ptr2globl_56 in mem offset legal
    sw      a6,412(sp)
              #                    release a6 with temp_89_ptr2globl_56
              #                    store to temp_90_array_ptr_56 in mem offset legal
    sd      a7,400(sp)
              #                    release a7 with temp_90_array_ptr_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_array_ele_56_0
              #                    load from temp_91_array_ele_56 in mem


    lw      a0,396(sp)
              #                    occupy a1 with _anonymous_of_temp_94_array_ele_56_0
              #                    load from temp_94_array_ele_56 in mem


    lw      a1,300(sp)
              #                    occupy a2 with _anonymous_of_temp_97_array_ele_56_0
              #                    load from temp_97_array_ele_56 in mem


    lw      a2,204(sp)
              #                    occupy a3 with _anonymous_of_temp_100_array_ele_56_0
              #                    load from temp_100_array_ele_56 in mem


    lw      a3,108(sp)
              #                    occupy a4 with _anonymous_of_temp_103_array_ele_56_0
              #                    load from temp_103_array_ele_56 in mem


    lw      a4,12(sp)
              #                    occupy a5 with _anonymous_of_0_0_0
    li      a5, 0
              #                    arg load ended


    call    dfs
              #                    store to temp_104_ret_of_dfs_56 in mem offset legal
    sw      a0,8(sp)
              #                          ans_56 = i32 temp_104_ret_of_dfs_56 
              #                    occupy a0 with temp_104_ret_of_dfs_56
              #                    occupy a1 with ans_56
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(ans_56) 
              #                    saved register dumping to mem
              #                    store to temp_104_ret_of_dfs_56 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_104_ret_of_dfs_56
              #                    store to ans_56 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with ans_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_ans_56_0
              #                    load from ans_56 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret ans_56 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 2352
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 2344
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 2352_0
    li      a0, 2352
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with ans_56
              #                    load from ans_56 in mem


    lw      a0,4(sp)
              #                    occupy a2 with 2360_0
    li      a2, 2360
    li      a2, 2360
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl cns
              #                          global Array:i32:[Some(20_0)] cns_0 
    .type cns,@object
cns:
    .zero 80
    .align 4
    .globl list
              #                          global Array:i32:[Some(200_0)] list_0 
    .type list,@object
list:
    .zero 800
    .align 4
    .globl dp
              #                          global Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] dp_0 
    .type dp,@object
dp:
    .zero 52907904
    .align 4
    .globl mod
              #                          global i32 mod_0 
    .type mod,@object
mod:
    .word 1000000007
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 18
