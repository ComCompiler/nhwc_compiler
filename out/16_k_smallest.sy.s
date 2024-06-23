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
              #                          Define swap_0 [i_19, j_19] -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
              #                    mem layout:|ra_swap:8 at 64|s0_swap:8 at 56|i:4 at 52|j:4 at 48|temp_0_array_ptr:8 at 40|temp_1_array_ele:4 at 36|tmp:4 at 32|temp_2_index_ptr:8 at 24|temp_3_array_ptr:8 at 16|temp_4_array_ele:4 at 12|none:4 at 8|temp_5_index_ptr:8 at 0
    addi    sp,sp,-72
              #                    store to ra_swap_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_swap_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc ptr->i32 temp_0_array_ptr_21 
              #                          alloc i32 temp_1_array_ele_21 
              #                          alloc i32 tmp_21 
              #                          alloc ptr->i32 temp_2_index_ptr_21 
              #                          alloc ptr->i32 temp_3_array_ptr_21 
              #                          alloc i32 temp_4_array_ele_21 
              #                          alloc ptr->i32 temp_5_index_ptr_21 
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: j_19, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_0_array_ptr_21:ptr->i32 
              #                          temp_0_array_ptr_21 = getelementptr *array_0:ptr->i32 [Some(i_19)] 
              #                    occupy a2 with temp_0_array_ptr_21
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with i_19
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_1_array_ele_21:i32 
              #                          temp_1_array_ele_21 = load temp_0_array_ptr_21:ptr->i32 
              #                    occupy a2 with temp_0_array_ptr_21
              #                    occupy a6 with temp_1_array_ele_21
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          tmp_21 = i32 temp_1_array_ele_21 
              #                    occupy a6 with temp_1_array_ele_21
              #                    occupy a7 with tmp_21
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          new_var temp_2_index_ptr_21:ptr->i32 
              #                          temp_2_index_ptr_21 = getelementptr *array_0:ptr->i32 [Some(i_19)] 
              #                    occupy s1 with temp_2_index_ptr_21
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a0 with i_19
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
              #                          new_var temp_3_array_ptr_21:ptr->i32 
              #                          temp_3_array_ptr_21 = getelementptr *array_0:ptr->i32 [Some(j_19)] 
              #                    occupy s4 with temp_3_array_ptr_21
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with j_19
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a3,a1
              #                    free a3
              #                    free a1
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *array_0
              #                       load label array as ptr to reg
    la      s6, array
              #                    occupy reg s6 with *array_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_4_array_ele_21:i32 
              #                          temp_4_array_ele_21 = load temp_3_array_ptr_21:ptr->i32 
              #                    occupy s4 with temp_3_array_ptr_21
              #                    occupy s7 with temp_4_array_ele_21
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          store temp_4_array_ele_21:i32 temp_2_index_ptr_21:ptr->i32 
              #                    occupy s1 with temp_2_index_ptr_21
              #                    occupy s7 with temp_4_array_ele_21
    sw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          mu *array_0:42 
              #                          *array_0 = chi *array_0:42 
              #                          new_var temp_5_index_ptr_21:ptr->i32 
              #                          temp_5_index_ptr_21 = getelementptr *array_0:ptr->i32 [Some(j_19)] 
              #                    occupy s8 with temp_5_index_ptr_21
    li      s8, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with j_19
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a3,a1
              #                    free a3
              #                    free a1
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *array_0
              #                       load label array as ptr to reg
    la      s10, array
              #                    occupy reg s10 with *array_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store tmp_21:i32 temp_5_index_ptr_21:ptr->i32 
              #                    occupy s8 with temp_5_index_ptr_21
              #                    occupy a7 with tmp_21
    sw      a7,0(s8)
              #                    free a7
              #                    free s8
              #                          mu *array_0:48 
              #                          *array_0 = chi *array_0:48 
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a1:Freed { symidx: j_19, tracked: true } |     a2:Freed { symidx: temp_0_array_ptr_21, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_21, tracked: true } |     a7:Freed { symidx: tmp_21, tracked: true } |     s1:Freed { symidx: temp_2_index_ptr_21, tracked: true } |     s4:Freed { symidx: temp_3_array_ptr_21, tracked: true } |     s7:Freed { symidx: temp_4_array_ele_21, tracked: true } |     s8:Freed { symidx: temp_5_index_ptr_21, tracked: true } | 
              #                    regtab 
              #                          Define findPivot_0 [start_25, end_25] -> findPivot_ret_0 
    .globl findPivot
    .type findPivot,@function
findPivot:
              #                    mem layout:|ra_findPivot:8 at 72|s0_findPivot:8 at 64|start:4 at 60|end:4 at 56|temp_6_array_ptr:8 at 48|temp_7_array_ele:4 at 44|pivot:4 at 40|pIndex:4 at 36|i:4 at 32|temp_8_cmp:1 at 31|none:7 at 24|temp_9_array_ptr:8 at 16|temp_10_array_ele:4 at 12|temp_11_cmp:1 at 11|none:3 at 8|temp_12_arithop:4 at 4|temp_13_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_findPivot_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_findPivot_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc ptr->i32 temp_6_array_ptr_27 
              #                          alloc i32 temp_7_array_ele_27 
              #                          alloc i32 pivot_27 
              #                          alloc i32 pIndex_27 
              #                          alloc i32 i_27 
              #                          alloc i1 temp_8_cmp_30 
              #                          alloc ptr->i32 temp_9_array_ptr_33 
              #                          alloc i32 temp_10_array_ele_33 
              #                          alloc i1 temp_11_cmp_33 
              #                          alloc i32 temp_12_arithop_35 
              #                          alloc i32 temp_13_arithop_32 
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_6_array_ptr_27:ptr->i32 
              #                          temp_6_array_ptr_27 = getelementptr *array_0:ptr->i32 [Some(end_25)] 
              #                    occupy a2 with temp_6_array_ptr_27
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a1 with end_25
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *array_0
              #                       load label array as ptr to reg
    la      a5, array
              #                    occupy reg a5 with *array_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_7_array_ele_27:i32 
              #                          temp_7_array_ele_27 = load temp_6_array_ptr_27:ptr->i32 
              #                    occupy a2 with temp_6_array_ptr_27
              #                    occupy a6 with temp_7_array_ele_27
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          pivot_27 = i32 temp_7_array_ele_27 
              #                    occupy a6 with temp_7_array_ele_27
              #                    occupy a7 with pivot_27
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          pIndex_27 = i32 start_25 
              #                    occupy a0 with start_25
              #                    occupy s1 with pIndex_27
    mv      s1, a0
              #                    free a0
              #                    free s1
              #                          i_27 = i32 start_25 
              #                    occupy a0 with start_25
              #                    occupy s2 with i_27
    mv      s2, a0
              #                    free a0
              #                    free s2
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } | 
              #                          label while.head_31: 
.while.head_31:
              #                          new_var temp_8_cmp_30:i1 
              #                          temp_8_cmp_30 = icmp i32 Slt i_27, end_25 
              #                    occupy s2 with i_27
              #                    occupy a1 with end_25
              #                    occupy a3 with temp_8_cmp_30
    slt     a3,s2,a1
              #                    free s2
              #                    free a1
              #                    free a3
              #                          br i1 temp_8_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a3 with temp_8_cmp_30
              #                    free a3
              #                    occupy a3 with temp_8_cmp_30
    bnez    a3, .while.body_31
              #                    free a3
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a3:Freed { symidx: temp_8_cmp_30, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_9_array_ptr_33:ptr->i32 
              #                          temp_9_array_ptr_33 = getelementptr *array_0:ptr->i32 [Some(i_27)] 
              #                    occupy a4 with temp_9_array_ptr_33
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s2 with i_27
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a5,s2
              #                    free a5
              #                    free s2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
              #                    occupy s4 with *array_0
              #                       load label array as ptr to reg
    la      s4, array
              #                    occupy reg s4 with *array_0
    add     a4,a4,s4
              #                    free s4
              #                    free a4
              #                          new_var temp_10_array_ele_33:i32 
              #                          temp_10_array_ele_33 = load temp_9_array_ptr_33:ptr->i32 
              #                    occupy a4 with temp_9_array_ptr_33
              #                    occupy s5 with temp_10_array_ele_33
    lw      s5,0(a4)
              #                    free s5
              #                    free a4
              #                          new_var temp_11_cmp_33:i1 
              #                          temp_11_cmp_33 = icmp i32 Sle temp_10_array_ele_33, pivot_27 
              #                    occupy s5 with temp_10_array_ele_33
              #                    occupy a7 with pivot_27
              #                    occupy s6 with temp_11_cmp_33
    slt     s6,a7,s5
    xori    s6,s6,1
              #                    free s5
              #                    free a7
              #                    free s6
              #                          br i1 temp_11_cmp_33, label branch_true_34, label branch_false_34 
              #                    occupy s6 with temp_11_cmp_33
              #                    free s6
              #                    occupy s6 with temp_11_cmp_33
    bnez    s6, .branch_true_34
              #                    free s6
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a3:Freed { symidx: temp_8_cmp_30, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } |     s5:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s6:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label branch_true_34: 
.branch_true_34:
              #                           Call void swap_0(i_27, pIndex_27) 
              #                    saved register dumping to mem
              #                    store to pIndex_27 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with pIndex_27
              #                    store to i_27 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with i_27
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_10_array_ele_33
              #                    store to temp_11_cmp_33 in mem offset legal
    sb      s6,11(sp)
              #                    release s6 with temp_11_cmp_33
              #                    store to start_25 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with start_25
              #                    store to end_25 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with end_25
              #                    store to temp_6_array_ptr_27 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_6_array_ptr_27
              #                    store to temp_8_cmp_30 in mem offset legal
    sb      a3,31(sp)
              #                    release a3 with temp_8_cmp_30
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_9_array_ptr_33
              #                    store to temp_7_array_ele_27 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_7_array_ele_27
              #                    store to pivot_27 in mem offset legal
    sw      a7,40(sp)
              #                    release a7 with pivot_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_27_0
              #                    load from i_27 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    swap
              #                          new_var temp_12_arithop_35:i32 
              #                          temp_12_arithop_35 = Add i32 pIndex_27, 1_0 
              #                    occupy a0 with pIndex_27
              #                    load from pIndex_27 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_12_arithop_35
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          pIndex_27 = i32 temp_12_arithop_35 
              #                    occupy a2 with temp_12_arithop_35
              #                    occupy a0 with pIndex_27
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: branch_false_34 
              #                    store to pIndex_27 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with pIndex_27
              #                    store to temp_12_arithop_35 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_12_arithop_35
              #                    occupy s1 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem


    lw      s1,36(sp)
              #                    occupy s5 with _anonymous_of_temp_10_array_ele_33_0
              #                    load from temp_10_array_ele_33 in mem


    lw      s5,12(sp)
              #                    occupy a4 with _anonymous_of_temp_9_array_ptr_33_0
              #                    load from temp_9_array_ptr_33 in mem
    ld      a4,16(sp)
              #                    occupy s6 with _anonymous_of_temp_11_cmp_33_0
              #                    load from temp_11_cmp_33 in mem
    lb      s6,11(sp)
              #                    occupy a1 with _anonymous_of_end_25_0
              #                    load from end_25 in mem


    lw      a1,56(sp)
              #                    occupy a6 with _anonymous_of_temp_7_array_ele_27_0
              #                    load from temp_7_array_ele_27 in mem


    lw      a6,44(sp)
              #                    occupy a0 with _anonymous_of_start_25_0
              #                    load from start_25 in mem


    lw      a0,60(sp)
              #                    occupy s2 with _anonymous_of_i_27_0
              #                    load from i_27 in mem


    lw      s2,32(sp)
              #                    occupy a7 with _anonymous_of_pivot_27_0
              #                    load from pivot_27 in mem


    lw      a7,40(sp)
              #                    occupy a2 with _anonymous_of_temp_6_array_ptr_27_0
              #                    load from temp_6_array_ptr_27 in mem
    ld      a2,48(sp)
              #                    occupy a3 with _anonymous_of_temp_8_cmp_30_0
              #                    load from temp_8_cmp_30 in mem
    lb      a3,31(sp)
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a3:Freed { symidx: temp_8_cmp_30, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } |     s5:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s6:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label branch_false_34: 
.branch_false_34:
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a3:Freed { symidx: temp_8_cmp_30, tracked: true } |     a4:Freed { symidx: temp_9_array_ptr_33, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } |     s5:Freed { symidx: temp_10_array_ele_33, tracked: true } |     s6:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_13_arithop_32:i32 
              #                          temp_13_arithop_32 = Add i32 i_27, 1_0 
              #                    occupy s2 with i_27
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s3 with temp_13_arithop_32
    add     s3,s2,a5
              #                    free s2
              #                    free a5
              #                    free s3
              #                          i_27 = i32 temp_13_arithop_32 
              #                    occupy s3 with temp_13_arithop_32
              #                    occupy s2 with i_27
    mv      s2, s3
              #                    free s3
              #                    free s2
              #                          jump label: while.head_31 
              #                    store to temp_10_array_ele_33 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_10_array_ele_33
              #                    store to temp_9_array_ptr_33 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_9_array_ptr_33
              #                    store to temp_13_arithop_32 in mem offset legal
    sw      s3,0(sp)
              #                    release s3 with temp_13_arithop_32
              #                    store to temp_11_cmp_33 in mem offset legal
    sb      s6,11(sp)
              #                    release s6 with temp_11_cmp_33
              #                    store to temp_8_cmp_30 in mem offset legal
    sb      a3,31(sp)
              #                    release a3 with temp_8_cmp_30
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: start_25, tracked: true } |     a1:Freed { symidx: end_25, tracked: true } |     a2:Freed { symidx: temp_6_array_ptr_27, tracked: true } |     a3:Freed { symidx: temp_8_cmp_30, tracked: true } |     a6:Freed { symidx: temp_7_array_ele_27, tracked: true } |     a7:Freed { symidx: pivot_27, tracked: true } |     s1:Freed { symidx: pIndex_27, tracked: true } |     s2:Freed { symidx: i_27, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                           Call void swap_0(pIndex_27, end_25) 
              #                    saved register dumping to mem
              #                    store to pIndex_27 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with pIndex_27
              #                    store to i_27 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with i_27
              #                    store to start_25 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with start_25
              #                    store to end_25 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with end_25
              #                    store to temp_6_array_ptr_27 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_6_array_ptr_27
              #                    store to temp_8_cmp_30 in mem offset legal
    sb      a3,31(sp)
              #                    release a3 with temp_8_cmp_30
              #                    store to temp_7_array_ele_27 in mem offset legal
    sw      a6,44(sp)
              #                    release a6 with temp_7_array_ele_27
              #                    store to pivot_27 in mem offset legal
    sw      a7,40(sp)
              #                    release a7 with pivot_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_pIndex_27_0
              #                    load from pIndex_27 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_end_25_0
              #                    load from end_25 in mem


    lw      a1,56(sp)
              #                    arg load ended


    call    swap
              #                          ret pIndex_27 
              #                    load from ra_findPivot_0 in mem
    ld      ra,72(sp)
              #                    load from s0_findPivot_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with pIndex_27
              #                    load from pIndex_27 in mem


    lw      a0,36(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab 
              #                    regtab 
              #                          Define findSmallest_0 [low_41, high_41, k_41, n_41] -> findSmallest_ret_0 
    .globl findSmallest
    .type findSmallest,@function
findSmallest:
              #                    mem layout:|ra_findSmallest:8 at 80|s0_findSmallest:8 at 72|low:4 at 68|high:4 at 64|k:4 at 60|n:4 at 56|temp_14_cmp:1 at 55|none:3 at 52|temp_15_ret_of_findPivot:4 at 48|pIndex:4 at 44|temp_16_cmp:1 at 43|none:3 at 40|i:4 at 36|temp_17_cmp:1 at 35|none:3 at 32|temp_18_array_ptr:8 at 24|temp_19_array_ele:4 at 20|temp_20_arithop:4 at 16|temp_21_cmp:1 at 15|none:3 at 12|temp_22_arithop:4 at 8|temp_23_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-88
              #                    store to ra_findSmallest_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_findSmallest_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc i1 temp_14_cmp_44 
              #                          alloc i32 temp_15_ret_of_findPivot_47 
              #                          alloc i32 pIndex_47 
              #                          alloc i1 temp_16_cmp_49 
              #                          alloc i32 i_51 
              #                          alloc i1 temp_17_cmp_53 
              #                          alloc ptr->i32 temp_18_array_ptr_55 
              #                          alloc i32 temp_19_array_ele_55 
              #                          alloc i32 temp_20_arithop_55 
              #                          alloc i1 temp_21_cmp_59 
              #                          alloc i32 temp_22_arithop_61 
              #                          alloc i32 temp_23_arithop_63 
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_14_cmp_44:i1 
              #                          temp_14_cmp_44 = icmp i32 Eq low_41, high_41 
              #                    occupy a0 with low_41
              #                    occupy a1 with high_41
              #                    occupy a4 with temp_14_cmp_44
    xor     a4,a0,a1
    seqz    a4, a4
              #                    free a0
              #                    free a1
              #                    free a4
              #                          br i1 temp_14_cmp_44, label branch_true_45, label branch_false_45 
              #                    occupy a4 with temp_14_cmp_44
              #                    free a4
              #                    occupy a4 with temp_14_cmp_44
    bnez    a4, .branch_true_45
              #                    free a4
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } |     a4:Freed { symidx: temp_14_cmp_44, tracked: true } | 
              #                          label branch_true_45: 
.branch_true_45:
              #                          ret 
              #                    load from ra_findSmallest_0 in mem
    ld      ra,80(sp)
              #                    load from s0_findSmallest_0 in mem
    ld      s0,72(sp)
    addi    sp,sp,88
    ret
              #                    regtab     a0:Freed { symidx: low_41, tracked: true } |     a1:Freed { symidx: high_41, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: n_41, tracked: true } |     a4:Freed { symidx: temp_14_cmp_44, tracked: true } | 
              #                          label branch_false_45: 
.branch_false_45:
              #                          new_var temp_15_ret_of_findPivot_47:i32 
              #                          temp_15_ret_of_findPivot_47 =  Call i32 findPivot_0(low_41, high_41) 
              #                    saved register dumping to mem
              #                    store to low_41 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with low_41
              #                    store to high_41 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with high_41
              #                    store to k_41 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with k_41
              #                    store to n_41 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with n_41
              #                    store to temp_14_cmp_44 in mem offset legal
    sb      a4,55(sp)
              #                    release a4 with temp_14_cmp_44
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0
              #                    load from low_41 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_high_41_0
              #                    load from high_41 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    findPivot
              #                    store to temp_15_ret_of_findPivot_47 in mem offset legal
    sw      a0,48(sp)
              #                          pIndex_47 = i32 temp_15_ret_of_findPivot_47 
              #                    occupy a0 with temp_15_ret_of_findPivot_47
              #                    occupy a1 with pIndex_47
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_16_cmp_49:i1 
              #                          temp_16_cmp_49 = icmp i32 Eq k_41, pIndex_47 
              #                    occupy a2 with k_41
              #                    load from k_41 in mem


    lw      a2,60(sp)
              #                    occupy a1 with pIndex_47
              #                    occupy a3 with temp_16_cmp_49
    xor     a3,a2,a1
    seqz    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_16_cmp_49, label branch_true_50, label branch_false_50 
              #                    occupy a3 with temp_16_cmp_49
              #                    free a3
              #                    occupy a3 with temp_16_cmp_49
    bnez    a3, .branch_true_50
              #                    free a3
    j       .branch_false_50
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } | 
              #                          label branch_true_50: 
.branch_true_50:
              #                          i_51 = i32 0_0 
              #                    occupy a4 with i_51
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: i_51, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_17_cmp_53:i1 
              #                          temp_17_cmp_53 = icmp i32 Slt i_51, pIndex_47 
              #                    occupy a4 with i_51
              #                    occupy a1 with pIndex_47
              #                    occupy a5 with temp_17_cmp_53
    slt     a5,a4,a1
              #                    free a4
              #                    free a1
              #                    free a5
              #                          br i1 temp_17_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a5 with temp_17_cmp_53
              #                    free a5
              #                    occupy a5 with temp_17_cmp_53
    bnez    a5, .while.body_54
              #                    free a5
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: i_51, tracked: true } |     a5:Freed { symidx: temp_17_cmp_53, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var temp_18_array_ptr_55:ptr->i32 
              #                          temp_18_array_ptr_55 = getelementptr *array_0:ptr->i32 [Some(i_51)] 
              #                    occupy a6 with temp_18_array_ptr_55
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a4 with i_51
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a7,a4
              #                    free a7
              #                    free a4
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *array_0
              #                       load label array as ptr to reg
    la      s2, array
              #                    occupy reg s2 with *array_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                          new_var temp_19_array_ele_55:i32 
              #                          temp_19_array_ele_55 = load temp_18_array_ptr_55:ptr->i32 
              #                    occupy a6 with temp_18_array_ptr_55
              #                    occupy s3 with temp_19_array_ele_55
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                           Call void putint_0(temp_19_array_ele_55) 
              #                    saved register dumping to mem
              #                    store to temp_19_array_ele_55 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_19_array_ele_55
              #                    store to temp_15_ret_of_findPivot_47 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_15_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with k_41
              #                    store to temp_16_cmp_49 in mem offset legal
    sb      a3,43(sp)
              #                    release a3 with temp_16_cmp_49
              #                    store to i_51 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with i_51
              #                    store to temp_17_cmp_53 in mem offset legal
    sb      a5,35(sp)
              #                    release a5 with temp_17_cmp_53
              #                    store to temp_18_array_ptr_55 in mem offset legal
    sd      a6,24(sp)
              #                    release a6 with temp_18_array_ptr_55
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_array_ele_55_0
              #                    load from temp_19_array_ele_55 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_20_arithop_55:i32 
              #                          temp_20_arithop_55 = Add i32 i_51, 1_0 
              #                    occupy a0 with i_51
              #                    load from i_51 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_20_arithop_55
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_51 = i32 temp_20_arithop_55 
              #                    occupy a2 with temp_20_arithop_55
              #                    occupy a0 with i_51
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    store to temp_20_arithop_55 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_20_arithop_55
              #                    store to i_51 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_51
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem


    lw      a2,60(sp)
              #                    occupy a3 with _anonymous_of_temp_16_cmp_49_0
              #                    load from temp_16_cmp_49 in mem
    lb      a3,43(sp)
              #                    occupy a0 with _anonymous_of_temp_15_ret_of_findPivot_47_0
              #                    load from temp_15_ret_of_findPivot_47 in mem


    lw      a0,48(sp)
              #                    occupy a1 with _anonymous_of_pIndex_47_0
              #                    load from pIndex_47 in mem


    lw      a1,44(sp)
              #                    occupy a4 with _anonymous_of_i_51_0
              #                    load from i_51 in mem


    lw      a4,36(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } | 
              #                          label branch_false_50: 
.branch_false_50:
              #                          new_var temp_21_cmp_59:i1 
              #                          temp_21_cmp_59 = icmp i32 Slt k_41, pIndex_47 
              #                    occupy a2 with k_41
              #                    occupy a1 with pIndex_47
              #                    occupy a4 with temp_21_cmp_59
    slt     a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                          br i1 temp_21_cmp_59, label branch_true_60, label branch_false_60 
              #                    occupy a4 with temp_21_cmp_59
              #                    free a4
              #                    occupy a4 with temp_21_cmp_59
    bnez    a4, .branch_true_60
              #                    free a4
    j       .branch_false_60
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: temp_21_cmp_59, tracked: true } | 
              #                          label branch_true_60: 
.branch_true_60:
              #                          new_var temp_22_arithop_61:i32 
              #                          temp_22_arithop_61 = Sub i32 pIndex_47, 1_0 
              #                    occupy a1 with pIndex_47
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_22_arithop_61
              #                    regtab:    a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Occupied { symidx: pIndex_47, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: temp_21_cmp_59, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_22_arithop_61, tracked: true, occupy_count: 1 } | 


    sub     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                           Call void findSmallest_0(low_41, temp_22_arithop_61, k_41, n_41) 
              #                    saved register dumping to mem
              #                    store to temp_15_ret_of_findPivot_47 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_15_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with k_41
              #                    store to temp_16_cmp_49 in mem offset legal
    sb      a3,43(sp)
              #                    release a3 with temp_16_cmp_49
              #                    store to temp_21_cmp_59 in mem offset legal
    sb      a4,15(sp)
              #                    release a4 with temp_21_cmp_59
              #                    store to temp_22_arithop_61 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_22_arithop_61
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_41_0
              #                    load from low_41 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_temp_22_arithop_61_0
              #                    load from temp_22_arithop_61 in mem


    lw      a1,8(sp)
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem


    lw      a2,60(sp)
              #                    occupy a3 with _anonymous_of_n_41_0
              #                    load from n_41 in mem


    lw      a3,56(sp)
              #                    arg load ended


    call    findSmallest
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: temp_21_cmp_59, tracked: true } | 
              #                          label branch_false_60: 
.branch_false_60:
              #                          new_var temp_23_arithop_63:i32 
              #                          temp_23_arithop_63 = Add i32 pIndex_47, 1_0 
              #                    occupy a1 with pIndex_47
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_23_arithop_63
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                           Call void findSmallest_0(temp_23_arithop_63, high_41, k_41, n_41) 
              #                    saved register dumping to mem
              #                    store to temp_15_ret_of_findPivot_47 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_15_ret_of_findPivot_47
              #                    store to pIndex_47 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with pIndex_47
              #                    store to k_41 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with k_41
              #                    store to temp_16_cmp_49 in mem offset legal
    sb      a3,43(sp)
              #                    release a3 with temp_16_cmp_49
              #                    store to temp_21_cmp_59 in mem offset legal
    sb      a4,15(sp)
              #                    release a4 with temp_21_cmp_59
              #                    store to temp_23_arithop_63 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_23_arithop_63
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_arithop_63_0
              #                    load from temp_23_arithop_63 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_high_41_0
              #                    load from high_41 in mem


    lw      a1,64(sp)
              #                    occupy a2 with _anonymous_of_k_41_0
              #                    load from k_41 in mem


    lw      a2,60(sp)
              #                    occupy a3 with _anonymous_of_n_41_0
              #                    load from n_41 in mem


    lw      a3,56(sp)
              #                    arg load ended


    call    findSmallest
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: i_51, tracked: true } |     a5:Freed { symidx: temp_17_cmp_53, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: i_51, tracked: true } |     a5:Freed { symidx: temp_17_cmp_53, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_findPivot_47, tracked: true } |     a1:Freed { symidx: pIndex_47, tracked: true } |     a2:Freed { symidx: k_41, tracked: true } |     a3:Freed { symidx: temp_16_cmp_49, tracked: true } |     a4:Freed { symidx: i_51, tracked: true } |     a5:Freed { symidx: temp_17_cmp_53, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_24_ret_of_getint:4 at 52|n:4 at 48|temp_25_ret_of_getint:4 at 44|k:4 at 40|i:4 at 36|temp_26_cmp:1 at 35|none:3 at 32|temp_27_index_ptr:8 at 24|temp_28_ret_of_getint:4 at 20|temp_29_arithop:4 at 16|low:4 at 12|temp_30_arithop:4 at 8|high:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_24_ret_of_getint_66 
              #                          alloc i32 n_66 
              #                          alloc i32 temp_25_ret_of_getint_66 
              #                          alloc i32 k_66 
              #                          alloc i32 i_66 
              #                          alloc i1 temp_26_cmp_69 
              #                          alloc ptr->i32 temp_27_index_ptr_71 
              #                          alloc i32 temp_28_ret_of_getint_71 
              #                          alloc i32 temp_29_arithop_71 
              #                          alloc i32 low_66 
              #                          alloc i32 temp_30_arithop_66 
              #                          alloc i32 high_66 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_24_ret_of_getint_66:i32 
              #                          temp_24_ret_of_getint_66 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_24_ret_of_getint_66 in mem offset legal
    sw      a0,52(sp)
              #                          n_66 = i32 temp_24_ret_of_getint_66 
              #                    occupy a0 with temp_24_ret_of_getint_66
              #                    occupy a1 with n_66
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_25_ret_of_getint_66:i32 
              #                          temp_25_ret_of_getint_66 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_24_ret_of_getint_66 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_24_ret_of_getint_66
              #                    store to n_66 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with n_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_25_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                          k_66 = i32 temp_25_ret_of_getint_66 
              #                    occupy a0 with temp_25_ret_of_getint_66
              #                    occupy a1 with k_66
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_66 = i32 0_0 
              #                    occupy a2 with i_66
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_26_cmp_69:i1 
              #                          temp_26_cmp_69 = icmp i32 Slt i_66, n_66 
              #                    occupy a2 with i_66
              #                    occupy a3 with n_66
              #                    load from n_66 in mem


    lw      a3,48(sp)
              #                    occupy a4 with temp_26_cmp_69
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_26_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy a4 with temp_26_cmp_69
              #                    free a4
              #                    occupy a4 with temp_26_cmp_69
    bnez    a4, .while.body_70
              #                    free a4
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Freed { symidx: n_66, tracked: true } |     a4:Freed { symidx: temp_26_cmp_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var temp_27_index_ptr_71:ptr->i32 
              #                          temp_27_index_ptr_71 = getelementptr *array_0:ptr->i32 [Some(i_66)] 
              #                    occupy a5 with temp_27_index_ptr_71
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_66
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *array_0
              #                       load label array as ptr to reg
    la      s1, array
              #                    occupy reg s1 with *array_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          new_var temp_28_ret_of_getint_71:i32 
              #                          temp_28_ret_of_getint_71 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_25_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_25_ret_of_getint_66
              #                    store to k_66 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with k_66
              #                    store to i_66 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_66
              #                    store to n_66 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with n_66
              #                    store to temp_26_cmp_69 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_26_cmp_69
              #                    store to temp_27_index_ptr_71 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_27_index_ptr_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_28_ret_of_getint_71 in mem offset legal
    sw      a0,20(sp)
              #                          store temp_28_ret_of_getint_71:i32 temp_27_index_ptr_71:ptr->i32 
              #                    occupy a1 with temp_27_index_ptr_71
              #                    load from temp_27_index_ptr_71 in mem
    ld      a1,24(sp)
              #                    occupy a0 with temp_28_ret_of_getint_71
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *array_0:176 
              #                          *array_0 = chi *array_0:176 
              #                          new_var temp_29_arithop_71:i32 
              #                          temp_29_arithop_71 = Add i32 i_66, 1_0 
              #                    occupy a2 with i_66
              #                    load from i_66 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_29_arithop_71
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_66 = i32 temp_29_arithop_71 
              #                    occupy a4 with temp_29_arithop_71
              #                    occupy a2 with i_66
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_70 
              #                    store to temp_27_index_ptr_71 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_27_index_ptr_71
              #                    store to temp_29_arithop_71 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_29_arithop_71
              #                    store to temp_28_ret_of_getint_71 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_28_ret_of_getint_71
              #                    occupy a1 with _anonymous_of_k_66_0
              #                    load from k_66 in mem


    lw      a1,40(sp)
              #                    occupy a0 with _anonymous_of_temp_25_ret_of_getint_66_0
              #                    load from temp_25_ret_of_getint_66 in mem


    lw      a0,44(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Freed { symidx: n_66, tracked: true } |     a4:Freed { symidx: temp_26_cmp_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          low_66 = i32 0_0 
              #                    occupy a5 with low_66
    li      a5, 0
              #                    free a5
              #                          new_var temp_30_arithop_66:i32 
              #                          temp_30_arithop_66 = Sub i32 n_66, 1_0 
              #                    occupy a3 with n_66
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_30_arithop_66
              #                    regtab:    a0:Freed { symidx: temp_25_ret_of_getint_66, tracked: true } |     a1:Freed { symidx: k_66, tracked: true } |     a2:Freed { symidx: i_66, tracked: true } |     a3:Occupied { symidx: n_66, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_26_cmp_69, tracked: true } |     a5:Freed { symidx: low_66, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_30_arithop_66, tracked: true, occupy_count: 1 } | 


    sub     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          high_66 = i32 temp_30_arithop_66 
              #                    occupy a7 with temp_30_arithop_66
              #                    occupy s1 with high_66
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void findSmallest_0(low_66, high_66, k_66, n_66) 
              #                    saved register dumping to mem
              #                    store to high_66 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with high_66
              #                    store to temp_25_ret_of_getint_66 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_25_ret_of_getint_66
              #                    store to k_66 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with k_66
              #                    store to i_66 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_66
              #                    store to n_66 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with n_66
              #                    store to temp_26_cmp_69 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_26_cmp_69
              #                    store to low_66 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with low_66
              #                    store to temp_30_arithop_66 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_30_arithop_66
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_low_66_0
              #                    load from low_66 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_high_66_0
              #                    load from high_66 in mem


    lw      a1,4(sp)
              #                    occupy a2 with _anonymous_of_k_66_0
              #                    load from k_66 in mem


    lw      a2,40(sp)
              #                    occupy a3 with _anonymous_of_n_66_0
              #                    load from n_66 in mem


    lw      a3,48(sp)
              #                    arg load ended


    call    findSmallest
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl array
              #                          global Array:i32:[Some(1000_0)] array_0 
    .type array,@object
array:
    .zero 4000
    .align 4
    .globl space
              #                          global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl maxN
              #                          global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1000
