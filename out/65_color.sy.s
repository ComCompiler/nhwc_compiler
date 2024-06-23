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
              #                    mem layout:|ra_dfs:8 at 288|s0_dfs:8 at 280|a:4 at 276|b:4 at 272|c:4 at 268|d:4 at 264|e:4 at 260|last:4 at 256|temp_1_array_ptr:8 at 248|temp_2_array_ele:4 at 244|temp_3_cmp:1 at 243|none:3 at 240|temp_4_array_ptr:8 at 232|temp_5_array_ele:4 at 228|temp_6_arithop:4 at 224|temp_7_arithop:4 at 220|temp_8_arithop:4 at 216|temp_9_arithop:4 at 212|temp_10_cmp:1 at 211|none:3 at 208|ans:4 at 204|temp_11_:1 at 203|none:3 at 200|temp_12_arithop:4 at 196|temp_13_ret_of_dfs:4 at 192|temp_14_ret_of_equal:4 at 188|temp_15_arithop:4 at 184|temp_16_arithop:4 at 180|temp_17_arithop:4 at 176|temp_18_arithop:4 at 172|temp_19_:1 at 171|none:3 at 168|temp_20_arithop:4 at 164|temp_21_arithop:4 at 160|temp_22_ret_of_dfs:4 at 156|temp_23_ret_of_equal:4 at 152|temp_24_arithop:4 at 148|temp_25_arithop:4 at 144|temp_26_arithop:4 at 140|temp_27_arithop:4 at 136|temp_28_:1 at 135|none:3 at 132|temp_29_arithop:4 at 128|temp_30_arithop:4 at 124|temp_31_ret_of_dfs:4 at 120|temp_32_ret_of_equal:4 at 116|temp_33_arithop:4 at 112|temp_34_arithop:4 at 108|temp_35_arithop:4 at 104|temp_36_arithop:4 at 100|temp_37_:1 at 99|none:3 at 96|temp_38_arithop:4 at 92|temp_39_arithop:4 at 88|temp_40_ret_of_dfs:4 at 84|temp_41_ret_of_equal:4 at 80|temp_42_arithop:4 at 76|temp_43_arithop:4 at 72|temp_44_arithop:4 at 68|temp_45_arithop:4 at 64|temp_46_:1 at 63|none:3 at 60|temp_47_arithop:4 at 56|temp_48_arithop:4 at 52|temp_49_ret_of_dfs:4 at 48|temp_50_arithop:4 at 44|temp_51_arithop:4 at 40|temp_52_arithop:4 at 36|none:4 at 32|temp_53_index_ptr:8 at 24|temp_54_arithop:4 at 20|none:4 at 16|temp_55_array_ptr:8 at 8|temp_56_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-296
              #                    store to ra_dfs_0 in mem offset legal
    sd      ra,288(sp)
              #                    store to s0_dfs_0 in mem offset legal
    sd      s0,280(sp)
    addi    s0,sp,296
              #                          alloc ptr->i32 temp_1_array_ptr_31 
              #                          alloc i32 temp_2_array_ele_31 
              #                          alloc i1 temp_3_cmp_31 
              #                          alloc ptr->i32 temp_4_array_ptr_31 
              #                          alloc i32 temp_5_array_ele_31 
              #                          alloc i32 temp_6_arithop_34 
              #                          alloc i32 temp_7_arithop_34 
              #                          alloc i32 temp_8_arithop_34 
              #                          alloc i32 temp_9_arithop_34 
              #                          alloc i1 temp_10_cmp_34 
              #                          alloc i32 ans_30 
              #                          alloc i1 temp_11__858 
              #                          alloc i32 temp_12_arithop_38 
              #                          alloc i32 temp_13_ret_of_dfs_38 
              #                          alloc i32 temp_14_ret_of_equal_38 
              #                          alloc i32 temp_15_arithop_38 
              #                          alloc i32 temp_16_arithop_38 
              #                          alloc i32 temp_17_arithop_38 
              #                          alloc i32 temp_18_arithop_38 
              #                          alloc i1 temp_19__1132 
              #                          alloc i32 temp_20_arithop_41 
              #                          alloc i32 temp_21_arithop_41 
              #                          alloc i32 temp_22_ret_of_dfs_41 
              #                          alloc i32 temp_23_ret_of_equal_41 
              #                          alloc i32 temp_24_arithop_41 
              #                          alloc i32 temp_25_arithop_41 
              #                          alloc i32 temp_26_arithop_41 
              #                          alloc i32 temp_27_arithop_41 
              #                          alloc i1 temp_28__1413 
              #                          alloc i32 temp_29_arithop_44 
              #                          alloc i32 temp_30_arithop_44 
              #                          alloc i32 temp_31_ret_of_dfs_44 
              #                          alloc i32 temp_32_ret_of_equal_44 
              #                          alloc i32 temp_33_arithop_44 
              #                          alloc i32 temp_34_arithop_44 
              #                          alloc i32 temp_35_arithop_44 
              #                          alloc i32 temp_36_arithop_44 
              #                          alloc i1 temp_37__1694 
              #                          alloc i32 temp_38_arithop_47 
              #                          alloc i32 temp_39_arithop_47 
              #                          alloc i32 temp_40_ret_of_dfs_47 
              #                          alloc i32 temp_41_ret_of_equal_47 
              #                          alloc i32 temp_42_arithop_47 
              #                          alloc i32 temp_43_arithop_47 
              #                          alloc i32 temp_44_arithop_47 
              #                          alloc i32 temp_45_arithop_47 
              #                          alloc i1 temp_46__1975 
              #                          alloc i32 temp_47_arithop_50 
              #                          alloc i32 temp_48_arithop_50 
              #                          alloc i32 temp_49_ret_of_dfs_50 
              #                          alloc i32 temp_50_arithop_50 
              #                          alloc i32 temp_51_arithop_50 
              #                          alloc i32 temp_52_arithop_50 
              #                          alloc ptr->i32 temp_53_index_ptr_30 
              #                          alloc i32 temp_54_arithop_30 
              #                          alloc ptr->i32 temp_55_array_ptr_30 
              #                          alloc i32 temp_56_array_ele_30 
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_1_array_ptr_31:ptr->i32 
              #                          temp_1_array_ptr_31 = getelementptr *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy a6 with temp_1_array_ptr_31
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with a_28
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a7,a0
              #                    free a7
              #                    free a0
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *dp_0
              #                       load label dp as ptr to reg
    la      s2, dp
              #                    occupy reg s2 with *dp_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                          new_var temp_2_array_ele_31:i32 
              #                          temp_2_array_ele_31 = load temp_1_array_ptr_31:ptr->i32 
              #                    occupy a6 with temp_1_array_ptr_31
              #                    occupy s3 with temp_2_array_ele_31
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          new_var temp_3_cmp_31:i1 
              #                          temp_3_cmp_31 = icmp i32 Ne temp_2_array_ele_31, -1_0 
              #                    occupy s3 with temp_2_array_ele_31
              #                    occupy s4 with -1_0
    li      s4, -1
              #                    occupy s5 with temp_3_cmp_31
    xor     s5,s3,s4
    snez    s5, s5
              #                    free s3
              #                    free s4
              #                    free s5
              #                          br i1 temp_3_cmp_31, label branch_true_32, label branch_false_32 
              #                    occupy s5 with temp_3_cmp_31
              #                    free s5
              #                    occupy s5 with temp_3_cmp_31
    bnez    s5, .branch_true_32
              #                    free s5
    j       .branch_false_32
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } | 
              #                          label branch_true_32: 
.branch_true_32:
              #                          new_var temp_4_array_ptr_31:ptr->i32 
              #                          temp_4_array_ptr_31 = getelementptr *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy a7 with temp_4_array_ptr_31
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a0 with a_28
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a0
              #                    free s1
              #                    free a0
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
              #                    occupy s4 with *dp_0
              #                       load label dp as ptr to reg
    la      s4, dp
              #                    occupy reg s4 with *dp_0
    add     a7,a7,s4
              #                    free s4
              #                    free a7
              #                          new_var temp_5_array_ele_31:i32 
              #                          temp_5_array_ele_31 = load temp_4_array_ptr_31:ptr->i32 
              #                    occupy a7 with temp_4_array_ptr_31
              #                    occupy s6 with temp_5_array_ele_31
    lw      s6,0(a7)
              #                    free s6
              #                    free a7
              #                          ret temp_5_array_ele_31 
              #                    load from ra_dfs_0 in mem
    ld      ra,288(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,280(sp)
              #                    store to temp_5_array_ele_31 in mem offset legal
    sw      s6,228(sp)
              #                    release s6 with temp_5_array_ele_31
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    occupy a0 with temp_5_array_ele_31
              #                    load from temp_5_array_ele_31 in mem


    lw      a0,228(sp)
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } | 
              #                          label branch_false_32: 
.branch_false_32:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_6_arithop_34:i32 
              #                          temp_6_arithop_34 = Add i32 a_28, b_28 
              #                    occupy a0 with a_28
              #                    occupy a1 with b_28
              #                    occupy a7 with temp_6_arithop_34
    add     a7,a0,a1
              #                    free a0
              #                    free a1
              #                    free a7
              #                          new_var temp_7_arithop_34:i32 
              #                          temp_7_arithop_34 = Add i32 temp_6_arithop_34, c_28 
              #                    occupy a7 with temp_6_arithop_34
              #                    occupy a2 with c_28
              #                    occupy s1 with temp_7_arithop_34
    add     s1,a7,a2
              #                    free a7
              #                    free a2
              #                    free s1
              #                          new_var temp_8_arithop_34:i32 
              #                          temp_8_arithop_34 = Add i32 temp_7_arithop_34, d_28 
              #                    occupy s1 with temp_7_arithop_34
              #                    occupy a3 with d_28
              #                    occupy s2 with temp_8_arithop_34
    add     s2,s1,a3
              #                    free s1
              #                    free a3
              #                    free s2
              #                          new_var temp_9_arithop_34:i32 
              #                          temp_9_arithop_34 = Add i32 temp_8_arithop_34, e_28 
              #                    occupy s2 with temp_8_arithop_34
              #                    occupy a4 with e_28
              #                    occupy s4 with temp_9_arithop_34
    add     s4,s2,a4
              #                    free s2
              #                    free a4
              #                    free s4
              #                          new_var temp_10_cmp_34:i1 
              #                          temp_10_cmp_34 = icmp i32 Eq temp_9_arithop_34, 0_0 
              #                    occupy s4 with temp_9_arithop_34
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with temp_10_cmp_34
    xor     s7,s4,s6
    seqz    s7, s7
              #                    free s4
              #                    free s6
              #                    free s7
              #                          br i1 temp_10_cmp_34, label branch_true_35, label branch_false_35 
              #                    occupy s7 with temp_10_cmp_34
              #                    free s7
              #                    occupy s7 with temp_10_cmp_34
    bnez    s7, .branch_true_35
              #                    free s7
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          ret 1_0 
              #                    load from ra_dfs_0 in mem
    ld      ra,288(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,280(sp)
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ans_30 = i32 0_0 
              #                    occupy s6 with ans_30
    li      s6, 0
              #                    free s6
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_11__858:i1 
              #                          temp_11__858 = icmp i32 Ne a_28, 0_0 
              #                    occupy a0 with a_28
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with temp_11__858
    xor     s9,a0,s8
    snez    s9, s9
              #                    free a0
              #                    free s8
              #                    free s9
              #                          br i1 temp_11__858, label branch_true_39, label branch_false_39 
              #                    occupy s9 with temp_11__858
              #                    free s9
              #                    occupy s9 with temp_11__858
    bnez    s9, .branch_true_39
              #                    free s9
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_12_arithop_38:i32 
              #                          temp_12_arithop_38 = Sub i32 a_28, 1_0 
              #                    occupy a0 with a_28
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s10 with temp_12_arithop_38
              #                    regtab:    a0:Occupied { symidx: a_28, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Occupied { symidx: temp_12_arithop_38, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s9:Freed { symidx: temp_11__858, tracked: true } | 


    sub     s10,a0,s8
              #                    free a0
              #                    free s8
              #                    free s10
              #                          new_var temp_13_ret_of_dfs_38:i32 
              #                          temp_13_ret_of_dfs_38 =  Call i32 dfs_0(temp_12_arithop_38, b_28, c_28, d_28, e_28, 1_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_arithop_34 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with temp_7_arithop_34
              #                    store to temp_8_arithop_34 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_2_array_ele_31 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_2_array_ele_31
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      s5,243(sp)
              #                    release s5 with temp_3_cmp_31
              #                    store to ans_30 in mem offset legal
    sw      s6,204(sp)
              #                    release s6 with ans_30
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_10_cmp_34
              #                    store to temp_11__858 in mem offset legal
    sb      s9,203(sp)
              #                    release s9 with temp_11__858
              #                    store to temp_12_arithop_38 in mem offset legal
    sw      s10,196(sp)
              #                    release s10 with temp_12_arithop_38
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    store to e_28 in mem offset legal
    sw      a4,260(sp)
              #                    release a4 with e_28
              #                    store to last_28 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with last_28
              #                    store to temp_1_array_ptr_31 in mem offset legal
    sd      a6,248(sp)
              #                    release a6 with temp_1_array_ptr_31
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_6_arithop_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_arithop_38_0
              #                    load from temp_12_arithop_38 in mem


    lw      a0,196(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy a5 with _anonymous_of_1_0_0
    li      a5, 1
              #                    arg load ended


    call    dfs
              #                    store to temp_13_ret_of_dfs_38 in mem offset legal
    sw      a0,192(sp)
              #                          new_var temp_14_ret_of_equal_38:i32 
              #                          temp_14_ret_of_equal_38 =  Call i32 equal_0(last_28, 2_0) 
              #                    saved register dumping to mem
              #                    store to temp_13_ret_of_dfs_38 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_13_ret_of_dfs_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a0,256(sp)
              #                    occupy a1 with _anonymous_of_2_0_0
    li      a1, 2
              #                    arg load ended


    call    equal
              #                    store to temp_14_ret_of_equal_38 in mem offset legal
    sw      a0,188(sp)
              #                          new_var temp_15_arithop_38:i32 
              #                          temp_15_arithop_38 = Sub i32 a_28, temp_14_ret_of_equal_38 
              #                    occupy a1 with a_28
              #                    load from a_28 in mem


    lw      a1,276(sp)
              #                    occupy a0 with temp_14_ret_of_equal_38
              #                    occupy a2 with temp_15_arithop_38
              #                    regtab:    a0:Occupied { symidx: temp_14_ret_of_equal_38, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: a_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_15_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_16_arithop_38:i32 
              #                          temp_16_arithop_38 = Mul i32 temp_15_arithop_38, temp_13_ret_of_dfs_38 
              #                    occupy a2 with temp_15_arithop_38
              #                    occupy a3 with temp_13_ret_of_dfs_38
              #                    load from temp_13_ret_of_dfs_38 in mem


    lw      a3,192(sp)
              #                    occupy a4 with temp_16_arithop_38
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_17_arithop_38:i32 
              #                          temp_17_arithop_38 = Add i32 ans_30, temp_16_arithop_38 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem


    lw      a5,204(sp)
              #                    occupy a4 with temp_16_arithop_38
              #                    occupy a6 with temp_17_arithop_38
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_18_arithop_38:i32 
              #                          temp_18_arithop_38 = Mod i32 temp_17_arithop_38, 1000000007_0 
              #                    occupy a6 with temp_17_arithop_38
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_18_arithop_38
              #                    load from temp_18_arithop_38 in mem


    lw      s1,172(sp)
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_18_arithop_38 
              #                    occupy s1 with temp_18_arithop_38
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_39 
              #                    store to temp_13_ret_of_dfs_38 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with temp_13_ret_of_dfs_38
              #                    store to temp_16_arithop_38 in mem offset legal
    sw      a4,180(sp)
              #                    release a4 with temp_16_arithop_38
              #                    store to temp_18_arithop_38 in mem offset legal
    sw      s1,172(sp)
              #                    release s1 with temp_18_arithop_38
              #                    store to temp_14_ret_of_equal_38 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_14_ret_of_equal_38
              #                    store to a_28 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with a_28
              #                    store to temp_17_arithop_38 in mem offset legal
    sw      a6,176(sp)
              #                    release a6 with temp_17_arithop_38
              #                    store to temp_15_arithop_38 in mem offset legal
    sw      a2,184(sp)
              #                    release a2 with temp_15_arithop_38
              #                    store to ans_30 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with ans_30
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy s9 with _anonymous_of_temp_11__858_0
              #                    load from temp_11__858 in mem
    lb      s9,203(sp)
              #                    occupy s1 with _anonymous_of_temp_7_arithop_34_0
              #                    load from temp_7_arithop_34 in mem


    lw      s1,220(sp)
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem


    lw      s4,212(sp)
              #                    occupy s6 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem


    lw      s6,204(sp)
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem


    lw      s2,216(sp)
              #                    occupy a6 with _anonymous_of_temp_1_array_ptr_31_0
              #                    load from temp_1_array_ptr_31 in mem
    ld      a6,248(sp)
              #                    occupy s3 with _anonymous_of_temp_2_array_ele_31_0
              #                    load from temp_2_array_ele_31 in mem


    lw      s3,244(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a5,256(sp)
              #                    occupy a7 with _anonymous_of_temp_6_arithop_34_0
              #                    load from temp_6_arithop_34 in mem


    lw      a7,224(sp)
              #                    occupy s7 with _anonymous_of_temp_10_cmp_34_0
              #                    load from temp_10_cmp_34 in mem
    lb      s7,211(sp)
              #                    occupy s5 with _anonymous_of_temp_3_cmp_31_0
              #                    load from temp_3_cmp_31 in mem
    lb      s5,243(sp)
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_19__1132:i1 
              #                          temp_19__1132 = icmp i32 Ne b_28, 0_0 
              #                    occupy a1 with b_28
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s10 with temp_19__1132
    xor     s10,a1,s8
    snez    s10, s10
              #                    free a1
              #                    free s8
              #                    free s10
              #                          br i1 temp_19__1132, label branch_true_42, label branch_false_42 
              #                    occupy s10 with temp_19__1132
              #                    free s10
              #                    occupy s10 with temp_19__1132
    bnez    s10, .branch_true_42
              #                    free s10
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          new_var temp_20_arithop_41:i32 
              #                          temp_20_arithop_41 = Add i32 a_28, 1_0 
              #                    occupy a0 with a_28
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s11 with temp_20_arithop_41
    add     s11,a0,s8
              #                    free a0
              #                    free s8
              #                    free s11
              #                          new_var temp_21_arithop_41:i32 
              #                          temp_21_arithop_41 = Sub i32 b_28, 1_0 
              #                    occupy a1 with b_28
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    occupy a0 with temp_21_arithop_41
              #                    regtab:    a0:Occupied { symidx: temp_21_arithop_41, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_28, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_20_arithop_41, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s9:Freed { symidx: temp_11__858, tracked: true } | 


    sub     a0,a1,s8
              #                    free a1
              #                    free s8
              #                    free a0
              #                          new_var temp_22_ret_of_dfs_41:i32 
              #                          temp_22_ret_of_dfs_41 =  Call i32 dfs_0(temp_20_arithop_41, temp_21_arithop_41, c_28, d_28, e_28, 2_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_arithop_34 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with temp_7_arithop_34
              #                    store to temp_8_arithop_34 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_2_array_ele_31 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_2_array_ele_31
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      s5,243(sp)
              #                    release s5 with temp_3_cmp_31
              #                    store to ans_30 in mem offset legal
    sw      s6,204(sp)
              #                    release s6 with ans_30
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_10_cmp_34
              #                    store to temp_11__858 in mem offset legal
    sb      s9,203(sp)
              #                    release s9 with temp_11__858
              #                    store to temp_19__1132 in mem offset legal
    sb      s10,171(sp)
              #                    release s10 with temp_19__1132
              #                    store to temp_20_arithop_41 in mem offset legal
    sw      s11,164(sp)
              #                    release s11 with temp_20_arithop_41
              #                    store to temp_21_arithop_41 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_21_arithop_41
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    store to e_28 in mem offset legal
    sw      a4,260(sp)
              #                    release a4 with e_28
              #                    store to last_28 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with last_28
              #                    store to temp_1_array_ptr_31 in mem offset legal
    sd      a6,248(sp)
              #                    release a6 with temp_1_array_ptr_31
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_6_arithop_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_arithop_41_0
              #                    load from temp_20_arithop_41 in mem


    lw      a0,164(sp)
              #                    occupy a1 with _anonymous_of_temp_21_arithop_41_0
              #                    load from temp_21_arithop_41 in mem


    lw      a1,160(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy a5 with _anonymous_of_2_0_0
    li      a5, 2
              #                    arg load ended


    call    dfs
              #                    store to temp_22_ret_of_dfs_41 in mem offset legal
    sw      a0,156(sp)
              #                          new_var temp_23_ret_of_equal_41:i32 
              #                          temp_23_ret_of_equal_41 =  Call i32 equal_0(last_28, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_22_ret_of_dfs_41 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_22_ret_of_dfs_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a0,256(sp)
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    arg load ended


    call    equal
              #                    store to temp_23_ret_of_equal_41 in mem offset legal
    sw      a0,152(sp)
              #                          new_var temp_24_arithop_41:i32 
              #                          temp_24_arithop_41 = Sub i32 b_28, temp_23_ret_of_equal_41 
              #                    occupy a1 with b_28
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy a0 with temp_23_ret_of_equal_41
              #                    occupy a2 with temp_24_arithop_41
              #                    regtab:    a0:Occupied { symidx: temp_23_ret_of_equal_41, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: b_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_24_arithop_41, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_25_arithop_41:i32 
              #                          temp_25_arithop_41 = Mul i32 temp_24_arithop_41, temp_22_ret_of_dfs_41 
              #                    occupy a2 with temp_24_arithop_41
              #                    occupy a3 with temp_22_ret_of_dfs_41
              #                    load from temp_22_ret_of_dfs_41 in mem


    lw      a3,156(sp)
              #                    occupy a4 with temp_25_arithop_41
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_26_arithop_41:i32 
              #                          temp_26_arithop_41 = Add i32 ans_30, temp_25_arithop_41 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem


    lw      a5,204(sp)
              #                    occupy a4 with temp_25_arithop_41
              #                    occupy a6 with temp_26_arithop_41
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_27_arithop_41:i32 
              #                          temp_27_arithop_41 = Mod i32 temp_26_arithop_41, 1000000007_0 
              #                    occupy a6 with temp_26_arithop_41
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_27_arithop_41
              #                    load from temp_27_arithop_41 in mem


    lw      s1,136(sp)
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_27_arithop_41 
              #                    occupy s1 with temp_27_arithop_41
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_42 
              #                    store to temp_22_ret_of_dfs_41 in mem offset legal
    sw      a3,156(sp)
              #                    release a3 with temp_22_ret_of_dfs_41
              #                    store to temp_25_arithop_41 in mem offset legal
    sw      a4,144(sp)
              #                    release a4 with temp_25_arithop_41
              #                    store to temp_27_arithop_41 in mem offset legal
    sw      s1,136(sp)
              #                    release s1 with temp_27_arithop_41
              #                    store to temp_23_ret_of_equal_41 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_23_ret_of_equal_41
              #                    store to temp_26_arithop_41 in mem offset legal
    sw      a6,140(sp)
              #                    release a6 with temp_26_arithop_41
              #                    store to temp_24_arithop_41 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with temp_24_arithop_41
              #                    store to ans_30 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with ans_30
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy s10 with _anonymous_of_temp_19__1132_0
              #                    load from temp_19__1132 in mem
    lb      s10,171(sp)
              #                    occupy s9 with _anonymous_of_temp_11__858_0
              #                    load from temp_11__858 in mem
    lb      s9,203(sp)
              #                    occupy s1 with _anonymous_of_temp_7_arithop_34_0
              #                    load from temp_7_arithop_34 in mem


    lw      s1,220(sp)
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem


    lw      s4,212(sp)
              #                    occupy s6 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem


    lw      s6,204(sp)
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem


    lw      s2,216(sp)
              #                    occupy a6 with _anonymous_of_temp_1_array_ptr_31_0
              #                    load from temp_1_array_ptr_31 in mem
    ld      a6,248(sp)
              #                    occupy s3 with _anonymous_of_temp_2_array_ele_31_0
              #                    load from temp_2_array_ele_31 in mem


    lw      s3,244(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a5,256(sp)
              #                    occupy a7 with _anonymous_of_temp_6_arithop_34_0
              #                    load from temp_6_arithop_34 in mem


    lw      a7,224(sp)
              #                    occupy s7 with _anonymous_of_temp_10_cmp_34_0
              #                    load from temp_10_cmp_34 in mem
    lb      s7,211(sp)
              #                    occupy s5 with _anonymous_of_temp_3_cmp_31_0
              #                    load from temp_3_cmp_31 in mem
    lb      s5,243(sp)
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_28__1413:i1 
              #                          temp_28__1413 = icmp i32 Ne c_28, 0_0 
              #                    occupy a2 with c_28
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s11 with temp_28__1413
    xor     s11,a2,s8
    snez    s11, s11
              #                    free a2
              #                    free s8
              #                    free s11
              #                          br i1 temp_28__1413, label branch_true_45, label branch_false_45 
              #                    occupy s11 with temp_28__1413
              #                    free s11
              #                    occupy s11 with temp_28__1413
    bnez    s11, .branch_true_45
              #                    free s11
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_true_45: 
.branch_true_45:
              #                          new_var temp_29_arithop_44:i32 
              #                          temp_29_arithop_44 = Add i32 b_28, 1_0 
              #                    occupy a1 with b_28
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    occupy a0 with temp_29_arithop_44
    add     a0,a1,s8
              #                    free a1
              #                    free s8
              #                    free a0
              #                          new_var temp_30_arithop_44:i32 
              #                          temp_30_arithop_44 = Sub i32 c_28, 1_0 
              #                    occupy a2 with c_28
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    store to temp_29_arithop_44 in mem offset legal
    sw      a0,128(sp)
              #                    release a0 with temp_29_arithop_44
              #                    occupy a0 with temp_30_arithop_44
              #                    regtab:    a0:Occupied { symidx: temp_30_arithop_44, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Occupied { symidx: c_28, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s9:Freed { symidx: temp_11__858, tracked: true } | 


    sub     a0,a2,s8
              #                    free a2
              #                    free s8
              #                    free a0
              #                          new_var temp_31_ret_of_dfs_44:i32 
              #                          temp_31_ret_of_dfs_44 =  Call i32 dfs_0(a_28, temp_29_arithop_44, temp_30_arithop_44, d_28, e_28, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_arithop_34 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with temp_7_arithop_34
              #                    store to temp_8_arithop_34 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_2_array_ele_31 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_2_array_ele_31
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      s5,243(sp)
              #                    release s5 with temp_3_cmp_31
              #                    store to ans_30 in mem offset legal
    sw      s6,204(sp)
              #                    release s6 with ans_30
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_10_cmp_34
              #                    store to temp_11__858 in mem offset legal
    sb      s9,203(sp)
              #                    release s9 with temp_11__858
              #                    store to temp_19__1132 in mem offset legal
    sb      s10,171(sp)
              #                    release s10 with temp_19__1132
              #                    store to temp_28__1413 in mem offset legal
    sb      s11,135(sp)
              #                    release s11 with temp_28__1413
              #                    store to temp_30_arithop_44 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_30_arithop_44
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    store to e_28 in mem offset legal
    sw      a4,260(sp)
              #                    release a4 with e_28
              #                    store to last_28 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with last_28
              #                    store to temp_1_array_ptr_31 in mem offset legal
    sd      a6,248(sp)
              #                    release a6 with temp_1_array_ptr_31
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_6_arithop_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy a1 with _anonymous_of_temp_29_arithop_44_0
              #                    load from temp_29_arithop_44 in mem


    lw      a1,128(sp)
              #                    occupy a2 with _anonymous_of_temp_30_arithop_44_0
              #                    load from temp_30_arithop_44 in mem


    lw      a2,124(sp)
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy a5 with _anonymous_of_3_0_0
    li      a5, 3
              #                    arg load ended


    call    dfs
              #                    store to temp_31_ret_of_dfs_44 in mem offset legal
    sw      a0,120(sp)
              #                          new_var temp_32_ret_of_equal_44:i32 
              #                          temp_32_ret_of_equal_44 =  Call i32 equal_0(last_28, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_31_ret_of_dfs_44 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_31_ret_of_dfs_44
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a0,256(sp)
              #                    occupy a1 with _anonymous_of_4_0_0
    li      a1, 4
              #                    arg load ended


    call    equal
              #                    store to temp_32_ret_of_equal_44 in mem offset legal
    sw      a0,116(sp)
              #                          new_var temp_33_arithop_44:i32 
              #                          temp_33_arithop_44 = Sub i32 c_28, temp_32_ret_of_equal_44 
              #                    occupy a1 with c_28
              #                    load from c_28 in mem


    lw      a1,268(sp)
              #                    occupy a0 with temp_32_ret_of_equal_44
              #                    occupy a2 with temp_33_arithop_44
              #                    regtab:    a0:Occupied { symidx: temp_32_ret_of_equal_44, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: c_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_33_arithop_44, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_34_arithop_44:i32 
              #                          temp_34_arithop_44 = Mul i32 temp_33_arithop_44, temp_31_ret_of_dfs_44 
              #                    occupy a2 with temp_33_arithop_44
              #                    occupy a3 with temp_31_ret_of_dfs_44
              #                    load from temp_31_ret_of_dfs_44 in mem


    lw      a3,120(sp)
              #                    occupy a4 with temp_34_arithop_44
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_35_arithop_44:i32 
              #                          temp_35_arithop_44 = Add i32 ans_30, temp_34_arithop_44 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem


    lw      a5,204(sp)
              #                    occupy a4 with temp_34_arithop_44
              #                    occupy a6 with temp_35_arithop_44
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_36_arithop_44:i32 
              #                          temp_36_arithop_44 = Mod i32 temp_35_arithop_44, 1000000007_0 
              #                    occupy a6 with temp_35_arithop_44
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_36_arithop_44
              #                    load from temp_36_arithop_44 in mem


    lw      s1,100(sp)
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_36_arithop_44 
              #                    occupy s1 with temp_36_arithop_44
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_45 
              #                    store to temp_31_ret_of_dfs_44 in mem offset legal
    sw      a3,120(sp)
              #                    release a3 with temp_31_ret_of_dfs_44
              #                    store to temp_34_arithop_44 in mem offset legal
    sw      a4,108(sp)
              #                    release a4 with temp_34_arithop_44
              #                    store to temp_36_arithop_44 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_36_arithop_44
              #                    store to temp_32_ret_of_equal_44 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_32_ret_of_equal_44
              #                    store to c_28 in mem offset legal
    sw      a1,268(sp)
              #                    release a1 with c_28
              #                    store to temp_35_arithop_44 in mem offset legal
    sw      a6,104(sp)
              #                    release a6 with temp_35_arithop_44
              #                    store to temp_33_arithop_44 in mem offset legal
    sw      a2,112(sp)
              #                    release a2 with temp_33_arithop_44
              #                    store to ans_30 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with ans_30
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy s10 with _anonymous_of_temp_19__1132_0
              #                    load from temp_19__1132 in mem
    lb      s10,171(sp)
              #                    occupy s9 with _anonymous_of_temp_11__858_0
              #                    load from temp_11__858 in mem
    lb      s9,203(sp)
              #                    occupy s1 with _anonymous_of_temp_7_arithop_34_0
              #                    load from temp_7_arithop_34 in mem


    lw      s1,220(sp)
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem


    lw      s4,212(sp)
              #                    occupy s6 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem


    lw      s6,204(sp)
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem


    lw      s2,216(sp)
              #                    occupy s11 with _anonymous_of_temp_28__1413_0
              #                    load from temp_28__1413 in mem
    lb      s11,135(sp)
              #                    occupy a6 with _anonymous_of_temp_1_array_ptr_31_0
              #                    load from temp_1_array_ptr_31 in mem
    ld      a6,248(sp)
              #                    occupy s3 with _anonymous_of_temp_2_array_ele_31_0
              #                    load from temp_2_array_ele_31 in mem


    lw      s3,244(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a5,256(sp)
              #                    occupy a7 with _anonymous_of_temp_6_arithop_34_0
              #                    load from temp_6_arithop_34 in mem


    lw      a7,224(sp)
              #                    occupy s7 with _anonymous_of_temp_10_cmp_34_0
              #                    load from temp_10_cmp_34 in mem
    lb      s7,211(sp)
              #                    occupy s5 with _anonymous_of_temp_3_cmp_31_0
              #                    load from temp_3_cmp_31 in mem
    lb      s5,243(sp)
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_false_45: 
.branch_false_45:
              #                    regtab     a0:Freed { symidx: a_28, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_37__1694:i1 
              #                          temp_37__1694 = icmp i32 Ne d_28, 0_0 
              #                    occupy a3 with d_28
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    store to a_28 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with a_28
              #                    occupy a0 with temp_37__1694
    xor     a0,a3,s8
    snez    a0, a0
              #                    free a3
              #                    free s8
              #                    free a0
              #                          br i1 temp_37__1694, label branch_true_48, label branch_false_48 
              #                    occupy a0 with temp_37__1694
              #                    free a0
              #                    occupy a0 with temp_37__1694
    bnez    a0, .branch_true_48
              #                    free a0
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: temp_37__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_true_48: 
.branch_true_48:
              #                          new_var temp_38_arithop_47:i32 
              #                          temp_38_arithop_47 = Add i32 c_28, 1_0 
              #                    occupy a2 with c_28
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    store to temp_37__1694 in mem offset legal
    sb      a0,99(sp)
              #                    release a0 with temp_37__1694
              #                    occupy a0 with temp_38_arithop_47
    add     a0,a2,s8
              #                    free a2
              #                    free s8
              #                    free a0
              #                          new_var temp_39_arithop_47:i32 
              #                          temp_39_arithop_47 = Sub i32 d_28, 1_0 
              #                    occupy a3 with d_28
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    store to temp_38_arithop_47 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_38_arithop_47
              #                    occupy a0 with temp_39_arithop_47
              #                    regtab:    a0:Occupied { symidx: temp_39_arithop_47, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Occupied { symidx: d_28, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s9:Freed { symidx: temp_11__858, tracked: true } | 


    sub     a0,a3,s8
              #                    free a3
              #                    free s8
              #                    free a0
              #                          new_var temp_40_ret_of_dfs_47:i32 
              #                          temp_40_ret_of_dfs_47 =  Call i32 dfs_0(a_28, b_28, temp_38_arithop_47, temp_39_arithop_47, e_28, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_arithop_34 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with temp_7_arithop_34
              #                    store to temp_8_arithop_34 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_2_array_ele_31 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_2_array_ele_31
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      s5,243(sp)
              #                    release s5 with temp_3_cmp_31
              #                    store to ans_30 in mem offset legal
    sw      s6,204(sp)
              #                    release s6 with ans_30
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_10_cmp_34
              #                    store to temp_11__858 in mem offset legal
    sb      s9,203(sp)
              #                    release s9 with temp_11__858
              #                    store to temp_19__1132 in mem offset legal
    sb      s10,171(sp)
              #                    release s10 with temp_19__1132
              #                    store to temp_28__1413 in mem offset legal
    sb      s11,135(sp)
              #                    release s11 with temp_28__1413
              #                    store to temp_39_arithop_47 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_39_arithop_47
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    store to e_28 in mem offset legal
    sw      a4,260(sp)
              #                    release a4 with e_28
              #                    store to last_28 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with last_28
              #                    store to temp_1_array_ptr_31 in mem offset legal
    sd      a6,248(sp)
              #                    release a6 with temp_1_array_ptr_31
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_6_arithop_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy a2 with _anonymous_of_temp_38_arithop_47_0
              #                    load from temp_38_arithop_47 in mem


    lw      a2,92(sp)
              #                    occupy a3 with _anonymous_of_temp_39_arithop_47_0
              #                    load from temp_39_arithop_47 in mem


    lw      a3,88(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy a5 with _anonymous_of_4_0_0
    li      a5, 4
              #                    arg load ended


    call    dfs
              #                    store to temp_40_ret_of_dfs_47 in mem offset legal
    sw      a0,84(sp)
              #                          new_var temp_41_ret_of_equal_47:i32 
              #                          temp_41_ret_of_equal_47 =  Call i32 equal_0(last_28, 5_0) 
              #                    saved register dumping to mem
              #                    store to temp_40_ret_of_dfs_47 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_40_ret_of_dfs_47
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a0,256(sp)
              #                    occupy a1 with _anonymous_of_5_0_0
    li      a1, 5
              #                    arg load ended


    call    equal
              #                    store to temp_41_ret_of_equal_47 in mem offset legal
    sw      a0,80(sp)
              #                          new_var temp_42_arithop_47:i32 
              #                          temp_42_arithop_47 = Sub i32 d_28, temp_41_ret_of_equal_47 
              #                    occupy a1 with d_28
              #                    load from d_28 in mem


    lw      a1,264(sp)
              #                    occupy a0 with temp_41_ret_of_equal_47
              #                    occupy a2 with temp_42_arithop_47
              #                    regtab:    a0:Occupied { symidx: temp_41_ret_of_equal_47, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: d_28, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_42_arithop_47, tracked: true, occupy_count: 1 } | 


    sub     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_43_arithop_47:i32 
              #                          temp_43_arithop_47 = Mul i32 temp_42_arithop_47, temp_40_ret_of_dfs_47 
              #                    occupy a2 with temp_42_arithop_47
              #                    occupy a3 with temp_40_ret_of_dfs_47
              #                    load from temp_40_ret_of_dfs_47 in mem


    lw      a3,84(sp)
              #                    occupy a4 with temp_43_arithop_47
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_44_arithop_47:i32 
              #                          temp_44_arithop_47 = Add i32 ans_30, temp_43_arithop_47 
              #                    occupy a5 with ans_30
              #                    load from ans_30 in mem


    lw      a5,204(sp)
              #                    occupy a4 with temp_43_arithop_47
              #                    occupy a6 with temp_44_arithop_47
    add     a6,a5,a4
              #                    free a5
              #                    free a4
              #                    free a6
              #                          new_var temp_45_arithop_47:i32 
              #                          temp_45_arithop_47 = Mod i32 temp_44_arithop_47, 1000000007_0 
              #                    occupy a6 with temp_44_arithop_47
              #                    occupy a7 with 1000000007_0
    li      a7, 1000000007
              #                    occupy s1 with temp_45_arithop_47
              #                    load from temp_45_arithop_47 in mem


    lw      s1,64(sp)
    rem     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          ans_30 = i32 temp_45_arithop_47 
              #                    occupy s1 with temp_45_arithop_47
              #                    occupy a5 with ans_30
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: branch_false_48 
              #                    store to temp_40_ret_of_dfs_47 in mem offset legal
    sw      a3,84(sp)
              #                    release a3 with temp_40_ret_of_dfs_47
              #                    store to temp_43_arithop_47 in mem offset legal
    sw      a4,72(sp)
              #                    release a4 with temp_43_arithop_47
              #                    store to temp_45_arithop_47 in mem offset legal
    sw      s1,64(sp)
              #                    release s1 with temp_45_arithop_47
              #                    store to temp_41_ret_of_equal_47 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_41_ret_of_equal_47
              #                    store to d_28 in mem offset legal
    sw      a1,264(sp)
              #                    release a1 with d_28
              #                    store to temp_44_arithop_47 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_44_arithop_47
              #                    store to temp_42_arithop_47 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_42_arithop_47
              #                    store to ans_30 in mem offset legal
    sw      a5,204(sp)
              #                    release a5 with ans_30
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy s10 with _anonymous_of_temp_19__1132_0
              #                    load from temp_19__1132 in mem
    lb      s10,171(sp)
              #                    occupy s9 with _anonymous_of_temp_11__858_0
              #                    load from temp_11__858 in mem
    lb      s9,203(sp)
              #                    occupy s1 with _anonymous_of_temp_7_arithop_34_0
              #                    load from temp_7_arithop_34 in mem


    lw      s1,220(sp)
              #                    occupy a0 with _anonymous_of_temp_37__1694_0
              #                    load from temp_37__1694 in mem
    lb      a0,99(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem


    lw      s4,212(sp)
              #                    occupy s6 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem


    lw      s6,204(sp)
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem


    lw      s2,216(sp)
              #                    occupy s11 with _anonymous_of_temp_28__1413_0
              #                    load from temp_28__1413 in mem
    lb      s11,135(sp)
              #                    occupy a6 with _anonymous_of_temp_1_array_ptr_31_0
              #                    load from temp_1_array_ptr_31 in mem
    ld      a6,248(sp)
              #                    occupy s3 with _anonymous_of_temp_2_array_ele_31_0
              #                    load from temp_2_array_ele_31 in mem


    lw      s3,244(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a5,256(sp)
              #                    occupy a7 with _anonymous_of_temp_6_arithop_34_0
              #                    load from temp_6_arithop_34 in mem


    lw      a7,224(sp)
              #                    occupy s7 with _anonymous_of_temp_10_cmp_34_0
              #                    load from temp_10_cmp_34 in mem
    lb      s7,211(sp)
              #                    occupy s5 with _anonymous_of_temp_3_cmp_31_0
              #                    load from temp_3_cmp_31 in mem
    lb      s5,243(sp)
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: temp_37__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_false_48: 
.branch_false_48:
              #                    regtab     a0:Freed { symidx: temp_37__1694, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_46__1975:i1 
              #                          temp_46__1975 = icmp i32 Ne e_28, 0_0 
              #                    occupy a4 with e_28
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    store to temp_37__1694 in mem offset legal
    sb      a0,99(sp)
              #                    release a0 with temp_37__1694
              #                    occupy a0 with temp_46__1975
    xor     a0,a4,s8
    snez    a0, a0
              #                    free a4
              #                    free s8
              #                    free a0
              #                          br i1 temp_46__1975, label branch_true_51, label branch_false_51 
              #                    occupy a0 with temp_46__1975
              #                    free a0
              #                    occupy a0 with temp_46__1975
    bnez    a0, .branch_true_51
              #                    free a0
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_46__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_true_51: 
.branch_true_51:
              #                          new_var temp_47_arithop_50:i32 
              #                          temp_47_arithop_50 = Add i32 d_28, 1_0 
              #                    occupy a3 with d_28
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    store to temp_46__1975 in mem offset legal
    sb      a0,63(sp)
              #                    release a0 with temp_46__1975
              #                    occupy a0 with temp_47_arithop_50
    add     a0,a3,s8
              #                    free a3
              #                    free s8
              #                    free a0
              #                          new_var temp_48_arithop_50:i32 
              #                          temp_48_arithop_50 = Sub i32 e_28, 1_0 
              #                    occupy a4 with e_28
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    store to temp_47_arithop_50 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_47_arithop_50
              #                    occupy a0 with temp_48_arithop_50
              #                    regtab:    a0:Occupied { symidx: temp_48_arithop_50, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Occupied { symidx: e_28, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s9:Freed { symidx: temp_11__858, tracked: true } | 


    sub     a0,a4,s8
              #                    free a4
              #                    free s8
              #                    free a0
              #                          new_var temp_49_ret_of_dfs_50:i32 
              #                          temp_49_ret_of_dfs_50 =  Call i32 dfs_0(a_28, b_28, c_28, temp_47_arithop_50, temp_48_arithop_50, 5_0) 
              #                    saved register dumping to mem
              #                    store to temp_7_arithop_34 in mem offset legal
    sw      s1,220(sp)
              #                    release s1 with temp_7_arithop_34
              #                    store to temp_8_arithop_34 in mem offset legal
    sw      s2,216(sp)
              #                    release s2 with temp_8_arithop_34
              #                    store to temp_2_array_ele_31 in mem offset legal
    sw      s3,244(sp)
              #                    release s3 with temp_2_array_ele_31
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with temp_9_arithop_34
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      s5,243(sp)
              #                    release s5 with temp_3_cmp_31
              #                    store to ans_30 in mem offset legal
    sw      s6,204(sp)
              #                    release s6 with ans_30
              #                    store to temp_10_cmp_34 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_10_cmp_34
              #                    store to temp_11__858 in mem offset legal
    sb      s9,203(sp)
              #                    release s9 with temp_11__858
              #                    store to temp_19__1132 in mem offset legal
    sb      s10,171(sp)
              #                    release s10 with temp_19__1132
              #                    store to temp_28__1413 in mem offset legal
    sb      s11,135(sp)
              #                    release s11 with temp_28__1413
              #                    store to temp_48_arithop_50 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_48_arithop_50
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    store to e_28 in mem offset legal
    sw      a4,260(sp)
              #                    release a4 with e_28
              #                    store to last_28 in mem offset legal
    sw      a5,256(sp)
              #                    release a5 with last_28
              #                    store to temp_1_array_ptr_31 in mem offset legal
    sd      a6,248(sp)
              #                    release a6 with temp_1_array_ptr_31
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a7,224(sp)
              #                    release a7 with temp_6_arithop_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_28_0
              #                    load from a_28 in mem


    lw      a0,276(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a3 with _anonymous_of_temp_47_arithop_50_0
              #                    load from temp_47_arithop_50 in mem


    lw      a3,56(sp)
              #                    occupy a4 with _anonymous_of_temp_48_arithop_50_0
              #                    load from temp_48_arithop_50 in mem


    lw      a4,52(sp)
              #                    occupy a5 with _anonymous_of_5_0_0
    li      a5, 5
              #                    arg load ended


    call    dfs
              #                    store to temp_49_ret_of_dfs_50 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_50_arithop_50:i32 
              #                          temp_50_arithop_50 = Mul i32 e_28, temp_49_ret_of_dfs_50 
              #                    occupy a1 with e_28
              #                    load from e_28 in mem


    lw      a1,260(sp)
              #                    occupy a0 with temp_49_ret_of_dfs_50
              #                    occupy a2 with temp_50_arithop_50
    mul     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          new_var temp_51_arithop_50:i32 
              #                          temp_51_arithop_50 = Add i32 ans_30, temp_50_arithop_50 
              #                    occupy a3 with ans_30
              #                    load from ans_30 in mem


    lw      a3,204(sp)
              #                    occupy a2 with temp_50_arithop_50
              #                    occupy a4 with temp_51_arithop_50
    add     a4,a3,a2
              #                    free a3
              #                    free a2
              #                    free a4
              #                          new_var temp_52_arithop_50:i32 
              #                          temp_52_arithop_50 = Mod i32 temp_51_arithop_50, 1000000007_0 
              #                    occupy a4 with temp_51_arithop_50
              #                    occupy a5 with 1000000007_0
    li      a5, 1000000007
              #                    occupy a6 with temp_52_arithop_50
              #                    load from temp_52_arithop_50 in mem


    lw      a6,36(sp)
    rem     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                          ans_30 = i32 temp_52_arithop_50 
              #                    occupy a6 with temp_52_arithop_50
              #                    occupy a3 with ans_30
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: branch_false_51 
              #                    store to ans_30 in mem offset legal
    sw      a3,204(sp)
              #                    release a3 with ans_30
              #                    store to temp_51_arithop_50 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with temp_51_arithop_50
              #                    store to temp_49_ret_of_dfs_50 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_49_ret_of_dfs_50
              #                    store to e_28 in mem offset legal
    sw      a1,260(sp)
              #                    release a1 with e_28
              #                    store to temp_52_arithop_50 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_52_arithop_50
              #                    store to temp_50_arithop_50 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_50_arithop_50
              #                    occupy a3 with _anonymous_of_d_28_0
              #                    load from d_28 in mem


    lw      a3,264(sp)
              #                    occupy a4 with _anonymous_of_e_28_0
              #                    load from e_28 in mem


    lw      a4,260(sp)
              #                    occupy s10 with _anonymous_of_temp_19__1132_0
              #                    load from temp_19__1132 in mem
    lb      s10,171(sp)
              #                    occupy s9 with _anonymous_of_temp_11__858_0
              #                    load from temp_11__858 in mem
    lb      s9,203(sp)
              #                    occupy s1 with _anonymous_of_temp_7_arithop_34_0
              #                    load from temp_7_arithop_34 in mem


    lw      s1,220(sp)
              #                    occupy a0 with _anonymous_of_temp_46__1975_0
              #                    load from temp_46__1975 in mem
    lb      a0,63(sp)
              #                    occupy a1 with _anonymous_of_b_28_0
              #                    load from b_28 in mem


    lw      a1,272(sp)
              #                    occupy s4 with _anonymous_of_temp_9_arithop_34_0
              #                    load from temp_9_arithop_34 in mem


    lw      s4,212(sp)
              #                    occupy s6 with _anonymous_of_ans_30_0
              #                    load from ans_30 in mem


    lw      s6,204(sp)
              #                    occupy s2 with _anonymous_of_temp_8_arithop_34_0
              #                    load from temp_8_arithop_34 in mem


    lw      s2,216(sp)
              #                    occupy s11 with _anonymous_of_temp_28__1413_0
              #                    load from temp_28__1413 in mem
    lb      s11,135(sp)
              #                    occupy a6 with _anonymous_of_temp_1_array_ptr_31_0
              #                    load from temp_1_array_ptr_31 in mem
    ld      a6,248(sp)
              #                    occupy s3 with _anonymous_of_temp_2_array_ele_31_0
              #                    load from temp_2_array_ele_31 in mem


    lw      s3,244(sp)
              #                    occupy a2 with _anonymous_of_c_28_0
              #                    load from c_28 in mem


    lw      a2,268(sp)
              #                    occupy a5 with _anonymous_of_last_28_0
              #                    load from last_28 in mem


    lw      a5,256(sp)
              #                    occupy a7 with _anonymous_of_temp_6_arithop_34_0
              #                    load from temp_6_arithop_34 in mem


    lw      a7,224(sp)
              #                    occupy s7 with _anonymous_of_temp_10_cmp_34_0
              #                    load from temp_10_cmp_34 in mem
    lb      s7,211(sp)
              #                    occupy s5 with _anonymous_of_temp_3_cmp_31_0
              #                    load from temp_3_cmp_31 in mem
    lb      s5,243(sp)
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_46__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label branch_false_51: 
.branch_false_51:
              #                    regtab     a0:Freed { symidx: temp_46__1975, tracked: true } |     a1:Freed { symidx: b_28, tracked: true } |     a2:Freed { symidx: c_28, tracked: true } |     a3:Freed { symidx: d_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_53_index_ptr_30:ptr->i32 
              #                          temp_53_index_ptr_30 = getelementptr *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy s8 with temp_53_index_ptr_30
    li      s8, 0
              #                    store to temp_46__1975 in mem offset legal
    sb      a0,63(sp)
              #                    release a0 with temp_46__1975
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to b_28 in mem offset legal
    sw      a1,272(sp)
              #                    release a1 with b_28
              #                    occupy a1 with a_28
              #                    load from a_28 in mem


    lw      a1,276(sp)
              #                    store to c_28 in mem offset legal
    sw      a2,268(sp)
              #                    release a2 with c_28
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
              #                    occupy a0 with *dp_0
              #                       load label dp as ptr to reg
    la      a0, dp
              #                    occupy reg a0 with *dp_0
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_54_arithop_30:i32 
              #                          temp_54_arithop_30 = Mod i32 ans_30, 1000000007_0 
              #                    occupy s6 with ans_30
              #                    occupy a0 with 1000000007_0
    li      a0, 1000000007
              #                    occupy a2 with temp_54_arithop_30
              #                    load from temp_54_arithop_30 in mem


    lw      a2,20(sp)
    rem     a2,s6,a0
              #                    free s6
              #                    free a0
              #                    free a2
              #                          store temp_54_arithop_30:i32 temp_53_index_ptr_30:ptr->i32 
              #                    occupy s8 with temp_53_index_ptr_30
              #                    occupy a2 with temp_54_arithop_30
    sw      a2,0(s8)
              #                    free a2
              #                    free s8
              #                          mu *dp_0:232 
              #                          *dp_0 = chi *dp_0:232 
              #                          new_var temp_55_array_ptr_30:ptr->i32 
              #                          temp_55_array_ptr_30 = getelementptr *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(a_28), Some(b_28), Some(c_28), Some(d_28), Some(e_28), Some(last_28)] 
              #                    occupy a0 with temp_55_array_ptr_30
    li      a0, 0
              #                    store to a_28 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with a_28
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_54_arithop_30 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_54_arithop_30
              #                    occupy a2 with a_28
              #                    load from a_28 in mem


    lw      a2,276(sp)
              #                    store to d_28 in mem offset legal
    sw      a3,264(sp)
              #                    release a3 with d_28
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with *dp_0
              #                       load label dp as ptr to reg
    la      a1, dp
              #                    occupy reg a1 with *dp_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_56_array_ele_30:i32 
              #                          temp_56_array_ele_30 = load temp_55_array_ptr_30:ptr->i32 
              #                    occupy a0 with temp_55_array_ptr_30
              #                    occupy a1 with temp_56_array_ele_30
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          ret temp_56_array_ele_30 
              #                    load from ra_dfs_0 in mem
    ld      ra,288(sp)
              #                    load from s0_dfs_0 in mem
    ld      s0,280(sp)
              #                    store to temp_56_array_ele_30 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_56_array_ele_30
              #                    store to temp_55_array_ptr_30 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_55_array_ptr_30
              #                    occupy a0 with temp_56_array_ele_30
              #                    load from temp_56_array_ele_30 in mem


    lw      a0,4(sp)
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: a_28, tracked: true } |     a4:Freed { symidx: e_28, tracked: true } |     a5:Freed { symidx: last_28, tracked: true } |     a6:Freed { symidx: temp_1_array_ptr_31, tracked: true } |     a7:Freed { symidx: temp_6_arithop_34, tracked: true } |     s10:Freed { symidx: temp_19__1132, tracked: true } |     s11:Freed { symidx: temp_28__1413, tracked: true } |     s1:Freed { symidx: temp_7_arithop_34, tracked: true } |     s2:Freed { symidx: temp_8_arithop_34, tracked: true } |     s3:Freed { symidx: temp_2_array_ele_31, tracked: true } |     s4:Freed { symidx: temp_9_arithop_34, tracked: true } |     s5:Freed { symidx: temp_3_cmp_31, tracked: true } |     s6:Freed { symidx: ans_30, tracked: true } |     s7:Freed { symidx: temp_10_cmp_34, tracked: true } |     s8:Freed { symidx: temp_53_index_ptr_30, tracked: true } |     s9:Freed { symidx: temp_11__858, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 272|s0_main:8 at 264|temp_57_ret_of_getint:4 at 260|n:4 at 256|i:4 at 252|temp_58_cmp:1 at 251|none:3 at 248|j:4 at 244|temp_59_cmp:1 at 243|none:3 at 240|k:4 at 236|temp_60_cmp:1 at 235|none:3 at 232|l:4 at 228|temp_61_cmp:1 at 227|none:3 at 224|m:4 at 220|temp_62_cmp:1 at 219|none:3 at 216|h:4 at 212|temp_63_cmp:1 at 211|none:3 at 208|temp_64_index_ptr:8 at 200|temp_65_arithop:4 at 196|temp_66_arithop:4 at 192|temp_67_arithop:4 at 188|temp_68_arithop:4 at 184|temp_69_arithop:4 at 180|temp_70_arithop:4 at 176|temp_71_cmp:1 at 175|none:7 at 168|temp_72_index_ptr:8 at 160|temp_73_ret_of_getint:4 at 156|none:4 at 152|temp_74_array_ptr:8 at 144|temp_75_array_ele:4 at 140|none:4 at 136|temp_76_index_ptr:8 at 128|temp_77_array_ptr:8 at 120|temp_78_array_ele:4 at 116|none:4 at 112|temp_79_array_ptr:8 at 104|temp_80_array_ele:4 at 100|temp_81_arithop:4 at 96|temp_82_arithop:4 at 92|none:4 at 88|temp_83_array_ptr:8 at 80|temp_84_array_ele:4 at 76|none:4 at 72|temp_85_array_ptr:8 at 64|temp_86_array_ele:4 at 60|none:4 at 56|temp_87_array_ptr:8 at 48|temp_88_array_ele:4 at 44|none:4 at 40|temp_89_array_ptr:8 at 32|temp_90_array_ele:4 at 28|none:4 at 24|temp_91_array_ptr:8 at 16|temp_92_array_ele:4 at 12|temp_93_ret_of_dfs:4 at 8|ans:4 at 4|none:4 at 0
    addi    sp,sp,-280
              #                    store to ra_main_0 in mem offset legal
    sd      ra,272(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,264(sp)
    addi    s0,sp,280
              #                          alloc i32 temp_57_ret_of_getint_56 
              #                          alloc i32 n_56 
              #                          alloc i32 i_56 
              #                          alloc i1 temp_58_cmp_59 
              #                          alloc i32 j_61 
              #                          alloc i1 temp_59_cmp_63 
              #                          alloc i32 k_65 
              #                          alloc i1 temp_60_cmp_67 
              #                          alloc i32 l_69 
              #                          alloc i1 temp_61_cmp_71 
              #                          alloc i32 m_73 
              #                          alloc i1 temp_62_cmp_75 
              #                          alloc i32 h_77 
              #                          alloc i1 temp_63_cmp_79 
              #                          alloc ptr->i32 temp_64_index_ptr_81 
              #                          alloc i32 temp_65_arithop_81 
              #                          alloc i32 temp_66_arithop_77 
              #                          alloc i32 temp_67_arithop_73 
              #                          alloc i32 temp_68_arithop_69 
              #                          alloc i32 temp_69_arithop_65 
              #                          alloc i32 temp_70_arithop_61 
              #                          alloc i1 temp_71_cmp_90 
              #                          alloc ptr->i32 temp_72_index_ptr_92 
              #                          alloc i32 temp_73_ret_of_getint_92 
              #                          alloc ptr->i32 temp_74_array_ptr_92 
              #                          alloc i32 temp_75_array_ele_92 
              #                          alloc ptr->i32 temp_76_index_ptr_92 
              #                          alloc ptr->i32 temp_77_array_ptr_92 
              #                          alloc i32 temp_78_array_ele_92 
              #                          alloc ptr->i32 temp_79_array_ptr_92 
              #                          alloc i32 temp_80_array_ele_92 
              #                          alloc i32 temp_81_arithop_92 
              #                          alloc i32 temp_82_arithop_92 
              #                          alloc ptr->i32 temp_83_array_ptr_56 
              #                          alloc i32 temp_84_array_ele_56 
              #                          alloc ptr->i32 temp_85_array_ptr_56 
              #                          alloc i32 temp_86_array_ele_56 
              #                          alloc ptr->i32 temp_87_array_ptr_56 
              #                          alloc i32 temp_88_array_ele_56 
              #                          alloc ptr->i32 temp_89_array_ptr_56 
              #                          alloc i32 temp_90_array_ele_56 
              #                          alloc ptr->i32 temp_91_array_ptr_56 
              #                          alloc i32 temp_92_array_ele_56 
              #                          alloc i32 temp_93_ret_of_dfs_56 
              #                          alloc i32 ans_56 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_57_ret_of_getint_56:i32 
              #                          temp_57_ret_of_getint_56 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_57_ret_of_getint_56 in mem offset legal
    sw      a0,260(sp)
              #                          n_56 = i32 temp_57_ret_of_getint_56 
              #                    occupy a0 with temp_57_ret_of_getint_56
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
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } | 
              #                          label while.head_60: 
.while.head_60:
              #                          new_var temp_58_cmp_59:i1 
              #                          temp_58_cmp_59 = icmp i32 Slt i_56, 18_0 
              #                    occupy a2 with i_56
              #                    occupy a3 with 18_0
    li      a3, 18
              #                    occupy a4 with temp_58_cmp_59
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_58_cmp_59, label while.body_60, label while.exit_60 
              #                    occupy a4 with temp_58_cmp_59
              #                    free a4
              #                    occupy a4 with temp_58_cmp_59
    bnez    a4, .while.body_60
              #                    free a4
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.body_60: 
.while.body_60:
              #                          j_61 = i32 0_0 
              #                    occupy a3 with j_61
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.head_64: 
.while.head_64:
              #                          new_var temp_59_cmp_63:i1 
              #                          temp_59_cmp_63 = icmp i32 Slt j_61, 18_0 
              #                    occupy a3 with j_61
              #                    occupy a5 with 18_0
    li      a5, 18
              #                    occupy a6 with temp_59_cmp_63
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_59_cmp_63, label while.body_64, label while.exit_64 
              #                    occupy a6 with temp_59_cmp_63
              #                    free a6
              #                    occupy a6 with temp_59_cmp_63
    bnez    a6, .while.body_64
              #                    free a6
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } | 
              #                          label while.body_64: 
.while.body_64:
              #                          k_65 = i32 0_0 
              #                    occupy a5 with k_65
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } | 
              #                          label while.head_68: 
.while.head_68:
              #                          new_var temp_60_cmp_67:i1 
              #                          temp_60_cmp_67 = icmp i32 Slt k_65, 18_0 
              #                    occupy a5 with k_65
              #                    occupy a7 with 18_0
    li      a7, 18
              #                    occupy s1 with temp_60_cmp_67
    slt     s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                          br i1 temp_60_cmp_67, label while.body_68, label while.exit_68 
              #                    occupy s1 with temp_60_cmp_67
              #                    free s1
              #                    occupy s1 with temp_60_cmp_67
    bnez    s1, .while.body_68
              #                    free s1
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } | 
              #                          label while.body_68: 
.while.body_68:
              #                          l_69 = i32 0_0 
              #                    occupy a7 with l_69
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } | 
              #                          label while.head_72: 
.while.head_72:
              #                          new_var temp_61_cmp_71:i1 
              #                          temp_61_cmp_71 = icmp i32 Slt l_69, 18_0 
              #                    occupy a7 with l_69
              #                    occupy s2 with 18_0
    li      s2, 18
              #                    occupy s3 with temp_61_cmp_71
    slt     s3,a7,s2
              #                    free a7
              #                    free s2
              #                    free s3
              #                          br i1 temp_61_cmp_71, label while.body_72, label while.exit_72 
              #                    occupy s3 with temp_61_cmp_71
              #                    free s3
              #                    occupy s3 with temp_61_cmp_71
    bnez    s3, .while.body_72
              #                    free s3
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } | 
              #                          label while.body_72: 
.while.body_72:
              #                          m_73 = i32 0_0 
              #                    occupy s2 with m_73
    li      s2, 0
              #                    free s2
              #                          jump label: while.head_76 
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } | 
              #                          label while.head_76: 
.while.head_76:
              #                          new_var temp_62_cmp_75:i1 
              #                          temp_62_cmp_75 = icmp i32 Slt m_73, 18_0 
              #                    occupy s2 with m_73
              #                    occupy s4 with 18_0
    li      s4, 18
              #                    occupy s5 with temp_62_cmp_75
    slt     s5,s2,s4
              #                    free s2
              #                    free s4
              #                    free s5
              #                          br i1 temp_62_cmp_75, label while.body_76, label while.exit_76 
              #                    occupy s5 with temp_62_cmp_75
              #                    free s5
              #                    occupy s5 with temp_62_cmp_75
    bnez    s5, .while.body_76
              #                    free s5
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } |     s5:Freed { symidx: temp_62_cmp_75, tracked: true } | 
              #                          label while.body_76: 
.while.body_76:
              #                          h_77 = i32 0_0 
              #                    occupy s4 with h_77
    li      s4, 0
              #                    free s4
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_62_cmp_75, tracked: true } | 
              #                          label while.head_80: 
.while.head_80:
              #                          new_var temp_63_cmp_79:i1 
              #                          temp_63_cmp_79 = icmp i32 Slt h_77, 7_0 
              #                    occupy s4 with h_77
              #                    occupy s6 with 7_0
    li      s6, 7
              #                    occupy s7 with temp_63_cmp_79
    slt     s7,s4,s6
              #                    free s4
              #                    free s6
              #                    free s7
              #                          br i1 temp_63_cmp_79, label while.body_80, label while.exit_80 
              #                    occupy s7 with temp_63_cmp_79
              #                    free s7
              #                    occupy s7 with temp_63_cmp_79
    bnez    s7, .while.body_80
              #                    free s7
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_62_cmp_75, tracked: true } |     s7:Freed { symidx: temp_63_cmp_79, tracked: true } | 
              #                          label while.body_80: 
.while.body_80:
              #                          new_var temp_64_index_ptr_81:ptr->i32 
              #                          temp_64_index_ptr_81 = getelementptr *dp_0:ptr->Array:i32:[Some(18_0), Some(18_0), Some(18_0), Some(18_0), Some(7_0)] [Some(i_56), Some(j_61), Some(k_65), Some(l_69), Some(m_73), Some(h_77)] 
              #                    occupy s6 with temp_64_index_ptr_81
    li      s6, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a2 with i_56
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s8,a2
              #                    free s8
              #                    free a2
    add     s6,s6,s9
              #                    free s9
    slli s6,s6,2
              #                    occupy s10 with *dp_0
              #                       load label dp as ptr to reg
    la      s10, dp
              #                    occupy reg s10 with *dp_0
    add     s6,s6,s10
              #                    free s10
              #                    free s6
              #                          store -1_0:i32 temp_64_index_ptr_81:ptr->i32 
              #                    occupy s6 with temp_64_index_ptr_81
              #                    occupy s11 with -1_0
    li      s11, -1
    sw      s11,0(s6)
              #                    free s11
              #                    free s6
              #                          mu *dp_0:311 
              #                          *dp_0 = chi *dp_0:311 
              #                          new_var temp_65_arithop_81:i32 
              #                          temp_65_arithop_81 = Add i32 h_77, 1_0 
              #                    occupy s4 with h_77
              #                    found literal reg Some(s8) already exist with 1_0
              #                    occupy s8 with 1_0
              #                    occupy s9 with temp_65_arithop_81
    add     s9,s4,s8
              #                    free s4
              #                    free s8
              #                    free s9
              #                          h_77 = i32 temp_65_arithop_81 
              #                    occupy s9 with temp_65_arithop_81
              #                    occupy s4 with h_77
    mv      s4, s9
              #                    free s9
              #                    free s4
              #                          jump label: while.head_80 
              #                    store to temp_65_arithop_81 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_65_arithop_81
              #                    store to temp_64_index_ptr_81 in mem offset legal
    sd      s6,200(sp)
              #                    release s6 with temp_64_index_ptr_81
              #                    store to temp_63_cmp_79 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_63_cmp_79
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } |     s4:Freed { symidx: h_77, tracked: true } |     s5:Freed { symidx: temp_62_cmp_75, tracked: true } |     s7:Freed { symidx: temp_63_cmp_79, tracked: true } | 
              #                          label while.exit_80: 
.while.exit_80:
              #                          new_var temp_66_arithop_77:i32 
              #                          temp_66_arithop_77 = Add i32 m_73, 1_0 
              #                    occupy s2 with m_73
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with temp_66_arithop_77
    add     s8,s2,s6
              #                    free s2
              #                    free s6
              #                    free s8
              #                          m_73 = i32 temp_66_arithop_77 
              #                    occupy s8 with temp_66_arithop_77
              #                    occupy s2 with m_73
    mv      s2, s8
              #                    free s8
              #                    free s2
              #                          jump label: while.head_76 
              #                    store to temp_62_cmp_75 in mem offset legal
    sb      s5,219(sp)
              #                    release s5 with temp_62_cmp_75
              #                    store to h_77 in mem offset legal
    sw      s4,212(sp)
              #                    release s4 with h_77
              #                    store to temp_63_cmp_79 in mem offset legal
    sb      s7,211(sp)
              #                    release s7 with temp_63_cmp_79
              #                    store to temp_66_arithop_77 in mem offset legal
    sw      s8,192(sp)
              #                    release s8 with temp_66_arithop_77
    j       .while.head_76
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s2:Freed { symidx: m_73, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } |     s5:Freed { symidx: temp_62_cmp_75, tracked: true } | 
              #                          label while.exit_76: 
.while.exit_76:
              #                          new_var temp_67_arithop_73:i32 
              #                          temp_67_arithop_73 = Add i32 l_69, 1_0 
              #                    occupy a7 with l_69
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_67_arithop_73
    add     s6,a7,s4
              #                    free a7
              #                    free s4
              #                    free s6
              #                          l_69 = i32 temp_67_arithop_73 
              #                    occupy s6 with temp_67_arithop_73
              #                    occupy a7 with l_69
    mv      a7, s6
              #                    free s6
              #                    free a7
              #                          jump label: while.head_72 
              #                    store to temp_61_cmp_71 in mem offset legal
    sb      s3,227(sp)
              #                    release s3 with temp_61_cmp_71
              #                    store to m_73 in mem offset legal
    sw      s2,220(sp)
              #                    release s2 with m_73
              #                    store to temp_62_cmp_75 in mem offset legal
    sb      s5,219(sp)
              #                    release s5 with temp_62_cmp_75
              #                    store to temp_67_arithop_73 in mem offset legal
    sw      s6,188(sp)
              #                    release s6 with temp_67_arithop_73
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     a7:Freed { symidx: l_69, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } |     s3:Freed { symidx: temp_61_cmp_71, tracked: true } | 
              #                          label while.exit_72: 
.while.exit_72:
              #                          new_var temp_68_arithop_69:i32 
              #                          temp_68_arithop_69 = Add i32 k_65, 1_0 
              #                    occupy a5 with k_65
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_68_arithop_69
    add     s4,a5,s2
              #                    free a5
              #                    free s2
              #                    free s4
              #                          k_65 = i32 temp_68_arithop_69 
              #                    occupy s4 with temp_68_arithop_69
              #                    occupy a5 with k_65
    mv      a5, s4
              #                    free s4
              #                    free a5
              #                          jump label: while.head_68 
              #                    store to temp_60_cmp_67 in mem offset legal
    sb      s1,235(sp)
              #                    release s1 with temp_60_cmp_67
              #                    store to temp_61_cmp_71 in mem offset legal
    sb      s3,227(sp)
              #                    release s3 with temp_61_cmp_71
              #                    store to l_69 in mem offset legal
    sw      a7,228(sp)
              #                    release a7 with l_69
              #                    store to temp_68_arithop_69 in mem offset legal
    sw      s4,184(sp)
              #                    release s4 with temp_68_arithop_69
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a5:Freed { symidx: k_65, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } |     s1:Freed { symidx: temp_60_cmp_67, tracked: true } | 
              #                          label while.exit_68: 
.while.exit_68:
              #                          new_var temp_69_arithop_65:i32 
              #                          temp_69_arithop_65 = Add i32 j_61, 1_0 
              #                    occupy a3 with j_61
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_69_arithop_65
    add     s2,a3,a7
              #                    free a3
              #                    free a7
              #                    free s2
              #                          j_61 = i32 temp_69_arithop_65 
              #                    occupy s2 with temp_69_arithop_65
              #                    occupy a3 with j_61
    mv      a3, s2
              #                    free s2
              #                    free a3
              #                          jump label: while.head_64 
              #                    store to temp_60_cmp_67 in mem offset legal
    sb      s1,235(sp)
              #                    release s1 with temp_60_cmp_67
              #                    store to temp_69_arithop_65 in mem offset legal
    sw      s2,180(sp)
              #                    release s2 with temp_69_arithop_65
              #                    store to temp_59_cmp_63 in mem offset legal
    sb      a6,243(sp)
              #                    release a6 with temp_59_cmp_63
              #                    store to k_65 in mem offset legal
    sw      a5,236(sp)
              #                    release a5 with k_65
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: j_61, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } |     a6:Freed { symidx: temp_59_cmp_63, tracked: true } | 
              #                          label while.exit_64: 
.while.exit_64:
              #                          new_var temp_70_arithop_61:i32 
              #                          temp_70_arithop_61 = Add i32 i_56, 1_0 
              #                    occupy a2 with i_56
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_70_arithop_61
    add     a7,a2,a5
              #                    free a2
              #                    free a5
              #                    free a7
              #                          i_56 = i32 temp_70_arithop_61 
              #                    occupy a7 with temp_70_arithop_61
              #                    occupy a2 with i_56
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: while.head_60 
              #                    store to j_61 in mem offset legal
    sw      a3,244(sp)
              #                    release a3 with j_61
              #                    store to temp_59_cmp_63 in mem offset legal
    sb      a6,243(sp)
              #                    release a6 with temp_59_cmp_63
              #                    store to temp_70_arithop_61 in mem offset legal
    sw      a7,176(sp)
              #                    release a7 with temp_70_arithop_61
              #                    store to temp_58_cmp_59 in mem offset legal
    sb      a4,251(sp)
              #                    release a4 with temp_58_cmp_59
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.exit_60: 
.while.exit_60:
              #                          i_56 = i32 0_0 
              #                    occupy a2 with i_56
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_71_cmp_90:i1 
              #                          temp_71_cmp_90 = icmp i32 Slt i_56, n_56 
              #                    occupy a2 with i_56
              #                    occupy a1 with n_56
              #                    occupy a3 with temp_71_cmp_90
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_71_cmp_90, label while.body_91, label while.exit_91 
              #                    occupy a3 with temp_71_cmp_90
              #                    free a3
              #                    occupy a3 with temp_71_cmp_90
    bnez    a3, .while.body_91
              #                    free a3
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: temp_71_cmp_90, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_72_index_ptr_92:ptr->i32 
              #                          temp_72_index_ptr_92 = getelementptr *list_0:ptr->i32 [Some(i_56)] 
              #                    occupy a5 with temp_72_index_ptr_92
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_56
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *list_0
              #                       load label list as ptr to reg
    la      s1, list
              #                    occupy reg s1 with *list_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_73_ret_of_getint_92:i32 
              #                          temp_73_ret_of_getint_92 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_57_ret_of_getint_56 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_57_ret_of_getint_56
              #                    store to n_56 in mem offset legal
    sw      a1,256(sp)
              #                    release a1 with n_56
              #                    store to i_56 in mem offset legal
    sw      a2,252(sp)
              #                    release a2 with i_56
              #                    store to temp_71_cmp_90 in mem offset legal
    sb      a3,175(sp)
              #                    release a3 with temp_71_cmp_90
              #                    store to temp_58_cmp_59 in mem offset legal
    sb      a4,251(sp)
              #                    release a4 with temp_58_cmp_59
              #                    store to temp_72_index_ptr_92 in mem offset legal
    sd      a5,160(sp)
              #                    release a5 with temp_72_index_ptr_92
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_73_ret_of_getint_92 in mem offset legal
    sw      a0,156(sp)
              #                          store temp_73_ret_of_getint_92:i32 temp_72_index_ptr_92:ptr->i32 
              #                    occupy a1 with temp_72_index_ptr_92
              #                    load from temp_72_index_ptr_92 in mem
    ld      a1,160(sp)
              #                    occupy a0 with temp_73_ret_of_getint_92
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *list_0:353 
              #                          *list_0 = chi *list_0:353 
              #                          new_var temp_74_array_ptr_92:ptr->i32 
              #                          temp_74_array_ptr_92 = getelementptr *list_0:ptr->i32 [Some(i_56)] 
              #                    occupy a2 with temp_74_array_ptr_92
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_56
              #                    load from i_56 in mem


    lw      a4,252(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *list_0
              #                       load label list as ptr to reg
    la      a6, list
              #                    occupy reg a6 with *list_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_75_array_ele_92:i32 
              #                          temp_75_array_ele_92 = load temp_74_array_ptr_92:ptr->i32 
              #                    occupy a2 with temp_74_array_ptr_92
              #                    occupy a7 with temp_75_array_ele_92
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_76_index_ptr_92:ptr->i32 
              #                          temp_76_index_ptr_92 = getelementptr *cns_0:ptr->i32 [Some(temp_75_array_ele_92)] 
              #                    occupy s1 with temp_76_index_ptr_92
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_75_array_ele_92
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,a7
              #                    free a3
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *cns_0
              #                       load label cns as ptr to reg
    la      s3, cns
              #                    occupy reg s3 with *cns_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_77_array_ptr_92:ptr->i32 
              #                          temp_77_array_ptr_92 = getelementptr *list_0:ptr->i32 [Some(i_56)] 
              #                    occupy s4 with temp_77_array_ptr_92
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a4 with i_56
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a3,a4
              #                    free a3
              #                    free a4
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *list_0
              #                       load label list as ptr to reg
    la      s6, list
              #                    occupy reg s6 with *list_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_78_array_ele_92:i32 
              #                          temp_78_array_ele_92 = load temp_77_array_ptr_92:ptr->i32 
              #                    occupy s4 with temp_77_array_ptr_92
              #                    occupy s7 with temp_78_array_ele_92
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_79_array_ptr_92:ptr->i32 
              #                          temp_79_array_ptr_92 = getelementptr *cns_0:ptr->i32 [Some(temp_78_array_ele_92)] 
              #                    occupy s8 with temp_79_array_ptr_92
    li      s8, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s7 with temp_78_array_ele_92
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a3,s7
              #                    free a3
              #                    free s7
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *cns_0
              #                       load label cns as ptr to reg
    la      s10, cns
              #                    occupy reg s10 with *cns_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          new_var temp_80_array_ele_92:i32 
              #                          temp_80_array_ele_92 = load temp_79_array_ptr_92:ptr->i32 
              #                    occupy s8 with temp_79_array_ptr_92
              #                    occupy s11 with temp_80_array_ele_92
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_81_arithop_92:i32 
              #                          temp_81_arithop_92 = Add i32 temp_80_array_ele_92, 1_0 
              #                    occupy s11 with temp_80_array_ele_92
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a5 with temp_81_arithop_92
    add     a5,s11,a3
              #                    free s11
              #                    free a3
              #                    free a5
              #                          store temp_81_arithop_92:i32 temp_76_index_ptr_92:ptr->i32 
              #                    occupy s1 with temp_76_index_ptr_92
              #                    occupy a5 with temp_81_arithop_92
    sw      a5,0(s1)
              #                    free a5
              #                    free s1
              #                          mu *cns_0:380 
              #                          *cns_0 = chi *cns_0:380 
              #                          new_var temp_82_arithop_92:i32 
              #                          temp_82_arithop_92 = Add i32 i_56, 1_0 
              #                    occupy a4 with i_56
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a6 with temp_82_arithop_92
    add     a6,a4,a3
              #                    free a4
              #                    free a3
              #                    free a6
              #                          i_56 = i32 temp_82_arithop_92 
              #                    occupy a6 with temp_82_arithop_92
              #                    occupy a4 with i_56
    mv      a4, a6
              #                    free a6
              #                    free a4
              #                          jump label: while.head_91 
              #                    store to temp_76_index_ptr_92 in mem offset legal
    sd      s1,128(sp)
              #                    release s1 with temp_76_index_ptr_92
              #                    store to temp_72_index_ptr_92 in mem offset legal
    sd      a1,160(sp)
              #                    release a1 with temp_72_index_ptr_92
              #                    store to temp_73_ret_of_getint_92 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_73_ret_of_getint_92
              #                    store to temp_82_arithop_92 in mem offset legal
    sw      a6,92(sp)
              #                    release a6 with temp_82_arithop_92
              #                    store to temp_75_array_ele_92 in mem offset legal
    sw      a7,140(sp)
              #                    release a7 with temp_75_array_ele_92
              #                    store to temp_80_array_ele_92 in mem offset legal
    sw      s11,100(sp)
              #                    release s11 with temp_80_array_ele_92
              #                    store to temp_81_arithop_92 in mem offset legal
    sw      a5,96(sp)
              #                    release a5 with temp_81_arithop_92
              #                    store to temp_77_array_ptr_92 in mem offset legal
    sd      s4,120(sp)
              #                    release s4 with temp_77_array_ptr_92
              #                    store to i_56 in mem offset legal
    sw      a4,252(sp)
              #                    release a4 with i_56
              #                    store to temp_74_array_ptr_92 in mem offset legal
    sd      a2,144(sp)
              #                    release a2 with temp_74_array_ptr_92
              #                    store to temp_78_array_ele_92 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_78_array_ele_92
              #                    store to temp_79_array_ptr_92 in mem offset legal
    sd      s8,104(sp)
              #                    release s8 with temp_79_array_ptr_92
              #                    occupy a1 with _anonymous_of_n_56_0
              #                    load from n_56 in mem


    lw      a1,256(sp)
              #                    occupy a0 with _anonymous_of_temp_57_ret_of_getint_56_0
              #                    load from temp_57_ret_of_getint_56 in mem


    lw      a0,260(sp)
              #                    occupy a4 with _anonymous_of_temp_58_cmp_59_0
              #                    load from temp_58_cmp_59 in mem
    lb      a4,251(sp)
              #                    occupy a2 with _anonymous_of_i_56_0
              #                    load from i_56 in mem


    lw      a2,252(sp)
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: temp_57_ret_of_getint_56, tracked: true } |     a1:Freed { symidx: n_56, tracked: true } |     a2:Freed { symidx: i_56, tracked: true } |     a3:Freed { symidx: temp_71_cmp_90, tracked: true } |     a4:Freed { symidx: temp_58_cmp_59, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
              #                          new_var temp_83_array_ptr_56:ptr->i32 
              #                          temp_83_array_ptr_56 = getelementptr *cns_0:ptr->i32 [Some(1_0)] 
              #                    occupy a5 with temp_83_array_ptr_56
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
    slli a5,a5,2
              #                    occupy s2 with *cns_0
              #                       load label cns as ptr to reg
    la      s2, cns
              #                    occupy reg s2 with *cns_0
    add     a5,a5,s2
              #                    free s2
              #                    free a5
              #                          new_var temp_84_array_ele_56:i32 
              #                          temp_84_array_ele_56 = load temp_83_array_ptr_56:ptr->i32 
              #                    occupy a5 with temp_83_array_ptr_56
              #                    occupy s3 with temp_84_array_ele_56
    lw      s3,0(a5)
              #                    free s3
              #                    free a5
              #                          new_var temp_85_array_ptr_56:ptr->i32 
              #                          temp_85_array_ptr_56 = getelementptr *cns_0:ptr->i32 [Some(2_0)] 
              #                    occupy s4 with temp_85_array_ptr_56
    li      s4, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a6,s5
              #                    free a6
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
              #                    occupy s7 with *cns_0
              #                       load label cns as ptr to reg
    la      s7, cns
              #                    occupy reg s7 with *cns_0
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          new_var temp_86_array_ele_56:i32 
              #                          temp_86_array_ele_56 = load temp_85_array_ptr_56:ptr->i32 
              #                    occupy s4 with temp_85_array_ptr_56
              #                    occupy s8 with temp_86_array_ele_56
    lw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          new_var temp_87_array_ptr_56:ptr->i32 
              #                          temp_87_array_ptr_56 = getelementptr *cns_0:ptr->i32 [Some(3_0)] 
              #                    occupy s9 with temp_87_array_ptr_56
    li      s9, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s10 with 3_0
    li      s10, 3
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a6,s10
              #                    free a6
              #                    free s10
    add     s9,s9,s11
              #                    free s11
    slli s9,s9,2
              #                    occupy a6 with *cns_0
              #                       load label cns as ptr to reg
    la      a6, cns
              #                    occupy reg a6 with *cns_0
    add     s9,s9,a6
              #                    free a6
              #                    free s9
              #                          new_var temp_88_array_ele_56:i32 
              #                          temp_88_array_ele_56 = load temp_87_array_ptr_56:ptr->i32 
              #                    occupy s9 with temp_87_array_ptr_56
              #                    occupy a6 with temp_88_array_ele_56
    lw      a6,0(s9)
              #                    free a6
              #                    free s9
              #                          new_var temp_89_array_ptr_56:ptr->i32 
              #                          temp_89_array_ptr_56 = getelementptr *cns_0:ptr->i32 [Some(4_0)] 
              #                    occupy a7 with temp_89_array_ptr_56
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with 4_0
    li      s2, 4
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s1,s2
              #                    free s1
              #                    free s2
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
              #                    occupy s1 with *cns_0
              #                       load label cns as ptr to reg
    la      s1, cns
              #                    occupy reg s1 with *cns_0
    add     a7,a7,s1
              #                    free s1
              #                    free a7
              #                          new_var temp_90_array_ele_56:i32 
              #                          temp_90_array_ele_56 = load temp_89_array_ptr_56:ptr->i32 
              #                    occupy a7 with temp_89_array_ptr_56
              #                    occupy s1 with temp_90_array_ele_56
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_91_array_ptr_56:ptr->i32 
              #                          temp_91_array_ptr_56 = getelementptr *cns_0:ptr->i32 [Some(5_0)] 
              #                    occupy s2 with temp_91_array_ptr_56
    li      s2, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 5_0
    li      s6, 5
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s2,s2,s7
              #                    free s7
    slli s2,s2,2
              #                    occupy s5 with *cns_0
              #                       load label cns as ptr to reg
    la      s5, cns
              #                    occupy reg s5 with *cns_0
    add     s2,s2,s5
              #                    free s5
              #                    free s2
              #                          new_var temp_92_array_ele_56:i32 
              #                          temp_92_array_ele_56 = load temp_91_array_ptr_56:ptr->i32 
              #                    occupy s2 with temp_91_array_ptr_56
              #                    occupy s5 with temp_92_array_ele_56
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_93_ret_of_dfs_56:i32 
              #                          temp_93_ret_of_dfs_56 =  Call i32 dfs_0(temp_84_array_ele_56, temp_86_array_ele_56, temp_88_array_ele_56, temp_90_array_ele_56, temp_92_array_ele_56, 0_0) 
              #                    saved register dumping to mem
              #                    store to temp_90_array_ele_56 in mem offset legal
    sw      s1,28(sp)
              #                    release s1 with temp_90_array_ele_56
              #                    store to temp_91_array_ptr_56 in mem offset legal
    sd      s2,16(sp)
              #                    release s2 with temp_91_array_ptr_56
              #                    store to temp_84_array_ele_56 in mem offset legal
    sw      s3,76(sp)
              #                    release s3 with temp_84_array_ele_56
              #                    store to temp_85_array_ptr_56 in mem offset legal
    sd      s4,64(sp)
              #                    release s4 with temp_85_array_ptr_56
              #                    store to temp_92_array_ele_56 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_92_array_ele_56
              #                    store to temp_86_array_ele_56 in mem offset legal
    sw      s8,60(sp)
              #                    release s8 with temp_86_array_ele_56
              #                    store to temp_87_array_ptr_56 in mem offset legal
    sd      s9,48(sp)
              #                    release s9 with temp_87_array_ptr_56
              #                    store to temp_57_ret_of_getint_56 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_57_ret_of_getint_56
              #                    store to n_56 in mem offset legal
    sw      a1,256(sp)
              #                    release a1 with n_56
              #                    store to i_56 in mem offset legal
    sw      a2,252(sp)
              #                    release a2 with i_56
              #                    store to temp_71_cmp_90 in mem offset legal
    sb      a3,175(sp)
              #                    release a3 with temp_71_cmp_90
              #                    store to temp_58_cmp_59 in mem offset legal
    sb      a4,251(sp)
              #                    release a4 with temp_58_cmp_59
              #                    store to temp_83_array_ptr_56 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_83_array_ptr_56
              #                    store to temp_88_array_ele_56 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_88_array_ele_56
              #                    store to temp_89_array_ptr_56 in mem offset legal
    sd      a7,32(sp)
              #                    release a7 with temp_89_array_ptr_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_84_array_ele_56_0
              #                    load from temp_84_array_ele_56 in mem


    lw      a0,76(sp)
              #                    occupy a1 with _anonymous_of_temp_86_array_ele_56_0
              #                    load from temp_86_array_ele_56 in mem


    lw      a1,60(sp)
              #                    occupy a2 with _anonymous_of_temp_88_array_ele_56_0
              #                    load from temp_88_array_ele_56 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_temp_90_array_ele_56_0
              #                    load from temp_90_array_ele_56 in mem


    lw      a3,28(sp)
              #                    occupy a4 with _anonymous_of_temp_92_array_ele_56_0
              #                    load from temp_92_array_ele_56 in mem


    lw      a4,12(sp)
              #                    occupy a5 with _anonymous_of_0_0_0
    li      a5, 0
              #                    arg load ended


    call    dfs
              #                    store to temp_93_ret_of_dfs_56 in mem offset legal
    sw      a0,8(sp)
              #                          ans_56 = i32 temp_93_ret_of_dfs_56 
              #                    occupy a0 with temp_93_ret_of_dfs_56
              #                    occupy a1 with ans_56
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(ans_56) 
              #                    saved register dumping to mem
              #                    store to temp_93_ret_of_dfs_56 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_93_ret_of_dfs_56
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
    ld      ra,272(sp)
              #                    load from s0_main_0 in mem
    ld      s0,264(sp)
              #                    occupy a0 with ans_56
              #                    load from ans_56 in mem


    lw      a0,4(sp)
    addi    sp,sp,280
              #                    free a0
    ret
              #                    regtab 
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
