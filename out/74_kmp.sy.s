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
              #                          Define get_next_0 [str_16, next_16] -> get_next_ret_0 
    .globl get_next
    .type get_next,@function
get_next:
              #                    mem layout:|ra_get_next:8 at 120|s0_get_next:8 at 112|str:8 at 104|next:8 at 96|temp_0_index_ptr:8 at 88|i:4 at 84|j:4 at 80|temp_1_array_ptr:8 at 72|temp_2_array_ele:4 at 68|temp_3_:1 at 67|none:3 at 64|temp_4_array_ptr:8 at 56|temp_5_array_ele:4 at 52|none:4 at 48|temp_6_array_ptr:8 at 40|temp_7_array_ele:4 at 36|temp_8_cmp:1 at 35|temp_9_cmp:1 at 34|temp_10_logic:1 at 33|none:1 at 32|temp_11_arithop:4 at 28|temp_12_arithop:4 at 24|temp_13_index_ptr:8 at 16|temp_14_array_ptr:8 at 8|temp_15_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-128
              #                    store to ra_get_next_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_get_next_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                          new_var str_16:ptr->i32 
              #                          new_var next_16:ptr->i32 
              #                          alloc ptr->i32 temp_0_index_ptr_18 
              #                          alloc i32 i_18 
              #                          alloc i32 j_18 
              #                          alloc ptr->i32 temp_1_array_ptr_21 
              #                          alloc i32 temp_2_array_ele_21 
              #                          alloc i1 temp_3__161 
              #                          alloc ptr->i32 temp_4_array_ptr_24 
              #                          alloc i32 temp_5_array_ele_24 
              #                          alloc ptr->i32 temp_6_array_ptr_24 
              #                          alloc i32 temp_7_array_ele_24 
              #                          alloc i1 temp_8_cmp_24 
              #                          alloc i1 temp_9_cmp_24 
              #                          alloc i1 temp_10_logic_24 
              #                          alloc i32 temp_11_arithop_26 
              #                          alloc i32 temp_12_arithop_26 
              #                          alloc ptr->i32 temp_13_index_ptr_26 
              #                          alloc ptr->i32 temp_14_array_ptr_24 
              #                          alloc i32 temp_15_array_ele_24 
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_0_index_ptr_18:ptr->i32 
              #                          temp_0_index_ptr_18 = getelementptr next_16:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_0_index_ptr_18
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
              #                    occupy a1 with next_16
    add     a2,a2,a1
              #                    free a1
              #                    free a2
              #                          store -1_0:i32 temp_0_index_ptr_18:ptr->i32 
              #                    occupy a2 with temp_0_index_ptr_18
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu next_16:27 
              #                          next_16 = chi next_16:27 
              #                          i_18 = i32 0_0 
              #                    occupy a7 with i_18
    li      a7, 0
              #                    free a7
              #                          j_18 = i32 -1_0 
              #                    occupy s1 with j_18
    li      s1, -1
              #                    free s1
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } | 
              #                          label while.head_22: 
.while.head_22:
              #                          new_var temp_1_array_ptr_21:ptr->i32 
              #                          temp_1_array_ptr_21 = getelementptr str_16:ptr->i32 [Some(i_18)] 
              #                    occupy a3 with temp_1_array_ptr_21
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with i_18
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a7
              #                    free a4
              #                    free a7
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with str_16
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_2_array_ele_21:i32 
              #                          temp_2_array_ele_21 = load temp_1_array_ptr_21:ptr->i32 
              #                    occupy a3 with temp_1_array_ptr_21
              #                    occupy a6 with temp_2_array_ele_21
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_3__161:i1 
              #                          temp_3__161 = icmp i32 Ne temp_2_array_ele_21, 0_0 
              #                    occupy a6 with temp_2_array_ele_21
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_3__161
    xor     s3,a6,s2
    snez    s3, s3
              #                    free a6
              #                    free s2
              #                    free s3
              #                          br i1 temp_3__161, label while.body_22, label while.exit_22 
              #                    occupy s3 with temp_3__161
              #                    free s3
              #                    occupy s3 with temp_3__161
    bnez    s3, .while.body_22
              #                    free s3
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a6:Freed { symidx: temp_2_array_ele_21, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } |     s3:Freed { symidx: temp_3__161, tracked: true } | 
              #                          label while.body_22: 
.while.body_22:
              #                          new_var temp_4_array_ptr_24:ptr->i32 
              #                          temp_4_array_ptr_24 = getelementptr str_16:ptr->i32 [Some(j_18)] 
              #                    occupy a4 with temp_4_array_ptr_24
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with j_18
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,s1
              #                    free a5
              #                    free s1
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
              #                    occupy a0 with str_16
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_5_array_ele_24:i32 
              #                          temp_5_array_ele_24 = load temp_4_array_ptr_24:ptr->i32 
              #                    occupy a4 with temp_4_array_ptr_24
              #                    occupy s4 with temp_5_array_ele_24
    lw      s4,0(a4)
              #                    free s4
              #                    free a4
              #                          new_var temp_6_array_ptr_24:ptr->i32 
              #                          temp_6_array_ptr_24 = getelementptr str_16:ptr->i32 [Some(i_18)] 
              #                    occupy s5 with temp_6_array_ptr_24
    li      s5, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a7 with i_18
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a5,a7
              #                    free a5
              #                    free a7
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with str_16
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_7_array_ele_24:i32 
              #                          temp_7_array_ele_24 = load temp_6_array_ptr_24:ptr->i32 
              #                    occupy s5 with temp_6_array_ptr_24
              #                    occupy s7 with temp_7_array_ele_24
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_8_cmp_24:i1 
              #                          temp_8_cmp_24 = icmp i32 Eq temp_7_array_ele_24, temp_5_array_ele_24 
              #                    occupy s7 with temp_7_array_ele_24
              #                    occupy s4 with temp_5_array_ele_24
              #                    occupy s8 with temp_8_cmp_24
    xor     s8,s7,s4
    seqz    s8, s8
              #                    free s7
              #                    free s4
              #                    free s8
              #                          new_var temp_9_cmp_24:i1 
              #                          temp_9_cmp_24 = icmp i32 Eq j_18, -1_0 
              #                    occupy s1 with j_18
              #                    occupy s9 with -1_0
    li      s9, -1
              #                    occupy s10 with temp_9_cmp_24
    xor     s10,s1,s9
    seqz    s10, s10
              #                    free s1
              #                    free s9
              #                    free s10
              #                          new_var temp_10_logic_24:i1 
              #                          temp_10_logic_24 = Or i1 temp_9_cmp_24, temp_8_cmp_24 
              #                    occupy s10 with temp_9_cmp_24
              #                    occupy s8 with temp_8_cmp_24
              #                    occupy s8 with temp_8_cmp_24
              #                    free s10
              #                    free s8
              #                    free s8
              #                          br i1 temp_10_logic_24, label branch_true_25, label branch_false_25 
              #                    occupy s11 with temp_10_logic_24
              #                    load from temp_10_logic_24 in mem
    lb      s11,33(sp)
              #                    free s11
              #                    occupy s11 with temp_10_logic_24
    bnez    s11, .branch_true_25
              #                    free s11
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a4:Freed { symidx: temp_4_array_ptr_24, tracked: true } |     a6:Freed { symidx: temp_2_array_ele_21, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s10:Freed { symidx: temp_9_cmp_24, tracked: true } |     s11:Freed { symidx: temp_10_logic_24, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } |     s3:Freed { symidx: temp_3__161, tracked: true } |     s4:Freed { symidx: temp_5_array_ele_24, tracked: true } |     s5:Freed { symidx: temp_6_array_ptr_24, tracked: true } |     s7:Freed { symidx: temp_7_array_ele_24, tracked: true } |     s8:Freed { symidx: temp_8_cmp_24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          new_var temp_11_arithop_26:i32 
              #                          temp_11_arithop_26 = Add i32 j_18, 1_0 
              #                    occupy s1 with j_18
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s2 with temp_11_arithop_26
    add     s2,s1,a5
              #                    free s1
              #                    free a5
              #                    free s2
              #                          j_18 = i32 temp_11_arithop_26 
              #                    occupy s2 with temp_11_arithop_26
              #                    occupy s1 with j_18
    mv      s1, s2
              #                    free s2
              #                    free s1
              #                          new_var temp_12_arithop_26:i32 
              #                          temp_12_arithop_26 = Add i32 i_18, 1_0 
              #                    occupy a7 with i_18
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s6 with temp_12_arithop_26
    add     s6,a7,a5
              #                    free a7
              #                    free a5
              #                    free s6
              #                          i_18 = i32 temp_12_arithop_26 
              #                    occupy s6 with temp_12_arithop_26
              #                    occupy a7 with i_18
    mv      a7, s6
              #                    free s6
              #                    free a7
              #                          new_var temp_13_index_ptr_26:ptr->i32 
              #                          temp_13_index_ptr_26 = getelementptr next_16:ptr->i32 [Some(i_18)] 
              #                    occupy s9 with temp_13_index_ptr_26
    li      s9, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a7 with i_18
              #                    store to str_16 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with str_16
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,a5,a7
              #                    free a5
              #                    free a7
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
              #                    occupy a1 with next_16
    add     s9,s9,a1
              #                    free a1
              #                    free s9
              #                          store j_18:i32 temp_13_index_ptr_26:ptr->i32 
              #                    occupy s9 with temp_13_index_ptr_26
              #                    occupy s1 with j_18
    sw      s1,0(s9)
              #                    free s1
              #                    free s9
              #                          mu next_16:83 
              #                          next_16 = chi next_16:83 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a4:Freed { symidx: temp_4_array_ptr_24, tracked: true } |     a6:Freed { symidx: temp_2_array_ele_21, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s10:Freed { symidx: temp_9_cmp_24, tracked: true } |     s11:Freed { symidx: temp_10_logic_24, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } |     s3:Freed { symidx: temp_3__161, tracked: true } |     s4:Freed { symidx: temp_5_array_ele_24, tracked: true } |     s5:Freed { symidx: temp_6_array_ptr_24, tracked: true } |     s7:Freed { symidx: temp_7_array_ele_24, tracked: true } |     s8:Freed { symidx: temp_8_cmp_24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                          new_var temp_14_array_ptr_24:ptr->i32 
              #                          temp_14_array_ptr_24 = getelementptr next_16:ptr->i32 [Some(j_18)] 
              #                    occupy a5 with temp_14_array_ptr_24
    li      a5, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s1 with j_18
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s2,s1
              #                    free s2
              #                    free s1
    add     a5,a5,s6
              #                    free s6
    slli a5,a5,2
              #                    occupy a1 with next_16
    add     a5,a5,a1
              #                    free a1
              #                    free a5
              #                          new_var temp_15_array_ele_24:i32 
              #                          temp_15_array_ele_24 = load temp_14_array_ptr_24:ptr->i32 
              #                    occupy a5 with temp_14_array_ptr_24
              #                    occupy s9 with temp_15_array_ele_24
    lw      s9,0(a5)
              #                    free s9
              #                    free a5
              #                          j_18 = i32 temp_15_array_ele_24 
              #                    occupy s9 with temp_15_array_ele_24
              #                    occupy s1 with j_18
    mv      s1, s9
              #                    free s9
              #                    free s1
              #                          jump label: L9_0 
              #                    store to temp_14_array_ptr_24 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_14_array_ptr_24
              #                    store to temp_15_array_ele_24 in mem offset legal
    sw      s9,4(sp)
              #                    release s9 with temp_15_array_ele_24
              #                    store to str_16 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with str_16
              #                    occupy s6 with _anonymous_of_temp_12_arithop_26_0
              #                    load from temp_12_arithop_26 in mem


    lw      s6,24(sp)
              #                    occupy s9 with _anonymous_of_temp_13_index_ptr_26_0
              #                    load from temp_13_index_ptr_26 in mem
    ld      s9,16(sp)
              #                    occupy s2 with _anonymous_of_temp_11_arithop_26_0
              #                    load from temp_11_arithop_26 in mem


    lw      s2,28(sp)
    j       .L9_0
              #                    regtab     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a4:Freed { symidx: temp_4_array_ptr_24, tracked: true } |     a6:Freed { symidx: temp_2_array_ele_21, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s10:Freed { symidx: temp_9_cmp_24, tracked: true } |     s11:Freed { symidx: temp_10_logic_24, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } |     s2:Freed { symidx: temp_11_arithop_26, tracked: true } |     s3:Freed { symidx: temp_3__161, tracked: true } |     s4:Freed { symidx: temp_5_array_ele_24, tracked: true } |     s5:Freed { symidx: temp_6_array_ptr_24, tracked: true } |     s6:Freed { symidx: temp_12_arithop_26, tracked: true } |     s7:Freed { symidx: temp_7_array_ele_24, tracked: true } |     s8:Freed { symidx: temp_8_cmp_24, tracked: true } |     s9:Freed { symidx: temp_13_index_ptr_26, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          jump label: while.head_22 
              #                    store to temp_9_cmp_24 in mem offset legal
    sb      s10,34(sp)
              #                    release s10 with temp_9_cmp_24
              #                    store to temp_1_array_ptr_21 in mem offset legal
    sd      a3,72(sp)
              #                    release a3 with temp_1_array_ptr_21
              #                    store to temp_12_arithop_26 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_12_arithop_26
              #                    store to temp_2_array_ele_21 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_2_array_ele_21
              #                    store to temp_6_array_ptr_24 in mem offset legal
    sd      s5,40(sp)
              #                    release s5 with temp_6_array_ptr_24
              #                    store to temp_4_array_ptr_24 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_4_array_ptr_24
              #                    store to temp_13_index_ptr_26 in mem offset legal
    sd      s9,16(sp)
              #                    release s9 with temp_13_index_ptr_26
              #                    store to temp_10_logic_24 in mem offset legal
    sb      s11,33(sp)
              #                    release s11 with temp_10_logic_24
              #                    store to temp_3__161 in mem offset legal
    sb      s3,67(sp)
              #                    release s3 with temp_3__161
              #                    store to temp_8_cmp_24 in mem offset legal
    sb      s8,35(sp)
              #                    release s8 with temp_8_cmp_24
              #                    store to temp_5_array_ele_24 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_5_array_ele_24
              #                    store to temp_11_arithop_26 in mem offset legal
    sw      s2,28(sp)
              #                    release s2 with temp_11_arithop_26
              #                    store to temp_7_array_ele_24 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_7_array_ele_24
              #                    occupy a0 with _anonymous_of_str_16_0
              #                    load from str_16 in mem
    ld      a0,104(sp)
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: str_16, tracked: true } |     a1:Freed { symidx: next_16, tracked: true } |     a2:Freed { symidx: temp_0_index_ptr_18, tracked: true } |     a3:Freed { symidx: temp_1_array_ptr_21, tracked: true } |     a6:Freed { symidx: temp_2_array_ele_21, tracked: true } |     a7:Freed { symidx: i_18, tracked: true } |     s1:Freed { symidx: j_18, tracked: true } |     s3:Freed { symidx: temp_3__161, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                    regtab 
              #                          Define KMP_0 [dst_31, src_31] -> KMP_ret_0 
    .globl KMP
    .type KMP,@function
KMP:
              #                    mem layout:|ra_KMP:8 at 16520|s0_KMP:8 at 16512|dst:8 at 16504|src:8 at 16496|next:16384 at 112|i:4 at 108|j:4 at 104|temp_16_array_ptr:8 at 96|temp_17_array_ele:4 at 92|temp_18_:1 at 91|none:3 at 88|temp_19_array_ptr:8 at 80|temp_20_array_ele:4 at 76|none:4 at 72|temp_21_array_ptr:8 at 64|temp_22_array_ele:4 at 60|temp_23_cmp:1 at 59|none:3 at 56|temp_24_arithop:4 at 52|temp_25_arithop:4 at 48|temp_26_array_ptr:8 at 40|temp_27_array_ele:4 at 36|temp_28_booltrans:1 at 35|temp_29_logicnot:1 at 34|none:2 at 32|temp_30_array_ptr:8 at 24|temp_31_array_ele:4 at 20|temp_32_cmp:1 at 19|none:3 at 16|temp_33_arithop:4 at 12|temp_34_arithop:4 at 8|temp_35_:4 at 4|none:4 at 0
              #                    occupy a2 with -16528_0
    li      a2, -16528
    li      a2, -16528
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_KMP_0 in mem offset_illegal
              #                    occupy a3 with 16520_0
    li      a3, 16520
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_KMP_0 in mem offset_illegal
              #                    occupy a4 with 16512_0
    li      a4, 16512
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 16528_0
    li      a5, 16528
    li      a5, 16528
    add     s0,a5,sp
              #                    free a5
              #                          new_var dst_31:ptr->i32 
              #                          new_var src_31:ptr->i32 
              #                          alloc Array:i32:[Some(4096_0)] next_33 
              #                          alloc i32 i_33 
              #                          alloc i32 j_33 
              #                          alloc ptr->i32 temp_16_array_ptr_37 
              #                          alloc i32 temp_17_array_ele_37 
              #                          alloc i1 temp_18__684 
              #                          alloc ptr->i32 temp_19_array_ptr_40 
              #                          alloc i32 temp_20_array_ele_40 
              #                          alloc ptr->i32 temp_21_array_ptr_40 
              #                          alloc i32 temp_22_array_ele_40 
              #                          alloc i1 temp_23_cmp_40 
              #                          alloc i32 temp_24_arithop_42 
              #                          alloc i32 temp_25_arithop_42 
              #                          alloc ptr->i32 temp_26_array_ptr_45 
              #                          alloc i32 temp_27_array_ele_45 
              #                          alloc i1 temp_28_booltrans_45 
              #                          alloc i1 temp_29_logicnot_45 
              #                          alloc ptr->i32 temp_30_array_ptr_49 
              #                          alloc i32 temp_31_array_ele_49 
              #                          alloc i1 temp_32_cmp_51 
              #                          alloc i32 temp_33_arithop_53 
              #                          alloc i32 temp_34_arithop_53 
              #                          alloc i32 temp_35__33 
              #                    regtab     a0:Freed { symidx: dst_31, tracked: true } |     a1:Freed { symidx: src_31, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var next_33:Array:i32:[Some(4096_0)] 
              #                           Call void get_next_0(dst_31, next_33) 
              #                    saved register dumping to mem
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a0 with 16504_0
    li      a0, 16504
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with dst_31
              #                    store to src_31 in mem offset_illegal
              #                    occupy a0 with 16496_0
    li      a0, 16496
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with src_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_dst_31_0
              #                    load from dst_31 in mem
              #                    occupy a1 with dst_31
    li      a1, 16504
    add     a1,sp,a1
    ld      a0,0(a1)
              #                    free a1
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a1 with 16504_0
    li      a1, 16504
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with dst_31
              #                    occupy a1 with _anonymous_of_next_33_0
              #                    load from next_33 in mem
    lw      a1,112(sp)
              #                    arg load ended


    call    get_next
              #                          i_33 = i32 0_0 
              #                    occupy a0 with i_33
    li      a0, 0
              #                    free a0
              #                          j_33 = i32 0_0 
              #                    occupy a1 with j_33
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } | 
              #                          label while.head_38: 
.while.head_38:
              #                          new_var temp_16_array_ptr_37:ptr->i32 
              #                          temp_16_array_ptr_37 = getelementptr src_31:ptr->i32 [Some(j_33)] 
              #                    occupy a2 with temp_16_array_ptr_37
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with j_33
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with src_31
              #                    load from src_31 in mem
              #                    occupy a5 with src_31
    add     a5,sp,a5
    ld      a5,0(a5)
              #                    free a5
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_17_array_ele_37:i32 
              #                          temp_17_array_ele_37 = load temp_16_array_ptr_37:ptr->i32 
              #                    occupy a2 with temp_16_array_ptr_37
              #                    occupy a6 with temp_17_array_ele_37
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_18__684:i1 
              #                          temp_18__684 = icmp i32 Ne temp_17_array_ele_37, 0_0 
              #                    occupy a6 with temp_17_array_ele_37
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s1 with temp_18__684
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_18__684, label while.body_38, label while.exit_38 
              #                    occupy s1 with temp_18__684
              #                    free s1
              #                    occupy s1 with temp_18__684
    bnez    s1, .while.body_38
              #                    free s1
    j       .while.exit_38
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } | 
              #                          label while.body_38: 
.while.body_38:
              #                          new_var temp_19_array_ptr_40:ptr->i32 
              #                          temp_19_array_ptr_40 = getelementptr src_31:ptr->i32 [Some(j_33)] 
              #                    occupy a3 with temp_19_array_ptr_40
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with j_33
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a1
              #                    free a4
              #                    free a1
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a5 with src_31
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                          new_var temp_20_array_ele_40:i32 
              #                          temp_20_array_ele_40 = load temp_19_array_ptr_40:ptr->i32 
              #                    occupy a3 with temp_19_array_ptr_40
              #                    occupy s2 with temp_20_array_ele_40
    lw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          new_var temp_21_array_ptr_40:ptr->i32 
              #                          temp_21_array_ptr_40 = getelementptr dst_31:ptr->i32 [Some(i_33)] 
              #                    occupy s3 with temp_21_array_ptr_40
    li      s3, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with i_33
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a4,a0
              #                    free a4
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with dst_31
              #                    load from dst_31 in mem
              #                    occupy s5 with dst_31
    add     s5,sp,s5
    ld      s5,0(s5)
              #                    free s5
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_22_array_ele_40:i32 
              #                          temp_22_array_ele_40 = load temp_21_array_ptr_40:ptr->i32 
              #                    occupy s3 with temp_21_array_ptr_40
              #                    occupy s6 with temp_22_array_ele_40
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_23_cmp_40:i1 
              #                          temp_23_cmp_40 = icmp i32 Eq temp_22_array_ele_40, temp_20_array_ele_40 
              #                    occupy s6 with temp_22_array_ele_40
              #                    occupy s2 with temp_20_array_ele_40
              #                    occupy s7 with temp_23_cmp_40
    xor     s7,s6,s2
    seqz    s7, s7
              #                    free s6
              #                    free s2
              #                    free s7
              #                          br i1 temp_23_cmp_40, label branch_true_41, label branch_false_41 
              #                    occupy s7 with temp_23_cmp_40
              #                    free s7
              #                    occupy s7 with temp_23_cmp_40
    bnez    s7, .branch_true_41
              #                    free s7
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label branch_true_41: 
.branch_true_41:
              #                          new_var temp_24_arithop_42:i32 
              #                          temp_24_arithop_42 = Add i32 i_33, 1_0 
              #                    occupy a0 with i_33
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_24_arithop_42
    add     a7,a0,a4
              #                    free a0
              #                    free a4
              #                    free a7
              #                          i_33 = i32 temp_24_arithop_42 
              #                    occupy a7 with temp_24_arithop_42
              #                    occupy a0 with i_33
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          new_var temp_25_arithop_42:i32 
              #                          temp_25_arithop_42 = Add i32 j_33, 1_0 
              #                    occupy a1 with j_33
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s4 with temp_25_arithop_42
    add     s4,a1,a4
              #                    free a1
              #                    free a4
              #                    free s4
              #                          j_33 = i32 temp_25_arithop_42 
              #                    occupy s4 with temp_25_arithop_42
              #                    occupy a1 with j_33
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     a7:Freed { symidx: temp_24_arithop_42, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_25_arithop_42, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_26_array_ptr_45:ptr->i32 
              #                          temp_26_array_ptr_45 = getelementptr dst_31:ptr->i32 [Some(i_33)] 
              #                    occupy a4 with temp_26_array_ptr_45
    li      a4, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a0 with i_33
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s8,a0
              #                    free s8
              #                    free a0
    add     a4,a4,s9
              #                    free s9
    slli a4,a4,2
              #                    occupy s5 with dst_31
    add     a4,a4,s5
              #                    free s5
              #                    free a4
              #                          new_var temp_27_array_ele_45:i32 
              #                          temp_27_array_ele_45 = load temp_26_array_ptr_45:ptr->i32 
              #                    occupy a4 with temp_26_array_ptr_45
              #                    occupy s10 with temp_27_array_ele_45
    lw      s10,0(a4)
              #                    free s10
              #                    free a4
              #                          new_var temp_28_booltrans_45:i1 
              #                          temp_28_booltrans_45 = icmp i1 Ne temp_27_array_ele_45, 0_0 
              #                    occupy s10 with temp_27_array_ele_45
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    occupy s8 with temp_28_booltrans_45
    xor     s8,s10,s11
    snez    s8, s8
              #                    free s10
              #                    free s11
              #                    free s8
              #                          new_var temp_29_logicnot_45:i1 
              #                          temp_29_logicnot_45 = xor i1 temp_28_booltrans_45, true 
              #                    occupy s8 with temp_28_booltrans_45
              #                    occupy s9 with temp_29_logicnot_45
    seqz    s9, s8
              #                    free s8
              #                    free s9
              #                          br i1 temp_29_logicnot_45, label branch_true_46, label branch_false_46 
              #                    occupy s9 with temp_29_logicnot_45
              #                    free s9
              #                    occupy s9 with temp_29_logicnot_45
    bnez    s9, .branch_true_46
              #                    free s9
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_26_array_ptr_45, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     a7:Freed { symidx: temp_24_arithop_42, tracked: true } |     s10:Freed { symidx: temp_27_array_ele_45, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_25_arithop_42, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_28_booltrans_45, tracked: true } |     s9:Freed { symidx: temp_29_logicnot_45, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          ret j_33 
              #                    load from ra_KMP_0 in mem
              #                    occupy s11 with ra_KMP_0
    li      s11, 16520
    add     s11,sp,s11
    ld      ra,0(s11)
              #                    free s11
              #                    load from s0_KMP_0 in mem
              #                    store to i_33 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_33
              #                    occupy a0 with s0_KMP_0
    li      a0, 16512
    add     a0,sp,a0
    ld      s0,0(a0)
              #                    free a0
              #                    store to j_33 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with j_33
              #                    store to s0_KMP_0 in mem offset_illegal
              #                    occupy a0 with 16512_0
    li      a0, 16512
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with s0_KMP_0
              #                    occupy a0 with j_33
              #                    load from j_33 in mem


    lw      a0,104(sp)
              #                    occupy a1 with 16528_0
    li      a1, 16528
    li      a1, 16528
    add     sp,a1,sp
              #                    free a1
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_26_array_ptr_45, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     a7:Freed { symidx: temp_24_arithop_42, tracked: true } |     s10:Freed { symidx: temp_27_array_ele_45, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_25_arithop_42, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_28_booltrans_45, tracked: true } |     s9:Freed { symidx: temp_29_logicnot_45, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } | 
              #                          label branch_false_41: 
.branch_false_41:
              #                          new_var temp_30_array_ptr_49:ptr->i32 
              #                          temp_30_array_ptr_49 = getelementptr next_33:Array:i32:[Some(4096_0)] [Some(i_33)] 
              #                    occupy a4 with temp_30_array_ptr_49
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with i_33
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a7,a0
              #                    free a7
              #                    free a0
    add     a4,a4,s4
              #                    free s4
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,112
              #                    free a4
              #                          new_var temp_31_array_ele_49:i32 
              #                          temp_31_array_ele_49 = load temp_30_array_ptr_49:ptr->i32 
              #                    occupy a4 with temp_30_array_ptr_49
              #                    occupy s8 with temp_31_array_ele_49
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                          i_33 = i32 temp_31_array_ele_49 
              #                    occupy s8 with temp_31_array_ele_49
              #                    occupy a0 with i_33
    mv      a0, s8
              #                    free s8
              #                    free a0
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_30_array_ptr_49, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_31_array_ele_49, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_32_cmp_51:i1 
              #                          temp_32_cmp_51 = icmp i32 Eq i_33, -1_0 
              #                    occupy a0 with i_33
              #                    occupy a7 with -1_0
    li      a7, -1
              #                    occupy s4 with temp_32_cmp_51
    xor     s4,a0,a7
    seqz    s4, s4
              #                    free a0
              #                    free a7
              #                    free s4
              #                          br i1 temp_32_cmp_51, label branch_true_52, label branch_false_52 
              #                    occupy s4 with temp_32_cmp_51
              #                    free s4
              #                    occupy s4 with temp_32_cmp_51
    bnez    s4, .branch_true_52
              #                    free s4
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_30_array_ptr_49, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_32_cmp_51, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_31_array_ele_49, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          new_var temp_33_arithop_53:i32 
              #                          temp_33_arithop_53 = Add i32 i_33, 1_0 
              #                    occupy a0 with i_33
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s9 with temp_33_arithop_53
    add     s9,a0,a7
              #                    free a0
              #                    free a7
              #                    free s9
              #                          i_33 = i32 temp_33_arithop_53 
              #                    occupy s9 with temp_33_arithop_53
              #                    occupy a0 with i_33
    mv      a0, s9
              #                    free s9
              #                    free a0
              #                          new_var temp_34_arithop_53:i32 
              #                          temp_34_arithop_53 = Add i32 j_33, 1_0 
              #                    occupy a1 with j_33
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s10 with temp_34_arithop_53
    add     s10,a1,a7
              #                    free a1
              #                    free a7
              #                    free s10
              #                          j_33 = i32 temp_34_arithop_53 
              #                    occupy s10 with temp_34_arithop_53
              #                    occupy a1 with j_33
    mv      a1, s10
              #                    free s10
              #                    free a1
              #                          jump label: branch_false_52 
              #                    store to temp_34_arithop_53 in mem offset legal
    sw      s10,8(sp)
              #                    release s10 with temp_34_arithop_53
              #                    store to temp_33_arithop_53 in mem offset legal
    sw      s9,12(sp)
              #                    release s9 with temp_33_arithop_53
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_30_array_ptr_49, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_32_cmp_51, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_31_array_ele_49, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Freed { symidx: temp_19_array_ptr_40, tracked: true } |     a4:Freed { symidx: temp_30_array_ptr_49, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: temp_20_array_ele_40, tracked: true } |     s3:Freed { symidx: temp_21_array_ptr_40, tracked: true } |     s4:Freed { symidx: temp_32_cmp_51, tracked: true } |     s5:Freed { symidx: dst_31, tracked: true } |     s6:Freed { symidx: temp_22_array_ele_40, tracked: true } |     s7:Freed { symidx: temp_23_cmp_40, tracked: true } |     s8:Freed { symidx: temp_31_array_ele_49, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          jump label: while.head_38 
              #                    store to temp_30_array_ptr_49 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_30_array_ptr_49
              #                    store to temp_32_cmp_51 in mem offset legal
    sb      s4,19(sp)
              #                    release s4 with temp_32_cmp_51
              #                    store to temp_16_array_ptr_37 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_16_array_ptr_37
              #                    store to temp_23_cmp_40 in mem offset legal
    sb      s7,59(sp)
              #                    release s7 with temp_23_cmp_40
              #                    store to temp_19_array_ptr_40 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_19_array_ptr_40
              #                    store to temp_22_array_ele_40 in mem offset legal
    sw      s6,60(sp)
              #                    release s6 with temp_22_array_ele_40
              #                    store to temp_31_array_ele_49 in mem offset legal
    sw      s8,20(sp)
              #                    release s8 with temp_31_array_ele_49
              #                    store to temp_18__684 in mem offset legal
    sb      s1,91(sp)
              #                    release s1 with temp_18__684
              #                    store to dst_31 in mem offset_illegal
              #                    occupy a2 with 16504_0
    li      a2, 16504
    add     a2,sp,a2
    sd      s5,0(a2)
              #                    free a2
              #                    release s5 with dst_31
              #                    store to temp_20_array_ele_40 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_20_array_ele_40
              #                    store to temp_21_array_ptr_40 in mem offset legal
    sd      s3,64(sp)
              #                    release s3 with temp_21_array_ptr_40
              #                    store to src_31 in mem offset_illegal
              #                    occupy a3 with 16496_0
    li      a3, 16496
    add     a3,sp,a3
    sd      a5,0(a3)
              #                    free a3
              #                    release a5 with src_31
              #                    store to temp_17_array_ele_37 in mem offset legal
    sw      a6,92(sp)
              #                    release a6 with temp_17_array_ele_37
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } | 
              #                          label while.exit_38: 
.while.exit_38:
              #                          new_var temp_35__33:i32 
              #                          temp_35__33 = Sub i32 0_0, 1_0 
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_35__33
              #                    regtab:    a0:Freed { symidx: i_33, tracked: true } |     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a3:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     a7:Occupied { symidx: temp_35__33, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_18__684, tracked: true } | 


    sub     a7,a3,a4
              #                    free a3
              #                    free a4
              #                    free a7
              #                          ret temp_35__33 
              #                    load from ra_KMP_0 in mem
              #                    occupy s2 with ra_KMP_0
    li      s2, 16520
    add     s2,sp,s2
    ld      ra,0(s2)
              #                    free s2
              #                    load from s0_KMP_0 in mem
              #                    occupy s3 with s0_KMP_0
    li      s3, 16512
    add     s3,sp,s3
    ld      s0,0(s3)
              #                    free s3
              #                    store to temp_35__33 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_35__33
              #                    store to i_33 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with i_33
              #                    occupy a0 with temp_35__33
              #                    load from temp_35__33 in mem


    lw      a0,4(sp)
              #                    occupy a7 with 16528_0
    li      a7, 16528
    li      a7, 16528
    add     sp,a7,sp
              #                    free a7
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: j_33, tracked: true } |     a2:Freed { symidx: temp_16_array_ptr_37, tracked: true } |     a5:Freed { symidx: src_31, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_37, tracked: true } |     s1:Freed { symidx: temp_18__684, tracked: true } |     s2:Freed { symidx: ra_KMP_0, tracked: true } |     s3:Freed { symidx: s0_KMP_0, tracked: true } | 
              #                    regtab 
              #                          Define read_str_0 [buf_57] -> read_str_ret_0 
    .globl read_str
    .type read_str,@function
read_str:
              #                    mem layout:|ra_read_str:8 at 72|s0_read_str:8 at 64|buf:8 at 56|i:4 at 52|temp_36_:1 at 51|none:3 at 48|temp_37_index_ptr:8 at 40|temp_38_ret_of_getch:4 at 36|none:4 at 32|temp_39_array_ptr:8 at 24|temp_40_array_ele:4 at 20|temp_41_cmp:1 at 19|none:3 at 16|temp_42_arithop:4 at 12|none:4 at 8|temp_43_index_ptr:8 at 0
    addi    sp,sp,-80
              #                    store to ra_read_str_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_read_str_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          new_var buf_57:ptr->i32 
              #                          alloc i32 i_59 
              #                          alloc i1 temp_36__1228 
              #                          alloc ptr->i32 temp_37_index_ptr_63 
              #                          alloc i32 temp_38_ret_of_getch_63 
              #                          alloc ptr->i32 temp_39_array_ptr_65 
              #                          alloc i32 temp_40_array_ele_65 
              #                          alloc i1 temp_41_cmp_65 
              #                          alloc i32 temp_42_arithop_63 
              #                          alloc ptr->i32 temp_43_index_ptr_59 
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          i_59 = i32 0_0 
              #                    occupy a1 with i_59
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |     a1:Freed { symidx: i_59, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_36__1228:i1 
              #                          temp_36__1228 = icmp i32 Ne 1_0, 0_0 
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_36__1228
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_36__1228, label while.body_62, label while.exit_62 
              #                    occupy a4 with temp_36__1228
              #                    free a4
              #                    occupy a4 with temp_36__1228
    bnez    a4, .while.body_62
              #                    free a4
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |     a1:Freed { symidx: i_59, tracked: true } |     a4:Freed { symidx: temp_36__1228, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_37_index_ptr_63:ptr->i32 
              #                          temp_37_index_ptr_63 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
              #                    occupy a2 with temp_37_index_ptr_63
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with i_59
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a0 with buf_57
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_38_ret_of_getch_63:i32 
              #                          temp_38_ret_of_getch_63 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to buf_57 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with buf_57
              #                    store to i_59 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with i_59
              #                    store to temp_37_index_ptr_63 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_37_index_ptr_63
              #                    store to temp_36__1228 in mem offset legal
    sb      a4,51(sp)
              #                    release a4 with temp_36__1228
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_38_ret_of_getch_63 in mem offset legal
    sw      a0,36(sp)
              #                          store temp_38_ret_of_getch_63:i32 temp_37_index_ptr_63:ptr->i32 
              #                    occupy a1 with temp_37_index_ptr_63
              #                    load from temp_37_index_ptr_63 in mem
    ld      a1,40(sp)
              #                    occupy a0 with temp_38_ret_of_getch_63
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu buf_57:199 
              #                          buf_57 = chi buf_57:199 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_getch_63, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_63, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_39_array_ptr_65:ptr->i32 
              #                          temp_39_array_ptr_65 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
              #                    occupy a2 with temp_39_array_ptr_65
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_59
              #                    load from i_59 in mem


    lw      a4,52(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with buf_57
              #                    load from buf_57 in mem
    ld      a6,56(sp)
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_40_array_ele_65:i32 
              #                          temp_40_array_ele_65 = load temp_39_array_ptr_65:ptr->i32 
              #                    occupy a2 with temp_39_array_ptr_65
              #                    occupy a7 with temp_40_array_ele_65
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_41_cmp_65:i1 
              #                          temp_41_cmp_65 = icmp i32 Eq temp_40_array_ele_65, 10_0 
              #                    occupy a7 with temp_40_array_ele_65
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s2 with temp_41_cmp_65
    xor     s2,a7,s1
    seqz    s2, s2
              #                    free a7
              #                    free s1
              #                    free s2
              #                          br i1 temp_41_cmp_65, label branch_true_66, label branch_false_66 
              #                    occupy s2 with temp_41_cmp_65
              #                    free s2
              #                    occupy s2 with temp_41_cmp_65
    bnez    s2, .branch_true_66
              #                    free s2
    j       .branch_false_66
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_getch_63, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_63, tracked: true } |     a2:Freed { symidx: temp_39_array_ptr_65, tracked: true } |     a4:Freed { symidx: i_59, tracked: true } |     a6:Freed { symidx: buf_57, tracked: true } |     a7:Freed { symidx: temp_40_array_ele_65, tracked: true } |     s2:Freed { symidx: temp_41_cmp_65, tracked: true } | 
              #                          label branch_true_66: 
.branch_true_66:
              #                          jump label: while.exit_62 
              #                    store to temp_41_cmp_65 in mem offset legal
    sb      s2,19(sp)
              #                    release s2 with temp_41_cmp_65
              #                    store to temp_37_index_ptr_63 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_37_index_ptr_63
              #                    store to buf_57 in mem offset legal
    sd      a6,56(sp)
              #                    release a6 with buf_57
              #                    store to temp_39_array_ptr_65 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_39_array_ptr_65
              #                    store to temp_40_array_ele_65 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_40_array_ele_65
              #                    store to i_59 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with i_59
              #                    store to temp_38_ret_of_getch_63 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_38_ret_of_getch_63
              #                    occupy a1 with _anonymous_of_i_59_0
              #                    load from i_59 in mem


    lw      a1,52(sp)
              #                    occupy a4 with _anonymous_of_temp_36__1228_0
              #                    load from temp_36__1228 in mem
    lb      a4,51(sp)
              #                    occupy a0 with _anonymous_of_buf_57_0
              #                    load from buf_57 in mem
    ld      a0,56(sp)
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: buf_57, tracked: true } |     a1:Freed { symidx: i_59, tracked: true } |     a4:Freed { symidx: temp_36__1228, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          new_var temp_43_index_ptr_59:ptr->i32 
              #                          temp_43_index_ptr_59 = getelementptr buf_57:ptr->i32 [Some(i_59)] 
              #                    occupy a2 with temp_43_index_ptr_59
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with i_59
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a0 with buf_57
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store 0_0:i32 temp_43_index_ptr_59:ptr->i32 
              #                    occupy a2 with temp_43_index_ptr_59
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu buf_57:222 
              #                          buf_57 = chi buf_57:222 
              #                          ret i_59 
              #                    load from ra_read_str_0 in mem
    ld      ra,72(sp)
              #                    load from s0_read_str_0 in mem
    ld      s0,64(sp)
              #                    store to i_59 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with i_59
              #                    store to buf_57 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with buf_57
              #                    occupy a0 with i_59
              #                    load from i_59 in mem


    lw      a0,52(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_43_index_ptr_59, tracked: true } |     a4:Freed { symidx: temp_36__1228, tracked: true } | 
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_getch_63, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_63, tracked: true } |     a2:Freed { symidx: temp_39_array_ptr_65, tracked: true } |     a4:Freed { symidx: i_59, tracked: true } |     a6:Freed { symidx: buf_57, tracked: true } |     a7:Freed { symidx: temp_40_array_ele_65, tracked: true } |     s2:Freed { symidx: temp_41_cmp_65, tracked: true } | 
              #                          label branch_false_66: 
.branch_false_66:
              #                    regtab     a0:Freed { symidx: temp_38_ret_of_getch_63, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_63, tracked: true } |     a2:Freed { symidx: temp_39_array_ptr_65, tracked: true } |     a4:Freed { symidx: i_59, tracked: true } |     a6:Freed { symidx: buf_57, tracked: true } |     a7:Freed { symidx: temp_40_array_ele_65, tracked: true } |     s2:Freed { symidx: temp_41_cmp_65, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_42_arithop_63:i32 
              #                          temp_42_arithop_63 = Add i32 i_59, 1_0 
              #                    occupy a4 with i_59
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_42_arithop_63
    add     a5,a4,a3
              #                    free a4
              #                    free a3
              #                    free a5
              #                          i_59 = i32 temp_42_arithop_63 
              #                    occupy a5 with temp_42_arithop_63
              #                    occupy a4 with i_59
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                          jump label: while.head_62 
              #                    store to temp_41_cmp_65 in mem offset legal
    sb      s2,19(sp)
              #                    release s2 with temp_41_cmp_65
              #                    store to temp_37_index_ptr_63 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_37_index_ptr_63
              #                    store to temp_42_arithop_63 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_42_arithop_63
              #                    store to buf_57 in mem offset legal
    sd      a6,56(sp)
              #                    release a6 with buf_57
              #                    store to temp_39_array_ptr_65 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_39_array_ptr_65
              #                    store to temp_40_array_ele_65 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_40_array_ele_65
              #                    store to i_59 in mem offset legal
    sw      a4,52(sp)
              #                    release a4 with i_59
              #                    store to temp_38_ret_of_getch_63 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_38_ret_of_getch_63
              #                    occupy a1 with _anonymous_of_i_59_0
              #                    load from i_59 in mem


    lw      a1,52(sp)
              #                    occupy a0 with _anonymous_of_buf_57_0
              #                    load from buf_57 in mem
    ld      a0,56(sp)
    j       .while.head_62
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32792|s0_main:8 at 32784|dst:16384 at 16400|src:16384 at 16|temp_44_ret_of_read_str:4 at 12|temp_45_ret_of_read_str:4 at 8|temp_46_ret_of_KMP:4 at 4|none:4 at 0
              #                    occupy a0 with -32800_0
    li      a0, -32800
    li      a0, -32800
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 32792_0
    li      a1, 32792
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 32784_0
    li      a2, 32784
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 32800_0
    li      a3, 32800
    li      a3, 32800
    add     s0,a3,sp
              #                    free a3
              #                          alloc Array:i32:[Some(4096_0)] dst_72 
              #                          alloc Array:i32:[Some(4096_0)] src_72 
              #                          alloc i32 temp_44_ret_of_read_str_72 
              #                          alloc i32 temp_45_ret_of_read_str_72 
              #                          alloc i32 temp_46_ret_of_KMP_72 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var dst_72:Array:i32:[Some(4096_0)] 
              #                          new_var src_72:Array:i32:[Some(4096_0)] 
              #                          new_var temp_44_ret_of_read_str_72:i32 
              #                          temp_44_ret_of_read_str_72 =  Call i32 read_str_0(dst_72) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_dst_72_0
              #                    load from dst_72 in mem
              #                    occupy a1 with dst_72
    li      a1, 16400
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    arg load ended


    call    read_str
              #                    store to temp_44_ret_of_read_str_72 in mem offset legal
    sw      a0,12(sp)
              #                          new_var temp_45_ret_of_read_str_72:i32 
              #                          temp_45_ret_of_read_str_72 =  Call i32 read_str_0(src_72) 
              #                    saved register dumping to mem
              #                    store to temp_44_ret_of_read_str_72 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_44_ret_of_read_str_72
              #                    store to dst_72 in mem offset_illegal
              #                    occupy a0 with 16400_0
    li      a0, 16400
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with dst_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_src_72_0
              #                    load from src_72 in mem
    lw      a0,16(sp)
              #                    arg load ended


    call    read_str
              #                    store to temp_45_ret_of_read_str_72 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_46_ret_of_KMP_72:i32 
              #                          temp_46_ret_of_KMP_72 =  Call i32 KMP_0(dst_72, src_72) 
              #                    saved register dumping to mem
              #                    store to temp_45_ret_of_read_str_72 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_45_ret_of_read_str_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_dst_72_0
              #                    load from dst_72 in mem
              #                    occupy a1 with dst_72
    li      a1, 16400
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    store to dst_72 in mem offset_illegal
              #                    occupy a1 with 16400_0
    li      a1, 16400
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with dst_72
              #                    occupy a1 with _anonymous_of_src_72_0
              #                    load from src_72 in mem
    lw      a1,16(sp)
              #                    arg load ended


    call    KMP
              #                    store to temp_46_ret_of_KMP_72 in mem offset legal
    sw      a0,4(sp)
              #                           Call void putint_0(temp_46_ret_of_KMP_72) 
              #                    saved register dumping to mem
              #                    store to temp_46_ret_of_KMP_72 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_46_ret_of_KMP_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ret_of_KMP_72_0
              #                    load from temp_46_ret_of_KMP_72 in mem


    lw      a0,4(sp)
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
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with ra_main_0
    li      a0, 32792
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with s0_main_0
    li      a1, 32784
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a0 with 32792_0
    li      a0, 32792
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with ra_main_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 32800_0
    li      a2, 32800
    li      a2, 32800
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s0_main_0, tracked: true } | 
