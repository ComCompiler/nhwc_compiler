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
              #                          Define inc_impl_0 [x_17, rec_17] -> inc_impl_ret_0 
    .globl inc_impl
    .type inc_impl,@function
inc_impl:
              #                    mem layout:|ra_inc_impl:8 at 80|s0_inc_impl:8 at 72|x:8 at 64|rec:4 at 60|temp_0_cmp:1 at 59|none:3 at 56|temp_1_index_ptr:8 at 48|temp_2_array_ptr:8 at 40|temp_3_array_ele:4 at 36|temp_4_arithop:4 at 32|temp_5_index_ptr:8 at 24|temp_6_array_ptr:8 at 16|temp_7_array_ele:4 at 12|temp_8_arithop:4 at 8|temp_9_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-88
              #                    store to ra_inc_impl_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_inc_impl_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          new_var x_17:ptr->i32 
              #                          alloc i1 temp_0_cmp_20 
              #                          alloc ptr->i32 temp_1_index_ptr_22 
              #                          alloc ptr->i32 temp_2_array_ptr_22 
              #                          alloc i32 temp_3_array_ele_22 
              #                          alloc i32 temp_4_arithop_22 
              #                          alloc ptr->i32 temp_5_index_ptr_24 
              #                          alloc ptr->i32 temp_6_array_ptr_24 
              #                          alloc i32 temp_7_array_ele_24 
              #                          alloc i32 temp_8_arithop_24 
              #                          alloc i32 temp_9_arithop_24 
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_0_cmp_20:i1 
              #                          temp_0_cmp_20 = icmp i32 Eq rec_17, 0_0 
              #                    occupy a1 with rec_17
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_0_cmp_20
    xor     a3,a1,a2
    seqz    a3, a3
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
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          new_var temp_1_index_ptr_22:ptr->i32 
              #                          temp_1_index_ptr_22 = getelementptr x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_1_index_ptr_22
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a0 with x_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_2_array_ptr_22:ptr->i32 
              #                          temp_2_array_ptr_22 = getelementptr x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a7 with temp_2_array_ptr_22
    li      a7, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a4,a5
              #                    free a4
              #                    free a5
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with x_17
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          new_var temp_3_array_ele_22:i32 
              #                          temp_3_array_ele_22 = load temp_2_array_ptr_22:ptr->i32 
              #                    occupy a7 with temp_2_array_ptr_22
              #                    occupy s2 with temp_3_array_ele_22
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          new_var temp_4_arithop_22:i32 
              #                          temp_4_arithop_22 = Add i32 temp_3_array_ele_22, 1_0 
              #                    occupy s2 with temp_3_array_ele_22
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with temp_4_arithop_22
    add     s3,s2,a4
              #                    free s2
              #                    free a4
              #                    free s3
              #                          store temp_4_arithop_22:i32 temp_1_index_ptr_22:ptr->i32 
              #                    occupy a2 with temp_1_index_ptr_22
              #                    occupy s3 with temp_4_arithop_22
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                          mu x_17:54 
              #                          x_17 = chi x_17:54 
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                          new_var temp_5_index_ptr_24:ptr->i32 
              #                          temp_5_index_ptr_24 = getelementptr x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_5_index_ptr_24
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a0 with x_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_6_array_ptr_24:ptr->i32 
              #                          temp_6_array_ptr_24 = getelementptr x_17:ptr->i32 [Some(0_0)] 
              #                    occupy a7 with temp_6_array_ptr_24
    li      a7, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a5) already exist with 0_0
              #                    occupy a5 with 0_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a4,a5
              #                    free a4
              #                    free a5
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with x_17
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          new_var temp_7_array_ele_24:i32 
              #                          temp_7_array_ele_24 = load temp_6_array_ptr_24:ptr->i32 
              #                    occupy a7 with temp_6_array_ptr_24
              #                    occupy s2 with temp_7_array_ele_24
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                          new_var temp_8_arithop_24:i32 
              #                          temp_8_arithop_24 = Mul i32 temp_7_array_ele_24, 2_0 
              #                    occupy s2 with temp_7_array_ele_24
              #                    occupy s3 with 2_0
    li      s3, 2
              #                    occupy s4 with temp_8_arithop_24
    mul     s4,s2,s3
              #                    free s2
              #                    free s3
              #                    free s4
              #                          store temp_8_arithop_24:i32 temp_5_index_ptr_24:ptr->i32 
              #                    occupy a2 with temp_5_index_ptr_24
              #                    occupy s4 with temp_8_arithop_24
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          mu x_17:69 
              #                          x_17 = chi x_17:69 
              #                          new_var temp_9_arithop_24:i32 
              #                          temp_9_arithop_24 = Sub i32 rec_17, 1_0 
              #                    occupy a1 with rec_17
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s5 with temp_9_arithop_24
              #                    regtab:    a0:Freed { symidx: x_17, tracked: true } |     a1:Occupied { symidx: rec_17, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_5_index_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: 0_0, tracked: false } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Freed { symidx: temp_6_array_ptr_24, tracked: true } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Freed { symidx: temp_7_array_ele_24, tracked: true } |     s3:Freed { symidx: 2_0, tracked: false } |     s4:Freed { symidx: temp_8_arithop_24, tracked: true } |     s5:Occupied { symidx: temp_9_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s5,a1,a4
              #                    free a1
              #                    free a4
              #                    free s5
              #                           Call void inc_impl_0(x_17, temp_9_arithop_24) 
              #                    saved register dumping to mem
              #                    store to temp_7_array_ele_24 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_7_array_ele_24
              #                    store to temp_8_arithop_24 in mem offset legal
    sw      s4,8(sp)
              #                    release s4 with temp_8_arithop_24
              #                    store to temp_9_arithop_24 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_9_arithop_24
              #                    store to x_17 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with x_17
              #                    store to rec_17 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with rec_17
              #                    store to temp_5_index_ptr_24 in mem offset legal
    sd      a2,24(sp)
              #                    release a2 with temp_5_index_ptr_24
              #                    store to temp_0_cmp_20 in mem offset legal
    sb      a3,59(sp)
              #                    release a3 with temp_0_cmp_20
              #                    store to temp_6_array_ptr_24 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_6_array_ptr_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_17_0
              #                    load from x_17 in mem
    ld      a0,64(sp)
              #                    occupy a1 with _anonymous_of_temp_9_arithop_24_0
              #                    load from temp_9_arithop_24 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    inc_impl
              #                          jump label: L10_0 
              #                    occupy s2 with _anonymous_of_temp_3_array_ele_22_0
              #                    load from temp_3_array_ele_22 in mem


    lw      s2,36(sp)
              #                    occupy s3 with _anonymous_of_temp_4_arithop_22_0
              #                    load from temp_4_arithop_22 in mem


    lw      s3,32(sp)
              #                    occupy a7 with _anonymous_of_temp_2_array_ptr_22_0
              #                    load from temp_2_array_ptr_22 in mem
    ld      a7,40(sp)
              #                    occupy a3 with _anonymous_of_temp_0_cmp_20_0
              #                    load from temp_0_cmp_20 in mem
    lb      a3,59(sp)
              #                    occupy a2 with _anonymous_of_temp_1_index_ptr_22_0
              #                    load from temp_1_index_ptr_22 in mem
    ld      a2,48(sp)
              #                    occupy a1 with _anonymous_of_rec_17_0
              #                    load from rec_17 in mem


    lw      a1,60(sp)
              #                    occupy a0 with _anonymous_of_x_17_0
              #                    load from x_17 in mem
    ld      a0,64(sp)
    j       .L10_0
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17, tracked: true } |     a2:Freed { symidx: temp_1_index_ptr_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a7:Freed { symidx: temp_2_array_ptr_22, tracked: true } |     s2:Freed { symidx: temp_3_array_ele_22, tracked: true } |     s3:Freed { symidx: temp_4_arithop_22, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a0:Freed { symidx: x_17, tracked: true } |     a1:Freed { symidx: rec_17, tracked: true } |     a2:Freed { symidx: temp_1_index_ptr_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a7:Freed { symidx: temp_2_array_ptr_22, tracked: true } |     s2:Freed { symidx: temp_3_array_ele_22, tracked: true } |     s3:Freed { symidx: temp_4_arithop_22, tracked: true } | 
              #                    regtab 
              #                          Define inc_0 [x_27] -> inc_ret_0 
    .globl inc
    .type inc,@function
inc:
              #                    mem layout:|ra_inc:8 at 32|s0_inc:8 at 24|x:8 at 16|temp_10_array_ptr:8 at 8|temp_11_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_inc_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_inc_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          new_var x_27:ptr->i32 
              #                          alloc ptr->i32 temp_10_array_ptr_29 
              #                          alloc i32 temp_11_array_ele_29 
              #                    regtab     a0:Freed { symidx: x_27, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_10_array_ptr_29:ptr->i32 
              #                          temp_10_array_ptr_29 = getelementptr *k_0:ptr->i32 [Some(0_0)] 
              #                    occupy a1 with temp_10_array_ptr_29
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *k_0
              #                       load label k as ptr to reg
    la      a5, k
              #                    occupy reg a5 with *k_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          new_var temp_11_array_ele_29:i32 
              #                          temp_11_array_ele_29 = load temp_10_array_ptr_29:ptr->i32 
              #                    occupy a1 with temp_10_array_ptr_29
              #                    occupy a6 with temp_11_array_ele_29
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                           Call void inc_impl_0(x_27, temp_11_array_ele_29) 
              #                    saved register dumping to mem
              #                    store to x_27 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with x_27
              #                    store to temp_10_array_ptr_29 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_10_array_ptr_29
              #                    store to temp_11_array_ele_29 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_11_array_ele_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_27_0
              #                    load from x_27 in mem
    ld      a0,16(sp)
              #                    occupy a1 with _anonymous_of_temp_11_array_ele_29_0
              #                    load from temp_11_array_ele_29 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    inc_impl
              #                    regtab 
              #                    regtab 
              #                          Define add_impl_0 [x_31, y_31, rec_31] -> add_impl_ret_0 
    .globl add_impl
    .type add_impl,@function
add_impl:
              #                    mem layout:|ra_add_impl:8 at 104|s0_add_impl:8 at 96|x:8 at 88|y:8 at 80|rec:4 at 76|temp_12_cmp:1 at 75|none:3 at 72|temp_13_index_ptr:8 at 64|temp_14_array_ptr:8 at 56|temp_15_array_ele:4 at 52|none:4 at 48|temp_16_array_ptr:8 at 40|temp_17_array_ele:4 at 36|temp_18_arithop:4 at 32|temp_19_index_ptr:8 at 24|temp_20_array_ptr:8 at 16|temp_21_array_ele:4 at 12|temp_22_arithop:4 at 8|temp_23_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-112
              #                    store to ra_add_impl_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_add_impl_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                          new_var x_31:ptr->i32 
              #                          new_var y_31:ptr->i32 
              #                          alloc i1 temp_12_cmp_34 
              #                          alloc ptr->i32 temp_13_index_ptr_36 
              #                          alloc ptr->i32 temp_14_array_ptr_36 
              #                          alloc i32 temp_15_array_ele_36 
              #                          alloc ptr->i32 temp_16_array_ptr_36 
              #                          alloc i32 temp_17_array_ele_36 
              #                          alloc i32 temp_18_arithop_36 
              #                          alloc ptr->i32 temp_19_index_ptr_38 
              #                          alloc ptr->i32 temp_20_array_ptr_38 
              #                          alloc i32 temp_21_array_ele_38 
              #                          alloc i32 temp_22_arithop_38 
              #                          alloc i32 temp_23_arithop_38 
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_12_cmp_34:i1 
              #                          temp_12_cmp_34 = icmp i32 Eq rec_31, 0_0 
              #                    occupy a2 with rec_31
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_12_cmp_34
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_12_cmp_34, label branch_true_35, label branch_false_35 
              #                    occupy a4 with temp_12_cmp_34
              #                    free a4
              #                    occupy a4 with temp_12_cmp_34
    bnez    a4, .branch_true_35
              #                    free a4
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31, tracked: true } |     a4:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          new_var temp_13_index_ptr_36:ptr->i32 
              #                          temp_13_index_ptr_36 = getelementptr x_31:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_13_index_ptr_36
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with x_31
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_14_array_ptr_36:ptr->i32 
              #                          temp_14_array_ptr_36 = getelementptr y_31:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_14_array_ptr_36
    li      s1, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a6
              #                    free a5
              #                    free a6
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a1 with y_31
    add     s1,s1,a1
              #                    free a1
              #                    free s1
              #                          new_var temp_15_array_ele_36:i32 
              #                          temp_15_array_ele_36 = load temp_14_array_ptr_36:ptr->i32 
              #                    occupy s1 with temp_14_array_ptr_36
              #                    occupy s3 with temp_15_array_ele_36
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_16_array_ptr_36:ptr->i32 
              #                          temp_16_array_ptr_36 = getelementptr x_31:ptr->i32 [Some(0_0)] 
              #                    occupy s4 with temp_16_array_ptr_36
    li      s4, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a5,a6
              #                    free a5
              #                    free a6
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with x_31
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_17_array_ele_36:i32 
              #                          temp_17_array_ele_36 = load temp_16_array_ptr_36:ptr->i32 
              #                    occupy s4 with temp_16_array_ptr_36
              #                    occupy s6 with temp_17_array_ele_36
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_18_arithop_36:i32 
              #                          temp_18_arithop_36 = Add i32 temp_17_array_ele_36, temp_15_array_ele_36 
              #                    occupy s6 with temp_17_array_ele_36
              #                    occupy s3 with temp_15_array_ele_36
              #                    occupy s7 with temp_18_arithop_36
    add     s7,s6,s3
              #                    free s6
              #                    free s3
              #                    free s7
              #                          store temp_18_arithop_36:i32 temp_13_index_ptr_36:ptr->i32 
              #                    occupy a3 with temp_13_index_ptr_36
              #                    occupy s7 with temp_18_arithop_36
    sw      s7,0(a3)
              #                    free s7
              #                    free a3
              #                          mu x_31:107 
              #                          x_31 = chi x_31:107 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31, tracked: true } |     a4:Freed { symidx: temp_12_cmp_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                          new_var temp_19_index_ptr_38:ptr->i32 
              #                          temp_19_index_ptr_38 = getelementptr x_31:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_19_index_ptr_38
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with x_31
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_20_array_ptr_38:ptr->i32 
              #                          temp_20_array_ptr_38 = getelementptr x_31:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_20_array_ptr_38
    li      s1, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a6
              #                    free a5
              #                    free a6
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with x_31
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          new_var temp_21_array_ele_38:i32 
              #                          temp_21_array_ele_38 = load temp_20_array_ptr_38:ptr->i32 
              #                    occupy s1 with temp_20_array_ptr_38
              #                    occupy s3 with temp_21_array_ele_38
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_22_arithop_38:i32 
              #                          temp_22_arithop_38 = Mul i32 temp_21_array_ele_38, 2_0 
              #                    occupy s3 with temp_21_array_ele_38
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s5 with temp_22_arithop_38
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
              #                    free s5
              #                          store temp_22_arithop_38:i32 temp_19_index_ptr_38:ptr->i32 
              #                    occupy a3 with temp_19_index_ptr_38
              #                    occupy s5 with temp_22_arithop_38
    sw      s5,0(a3)
              #                    free s5
              #                    free a3
              #                          mu x_31:122 
              #                          x_31 = chi x_31:122 
              #                          new_var temp_23_arithop_38:i32 
              #                          temp_23_arithop_38 = Sub i32 rec_31, 1_0 
              #                    occupy a2 with rec_31
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s6 with temp_23_arithop_38
              #                    regtab:    a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Occupied { symidx: rec_31, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_19_index_ptr_38, tracked: true } |     a4:Freed { symidx: temp_12_cmp_34, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: 0_0, tracked: false } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: temp_20_array_ptr_38, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: temp_21_array_ele_38, tracked: true } |     s4:Freed { symidx: 2_0, tracked: false } |     s5:Freed { symidx: temp_22_arithop_38, tracked: true } |     s6:Occupied { symidx: temp_23_arithop_38, tracked: true, occupy_count: 1 } | 


    sub     s6,a2,a5
              #                    free a2
              #                    free a5
              #                    free s6
              #                           Call void add_impl_0(x_31, y_31, temp_23_arithop_38) 
              #                    saved register dumping to mem
              #                    store to temp_20_array_ptr_38 in mem offset legal
    sd      s1,16(sp)
              #                    release s1 with temp_20_array_ptr_38
              #                    store to temp_21_array_ele_38 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_21_array_ele_38
              #                    store to temp_22_arithop_38 in mem offset legal
    sw      s5,8(sp)
              #                    release s5 with temp_22_arithop_38
              #                    store to temp_23_arithop_38 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_23_arithop_38
              #                    store to x_31 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with x_31
              #                    store to y_31 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with y_31
              #                    store to rec_31 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with rec_31
              #                    store to temp_19_index_ptr_38 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_19_index_ptr_38
              #                    store to temp_12_cmp_34 in mem offset legal
    sb      a4,75(sp)
              #                    release a4 with temp_12_cmp_34
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_31_0
              #                    load from x_31 in mem
    ld      a0,88(sp)
              #                    occupy a1 with _anonymous_of_y_31_0
              #                    load from y_31 in mem
    ld      a1,80(sp)
              #                    occupy a2 with _anonymous_of_temp_23_arithop_38_0
              #                    load from temp_23_arithop_38 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    add_impl
              #                          jump label: L7_0 
              #                    occupy a2 with _anonymous_of_rec_31_0
              #                    load from rec_31 in mem


    lw      a2,76(sp)
              #                    occupy a3 with _anonymous_of_temp_13_index_ptr_36_0
              #                    load from temp_13_index_ptr_36 in mem
    ld      a3,64(sp)
              #                    occupy s6 with _anonymous_of_temp_17_array_ele_36_0
              #                    load from temp_17_array_ele_36 in mem


    lw      s6,36(sp)
              #                    occupy a1 with _anonymous_of_y_31_0
              #                    load from y_31 in mem
    ld      a1,80(sp)
              #                    occupy s1 with _anonymous_of_temp_14_array_ptr_36_0
              #                    load from temp_14_array_ptr_36 in mem
    ld      s1,56(sp)
              #                    occupy a4 with _anonymous_of_temp_12_cmp_34_0
              #                    load from temp_12_cmp_34 in mem
    lb      a4,75(sp)
              #                    occupy s3 with _anonymous_of_temp_15_array_ele_36_0
              #                    load from temp_15_array_ele_36 in mem


    lw      s3,52(sp)
              #                    occupy s4 with _anonymous_of_temp_16_array_ptr_36_0
              #                    load from temp_16_array_ptr_36 in mem
    ld      s4,40(sp)
              #                    occupy s7 with _anonymous_of_temp_18_arithop_36_0
              #                    load from temp_18_arithop_36 in mem


    lw      s7,32(sp)
              #                    occupy a0 with _anonymous_of_x_31_0
              #                    load from x_31 in mem
    ld      a0,88(sp)
    j       .L7_0
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31, tracked: true } |     a3:Freed { symidx: temp_13_index_ptr_36, tracked: true } |     a4:Freed { symidx: temp_12_cmp_34, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_36, tracked: true } |     s3:Freed { symidx: temp_15_array_ele_36, tracked: true } |     s4:Freed { symidx: temp_16_array_ptr_36, tracked: true } |     s6:Freed { symidx: temp_17_array_ele_36, tracked: true } |     s7:Freed { symidx: temp_18_arithop_36, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: x_31, tracked: true } |     a1:Freed { symidx: y_31, tracked: true } |     a2:Freed { symidx: rec_31, tracked: true } |     a3:Freed { symidx: temp_13_index_ptr_36, tracked: true } |     a4:Freed { symidx: temp_12_cmp_34, tracked: true } |     s1:Freed { symidx: temp_14_array_ptr_36, tracked: true } |     s3:Freed { symidx: temp_15_array_ele_36, tracked: true } |     s4:Freed { symidx: temp_16_array_ptr_36, tracked: true } |     s6:Freed { symidx: temp_17_array_ele_36, tracked: true } |     s7:Freed { symidx: temp_18_arithop_36, tracked: true } | 
              #                    regtab 
              #                          Define add_0 [x_41, y_41] -> add_ret_0 
    .globl add
    .type add,@function
add:
              #                    mem layout:|ra_add:8 at 40|s0_add:8 at 32|x:8 at 24|y:8 at 16|temp_24_array_ptr:8 at 8|temp_25_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_add_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_add_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          new_var x_41:ptr->i32 
              #                          new_var y_41:ptr->i32 
              #                          alloc ptr->i32 temp_24_array_ptr_43 
              #                          alloc i32 temp_25_array_ele_43 
              #                    regtab     a0:Freed { symidx: x_41, tracked: true } |     a1:Freed { symidx: y_41, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_24_array_ptr_43:ptr->i32 
              #                          temp_24_array_ptr_43 = getelementptr *k_0:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_24_array_ptr_43
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
              #                    occupy a6 with *k_0
              #                       load label k as ptr to reg
    la      a6, k
              #                    occupy reg a6 with *k_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_25_array_ele_43:i32 
              #                          temp_25_array_ele_43 = load temp_24_array_ptr_43:ptr->i32 
              #                    occupy a2 with temp_24_array_ptr_43
              #                    occupy a7 with temp_25_array_ele_43
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                           Call void add_impl_0(x_41, y_41, temp_25_array_ele_43) 
              #                    saved register dumping to mem
              #                    store to x_41 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with x_41
              #                    store to y_41 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with y_41
              #                    store to temp_24_array_ptr_43 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_24_array_ptr_43
              #                    store to temp_25_array_ele_43 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_25_array_ele_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_41_0
              #                    load from x_41 in mem
    ld      a0,24(sp)
              #                    occupy a1 with _anonymous_of_y_41_0
              #                    load from y_41 in mem
    ld      a1,16(sp)
              #                    occupy a2 with _anonymous_of_temp_25_array_ele_43_0
              #                    load from temp_25_array_ele_43 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    add_impl
              #                    regtab 
              #                    regtab 
              #                          Define sub_impl_0 [x_45, y_45, rec_45] -> sub_impl_ret_0 
    .globl sub_impl
    .type sub_impl,@function
sub_impl:
              #                    mem layout:|ra_sub_impl:8 at 104|s0_sub_impl:8 at 96|x:8 at 88|y:8 at 80|rec:4 at 76|temp_26_cmp:1 at 75|none:3 at 72|temp_27_index_ptr:8 at 64|temp_28_array_ptr:8 at 56|temp_29_array_ele:4 at 52|none:4 at 48|temp_30_array_ptr:8 at 40|temp_31_array_ele:4 at 36|temp_32_arithop:4 at 32|temp_33_index_ptr:8 at 24|temp_34_array_ptr:8 at 16|temp_35_array_ele:4 at 12|temp_36_arithop:4 at 8|temp_37_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-112
              #                    store to ra_sub_impl_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_sub_impl_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                          new_var x_45:ptr->i32 
              #                          new_var y_45:ptr->i32 
              #                          alloc i1 temp_26_cmp_48 
              #                          alloc ptr->i32 temp_27_index_ptr_50 
              #                          alloc ptr->i32 temp_28_array_ptr_50 
              #                          alloc i32 temp_29_array_ele_50 
              #                          alloc ptr->i32 temp_30_array_ptr_50 
              #                          alloc i32 temp_31_array_ele_50 
              #                          alloc i32 temp_32_arithop_50 
              #                          alloc ptr->i32 temp_33_index_ptr_52 
              #                          alloc ptr->i32 temp_34_array_ptr_52 
              #                          alloc i32 temp_35_array_ele_52 
              #                          alloc i32 temp_36_arithop_52 
              #                          alloc i32 temp_37_arithop_52 
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_26_cmp_48:i1 
              #                          temp_26_cmp_48 = icmp i32 Eq rec_45, 0_0 
              #                    occupy a2 with rec_45
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_26_cmp_48
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_26_cmp_48, label branch_true_49, label branch_false_49 
              #                    occupy a4 with temp_26_cmp_48
              #                    free a4
              #                    occupy a4 with temp_26_cmp_48
    bnez    a4, .branch_true_49
              #                    free a4
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } | 
              #                          label branch_true_49: 
.branch_true_49:
              #                          new_var temp_27_index_ptr_50:ptr->i32 
              #                          temp_27_index_ptr_50 = getelementptr x_45:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_27_index_ptr_50
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with x_45
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_28_array_ptr_50:ptr->i32 
              #                          temp_28_array_ptr_50 = getelementptr y_45:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_28_array_ptr_50
    li      s1, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a6
              #                    free a5
              #                    free a6
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a1 with y_45
    add     s1,s1,a1
              #                    free a1
              #                    free s1
              #                          new_var temp_29_array_ele_50:i32 
              #                          temp_29_array_ele_50 = load temp_28_array_ptr_50:ptr->i32 
              #                    occupy s1 with temp_28_array_ptr_50
              #                    occupy s3 with temp_29_array_ele_50
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_30_array_ptr_50:ptr->i32 
              #                          temp_30_array_ptr_50 = getelementptr x_45:ptr->i32 [Some(0_0)] 
              #                    occupy s4 with temp_30_array_ptr_50
    li      s4, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a5,a6
              #                    free a5
              #                    free a6
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with x_45
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_31_array_ele_50:i32 
              #                          temp_31_array_ele_50 = load temp_30_array_ptr_50:ptr->i32 
              #                    occupy s4 with temp_30_array_ptr_50
              #                    occupy s6 with temp_31_array_ele_50
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_32_arithop_50:i32 
              #                          temp_32_arithop_50 = Sub i32 temp_31_array_ele_50, temp_29_array_ele_50 
              #                    occupy s6 with temp_31_array_ele_50
              #                    occupy s3 with temp_29_array_ele_50
              #                    occupy s7 with temp_32_arithop_50
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } |     a3:Freed { symidx: temp_27_index_ptr_50, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } |     a5:Freed { symidx: 1_0, tracked: false } |     a6:Freed { symidx: 0_0, tracked: false } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: temp_28_array_ptr_50, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Occupied { symidx: temp_29_array_ele_50, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_30_array_ptr_50, tracked: true } |     s5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s6:Occupied { symidx: temp_31_array_ele_50, tracked: true, occupy_count: 1 } |     s7:Occupied { symidx: temp_32_arithop_50, tracked: true, occupy_count: 1 } | 


    sub     s7,s6,s3
              #                    free s6
              #                    free s3
              #                    free s7
              #                          store temp_32_arithop_50:i32 temp_27_index_ptr_50:ptr->i32 
              #                    occupy a3 with temp_27_index_ptr_50
              #                    occupy s7 with temp_32_arithop_50
    sw      s7,0(a3)
              #                    free s7
              #                    free a3
              #                          mu x_45:160 
              #                          x_45 = chi x_45:160 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } | 
              #                          label branch_false_49: 
.branch_false_49:
              #                          new_var temp_33_index_ptr_52:ptr->i32 
              #                          temp_33_index_ptr_52 = getelementptr x_45:ptr->i32 [Some(0_0)] 
              #                    occupy a3 with temp_33_index_ptr_52
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with x_45
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_34_array_ptr_52:ptr->i32 
              #                          temp_34_array_ptr_52 = getelementptr x_45:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_34_array_ptr_52
    li      s1, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a5,a6
              #                    free a5
              #                    free a6
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with x_45
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          new_var temp_35_array_ele_52:i32 
              #                          temp_35_array_ele_52 = load temp_34_array_ptr_52:ptr->i32 
              #                    occupy s1 with temp_34_array_ptr_52
              #                    occupy s3 with temp_35_array_ele_52
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          new_var temp_36_arithop_52:i32 
              #                          temp_36_arithop_52 = Mul i32 temp_35_array_ele_52, 2_0 
              #                    occupy s3 with temp_35_array_ele_52
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s5 with temp_36_arithop_52
    mul     s5,s3,s4
              #                    free s3
              #                    free s4
              #                    free s5
              #                          store temp_36_arithop_52:i32 temp_33_index_ptr_52:ptr->i32 
              #                    occupy a3 with temp_33_index_ptr_52
              #                    occupy s5 with temp_36_arithop_52
    sw      s5,0(a3)
              #                    free s5
              #                    free a3
              #                          mu x_45:175 
              #                          x_45 = chi x_45:175 
              #                          new_var temp_37_arithop_52:i32 
              #                          temp_37_arithop_52 = Sub i32 rec_45, 1_0 
              #                    occupy a2 with rec_45
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s6 with temp_37_arithop_52
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Occupied { symidx: rec_45, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_33_index_ptr_52, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: 0_0, tracked: false } |     a7:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s1:Freed { symidx: temp_34_array_ptr_52, tracked: true } |     s2:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s3:Freed { symidx: temp_35_array_ele_52, tracked: true } |     s4:Freed { symidx: 2_0, tracked: false } |     s5:Freed { symidx: temp_36_arithop_52, tracked: true } |     s6:Occupied { symidx: temp_37_arithop_52, tracked: true, occupy_count: 1 } | 


    sub     s6,a2,a5
              #                    free a2
              #                    free a5
              #                    free s6
              #                           Call void sub_impl_0(x_45, y_45, temp_37_arithop_52) 
              #                    saved register dumping to mem
              #                    store to temp_34_array_ptr_52 in mem offset legal
    sd      s1,16(sp)
              #                    release s1 with temp_34_array_ptr_52
              #                    store to temp_35_array_ele_52 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_35_array_ele_52
              #                    store to temp_36_arithop_52 in mem offset legal
    sw      s5,8(sp)
              #                    release s5 with temp_36_arithop_52
              #                    store to temp_37_arithop_52 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_37_arithop_52
              #                    store to x_45 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with x_45
              #                    store to y_45 in mem offset legal
    sd      a1,80(sp)
              #                    release a1 with y_45
              #                    store to rec_45 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with rec_45
              #                    store to temp_33_index_ptr_52 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_33_index_ptr_52
              #                    store to temp_26_cmp_48 in mem offset legal
    sb      a4,75(sp)
              #                    release a4 with temp_26_cmp_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_45_0
              #                    load from x_45 in mem
    ld      a0,88(sp)
              #                    occupy a1 with _anonymous_of_y_45_0
              #                    load from y_45 in mem
    ld      a1,80(sp)
              #                    occupy a2 with _anonymous_of_temp_37_arithop_52_0
              #                    load from temp_37_arithop_52 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    sub_impl
              #                          jump label: L4_0 
              #                    occupy a1 with _anonymous_of_y_45_0
              #                    load from y_45 in mem
    ld      a1,80(sp)
              #                    occupy s4 with _anonymous_of_temp_30_array_ptr_50_0
              #                    load from temp_30_array_ptr_50 in mem
    ld      s4,40(sp)
              #                    occupy s7 with _anonymous_of_temp_32_arithop_50_0
              #                    load from temp_32_arithop_50 in mem


    lw      s7,32(sp)
              #                    occupy s3 with _anonymous_of_temp_29_array_ele_50_0
              #                    load from temp_29_array_ele_50 in mem


    lw      s3,52(sp)
              #                    occupy s1 with _anonymous_of_temp_28_array_ptr_50_0
              #                    load from temp_28_array_ptr_50 in mem
    ld      s1,56(sp)
              #                    occupy s6 with _anonymous_of_temp_31_array_ele_50_0
              #                    load from temp_31_array_ele_50 in mem


    lw      s6,36(sp)
              #                    occupy a2 with _anonymous_of_rec_45_0
              #                    load from rec_45 in mem


    lw      a2,76(sp)
              #                    occupy a3 with _anonymous_of_temp_27_index_ptr_50_0
              #                    load from temp_27_index_ptr_50 in mem
    ld      a3,64(sp)
              #                    occupy a0 with _anonymous_of_x_45_0
              #                    load from x_45 in mem
    ld      a0,88(sp)
              #                    occupy a4 with _anonymous_of_temp_26_cmp_48_0
              #                    load from temp_26_cmp_48 in mem
    lb      a4,75(sp)
    j       .L4_0
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } |     a3:Freed { symidx: temp_27_index_ptr_50, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_50, tracked: true } |     s3:Freed { symidx: temp_29_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_30_array_ptr_50, tracked: true } |     s6:Freed { symidx: temp_31_array_ele_50, tracked: true } |     s7:Freed { symidx: temp_32_arithop_50, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: y_45, tracked: true } |     a2:Freed { symidx: rec_45, tracked: true } |     a3:Freed { symidx: temp_27_index_ptr_50, tracked: true } |     a4:Freed { symidx: temp_26_cmp_48, tracked: true } |     s1:Freed { symidx: temp_28_array_ptr_50, tracked: true } |     s3:Freed { symidx: temp_29_array_ele_50, tracked: true } |     s4:Freed { symidx: temp_30_array_ptr_50, tracked: true } |     s6:Freed { symidx: temp_31_array_ele_50, tracked: true } |     s7:Freed { symidx: temp_32_arithop_50, tracked: true } | 
              #                    regtab 
              #                          Define sub_0 [x_55, y_55] -> sub_ret_0 
    .globl sub
    .type sub,@function
sub:
              #                    mem layout:|ra_sub:8 at 40|s0_sub:8 at 32|x:8 at 24|y:8 at 16|temp_38_array_ptr:8 at 8|temp_39_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_sub_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_sub_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          new_var x_55:ptr->i32 
              #                          new_var y_55:ptr->i32 
              #                          alloc ptr->i32 temp_38_array_ptr_57 
              #                          alloc i32 temp_39_array_ele_57 
              #                    regtab     a0:Freed { symidx: x_55, tracked: true } |     a1:Freed { symidx: y_55, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_38_array_ptr_57:ptr->i32 
              #                          temp_38_array_ptr_57 = getelementptr *k_0:ptr->i32 [Some(0_0)] 
              #                    occupy a2 with temp_38_array_ptr_57
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
              #                    occupy a6 with *k_0
              #                       load label k as ptr to reg
    la      a6, k
              #                    occupy reg a6 with *k_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_39_array_ele_57:i32 
              #                          temp_39_array_ele_57 = load temp_38_array_ptr_57:ptr->i32 
              #                    occupy a2 with temp_38_array_ptr_57
              #                    occupy a7 with temp_39_array_ele_57
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                           Call void sub_impl_0(x_55, y_55, temp_39_array_ele_57) 
              #                    saved register dumping to mem
              #                    store to x_55 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with x_55
              #                    store to y_55 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with y_55
              #                    store to temp_38_array_ptr_57 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_38_array_ptr_57
              #                    store to temp_39_array_ele_57 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_39_array_ele_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_55_0
              #                    load from x_55 in mem
    ld      a0,24(sp)
              #                    occupy a1 with _anonymous_of_y_55_0
              #                    load from y_55 in mem
    ld      a1,16(sp)
              #                    occupy a2 with _anonymous_of_temp_39_array_ele_57_0
              #                    load from temp_39_array_ele_57 in mem


    lw      a2,4(sp)
              #                    arg load ended


    call    sub_impl
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 264|s0_main:8 at 256|j:4 at 252|y:4 at 248|temp_40_array_init_ptr:8 at 240|temp_41_array_init_ptr:8 at 232|z:8 at 224|temp_42_index_ptr:8 at 216|temp_43_ret_of_getint:4 at 212|none:4 at 208|temp_44_index_ptr:8 at 200|temp_45_ret_of_getint:4 at 196|none:4 at 192|temp_46_array_ptr:8 at 184|temp_47_ret_of_getarray:4 at 180|none:4 at 176|temp_48_array_ptr:8 at 168|temp_49_array_ele:4 at 164|temp_50_:1 at 163|none:3 at 160|temp_51_index_ptr:8 at 152|temp_52_array_ptr:8 at 144|temp_53_array_ele:4 at 140|none:4 at 136|temp_54_array_ptr:8 at 128|temp_55_array_ele:4 at 124|temp_56_cmp:1 at 123|none:3 at 120|temp_57_array_ptr:8 at 112|temp_58_array_ele:4 at 108|none:4 at 104|temp_59_array_ptr:8 at 96|temp_60_array_ele:4 at 92|none:4 at 88|temp_61_array_ptr:8 at 80|temp_62_array_ele:4 at 76|none:4 at 72|temp_63_array_ptr:8 at 64|temp_64_array_ele:4 at 60|none:4 at 56|temp_65_array_ptr:8 at 48|temp_66_array_ptr:8 at 40|temp_67_array_ptr:8 at 32|temp_68_array_ptr:8 at 24|temp_69_array_ele:4 at 20|none:4 at 16|temp_70_array_ptr:8 at 8|temp_71_array_ele:4 at 4|temp_72_cmp:1 at 3|none:3 at 0
    addi    sp,sp,-272
              #                    store to ra_main_0 in mem offset legal
    sd      ra,264(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,256(sp)
    addi    s0,sp,272
              #                          alloc Array:i32:[Some(1_0)] j_60 
              #                          alloc Array:i32:[Some(1_0)] y_60 
              #                          alloc ptr->i32 temp_40_array_init_ptr_60 
              #                          alloc ptr->i32 temp_41_array_init_ptr_60 
              #                          alloc Array:i32:[Some(1_0), Some(2_0)] z_60 
              #                          alloc ptr->i32 temp_42_index_ptr_60 
              #                          alloc i32 temp_43_ret_of_getint_60 
              #                          alloc ptr->i32 temp_44_index_ptr_60 
              #                          alloc i32 temp_45_ret_of_getint_60 
              #                          alloc ptr->i32 temp_46_array_ptr_60 
              #                          alloc i32 temp_47_ret_of_getarray_60 
              #                          alloc ptr->i32 temp_48_array_ptr_65 
              #                          alloc i32 temp_49_array_ele_65 
              #                          alloc i1 temp_50__1797 
              #                          alloc ptr->i32 temp_51_index_ptr_67 
              #                          alloc ptr->i32 temp_52_array_ptr_67 
              #                          alloc i32 temp_53_array_ele_67 
              #                          alloc ptr->i32 temp_54_array_ptr_69 
              #                          alloc i32 temp_55_array_ele_69 
              #                          alloc i1 temp_56_cmp_69 
              #                          alloc ptr->i32 temp_57_array_ptr_71 
              #                          alloc i32 temp_58_array_ele_71 
              #                          alloc ptr->i32 temp_59_array_ptr_71 
              #                          alloc i32 temp_60_array_ele_71 
              #                          alloc ptr->i32 temp_61_array_ptr_71 
              #                          alloc i32 temp_62_array_ele_71 
              #                          alloc ptr->i32 temp_63_array_ptr_71 
              #                          alloc i32 temp_64_array_ele_71 
              #                          alloc ptr->i32 temp_65_array_ptr_71 
              #                          alloc ptr->i32 temp_66_array_ptr_71 
              #                          alloc ptr->i32 temp_67_array_ptr_67 
              #                          alloc ptr->i32 temp_68_array_ptr_81 
              #                          alloc i32 temp_69_array_ele_81 
              #                          alloc ptr->i32 temp_70_array_ptr_81 
              #                          alloc i32 temp_71_array_ele_81 
              #                          alloc i1 temp_72_cmp_81 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var j_60:Array:i32:[Some(1_0)] 
              #                          new_var y_60:Array:i32:[Some(1_0)] 
              #                          new_var z_60:Array:i32:[Some(1_0), Some(2_0)] 
              #                          new_var temp_40_array_init_ptr_60:ptr->i32 
              #                          temp_40_array_init_ptr_60 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [] 
              #                    occupy a0 with temp_40_array_init_ptr_60
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,224
              #                    free a0
              #                           Call void memset_0(temp_40_array_init_ptr_60, 0_0, 8_0) 
              #                    saved register dumping to mem
              #                    store to temp_40_array_init_ptr_60 in mem offset legal
    sd      a0,240(sp)
              #                    release a0 with temp_40_array_init_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_40_array_init_ptr_60_0
              #                    load from temp_40_array_init_ptr_60 in mem
    ld      a0,240(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_8_0_0
    li      a2, 8
              #                    arg load ended


    call    memset
              #                          new_var temp_41_array_init_ptr_60:ptr->i32 
              #                          temp_41_array_init_ptr_60 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_60
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,224
              #                    free a0
              #                          store -1_0:i32 temp_41_array_init_ptr_60:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_60
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                          mu z_60:201 
              #                          z_60 = chi z_60:201 
              #                          new_var temp_42_index_ptr_60:ptr->i32 
              #                          temp_42_index_ptr_60 = getelementptr *k_0:ptr->i32 [Some(0_0)] 
              #                    occupy a7 with temp_42_index_ptr_60
    li      a7, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a4,a2
              #                    free a4
              #                    free a2
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with *k_0
              #                       load label k as ptr to reg
    la      s2, k
              #                    occupy reg s2 with *k_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          new_var temp_43_ret_of_getint_60:i32 
              #                          temp_43_ret_of_getint_60 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_41_array_init_ptr_60 in mem offset legal
    sd      a0,232(sp)
              #                    release a0 with temp_41_array_init_ptr_60
              #                    store to temp_42_index_ptr_60 in mem offset legal
    sd      a7,216(sp)
              #                    release a7 with temp_42_index_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_43_ret_of_getint_60 in mem offset legal
    sw      a0,212(sp)
              #                          store temp_43_ret_of_getint_60:i32 temp_42_index_ptr_60:ptr->i32 
              #                    occupy a1 with temp_42_index_ptr_60
              #                    load from temp_42_index_ptr_60 in mem
    ld      a1,216(sp)
              #                    occupy a0 with temp_43_ret_of_getint_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *k_0:211 
              #                          *k_0 = chi *k_0:211 
              #                          new_var temp_44_index_ptr_60:ptr->i32 
              #                          temp_44_index_ptr_60 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a2 with temp_44_index_ptr_60
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
    addi    a2,a2,248
              #                    free a2
              #                          new_var temp_45_ret_of_getint_60:i32 
              #                          temp_45_ret_of_getint_60 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_43_ret_of_getint_60 in mem offset legal
    sw      a0,212(sp)
              #                    release a0 with temp_43_ret_of_getint_60
              #                    store to temp_42_index_ptr_60 in mem offset legal
    sd      a1,216(sp)
              #                    release a1 with temp_42_index_ptr_60
              #                    store to temp_44_index_ptr_60 in mem offset legal
    sd      a2,200(sp)
              #                    release a2 with temp_44_index_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_45_ret_of_getint_60 in mem offset legal
    sw      a0,196(sp)
              #                          store temp_45_ret_of_getint_60:i32 temp_44_index_ptr_60:ptr->i32 
              #                    occupy a1 with temp_44_index_ptr_60
              #                    load from temp_44_index_ptr_60 in mem
    ld      a1,200(sp)
              #                    occupy a0 with temp_45_ret_of_getint_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu y_60:220 
              #                          y_60 = chi y_60:220 
              #                          new_var temp_46_array_ptr_60:ptr->i32 
              #                          temp_46_array_ptr_60 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a2 with temp_46_array_ptr_60
    li      a2, 0
              #                    occupy a3 with 2_0
    li      a3, 2
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
    addi    a2,a2,224
              #                    free a2
              #                          new_var temp_47_ret_of_getarray_60:i32 
              #                          temp_47_ret_of_getarray_60 =  Call i32 getarray_0(temp_46_array_ptr_60) 
              #                    saved register dumping to mem
              #                    store to temp_45_ret_of_getint_60 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_45_ret_of_getint_60
              #                    store to temp_44_index_ptr_60 in mem offset legal
    sd      a1,200(sp)
              #                    release a1 with temp_44_index_ptr_60
              #                    store to temp_46_array_ptr_60 in mem offset legal
    sd      a2,184(sp)
              #                    release a2 with temp_46_array_ptr_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_array_ptr_60_0
              #                    load from temp_46_array_ptr_60 in mem
    ld      a0,184(sp)
              #                    arg load ended


    call    getarray
              #                    store to temp_47_ret_of_getarray_60 in mem offset legal
    sw      a0,180(sp)
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } | 
              #                          label while.head_66: 
.while.head_66:
              #                          new_var temp_48_array_ptr_65:ptr->i32 
              #                          temp_48_array_ptr_65 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a1 with temp_48_array_ptr_65
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a2,a3
              #                    free a2
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,248
              #                    free a1
              #                          new_var temp_49_array_ele_65:i32 
              #                          temp_49_array_ele_65 = load temp_48_array_ptr_65:ptr->i32 
              #                    occupy a1 with temp_48_array_ptr_65
              #                    occupy a5 with temp_49_array_ele_65
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_50__1797:i1 
              #                          temp_50__1797 = icmp i32 Ne temp_49_array_ele_65, 0_0 
              #                    occupy a5 with temp_49_array_ele_65
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
              #                    occupy a6 with temp_50__1797
    xor     a6,a5,a3
    snez    a6, a6
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_50__1797, label while.body_66, label while.exit_66 
              #                    occupy a6 with temp_50__1797
              #                    free a6
              #                    occupy a6 with temp_50__1797
    bnez    a6, .while.body_66
              #                    free a6
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a5:Freed { symidx: temp_49_array_ele_65, tracked: true } |     a6:Freed { symidx: temp_50__1797, tracked: true } | 
              #                          label while.body_66: 
.while.body_66:
              #                          new_var temp_51_index_ptr_67:ptr->i32 
              #                          temp_51_index_ptr_67 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a2 with temp_51_index_ptr_67
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,252
              #                    free a2
              #                          new_var temp_52_array_ptr_67:ptr->i32 
              #                          temp_52_array_ptr_67 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy s1 with temp_52_array_ptr_67
    li      s1, 0
              #                    occupy s2 with 2_0
    li      s2, 2
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a4
              #                    free s2
              #                    free a4
    add     s1,s1,s3
              #                    free s3
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a3,a4
              #                    free a3
              #                    free a4
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,224
              #                    free s1
              #                          new_var temp_53_array_ele_67:i32 
              #                          temp_53_array_ele_67 = load temp_52_array_ptr_67:ptr->i32 
              #                    occupy s1 with temp_52_array_ptr_67
              #                    occupy s5 with temp_53_array_ele_67
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          store temp_53_array_ele_67:i32 temp_51_index_ptr_67:ptr->i32 
              #                    occupy a2 with temp_51_index_ptr_67
              #                    occupy s5 with temp_53_array_ele_67
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                          mu j_60:252 
              #                          j_60 = chi j_60:252 
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: temp_51_index_ptr_67, tracked: true } |     a5:Freed { symidx: temp_49_array_ele_65, tracked: true } |     a6:Freed { symidx: temp_50__1797, tracked: true } |     s1:Freed { symidx: temp_52_array_ptr_67, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_67, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_54_array_ptr_69:ptr->i32 
              #                          temp_54_array_ptr_69 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a3 with temp_54_array_ptr_69
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a4,a7
              #                    free a4
              #                    free a7
    add     a3,a3,s2
              #                    free s2
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,252
              #                    free a3
              #                          new_var temp_55_array_ele_69:i32 
              #                          temp_55_array_ele_69 = load temp_54_array_ptr_69:ptr->i32 
              #                    occupy a3 with temp_54_array_ptr_69
              #                    occupy s3 with temp_55_array_ele_69
    lw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          new_var temp_56_cmp_69:i1 
              #                          temp_56_cmp_69 = icmp i32 Slt temp_55_array_ele_69, 5_0 
              #                    occupy s3 with temp_55_array_ele_69
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s6 with temp_56_cmp_69
    slt     s6,s3,s4
              #                    free s3
              #                    free s4
              #                    free s6
              #                          br i1 temp_56_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy s6 with temp_56_cmp_69
              #                    free s6
              #                    occupy s6 with temp_56_cmp_69
    bnez    s6, .while.body_70
              #                    free s6
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: temp_51_index_ptr_67, tracked: true } |     a3:Freed { symidx: temp_54_array_ptr_69, tracked: true } |     a5:Freed { symidx: temp_49_array_ele_65, tracked: true } |     a6:Freed { symidx: temp_50__1797, tracked: true } |     s1:Freed { symidx: temp_52_array_ptr_67, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_69, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_67, tracked: true } |     s6:Freed { symidx: temp_56_cmp_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var temp_57_array_ptr_71:ptr->i32 
              #                          temp_57_array_ptr_71 = getelementptr *i_0:ptr->i32 [Some(0_0)] 
              #                    occupy a4 with temp_57_array_ptr_71
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a7,s2
              #                    free a7
              #                    free s2
    add     a4,a4,s4
              #                    free s4
    slli a4,a4,2
              #                    occupy s7 with *i_0
              #                       load label i as ptr to reg
    la      s7, i
              #                    occupy reg s7 with *i_0
    add     a4,a4,s7
              #                    free s7
              #                    free a4
              #                          new_var temp_58_array_ele_71:i32 
              #                          temp_58_array_ele_71 = load temp_57_array_ptr_71:ptr->i32 
              #                    occupy a4 with temp_57_array_ptr_71
              #                    occupy s8 with temp_58_array_ele_71
    lw      s8,0(a4)
              #                    free s8
              #                    free a4
              #                           Call void putint_0(temp_58_array_ele_71) 
              #                    saved register dumping to mem
              #                    store to temp_52_array_ptr_67 in mem offset legal
    sd      s1,144(sp)
              #                    release s1 with temp_52_array_ptr_67
              #                    store to temp_55_array_ele_69 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with temp_55_array_ele_69
              #                    store to temp_53_array_ele_67 in mem offset legal
    sw      s5,140(sp)
              #                    release s5 with temp_53_array_ele_67
              #                    store to temp_56_cmp_69 in mem offset legal
    sb      s6,123(sp)
              #                    release s6 with temp_56_cmp_69
              #                    store to temp_58_array_ele_71 in mem offset legal
    sw      s8,108(sp)
              #                    release s8 with temp_58_array_ele_71
              #                    store to temp_47_ret_of_getarray_60 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_47_ret_of_getarray_60
              #                    store to temp_48_array_ptr_65 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with temp_48_array_ptr_65
              #                    store to temp_51_index_ptr_67 in mem offset legal
    sd      a2,152(sp)
              #                    release a2 with temp_51_index_ptr_67
              #                    store to temp_54_array_ptr_69 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_54_array_ptr_69
              #                    store to temp_57_array_ptr_71 in mem offset legal
    sd      a4,112(sp)
              #                    release a4 with temp_57_array_ptr_71
              #                    store to temp_49_array_ele_65 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with temp_49_array_ele_65
              #                    store to temp_50__1797 in mem offset legal
    sb      a6,163(sp)
              #                    release a6 with temp_50__1797
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_array_ele_71_0
              #                    load from temp_58_array_ele_71 in mem


    lw      a0,108(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_59_array_ptr_71:ptr->i32 
              #                          temp_59_array_ptr_71 = getelementptr j_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_59_array_ptr_71
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
    addi    a0,a0,252
              #                    free a0
              #                          new_var temp_60_array_ele_71:i32 
              #                          temp_60_array_ele_71 = load temp_59_array_ptr_71:ptr->i32 
              #                    occupy a0 with temp_59_array_ptr_71
              #                    occupy a4 with temp_60_array_ele_71
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                           Call void putint_0(temp_60_array_ele_71) 
              #                    saved register dumping to mem
              #                    store to temp_59_array_ptr_71 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_59_array_ptr_71
              #                    store to temp_60_array_ele_71 in mem offset legal
    sw      a4,92(sp)
              #                    release a4 with temp_60_array_ele_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_60_array_ele_71_0
              #                    load from temp_60_array_ele_71 in mem


    lw      a0,92(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_61_array_ptr_71:ptr->i32 
              #                          temp_61_array_ptr_71 = getelementptr y_60:Array:i32:[Some(1_0)] [Some(0_0)] 
              #                    occupy a0 with temp_61_array_ptr_71
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
    addi    a0,a0,248
              #                    free a0
              #                          new_var temp_62_array_ele_71:i32 
              #                          temp_62_array_ele_71 = load temp_61_array_ptr_71:ptr->i32 
              #                    occupy a0 with temp_61_array_ptr_71
              #                    occupy a4 with temp_62_array_ele_71
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                           Call void putint_0(temp_62_array_ele_71) 
              #                    saved register dumping to mem
              #                    store to temp_61_array_ptr_71 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with temp_61_array_ptr_71
              #                    store to temp_62_array_ele_71 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_62_array_ele_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_array_ele_71_0
              #                    load from temp_62_array_ele_71 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_63_array_ptr_71:ptr->i32 
              #                          temp_63_array_ptr_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_63_array_ptr_71
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,224
              #                    free a0
              #                          new_var temp_64_array_ele_71:i32 
              #                          temp_64_array_ele_71 = load temp_63_array_ptr_71:ptr->i32 
              #                    occupy a0 with temp_63_array_ptr_71
              #                    occupy a6 with temp_64_array_ele_71
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                           Call void putint_0(temp_64_array_ele_71) 
              #                    saved register dumping to mem
              #                    store to temp_63_array_ptr_71 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with temp_63_array_ptr_71
              #                    store to temp_64_array_ele_71 in mem offset legal
    sw      a6,60(sp)
              #                    release a6 with temp_64_array_ele_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_64_array_ele_71_0
              #                    load from temp_64_array_ele_71 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_65_array_ptr_71:ptr->i32 
              #                          temp_65_array_ptr_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_65_array_ptr_71
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
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
    addi    a0,a0,224
              #                    free a0
              #                           Call void add_0(temp_65_array_ptr_71, y_60) 
              #                    saved register dumping to mem
              #                    store to temp_65_array_ptr_71 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_65_array_ptr_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_65_array_ptr_71_0
              #                    load from temp_65_array_ptr_71 in mem
    ld      a0,48(sp)
              #                    occupy a1 with _anonymous_of_y_60_0
              #                    load from y_60 in mem
    lw      a1,248(sp)
              #                    arg load ended


    call    add
              #                           Call void add_0(j_60, y_60) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_j_60_0
              #                    load from j_60 in mem
    lw      a0,252(sp)
              #                    occupy a1 with _anonymous_of_y_60_0
              #                    load from y_60 in mem
    lw      a1,248(sp)
              #                    arg load ended


    call    add
              #                          new_var temp_66_array_ptr_71:ptr->i32 
              #                          temp_66_array_ptr_71 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_66_array_ptr_71
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
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
    addi    a0,a0,224
              #                    free a0
              #                           Call void sub_0(temp_66_array_ptr_71, y_60) 
              #                    saved register dumping to mem
              #                    store to temp_66_array_ptr_71 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_66_array_ptr_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_66_array_ptr_71_0
              #                    load from temp_66_array_ptr_71 in mem
    ld      a0,40(sp)
              #                    occupy a1 with _anonymous_of_y_60_0
              #                    load from y_60 in mem
    lw      a1,248(sp)
              #                    arg load ended


    call    sub
              #                          jump label: while.head_70 
              #                    occupy a2 with _anonymous_of_temp_51_index_ptr_67_0
              #                    load from temp_51_index_ptr_67 in mem
    ld      a2,152(sp)
              #                    occupy s1 with _anonymous_of_temp_52_array_ptr_67_0
              #                    load from temp_52_array_ptr_67 in mem
    ld      s1,144(sp)
              #                    occupy a0 with _anonymous_of_temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60 in mem


    lw      a0,180(sp)
              #                    occupy a5 with _anonymous_of_temp_49_array_ele_65_0
              #                    load from temp_49_array_ele_65 in mem


    lw      a5,164(sp)
              #                    occupy a1 with _anonymous_of_temp_48_array_ptr_65_0
              #                    load from temp_48_array_ptr_65 in mem
    ld      a1,168(sp)
              #                    occupy a6 with _anonymous_of_temp_50__1797_0
              #                    load from temp_50__1797 in mem
    lb      a6,163(sp)
              #                    occupy s5 with _anonymous_of_temp_53_array_ele_67_0
              #                    load from temp_53_array_ele_67 in mem


    lw      s5,140(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a2:Freed { symidx: temp_51_index_ptr_67, tracked: true } |     a3:Freed { symidx: temp_54_array_ptr_69, tracked: true } |     a5:Freed { symidx: temp_49_array_ele_65, tracked: true } |     a6:Freed { symidx: temp_50__1797, tracked: true } |     s1:Freed { symidx: temp_52_array_ptr_67, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_69, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_67, tracked: true } |     s6:Freed { symidx: temp_56_cmp_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                           Call void inc_0(*i_0) 
              #                    saved register dumping to mem
              #                    store to temp_52_array_ptr_67 in mem offset legal
    sd      s1,144(sp)
              #                    release s1 with temp_52_array_ptr_67
              #                    store to temp_55_array_ele_69 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with temp_55_array_ele_69
              #                    store to temp_53_array_ele_67 in mem offset legal
    sw      s5,140(sp)
              #                    release s5 with temp_53_array_ele_67
              #                    store to temp_56_cmp_69 in mem offset legal
    sb      s6,123(sp)
              #                    release s6 with temp_56_cmp_69
              #                    store to temp_47_ret_of_getarray_60 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_47_ret_of_getarray_60
              #                    store to temp_48_array_ptr_65 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with temp_48_array_ptr_65
              #                    store to temp_51_index_ptr_67 in mem offset legal
    sd      a2,152(sp)
              #                    release a2 with temp_51_index_ptr_67
              #                    store to temp_54_array_ptr_69 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_54_array_ptr_69
              #                    store to temp_49_array_ele_65 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with temp_49_array_ele_65
              #                    store to temp_50__1797 in mem offset legal
    sb      a6,163(sp)
              #                    release a6 with temp_50__1797
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*i_0_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    arg load ended


    call    inc
              #                          new_var temp_67_array_ptr_67:ptr->i32 
              #                          temp_67_array_ptr_67 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_67_array_ptr_67
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
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
    addi    a0,a0,224
              #                    free a0
              #                           Call void add_0(*i_0, temp_67_array_ptr_67) 
              #                    saved register dumping to mem
              #                    store to temp_67_array_ptr_67 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_67_array_ptr_67
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*i_0_0
              #                       load label i as ptr to reg
    la      a0, i
              #                    occupy a1 with _anonymous_of_temp_67_array_ptr_67_0
              #                    load from temp_67_array_ptr_67 in mem
    ld      a1,32(sp)
              #                    arg load ended


    call    add
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_68_array_ptr_81:ptr->i32 
              #                          temp_68_array_ptr_81 = getelementptr z_60:Array:i32:[Some(1_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_68_array_ptr_81
    li      a0, 0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,224
              #                    free a0
              #                          new_var temp_69_array_ele_81:i32 
              #                          temp_69_array_ele_81 = load temp_68_array_ptr_81:ptr->i32 
              #                    occupy a0 with temp_68_array_ptr_81
              #                    occupy a7 with temp_69_array_ele_81
    lw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                          new_var temp_70_array_ptr_81:ptr->i32 
              #                          temp_70_array_ptr_81 = getelementptr *i_0:ptr->i32 [Some(0_0)] 
              #                    occupy s1 with temp_70_array_ptr_81
    li      s1, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    found literal reg Some(a2) already exist with 0_0
              #                    occupy a2 with 0_0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a4,a2
              #                    free a4
              #                    free a2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *i_0
              #                       load label i as ptr to reg
    la      s3, i
              #                    occupy reg s3 with *i_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_71_array_ele_81:i32 
              #                          temp_71_array_ele_81 = load temp_70_array_ptr_81:ptr->i32 
              #                    occupy s1 with temp_70_array_ptr_81
              #                    occupy s4 with temp_71_array_ele_81
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_72_cmp_81:i1 
              #                          temp_72_cmp_81 = icmp i32 Eq temp_71_array_ele_81, temp_69_array_ele_81 
              #                    occupy s4 with temp_71_array_ele_81
              #                    occupy a7 with temp_69_array_ele_81
              #                    occupy s5 with temp_72_cmp_81
    xor     s5,s4,a7
    seqz    s5, s5
              #                    free s4
              #                    free a7
              #                    free s5
              #                          br i1 temp_72_cmp_81, label branch_true_82, label branch_false_82 
              #                    occupy s5 with temp_72_cmp_81
              #                    free s5
              #                    occupy s5 with temp_72_cmp_81
    bnez    s5, .branch_true_82
              #                    free s5
    j       .branch_false_82
              #                    regtab     a0:Freed { symidx: temp_68_array_ptr_81, tracked: true } |     a7:Freed { symidx: temp_69_array_ele_81, tracked: true } |     s1:Freed { symidx: temp_70_array_ptr_81, tracked: true } |     s4:Freed { symidx: temp_71_array_ele_81, tracked: true } |     s5:Freed { symidx: temp_72_cmp_81, tracked: true } | 
              #                          label branch_true_82: 
.branch_true_82:
              #                          jump label: while.exit_70 
              #                    store to temp_71_array_ele_81 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_71_array_ele_81
              #                    store to temp_70_array_ptr_81 in mem offset legal
    sd      s1,8(sp)
              #                    release s1 with temp_70_array_ptr_81
              #                    store to temp_68_array_ptr_81 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_68_array_ptr_81
              #                    store to temp_69_array_ele_81 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_69_array_ele_81
              #                    store to temp_72_cmp_81 in mem offset legal
    sb      s5,3(sp)
              #                    release s5 with temp_72_cmp_81
              #                    occupy a2 with _anonymous_of_temp_51_index_ptr_67_0
              #                    load from temp_51_index_ptr_67 in mem
    ld      a2,152(sp)
              #                    occupy a3 with _anonymous_of_temp_54_array_ptr_69_0
              #                    load from temp_54_array_ptr_69 in mem
    ld      a3,128(sp)
              #                    occupy s1 with _anonymous_of_temp_52_array_ptr_67_0
              #                    load from temp_52_array_ptr_67 in mem
    ld      s1,144(sp)
              #                    occupy a0 with _anonymous_of_temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60 in mem


    lw      a0,180(sp)
              #                    occupy a5 with _anonymous_of_temp_49_array_ele_65_0
              #                    load from temp_49_array_ele_65 in mem


    lw      a5,164(sp)
              #                    occupy a1 with _anonymous_of_temp_48_array_ptr_65_0
              #                    load from temp_48_array_ptr_65 in mem
    ld      a1,168(sp)
              #                    occupy a6 with _anonymous_of_temp_50__1797_0
              #                    load from temp_50__1797 in mem
    lb      a6,163(sp)
              #                    occupy s3 with _anonymous_of_temp_55_array_ele_69_0
              #                    load from temp_55_array_ele_69 in mem


    lw      s3,124(sp)
              #                    occupy s6 with _anonymous_of_temp_56_cmp_69_0
              #                    load from temp_56_cmp_69 in mem
    lb      s6,123(sp)
              #                    occupy s5 with _anonymous_of_temp_53_array_ele_67_0
              #                    load from temp_53_array_ele_67 in mem


    lw      s5,140(sp)
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_68_array_ptr_81, tracked: true } |     a7:Freed { symidx: temp_69_array_ele_81, tracked: true } |     s1:Freed { symidx: temp_70_array_ptr_81, tracked: true } |     s4:Freed { symidx: temp_71_array_ele_81, tracked: true } |     s5:Freed { symidx: temp_72_cmp_81, tracked: true } | 
              #                          label branch_false_82: 
.branch_false_82:
              #                          jump label: while.head_66 
              #                    store to temp_71_array_ele_81 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_71_array_ele_81
              #                    store to temp_70_array_ptr_81 in mem offset legal
    sd      s1,8(sp)
              #                    release s1 with temp_70_array_ptr_81
              #                    store to temp_68_array_ptr_81 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_68_array_ptr_81
              #                    store to temp_69_array_ele_81 in mem offset legal
    sw      a7,20(sp)
              #                    release a7 with temp_69_array_ele_81
              #                    store to temp_72_cmp_81 in mem offset legal
    sb      s5,3(sp)
              #                    release s5 with temp_72_cmp_81
              #                    occupy a0 with _anonymous_of_temp_47_ret_of_getarray_60_0
              #                    load from temp_47_ret_of_getarray_60 in mem


    lw      a0,180(sp)
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: temp_47_ret_of_getarray_60, tracked: true } |     a1:Freed { symidx: temp_48_array_ptr_65, tracked: true } |     a5:Freed { symidx: temp_49_array_ele_65, tracked: true } |     a6:Freed { symidx: temp_50__1797, tracked: true } | 
              #                          label while.exit_66: 
.while.exit_66:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to temp_47_ret_of_getarray_60 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_47_ret_of_getarray_60
              #                    store to temp_48_array_ptr_65 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with temp_48_array_ptr_65
              #                    store to temp_49_array_ele_65 in mem offset legal
    sw      a5,164(sp)
              #                    release a5 with temp_49_array_ele_65
              #                    store to temp_50__1797 in mem offset legal
    sb      a6,163(sp)
              #                    release a6 with temp_50__1797
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,264(sp)
              #                    load from s0_main_0 in mem
    ld      s0,256(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,272
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl k
              #                          global Array:i32:[Some(1_0)] k_0 
    .type k,@object
k:
    .zero 4
    .align 4
    .globl i
              #                          global Array:i32:[Some(1_0)] i_0 
    .type i,@object
i:
    .zero 4
