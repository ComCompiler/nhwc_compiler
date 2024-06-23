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
              #                          Define init_0 [n_18] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 48|s0_init:8 at 40|n:4 at 36|i:4 at 32|temp_0_arithop:4 at 28|temp_1_arithop:4 at 24|temp_2_cmp:1 at 23|none:7 at 16|temp_3_index_ptr:8 at 8|temp_4_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_init_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 i_20 
              #                          alloc i32 temp_0_arithop_22 
              #                          alloc i32 temp_1_arithop_22 
              #                          alloc i1 temp_2_cmp_22 
              #                          alloc ptr->i32 temp_3_index_ptr_24 
              #                          alloc i32 temp_4_arithop_24 
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          i_20 = i32 1_0 
              #                    occupy a1 with i_20
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_arithop_22:i32 
              #                          temp_0_arithop_22 = Mul i32 n_18, n_18 
              #                    occupy a0 with n_18
              #                    occupy a0 with n_18
              #                    occupy a2 with temp_0_arithop_22
    mul     a2,a0,a0
              #                    free a0
              #                    free a0
              #                    free a2
              #                          new_var temp_1_arithop_22:i32 
              #                          temp_1_arithop_22 = Add i32 temp_0_arithop_22, 1_0 
              #                    occupy a2 with temp_0_arithop_22
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_1_arithop_22
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_2_cmp_22:i1 
              #                          temp_2_cmp_22 = icmp i32 Sle i_20, temp_1_arithop_22 
              #                    occupy a1 with i_20
              #                    occupy a4 with temp_1_arithop_22
              #                    occupy a5 with temp_2_cmp_22
    slt     a5,a4,a1
    xori    a5,a5,1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          br i1 temp_2_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a5 with temp_2_cmp_22
              #                    free a5
              #                    occupy a5 with temp_2_cmp_22
    bnez    a5, .while.body_23
              #                    free a5
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_22, tracked: true } |     a5:Freed { symidx: temp_2_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_3_index_ptr_24:ptr->i32 
              #                          temp_3_index_ptr_24 = getelementptr *array_0:ptr->i32 [Some(i_20)] 
              #                    occupy a3 with temp_3_index_ptr_24
    li      a3, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a1 with i_20
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                          store -1_0:i32 temp_3_index_ptr_24:ptr->i32 
              #                    occupy a3 with temp_3_index_ptr_24
              #                    occupy s2 with -1_0
    li      s2, -1
    sw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          mu *array_0:41 
              #                          *array_0 = chi *array_0:41 
              #                          new_var temp_4_arithop_24:i32 
              #                          temp_4_arithop_24 = Add i32 i_20, 1_0 
              #                    occupy a1 with i_20
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s3 with temp_4_arithop_24
    add     s3,a1,a6
              #                    free a1
              #                    free a6
              #                    free s3
              #                          i_20 = i32 temp_4_arithop_24 
              #                    occupy s3 with temp_4_arithop_24
              #                    occupy a1 with i_20
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_23 
              #                    store to temp_2_cmp_22 in mem offset legal
    sb      a5,23(sp)
              #                    release a5 with temp_2_cmp_22
              #                    store to temp_0_arithop_22 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_0_arithop_22
              #                    store to temp_1_arithop_22 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with temp_1_arithop_22
              #                    store to temp_3_index_ptr_24 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_3_index_ptr_24
              #                    store to temp_4_arithop_24 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_4_arithop_24
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: n_18, tracked: true } |     a1:Freed { symidx: i_20, tracked: true } |     a2:Freed { symidx: temp_0_arithop_22, tracked: true } |     a4:Freed { symidx: temp_1_arithop_22, tracked: true } |     a5:Freed { symidx: temp_2_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                    regtab 
              #                          Define findfa_0 [a_27] -> findfa_ret_0 
    .globl findfa
    .type findfa,@function
findfa:
              #                    mem layout:|ra_findfa:8 at 72|s0_findfa:8 at 64|a:4 at 60|none:4 at 56|temp_5_array_ptr:8 at 48|temp_6_array_ele:4 at 44|temp_7_cmp:1 at 43|none:3 at 40|temp_8_index_ptr:8 at 32|temp_9_array_ptr:8 at 24|temp_10_array_ele:4 at 20|temp_11_ret_of_findfa:4 at 16|temp_12_array_ptr:8 at 8|temp_13_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-80
              #                    store to ra_findfa_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_findfa_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc ptr->i32 temp_5_array_ptr_30 
              #                          alloc i32 temp_6_array_ele_30 
              #                          alloc i1 temp_7_cmp_30 
              #                          alloc ptr->i32 temp_8_index_ptr_33 
              #                          alloc ptr->i32 temp_9_array_ptr_33 
              #                          alloc i32 temp_10_array_ele_33 
              #                          alloc i32 temp_11_ret_of_findfa_33 
              #                          alloc ptr->i32 temp_12_array_ptr_33 
              #                          alloc i32 temp_13_array_ele_33 
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_5_array_ptr_30:ptr->i32 
              #                          temp_5_array_ptr_30 = getelementptr *array_0:ptr->i32 [Some(a_27)] 
              #                    occupy a1 with temp_5_array_ptr_30
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a0 with a_27
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *array_0
              #                       load label array as ptr to reg
    la      a4, array
              #                    occupy reg a4 with *array_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          new_var temp_6_array_ele_30:i32 
              #                          temp_6_array_ele_30 = load temp_5_array_ptr_30:ptr->i32 
              #                    occupy a1 with temp_5_array_ptr_30
              #                    occupy a5 with temp_6_array_ele_30
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_7_cmp_30:i1 
              #                          temp_7_cmp_30 = icmp i32 Eq temp_6_array_ele_30, a_27 
              #                    occupy a5 with temp_6_array_ele_30
              #                    occupy a0 with a_27
              #                    occupy a6 with temp_7_cmp_30
    xor     a6,a5,a0
    seqz    a6, a6
              #                    free a5
              #                    free a0
              #                    free a6
              #                          br i1 temp_7_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy a6 with temp_7_cmp_30
              #                    free a6
              #                    occupy a6 with temp_7_cmp_30
    bnez    a6, .branch_true_31
              #                    free a6
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } |     a1:Freed { symidx: temp_5_array_ptr_30, tracked: true } |     a5:Freed { symidx: temp_6_array_ele_30, tracked: true } |     a6:Freed { symidx: temp_7_cmp_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          ret a_27 
              #                    load from ra_findfa_0 in mem
    ld      ra,72(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,64(sp)
              #                    store to a_27 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with a_27
              #                    occupy a0 with a_27
              #                    load from a_27 in mem


    lw      a0,60(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_27, tracked: true } |     a1:Freed { symidx: temp_5_array_ptr_30, tracked: true } |     a5:Freed { symidx: temp_6_array_ele_30, tracked: true } |     a6:Freed { symidx: temp_7_cmp_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_8_index_ptr_33:ptr->i32 
              #                          temp_8_index_ptr_33 = getelementptr *array_0:ptr->i32 [Some(a_27)] 
              #                    occupy a2 with temp_8_index_ptr_33
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with a_27
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a7 with *array_0
              #                       load label array as ptr to reg
    la      a7, array
              #                    occupy reg a7 with *array_0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                          new_var temp_9_array_ptr_33:ptr->i32 
              #                          temp_9_array_ptr_33 = getelementptr *array_0:ptr->i32 [Some(a_27)] 
              #                    occupy s1 with temp_9_array_ptr_33
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a0 with a_27
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,a0
              #                    free a3
              #                    free a0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *array_0
              #                       load label array as ptr to reg
    la      s3, array
              #                    occupy reg s3 with *array_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_10_array_ele_33:i32 
              #                          temp_10_array_ele_33 = load temp_9_array_ptr_33:ptr->i32 
              #                    occupy s1 with temp_9_array_ptr_33
              #                    occupy s4 with temp_10_array_ele_33
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_11_ret_of_findfa_33:i32 
              #                          temp_11_ret_of_findfa_33 =  Call i32 findfa_0(temp_10_array_ele_33) 
              #                    saved register dumping to mem
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_9_array_ptr_33
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_10_array_ele_33
              #                    store to a_27 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with a_27
              #                    store to temp_5_array_ptr_30 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_5_array_ptr_30
              #                    store to temp_8_index_ptr_33 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_8_index_ptr_33
              #                    store to temp_6_array_ele_30 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_6_array_ele_30
              #                    store to temp_7_cmp_30 in mem offset legal
    sb      a6,43(sp)
              #                    release a6 with temp_7_cmp_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_10_array_ele_33_0
              #                    load from temp_10_array_ele_33 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_11_ret_of_findfa_33 in mem offset legal
    sw      a0,16(sp)
              #                          store temp_11_ret_of_findfa_33:i32 temp_8_index_ptr_33:ptr->i32 
              #                    occupy a1 with temp_8_index_ptr_33
              #                    load from temp_8_index_ptr_33 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_11_ret_of_findfa_33
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *array_0:74 
              #                          *array_0 = chi *array_0:74 
              #                          new_var temp_12_array_ptr_33:ptr->i32 
              #                          temp_12_array_ptr_33 = getelementptr *array_0:ptr->i32 [Some(a_27)] 
              #                    occupy a2 with temp_12_array_ptr_33
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with a_27
              #                    load from a_27 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *array_0
              #                       load label array as ptr to reg
    la      a6, array
              #                    occupy reg a6 with *array_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_13_array_ele_33:i32 
              #                          temp_13_array_ele_33 = load temp_12_array_ptr_33:ptr->i32 
              #                    occupy a2 with temp_12_array_ptr_33
              #                    occupy a7 with temp_13_array_ele_33
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          ret temp_13_array_ele_33 
              #                    load from ra_findfa_0 in mem
    ld      ra,72(sp)
              #                    load from s0_findfa_0 in mem
    ld      s0,64(sp)
              #                    store to temp_13_array_ele_33 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_13_array_ele_33
              #                    store to temp_11_ret_of_findfa_33 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_11_ret_of_findfa_33
              #                    occupy a0 with temp_13_array_ele_33
              #                    load from temp_13_array_ele_33 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_8_index_ptr_33, tracked: true } |     a2:Freed { symidx: temp_12_array_ptr_33, tracked: true } |     a4:Freed { symidx: a_27, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: temp_8_index_ptr_33, tracked: true } |     a2:Freed { symidx: temp_12_array_ptr_33, tracked: true } |     a4:Freed { symidx: a_27, tracked: true } | 
              #                    regtab 
              #                          Define mmerge_0 [a_36, b_36] -> mmerge_ret_0 
    .globl mmerge
    .type mmerge,@function
mmerge:
              #                    mem layout:|ra_mmerge:8 at 48|s0_mmerge:8 at 40|a:4 at 36|b:4 at 32|temp_14_ret_of_findfa:4 at 28|m:4 at 24|temp_15_ret_of_findfa:4 at 20|n:4 at 16|temp_16_cmp:1 at 15|none:7 at 8|temp_17_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_mmerge_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_mmerge_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 temp_14_ret_of_findfa_38 
              #                          alloc i32 m_38 
              #                          alloc i32 temp_15_ret_of_findfa_38 
              #                          alloc i32 n_38 
              #                          alloc i1 temp_16_cmp_41 
              #                          alloc ptr->i32 temp_17_index_ptr_41 
              #                    regtab     a0:Freed { symidx: a_36, tracked: true } |     a1:Freed { symidx: b_36, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_14_ret_of_findfa_38:i32 
              #                          temp_14_ret_of_findfa_38 =  Call i32 findfa_0(a_36) 
              #                    saved register dumping to mem
              #                    store to a_36 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_36
              #                    store to b_36 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with b_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_36_0
              #                    load from a_36 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_14_ret_of_findfa_38 in mem offset legal
    sw      a0,28(sp)
              #                          m_38 = i32 temp_14_ret_of_findfa_38 
              #                    occupy a0 with temp_14_ret_of_findfa_38
              #                    occupy a1 with m_38
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_15_ret_of_findfa_38:i32 
              #                          temp_15_ret_of_findfa_38 =  Call i32 findfa_0(b_36) 
              #                    saved register dumping to mem
              #                    store to temp_14_ret_of_findfa_38 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_14_ret_of_findfa_38
              #                    store to m_38 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with m_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_b_36_0
              #                    load from b_36 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_15_ret_of_findfa_38 in mem offset legal
    sw      a0,20(sp)
              #                          n_38 = i32 temp_15_ret_of_findfa_38 
              #                    occupy a0 with temp_15_ret_of_findfa_38
              #                    occupy a1 with n_38
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_16_cmp_41:i1 
              #                          temp_16_cmp_41 = icmp i32 Ne m_38, n_38 
              #                    occupy a2 with m_38
              #                    load from m_38 in mem


    lw      a2,24(sp)
              #                    occupy a1 with n_38
              #                    occupy a3 with temp_16_cmp_41
    xor     a3,a2,a1
    snez    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_16_cmp_41, label branch_true_42, label branch_false_42 
              #                    occupy a3 with temp_16_cmp_41
              #                    free a3
              #                    occupy a3 with temp_16_cmp_41
    bnez    a3, .branch_true_42
              #                    free a3
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_16_cmp_41, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          new_var temp_17_index_ptr_41:ptr->i32 
              #                          temp_17_index_ptr_41 = getelementptr *array_0:ptr->i32 [Some(m_38)] 
              #                    occupy a4 with temp_17_index_ptr_41
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with m_38
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *array_0
              #                       load label array as ptr to reg
    la      a7, array
              #                    occupy reg a7 with *array_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store n_38:i32 temp_17_index_ptr_41:ptr->i32 
              #                    occupy a4 with temp_17_index_ptr_41
              #                    occupy a1 with n_38
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu *array_0:104 
              #                          *array_0 = chi *array_0:104 
              #                          jump label: branch_false_42 
              #                    store to temp_17_index_ptr_41 in mem offset legal
    sd      a4,0(sp)
              #                    release a4 with temp_17_index_ptr_41
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_16_cmp_41, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findfa_38, tracked: true } |     a1:Freed { symidx: n_38, tracked: true } |     a2:Freed { symidx: m_38, tracked: true } |     a3:Freed { symidx: temp_16_cmp_41, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 344|s0_main:8 at 336|t:4 at 332|m:4 at 328|a:4 at 324|b:4 at 320|temp_18_:1 at 319|none:3 at 316|temp_19_arithop:4 at 312|i:4 at 308|flag:4 at 304|temp_20_ptr2globl:4 at 300|temp_21_ptr2globl:4 at 296|temp_22_ptr2globl:4 at 292|temp_23_arithop:4 at 288|temp_24_arithop:4 at 284|k:4 at 280|temp_25_cmp:1 at 279|none:3 at 276|temp_26_ret_of_getint:4 at 272|temp_27_ret_of_getint:4 at 268|temp_28_booltrans:1 at 267|temp_29_logicnot:1 at 266|none:2 at 264|temp_30_arithop:4 at 260|temp_31_ptr2globl:4 at 256|temp_32_arithop:4 at 252|temp_33_arithop:4 at 248|loc:4 at 244|none:4 at 240|temp_34_index_ptr:8 at 232|temp_35_cmp:1 at 231|none:7 at 224|temp_36_index_ptr:8 at 216|temp_37_ptr2globl:4 at 212|temp_38_cmp:1 at 211|none:3 at 208|temp_39_index_ptr:8 at 200|temp_40_arithop:4 at 196|none:4 at 192|temp_41_array_ptr:8 at 184|temp_42_array_ele:4 at 180|temp_43_cmp:1 at 179|none:3 at 176|temp_44_ptr2globl:4 at 172|temp_45_cmp:1 at 171|temp_46_logic:1 at 170|none:2 at 168|temp_47_arithop:4 at 164|temp_48_arithop:4 at 160|temp_49_array_ptr:8 at 152|temp_50_array_ele:4 at 148|temp_51_cmp:1 at 147|temp_52_cmp:1 at 146|temp_53_logic:1 at 145|none:1 at 144|temp_54_arithop:4 at 140|temp_55_ptr2globl:4 at 136|temp_56_arithop:4 at 132|none:4 at 128|temp_57_array_ptr:8 at 120|temp_58_array_ele:4 at 116|temp_59_cmp:1 at 115|none:3 at 112|temp_60_ptr2globl:4 at 108|temp_61_cmp:1 at 107|temp_62_logic:1 at 106|none:2 at 104|temp_63_ptr2globl:4 at 100|temp_64_arithop:4 at 96|temp_65_ptr2globl:4 at 92|temp_66_arithop:4 at 88|temp_67_array_ptr:8 at 80|temp_68_array_ele:4 at 76|temp_69_cmp:1 at 75|temp_70_cmp:1 at 74|temp_71_logic:1 at 73|none:1 at 72|temp_72_ptr2globl:4 at 68|temp_73_arithop:4 at 64|temp_74_ret_of_findfa:4 at 60|temp_75_ret_of_findfa:4 at 56|temp_76_cmp:1 at 55|none:7 at 48|temp_77_array_ptr:8 at 40|temp_78_array_ele:4 at 36|temp_79_cmp:1 at 35|temp_80_logic:1 at 34|none:2 at 32|temp_81_array_ptr:8 at 24|temp_82_array_ele:4 at 20|temp_83_cmp:1 at 19|temp_84_logic:1 at 18|none:2 at 16|temp_85_arithop:4 at 12|tmp:4 at 8|temp_86_arithop:4 at 4|temp_87_booltrans:1 at 3|temp_88_logicnot:1 at 2|none:2 at 0
    addi    sp,sp,-352
              #                    store to ra_main_0 in mem offset legal
    sd      ra,344(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,336(sp)
    addi    s0,sp,352
              #                          alloc i32 t_45 
              #                          alloc i32 m_45 
              #                          alloc i32 a_45 
              #                          alloc i32 b_45 
              #                          alloc i1 temp_18__800 
              #                          alloc i32 temp_19_arithop_51 
              #                          alloc i32 i_51 
              #                          alloc i32 flag_51 
              #                          alloc i32 temp_20_ptr2globl_51 
              #                          alloc i32 temp_21_ptr2globl_51 
              #                          alloc i32 temp_22_ptr2globl_51 
              #                          alloc i32 temp_23_arithop_51 
              #                          alloc i32 temp_24_arithop_51 
              #                          alloc i32 k_51 
              #                          alloc i1 temp_25_cmp_59 
              #                          alloc i32 temp_26_ret_of_getint_61 
              #                          alloc i32 temp_27_ret_of_getint_61 
              #                          alloc i1 temp_28_booltrans_64 
              #                          alloc i1 temp_29_logicnot_64 
              #                          alloc i32 temp_30_arithop_66 
              #                          alloc i32 temp_31_ptr2globl_66 
              #                          alloc i32 temp_32_arithop_66 
              #                          alloc i32 temp_33_arithop_66 
              #                          alloc i32 loc_66 
              #                          alloc ptr->i32 temp_34_index_ptr_66 
              #                          alloc i1 temp_35_cmp_69 
              #                          alloc ptr->i32 temp_36_index_ptr_71 
              #                          alloc i32 temp_37_ptr2globl_74 
              #                          alloc i1 temp_38_cmp_74 
              #                          alloc ptr->i32 temp_39_index_ptr_76 
              #                          alloc i32 temp_40_arithop_79 
              #                          alloc ptr->i32 temp_41_array_ptr_79 
              #                          alloc i32 temp_42_array_ele_79 
              #                          alloc i1 temp_43_cmp_79 
              #                          alloc i32 temp_44_ptr2globl_79 
              #                          alloc i1 temp_45_cmp_79 
              #                          alloc i1 temp_46_logic_79 
              #                          alloc i32 temp_47_arithop_81 
              #                          alloc i32 temp_48_arithop_83 
              #                          alloc ptr->i32 temp_49_array_ptr_83 
              #                          alloc i32 temp_50_array_ele_83 
              #                          alloc i1 temp_51_cmp_83 
              #                          alloc i1 temp_52_cmp_83 
              #                          alloc i1 temp_53_logic_83 
              #                          alloc i32 temp_54_arithop_85 
              #                          alloc i32 temp_55_ptr2globl_87 
              #                          alloc i32 temp_56_arithop_87 
              #                          alloc ptr->i32 temp_57_array_ptr_87 
              #                          alloc i32 temp_58_array_ele_87 
              #                          alloc i1 temp_59_cmp_87 
              #                          alloc i32 temp_60_ptr2globl_87 
              #                          alloc i1 temp_61_cmp_87 
              #                          alloc i1 temp_62_logic_87 
              #                          alloc i32 temp_63_ptr2globl_89 
              #                          alloc i32 temp_64_arithop_89 
              #                          alloc i32 temp_65_ptr2globl_91 
              #                          alloc i32 temp_66_arithop_91 
              #                          alloc ptr->i32 temp_67_array_ptr_91 
              #                          alloc i32 temp_68_array_ele_91 
              #                          alloc i1 temp_69_cmp_91 
              #                          alloc i1 temp_70_cmp_91 
              #                          alloc i1 temp_71_logic_91 
              #                          alloc i32 temp_72_ptr2globl_93 
              #                          alloc i32 temp_73_arithop_93 
              #                          alloc i32 temp_74_ret_of_findfa_95 
              #                          alloc i32 temp_75_ret_of_findfa_95 
              #                          alloc i1 temp_76_cmp_95 
              #                          alloc ptr->i32 temp_77_array_ptr_95 
              #                          alloc i32 temp_78_array_ele_95 
              #                          alloc i1 temp_79_cmp_95 
              #                          alloc i1 temp_80_logic_95 
              #                          alloc ptr->i32 temp_81_array_ptr_95 
              #                          alloc i32 temp_82_array_ele_95 
              #                          alloc i1 temp_83_cmp_95 
              #                          alloc i1 temp_84_logic_95 
              #                          alloc i32 temp_85_arithop_97 
              #                          alloc i32 tmp_97 
              #                          alloc i32 temp_86_arithop_61 
              #                          alloc i1 temp_87_booltrans_103 
              #                          alloc i1 temp_88_logicnot_103 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var t_45:i32 
              #                          new_var m_45:i32 
              #                          new_var a_45:i32 
              #                          new_var b_45:i32 
              #                          t_45 = i32 1_0 
              #                    occupy a0 with t_45
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_18__800:i1 
              #                          temp_18__800 = icmp i32 Ne t_45, 0_0 
              #                    occupy a0 with t_45
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_18__800
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_18__800, label while.body_50, label while.exit_50 
              #                    occupy a2 with temp_18__800
              #                    free a2
              #                    occupy a2 with temp_18__800
    bnez    a2, .while.body_50
              #                    free a2
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } |     a2:Freed { symidx: temp_18__800, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_19_arithop_51:i32 
              #                          temp_19_arithop_51 = Sub i32 t_45, 1_0 
              #                    occupy a0 with t_45
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_19_arithop_51
              #                    regtab:    a0:Occupied { symidx: t_45, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_18__800, tracked: true } |     a3:Occupied { symidx: temp_19_arithop_51, tracked: true, occupy_count: 1 } | 


    sub     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          t_45 = i32 temp_19_arithop_51 
              #                    occupy a3 with temp_19_arithop_51
              #                    occupy a0 with t_45
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          store 4_0:i32 *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          m_45 = i32 10_0 
              #                    occupy a6 with m_45
    li      a6, 10
              #                    free a6
              #                          i_51 = i32 0_0 
              #                    occupy a7 with i_51
    li      a7, 0
              #                    free a7
              #                          flag_51 = i32 0_0 
              #                    occupy s1 with flag_51
    li      s1, 0
              #                    free s1
              #                          new_var temp_20_ptr2globl_51:i32 
              #                          temp_20_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy s2 with *n_0
              #                       load label n as ptr to reg
    la      s2, n
              #                    occupy reg s2 with *n_0
              #                    occupy s3 with temp_20_ptr2globl_51
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                           Call void init_0(temp_20_ptr2globl_51) 
              #                    saved register dumping to mem
              #                    store to flag_51 in mem offset legal
    sw      s1,304(sp)
              #                    release s1 with flag_51
              #                    store to temp_20_ptr2globl_51 in mem offset legal
    sw      s3,300(sp)
              #                    release s3 with temp_20_ptr2globl_51
              #                    store to t_45 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with t_45
              #                    store to temp_18__800 in mem offset legal
    sb      a2,319(sp)
              #                    release a2 with temp_18__800
              #                    store to temp_19_arithop_51 in mem offset legal
    sw      a3,312(sp)
              #                    release a3 with temp_19_arithop_51
              #                    store to m_45 in mem offset legal
    sw      a6,328(sp)
              #                    release a6 with m_45
              #                    store to i_51 in mem offset legal
    sw      a7,308(sp)
              #                    release a7 with i_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_ptr2globl_51_0
              #                    load from temp_20_ptr2globl_51 in mem


    lw      a0,300(sp)
              #                    arg load ended


    call    init
              #                          new_var temp_21_ptr2globl_51:i32 
              #                          temp_21_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with temp_21_ptr2globl_51
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_22_ptr2globl_51:i32 
              #                          temp_22_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_22_ptr2globl_51
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_23_arithop_51:i32 
              #                          temp_23_arithop_51 = Mul i32 temp_22_ptr2globl_51, temp_21_ptr2globl_51 
              #                    occupy a3 with temp_22_ptr2globl_51
              #                    occupy a1 with temp_21_ptr2globl_51
              #                    occupy a4 with temp_23_arithop_51
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                          new_var temp_24_arithop_51:i32 
              #                          temp_24_arithop_51 = Add i32 temp_23_arithop_51, 1_0 
              #                    occupy a4 with temp_23_arithop_51
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_24_arithop_51
    add     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                          k_51 = i32 temp_24_arithop_51 
              #                    occupy a6 with temp_24_arithop_51
              #                    occupy a7 with k_51
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a1:Freed { symidx: temp_21_ptr2globl_51, tracked: true } |     a3:Freed { symidx: temp_22_ptr2globl_51, tracked: true } |     a4:Freed { symidx: temp_23_arithop_51, tracked: true } |     a6:Freed { symidx: temp_24_arithop_51, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } | 
              #                          label while.head_60: 
.while.head_60:
              #                          new_var temp_25_cmp_59:i1 
              #                          temp_25_cmp_59 = icmp i32 Slt i_51, m_45 
              #                    occupy a0 with i_51
              #                    load from i_51 in mem


    lw      a0,308(sp)
              #                    occupy a2 with m_45
              #                    load from m_45 in mem


    lw      a2,328(sp)
              #                    occupy a5 with temp_25_cmp_59
    slt     a5,a0,a2
              #                    free a0
              #                    free a2
              #                    free a5
              #                          br i1 temp_25_cmp_59, label while.body_60, label while.exit_60 
              #                    occupy a5 with temp_25_cmp_59
              #                    free a5
              #                    occupy a5 with temp_25_cmp_59
    bnez    a5, .while.body_60
              #                    free a5
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: temp_21_ptr2globl_51, tracked: true } |     a2:Freed { symidx: m_45, tracked: true } |     a3:Freed { symidx: temp_22_ptr2globl_51, tracked: true } |     a4:Freed { symidx: temp_23_arithop_51, tracked: true } |     a5:Freed { symidx: temp_25_cmp_59, tracked: true } |     a6:Freed { symidx: temp_24_arithop_51, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } | 
              #                          label while.body_60: 
.while.body_60:
              #                          new_var temp_26_ret_of_getint_61:i32 
              #                          temp_26_ret_of_getint_61 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to i_51 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with i_51
              #                    store to temp_21_ptr2globl_51 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with temp_21_ptr2globl_51
              #                    store to m_45 in mem offset legal
    sw      a2,328(sp)
              #                    release a2 with m_45
              #                    store to temp_22_ptr2globl_51 in mem offset legal
    sw      a3,292(sp)
              #                    release a3 with temp_22_ptr2globl_51
              #                    store to temp_23_arithop_51 in mem offset legal
    sw      a4,288(sp)
              #                    release a4 with temp_23_arithop_51
              #                    store to temp_25_cmp_59 in mem offset legal
    sb      a5,279(sp)
              #                    release a5 with temp_25_cmp_59
              #                    store to temp_24_arithop_51 in mem offset legal
    sw      a6,284(sp)
              #                    release a6 with temp_24_arithop_51
              #                    store to k_51 in mem offset legal
    sw      a7,280(sp)
              #                    release a7 with k_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_26_ret_of_getint_61 in mem offset legal
    sw      a0,272(sp)
              #                          a_45 = i32 temp_26_ret_of_getint_61 
              #                    occupy a0 with temp_26_ret_of_getint_61
              #                    occupy a1 with a_45
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_27_ret_of_getint_61:i32 
              #                          temp_27_ret_of_getint_61 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_26_ret_of_getint_61 in mem offset legal
    sw      a0,272(sp)
              #                    release a0 with temp_26_ret_of_getint_61
              #                    store to a_45 in mem offset legal
    sw      a1,324(sp)
              #                    release a1 with a_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_27_ret_of_getint_61 in mem offset legal
    sw      a0,268(sp)
              #                          b_45 = i32 temp_27_ret_of_getint_61 
              #                    occupy a0 with temp_27_ret_of_getint_61
              #                    occupy a1 with b_45
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_28_booltrans_64:i1 
              #                          temp_28_booltrans_64 = icmp i1 Ne flag_51, 0_0 
              #                    occupy a2 with flag_51
              #                    load from flag_51 in mem


    lw      a2,304(sp)
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_28_booltrans_64
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_29_logicnot_64:i1 
              #                          temp_29_logicnot_64 = xor i1 temp_28_booltrans_64, true 
              #                    occupy a4 with temp_28_booltrans_64
              #                    occupy a5 with temp_29_logicnot_64
    seqz    a5, a4
              #                    free a4
              #                    free a5
              #                          br i1 temp_29_logicnot_64, label branch_true_65, label branch_false_65 
              #                    occupy a5 with temp_29_logicnot_64
              #                    free a5
              #                    occupy a5 with temp_29_logicnot_64
    bnez    a5, .branch_true_65
              #                    free a5
    j       .branch_false_65
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } | 
              #                          label branch_true_65: 
.branch_true_65:
              #                          new_var temp_30_arithop_66:i32 
              #                          temp_30_arithop_66 = Sub i32 a_45, 1_0 
              #                    occupy a3 with a_45
              #                    load from a_45 in mem


    lw      a3,324(sp)
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_30_arithop_66
              #                    regtab:    a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Occupied { symidx: a_45, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_30_arithop_66, tracked: true, occupy_count: 1 } | 


    sub     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          new_var temp_31_ptr2globl_66:i32 
              #                          temp_31_ptr2globl_66 = load *n_0:ptr->i32 
              #                    occupy s1 with *n_0
              #                       load label n as ptr to reg
    la      s1, n
              #                    occupy reg s1 with *n_0
              #                    occupy s2 with temp_31_ptr2globl_66
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_32_arithop_66:i32 
              #                          temp_32_arithop_66 = Mul i32 temp_31_ptr2globl_66, temp_30_arithop_66 
              #                    occupy s2 with temp_31_ptr2globl_66
              #                    occupy a7 with temp_30_arithop_66
              #                    occupy s3 with temp_32_arithop_66
    mul     s3,s2,a7
              #                    free s2
              #                    free a7
              #                    free s3
              #                          new_var temp_33_arithop_66:i32 
              #                          temp_33_arithop_66 = Add i32 temp_32_arithop_66, b_45 
              #                    occupy s3 with temp_32_arithop_66
              #                    occupy a1 with b_45
              #                    occupy s4 with temp_33_arithop_66
    add     s4,s3,a1
              #                    free s3
              #                    free a1
              #                    free s4
              #                          loc_66 = i32 temp_33_arithop_66 
              #                    occupy s4 with temp_33_arithop_66
              #                    occupy s5 with loc_66
    mv      s5, s4
              #                    free s4
              #                    free s5
              #                          new_var temp_34_index_ptr_66:ptr->i32 
              #                          temp_34_index_ptr_66 = getelementptr *array_0:ptr->i32 [Some(loc_66)] 
              #                    occupy s6 with temp_34_index_ptr_66
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with loc_66
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a6,s5
              #                    free a6
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *array_0
              #                       load label array as ptr to reg
    la      s8, array
              #                    occupy reg s8 with *array_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          store loc_66:i32 temp_34_index_ptr_66:ptr->i32 
              #                    occupy s6 with temp_34_index_ptr_66
              #                    occupy s5 with loc_66
    sw      s5,0(s6)
              #                    free s5
              #                    free s6
              #                          mu *array_0:194 
              #                          *array_0 = chi *array_0:194 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_35_cmp_69:i1 
              #                          temp_35_cmp_69 = icmp i32 Eq a_45, 1_0 
              #                    occupy a3 with a_45
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_35_cmp_69
    xor     s1,a3,a6
    seqz    s1, s1
              #                    free a3
              #                    free a6
              #                    free s1
              #                          br i1 temp_35_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy s1 with temp_35_cmp_69
              #                    free s1
              #                    occupy s1 with temp_35_cmp_69
    bnez    s1, .branch_true_70
              #                    free s1
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_36_index_ptr_71:ptr->i32 
              #                          temp_36_index_ptr_71 = getelementptr *array_0:ptr->i32 [Some(0_0)] 
              #                    occupy a6 with temp_36_index_ptr_71
    li      a6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,s7,s8
              #                    free s7
              #                    free s8
    add     a6,a6,s9
              #                    free s9
    slli a6,a6,2
              #                    occupy s10 with *array_0
              #                       load label array as ptr to reg
    la      s10, array
              #                    occupy reg s10 with *array_0
    add     a6,a6,s10
              #                    free s10
              #                    free a6
              #                          store 0_0:i32 temp_36_index_ptr_71:ptr->i32 
              #                    occupy a6 with temp_36_index_ptr_71
              #                    found literal reg Some(s8) already exist with 0_0
              #                    occupy s8 with 0_0
    sw      s8,0(a6)
              #                    free s8
              #                    free a6
              #                          mu *array_0:206 
              #                          *array_0 = chi *array_0:206 
              #                           Call void mmerge_0(loc_66, 0_0) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_27_ret_of_getint_61 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_27_ret_of_getint_61
              #                    store to b_45 in mem offset legal
    sw      a1,320(sp)
              #                    release a1 with b_45
              #                    store to flag_51 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with flag_51
              #                    store to a_45 in mem offset legal
    sw      a3,324(sp)
              #                    release a3 with a_45
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_36_index_ptr_71 in mem offset legal
    sd      a6,216(sp)
              #                    release a6 with temp_36_index_ptr_71
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_70 
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem


    lw      a3,324(sp)
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem


    lw      a2,304(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_b_45_0
              #                    load from b_45 in mem


    lw      a1,320(sp)
              #                    occupy a0 with _anonymous_of_temp_27_ret_of_getint_61_0
              #                    load from temp_27_ret_of_getint_61 in mem


    lw      a0,268(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_37_ptr2globl_74:i32 
              #                          temp_37_ptr2globl_74 = load *n_0:ptr->i32 
              #                    occupy a6 with *n_0
              #                       load label n as ptr to reg
    la      a6, n
              #                    occupy reg a6 with *n_0
              #                    occupy s7 with temp_37_ptr2globl_74
    lw      s7,0(a6)
              #                    free s7
              #                    free a6
              #                          new_var temp_38_cmp_74:i1 
              #                          temp_38_cmp_74 = icmp i32 Eq a_45, temp_37_ptr2globl_74 
              #                    occupy a3 with a_45
              #                    occupy s7 with temp_37_ptr2globl_74
              #                    occupy s8 with temp_38_cmp_74
    xor     s8,a3,s7
    seqz    s8, s8
              #                    free a3
              #                    free s7
              #                    free s8
              #                          br i1 temp_38_cmp_74, label branch_true_75, label branch_false_75 
              #                    occupy s8 with temp_38_cmp_74
              #                    free s8
              #                    occupy s8 with temp_38_cmp_74
    bnez    s8, .branch_true_75
              #                    free s8
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } | 
              #                          label branch_true_75: 
.branch_true_75:
              #                          new_var temp_39_index_ptr_76:ptr->i32 
              #                          temp_39_index_ptr_76 = getelementptr *array_0:ptr->i32 [Some(k_51)] 
              #                    occupy a6 with temp_39_index_ptr_76
    li      a6, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with k_51
              #                    load from k_51 in mem


    lw      s10,280(sp)
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s9,s10
              #                    free s9
              #                    free s10
    add     a6,a6,s11
              #                    free s11
    slli a6,a6,2
              #                    occupy s9 with *array_0
              #                       load label array as ptr to reg
    la      s9, array
              #                    occupy reg s9 with *array_0
    add     a6,a6,s9
              #                    free s9
              #                    free a6
              #                          store k_51:i32 temp_39_index_ptr_76:ptr->i32 
              #                    occupy a6 with temp_39_index_ptr_76
              #                    occupy s10 with k_51
    sw      s10,0(a6)
              #                    free s10
              #                    free a6
              #                          mu *array_0:222 
              #                          *array_0 = chi *array_0:222 
              #                           Call void mmerge_0(loc_66, k_51) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to k_51 in mem offset legal
    sw      s10,280(sp)
              #                    release s10 with k_51
              #                    store to temp_27_ret_of_getint_61 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_27_ret_of_getint_61
              #                    store to b_45 in mem offset legal
    sw      a1,320(sp)
              #                    release a1 with b_45
              #                    store to flag_51 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with flag_51
              #                    store to a_45 in mem offset legal
    sw      a3,324(sp)
              #                    release a3 with a_45
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_39_index_ptr_76 in mem offset legal
    sd      a6,200(sp)
              #                    release a6 with temp_39_index_ptr_76
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_k_51_0
              #                    load from k_51 in mem


    lw      a1,280(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_75 
              #                    occupy a3 with _anonymous_of_a_45_0
              #                    load from a_45 in mem


    lw      a3,324(sp)
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s7 with _anonymous_of_temp_37_ptr2globl_74_0
              #                    load from temp_37_ptr2globl_74 in mem


    lw      s7,212(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem


    lw      a2,304(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_b_45_0
              #                    load from b_45 in mem


    lw      a1,320(sp)
              #                    occupy a0 with _anonymous_of_temp_27_ret_of_getint_61_0
              #                    load from temp_27_ret_of_getint_61 in mem


    lw      a0,268(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s8 with _anonymous_of_temp_38_cmp_74_0
              #                    load from temp_38_cmp_74 in mem
    lb      s8,211(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_75
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } | 
              #                          label branch_false_75: 
.branch_false_75:
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Freed { symidx: a_45, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_40_arithop_79:i32 
              #                          temp_40_arithop_79 = Add i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s9 with temp_40_arithop_79
    add     s9,s5,a6
              #                    free s5
              #                    free a6
              #                    free s9
              #                          new_var temp_41_array_ptr_79:ptr->i32 
              #                          temp_41_array_ptr_79 = getelementptr *array_0:ptr->i32 [Some(temp_40_arithop_79)] 
              #                    occupy s10 with temp_41_array_ptr_79
    li      s10, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s9 with temp_40_arithop_79
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a6,s9
              #                    free a6
              #                    free s9
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a6 with *array_0
              #                       load label array as ptr to reg
    la      a6, array
              #                    occupy reg a6 with *array_0
    add     s10,s10,a6
              #                    free a6
              #                    free s10
              #                          new_var temp_42_array_ele_79:i32 
              #                          temp_42_array_ele_79 = load temp_41_array_ptr_79:ptr->i32 
              #                    occupy s10 with temp_41_array_ptr_79
              #                    occupy a6 with temp_42_array_ele_79
    lw      a6,0(s10)
              #                    free a6
              #                    free s10
              #                          new_var temp_43_cmp_79:i1 
              #                          temp_43_cmp_79 = icmp i32 Ne temp_42_array_ele_79, -1_0 
              #                    occupy a6 with temp_42_array_ele_79
              #                    occupy s11 with -1_0
    li      s11, -1
              #                    store to temp_27_ret_of_getint_61 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_27_ret_of_getint_61
              #                    occupy a0 with temp_43_cmp_79
    xor     a0,a6,s11
    snez    a0, a0
              #                    free a6
              #                    free s11
              #                    free a0
              #                          new_var temp_44_ptr2globl_79:i32 
              #                          temp_44_ptr2globl_79 = load *n_0:ptr->i32 
              #                    occupy s11 with *n_0
              #                       load label n as ptr to reg
    la      s11, n
              #                    occupy reg s11 with *n_0
              #                    store to temp_43_cmp_79 in mem offset legal
    sb      a0,179(sp)
              #                    release a0 with temp_43_cmp_79
              #                    occupy a0 with temp_44_ptr2globl_79
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_45_cmp_79:i1 
              #                          temp_45_cmp_79 = icmp i32 Slt b_45, temp_44_ptr2globl_79 
              #                    occupy a1 with b_45
              #                    occupy a0 with temp_44_ptr2globl_79
              #                    occupy s11 with temp_45_cmp_79
    slt     s11,a1,a0
              #                    free a1
              #                    free a0
              #                    free s11
              #                          new_var temp_46_logic_79:i1 
              #                          temp_46_logic_79 = And i1 temp_45_cmp_79, temp_43_cmp_79 
              #                    occupy s11 with temp_45_cmp_79
              #                    store to temp_44_ptr2globl_79 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_44_ptr2globl_79
              #                    occupy a0 with temp_43_cmp_79
              #                    load from temp_43_cmp_79 in mem
    lb      a0,179(sp)
              #                    store to b_45 in mem offset legal
    sw      a1,320(sp)
              #                    release a1 with b_45
              #                    occupy a1 with temp_46_logic_79
    and     a1,s11,a0
              #                    free s11
              #                    free a0
              #                    free a1
              #                          br i1 temp_46_logic_79, label branch_true_80, label branch_false_80 
              #                    occupy a1 with temp_46_logic_79
              #                    free a1
              #                    store to a_45 in mem offset legal
    sw      a3,324(sp)
              #                    release a3 with a_45
              #                    occupy a1 with temp_46_logic_79
    bnez    a1, .branch_true_80
              #                    free a1
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_43_cmp_79, tracked: true } |     a1:Freed { symidx: temp_46_logic_79, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                          new_var temp_47_arithop_81:i32 
              #                          temp_47_arithop_81 = Add i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_43_cmp_79 in mem offset legal
    sb      a0,179(sp)
              #                    release a0 with temp_43_cmp_79
              #                    occupy a0 with temp_47_arithop_81
    add     a0,s5,a3
              #                    free s5
              #                    free a3
              #                    free a0
              #                           Call void mmerge_0(loc_66, temp_47_arithop_81) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to temp_40_arithop_79 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_40_arithop_79
              #                    store to temp_41_array_ptr_79 in mem offset legal
    sd      s10,184(sp)
              #                    release s10 with temp_41_array_ptr_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to temp_47_arithop_81 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_47_arithop_81
              #                    store to temp_46_logic_79 in mem offset legal
    sb      a1,170(sp)
              #                    release a1 with temp_46_logic_79
              #                    store to flag_51 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with flag_51
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_42_array_ele_79 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_array_ele_79
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_47_arithop_81_0
              #                    load from temp_47_arithop_81 in mem


    lw      a1,164(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_80 
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s7 with _anonymous_of_temp_37_ptr2globl_74_0
              #                    load from temp_37_ptr2globl_74 in mem


    lw      s7,212(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem


    lw      a2,304(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_temp_46_logic_79_0
              #                    load from temp_46_logic_79 in mem
    lb      a1,170(sp)
              #                    occupy a0 with _anonymous_of_temp_43_cmp_79_0
              #                    load from temp_43_cmp_79 in mem
    lb      a0,179(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s8 with _anonymous_of_temp_38_cmp_74_0
              #                    load from temp_38_cmp_74 in mem
    lb      s8,211(sp)
              #                    occupy s9 with _anonymous_of_temp_40_arithop_79_0
              #                    load from temp_40_arithop_79 in mem


    lw      s9,196(sp)
              #                    occupy s10 with _anonymous_of_temp_41_array_ptr_79_0
              #                    load from temp_41_array_ptr_79 in mem
    ld      s10,184(sp)
              #                    occupy s11 with _anonymous_of_temp_45_cmp_79_0
              #                    load from temp_45_cmp_79 in mem
    lb      s11,171(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy a6 with _anonymous_of_temp_42_array_ele_79_0
              #                    load from temp_42_array_ele_79 in mem


    lw      a6,180(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: temp_43_cmp_79, tracked: true } |     a1:Freed { symidx: temp_46_logic_79, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a0:Freed { symidx: temp_43_cmp_79, tracked: true } |     a1:Freed { symidx: temp_46_logic_79, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_48_arithop_83:i32 
              #                          temp_48_arithop_83 = Sub i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_43_cmp_79 in mem offset legal
    sb      a0,179(sp)
              #                    release a0 with temp_43_cmp_79
              #                    occupy a0 with temp_48_arithop_83
              #                    regtab:    a0:Occupied { symidx: temp_48_arithop_83, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_46_logic_79, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 


    sub     a0,s5,a3
              #                    free s5
              #                    free a3
              #                    free a0
              #                          new_var temp_49_array_ptr_83:ptr->i32 
              #                          temp_49_array_ptr_83 = getelementptr *array_0:ptr->i32 [Some(temp_48_arithop_83)] 
              #                    occupy a3 with temp_49_array_ptr_83
    li      a3, 0
              #                    store to temp_48_arithop_83 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_48_arithop_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_46_logic_79 in mem offset legal
    sb      a1,170(sp)
              #                    release a1 with temp_46_logic_79
              #                    occupy a1 with temp_48_arithop_83
              #                    load from temp_48_arithop_83 in mem


    lw      a1,160(sp)
              #                    store to flag_51 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with flag_51
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *array_0
              #                       load label array as ptr to reg
    la      a0, array
              #                    occupy reg a0 with *array_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_50_array_ele_83:i32 
              #                          temp_50_array_ele_83 = load temp_49_array_ptr_83:ptr->i32 
              #                    occupy a3 with temp_49_array_ptr_83
              #                    occupy a0 with temp_50_array_ele_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_51_cmp_83:i1 
              #                          temp_51_cmp_83 = icmp i32 Ne temp_50_array_ele_83, -1_0 
              #                    occupy a0 with temp_50_array_ele_83
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_48_arithop_83 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with temp_48_arithop_83
              #                    occupy a1 with temp_51_cmp_83
    xor     a1,a0,a2
    snez    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_52_cmp_83:i1 
              #                          temp_52_cmp_83 = icmp i32 Sgt b_45, 1_0 
              #                    occupy a2 with b_45
              #                    load from b_45 in mem


    lw      a2,320(sp)
              #                    store to temp_50_array_ele_83 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with temp_50_array_ele_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a1,147(sp)
              #                    release a1 with temp_51_cmp_83
              #                    occupy a1 with temp_52_cmp_83
    slt     a1,a0,a2
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_53_logic_83:i1 
              #                          temp_53_logic_83 = And i1 temp_52_cmp_83, temp_51_cmp_83 
              #                    occupy a1 with temp_52_cmp_83
              #                    occupy a0 with temp_51_cmp_83
              #                    load from temp_51_cmp_83 in mem
    lb      a0,147(sp)
              #                    store to b_45 in mem offset legal
    sw      a2,320(sp)
              #                    release a2 with b_45
              #                    occupy a2 with temp_53_logic_83
    and     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_53_logic_83, label branch_true_84, label branch_false_84 
              #                    occupy a2 with temp_53_logic_83
              #                    free a2
              #                    store to temp_49_array_ptr_83 in mem offset legal
    sd      a3,152(sp)
              #                    release a3 with temp_49_array_ptr_83
              #                    occupy a2 with temp_53_logic_83
    bnez    a2, .branch_true_84
              #                    free a2
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_51_cmp_83, tracked: true } |     a1:Freed { symidx: temp_52_cmp_83, tracked: true } |     a2:Freed { symidx: temp_53_logic_83, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_true_84: 
.branch_true_84:
              #                          new_var temp_54_arithop_85:i32 
              #                          temp_54_arithop_85 = Sub i32 loc_66, 1_0 
              #                    occupy s5 with loc_66
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a0,147(sp)
              #                    release a0 with temp_51_cmp_83
              #                    occupy a0 with temp_54_arithop_85
              #                    regtab:    a0:Occupied { symidx: temp_54_arithop_85, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_52_cmp_83, tracked: true } |     a2:Freed { symidx: temp_53_logic_83, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 


    sub     a0,s5,a3
              #                    free s5
              #                    free a3
              #                    free a0
              #                           Call void mmerge_0(loc_66, temp_54_arithop_85) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to temp_40_arithop_79 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_40_arithop_79
              #                    store to temp_41_array_ptr_79 in mem offset legal
    sd      s10,184(sp)
              #                    release s10 with temp_41_array_ptr_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to temp_54_arithop_85 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_54_arithop_85
              #                    store to temp_52_cmp_83 in mem offset legal
    sb      a1,146(sp)
              #                    release a1 with temp_52_cmp_83
              #                    store to temp_53_logic_83 in mem offset legal
    sb      a2,145(sp)
              #                    release a2 with temp_53_logic_83
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_42_array_ele_79 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_array_ele_79
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_54_arithop_85_0
              #                    load from temp_54_arithop_85 in mem


    lw      a1,140(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_84 
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s7 with _anonymous_of_temp_37_ptr2globl_74_0
              #                    load from temp_37_ptr2globl_74 in mem


    lw      s7,212(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_temp_53_logic_83_0
              #                    load from temp_53_logic_83 in mem
    lb      a2,145(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_temp_52_cmp_83_0
              #                    load from temp_52_cmp_83 in mem
    lb      a1,146(sp)
              #                    occupy a0 with _anonymous_of_temp_51_cmp_83_0
              #                    load from temp_51_cmp_83 in mem
    lb      a0,147(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s8 with _anonymous_of_temp_38_cmp_74_0
              #                    load from temp_38_cmp_74 in mem
    lb      s8,211(sp)
              #                    occupy s9 with _anonymous_of_temp_40_arithop_79_0
              #                    load from temp_40_arithop_79 in mem


    lw      s9,196(sp)
              #                    occupy s10 with _anonymous_of_temp_41_array_ptr_79_0
              #                    load from temp_41_array_ptr_79 in mem
    ld      s10,184(sp)
              #                    occupy s11 with _anonymous_of_temp_45_cmp_79_0
              #                    load from temp_45_cmp_79 in mem
    lb      s11,171(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy a6 with _anonymous_of_temp_42_array_ele_79_0
              #                    load from temp_42_array_ele_79 in mem


    lw      a6,180(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_51_cmp_83, tracked: true } |     a1:Freed { symidx: temp_52_cmp_83, tracked: true } |     a2:Freed { symidx: temp_53_logic_83, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_false_84: 
.branch_false_84:
              #                    regtab     a0:Freed { symidx: temp_51_cmp_83, tracked: true } |     a1:Freed { symidx: temp_52_cmp_83, tracked: true } |     a2:Freed { symidx: temp_53_logic_83, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_55_ptr2globl_87:i32 
              #                          temp_55_ptr2globl_87 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    store to temp_51_cmp_83 in mem offset legal
    sb      a0,147(sp)
              #                    release a0 with temp_51_cmp_83
              #                    occupy a0 with temp_55_ptr2globl_87
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_56_arithop_87:i32 
              #                          temp_56_arithop_87 = Add i32 loc_66, temp_55_ptr2globl_87 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_55_ptr2globl_87
              #                    occupy a3 with temp_56_arithop_87
    add     a3,s5,a0
              #                    free s5
              #                    free a0
              #                    free a3
              #                          new_var temp_57_array_ptr_87:ptr->i32 
              #                          temp_57_array_ptr_87 = getelementptr *array_0:ptr->i32 [Some(temp_56_arithop_87)] 
              #                    store to temp_55_ptr2globl_87 in mem offset legal
    sw      a0,136(sp)
              #                    release a0 with temp_55_ptr2globl_87
              #                    occupy a0 with temp_57_array_ptr_87
    li      a0, 0
              #                    store to temp_52_cmp_83 in mem offset legal
    sb      a1,146(sp)
              #                    release a1 with temp_52_cmp_83
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_56_arithop_87
              #                    store to temp_53_logic_83 in mem offset legal
    sb      a2,145(sp)
              #                    release a2 with temp_53_logic_83
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a1 with *array_0
              #                       load label array as ptr to reg
    la      a1, array
              #                    occupy reg a1 with *array_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_58_array_ele_87:i32 
              #                          temp_58_array_ele_87 = load temp_57_array_ptr_87:ptr->i32 
              #                    occupy a0 with temp_57_array_ptr_87
              #                    occupy a1 with temp_58_array_ele_87
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_59_cmp_87:i1 
              #                          temp_59_cmp_87 = icmp i32 Ne temp_58_array_ele_87, -1_0 
              #                    occupy a1 with temp_58_array_ele_87
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_57_array_ptr_87 in mem offset legal
    sd      a0,120(sp)
              #                    release a0 with temp_57_array_ptr_87
              #                    occupy a0 with temp_59_cmp_87
    xor     a0,a1,a2
    snez    a0, a0
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_60_ptr2globl_87:i32 
              #                          temp_60_ptr2globl_87 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    store to temp_59_cmp_87 in mem offset legal
    sb      a0,115(sp)
              #                    release a0 with temp_59_cmp_87
              #                    occupy a0 with temp_60_ptr2globl_87
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_61_cmp_87:i1 
              #                          temp_61_cmp_87 = icmp i32 Slt a_45, temp_60_ptr2globl_87 
              #                    occupy a2 with a_45
              #                    load from a_45 in mem


    lw      a2,324(sp)
              #                    occupy a0 with temp_60_ptr2globl_87
              #                    store to temp_58_array_ele_87 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with temp_58_array_ele_87
              #                    occupy a1 with temp_61_cmp_87
    slt     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_62_logic_87:i1 
              #                          temp_62_logic_87 = And i1 temp_61_cmp_87, temp_59_cmp_87 
              #                    occupy a1 with temp_61_cmp_87
              #                    store to temp_60_ptr2globl_87 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_60_ptr2globl_87
              #                    occupy a0 with temp_59_cmp_87
              #                    load from temp_59_cmp_87 in mem
    lb      a0,115(sp)
              #                    store to a_45 in mem offset legal
    sw      a2,324(sp)
              #                    release a2 with a_45
              #                    occupy a2 with temp_62_logic_87
    and     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_62_logic_87, label branch_true_88, label branch_false_88 
              #                    occupy a2 with temp_62_logic_87
              #                    free a2
              #                    store to temp_56_arithop_87 in mem offset legal
    sw      a3,132(sp)
              #                    release a3 with temp_56_arithop_87
              #                    occupy a2 with temp_62_logic_87
    bnez    a2, .branch_true_88
              #                    free a2
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_59_cmp_87, tracked: true } |     a1:Freed { symidx: temp_61_cmp_87, tracked: true } |     a2:Freed { symidx: temp_62_logic_87, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_true_88: 
.branch_true_88:
              #                          new_var temp_63_ptr2globl_89:i32 
              #                          temp_63_ptr2globl_89 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    store to temp_59_cmp_87 in mem offset legal
    sb      a0,115(sp)
              #                    release a0 with temp_59_cmp_87
              #                    occupy a0 with temp_63_ptr2globl_89
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_64_arithop_89:i32 
              #                          temp_64_arithop_89 = Add i32 loc_66, temp_63_ptr2globl_89 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_63_ptr2globl_89
              #                    occupy a3 with temp_64_arithop_89
    add     a3,s5,a0
              #                    free s5
              #                    free a0
              #                    free a3
              #                           Call void mmerge_0(loc_66, temp_64_arithop_89) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to temp_40_arithop_79 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_40_arithop_79
              #                    store to temp_41_array_ptr_79 in mem offset legal
    sd      s10,184(sp)
              #                    release s10 with temp_41_array_ptr_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to temp_63_ptr2globl_89 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_63_ptr2globl_89
              #                    store to temp_61_cmp_87 in mem offset legal
    sb      a1,107(sp)
              #                    release a1 with temp_61_cmp_87
              #                    store to temp_62_logic_87 in mem offset legal
    sb      a2,106(sp)
              #                    release a2 with temp_62_logic_87
              #                    store to temp_64_arithop_89 in mem offset legal
    sw      a3,96(sp)
              #                    release a3 with temp_64_arithop_89
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_42_array_ele_79 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_array_ele_79
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_64_arithop_89_0
              #                    load from temp_64_arithop_89 in mem


    lw      a1,96(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_88 
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s7 with _anonymous_of_temp_37_ptr2globl_74_0
              #                    load from temp_37_ptr2globl_74 in mem


    lw      s7,212(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_temp_62_logic_87_0
              #                    load from temp_62_logic_87 in mem
    lb      a2,106(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_temp_61_cmp_87_0
              #                    load from temp_61_cmp_87 in mem
    lb      a1,107(sp)
              #                    occupy a0 with _anonymous_of_temp_59_cmp_87_0
              #                    load from temp_59_cmp_87 in mem
    lb      a0,115(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s8 with _anonymous_of_temp_38_cmp_74_0
              #                    load from temp_38_cmp_74 in mem
    lb      s8,211(sp)
              #                    occupy s9 with _anonymous_of_temp_40_arithop_79_0
              #                    load from temp_40_arithop_79 in mem


    lw      s9,196(sp)
              #                    occupy s10 with _anonymous_of_temp_41_array_ptr_79_0
              #                    load from temp_41_array_ptr_79 in mem
    ld      s10,184(sp)
              #                    occupy s11 with _anonymous_of_temp_45_cmp_79_0
              #                    load from temp_45_cmp_79 in mem
    lb      s11,171(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy a6 with _anonymous_of_temp_42_array_ele_79_0
              #                    load from temp_42_array_ele_79 in mem


    lw      a6,180(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_88
              #                    regtab     a0:Freed { symidx: temp_59_cmp_87, tracked: true } |     a1:Freed { symidx: temp_61_cmp_87, tracked: true } |     a2:Freed { symidx: temp_62_logic_87, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_false_88: 
.branch_false_88:
              #                    regtab     a0:Freed { symidx: temp_59_cmp_87, tracked: true } |     a1:Freed { symidx: temp_61_cmp_87, tracked: true } |     a2:Freed { symidx: temp_62_logic_87, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_65_ptr2globl_91:i32 
              #                          temp_65_ptr2globl_91 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    store to temp_59_cmp_87 in mem offset legal
    sb      a0,115(sp)
              #                    release a0 with temp_59_cmp_87
              #                    occupy a0 with temp_65_ptr2globl_91
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_66_arithop_91:i32 
              #                          temp_66_arithop_91 = Sub i32 loc_66, temp_65_ptr2globl_91 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_65_ptr2globl_91
              #                    occupy a3 with temp_66_arithop_91
              #                    regtab:    a0:Occupied { symidx: temp_65_ptr2globl_91, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_61_cmp_87, tracked: true } |     a2:Freed { symidx: temp_62_logic_87, tracked: true } |     a3:Occupied { symidx: temp_66_arithop_91, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 


    sub     a3,s5,a0
              #                    free s5
              #                    free a0
              #                    free a3
              #                          new_var temp_67_array_ptr_91:ptr->i32 
              #                          temp_67_array_ptr_91 = getelementptr *array_0:ptr->i32 [Some(temp_66_arithop_91)] 
              #                    store to temp_65_ptr2globl_91 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_65_ptr2globl_91
              #                    occupy a0 with temp_67_array_ptr_91
    li      a0, 0
              #                    store to temp_61_cmp_87 in mem offset legal
    sb      a1,107(sp)
              #                    release a1 with temp_61_cmp_87
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_66_arithop_91
              #                    store to temp_62_logic_87 in mem offset legal
    sb      a2,106(sp)
              #                    release a2 with temp_62_logic_87
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a1 with *array_0
              #                       load label array as ptr to reg
    la      a1, array
              #                    occupy reg a1 with *array_0
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_68_array_ele_91:i32 
              #                          temp_68_array_ele_91 = load temp_67_array_ptr_91:ptr->i32 
              #                    occupy a0 with temp_67_array_ptr_91
              #                    occupy a1 with temp_68_array_ele_91
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_69_cmp_91:i1 
              #                          temp_69_cmp_91 = icmp i32 Ne temp_68_array_ele_91, -1_0 
              #                    occupy a1 with temp_68_array_ele_91
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to temp_67_array_ptr_91 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_67_array_ptr_91
              #                    occupy a0 with temp_69_cmp_91
    xor     a0,a1,a2
    snez    a0, a0
              #                    free a1
              #                    free a2
              #                    free a0
              #                          new_var temp_70_cmp_91:i1 
              #                          temp_70_cmp_91 = icmp i32 Sgt a_45, 1_0 
              #                    occupy a2 with a_45
              #                    load from a_45 in mem


    lw      a2,324(sp)
              #                    store to temp_69_cmp_91 in mem offset legal
    sb      a0,75(sp)
              #                    release a0 with temp_69_cmp_91
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_68_array_ele_91 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with temp_68_array_ele_91
              #                    occupy a1 with temp_70_cmp_91
    slt     a1,a0,a2
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_71_logic_91:i1 
              #                          temp_71_logic_91 = And i1 temp_70_cmp_91, temp_69_cmp_91 
              #                    occupy a1 with temp_70_cmp_91
              #                    occupy a0 with temp_69_cmp_91
              #                    load from temp_69_cmp_91 in mem
    lb      a0,75(sp)
              #                    store to a_45 in mem offset legal
    sw      a2,324(sp)
              #                    release a2 with a_45
              #                    occupy a2 with temp_71_logic_91
    and     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          br i1 temp_71_logic_91, label branch_true_92, label branch_false_92 
              #                    occupy a2 with temp_71_logic_91
              #                    free a2
              #                    store to temp_66_arithop_91 in mem offset legal
    sw      a3,88(sp)
              #                    release a3 with temp_66_arithop_91
              #                    occupy a2 with temp_71_logic_91
    bnez    a2, .branch_true_92
              #                    free a2
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_69_cmp_91, tracked: true } |     a1:Freed { symidx: temp_70_cmp_91, tracked: true } |     a2:Freed { symidx: temp_71_logic_91, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_true_92: 
.branch_true_92:
              #                          new_var temp_72_ptr2globl_93:i32 
              #                          temp_72_ptr2globl_93 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    store to temp_69_cmp_91 in mem offset legal
    sb      a0,75(sp)
              #                    release a0 with temp_69_cmp_91
              #                    occupy a0 with temp_72_ptr2globl_93
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_73_arithop_93:i32 
              #                          temp_73_arithop_93 = Sub i32 loc_66, temp_72_ptr2globl_93 
              #                    occupy s5 with loc_66
              #                    occupy a0 with temp_72_ptr2globl_93
              #                    occupy a3 with temp_73_arithop_93
              #                    regtab:    a0:Occupied { symidx: temp_72_ptr2globl_93, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_70_cmp_91, tracked: true } |     a2:Freed { symidx: temp_71_logic_91, tracked: true } |     a3:Occupied { symidx: temp_73_arithop_93, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Occupied { symidx: loc_66, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 


    sub     a3,s5,a0
              #                    free s5
              #                    free a0
              #                    free a3
              #                           Call void mmerge_0(loc_66, temp_73_arithop_93) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to temp_40_arithop_79 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_40_arithop_79
              #                    store to temp_41_array_ptr_79 in mem offset legal
    sd      s10,184(sp)
              #                    release s10 with temp_41_array_ptr_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to temp_72_ptr2globl_93 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_72_ptr2globl_93
              #                    store to temp_70_cmp_91 in mem offset legal
    sb      a1,74(sp)
              #                    release a1 with temp_70_cmp_91
              #                    store to temp_71_logic_91 in mem offset legal
    sb      a2,73(sp)
              #                    release a2 with temp_71_logic_91
              #                    store to temp_73_arithop_93 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with temp_73_arithop_93
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_42_array_ele_79 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_array_ele_79
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_73_arithop_93_0
              #                    load from temp_73_arithop_93 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    mmerge
              #                          jump label: branch_false_92 
              #                    occupy s2 with _anonymous_of_temp_31_ptr2globl_66_0
              #                    load from temp_31_ptr2globl_66 in mem


    lw      s2,256(sp)
              #                    occupy s7 with _anonymous_of_temp_37_ptr2globl_74_0
              #                    load from temp_37_ptr2globl_74 in mem


    lw      s7,212(sp)
              #                    occupy s4 with _anonymous_of_temp_33_arithop_66_0
              #                    load from temp_33_arithop_66 in mem


    lw      s4,248(sp)
              #                    occupy s5 with _anonymous_of_loc_66_0
              #                    load from loc_66 in mem


    lw      s5,244(sp)
              #                    occupy a2 with _anonymous_of_temp_71_logic_91_0
              #                    load from temp_71_logic_91 in mem
    lb      a2,73(sp)
              #                    occupy s3 with _anonymous_of_temp_32_arithop_66_0
              #                    load from temp_32_arithop_66 in mem


    lw      s3,252(sp)
              #                    occupy a5 with _anonymous_of_temp_29_logicnot_64_0
              #                    load from temp_29_logicnot_64 in mem
    lb      a5,266(sp)
              #                    occupy a1 with _anonymous_of_temp_70_cmp_91_0
              #                    load from temp_70_cmp_91 in mem
    lb      a1,74(sp)
              #                    occupy a0 with _anonymous_of_temp_69_cmp_91_0
              #                    load from temp_69_cmp_91 in mem
    lb      a0,75(sp)
              #                    occupy a7 with _anonymous_of_temp_30_arithop_66_0
              #                    load from temp_30_arithop_66 in mem


    lw      a7,260(sp)
              #                    occupy a4 with _anonymous_of_temp_28_booltrans_64_0
              #                    load from temp_28_booltrans_64 in mem
    lb      a4,267(sp)
              #                    occupy s8 with _anonymous_of_temp_38_cmp_74_0
              #                    load from temp_38_cmp_74 in mem
    lb      s8,211(sp)
              #                    occupy s9 with _anonymous_of_temp_40_arithop_79_0
              #                    load from temp_40_arithop_79 in mem


    lw      s9,196(sp)
              #                    occupy s10 with _anonymous_of_temp_41_array_ptr_79_0
              #                    load from temp_41_array_ptr_79 in mem
    ld      s10,184(sp)
              #                    occupy s11 with _anonymous_of_temp_45_cmp_79_0
              #                    load from temp_45_cmp_79 in mem
    lb      s11,171(sp)
              #                    occupy s1 with _anonymous_of_temp_35_cmp_69_0
              #                    load from temp_35_cmp_69 in mem
    lb      s1,231(sp)
              #                    occupy a6 with _anonymous_of_temp_42_array_ele_79_0
              #                    load from temp_42_array_ele_79 in mem


    lw      a6,180(sp)
              #                    occupy s6 with _anonymous_of_temp_34_index_ptr_66_0
              #                    load from temp_34_index_ptr_66 in mem
    ld      s6,232(sp)
    j       .branch_false_92
              #                    regtab     a0:Freed { symidx: temp_69_cmp_91, tracked: true } |     a1:Freed { symidx: temp_70_cmp_91, tracked: true } |     a2:Freed { symidx: temp_71_logic_91, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label branch_false_92: 
.branch_false_92:
              #                    regtab     a0:Freed { symidx: temp_69_cmp_91, tracked: true } |     a1:Freed { symidx: temp_70_cmp_91, tracked: true } |     a2:Freed { symidx: temp_71_logic_91, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_79, tracked: true } |     a7:Freed { symidx: temp_30_arithop_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_79, tracked: true } |     s11:Freed { symidx: temp_45_cmp_79, tracked: true } |     s1:Freed { symidx: temp_35_cmp_69, tracked: true } |     s2:Freed { symidx: temp_31_ptr2globl_66, tracked: true } |     s3:Freed { symidx: temp_32_arithop_66, tracked: true } |     s4:Freed { symidx: temp_33_arithop_66, tracked: true } |     s5:Freed { symidx: loc_66, tracked: true } |     s6:Freed { symidx: temp_34_index_ptr_66, tracked: true } |     s7:Freed { symidx: temp_37_ptr2globl_74, tracked: true } |     s8:Freed { symidx: temp_38_cmp_74, tracked: true } |     s9:Freed { symidx: temp_40_arithop_79, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_74_ret_of_findfa_95:i32 
              #                          temp_74_ret_of_findfa_95 =  Call i32 findfa_0(k_51) 
              #                    saved register dumping to mem
              #                    store to temp_35_cmp_69 in mem offset legal
    sb      s1,231(sp)
              #                    release s1 with temp_35_cmp_69
              #                    store to temp_31_ptr2globl_66 in mem offset legal
    sw      s2,256(sp)
              #                    release s2 with temp_31_ptr2globl_66
              #                    store to temp_32_arithop_66 in mem offset legal
    sw      s3,252(sp)
              #                    release s3 with temp_32_arithop_66
              #                    store to temp_33_arithop_66 in mem offset legal
    sw      s4,248(sp)
              #                    release s4 with temp_33_arithop_66
              #                    store to loc_66 in mem offset legal
    sw      s5,244(sp)
              #                    release s5 with loc_66
              #                    store to temp_34_index_ptr_66 in mem offset legal
    sd      s6,232(sp)
              #                    release s6 with temp_34_index_ptr_66
              #                    store to temp_37_ptr2globl_74 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_37_ptr2globl_74
              #                    store to temp_38_cmp_74 in mem offset legal
    sb      s8,211(sp)
              #                    release s8 with temp_38_cmp_74
              #                    store to temp_40_arithop_79 in mem offset legal
    sw      s9,196(sp)
              #                    release s9 with temp_40_arithop_79
              #                    store to temp_41_array_ptr_79 in mem offset legal
    sd      s10,184(sp)
              #                    release s10 with temp_41_array_ptr_79
              #                    store to temp_45_cmp_79 in mem offset legal
    sb      s11,171(sp)
              #                    release s11 with temp_45_cmp_79
              #                    store to temp_69_cmp_91 in mem offset legal
    sb      a0,75(sp)
              #                    release a0 with temp_69_cmp_91
              #                    store to temp_70_cmp_91 in mem offset legal
    sb      a1,74(sp)
              #                    release a1 with temp_70_cmp_91
              #                    store to temp_71_logic_91 in mem offset legal
    sb      a2,73(sp)
              #                    release a2 with temp_71_logic_91
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to temp_42_array_ele_79 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_42_array_ele_79
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,260(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_k_51_0
              #                    load from k_51 in mem


    lw      a0,280(sp)
              #                    arg load ended


    call    findfa
              #                    store to temp_74_ret_of_findfa_95 in mem offset legal
    sw      a0,60(sp)
              #                          new_var temp_75_ret_of_findfa_95:i32 
              #                          temp_75_ret_of_findfa_95 =  Call i32 findfa_0(0_0) 
              #                    saved register dumping to mem
              #                    store to temp_74_ret_of_findfa_95 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_74_ret_of_findfa_95
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    findfa
              #                    store to temp_75_ret_of_findfa_95 in mem offset legal
    sw      a0,56(sp)
              #                          new_var temp_76_cmp_95:i1 
              #                          temp_76_cmp_95 = icmp i32 Eq temp_75_ret_of_findfa_95, temp_74_ret_of_findfa_95 
              #                    occupy a0 with temp_75_ret_of_findfa_95
              #                    occupy a1 with temp_74_ret_of_findfa_95
              #                    load from temp_74_ret_of_findfa_95 in mem


    lw      a1,60(sp)
              #                    occupy a2 with temp_76_cmp_95
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_77_array_ptr_95:ptr->i32 
              #                          temp_77_array_ptr_95 = getelementptr *array_0:ptr->i32 [Some(k_51)] 
              #                    occupy a3 with temp_77_array_ptr_95
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with k_51
              #                    load from k_51 in mem


    lw      a5,280(sp)
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a7 with *array_0
              #                       load label array as ptr to reg
    la      a7, array
              #                    occupy reg a7 with *array_0
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                          new_var temp_78_array_ele_95:i32 
              #                          temp_78_array_ele_95 = load temp_77_array_ptr_95:ptr->i32 
              #                    occupy a3 with temp_77_array_ptr_95
              #                    occupy s1 with temp_78_array_ele_95
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_79_cmp_95:i1 
              #                          temp_79_cmp_95 = icmp i32 Ne temp_78_array_ele_95, -1_0 
              #                    occupy s1 with temp_78_array_ele_95
              #                    occupy s2 with -1_0
    li      s2, -1
              #                    occupy s3 with temp_79_cmp_95
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_80_logic_95:i1 
              #                          temp_80_logic_95 = And i1 temp_79_cmp_95, temp_76_cmp_95 
              #                    occupy s3 with temp_79_cmp_95
              #                    occupy a2 with temp_76_cmp_95
              #                    occupy s4 with temp_80_logic_95
    and     s4,s3,a2
              #                    free s3
              #                    free a2
              #                    free s4
              #                          new_var temp_81_array_ptr_95:ptr->i32 
              #                          temp_81_array_ptr_95 = getelementptr *array_0:ptr->i32 [Some(0_0)] 
              #                    occupy s5 with temp_81_array_ptr_95
    li      s5, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a4,s6
              #                    free a4
              #                    free s6
    add     s5,s5,s7
              #                    free s7
    slli s5,s5,2
              #                    occupy s8 with *array_0
              #                       load label array as ptr to reg
    la      s8, array
              #                    occupy reg s8 with *array_0
    add     s5,s5,s8
              #                    free s8
              #                    free s5
              #                          new_var temp_82_array_ele_95:i32 
              #                          temp_82_array_ele_95 = load temp_81_array_ptr_95:ptr->i32 
              #                    occupy s5 with temp_81_array_ptr_95
              #                    occupy s9 with temp_82_array_ele_95
    lw      s9,0(s5)
              #                    free s9
              #                    free s5
              #                          new_var temp_83_cmp_95:i1 
              #                          temp_83_cmp_95 = icmp i32 Ne temp_82_array_ele_95, -1_0 
              #                    occupy s9 with temp_82_array_ele_95
              #                    found literal reg Some(s2) already exist with -1_0
              #                    occupy s2 with -1_0
              #                    occupy s10 with temp_83_cmp_95
    xor     s10,s9,s2
    snez    s10, s10
              #                    free s9
              #                    free s2
              #                    free s10
              #                          new_var temp_84_logic_95:i1 
              #                          temp_84_logic_95 = And i1 temp_83_cmp_95, temp_80_logic_95 
              #                    occupy s10 with temp_83_cmp_95
              #                    occupy s4 with temp_80_logic_95
              #                    occupy s11 with temp_84_logic_95
    and     s11,s10,s4
              #                    free s10
              #                    free s4
              #                    free s11
              #                          br i1 temp_84_logic_95, label branch_true_96, label branch_false_96 
              #                    occupy s11 with temp_84_logic_95
              #                    free s11
              #                    occupy s11 with temp_84_logic_95
    bnez    s11, .branch_true_96
              #                    free s11
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_findfa_95, tracked: true } |     a1:Freed { symidx: temp_74_ret_of_findfa_95, tracked: true } |     a2:Freed { symidx: temp_76_cmp_95, tracked: true } |     a3:Freed { symidx: temp_77_array_ptr_95, tracked: true } |     a5:Freed { symidx: k_51, tracked: true } |     s10:Freed { symidx: temp_83_cmp_95, tracked: true } |     s11:Freed { symidx: temp_84_logic_95, tracked: true } |     s1:Freed { symidx: temp_78_array_ele_95, tracked: true } |     s3:Freed { symidx: temp_79_cmp_95, tracked: true } |     s4:Freed { symidx: temp_80_logic_95, tracked: true } |     s5:Freed { symidx: temp_81_array_ptr_95, tracked: true } |     s9:Freed { symidx: temp_82_array_ele_95, tracked: true } | 
              #                          label branch_true_96: 
.branch_true_96:
              #                          flag_51 = i32 1_0 
              #                    occupy a4 with flag_51
    li      a4, 1
              #                    free a4
              #                          new_var temp_85_arithop_97:i32 
              #                          temp_85_arithop_97 = Add i32 i_51, 1_0 
              #                    occupy a6 with i_51
              #                    load from i_51 in mem


    lw      a6,308(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_85_arithop_97
    add     s2,a6,a7
              #                    free a6
              #                    free a7
              #                    free s2
              #                          tmp_97 = i32 temp_85_arithop_97 
              #                    occupy s2 with temp_85_arithop_97
              #                    occupy s6 with tmp_97
    mv      s6, s2
              #                    free s2
              #                    free s6
              #                           Call void putint_0(tmp_97) 
              #                    saved register dumping to mem
              #                    store to temp_78_array_ele_95 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_78_array_ele_95
              #                    store to temp_85_arithop_97 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_85_arithop_97
              #                    store to temp_79_cmp_95 in mem offset legal
    sb      s3,35(sp)
              #                    release s3 with temp_79_cmp_95
              #                    store to temp_80_logic_95 in mem offset legal
    sb      s4,34(sp)
              #                    release s4 with temp_80_logic_95
              #                    store to temp_81_array_ptr_95 in mem offset legal
    sd      s5,24(sp)
              #                    release s5 with temp_81_array_ptr_95
              #                    store to tmp_97 in mem offset legal
    sw      s6,8(sp)
              #                    release s6 with tmp_97
              #                    store to temp_82_array_ele_95 in mem offset legal
    sw      s9,20(sp)
              #                    release s9 with temp_82_array_ele_95
              #                    store to temp_83_cmp_95 in mem offset legal
    sb      s10,19(sp)
              #                    release s10 with temp_83_cmp_95
              #                    store to temp_84_logic_95 in mem offset legal
    sb      s11,18(sp)
              #                    release s11 with temp_84_logic_95
              #                    store to temp_75_ret_of_findfa_95 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_75_ret_of_findfa_95
              #                    store to temp_74_ret_of_findfa_95 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with temp_74_ret_of_findfa_95
              #                    store to temp_76_cmp_95 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_76_cmp_95
              #                    store to temp_77_array_ptr_95 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_77_array_ptr_95
              #                    store to flag_51 in mem offset legal
    sw      a4,304(sp)
              #                    release a4 with flag_51
              #                    store to k_51 in mem offset legal
    sw      a5,280(sp)
              #                    release a5 with k_51
              #                    store to i_51 in mem offset legal
    sw      a6,308(sp)
              #                    release a6 with i_51
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_97_0
              #                    load from tmp_97 in mem


    lw      a0,8(sp)
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
              #                          jump label: branch_false_96 
              #                    occupy a3 with _anonymous_of_temp_77_array_ptr_95_0
              #                    load from temp_77_array_ptr_95 in mem
    ld      a3,40(sp)
              #                    occupy s4 with _anonymous_of_temp_80_logic_95_0
              #                    load from temp_80_logic_95 in mem
    lb      s4,34(sp)
              #                    occupy s5 with _anonymous_of_temp_81_array_ptr_95_0
              #                    load from temp_81_array_ptr_95 in mem
    ld      s5,24(sp)
              #                    occupy a2 with _anonymous_of_temp_76_cmp_95_0
              #                    load from temp_76_cmp_95 in mem
    lb      a2,55(sp)
              #                    occupy s3 with _anonymous_of_temp_79_cmp_95_0
              #                    load from temp_79_cmp_95 in mem
    lb      s3,35(sp)
              #                    occupy a5 with _anonymous_of_k_51_0
              #                    load from k_51 in mem


    lw      a5,280(sp)
              #                    occupy a1 with _anonymous_of_temp_74_ret_of_findfa_95_0
              #                    load from temp_74_ret_of_findfa_95 in mem


    lw      a1,60(sp)
              #                    occupy a0 with _anonymous_of_temp_75_ret_of_findfa_95_0
              #                    load from temp_75_ret_of_findfa_95 in mem


    lw      a0,56(sp)
              #                    occupy s9 with _anonymous_of_temp_82_array_ele_95_0
              #                    load from temp_82_array_ele_95 in mem


    lw      s9,20(sp)
              #                    occupy s10 with _anonymous_of_temp_83_cmp_95_0
              #                    load from temp_83_cmp_95 in mem
    lb      s10,19(sp)
              #                    occupy s11 with _anonymous_of_temp_84_logic_95_0
              #                    load from temp_84_logic_95 in mem
    lb      s11,18(sp)
              #                    occupy s1 with _anonymous_of_temp_78_array_ele_95_0
              #                    load from temp_78_array_ele_95 in mem


    lw      s1,36(sp)
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: temp_75_ret_of_findfa_95, tracked: true } |     a1:Freed { symidx: temp_74_ret_of_findfa_95, tracked: true } |     a2:Freed { symidx: temp_76_cmp_95, tracked: true } |     a3:Freed { symidx: temp_77_array_ptr_95, tracked: true } |     a5:Freed { symidx: k_51, tracked: true } |     s10:Freed { symidx: temp_83_cmp_95, tracked: true } |     s11:Freed { symidx: temp_84_logic_95, tracked: true } |     s1:Freed { symidx: temp_78_array_ele_95, tracked: true } |     s3:Freed { symidx: temp_79_cmp_95, tracked: true } |     s4:Freed { symidx: temp_80_logic_95, tracked: true } |     s5:Freed { symidx: temp_81_array_ptr_95, tracked: true } |     s9:Freed { symidx: temp_82_array_ele_95, tracked: true } | 
              #                          label branch_false_96: 
.branch_false_96:
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } | 
              #                          label branch_false_65: 
.branch_false_65:
              #                    regtab     a0:Freed { symidx: temp_27_ret_of_getint_61, tracked: true } |     a1:Freed { symidx: b_45, tracked: true } |     a2:Freed { symidx: flag_51, tracked: true } |     a4:Freed { symidx: temp_28_booltrans_64, tracked: true } |     a5:Freed { symidx: temp_29_logicnot_64, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_86_arithop_61:i32 
              #                          temp_86_arithop_61 = Add i32 i_51, 1_0 
              #                    occupy a3 with i_51
              #                    load from i_51 in mem


    lw      a3,308(sp)
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_86_arithop_61
    add     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          i_51 = i32 temp_86_arithop_61 
              #                    occupy a7 with temp_86_arithop_61
              #                    occupy a3 with i_51
    mv      a3, a7
              #                    free a7
              #                    free a3
              #                          jump label: while.head_60 
              #                    store to i_51 in mem offset legal
    sw      a3,308(sp)
              #                    release a3 with i_51
              #                    store to flag_51 in mem offset legal
    sw      a2,304(sp)
              #                    release a2 with flag_51
              #                    store to temp_29_logicnot_64 in mem offset legal
    sb      a5,266(sp)
              #                    release a5 with temp_29_logicnot_64
              #                    store to b_45 in mem offset legal
    sw      a1,320(sp)
              #                    release a1 with b_45
              #                    store to temp_27_ret_of_getint_61 in mem offset legal
    sw      a0,268(sp)
              #                    release a0 with temp_27_ret_of_getint_61
              #                    store to temp_86_arithop_61 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_86_arithop_61
              #                    store to temp_28_booltrans_64 in mem offset legal
    sb      a4,267(sp)
              #                    release a4 with temp_28_booltrans_64
              #                    occupy a3 with _anonymous_of_temp_22_ptr2globl_51_0
              #                    load from temp_22_ptr2globl_51 in mem


    lw      a3,292(sp)
              #                    occupy a1 with _anonymous_of_temp_21_ptr2globl_51_0
              #                    load from temp_21_ptr2globl_51 in mem


    lw      a1,296(sp)
              #                    occupy a7 with _anonymous_of_k_51_0
              #                    load from k_51 in mem


    lw      a7,280(sp)
              #                    occupy a4 with _anonymous_of_temp_23_arithop_51_0
              #                    load from temp_23_arithop_51 in mem


    lw      a4,288(sp)
              #                    occupy a6 with _anonymous_of_temp_24_arithop_51_0
              #                    load from temp_24_arithop_51 in mem


    lw      a6,284(sp)
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: temp_21_ptr2globl_51, tracked: true } |     a2:Freed { symidx: m_45, tracked: true } |     a3:Freed { symidx: temp_22_ptr2globl_51, tracked: true } |     a4:Freed { symidx: temp_23_arithop_51, tracked: true } |     a5:Freed { symidx: temp_25_cmp_59, tracked: true } |     a6:Freed { symidx: temp_24_arithop_51, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } | 
              #                          label while.exit_60: 
.while.exit_60:
              #                          new_var temp_87_booltrans_103:i1 
              #                          temp_87_booltrans_103 = icmp i1 Ne flag_51, 0_0 
              #                    occupy s1 with flag_51
              #                    load from flag_51 in mem


    lw      s1,304(sp)
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_87_booltrans_103
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_88_logicnot_103:i1 
              #                          temp_88_logicnot_103 = xor i1 temp_87_booltrans_103, true 
              #                    occupy s3 with temp_87_booltrans_103
              #                    occupy s4 with temp_88_logicnot_103
    seqz    s4, s3
              #                    free s3
              #                    free s4
              #                          br i1 temp_88_logicnot_103, label branch_true_104, label branch_false_104 
              #                    occupy s4 with temp_88_logicnot_103
              #                    free s4
              #                    occupy s4 with temp_88_logicnot_103
    bnez    s4, .branch_true_104
              #                    free s4
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: temp_21_ptr2globl_51, tracked: true } |     a2:Freed { symidx: m_45, tracked: true } |     a3:Freed { symidx: temp_22_ptr2globl_51, tracked: true } |     a4:Freed { symidx: temp_23_arithop_51, tracked: true } |     a5:Freed { symidx: temp_25_cmp_59, tracked: true } |     a6:Freed { symidx: temp_24_arithop_51, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } |     s1:Freed { symidx: flag_51, tracked: true } |     s3:Freed { symidx: temp_87_booltrans_103, tracked: true } |     s4:Freed { symidx: temp_88_logicnot_103, tracked: true } | 
              #                          label branch_true_104: 
.branch_true_104:
              #                           Call void putint_0(-1_0) 
              #                    saved register dumping to mem
              #                    store to flag_51 in mem offset legal
    sw      s1,304(sp)
              #                    release s1 with flag_51
              #                    store to temp_87_booltrans_103 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_87_booltrans_103
              #                    store to temp_88_logicnot_103 in mem offset legal
    sb      s4,2(sp)
              #                    release s4 with temp_88_logicnot_103
              #                    store to i_51 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with i_51
              #                    store to temp_21_ptr2globl_51 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with temp_21_ptr2globl_51
              #                    store to m_45 in mem offset legal
    sw      a2,328(sp)
              #                    release a2 with m_45
              #                    store to temp_22_ptr2globl_51 in mem offset legal
    sw      a3,292(sp)
              #                    release a3 with temp_22_ptr2globl_51
              #                    store to temp_23_arithop_51 in mem offset legal
    sw      a4,288(sp)
              #                    release a4 with temp_23_arithop_51
              #                    store to temp_25_cmp_59 in mem offset legal
    sb      a5,279(sp)
              #                    release a5 with temp_25_cmp_59
              #                    store to temp_24_arithop_51 in mem offset legal
    sw      a6,284(sp)
              #                    release a6 with temp_24_arithop_51
              #                    store to k_51 in mem offset legal
    sw      a7,280(sp)
              #                    release a7 with k_51
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
              #                          jump label: branch_false_104 
              #                    occupy a3 with _anonymous_of_temp_22_ptr2globl_51_0
              #                    load from temp_22_ptr2globl_51 in mem


    lw      a3,292(sp)
              #                    occupy s4 with _anonymous_of_temp_88_logicnot_103_0
              #                    load from temp_88_logicnot_103 in mem
    lb      s4,2(sp)
              #                    occupy a2 with _anonymous_of_m_45_0
              #                    load from m_45 in mem


    lw      a2,328(sp)
              #                    occupy s3 with _anonymous_of_temp_87_booltrans_103_0
              #                    load from temp_87_booltrans_103 in mem
    lb      s3,3(sp)
              #                    occupy a5 with _anonymous_of_temp_25_cmp_59_0
              #                    load from temp_25_cmp_59 in mem
    lb      a5,279(sp)
              #                    occupy a1 with _anonymous_of_temp_21_ptr2globl_51_0
              #                    load from temp_21_ptr2globl_51 in mem


    lw      a1,296(sp)
              #                    occupy a0 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a0,308(sp)
              #                    occupy a7 with _anonymous_of_k_51_0
              #                    load from k_51 in mem


    lw      a7,280(sp)
              #                    occupy a4 with _anonymous_of_temp_23_arithop_51_0
              #                    load from temp_23_arithop_51 in mem


    lw      a4,288(sp)
              #                    occupy s1 with _anonymous_of_flag_51_0
              #                    load from flag_51 in mem


    lw      s1,304(sp)
              #                    occupy a6 with _anonymous_of_temp_24_arithop_51_0
              #                    load from temp_24_arithop_51 in mem


    lw      a6,284(sp)
    j       .branch_false_104
              #                    regtab     a0:Freed { symidx: i_51, tracked: true } |     a1:Freed { symidx: temp_21_ptr2globl_51, tracked: true } |     a2:Freed { symidx: m_45, tracked: true } |     a3:Freed { symidx: temp_22_ptr2globl_51, tracked: true } |     a4:Freed { symidx: temp_23_arithop_51, tracked: true } |     a5:Freed { symidx: temp_25_cmp_59, tracked: true } |     a6:Freed { symidx: temp_24_arithop_51, tracked: true } |     a7:Freed { symidx: k_51, tracked: true } |     s1:Freed { symidx: flag_51, tracked: true } |     s3:Freed { symidx: temp_87_booltrans_103, tracked: true } |     s4:Freed { symidx: temp_88_logicnot_103, tracked: true } | 
              #                          label branch_false_104: 
.branch_false_104:
              #                          jump label: while.head_50 
              #                    store to temp_22_ptr2globl_51 in mem offset legal
    sw      a3,292(sp)
              #                    release a3 with temp_22_ptr2globl_51
              #                    store to temp_88_logicnot_103 in mem offset legal
    sb      s4,2(sp)
              #                    release s4 with temp_88_logicnot_103
              #                    store to m_45 in mem offset legal
    sw      a2,328(sp)
              #                    release a2 with m_45
              #                    store to temp_87_booltrans_103 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_87_booltrans_103
              #                    store to temp_25_cmp_59 in mem offset legal
    sb      a5,279(sp)
              #                    release a5 with temp_25_cmp_59
              #                    store to temp_21_ptr2globl_51 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with temp_21_ptr2globl_51
              #                    store to i_51 in mem offset legal
    sw      a0,308(sp)
              #                    release a0 with i_51
              #                    store to k_51 in mem offset legal
    sw      a7,280(sp)
              #                    release a7 with k_51
              #                    store to temp_23_arithop_51 in mem offset legal
    sw      a4,288(sp)
              #                    release a4 with temp_23_arithop_51
              #                    store to flag_51 in mem offset legal
    sw      s1,304(sp)
              #                    release s1 with flag_51
              #                    store to temp_24_arithop_51 in mem offset legal
    sw      a6,284(sp)
              #                    release a6 with temp_24_arithop_51
              #                    occupy a0 with _anonymous_of_t_45_0
              #                    load from t_45 in mem


    lw      a0,332(sp)
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: t_45, tracked: true } |     a2:Freed { symidx: temp_18__800, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,344(sp)
              #                    load from s0_main_0 in mem
    ld      s0,336(sp)
              #                    store to t_45 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with t_45
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,352
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_18__800, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl array
              #                          global Array:i32:[Some(110_0)] array_0 
    .type array,@object
array:
    .zero 440
