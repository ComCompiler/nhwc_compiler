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
              #                          Define MAX_0 [a_16, b_16] -> MAX_ret_0 
    .globl MAX
    .type MAX,@function
MAX:
              #                    mem layout:|ra_MAX:8 at 24|s0_MAX:8 at 16|a:4 at 12|b:4 at 8|temp_0_cmp:1 at 7|temp_1_cmp:1 at 6|none:6 at 0
    addi    sp,sp,-32
              #                    store to ra_MAX_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_MAX_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i1 temp_0_cmp_19 
              #                          alloc i1 temp_1_cmp_22 
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_0_cmp_19:i1 
              #                          temp_0_cmp_19 = icmp i32 Eq a_16, b_16 
              #                    occupy a0 with a_16
              #                    occupy a1 with b_16
              #                    occupy a2 with temp_0_cmp_19
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_0_cmp_19, label branch_true_20, label branch_false_20 
              #                    occupy a2 with temp_0_cmp_19
              #                    free a2
              #                    occupy a2 with temp_0_cmp_19
    bnez    a2, .branch_true_20
              #                    free a2
    j       .branch_false_20
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19, tracked: true } | 
              #                          label branch_true_20: 
.branch_true_20:
              #                          ret a_16 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    store to a_16 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_16
              #                    occupy a0 with a_16
              #                    load from a_16 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19, tracked: true } | 
              #                          label branch_false_20: 
.branch_false_20:
              #                          new_var temp_1_cmp_22:i1 
              #                          temp_1_cmp_22 = icmp i32 Sgt a_16, b_16 
              #                    occupy a0 with a_16
              #                    occupy a1 with b_16
              #                    occupy a3 with temp_1_cmp_22
    slt     a3,a1,a0
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_1_cmp_22, label branch_true_23, label branch_false_23 
              #                    occupy a3 with temp_1_cmp_22
              #                    free a3
              #                    occupy a3 with temp_1_cmp_22
    bnez    a3, .branch_true_23
              #                    free a3
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label branch_true_23: 
.branch_true_23:
              #                          ret a_16 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    store to a_16 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_16
              #                    occupy a0 with a_16
              #                    load from a_16 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                          ret b_16 
              #                    load from ra_MAX_0 in mem
    ld      ra,24(sp)
              #                    load from s0_MAX_0 in mem
    ld      s0,16(sp)
              #                    store to b_16 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with b_16
              #                    store to a_16 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_16
              #                    occupy a0 with b_16
              #                    load from b_16 in mem


    lw      a0,8(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_0_cmp_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a2:Freed { symidx: temp_0_cmp_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a2:Freed { symidx: temp_0_cmp_19, tracked: true } |     a3:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                    regtab 
              #                          Define max_sum_nonadjacent_0 [arr_26, n_26] -> max_sum_nonadjacent_ret_0 
    .globl max_sum_nonadjacent
    .type max_sum_nonadjacent,@function
max_sum_nonadjacent:
              #                    mem layout:|ra_max_sum_nonadjacent:8 at 256|s0_max_sum_nonadjacent:8 at 248|arr:8 at 240|n:4 at 236|none:4 at 232|temp_2_array_init_ptr:8 at 224|temp:64 at 160|temp_3_index_ptr:8 at 152|temp_4_array_ptr:8 at 144|temp_5_array_ele:4 at 140|none:4 at 136|temp_6_index_ptr:8 at 128|temp_7_array_ptr:8 at 120|temp_8_array_ele:4 at 116|none:4 at 112|temp_9_array_ptr:8 at 104|temp_10_array_ele:4 at 100|temp_11_ret_of_MAX:4 at 96|i:4 at 92|temp_12_cmp:1 at 91|none:3 at 88|temp_13_index_ptr:8 at 80|temp_14_array_ptr:8 at 72|temp_15_array_ele:4 at 68|temp_16_arithop:4 at 64|temp_17_array_ptr:8 at 56|temp_18_array_ele:4 at 52|temp_19_arithop:4 at 48|temp_20_arithop:4 at 44|none:4 at 40|temp_21_array_ptr:8 at 32|temp_22_array_ele:4 at 28|temp_23_ret_of_MAX:4 at 24|temp_24_arithop:4 at 20|temp_25_arithop:4 at 16|temp_26_array_ptr:8 at 8|temp_27_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-264
              #                    store to ra_max_sum_nonadjacent_0 in mem offset legal
    sd      ra,256(sp)
              #                    store to s0_max_sum_nonadjacent_0 in mem offset legal
    sd      s0,248(sp)
    addi    s0,sp,264
              #                          new_var arr_26:ptr->i32 
              #                          alloc ptr->i32 temp_2_array_init_ptr_28 
              #                          alloc Array:i32:[Some(16_0)] temp_28 
              #                          alloc ptr->i32 temp_3_index_ptr_28 
              #                          alloc ptr->i32 temp_4_array_ptr_28 
              #                          alloc i32 temp_5_array_ele_28 
              #                          alloc ptr->i32 temp_6_index_ptr_28 
              #                          alloc ptr->i32 temp_7_array_ptr_28 
              #                          alloc i32 temp_8_array_ele_28 
              #                          alloc ptr->i32 temp_9_array_ptr_28 
              #                          alloc i32 temp_10_array_ele_28 
              #                          alloc i32 temp_11_ret_of_MAX_28 
              #                          alloc i32 i_28 
              #                          alloc i1 temp_12_cmp_33 
              #                          alloc ptr->i32 temp_13_index_ptr_35 
              #                          alloc ptr->i32 temp_14_array_ptr_35 
              #                          alloc i32 temp_15_array_ele_35 
              #                          alloc i32 temp_16_arithop_35 
              #                          alloc ptr->i32 temp_17_array_ptr_35 
              #                          alloc i32 temp_18_array_ele_35 
              #                          alloc i32 temp_19_arithop_35 
              #                          alloc i32 temp_20_arithop_35 
              #                          alloc ptr->i32 temp_21_array_ptr_35 
              #                          alloc i32 temp_22_array_ele_35 
              #                          alloc i32 temp_23_ret_of_MAX_35 
              #                          alloc i32 temp_24_arithop_35 
              #                          alloc i32 temp_25_arithop_28 
              #                          alloc ptr->i32 temp_26_array_ptr_28 
              #                          alloc i32 temp_27_array_ele_28 
              #                    regtab     a0:Freed { symidx: arr_26, tracked: true } |     a1:Freed { symidx: n_26, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_28:Array:i32:[Some(16_0)] 
              #                          new_var temp_2_array_init_ptr_28:ptr->i32 
              #                          temp_2_array_init_ptr_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [] 
              #                    occupy a2 with temp_2_array_init_ptr_28
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,160
              #                    free a2
              #                           Call void memset_0(temp_2_array_init_ptr_28, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    store to arr_26 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with arr_26
              #                    store to n_26 in mem offset legal
    sw      a1,236(sp)
              #                    release a1 with n_26
              #                    store to temp_2_array_init_ptr_28 in mem offset legal
    sd      a2,224(sp)
              #                    release a2 with temp_2_array_init_ptr_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_array_init_ptr_28_0
              #                    load from temp_2_array_init_ptr_28 in mem
    ld      a0,224(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                          new_var temp_3_index_ptr_28:ptr->i32 
              #                          temp_3_index_ptr_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(0_0)] 
              #                    occupy a0 with temp_3_index_ptr_28
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
    add     a0,a0,sp
    addi    a0,a0,160
              #                    free a0
              #                          new_var temp_4_array_ptr_28:ptr->i32 
              #                          temp_4_array_ptr_28 = getelementptr arr_26:ptr->i32 [Some(0_0)] 
              #                    occupy a4 with temp_4_array_ptr_28
    li      a4, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a1,a2
              #                    free a1
              #                    free a2
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with arr_26
              #                    load from arr_26 in mem
    ld      a6,240(sp)
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                          new_var temp_5_array_ele_28:i32 
              #                          temp_5_array_ele_28 = load temp_4_array_ptr_28:ptr->i32 
              #                    occupy a4 with temp_4_array_ptr_28
              #                    occupy a7 with temp_5_array_ele_28
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          store temp_5_array_ele_28:i32 temp_3_index_ptr_28:ptr->i32 
              #                    occupy a0 with temp_3_index_ptr_28
              #                    occupy a7 with temp_5_array_ele_28
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          mu temp_28:55 
              #                          temp_28 = chi temp_28:55 
              #                          new_var temp_6_index_ptr_28:ptr->i32 
              #                          temp_6_index_ptr_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(1_0)] 
              #                    occupy s1 with temp_6_index_ptr_28
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a1,s2
              #                    free a1
              #                    free s2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,160
              #                    free s1
              #                          new_var temp_7_array_ptr_28:ptr->i32 
              #                          temp_7_array_ptr_28 = getelementptr arr_26:ptr->i32 [Some(0_0)] 
              #                    occupy s4 with temp_7_array_ptr_28
    li      s4, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s2,a2
              #                    free s2
              #                    free a2
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a6 with arr_26
    add     s4,s4,a6
              #                    free a6
              #                    free s4
              #                          new_var temp_8_array_ele_28:i32 
              #                          temp_8_array_ele_28 = load temp_7_array_ptr_28:ptr->i32 
              #                    occupy s4 with temp_7_array_ptr_28
              #                    occupy s6 with temp_8_array_ele_28
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_9_array_ptr_28:ptr->i32 
              #                          temp_9_array_ptr_28 = getelementptr arr_26:ptr->i32 [Some(1_0)] 
              #                    occupy s7 with temp_9_array_ptr_28
    li      s7, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s2,a1
              #                    free s2
              #                    free a1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a6 with arr_26
    add     s7,s7,a6
              #                    free a6
              #                    free s7
              #                          new_var temp_10_array_ele_28:i32 
              #                          temp_10_array_ele_28 = load temp_9_array_ptr_28:ptr->i32 
              #                    occupy s7 with temp_9_array_ptr_28
              #                    occupy s9 with temp_10_array_ele_28
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_11_ret_of_MAX_28:i32 
              #                          temp_11_ret_of_MAX_28 =  Call i32 MAX_0(temp_8_array_ele_28, temp_10_array_ele_28) 
              #                    saved register dumping to mem
              #                    store to temp_6_index_ptr_28 in mem offset legal
    sd      s1,128(sp)
              #                    release s1 with temp_6_index_ptr_28
              #                    store to temp_7_array_ptr_28 in mem offset legal
    sd      s4,120(sp)
              #                    release s4 with temp_7_array_ptr_28
              #                    store to temp_8_array_ele_28 in mem offset legal
    sw      s6,116(sp)
              #                    release s6 with temp_8_array_ele_28
              #                    store to temp_9_array_ptr_28 in mem offset legal
    sd      s7,104(sp)
              #                    release s7 with temp_9_array_ptr_28
              #                    store to temp_10_array_ele_28 in mem offset legal
    sw      s9,100(sp)
              #                    release s9 with temp_10_array_ele_28
              #                    store to temp_3_index_ptr_28 in mem offset legal
    sd      a0,152(sp)
              #                    release a0 with temp_3_index_ptr_28
              #                    store to temp_4_array_ptr_28 in mem offset legal
    sd      a4,144(sp)
              #                    release a4 with temp_4_array_ptr_28
              #                    store to arr_26 in mem offset legal
    sd      a6,240(sp)
              #                    release a6 with arr_26
              #                    store to temp_5_array_ele_28 in mem offset legal
    sw      a7,140(sp)
              #                    release a7 with temp_5_array_ele_28
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_array_ele_28_0
              #                    load from temp_8_array_ele_28 in mem


    lw      a0,116(sp)
              #                    occupy a1 with _anonymous_of_temp_10_array_ele_28_0
              #                    load from temp_10_array_ele_28 in mem


    lw      a1,100(sp)
              #                    arg load ended


    call    MAX
              #                    store to temp_11_ret_of_MAX_28 in mem offset legal
    sw      a0,96(sp)
              #                          store temp_11_ret_of_MAX_28:i32 temp_6_index_ptr_28:ptr->i32 
              #                    occupy a1 with temp_6_index_ptr_28
              #                    load from temp_6_index_ptr_28 in mem
    ld      a1,128(sp)
              #                    occupy a0 with temp_11_ret_of_MAX_28
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu temp_28:76 
              #                          temp_28 = chi temp_28:76 
              #                          i_28 = i32 2_0 
              #                    occupy a2 with i_28
    li      a2, 2
              #                    free a2
              #                          jump label: while.head_34 
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Freed { symidx: i_28, tracked: true } | 
              #                          label while.head_34: 
.while.head_34:
              #                          new_var temp_12_cmp_33:i1 
              #                          temp_12_cmp_33 = icmp i32 Slt i_28, n_26 
              #                    occupy a2 with i_28
              #                    occupy a3 with n_26
              #                    load from n_26 in mem


    lw      a3,236(sp)
              #                    occupy a4 with temp_12_cmp_33
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_12_cmp_33, label while.body_34, label while.exit_34 
              #                    occupy a4 with temp_12_cmp_33
              #                    free a4
              #                    occupy a4 with temp_12_cmp_33
    bnez    a4, .while.body_34
              #                    free a4
    j       .while.exit_34
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: n_26, tracked: true } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } | 
              #                          label while.body_34: 
.while.body_34:
              #                          new_var temp_13_index_ptr_35:ptr->i32 
              #                          temp_13_index_ptr_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(i_28)] 
              #                    occupy a5 with temp_13_index_ptr_35
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_28
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,160
              #                    free a5
              #                          new_var temp_14_array_ptr_35:ptr->i32 
              #                          temp_14_array_ptr_35 = getelementptr arr_26:ptr->i32 [Some(i_28)] 
              #                    occupy s1 with temp_14_array_ptr_35
    li      s1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a2 with i_28
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a2
              #                    free a6
              #                    free a2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with arr_26
              #                    load from arr_26 in mem
    ld      s3,240(sp)
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_15_array_ele_35:i32 
              #                          temp_15_array_ele_35 = load temp_14_array_ptr_35:ptr->i32 
              #                    occupy s1 with temp_14_array_ptr_35
              #                    occupy s4 with temp_15_array_ele_35
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_16_arithop_35:i32 
              #                          temp_16_arithop_35 = Sub i32 i_28, 2_0 
              #                    occupy a2 with i_28
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with temp_16_arithop_35
              #                    regtab:    a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Occupied { symidx: i_28, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: n_26, tracked: true } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } |     a5:Freed { symidx: temp_13_index_ptr_35, tracked: true } |     a6:Freed { symidx: 1_0, tracked: false } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: temp_14_array_ptr_35, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: arr_26, tracked: true } |     s4:Freed { symidx: temp_15_array_ele_35, tracked: true } |     s5:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     s6:Occupied { symidx: temp_16_arithop_35, tracked: true, occupy_count: 1 } | 


    sub     s6,a2,s5
              #                    free a2
              #                    free s5
              #                    free s6
              #                          new_var temp_17_array_ptr_35:ptr->i32 
              #                          temp_17_array_ptr_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_16_arithop_35)] 
              #                    occupy s7 with temp_17_array_ptr_35
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s6 with temp_16_arithop_35
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a6,s6
              #                    free a6
              #                    free s6
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,160
              #                    free s7
              #                          new_var temp_18_array_ele_35:i32 
              #                          temp_18_array_ele_35 = load temp_17_array_ptr_35:ptr->i32 
              #                    occupy s7 with temp_17_array_ptr_35
              #                    occupy s9 with temp_18_array_ele_35
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_19_arithop_35:i32 
              #                          temp_19_arithop_35 = Add i32 temp_18_array_ele_35, temp_15_array_ele_35 
              #                    occupy s9 with temp_18_array_ele_35
              #                    occupy s4 with temp_15_array_ele_35
              #                    occupy s10 with temp_19_arithop_35
    add     s10,s9,s4
              #                    free s9
              #                    free s4
              #                    free s10
              #                          new_var temp_20_arithop_35:i32 
              #                          temp_20_arithop_35 = Sub i32 i_28, 1_0 
              #                    occupy a2 with i_28
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s11 with temp_20_arithop_35
              #                    regtab:    a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Occupied { symidx: i_28, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: n_26, tracked: true } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } |     a5:Freed { symidx: temp_13_index_ptr_35, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s10:Freed { symidx: temp_19_arithop_35, tracked: true } |     s11:Occupied { symidx: temp_20_arithop_35, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_14_array_ptr_35, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: arr_26, tracked: true } |     s4:Freed { symidx: temp_15_array_ele_35, tracked: true } |     s5:Freed { symidx: 2_0, tracked: false } |     s6:Freed { symidx: temp_16_arithop_35, tracked: true } |     s7:Freed { symidx: temp_17_array_ptr_35, tracked: true } |     s8:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s9:Freed { symidx: temp_18_array_ele_35, tracked: true } | 


    sub     s11,a2,a6
              #                    free a2
              #                    free a6
              #                    free s11
              #                          new_var temp_21_array_ptr_35:ptr->i32 
              #                          temp_21_array_ptr_35 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_20_arithop_35)] 
              #                    occupy a6 with temp_21_array_ptr_35
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s11 with temp_20_arithop_35
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,s11
              #                    free a7
              #                    free s11
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
              #                    free a6
              #                          new_var temp_22_array_ele_35:i32 
              #                          temp_22_array_ele_35 = load temp_21_array_ptr_35:ptr->i32 
              #                    occupy a6 with temp_21_array_ptr_35
              #                    occupy a7 with temp_22_array_ele_35
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_23_ret_of_MAX_35:i32 
              #                          temp_23_ret_of_MAX_35 =  Call i32 MAX_0(temp_19_arithop_35, temp_22_array_ele_35) 
              #                    saved register dumping to mem
              #                    store to temp_14_array_ptr_35 in mem offset legal
    sd      s1,72(sp)
              #                    release s1 with temp_14_array_ptr_35
              #                    store to arr_26 in mem offset legal
    sd      s3,240(sp)
              #                    release s3 with arr_26
              #                    store to temp_15_array_ele_35 in mem offset legal
    sw      s4,68(sp)
              #                    release s4 with temp_15_array_ele_35
              #                    store to temp_16_arithop_35 in mem offset legal
    sw      s6,64(sp)
              #                    release s6 with temp_16_arithop_35
              #                    store to temp_17_array_ptr_35 in mem offset legal
    sd      s7,56(sp)
              #                    release s7 with temp_17_array_ptr_35
              #                    store to temp_18_array_ele_35 in mem offset legal
    sw      s9,52(sp)
              #                    release s9 with temp_18_array_ele_35
              #                    store to temp_19_arithop_35 in mem offset legal
    sw      s10,48(sp)
              #                    release s10 with temp_19_arithop_35
              #                    store to temp_20_arithop_35 in mem offset legal
    sw      s11,44(sp)
              #                    release s11 with temp_20_arithop_35
              #                    store to temp_11_ret_of_MAX_28 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_11_ret_of_MAX_28
              #                    store to temp_6_index_ptr_28 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_6_index_ptr_28
              #                    store to i_28 in mem offset legal
    sw      a2,92(sp)
              #                    release a2 with i_28
              #                    store to n_26 in mem offset legal
    sw      a3,236(sp)
              #                    release a3 with n_26
              #                    store to temp_12_cmp_33 in mem offset legal
    sb      a4,91(sp)
              #                    release a4 with temp_12_cmp_33
              #                    store to temp_13_index_ptr_35 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_13_index_ptr_35
              #                    store to temp_21_array_ptr_35 in mem offset legal
    sd      a6,32(sp)
              #                    release a6 with temp_21_array_ptr_35
              #                    store to temp_22_array_ele_35 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_22_array_ele_35
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_arithop_35_0
              #                    load from temp_19_arithop_35 in mem


    lw      a0,48(sp)
              #                    occupy a1 with _anonymous_of_temp_22_array_ele_35_0
              #                    load from temp_22_array_ele_35 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    MAX
              #                    store to temp_23_ret_of_MAX_35 in mem offset legal
    sw      a0,24(sp)
              #                          store temp_23_ret_of_MAX_35:i32 temp_13_index_ptr_35:ptr->i32 
              #                    occupy a1 with temp_13_index_ptr_35
              #                    load from temp_13_index_ptr_35 in mem
    ld      a1,80(sp)
              #                    occupy a0 with temp_23_ret_of_MAX_35
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu temp_28:122 
              #                          temp_28 = chi temp_28:122 
              #                          new_var temp_24_arithop_35:i32 
              #                          temp_24_arithop_35 = Add i32 i_28, 1_0 
              #                    occupy a2 with i_28
              #                    load from i_28 in mem


    lw      a2,92(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_24_arithop_35
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_28 = i32 temp_24_arithop_35 
              #                    occupy a4 with temp_24_arithop_35
              #                    occupy a2 with i_28
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_34 
              #                    store to temp_24_arithop_35 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_24_arithop_35
              #                    store to temp_23_ret_of_MAX_35 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_23_ret_of_MAX_35
              #                    store to temp_13_index_ptr_35 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with temp_13_index_ptr_35
              #                    occupy a0 with _anonymous_of_temp_11_ret_of_MAX_28_0
              #                    load from temp_11_ret_of_MAX_28 in mem


    lw      a0,96(sp)
              #                    occupy a1 with _anonymous_of_temp_6_index_ptr_28_0
              #                    load from temp_6_index_ptr_28 in mem
    ld      a1,128(sp)
    j       .while.head_34
              #                    regtab     a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: n_26, tracked: true } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } | 
              #                          label while.exit_34: 
.while.exit_34:
              #                          new_var temp_25_arithop_28:i32 
              #                          temp_25_arithop_28 = Sub i32 n_26, 1_0 
              #                    occupy a3 with n_26
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_25_arithop_28
              #                    regtab:    a0:Freed { symidx: temp_11_ret_of_MAX_28, tracked: true } |     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Freed { symidx: i_28, tracked: true } |     a3:Occupied { symidx: n_26, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_25_arithop_28, tracked: true, occupy_count: 1 } | 


    sub     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          new_var temp_26_array_ptr_28:ptr->i32 
              #                          temp_26_array_ptr_28 = getelementptr temp_28:Array:i32:[Some(16_0)] [Some(temp_25_arithop_28)] 
              #                    occupy a7 with temp_26_array_ptr_28
    li      a7, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a6 with temp_25_arithop_28
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a6
              #                    free a5
              #                    free a6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,160
              #                    free a7
              #                          new_var temp_27_array_ele_28:i32 
              #                          temp_27_array_ele_28 = load temp_26_array_ptr_28:ptr->i32 
              #                    occupy a7 with temp_26_array_ptr_28
              #                    occupy s2 with temp_27_array_ele_28
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          ret temp_27_array_ele_28 
              #                    load from ra_max_sum_nonadjacent_0 in mem
    ld      ra,256(sp)
              #                    load from s0_max_sum_nonadjacent_0 in mem
    ld      s0,248(sp)
              #                    store to temp_27_array_ele_28 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_27_array_ele_28
              #                    store to temp_11_ret_of_MAX_28 in mem offset legal
    sw      a0,96(sp)
              #                    release a0 with temp_11_ret_of_MAX_28
              #                    occupy a0 with temp_27_array_ele_28
              #                    load from temp_27_array_ele_28 in mem


    lw      a0,4(sp)
    addi    sp,sp,264
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_6_index_ptr_28, tracked: true } |     a2:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: n_26, tracked: true } |     a4:Freed { symidx: temp_12_cmp_33, tracked: true } |     a6:Freed { symidx: temp_25_arithop_28, tracked: true } |     a7:Freed { symidx: temp_26_array_ptr_28, tracked: true } | 
              #                    regtab 
              #                          Define longest_common_subseq_0 [arr1_39, len1_39, arr2_39, len2_39] -> longest_common_subseq_ret_0 
    .globl longest_common_subseq
    .type longest_common_subseq,@function
longest_common_subseq:
              #                    mem layout:|ra_longest_common_subseq:8 at 1232|s0_longest_common_subseq:8 at 1224|arr1:8 at 1216|len1:4 at 1212|none:4 at 1208|arr2:8 at 1200|len2:4 at 1196|none:4 at 1192|temp_28_array_init_ptr:8 at 1184|p:1024 at 160|i:4 at 156|j:4 at 152|temp_29_cmp:1 at 151|temp_30_cmp:1 at 150|none:2 at 148|temp_31_arithop:4 at 144|temp_32_array_ptr:8 at 136|temp_33_array_ele:4 at 132|temp_34_arithop:4 at 128|temp_35_array_ptr:8 at 120|temp_36_array_ele:4 at 116|temp_37_cmp:1 at 115|none:3 at 112|temp_38_index_ptr:8 at 104|temp_39_arithop:4 at 100|temp_40_arithop:4 at 96|temp_41_array_ptr:8 at 88|temp_42_array_ele:4 at 84|temp_43_arithop:4 at 80|temp_44_arithop:4 at 76|none:4 at 72|temp_45_index_ptr:8 at 64|temp_46_arithop:4 at 60|none:4 at 56|temp_47_array_ptr:8 at 48|temp_48_array_ele:4 at 44|temp_49_arithop:4 at 40|temp_50_array_ptr:8 at 32|temp_51_array_ele:4 at 28|temp_52_ret_of_MAX:4 at 24|temp_53_arithop:4 at 20|none:4 at 16|temp_54_array_ptr:8 at 8|temp_55_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-1240
              #                    store to ra_longest_common_subseq_0 in mem offset legal
    sd      ra,1232(sp)
              #                    store to s0_longest_common_subseq_0 in mem offset legal
    sd      s0,1224(sp)
    addi    s0,sp,1240
              #                          new_var arr1_39:ptr->i32 
              #                          new_var arr2_39:ptr->i32 
              #                          alloc ptr->i32 temp_28_array_init_ptr_41 
              #                          alloc Array:i32:[Some(16_0), Some(16_0)] p_41 
              #                          alloc i32 i_41 
              #                          alloc i32 j_41 
              #                          alloc i1 temp_29_cmp_45 
              #                          alloc i1 temp_30_cmp_49 
              #                          alloc i32 temp_31_arithop_52 
              #                          alloc ptr->i32 temp_32_array_ptr_52 
              #                          alloc i32 temp_33_array_ele_52 
              #                          alloc i32 temp_34_arithop_52 
              #                          alloc ptr->i32 temp_35_array_ptr_52 
              #                          alloc i32 temp_36_array_ele_52 
              #                          alloc i1 temp_37_cmp_52 
              #                          alloc ptr->i32 temp_38_index_ptr_54 
              #                          alloc i32 temp_39_arithop_54 
              #                          alloc i32 temp_40_arithop_54 
              #                          alloc ptr->i32 temp_41_array_ptr_54 
              #                          alloc i32 temp_42_array_ele_54 
              #                          alloc i32 temp_43_arithop_54 
              #                          alloc i32 temp_44_arithop_51 
              #                          alloc ptr->i32 temp_45_index_ptr_56 
              #                          alloc i32 temp_46_arithop_56 
              #                          alloc ptr->i32 temp_47_array_ptr_56 
              #                          alloc i32 temp_48_array_ele_56 
              #                          alloc i32 temp_49_arithop_56 
              #                          alloc ptr->i32 temp_50_array_ptr_56 
              #                          alloc i32 temp_51_array_ele_56 
              #                          alloc i32 temp_52_ret_of_MAX_56 
              #                          alloc i32 temp_53_arithop_47 
              #                          alloc ptr->i32 temp_54_array_ptr_41 
              #                          alloc i32 temp_55_array_ele_41 
              #                    regtab     a0:Freed { symidx: arr1_39, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: arr2_39, tracked: true } |     a3:Freed { symidx: len2_39, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var p_41:Array:i32:[Some(16_0), Some(16_0)] 
              #                          new_var temp_28_array_init_ptr_41:ptr->i32 
              #                          temp_28_array_init_ptr_41 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [] 
              #                    occupy a4 with temp_28_array_init_ptr_41
    li      a4, 0
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,160
              #                    free a4
              #                           Call void memset_0(temp_28_array_init_ptr_41, 0_0, 1024_0) 
              #                    saved register dumping to mem
              #                    store to arr1_39 in mem offset legal
    sd      a0,1216(sp)
              #                    release a0 with arr1_39
              #                    store to len1_39 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39
              #                    store to arr2_39 in mem offset legal
    sd      a2,1200(sp)
              #                    release a2 with arr2_39
              #                    store to len2_39 in mem offset legal
    sw      a3,1196(sp)
              #                    release a3 with len2_39
              #                    store to temp_28_array_init_ptr_41 in mem offset legal
    sd      a4,1184(sp)
              #                    release a4 with temp_28_array_init_ptr_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_array_init_ptr_41_0
              #                    load from temp_28_array_init_ptr_41 in mem
    ld      a0,1184(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_1024_0_0
    li      a2, 1024
              #                    arg load ended


    call    memset
              #                          new_var i_41:i32 
              #                          new_var j_41:i32 
              #                          i_41 = i32 1_0 
              #                    occupy a0 with i_41
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } | 
              #                          label while.head_46: 
.while.head_46:
              #                          new_var temp_29_cmp_45:i1 
              #                          temp_29_cmp_45 = icmp i32 Sle i_41, len1_39 
              #                    occupy a0 with i_41
              #                    occupy a1 with len1_39
              #                    load from len1_39 in mem


    lw      a1,1212(sp)
              #                    occupy a2 with temp_29_cmp_45
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_29_cmp_45, label while.body_46, label while.exit_46 
              #                    occupy a2 with temp_29_cmp_45
              #                    free a2
              #                    occupy a2 with temp_29_cmp_45
    bnez    a2, .while.body_46
              #                    free a2
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } | 
              #                          label while.body_46: 
.while.body_46:
              #                          j_41 = i32 1_0 
              #                    occupy a3 with j_41
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_30_cmp_49:i1 
              #                          temp_30_cmp_49 = icmp i32 Sle j_41, len2_39 
              #                    occupy a3 with j_41
              #                    occupy a4 with len2_39
              #                    load from len2_39 in mem


    lw      a4,1196(sp)
              #                    occupy a5 with temp_30_cmp_49
    slt     a5,a4,a3
    xori    a5,a5,1
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_30_cmp_49, label while.body_50, label while.exit_50 
              #                    occupy a5 with temp_30_cmp_49
              #                    free a5
              #                    occupy a5 with temp_30_cmp_49
    bnez    a5, .while.body_50
              #                    free a5
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_31_arithop_52:i32 
              #                          temp_31_arithop_52 = Sub i32 j_41, 1_0 
              #                    occupy a3 with j_41
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_31_arithop_52
              #                    regtab:    a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Occupied { symidx: j_41, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_31_arithop_52, tracked: true, occupy_count: 1 } | 


    sub     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          new_var temp_32_array_ptr_52:ptr->i32 
              #                          temp_32_array_ptr_52 = getelementptr arr2_39:ptr->i32 [Some(temp_31_arithop_52)] 
              #                    occupy s1 with temp_32_array_ptr_52
    li      s1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with temp_31_arithop_52
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with arr2_39
              #                    load from arr2_39 in mem
    ld      s3,1200(sp)
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_33_array_ele_52:i32 
              #                          temp_33_array_ele_52 = load temp_32_array_ptr_52:ptr->i32 
              #                    occupy s1 with temp_32_array_ptr_52
              #                    occupy s4 with temp_33_array_ele_52
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_34_arithop_52:i32 
              #                          temp_34_arithop_52 = Sub i32 i_41, 1_0 
              #                    occupy a0 with i_41
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_34_arithop_52
              #                    regtab:    a0:Occupied { symidx: i_41, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Occupied { symidx: temp_34_arithop_52, tracked: true, occupy_count: 1 } | 


    sub     s5,a0,a6
              #                    free a0
              #                    free a6
              #                    free s5
              #                          new_var temp_35_array_ptr_52:ptr->i32 
              #                          temp_35_array_ptr_52 = getelementptr arr1_39:ptr->i32 [Some(temp_34_arithop_52)] 
              #                    occupy s6 with temp_35_array_ptr_52
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s5 with temp_34_arithop_52
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a6,s5
              #                    free a6
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with arr1_39
              #                    load from arr1_39 in mem
    ld      s8,1216(sp)
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_36_array_ele_52:i32 
              #                          temp_36_array_ele_52 = load temp_35_array_ptr_52:ptr->i32 
              #                    occupy s6 with temp_35_array_ptr_52
              #                    occupy s9 with temp_36_array_ele_52
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_37_cmp_52:i1 
              #                          temp_37_cmp_52 = icmp i32 Eq temp_36_array_ele_52, temp_33_array_ele_52 
              #                    occupy s9 with temp_36_array_ele_52
              #                    occupy s4 with temp_33_array_ele_52
              #                    occupy s10 with temp_37_cmp_52
    xor     s10,s9,s4
    seqz    s10, s10
              #                    free s9
              #                    free s4
              #                    free s10
              #                          br i1 temp_37_cmp_52, label branch_true_53, label branch_false_53 
              #                    occupy s10 with temp_37_cmp_52
              #                    free s10
              #                    occupy s10 with temp_37_cmp_52
    bnez    s10, .branch_true_53
              #                    free s10
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 
              #                          label branch_true_53: 
.branch_true_53:
              #                          new_var temp_38_index_ptr_54:ptr->i32 
              #                          temp_38_index_ptr_54 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(j_41)] 
              #                    occupy a6 with temp_38_index_ptr_54
    li      a6, 0
              #                    occupy s2 with 16_0
    li      s2, 16
              #                    occupy a0 with i_41
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s2,a0
              #                    free s2
              #                    free a0
    add     a6,a6,s7
              #                    free s7
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a3 with j_41
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s11,a3
              #                    free s11
              #                    free a3
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
              #                    free a6
              #                          new_var temp_39_arithop_54:i32 
              #                          temp_39_arithop_54 = Sub i32 j_41, 1_0 
              #                    occupy a3 with j_41
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s2 with temp_39_arithop_54
              #                    regtab:    a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Occupied { symidx: j_41, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_38_index_ptr_54, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Occupied { symidx: temp_39_arithop_54, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 


    sub     s2,a3,s11
              #                    free a3
              #                    free s11
              #                    free s2
              #                          new_var temp_40_arithop_54:i32 
              #                          temp_40_arithop_54 = Sub i32 i_41, 1_0 
              #                    occupy a0 with i_41
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s7 with temp_40_arithop_54
              #                    regtab:    a0:Occupied { symidx: i_41, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_38_index_ptr_54, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Freed { symidx: temp_39_arithop_54, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Occupied { symidx: temp_40_arithop_54, tracked: true, occupy_count: 1 } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 


    sub     s7,a0,s11
              #                    free a0
              #                    free s11
              #                    free s7
              #                          new_var temp_41_array_ptr_54:ptr->i32 
              #                          temp_41_array_ptr_54 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_40_arithop_54), Some(temp_39_arithop_54)] 
              #                    occupy s11 with temp_41_array_ptr_54
    li      s11, 0
              #                    store to i_41 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with i_41
              #                    occupy a0 with 16_0
    li      a0, 16
              #                    occupy s7 with temp_40_arithop_54
              #                    store to len1_39 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s7
              #                    free a0
              #                    free s7
    add     s11,s11,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s2 with temp_39_arithop_54
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,s2
              #                    free a0
              #                    free s2
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,160
              #                    free s11
              #                          new_var temp_42_array_ele_54:i32 
              #                          temp_42_array_ele_54 = load temp_41_array_ptr_54:ptr->i32 
              #                    occupy s11 with temp_41_array_ptr_54
              #                    occupy a0 with temp_42_array_ele_54
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_43_arithop_54:i32 
              #                          temp_43_arithop_54 = Add i32 temp_42_array_ele_54, 1_0 
              #                    occupy a0 with temp_42_array_ele_54
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_29_cmp_45 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_29_cmp_45
              #                    occupy a2 with temp_43_arithop_54
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          store temp_43_arithop_54:i32 temp_38_index_ptr_54:ptr->i32 
              #                    occupy a6 with temp_38_index_ptr_54
              #                    occupy a2 with temp_43_arithop_54
    sw      a2,0(a6)
              #                    free a2
              #                    free a6
              #                          mu p_41:210 
              #                          p_41 = chi p_41:210 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 
              #                          label branch_false_53: 
.branch_false_53:
              #                          new_var temp_45_index_ptr_56:ptr->i32 
              #                          temp_45_index_ptr_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(j_41)] 
              #                    occupy a6 with temp_45_index_ptr_56
    li      a6, 0
              #                    occupy s2 with 16_0
    li      s2, 16
              #                    occupy a0 with i_41
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s2,a0
              #                    free s2
              #                    free a0
    add     a6,a6,s7
              #                    free s7
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a3 with j_41
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s11,a3
              #                    free s11
              #                    free a3
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,160
              #                    free a6
              #                          new_var temp_46_arithop_56:i32 
              #                          temp_46_arithop_56 = Sub i32 i_41, 1_0 
              #                    occupy a0 with i_41
              #                    found literal reg Some(s11) already exist with 1_0
              #                    occupy s11 with 1_0
              #                    occupy s2 with temp_46_arithop_56
              #                    regtab:    a0:Occupied { symidx: i_41, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_45_index_ptr_56, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Occupied { symidx: temp_46_arithop_56, tracked: true, occupy_count: 1 } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 


    sub     s2,a0,s11
              #                    free a0
              #                    free s11
              #                    free s2
              #                          new_var temp_47_array_ptr_56:ptr->i32 
              #                          temp_47_array_ptr_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(temp_46_arithop_56), Some(j_41)] 
              #                    occupy s7 with temp_47_array_ptr_56
    li      s7, 0
              #                    occupy s11 with 16_0
    li      s11, 16
              #                    occupy s2 with temp_46_arithop_56
              #                    store to i_41 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with i_41
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a0,s11,s2
              #                    free s11
              #                    free s2
    add     s7,s7,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with j_41
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a0,a3
              #                    free a0
              #                    free a3
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,160
              #                    free s7
              #                          new_var temp_48_array_ele_56:i32 
              #                          temp_48_array_ele_56 = load temp_47_array_ptr_56:ptr->i32 
              #                    occupy s7 with temp_47_array_ptr_56
              #                    occupy a0 with temp_48_array_ele_56
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          new_var temp_49_arithop_56:i32 
              #                          temp_49_arithop_56 = Sub i32 j_41, 1_0 
              #                    occupy a3 with j_41
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    store to temp_48_array_ele_56 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_48_array_ele_56
              #                    occupy a0 with temp_49_arithop_56
              #                    regtab:    a0:Occupied { symidx: temp_49_arithop_56, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Occupied { symidx: j_41, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_45_index_ptr_56, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Freed { symidx: temp_46_arithop_56, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_47_array_ptr_56, tracked: true } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 


    sub     a0,a3,s11
              #                    free a3
              #                    free s11
              #                    free a0
              #                          new_var temp_50_array_ptr_56:ptr->i32 
              #                          temp_50_array_ptr_56 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(i_41), Some(temp_49_arithop_56)] 
              #                    occupy s11 with temp_50_array_ptr_56
    li      s11, 0
              #                    store to temp_49_arithop_56 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_49_arithop_56
              #                    occupy a0 with 16_0
    li      a0, 16
              #                    store to len1_39 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39
              #                    occupy a1 with i_41
              #                    load from i_41 in mem


    lw      a1,156(sp)
              #                    store to temp_29_cmp_45 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_29_cmp_45
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s11,s11,a2
              #                    free a2
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_49_arithop_56
              #                    load from temp_49_arithop_56 in mem


    lw      a2,40(sp)
              #                    store to i_41 in mem offset legal
    sw      a1,156(sp)
              #                    release a1 with i_41
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,160
              #                    free s11
              #                          new_var temp_51_array_ele_56:i32 
              #                          temp_51_array_ele_56 = load temp_50_array_ptr_56:ptr->i32 
              #                    occupy s11 with temp_50_array_ptr_56
              #                    occupy a0 with temp_51_array_ele_56
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_52_ret_of_MAX_56:i32 
              #                          temp_52_ret_of_MAX_56 =  Call i32 MAX_0(temp_48_array_ele_56, temp_51_array_ele_56) 
              #                    saved register dumping to mem
              #                    store to temp_32_array_ptr_52 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_32_array_ptr_52
              #                    store to temp_46_arithop_56 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_46_arithop_56
              #                    store to arr2_39 in mem offset legal
    sd      s3,1200(sp)
              #                    release s3 with arr2_39
              #                    store to temp_33_array_ele_52 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_33_array_ele_52
              #                    store to temp_34_arithop_52 in mem offset legal
    sw      s5,128(sp)
              #                    release s5 with temp_34_arithop_52
              #                    store to temp_35_array_ptr_52 in mem offset legal
    sd      s6,120(sp)
              #                    release s6 with temp_35_array_ptr_52
              #                    store to temp_47_array_ptr_56 in mem offset legal
    sd      s7,48(sp)
              #                    release s7 with temp_47_array_ptr_56
              #                    store to arr1_39 in mem offset legal
    sd      s8,1216(sp)
              #                    release s8 with arr1_39
              #                    store to temp_36_array_ele_52 in mem offset legal
    sw      s9,116(sp)
              #                    release s9 with temp_36_array_ele_52
              #                    store to temp_37_cmp_52 in mem offset legal
    sb      s10,115(sp)
              #                    release s10 with temp_37_cmp_52
              #                    store to temp_50_array_ptr_56 in mem offset legal
    sd      s11,32(sp)
              #                    release s11 with temp_50_array_ptr_56
              #                    store to temp_51_array_ele_56 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_51_array_ele_56
              #                    store to temp_49_arithop_56 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_49_arithop_56
              #                    store to j_41 in mem offset legal
    sw      a3,152(sp)
              #                    release a3 with j_41
              #                    store to len2_39 in mem offset legal
    sw      a4,1196(sp)
              #                    release a4 with len2_39
              #                    store to temp_30_cmp_49 in mem offset legal
    sb      a5,150(sp)
              #                    release a5 with temp_30_cmp_49
              #                    store to temp_45_index_ptr_56 in mem offset legal
    sd      a6,64(sp)
              #                    release a6 with temp_45_index_ptr_56
              #                    store to temp_31_arithop_52 in mem offset legal
    sw      a7,144(sp)
              #                    release a7 with temp_31_arithop_52
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_48_array_ele_56_0
              #                    load from temp_48_array_ele_56 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_temp_51_array_ele_56_0
              #                    load from temp_51_array_ele_56 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    MAX
              #                    store to temp_52_ret_of_MAX_56 in mem offset legal
    sw      a0,24(sp)
              #                          store temp_52_ret_of_MAX_56:i32 temp_45_index_ptr_56:ptr->i32 
              #                    occupy a1 with temp_45_index_ptr_56
              #                    load from temp_45_index_ptr_56 in mem
    ld      a1,64(sp)
              #                    occupy a0 with temp_52_ret_of_MAX_56
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu p_41:241 
              #                          p_41 = chi p_41:241 
              #                          jump label: L2_0 
              #                    store to temp_45_index_ptr_56 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_45_index_ptr_56
              #                    store to temp_52_ret_of_MAX_56 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_52_ret_of_MAX_56
              #                    occupy s2 with _anonymous_of_temp_39_arithop_54_0
              #                    load from temp_39_arithop_54 in mem


    lw      s2,100(sp)
              #                    occupy s3 with _anonymous_of_arr2_39_0
              #                    load from arr2_39 in mem
    ld      s3,1200(sp)
              #                    occupy s11 with _anonymous_of_temp_41_array_ptr_54_0
              #                    load from temp_41_array_ptr_54 in mem
    ld      s11,88(sp)
              #                    occupy s4 with _anonymous_of_temp_33_array_ele_52_0
              #                    load from temp_33_array_ele_52 in mem


    lw      s4,132(sp)
              #                    occupy s10 with _anonymous_of_temp_37_cmp_52_0
              #                    load from temp_37_cmp_52 in mem
    lb      s10,115(sp)
              #                    occupy s5 with _anonymous_of_temp_34_arithop_52_0
              #                    load from temp_34_arithop_52 in mem


    lw      s5,128(sp)
              #                    occupy a3 with _anonymous_of_j_41_0
              #                    load from j_41 in mem


    lw      a3,152(sp)
              #                    occupy a5 with _anonymous_of_temp_30_cmp_49_0
              #                    load from temp_30_cmp_49 in mem
    lb      a5,150(sp)
              #                    occupy a6 with _anonymous_of_temp_38_index_ptr_54_0
              #                    load from temp_38_index_ptr_54 in mem
    ld      a6,104(sp)
              #                    occupy a2 with _anonymous_of_temp_43_arithop_54_0
              #                    load from temp_43_arithop_54 in mem


    lw      a2,80(sp)
              #                    occupy s9 with _anonymous_of_temp_36_array_ele_52_0
              #                    load from temp_36_array_ele_52 in mem


    lw      s9,116(sp)
              #                    occupy a4 with _anonymous_of_len2_39_0
              #                    load from len2_39 in mem


    lw      a4,1196(sp)
              #                    occupy s6 with _anonymous_of_temp_35_array_ptr_52_0
              #                    load from temp_35_array_ptr_52 in mem
    ld      s6,120(sp)
              #                    occupy a0 with _anonymous_of_temp_42_array_ele_54_0
              #                    load from temp_42_array_ele_54 in mem


    lw      a0,84(sp)
              #                    occupy a7 with _anonymous_of_temp_31_arithop_52_0
              #                    load from temp_31_arithop_52 in mem


    lw      a7,144(sp)
              #                    occupy s8 with _anonymous_of_arr1_39_0
              #                    load from arr1_39 in mem
    ld      s8,1216(sp)
              #                    occupy s1 with _anonymous_of_temp_32_array_ptr_52_0
              #                    load from temp_32_array_ptr_52 in mem
    ld      s1,136(sp)
              #                    occupy s7 with _anonymous_of_temp_40_arithop_54_0
              #                    load from temp_40_arithop_54 in mem


    lw      s7,96(sp)
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_42_array_ele_54, tracked: true } |     a2:Freed { symidx: temp_43_arithop_54, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_38_index_ptr_54, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Freed { symidx: temp_41_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Freed { symidx: temp_39_arithop_54, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_40_arithop_54, tracked: true } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_42_array_ele_54, tracked: true } |     a2:Freed { symidx: temp_43_arithop_54, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } |     a6:Freed { symidx: temp_38_index_ptr_54, tracked: true } |     a7:Freed { symidx: temp_31_arithop_52, tracked: true } |     s10:Freed { symidx: temp_37_cmp_52, tracked: true } |     s11:Freed { symidx: temp_41_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_32_array_ptr_52, tracked: true } |     s2:Freed { symidx: temp_39_arithop_54, tracked: true } |     s3:Freed { symidx: arr2_39, tracked: true } |     s4:Freed { symidx: temp_33_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_34_arithop_52, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_40_arithop_54, tracked: true } |     s8:Freed { symidx: arr1_39, tracked: true } |     s9:Freed { symidx: temp_36_array_ele_52, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_44_arithop_51:i32 
              #                          temp_44_arithop_51 = Add i32 j_41, 1_0 
              #                    occupy a3 with j_41
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_42_array_ele_54 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_42_array_ele_54
              #                    occupy a0 with temp_44_arithop_51
    add     a0,a3,a1
              #                    free a3
              #                    free a1
              #                    free a0
              #                          j_41 = i32 temp_44_arithop_51 
              #                    occupy a0 with temp_44_arithop_51
              #                    occupy a3 with j_41
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          jump label: while.head_50 
              #                    store to temp_39_arithop_54 in mem offset legal
    sw      s2,100(sp)
              #                    release s2 with temp_39_arithop_54
              #                    store to arr2_39 in mem offset legal
    sd      s3,1200(sp)
              #                    release s3 with arr2_39
              #                    store to temp_41_array_ptr_54 in mem offset legal
    sd      s11,88(sp)
              #                    release s11 with temp_41_array_ptr_54
              #                    store to temp_33_array_ele_52 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_33_array_ele_52
              #                    store to temp_37_cmp_52 in mem offset legal
    sb      s10,115(sp)
              #                    release s10 with temp_37_cmp_52
              #                    store to temp_34_arithop_52 in mem offset legal
    sw      s5,128(sp)
              #                    release s5 with temp_34_arithop_52
              #                    store to temp_30_cmp_49 in mem offset legal
    sb      a5,150(sp)
              #                    release a5 with temp_30_cmp_49
              #                    store to temp_38_index_ptr_54 in mem offset legal
    sd      a6,104(sp)
              #                    release a6 with temp_38_index_ptr_54
              #                    store to temp_43_arithop_54 in mem offset legal
    sw      a2,80(sp)
              #                    release a2 with temp_43_arithop_54
              #                    store to temp_36_array_ele_52 in mem offset legal
    sw      s9,116(sp)
              #                    release s9 with temp_36_array_ele_52
              #                    store to len2_39 in mem offset legal
    sw      a4,1196(sp)
              #                    release a4 with len2_39
              #                    store to temp_35_array_ptr_52 in mem offset legal
    sd      s6,120(sp)
              #                    release s6 with temp_35_array_ptr_52
              #                    store to temp_44_arithop_51 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_44_arithop_51
              #                    store to temp_31_arithop_52 in mem offset legal
    sw      a7,144(sp)
              #                    release a7 with temp_31_arithop_52
              #                    store to arr1_39 in mem offset legal
    sd      s8,1216(sp)
              #                    release s8 with arr1_39
              #                    store to temp_32_array_ptr_52 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_32_array_ptr_52
              #                    store to temp_40_arithop_54 in mem offset legal
    sw      s7,96(sp)
              #                    release s7 with temp_40_arithop_54
              #                    occupy a1 with _anonymous_of_len1_39_0
              #                    load from len1_39 in mem


    lw      a1,1212(sp)
              #                    occupy a2 with _anonymous_of_temp_29_cmp_45_0
              #                    load from temp_29_cmp_45 in mem
    lb      a2,151(sp)
              #                    occupy a0 with _anonymous_of_i_41_0
              #                    load from i_41 in mem


    lw      a0,156(sp)
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: j_41, tracked: true } |     a4:Freed { symidx: len2_39, tracked: true } |     a5:Freed { symidx: temp_30_cmp_49, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          new_var temp_53_arithop_47:i32 
              #                          temp_53_arithop_47 = Add i32 i_41, 1_0 
              #                    occupy a0 with i_41
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_53_arithop_47
    add     a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                          i_41 = i32 temp_53_arithop_47 
              #                    occupy a7 with temp_53_arithop_47
              #                    occupy a0 with i_41
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_46 
              #                    store to j_41 in mem offset legal
    sw      a3,152(sp)
              #                    release a3 with j_41
              #                    store to len1_39 in mem offset legal
    sw      a1,1212(sp)
              #                    release a1 with len1_39
              #                    store to temp_30_cmp_49 in mem offset legal
    sb      a5,150(sp)
              #                    release a5 with temp_30_cmp_49
              #                    store to temp_29_cmp_45 in mem offset legal
    sb      a2,151(sp)
              #                    release a2 with temp_29_cmp_45
              #                    store to len2_39 in mem offset legal
    sw      a4,1196(sp)
              #                    release a4 with len2_39
              #                    store to temp_53_arithop_47 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_53_arithop_47
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: i_41, tracked: true } |     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } | 
              #                          label while.exit_46: 
.while.exit_46:
              #                          new_var temp_54_array_ptr_41:ptr->i32 
              #                          temp_54_array_ptr_41 = getelementptr p_41:Array:i32:[Some(16_0), Some(16_0)] [Some(len1_39), Some(len2_39)] 
              #                    occupy a3 with temp_54_array_ptr_41
    li      a3, 0
              #                    occupy a4 with 16_0
    li      a4, 16
              #                    occupy a1 with len1_39
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a1
              #                    free a4
              #                    free a1
    add     a3,a3,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with len2_39
              #                    load from len2_39 in mem


    lw      a7,1196(sp)
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a3,a3,s1
              #                    free s1
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,160
              #                    free a3
              #                          new_var temp_55_array_ele_41:i32 
              #                          temp_55_array_ele_41 = load temp_54_array_ptr_41:ptr->i32 
              #                    occupy a3 with temp_54_array_ptr_41
              #                    occupy s2 with temp_55_array_ele_41
    lw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          ret temp_55_array_ele_41 
              #                    load from ra_longest_common_subseq_0 in mem
    ld      ra,1232(sp)
              #                    load from s0_longest_common_subseq_0 in mem
    ld      s0,1224(sp)
              #                    store to temp_55_array_ele_41 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_55_array_ele_41
              #                    store to i_41 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with i_41
              #                    occupy a0 with temp_55_array_ele_41
              #                    load from temp_55_array_ele_41 in mem


    lw      a0,4(sp)
    addi    sp,sp,1240
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: len1_39, tracked: true } |     a2:Freed { symidx: temp_29_cmp_45, tracked: true } |     a3:Freed { symidx: temp_54_array_ptr_41, tracked: true } |     a7:Freed { symidx: len2_39, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 384|s0_main:8 at 376|temp_56_array_init_ptr:8 at 368|temp_57_array_init_ptr:8 at 360|temp_58_array_init_ptr:8 at 352|temp_59_array_init_ptr:8 at 344|temp_60_array_init_ptr:8 at 336|temp_61_array_init_ptr:8 at 328|temp_62_array_init_ptr:8 at 320|temp_63_array_init_ptr:8 at 312|temp_64_array_init_ptr:8 at 304|temp_65_array_init_ptr:8 at 296|temp_66_array_init_ptr:8 at 288|temp_67_array_init_ptr:8 at 280|temp_68_array_init_ptr:8 at 272|temp_69_array_init_ptr:8 at 264|temp_70_array_init_ptr:8 at 256|temp_71_array_init_ptr:8 at 248|A:60 at 188|none:4 at 184|temp_72_array_init_ptr:8 at 176|temp_73_array_init_ptr:8 at 168|temp_74_array_init_ptr:8 at 160|temp_75_array_init_ptr:8 at 152|temp_76_array_init_ptr:8 at 144|temp_77_array_init_ptr:8 at 136|temp_78_array_init_ptr:8 at 128|temp_79_array_init_ptr:8 at 120|temp_80_array_init_ptr:8 at 112|temp_81_array_init_ptr:8 at 104|temp_82_array_init_ptr:8 at 96|temp_83_array_init_ptr:8 at 88|temp_84_array_init_ptr:8 at 80|temp_85_array_init_ptr:8 at 72|B:52 at 20|An:4 at 16|Bn:4 at 12|temp_86_ret_of_max_sum_nonadjacent:4 at 8|temp_87_ret_of_longest_common_subseq:4 at 4|none:4 at 0
    addi    sp,sp,-392
              #                    store to ra_main_0 in mem offset legal
    sd      ra,384(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,376(sp)
    addi    s0,sp,392
              #                          alloc ptr->i32 temp_56_array_init_ptr_62 
              #                          alloc ptr->i32 temp_57_array_init_ptr_62 
              #                          alloc ptr->i32 temp_58_array_init_ptr_62 
              #                          alloc ptr->i32 temp_59_array_init_ptr_62 
              #                          alloc ptr->i32 temp_60_array_init_ptr_62 
              #                          alloc ptr->i32 temp_61_array_init_ptr_62 
              #                          alloc ptr->i32 temp_62_array_init_ptr_62 
              #                          alloc ptr->i32 temp_63_array_init_ptr_62 
              #                          alloc ptr->i32 temp_64_array_init_ptr_62 
              #                          alloc ptr->i32 temp_65_array_init_ptr_62 
              #                          alloc ptr->i32 temp_66_array_init_ptr_62 
              #                          alloc ptr->i32 temp_67_array_init_ptr_62 
              #                          alloc ptr->i32 temp_68_array_init_ptr_62 
              #                          alloc ptr->i32 temp_69_array_init_ptr_62 
              #                          alloc ptr->i32 temp_70_array_init_ptr_62 
              #                          alloc ptr->i32 temp_71_array_init_ptr_62 
              #                          alloc Array:i32:[Some(15_0)] A_62 
              #                          alloc ptr->i32 temp_72_array_init_ptr_62 
              #                          alloc ptr->i32 temp_73_array_init_ptr_62 
              #                          alloc ptr->i32 temp_74_array_init_ptr_62 
              #                          alloc ptr->i32 temp_75_array_init_ptr_62 
              #                          alloc ptr->i32 temp_76_array_init_ptr_62 
              #                          alloc ptr->i32 temp_77_array_init_ptr_62 
              #                          alloc ptr->i32 temp_78_array_init_ptr_62 
              #                          alloc ptr->i32 temp_79_array_init_ptr_62 
              #                          alloc ptr->i32 temp_80_array_init_ptr_62 
              #                          alloc ptr->i32 temp_81_array_init_ptr_62 
              #                          alloc ptr->i32 temp_82_array_init_ptr_62 
              #                          alloc ptr->i32 temp_83_array_init_ptr_62 
              #                          alloc ptr->i32 temp_84_array_init_ptr_62 
              #                          alloc ptr->i32 temp_85_array_init_ptr_62 
              #                          alloc Array:i32:[Some(13_0)] B_62 
              #                          alloc i32 An_62 
              #                          alloc i32 Bn_62 
              #                          alloc i32 temp_86_ret_of_max_sum_nonadjacent_62 
              #                          alloc i32 temp_87_ret_of_longest_common_subseq_62 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var A_62:Array:i32:[Some(15_0)] 
              #                          new_var temp_56_array_init_ptr_62:ptr->i32 
              #                          temp_56_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [] 
              #                    occupy a0 with temp_56_array_init_ptr_62
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,188
              #                    free a0
              #                           Call void memset_0(temp_56_array_init_ptr_62, 0_0, 60_0) 
              #                    saved register dumping to mem
              #                    store to temp_56_array_init_ptr_62 in mem offset legal
    sd      a0,368(sp)
              #                    release a0 with temp_56_array_init_ptr_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_56_array_init_ptr_62_0
              #                    load from temp_56_array_init_ptr_62 in mem
    ld      a0,368(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_60_0_0
    li      a2, 60
              #                    arg load ended


    call    memset
              #                          new_var temp_57_array_init_ptr_62:ptr->i32 
              #                          temp_57_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(13_0)] 
              #                    occupy a0 with temp_57_array_init_ptr_62
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 13_0
    li      a2, 13
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,188
              #                    free a0
              #                          store 7_0:i32 temp_57_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_57_array_init_ptr_62
              #                    occupy a4 with 7_0
    li      a4, 7
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          mu A_62:264 
              #                          A_62 = chi A_62:264 
              #                          new_var temp_58_array_init_ptr_62:ptr->i32 
              #                          temp_58_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(12_0)] 
              #                    occupy a5 with temp_58_array_init_ptr_62
    li      a5, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a6 with 12_0
    li      a6, 12
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a1,a6
              #                    free a1
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,188
              #                    free a5
              #                          store 3_0:i32 temp_58_array_init_ptr_62:ptr->i32 
              #                    occupy a5 with temp_58_array_init_ptr_62
              #                    occupy s1 with 3_0
    li      s1, 3
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                          mu A_62:270 
              #                          A_62 = chi A_62:270 
              #                          new_var temp_59_array_init_ptr_62:ptr->i32 
              #                          temp_59_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(0_0)] 
              #                    occupy s2 with temp_59_array_init_ptr_62
    li      s2, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a1,s3
              #                    free a1
              #                    free s3
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,188
              #                    free s2
              #                          store 8_0:i32 temp_59_array_init_ptr_62:ptr->i32 
              #                    occupy s2 with temp_59_array_init_ptr_62
              #                    occupy s5 with 8_0
    li      s5, 8
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu A_62:276 
              #                          A_62 = chi A_62:276 
              #                          new_var temp_60_array_init_ptr_62:ptr->i32 
              #                          temp_60_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(9_0)] 
              #                    occupy s6 with temp_60_array_init_ptr_62
    li      s6, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s7 with 9_0
    li      s7, 9
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a1,s7
              #                    free a1
              #                    free s7
    add     s6,s6,s8
              #                    free s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,188
              #                    free s6
              #                          store 3_0:i32 temp_60_array_init_ptr_62:ptr->i32 
              #                    occupy s6 with temp_60_array_init_ptr_62
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
    sw      s1,0(s6)
              #                    free s1
              #                    free s6
              #                          mu A_62:282 
              #                          A_62 = chi A_62:282 
              #                          new_var temp_61_array_init_ptr_62:ptr->i32 
              #                          temp_61_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(8_0)] 
              #                    occupy s9 with temp_61_array_init_ptr_62
    li      s9, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(s5) already exist with 8_0
              #                    occupy s5 with 8_0
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,s5
              #                    free a1
              #                    free s5
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,188
              #                    free s9
              #                          store 9_0:i32 temp_61_array_init_ptr_62:ptr->i32 
              #                    occupy s9 with temp_61_array_init_ptr_62
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
    sw      s7,0(s9)
              #                    free s7
              #                    free s9
              #                          mu A_62:288 
              #                          A_62 = chi A_62:288 
              #                          new_var temp_62_array_init_ptr_62:ptr->i32 
              #                          temp_62_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(3_0)] 
              #                    occupy s11 with temp_62_array_init_ptr_62
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(s1) already exist with 3_0
              #                    occupy s1 with 3_0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a1,s1
              #                    free a1
              #                    free s1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,188
              #                    free s11
              #                          store 1_0:i32 temp_62_array_init_ptr_62:ptr->i32 
              #                    occupy s11 with temp_62_array_init_ptr_62
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          mu A_62:294 
              #                          A_62 = chi A_62:294 
              #                          new_var temp_63_array_init_ptr_62:ptr->i32 
              #                          temp_63_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(2_0)] 
              #                    occupy a1 with temp_63_array_init_ptr_62
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,188
              #                    free a1
              #                          store 4_0:i32 temp_63_array_init_ptr_62:ptr->i32 
              #                    occupy a1 with temp_63_array_init_ptr_62
              #                    occupy a2 with 4_0
    li      a2, 4
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu A_62:300 
              #                          A_62 = chi A_62:300 
              #                          new_var temp_64_array_init_ptr_62:ptr->i32 
              #                          temp_64_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(5_0)] 
              #                    occupy a2 with temp_64_array_init_ptr_62
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 5_0
    li      a4, 5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,188
              #                    free a2
              #                          store 7_0:i32 temp_64_array_init_ptr_62:ptr->i32 
              #                    occupy a2 with temp_64_array_init_ptr_62
              #                    occupy a3 with 7_0
    li      a3, 7
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu A_62:306 
              #                          A_62 = chi A_62:306 
              #                          new_var temp_65_array_init_ptr_62:ptr->i32 
              #                          temp_65_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(11_0)] 
              #                    occupy a3 with temp_65_array_init_ptr_62
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with 11_0
    li      a6, 11
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a6
              #                    free a4
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,188
              #                    free a3
              #                          store 8_0:i32 temp_65_array_init_ptr_62:ptr->i32 
              #                    occupy a3 with temp_65_array_init_ptr_62
              #                    found literal reg Some(s5) already exist with 8_0
              #                    occupy s5 with 8_0
    sw      s5,0(a3)
              #                    free s5
              #                    free a3
              #                          mu A_62:312 
              #                          A_62 = chi A_62:312 
              #                          new_var temp_66_array_init_ptr_62:ptr->i32 
              #                          temp_66_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(14_0)] 
              #                    occupy a4 with temp_66_array_init_ptr_62
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 14_0
    li      a7, 14
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,188
              #                    free a4
              #                          store 0_0:i32 temp_66_array_init_ptr_62:ptr->i32 
              #                    occupy a4 with temp_66_array_init_ptr_62
              #                    found literal reg Some(s3) already exist with 0_0
              #                    occupy s3 with 0_0
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                          mu A_62:318 
              #                          A_62 = chi A_62:318 
              #                          new_var temp_67_array_init_ptr_62:ptr->i32 
              #                          temp_67_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(6_0)] 
              #                    occupy a6 with temp_67_array_init_ptr_62
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with 6_0
    li      s1, 6
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s1
              #                    free a7
              #                    free s1
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,188
              #                    free a6
              #                          store 0_0:i32 temp_67_array_init_ptr_62:ptr->i32 
              #                    occupy a6 with temp_67_array_init_ptr_62
              #                    occupy a7 with 0_0
    li      a7, 0
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu A_62:324 
              #                          A_62 = chi A_62:324 
              #                          new_var temp_68_array_init_ptr_62:ptr->i32 
              #                          temp_68_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(4_0)] 
              #                    occupy a7 with temp_68_array_init_ptr_62
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with 4_0
    li      s3, 4
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,s1,s3
              #                    free s1
              #                    free s3
    add     a7,a7,s4
              #                    free s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,188
              #                    free a7
              #                          store 2_0:i32 temp_68_array_init_ptr_62:ptr->i32 
              #                    occupy a7 with temp_68_array_init_ptr_62
              #                    occupy s1 with 2_0
    li      s1, 2
    sw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          mu A_62:330 
              #                          A_62 = chi A_62:330 
              #                          new_var temp_69_array_init_ptr_62:ptr->i32 
              #                          temp_69_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(7_0)] 
              #                    occupy s1 with temp_69_array_init_ptr_62
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with 7_0
    li      s4, 7
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,188
              #                    free s1
              #                          store 1_0:i32 temp_69_array_init_ptr_62:ptr->i32 
              #                    occupy s1 with temp_69_array_init_ptr_62
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
    sw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          mu A_62:336 
              #                          A_62 = chi A_62:336 
              #                          new_var temp_70_array_init_ptr_62:ptr->i32 
              #                          temp_70_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(1_0)] 
              #                    occupy s3 with temp_70_array_init_ptr_62
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s5
              #                    free s4
              #                    free s5
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,188
              #                    free s3
              #                          store 7_0:i32 temp_70_array_init_ptr_62:ptr->i32 
              #                    occupy s3 with temp_70_array_init_ptr_62
              #                    occupy s4 with 7_0
    li      s4, 7
    sw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          mu A_62:342 
              #                          A_62 = chi A_62:342 
              #                          new_var temp_71_array_init_ptr_62:ptr->i32 
              #                          temp_71_array_init_ptr_62 = getelementptr A_62:Array:i32:[Some(15_0)] [Some(10_0)] 
              #                    occupy s4 with temp_71_array_init_ptr_62
    li      s4, 0
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s7 with 10_0
    li      s7, 10
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s5,s7
              #                    free s5
              #                    free s7
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,188
              #                    free s4
              #                          store 4_0:i32 temp_71_array_init_ptr_62:ptr->i32 
              #                    occupy s4 with temp_71_array_init_ptr_62
              #                    occupy s5 with 4_0
    li      s5, 4
    sw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          mu A_62:348 
              #                          A_62 = chi A_62:348 
              #                          new_var B_62:Array:i32:[Some(13_0)] 
              #                          new_var temp_72_array_init_ptr_62:ptr->i32 
              #                          temp_72_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [] 
              #                    occupy s5 with temp_72_array_init_ptr_62
    li      s5, 0
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,20
              #                    free s5
              #                           Call void memset_0(temp_72_array_init_ptr_62, 0_0, 52_0) 
              #                    saved register dumping to mem
              #                    store to temp_69_array_init_ptr_62 in mem offset legal
    sd      s1,264(sp)
              #                    release s1 with temp_69_array_init_ptr_62
              #                    store to temp_59_array_init_ptr_62 in mem offset legal
    sd      s2,344(sp)
              #                    release s2 with temp_59_array_init_ptr_62
              #                    store to temp_70_array_init_ptr_62 in mem offset legal
    sd      s3,256(sp)
              #                    release s3 with temp_70_array_init_ptr_62
              #                    store to temp_71_array_init_ptr_62 in mem offset legal
    sd      s4,248(sp)
              #                    release s4 with temp_71_array_init_ptr_62
              #                    store to temp_72_array_init_ptr_62 in mem offset legal
    sd      s5,176(sp)
              #                    release s5 with temp_72_array_init_ptr_62
              #                    store to temp_60_array_init_ptr_62 in mem offset legal
    sd      s6,336(sp)
              #                    release s6 with temp_60_array_init_ptr_62
              #                    store to temp_61_array_init_ptr_62 in mem offset legal
    sd      s9,328(sp)
              #                    release s9 with temp_61_array_init_ptr_62
              #                    store to temp_62_array_init_ptr_62 in mem offset legal
    sd      s11,320(sp)
              #                    release s11 with temp_62_array_init_ptr_62
              #                    store to temp_57_array_init_ptr_62 in mem offset legal
    sd      a0,360(sp)
              #                    release a0 with temp_57_array_init_ptr_62
              #                    store to temp_63_array_init_ptr_62 in mem offset legal
    sd      a1,312(sp)
              #                    release a1 with temp_63_array_init_ptr_62
              #                    store to temp_64_array_init_ptr_62 in mem offset legal
    sd      a2,304(sp)
              #                    release a2 with temp_64_array_init_ptr_62
              #                    store to temp_65_array_init_ptr_62 in mem offset legal
    sd      a3,296(sp)
              #                    release a3 with temp_65_array_init_ptr_62
              #                    store to temp_66_array_init_ptr_62 in mem offset legal
    sd      a4,288(sp)
              #                    release a4 with temp_66_array_init_ptr_62
              #                    store to temp_58_array_init_ptr_62 in mem offset legal
    sd      a5,352(sp)
              #                    release a5 with temp_58_array_init_ptr_62
              #                    store to temp_67_array_init_ptr_62 in mem offset legal
    sd      a6,280(sp)
              #                    release a6 with temp_67_array_init_ptr_62
              #                    store to temp_68_array_init_ptr_62 in mem offset legal
    sd      a7,272(sp)
              #                    release a7 with temp_68_array_init_ptr_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_72_array_init_ptr_62_0
              #                    load from temp_72_array_init_ptr_62 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_52_0_0
    li      a2, 52
              #                    arg load ended


    call    memset
              #                          new_var temp_73_array_init_ptr_62:ptr->i32 
              #                          temp_73_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(8_0)] 
              #                    occupy a0 with temp_73_array_init_ptr_62
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 8_0
    li      a2, 8
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,20
              #                    free a0
              #                          store 6_0:i32 temp_73_array_init_ptr_62:ptr->i32 
              #                    occupy a0 with temp_73_array_init_ptr_62
              #                    occupy a4 with 6_0
    li      a4, 6
    sw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                          mu B_62:360 
              #                          B_62 = chi B_62:360 
              #                          new_var temp_74_array_init_ptr_62:ptr->i32 
              #                          temp_74_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(6_0)] 
              #                    occupy a5 with temp_74_array_init_ptr_62
    li      a5, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    found literal reg Some(a4) already exist with 6_0
              #                    occupy a4 with 6_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a1,a4
              #                    free a1
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,20
              #                    free a5
              #                          store 4_0:i32 temp_74_array_init_ptr_62:ptr->i32 
              #                    occupy a5 with temp_74_array_init_ptr_62
              #                    occupy a7 with 4_0
    li      a7, 4
    sw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                          mu B_62:366 
              #                          B_62 = chi B_62:366 
              #                          new_var temp_75_array_init_ptr_62:ptr->i32 
              #                          temp_75_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(9_0)] 
              #                    occupy s1 with temp_75_array_init_ptr_62
    li      s1, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s2 with 9_0
    li      s2, 9
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a1,s2
              #                    free a1
              #                    free s2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,20
              #                    free s1
              #                          store 8_0:i32 temp_75_array_init_ptr_62:ptr->i32 
              #                    occupy s1 with temp_75_array_init_ptr_62
              #                    found literal reg Some(a2) already exist with 8_0
              #                    occupy a2 with 8_0
    sw      a2,0(s1)
              #                    free a2
              #                    free s1
              #                          mu B_62:372 
              #                          B_62 = chi B_62:372 
              #                          new_var temp_76_array_init_ptr_62:ptr->i32 
              #                          temp_76_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(10_0)] 
              #                    occupy s4 with temp_76_array_init_ptr_62
    li      s4, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s5 with 10_0
    li      s5, 10
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a1,s5
              #                    free a1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,20
              #                    free s4
              #                          store 0_0:i32 temp_76_array_init_ptr_62:ptr->i32 
              #                    occupy s4 with temp_76_array_init_ptr_62
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu B_62:378 
              #                          B_62 = chi B_62:378 
              #                          new_var temp_77_array_init_ptr_62:ptr->i32 
              #                          temp_77_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(11_0)] 
              #                    occupy s8 with temp_77_array_init_ptr_62
    li      s8, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy s9 with 11_0
    li      s9, 11
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a1,s9
              #                    free a1
              #                    free s9
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,20
              #                    free s8
              #                          store 1_0:i32 temp_77_array_init_ptr_62:ptr->i32 
              #                    occupy s8 with temp_77_array_init_ptr_62
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu B_62:384 
              #                          B_62 = chi B_62:384 
              #                          new_var temp_78_array_init_ptr_62:ptr->i32 
              #                          temp_78_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(2_0)] 
              #                    occupy s11 with temp_78_array_init_ptr_62
    li      s11, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     s11,s11,a3
              #                    free a3
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,20
              #                    free s11
              #                          store 7_0:i32 temp_78_array_init_ptr_62:ptr->i32 
              #                    occupy s11 with temp_78_array_init_ptr_62
              #                    occupy a1 with 7_0
    li      a1, 7
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          mu B_62:390 
              #                          B_62 = chi B_62:390 
              #                          new_var temp_79_array_init_ptr_62:ptr->i32 
              #                          temp_79_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(12_0)] 
              #                    occupy a1 with temp_79_array_init_ptr_62
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 12_0
    li      a3, 12
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,20
              #                    free a1
              #                          store 5_0:i32 temp_79_array_init_ptr_62:ptr->i32 
              #                    occupy a1 with temp_79_array_init_ptr_62
              #                    occupy a2 with 5_0
    li      a2, 5
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu B_62:396 
              #                          B_62 = chi B_62:396 
              #                          new_var temp_80_array_init_ptr_62:ptr->i32 
              #                          temp_80_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(5_0)] 
              #                    occupy a2 with temp_80_array_init_ptr_62
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 5_0
    li      a4, 5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,20
              #                    free a2
              #                          store 2_0:i32 temp_80_array_init_ptr_62:ptr->i32 
              #                    occupy a2 with temp_80_array_init_ptr_62
              #                    occupy a3 with 2_0
    li      a3, 2
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu B_62:402 
              #                          B_62 = chi B_62:402 
              #                          new_var temp_81_array_init_ptr_62:ptr->i32 
              #                          temp_81_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(3_0)] 
              #                    occupy a3 with temp_81_array_init_ptr_62
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a4,a6
              #                    free a4
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,20
              #                    free a3
              #                          store 1_0:i32 temp_81_array_init_ptr_62:ptr->i32 
              #                    occupy a3 with temp_81_array_init_ptr_62
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu B_62:408 
              #                          B_62 = chi B_62:408 
              #                          new_var temp_82_array_init_ptr_62:ptr->i32 
              #                          temp_82_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(4_0)] 
              #                    occupy a4 with temp_82_array_init_ptr_62
    li      a4, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with 4_0
    li      a7, 4
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a7
              #                    free a6
              #                    free a7
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,20
              #                    free a4
              #                          store 4_0:i32 temp_82_array_init_ptr_62:ptr->i32 
              #                    occupy a4 with temp_82_array_init_ptr_62
              #                    found literal reg Some(a7) already exist with 4_0
              #                    occupy a7 with 4_0
    sw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          mu B_62:414 
              #                          B_62 = chi B_62:414 
              #                          new_var temp_83_array_init_ptr_62:ptr->i32 
              #                          temp_83_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(0_0)] 
              #                    occupy a6 with temp_83_array_init_ptr_62
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    found literal reg Some(s7) already exist with 0_0
              #                    occupy s7 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a7,s7
              #                    free a7
              #                    free s7
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,20
              #                    free a6
              #                          store 3_0:i32 temp_83_array_init_ptr_62:ptr->i32 
              #                    occupy a6 with temp_83_array_init_ptr_62
              #                    occupy a7 with 3_0
    li      a7, 3
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          mu B_62:420 
              #                          B_62 = chi B_62:420 
              #                          new_var temp_84_array_init_ptr_62:ptr->i32 
              #                          temp_84_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(1_0)] 
              #                    occupy a7 with temp_84_array_init_ptr_62
    li      a7, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,20
              #                    free a7
              #                          store 9_0:i32 temp_84_array_init_ptr_62:ptr->i32 
              #                    occupy a7 with temp_84_array_init_ptr_62
              #                    occupy s2 with 9_0
    li      s2, 9
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          mu B_62:426 
              #                          B_62 = chi B_62:426 
              #                          new_var temp_85_array_init_ptr_62:ptr->i32 
              #                          temp_85_array_init_ptr_62 = getelementptr B_62:Array:i32:[Some(13_0)] [Some(7_0)] 
              #                    occupy s2 with temp_85_array_init_ptr_62
    li      s2, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s5 with 7_0
    li      s5, 7
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s3,s5
              #                    free s3
              #                    free s5
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,20
              #                    free s2
              #                          store 3_0:i32 temp_85_array_init_ptr_62:ptr->i32 
              #                    occupy s2 with temp_85_array_init_ptr_62
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu B_62:432 
              #                          B_62 = chi B_62:432 
              #                          new_var An_62:i32 
              #                          new_var Bn_62:i32 
              #                          new_var temp_86_ret_of_max_sum_nonadjacent_62:i32 
              #                          temp_86_ret_of_max_sum_nonadjacent_62 =  Call i32 max_sum_nonadjacent_0(A_62, 15_0) 
              #                    saved register dumping to mem
              #                    store to temp_75_array_init_ptr_62 in mem offset legal
    sd      s1,152(sp)
              #                    release s1 with temp_75_array_init_ptr_62
              #                    store to temp_85_array_init_ptr_62 in mem offset legal
    sd      s2,72(sp)
              #                    release s2 with temp_85_array_init_ptr_62
              #                    store to temp_76_array_init_ptr_62 in mem offset legal
    sd      s4,144(sp)
              #                    release s4 with temp_76_array_init_ptr_62
              #                    store to temp_77_array_init_ptr_62 in mem offset legal
    sd      s8,136(sp)
              #                    release s8 with temp_77_array_init_ptr_62
              #                    store to temp_78_array_init_ptr_62 in mem offset legal
    sd      s11,128(sp)
              #                    release s11 with temp_78_array_init_ptr_62
              #                    store to temp_73_array_init_ptr_62 in mem offset legal
    sd      a0,168(sp)
              #                    release a0 with temp_73_array_init_ptr_62
              #                    store to temp_79_array_init_ptr_62 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with temp_79_array_init_ptr_62
              #                    store to temp_80_array_init_ptr_62 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_80_array_init_ptr_62
              #                    store to temp_81_array_init_ptr_62 in mem offset legal
    sd      a3,104(sp)
              #                    release a3 with temp_81_array_init_ptr_62
              #                    store to temp_82_array_init_ptr_62 in mem offset legal
    sd      a4,96(sp)
              #                    release a4 with temp_82_array_init_ptr_62
              #                    store to temp_74_array_init_ptr_62 in mem offset legal
    sd      a5,160(sp)
              #                    release a5 with temp_74_array_init_ptr_62
              #                    store to temp_83_array_init_ptr_62 in mem offset legal
    sd      a6,88(sp)
              #                    release a6 with temp_83_array_init_ptr_62
              #                    store to temp_84_array_init_ptr_62 in mem offset legal
    sd      a7,80(sp)
              #                    release a7 with temp_84_array_init_ptr_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_A_62_0
              #                    load from A_62 in mem
    lw      a0,188(sp)
              #                    occupy a1 with _anonymous_of_15_0_0
    li      a1, 15
              #                    arg load ended


    call    max_sum_nonadjacent
              #                    store to temp_86_ret_of_max_sum_nonadjacent_62 in mem offset legal
    sw      a0,8(sp)
              #                           Call void putint_0(temp_86_ret_of_max_sum_nonadjacent_62) 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_max_sum_nonadjacent_62 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_86_ret_of_max_sum_nonadjacent_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_86_ret_of_max_sum_nonadjacent_62_0
              #                    load from temp_86_ret_of_max_sum_nonadjacent_62 in mem


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
              #                          new_var temp_87_ret_of_longest_common_subseq_62:i32 
              #                          temp_87_ret_of_longest_common_subseq_62 =  Call i32 longest_common_subseq_0(A_62, 15_0, B_62, 13_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_A_62_0
              #                    load from A_62 in mem
    lw      a0,188(sp)
              #                    occupy a1 with _anonymous_of_15_0_0
    li      a1, 15
              #                    occupy a2 with _anonymous_of_B_62_0
              #                    load from B_62 in mem
    lw      a2,20(sp)
              #                    occupy a3 with _anonymous_of_13_0_0
    li      a3, 13
              #                    arg load ended


    call    longest_common_subseq
              #                    store to temp_87_ret_of_longest_common_subseq_62 in mem offset legal
    sw      a0,4(sp)
              #                           Call void putint_0(temp_87_ret_of_longest_common_subseq_62) 
              #                    saved register dumping to mem
              #                    store to temp_87_ret_of_longest_common_subseq_62 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_87_ret_of_longest_common_subseq_62
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_ret_of_longest_common_subseq_62_0
              #                    load from temp_87_ret_of_longest_common_subseq_62 in mem


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
    ld      ra,384(sp)
              #                    load from s0_main_0 in mem
    ld      s0,376(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,392
              #                    free a0
    ret
              #                    regtab 
