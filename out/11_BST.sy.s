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
              #                          Define search_0 [root_23, x_23] -> search_ret_0 
    .globl search
    .type search,@function
search:
              #                    mem layout:|ra_search:8 at 80|s0_search:8 at 72|root:4 at 68|x:4 at 64|temp_0_array_ptr:8 at 56|temp_1_array_ele:4 at 52|temp_2_cmp:1 at 51|temp_3_cmp:1 at 50|temp_4_logic:1 at 49|none:1 at 48|temp_5_array_ptr:8 at 40|temp_6_array_ele:4 at 36|temp_7_cmp:1 at 35|none:3 at 32|temp_8_array_ptr:8 at 24|temp_9_array_ele:4 at 20|temp_10_ret_of_search:4 at 16|temp_11_array_ptr:8 at 8|temp_12_array_ele:4 at 4|temp_13_ret_of_search:4 at 0
    addi    sp,sp,-88
              #                    store to ra_search_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_search_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          alloc ptr->i32 temp_0_array_ptr_26 
              #                          alloc i32 temp_1_array_ele_26 
              #                          alloc i1 temp_2_cmp_26 
              #                          alloc i1 temp_3_cmp_26 
              #                          alloc i1 temp_4_logic_26 
              #                          alloc ptr->i32 temp_5_array_ptr_29 
              #                          alloc i32 temp_6_array_ele_29 
              #                          alloc i1 temp_7_cmp_29 
              #                          alloc ptr->i32 temp_8_array_ptr_29 
              #                          alloc i32 temp_9_array_ele_29 
              #                          alloc i32 temp_10_ret_of_search_29 
              #                          alloc ptr->i32 temp_11_array_ptr_29 
              #                          alloc i32 temp_12_array_ele_29 
              #                          alloc i32 temp_13_ret_of_search_29 
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } | 
              #                          label L20_0: 
.L20_0:
              #                          new_var temp_0_array_ptr_26:ptr->i32 
              #                          temp_0_array_ptr_26 = getelementptr *value_0:ptr->i32 [Some(root_23)] 
              #                    occupy a2 with temp_0_array_ptr_26
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with root_23
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a5 with *value_0
              #                       load label value as ptr to reg
    la      a5, value
              #                    occupy reg a5 with *value_0
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_1_array_ele_26:i32 
              #                          temp_1_array_ele_26 = load temp_0_array_ptr_26:ptr->i32 
              #                    occupy a2 with temp_0_array_ptr_26
              #                    occupy a6 with temp_1_array_ele_26
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_2_cmp_26:i1 
              #                          temp_2_cmp_26 = icmp i32 Eq temp_1_array_ele_26, x_23 
              #                    occupy a6 with temp_1_array_ele_26
              #                    occupy a1 with x_23
              #                    occupy a7 with temp_2_cmp_26
    xor     a7,a6,a1
    seqz    a7, a7
              #                    free a6
              #                    free a1
              #                    free a7
              #                          new_var temp_3_cmp_26:i1 
              #                          temp_3_cmp_26 = icmp i32 Eq root_23, -1_0 
              #                    occupy a0 with root_23
              #                    occupy s1 with -1_0
    li      s1, -1
              #                    occupy s2 with temp_3_cmp_26
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                          new_var temp_4_logic_26:i1 
              #                          temp_4_logic_26 = Or i1 temp_3_cmp_26, temp_2_cmp_26 
              #                    occupy s2 with temp_3_cmp_26
              #                    occupy a7 with temp_2_cmp_26
              #                    occupy a7 with temp_2_cmp_26
              #                    free s2
              #                    free a7
              #                    free a7
              #                          br i1 temp_4_logic_26, label branch_true_27, label branch_false_27 
              #                    occupy s3 with temp_4_logic_26
              #                    load from temp_4_logic_26 in mem
    lb      s3,49(sp)
              #                    free s3
              #                    occupy s3 with temp_4_logic_26
    bnez    s3, .branch_true_27
              #                    free s3
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a2:Freed { symidx: temp_0_array_ptr_26, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s3:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          ret root_23 
              #                    load from ra_search_0 in mem
    ld      ra,80(sp)
              #                    load from s0_search_0 in mem
    ld      s0,72(sp)
              #                    store to root_23 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with root_23
              #                    occupy a0 with root_23
              #                    load from root_23 in mem


    lw      a0,68(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a2:Freed { symidx: temp_0_array_ptr_26, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s3:Freed { symidx: temp_4_logic_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          new_var temp_5_array_ptr_29:ptr->i32 
              #                          temp_5_array_ptr_29 = getelementptr *value_0:ptr->i32 [Some(root_23)] 
              #                    occupy a3 with temp_5_array_ptr_29
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_23
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy s1 with *value_0
              #                       load label value as ptr to reg
    la      s1, value
              #                    occupy reg s1 with *value_0
    add     a3,a3,s1
              #                    free s1
              #                    free a3
              #                          new_var temp_6_array_ele_29:i32 
              #                          temp_6_array_ele_29 = load temp_5_array_ptr_29:ptr->i32 
              #                    occupy a3 with temp_5_array_ptr_29
              #                    occupy s4 with temp_6_array_ele_29
    lw      s4,0(a3)
              #                    free s4
              #                    free a3
              #                          new_var temp_7_cmp_29:i1 
              #                          temp_7_cmp_29 = icmp i32 Sgt x_23, temp_6_array_ele_29 
              #                    occupy a1 with x_23
              #                    occupy s4 with temp_6_array_ele_29
              #                    occupy s5 with temp_7_cmp_29
    slt     s5,s4,a1
              #                    free a1
              #                    free s4
              #                    free s5
              #                          br i1 temp_7_cmp_29, label branch_true_30, label branch_false_30 
              #                    occupy s5 with temp_7_cmp_29
              #                    free s5
              #                    occupy s5 with temp_7_cmp_29
    bnez    s5, .branch_true_30
              #                    free s5
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a2:Freed { symidx: temp_0_array_ptr_26, tracked: true } |     a3:Freed { symidx: temp_5_array_ptr_29, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s3:Freed { symidx: temp_4_logic_26, tracked: true } |     s4:Freed { symidx: temp_6_array_ele_29, tracked: true } |     s5:Freed { symidx: temp_7_cmp_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          new_var temp_8_array_ptr_29:ptr->i32 
              #                          temp_8_array_ptr_29 = getelementptr *right_child_0:ptr->i32 [Some(root_23)] 
              #                    occupy a4 with temp_8_array_ptr_29
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_23
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s6 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s6, right_child
              #                    occupy reg s6 with *right_child_0
    add     a4,a4,s6
              #                    free s6
              #                    free a4
              #                          new_var temp_9_array_ele_29:i32 
              #                          temp_9_array_ele_29 = load temp_8_array_ptr_29:ptr->i32 
              #                    occupy a4 with temp_8_array_ptr_29
              #                    occupy s7 with temp_9_array_ele_29
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_10_ret_of_search_29:i32 
              #                          temp_10_ret_of_search_29 =  Call i32 search_0(temp_9_array_ele_29, x_23) 
              #                    saved register dumping to mem
              #                    store to temp_3_cmp_26 in mem offset legal
    sb      s2,50(sp)
              #                    release s2 with temp_3_cmp_26
              #                    store to temp_4_logic_26 in mem offset legal
    sb      s3,49(sp)
              #                    release s3 with temp_4_logic_26
              #                    store to temp_6_array_ele_29 in mem offset legal
    sw      s4,36(sp)
              #                    release s4 with temp_6_array_ele_29
              #                    store to temp_7_cmp_29 in mem offset legal
    sb      s5,35(sp)
              #                    release s5 with temp_7_cmp_29
              #                    store to temp_9_array_ele_29 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_9_array_ele_29
              #                    store to root_23 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with root_23
              #                    store to x_23 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with x_23
              #                    store to temp_0_array_ptr_26 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_0_array_ptr_26
              #                    store to temp_5_array_ptr_29 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_5_array_ptr_29
              #                    store to temp_8_array_ptr_29 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_8_array_ptr_29
              #                    store to temp_1_array_ele_26 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_1_array_ele_26
              #                    store to temp_2_cmp_26 in mem offset legal
    sb      a7,51(sp)
              #                    release a7 with temp_2_cmp_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_9_array_ele_29_0
              #                    load from temp_9_array_ele_29 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_x_23_0
              #                    load from x_23 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    search
              #                    store to temp_10_ret_of_search_29 in mem offset legal
    sw      a0,16(sp)
              #                          ret temp_10_ret_of_search_29 
              #                    load from ra_search_0 in mem
    ld      ra,80(sp)
              #                    load from s0_search_0 in mem
    ld      s0,72(sp)
              #                    store to temp_10_ret_of_search_29 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_10_ret_of_search_29
              #                    occupy a0 with temp_10_ret_of_search_29
              #                    load from temp_10_ret_of_search_29 in mem


    lw      a0,16(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_23, tracked: true } |     a1:Freed { symidx: x_23, tracked: true } |     a2:Freed { symidx: temp_0_array_ptr_26, tracked: true } |     a3:Freed { symidx: temp_5_array_ptr_29, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_26, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_3_cmp_26, tracked: true } |     s3:Freed { symidx: temp_4_logic_26, tracked: true } |     s4:Freed { symidx: temp_6_array_ele_29, tracked: true } |     s5:Freed { symidx: temp_7_cmp_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                          new_var temp_11_array_ptr_29:ptr->i32 
              #                          temp_11_array_ptr_29 = getelementptr *left_child_0:ptr->i32 [Some(root_23)] 
              #                    occupy a4 with temp_11_array_ptr_29
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_23
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy s6 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s6, left_child
              #                    occupy reg s6 with *left_child_0
    add     a4,a4,s6
              #                    free s6
              #                    free a4
              #                          new_var temp_12_array_ele_29:i32 
              #                          temp_12_array_ele_29 = load temp_11_array_ptr_29:ptr->i32 
              #                    occupy a4 with temp_11_array_ptr_29
              #                    occupy s7 with temp_12_array_ele_29
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          new_var temp_13_ret_of_search_29:i32 
              #                          temp_13_ret_of_search_29 =  Call i32 search_0(temp_12_array_ele_29, x_23) 
              #                    saved register dumping to mem
              #                    store to temp_3_cmp_26 in mem offset legal
    sb      s2,50(sp)
              #                    release s2 with temp_3_cmp_26
              #                    store to temp_4_logic_26 in mem offset legal
    sb      s3,49(sp)
              #                    release s3 with temp_4_logic_26
              #                    store to temp_6_array_ele_29 in mem offset legal
    sw      s4,36(sp)
              #                    release s4 with temp_6_array_ele_29
              #                    store to temp_7_cmp_29 in mem offset legal
    sb      s5,35(sp)
              #                    release s5 with temp_7_cmp_29
              #                    store to temp_12_array_ele_29 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_12_array_ele_29
              #                    store to root_23 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with root_23
              #                    store to x_23 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with x_23
              #                    store to temp_0_array_ptr_26 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_0_array_ptr_26
              #                    store to temp_5_array_ptr_29 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_5_array_ptr_29
              #                    store to temp_11_array_ptr_29 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_11_array_ptr_29
              #                    store to temp_1_array_ele_26 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_1_array_ele_26
              #                    store to temp_2_cmp_26 in mem offset legal
    sb      a7,51(sp)
              #                    release a7 with temp_2_cmp_26
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_array_ele_29_0
              #                    load from temp_12_array_ele_29 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_x_23_0
              #                    load from x_23 in mem


    lw      a1,64(sp)
              #                    arg load ended


    call    search
              #                    store to temp_13_ret_of_search_29 in mem offset legal
    sw      a0,0(sp)
              #                          ret temp_13_ret_of_search_29 
              #                    load from ra_search_0 in mem
    ld      ra,80(sp)
              #                    load from s0_search_0 in mem
    ld      s0,72(sp)
              #                    store to temp_13_ret_of_search_29 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_13_ret_of_search_29
              #                    occupy a0 with temp_13_ret_of_search_29
              #                    load from temp_13_ret_of_search_29 in mem


    lw      a0,0(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab 
              #                          label L21_0: 
.L21_0:
              #                    regtab 
              #                          label L22_0: 
.L22_0:
              #                    regtab 
              #                    regtab 
              #                          Define find_minimum_0 [root_33] -> find_minimum_ret_0 
    .globl find_minimum
    .type find_minimum,@function
find_minimum:
              #                    mem layout:|ra_find_minimum:8 at 56|s0_find_minimum:8 at 48|root:4 at 44|temp_14_cmp:1 at 43|none:3 at 40|temp_15_:4 at 36|none:4 at 32|temp_16_array_ptr:8 at 24|temp_17_array_ele:4 at 20|temp_18_cmp:1 at 19|none:3 at 16|temp_19_array_ptr:8 at 8|temp_20_array_ele:4 at 4|temp_21_ret_of_find_minimum:4 at 0
    addi    sp,sp,-64
              #                    store to ra_find_minimum_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_find_minimum_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          alloc i1 temp_14_cmp_36 
              #                          alloc i32 temp_15__38 
              #                          alloc ptr->i32 temp_16_array_ptr_40 
              #                          alloc i32 temp_17_array_ele_40 
              #                          alloc i1 temp_18_cmp_40 
              #                          alloc ptr->i32 temp_19_array_ptr_42 
              #                          alloc i32 temp_20_array_ele_42 
              #                          alloc i32 temp_21_ret_of_find_minimum_42 
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_14_cmp_36:i1 
              #                          temp_14_cmp_36 = icmp i32 Eq root_33, -1_0 
              #                    occupy a0 with root_33
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_14_cmp_36
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_14_cmp_36, label branch_true_37, label branch_false_37 
              #                    occupy a2 with temp_14_cmp_36
              #                    free a2
              #                    occupy a2 with temp_14_cmp_36
    bnez    a2, .branch_true_37
              #                    free a2
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          new_var temp_15__38:i32 
              #                          temp_15__38 = Sub i32 0_0, 1_0 
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_15__38
              #                    regtab:    a0:Freed { symidx: root_33, tracked: true } |     a1:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_15__38, tracked: true, occupy_count: 1 } | 


    sub     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          ret temp_15__38 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,48(sp)
              #                    store to temp_15__38 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_15__38
              #                    store to root_33 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with root_33
              #                    occupy a0 with temp_15__38
              #                    load from temp_15__38 in mem


    lw      a0,36(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          new_var temp_16_array_ptr_40:ptr->i32 
              #                          temp_16_array_ptr_40 = getelementptr *left_child_0:ptr->i32 [Some(root_33)] 
              #                    occupy a1 with temp_16_array_ptr_40
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with root_33
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a5, left_child
              #                    occupy reg a5 with *left_child_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          new_var temp_17_array_ele_40:i32 
              #                          temp_17_array_ele_40 = load temp_16_array_ptr_40:ptr->i32 
              #                    occupy a1 with temp_16_array_ptr_40
              #                    occupy a6 with temp_17_array_ele_40
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_18_cmp_40:i1 
              #                          temp_18_cmp_40 = icmp i32 Ne temp_17_array_ele_40, -1_0 
              #                    occupy a6 with temp_17_array_ele_40
              #                    occupy a7 with -1_0
    li      a7, -1
              #                    occupy s1 with temp_18_cmp_40
    xor     s1,a6,a7
    snez    s1, s1
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_18_cmp_40, label branch_true_41, label branch_false_41 
              #                    occupy s1 with temp_18_cmp_40
              #                    free s1
              #                    occupy s1 with temp_18_cmp_40
    bnez    s1, .branch_true_41
              #                    free s1
    j       .branch_false_41
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a1:Freed { symidx: temp_16_array_ptr_40, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_40, tracked: true } |     s1:Freed { symidx: temp_18_cmp_40, tracked: true } | 
              #                          label branch_true_41: 
.branch_true_41:
              #                          new_var temp_19_array_ptr_42:ptr->i32 
              #                          temp_19_array_ptr_42 = getelementptr *left_child_0:ptr->i32 [Some(root_33)] 
              #                    occupy a3 with temp_19_array_ptr_42
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_33
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a7 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a7, left_child
              #                    occupy reg a7 with *left_child_0
    add     a3,a3,a7
              #                    free a7
              #                    free a3
              #                          new_var temp_20_array_ele_42:i32 
              #                          temp_20_array_ele_42 = load temp_19_array_ptr_42:ptr->i32 
              #                    occupy a3 with temp_19_array_ptr_42
              #                    occupy s2 with temp_20_array_ele_42
    lw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          new_var temp_21_ret_of_find_minimum_42:i32 
              #                          temp_21_ret_of_find_minimum_42 =  Call i32 find_minimum_0(temp_20_array_ele_42) 
              #                    saved register dumping to mem
              #                    store to temp_18_cmp_40 in mem offset legal
    sb      s1,19(sp)
              #                    release s1 with temp_18_cmp_40
              #                    store to temp_20_array_ele_42 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_20_array_ele_42
              #                    store to root_33 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with root_33
              #                    store to temp_16_array_ptr_40 in mem offset legal
    sd      a1,24(sp)
              #                    release a1 with temp_16_array_ptr_40
              #                    store to temp_14_cmp_36 in mem offset legal
    sb      a2,43(sp)
              #                    release a2 with temp_14_cmp_36
              #                    store to temp_19_array_ptr_42 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_19_array_ptr_42
              #                    store to temp_17_array_ele_40 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_17_array_ele_40
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_20_array_ele_42_0
              #                    load from temp_20_array_ele_42 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    find_minimum
              #                    store to temp_21_ret_of_find_minimum_42 in mem offset legal
    sw      a0,0(sp)
              #                          ret temp_21_ret_of_find_minimum_42 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,48(sp)
              #                    store to temp_21_ret_of_find_minimum_42 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_21_ret_of_find_minimum_42
              #                    occupy a0 with temp_21_ret_of_find_minimum_42
              #                    load from temp_21_ret_of_find_minimum_42 in mem


    lw      a0,0(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a1:Freed { symidx: temp_16_array_ptr_40, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_40, tracked: true } |     s1:Freed { symidx: temp_18_cmp_40, tracked: true } | 
              #                          label branch_false_41: 
.branch_false_41:
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a1:Freed { symidx: temp_16_array_ptr_40, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_40, tracked: true } |     s1:Freed { symidx: temp_18_cmp_40, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                    regtab     a0:Freed { symidx: root_33, tracked: true } |     a1:Freed { symidx: temp_16_array_ptr_40, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_40, tracked: true } |     s1:Freed { symidx: temp_18_cmp_40, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          ret root_33 
              #                    load from ra_find_minimum_0 in mem
    ld      ra,56(sp)
              #                    load from s0_find_minimum_0 in mem
    ld      s0,48(sp)
              #                    store to root_33 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with root_33
              #                    occupy a0 with root_33
              #                    load from root_33 in mem


    lw      a0,44(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_16_array_ptr_40, tracked: true } |     a2:Freed { symidx: temp_14_cmp_36, tracked: true } |     a6:Freed { symidx: temp_17_array_ele_40, tracked: true } |     s1:Freed { symidx: temp_18_cmp_40, tracked: true } | 
              #                    regtab 
              #                          Define new_node_0 [x_45] -> new_node_ret_0 
    .globl new_node
    .type new_node,@function
new_node:
              #                    mem layout:|ra_new_node:8 at 72|s0_new_node:8 at 64|x:4 at 60|temp_22_ptr2globl:4 at 56|temp_23_index_ptr:8 at 48|temp_24_ptr2globl:4 at 44|none:4 at 40|temp_25_index_ptr:8 at 32|temp_26_ptr2globl:4 at 28|none:4 at 24|temp_27_index_ptr:8 at 16|temp_28_ptr2globl:4 at 12|temp_29_arithop:4 at 8|temp_30_ptr2globl:4 at 4|temp_31_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_new_node_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_new_node_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_22_ptr2globl_47 
              #                          alloc ptr->i32 temp_23_index_ptr_47 
              #                          alloc i32 temp_24_ptr2globl_47 
              #                          alloc ptr->i32 temp_25_index_ptr_47 
              #                          alloc i32 temp_26_ptr2globl_47 
              #                          alloc ptr->i32 temp_27_index_ptr_47 
              #                          alloc i32 temp_28_ptr2globl_47 
              #                          alloc i32 temp_29_arithop_47 
              #                          alloc i32 temp_30_ptr2globl_47 
              #                          alloc i32 temp_31_arithop_47 
              #                    regtab     a0:Freed { symidx: x_45, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          new_var temp_22_ptr2globl_47:i32 
              #                          temp_22_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a1 with *now_0
              #                       load label now as ptr to reg
    la      a1, now
              #                    occupy reg a1 with *now_0
              #                    occupy a2 with temp_22_ptr2globl_47
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_23_index_ptr_47:ptr->i32 
              #                          temp_23_index_ptr_47 = getelementptr *value_0:ptr->i32 [Some(temp_22_ptr2globl_47)] 
              #                    occupy a3 with temp_23_index_ptr_47
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a2 with temp_22_ptr2globl_47
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a2
              #                    free a4
              #                    free a2
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a6 with *value_0
              #                       load label value as ptr to reg
    la      a6, value
              #                    occupy reg a6 with *value_0
    add     a3,a3,a6
              #                    free a6
              #                    free a3
              #                          store x_45:i32 temp_23_index_ptr_47:ptr->i32 
              #                    occupy a3 with temp_23_index_ptr_47
              #                    occupy a0 with x_45
    sw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          mu *value_0:131 
              #                          *value_0 = chi *value_0:131 
              #                          new_var temp_24_ptr2globl_47:i32 
              #                          temp_24_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a7 with *now_0
              #                       load label now as ptr to reg
    la      a7, now
              #                    occupy reg a7 with *now_0
              #                    occupy s1 with temp_24_ptr2globl_47
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_25_index_ptr_47:ptr->i32 
              #                          temp_25_index_ptr_47 = getelementptr *left_child_0:ptr->i32 [Some(temp_24_ptr2globl_47)] 
              #                    occupy s2 with temp_25_index_ptr_47
    li      s2, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with temp_24_ptr2globl_47
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a4,s1
              #                    free a4
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s4, left_child
              #                    occupy reg s4 with *left_child_0
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                          store -1_0:i32 temp_25_index_ptr_47:ptr->i32 
              #                    occupy s2 with temp_25_index_ptr_47
              #                    occupy s5 with -1_0
    li      s5, -1
    sw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          mu *left_child_0:140 
              #                          *left_child_0 = chi *left_child_0:140 
              #                          new_var temp_26_ptr2globl_47:i32 
              #                          temp_26_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy s6 with *now_0
              #                       load label now as ptr to reg
    la      s6, now
              #                    occupy reg s6 with *now_0
              #                    occupy s7 with temp_26_ptr2globl_47
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_27_index_ptr_47:ptr->i32 
              #                          temp_27_index_ptr_47 = getelementptr *right_child_0:ptr->i32 [Some(temp_26_ptr2globl_47)] 
              #                    occupy s8 with temp_27_index_ptr_47
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s7 with temp_26_ptr2globl_47
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a4,s7
              #                    free a4
              #                    free s7
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s10, right_child
              #                    occupy reg s10 with *right_child_0
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store -1_0:i32 temp_27_index_ptr_47:ptr->i32 
              #                    occupy s8 with temp_27_index_ptr_47
              #                    found literal reg Some(s5) already exist with -1_0
              #                    occupy s5 with -1_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu *right_child_0:149 
              #                          *right_child_0 = chi *right_child_0:149 
              #                          new_var temp_28_ptr2globl_47:i32 
              #                          temp_28_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy s11 with *now_0
              #                       load label now as ptr to reg
    la      s11, now
              #                    occupy reg s11 with *now_0
              #                    occupy a1 with temp_28_ptr2globl_47
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          new_var temp_29_arithop_47:i32 
              #                          temp_29_arithop_47 = Add i32 temp_28_ptr2globl_47, 1_0 
              #                    occupy a1 with temp_28_ptr2globl_47
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with temp_29_arithop_47
    add     a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                          store temp_29_arithop_47:i32 *now_0:ptr->i32 
              #                    occupy a4 with *now_0
              #                       load label now as ptr to reg
    la      a4, now
              #                    occupy reg a4 with *now_0
              #                    occupy a5 with temp_29_arithop_47
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_30_ptr2globl_47:i32 
              #                          temp_30_ptr2globl_47 = load *now_0:ptr->i32 
              #                    occupy a4 with *now_0
              #                       load label now as ptr to reg
    la      a4, now
              #                    occupy reg a4 with *now_0
              #                    occupy a6 with temp_30_ptr2globl_47
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                          new_var temp_31_arithop_47:i32 
              #                          temp_31_arithop_47 = Sub i32 temp_30_ptr2globl_47, 1_0 
              #                    occupy a6 with temp_30_ptr2globl_47
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_31_arithop_47
              #                    regtab:    a0:Freed { symidx: x_45, tracked: true } |     a1:Freed { symidx: temp_28_ptr2globl_47, tracked: true } |     a2:Freed { symidx: temp_22_ptr2globl_47, tracked: true } |     a3:Freed { symidx: temp_23_index_ptr_47, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_29_arithop_47, tracked: true } |     a6:Occupied { symidx: temp_30_ptr2globl_47, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_31_arithop_47, tracked: true, occupy_count: 1 } |     s10:Freed { symidx: *right_child_0, tracked: false } |     s11:Freed { symidx: *now_0, tracked: false } |     s1:Freed { symidx: temp_24_ptr2globl_47, tracked: true } |     s2:Freed { symidx: temp_25_index_ptr_47, tracked: true } |     s3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s4:Freed { symidx: *left_child_0, tracked: false } |     s5:Freed { symidx: -1_0, tracked: false } |     s6:Freed { symidx: *now_0, tracked: false } |     s7:Freed { symidx: temp_26_ptr2globl_47, tracked: true } |     s8:Freed { symidx: temp_27_index_ptr_47, tracked: true } |     s9:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } | 


    sub     a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                          ret temp_31_arithop_47 
              #                    load from ra_new_node_0 in mem
    ld      ra,72(sp)
              #                    load from s0_new_node_0 in mem
    ld      s0,64(sp)
              #                    store to temp_31_arithop_47 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_31_arithop_47
              #                    store to x_45 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with x_45
              #                    occupy a0 with temp_31_arithop_47
              #                    load from temp_31_arithop_47 in mem


    lw      a0,0(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_28_ptr2globl_47, tracked: true } |     a2:Freed { symidx: temp_22_ptr2globl_47, tracked: true } |     a3:Freed { symidx: temp_23_index_ptr_47, tracked: true } |     a5:Freed { symidx: temp_29_arithop_47, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_47, tracked: true } |     s1:Freed { symidx: temp_24_ptr2globl_47, tracked: true } |     s2:Freed { symidx: temp_25_index_ptr_47, tracked: true } |     s7:Freed { symidx: temp_26_ptr2globl_47, tracked: true } |     s8:Freed { symidx: temp_27_index_ptr_47, tracked: true } | 
              #                    regtab 
              #                          Define insert_0 [root_53, x_53] -> insert_ret_0 
    .globl insert
    .type insert,@function
insert:
              #                    mem layout:|ra_insert:8 at 88|s0_insert:8 at 80|root:4 at 76|x:4 at 72|temp_32_cmp:1 at 71|none:3 at 68|temp_33_ret_of_new_node:4 at 64|temp_34_array_ptr:8 at 56|temp_35_array_ele:4 at 52|temp_36_cmp:1 at 51|none:3 at 48|temp_37_index_ptr:8 at 40|temp_38_array_ptr:8 at 32|temp_39_array_ele:4 at 28|temp_40_ret_of_insert:4 at 24|temp_41_index_ptr:8 at 16|temp_42_array_ptr:8 at 8|temp_43_array_ele:4 at 4|temp_44_ret_of_insert:4 at 0
    addi    sp,sp,-96
              #                    store to ra_insert_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_insert_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i1 temp_32_cmp_56 
              #                          alloc i32 temp_33_ret_of_new_node_58 
              #                          alloc ptr->i32 temp_34_array_ptr_60 
              #                          alloc i32 temp_35_array_ele_60 
              #                          alloc i1 temp_36_cmp_60 
              #                          alloc ptr->i32 temp_37_index_ptr_60 
              #                          alloc ptr->i32 temp_38_array_ptr_60 
              #                          alloc i32 temp_39_array_ele_60 
              #                          alloc i32 temp_40_ret_of_insert_60 
              #                          alloc ptr->i32 temp_41_index_ptr_63 
              #                          alloc ptr->i32 temp_42_array_ptr_63 
              #                          alloc i32 temp_43_array_ele_63 
              #                          alloc i32 temp_44_ret_of_insert_63 
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_32_cmp_56:i1 
              #                          temp_32_cmp_56 = icmp i32 Eq root_53, -1_0 
              #                    occupy a0 with root_53
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_32_cmp_56
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_32_cmp_56, label branch_true_57, label branch_false_57 
              #                    occupy a3 with temp_32_cmp_56
              #                    free a3
              #                    occupy a3 with temp_32_cmp_56
    bnez    a3, .branch_true_57
              #                    free a3
    j       .branch_false_57
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_32_cmp_56, tracked: true } | 
              #                          label branch_true_57: 
.branch_true_57:
              #                          new_var temp_33_ret_of_new_node_58:i32 
              #                          temp_33_ret_of_new_node_58 =  Call i32 new_node_0(x_53) 
              #                    saved register dumping to mem
              #                    store to root_53 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_53
              #                    store to x_53 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53
              #                    store to temp_32_cmp_56 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_32_cmp_56
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_53_0
              #                    load from x_53 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    new_node
              #                    store to temp_33_ret_of_new_node_58 in mem offset legal
    sw      a0,64(sp)
              #                          ret temp_33_ret_of_new_node_58 
              #                    load from ra_insert_0 in mem
    ld      ra,88(sp)
              #                    load from s0_insert_0 in mem
    ld      s0,80(sp)
              #                    store to temp_33_ret_of_new_node_58 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with temp_33_ret_of_new_node_58
              #                    occupy a0 with temp_33_ret_of_new_node_58
              #                    load from temp_33_ret_of_new_node_58 in mem


    lw      a0,64(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a3:Freed { symidx: temp_32_cmp_56, tracked: true } | 
              #                          label branch_false_57: 
.branch_false_57:
              #                          new_var temp_34_array_ptr_60:ptr->i32 
              #                          temp_34_array_ptr_60 = getelementptr *value_0:ptr->i32 [Some(root_53)] 
              #                    occupy a2 with temp_34_array_ptr_60
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_53
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *value_0
              #                       load label value as ptr to reg
    la      a6, value
              #                    occupy reg a6 with *value_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_35_array_ele_60:i32 
              #                          temp_35_array_ele_60 = load temp_34_array_ptr_60:ptr->i32 
              #                    occupy a2 with temp_34_array_ptr_60
              #                    occupy a7 with temp_35_array_ele_60
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_36_cmp_60:i1 
              #                          temp_36_cmp_60 = icmp i32 Sgt x_53, temp_35_array_ele_60 
              #                    occupy a1 with x_53
              #                    occupy a7 with temp_35_array_ele_60
              #                    occupy s1 with temp_36_cmp_60
    slt     s1,a7,a1
              #                    free a1
              #                    free a7
              #                    free s1
              #                          br i1 temp_36_cmp_60, label branch_true_61, label branch_false_61 
              #                    occupy s1 with temp_36_cmp_60
              #                    free s1
              #                    occupy s1 with temp_36_cmp_60
    bnez    s1, .branch_true_61
              #                    free s1
    j       .branch_false_61
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a2:Freed { symidx: temp_34_array_ptr_60, tracked: true } |     a3:Freed { symidx: temp_32_cmp_56, tracked: true } |     a7:Freed { symidx: temp_35_array_ele_60, tracked: true } |     s1:Freed { symidx: temp_36_cmp_60, tracked: true } | 
              #                          label branch_true_61: 
.branch_true_61:
              #                          new_var temp_37_index_ptr_60:ptr->i32 
              #                          temp_37_index_ptr_60 = getelementptr *right_child_0:ptr->i32 [Some(root_53)] 
              #                    occupy a4 with temp_37_index_ptr_60
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_53
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy s2 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s2, right_child
              #                    occupy reg s2 with *right_child_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_38_array_ptr_60:ptr->i32 
              #                          temp_38_array_ptr_60 = getelementptr *right_child_0:ptr->i32 [Some(root_53)] 
              #                    occupy s3 with temp_38_array_ptr_60
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with root_53
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,a0
              #                    free a5
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s5, right_child
              #                    occupy reg s5 with *right_child_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_39_array_ele_60:i32 
              #                          temp_39_array_ele_60 = load temp_38_array_ptr_60:ptr->i32 
              #                    occupy s3 with temp_38_array_ptr_60
              #                    occupy s6 with temp_39_array_ele_60
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_40_ret_of_insert_60:i32 
              #                          temp_40_ret_of_insert_60 =  Call i32 insert_0(temp_39_array_ele_60, x_53) 
              #                    saved register dumping to mem
              #                    store to temp_36_cmp_60 in mem offset legal
    sb      s1,51(sp)
              #                    release s1 with temp_36_cmp_60
              #                    store to temp_38_array_ptr_60 in mem offset legal
    sd      s3,32(sp)
              #                    release s3 with temp_38_array_ptr_60
              #                    store to temp_39_array_ele_60 in mem offset legal
    sw      s6,28(sp)
              #                    release s6 with temp_39_array_ele_60
              #                    store to root_53 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_53
              #                    store to x_53 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53
              #                    store to temp_34_array_ptr_60 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_34_array_ptr_60
              #                    store to temp_32_cmp_56 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_32_cmp_56
              #                    store to temp_37_index_ptr_60 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_37_index_ptr_60
              #                    store to temp_35_array_ele_60 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with temp_35_array_ele_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39_array_ele_60_0
              #                    load from temp_39_array_ele_60 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_x_53_0
              #                    load from x_53 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    insert
              #                    store to temp_40_ret_of_insert_60 in mem offset legal
    sw      a0,24(sp)
              #                          store temp_40_ret_of_insert_60:i32 temp_37_index_ptr_60:ptr->i32 
              #                    occupy a1 with temp_37_index_ptr_60
              #                    load from temp_37_index_ptr_60 in mem
    ld      a1,40(sp)
              #                    occupy a0 with temp_40_ret_of_insert_60
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *right_child_0:204 
              #                          *right_child_0 = chi *right_child_0:204 
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     a0:Freed { symidx: root_53, tracked: true } |     a1:Freed { symidx: x_53, tracked: true } |     a2:Freed { symidx: temp_34_array_ptr_60, tracked: true } |     a3:Freed { symidx: temp_32_cmp_56, tracked: true } |     a7:Freed { symidx: temp_35_array_ele_60, tracked: true } |     s1:Freed { symidx: temp_36_cmp_60, tracked: true } | 
              #                          label branch_false_61: 
.branch_false_61:
              #                          new_var temp_41_index_ptr_63:ptr->i32 
              #                          temp_41_index_ptr_63 = getelementptr *left_child_0:ptr->i32 [Some(root_53)] 
              #                    occupy a4 with temp_41_index_ptr_63
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_53
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy s2 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s2, left_child
              #                    occupy reg s2 with *left_child_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_42_array_ptr_63:ptr->i32 
              #                          temp_42_array_ptr_63 = getelementptr *left_child_0:ptr->i32 [Some(root_53)] 
              #                    occupy s3 with temp_42_array_ptr_63
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with root_53
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,a0
              #                    free a5
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s5, left_child
              #                    occupy reg s5 with *left_child_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_43_array_ele_63:i32 
              #                          temp_43_array_ele_63 = load temp_42_array_ptr_63:ptr->i32 
              #                    occupy s3 with temp_42_array_ptr_63
              #                    occupy s6 with temp_43_array_ele_63
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_44_ret_of_insert_63:i32 
              #                          temp_44_ret_of_insert_63 =  Call i32 insert_0(temp_43_array_ele_63, x_53) 
              #                    saved register dumping to mem
              #                    store to temp_36_cmp_60 in mem offset legal
    sb      s1,51(sp)
              #                    release s1 with temp_36_cmp_60
              #                    store to temp_42_array_ptr_63 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_42_array_ptr_63
              #                    store to temp_43_array_ele_63 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_43_array_ele_63
              #                    store to root_53 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with root_53
              #                    store to x_53 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with x_53
              #                    store to temp_34_array_ptr_60 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_34_array_ptr_60
              #                    store to temp_32_cmp_56 in mem offset legal
    sb      a3,71(sp)
              #                    release a3 with temp_32_cmp_56
              #                    store to temp_41_index_ptr_63 in mem offset legal
    sd      a4,16(sp)
              #                    release a4 with temp_41_index_ptr_63
              #                    store to temp_35_array_ele_60 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with temp_35_array_ele_60
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_43_array_ele_63_0
              #                    load from temp_43_array_ele_63 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_x_53_0
              #                    load from x_53 in mem


    lw      a1,72(sp)
              #                    arg load ended


    call    insert
              #                    store to temp_44_ret_of_insert_63 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_44_ret_of_insert_63:i32 temp_41_index_ptr_63:ptr->i32 
              #                    occupy a1 with temp_41_index_ptr_63
              #                    load from temp_41_index_ptr_63 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_44_ret_of_insert_63
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *left_child_0:219 
              #                          *left_child_0 = chi *left_child_0:219 
              #                          jump label: L13_0 
              #                    store to temp_44_ret_of_insert_63 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_44_ret_of_insert_63
              #                    store to temp_41_index_ptr_63 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_41_index_ptr_63
              #                    occupy a0 with _anonymous_of_temp_40_ret_of_insert_60_0
              #                    load from temp_40_ret_of_insert_60 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_temp_37_index_ptr_60_0
              #                    load from temp_37_index_ptr_60 in mem
    ld      a1,40(sp)
    j       .L13_0
              #                    regtab     a0:Freed { symidx: temp_40_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_60, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a0:Freed { symidx: temp_40_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_60, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                    regtab     a0:Freed { symidx: temp_40_ret_of_insert_60, tracked: true } |     a1:Freed { symidx: temp_37_index_ptr_60, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          ret root_53 
              #                    load from ra_insert_0 in mem
    ld      ra,88(sp)
              #                    load from s0_insert_0 in mem
    ld      s0,80(sp)
              #                    store to temp_40_ret_of_insert_60 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_40_ret_of_insert_60
              #                    occupy a0 with root_53
              #                    load from root_53 in mem


    lw      a0,76(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_37_index_ptr_60, tracked: true } | 
              #                    regtab 
              #                          Define delete_0 [root_66, x_66] -> delete_ret_0 
    .globl delete
    .type delete,@function
delete:
              #                    mem layout:|ra_delete:8 at 312|s0_delete:8 at 304|root:4 at 300|x:4 at 296|temp_45_cmp:1 at 295|none:3 at 292|temp_46_:4 at 288|temp_47_array_ptr:8 at 280|temp_48_array_ele:4 at 276|temp_49_cmp:1 at 275|none:3 at 272|temp_50_index_ptr:8 at 264|temp_51_array_ptr:8 at 256|temp_52_array_ele:4 at 252|temp_53_ret_of_delete:4 at 248|temp_54_array_ptr:8 at 240|temp_55_array_ele:4 at 236|temp_56_cmp:1 at 235|none:3 at 232|temp_57_index_ptr:8 at 224|temp_58_array_ptr:8 at 216|temp_59_array_ele:4 at 212|temp_60_ret_of_delete:4 at 208|temp_61_array_ptr:8 at 200|temp_62_array_ele:4 at 196|temp_63_cmp:1 at 195|none:3 at 192|temp_64_array_ptr:8 at 184|temp_65_array_ele:4 at 180|temp_66_cmp:1 at 179|temp_67_logic:1 at 178|none:2 at 176|temp_68_:4 at 172|none:4 at 168|temp_69_array_ptr:8 at 160|temp_70_array_ele:4 at 156|temp_71_cmp:1 at 155|none:3 at 152|temp_72_array_ptr:8 at 144|temp_73_array_ele:4 at 140|temp_74_cmp:1 at 139|temp_75_logic:1 at 138|none:2 at 136|temp_76_array_ptr:8 at 128|temp_77_array_ele:4 at 124|temp_78_cmp:1 at 123|none:3 at 120|temp_79_array_ptr:8 at 112|temp_80_array_ele:4 at 108|none:4 at 104|temp_81_array_ptr:8 at 96|temp_82_array_ele:4 at 92|none:4 at 88|temp_83_array_ptr:8 at 80|temp_84_array_ele:4 at 76|temp_85_ret_of_find_minimum:4 at 72|tmp:4 at 68|none:4 at 64|temp_86_index_ptr:8 at 56|temp_87_array_ptr:8 at 48|temp_88_array_ele:4 at 44|none:4 at 40|temp_89_index_ptr:8 at 32|temp_90_array_ptr:8 at 24|temp_91_array_ele:4 at 20|none:4 at 16|temp_92_array_ptr:8 at 8|temp_93_array_ele:4 at 4|temp_94_ret_of_delete:4 at 0
    addi    sp,sp,-320
              #                    store to ra_delete_0 in mem offset legal
    sd      ra,312(sp)
              #                    store to s0_delete_0 in mem offset legal
    sd      s0,304(sp)
    addi    s0,sp,320
              #                          alloc i1 temp_45_cmp_69 
              #                          alloc i32 temp_46__69 
              #                          alloc ptr->i32 temp_47_array_ptr_72 
              #                          alloc i32 temp_48_array_ele_72 
              #                          alloc i1 temp_49_cmp_72 
              #                          alloc ptr->i32 temp_50_index_ptr_72 
              #                          alloc ptr->i32 temp_51_array_ptr_72 
              #                          alloc i32 temp_52_array_ele_72 
              #                          alloc i32 temp_53_ret_of_delete_72 
              #                          alloc ptr->i32 temp_54_array_ptr_75 
              #                          alloc i32 temp_55_array_ele_75 
              #                          alloc i1 temp_56_cmp_75 
              #                          alloc ptr->i32 temp_57_index_ptr_75 
              #                          alloc ptr->i32 temp_58_array_ptr_75 
              #                          alloc i32 temp_59_array_ele_75 
              #                          alloc i32 temp_60_ret_of_delete_75 
              #                          alloc ptr->i32 temp_61_array_ptr_78 
              #                          alloc i32 temp_62_array_ele_78 
              #                          alloc i1 temp_63_cmp_78 
              #                          alloc ptr->i32 temp_64_array_ptr_78 
              #                          alloc i32 temp_65_array_ele_78 
              #                          alloc i1 temp_66_cmp_78 
              #                          alloc i1 temp_67_logic_78 
              #                          alloc i32 temp_68__78 
              #                          alloc ptr->i32 temp_69_array_ptr_81 
              #                          alloc i32 temp_70_array_ele_81 
              #                          alloc i1 temp_71_cmp_81 
              #                          alloc ptr->i32 temp_72_array_ptr_81 
              #                          alloc i32 temp_73_array_ele_81 
              #                          alloc i1 temp_74_cmp_81 
              #                          alloc i1 temp_75_logic_81 
              #                          alloc ptr->i32 temp_76_array_ptr_83 
              #                          alloc i32 temp_77_array_ele_83 
              #                          alloc i1 temp_78_cmp_83 
              #                          alloc ptr->i32 temp_79_array_ptr_83 
              #                          alloc i32 temp_80_array_ele_83 
              #                          alloc ptr->i32 temp_81_array_ptr_83 
              #                          alloc i32 temp_82_array_ele_83 
              #                          alloc ptr->i32 temp_83_array_ptr_87 
              #                          alloc i32 temp_84_array_ele_87 
              #                          alloc i32 temp_85_ret_of_find_minimum_87 
              #                          alloc i32 tmp_87 
              #                          alloc ptr->i32 temp_86_index_ptr_87 
              #                          alloc ptr->i32 temp_87_array_ptr_87 
              #                          alloc i32 temp_88_array_ele_87 
              #                          alloc ptr->i32 temp_89_index_ptr_87 
              #                          alloc ptr->i32 temp_90_array_ptr_87 
              #                          alloc i32 temp_91_array_ele_87 
              #                          alloc ptr->i32 temp_92_array_ptr_87 
              #                          alloc i32 temp_93_array_ele_87 
              #                          alloc i32 temp_94_ret_of_delete_87 
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_45_cmp_69:i1 
              #                          temp_45_cmp_69 = icmp i32 Eq root_66, -1_0 
              #                    occupy a0 with root_66
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a3 with temp_45_cmp_69
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_45_cmp_69, label branch_true_70, label branch_false_70 
              #                    occupy a3 with temp_45_cmp_69
              #                    free a3
              #                    occupy a3 with temp_45_cmp_69
    bnez    a3, .branch_true_70
              #                    free a3
    j       .branch_false_70
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } | 
              #                          label branch_true_70: 
.branch_true_70:
              #                          new_var temp_46__69:i32 
              #                          temp_46__69 = Sub i32 0_0, 1_0 
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_46__69
              #                    regtab:    a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_46__69, tracked: true, occupy_count: 1 } | 


    sub     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          ret temp_46__69 
              #                    load from ra_delete_0 in mem
    ld      ra,312(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,304(sp)
              #                    store to temp_46__69 in mem offset legal
    sw      a5,288(sp)
              #                    release a5 with temp_46__69
              #                    store to root_66 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with root_66
              #                    occupy a0 with temp_46__69
              #                    load from temp_46__69 in mem


    lw      a0,288(sp)
    addi    sp,sp,320
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } | 
              #                          label branch_false_70: 
.branch_false_70:
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_47_array_ptr_72:ptr->i32 
              #                          temp_47_array_ptr_72 = getelementptr *value_0:ptr->i32 [Some(root_66)] 
              #                    occupy a2 with temp_47_array_ptr_72
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with root_66
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *value_0
              #                       load label value as ptr to reg
    la      a6, value
              #                    occupy reg a6 with *value_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_48_array_ele_72:i32 
              #                          temp_48_array_ele_72 = load temp_47_array_ptr_72:ptr->i32 
              #                    occupy a2 with temp_47_array_ptr_72
              #                    occupy a7 with temp_48_array_ele_72
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_49_cmp_72:i1 
              #                          temp_49_cmp_72 = icmp i32 Sgt x_66, temp_48_array_ele_72 
              #                    occupy a1 with x_66
              #                    occupy a7 with temp_48_array_ele_72
              #                    occupy s1 with temp_49_cmp_72
    slt     s1,a7,a1
              #                    free a1
              #                    free a7
              #                    free s1
              #                          br i1 temp_49_cmp_72, label branch_true_73, label branch_false_73 
              #                    occupy s1 with temp_49_cmp_72
              #                    free s1
              #                    occupy s1 with temp_49_cmp_72
    bnez    s1, .branch_true_73
              #                    free s1
    j       .branch_false_73
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } | 
              #                          label branch_true_73: 
.branch_true_73:
              #                          new_var temp_50_index_ptr_72:ptr->i32 
              #                          temp_50_index_ptr_72 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a4 with temp_50_index_ptr_72
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_66
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy s2 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s2, right_child
              #                    occupy reg s2 with *right_child_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_51_array_ptr_72:ptr->i32 
              #                          temp_51_array_ptr_72 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s3 with temp_51_array_ptr_72
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with root_66
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,a0
              #                    free a5
              #                    free a0
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s5, right_child
              #                    occupy reg s5 with *right_child_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_52_array_ele_72:i32 
              #                          temp_52_array_ele_72 = load temp_51_array_ptr_72:ptr->i32 
              #                    occupy s3 with temp_51_array_ptr_72
              #                    occupy s6 with temp_52_array_ele_72
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_53_ret_of_delete_72:i32 
              #                          temp_53_ret_of_delete_72 =  Call i32 delete_0(temp_52_array_ele_72, x_66) 
              #                    saved register dumping to mem
              #                    store to temp_49_cmp_72 in mem offset legal
    sb      s1,275(sp)
              #                    release s1 with temp_49_cmp_72
              #                    store to temp_51_array_ptr_72 in mem offset legal
    sd      s3,256(sp)
              #                    release s3 with temp_51_array_ptr_72
              #                    store to temp_52_array_ele_72 in mem offset legal
    sw      s6,252(sp)
              #                    release s6 with temp_52_array_ele_72
              #                    store to root_66 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with root_66
              #                    store to x_66 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with x_66
              #                    store to temp_47_array_ptr_72 in mem offset legal
    sd      a2,280(sp)
              #                    release a2 with temp_47_array_ptr_72
              #                    store to temp_45_cmp_69 in mem offset legal
    sb      a3,295(sp)
              #                    release a3 with temp_45_cmp_69
              #                    store to temp_50_index_ptr_72 in mem offset legal
    sd      a4,264(sp)
              #                    release a4 with temp_50_index_ptr_72
              #                    store to temp_48_array_ele_72 in mem offset legal
    sw      a7,276(sp)
              #                    release a7 with temp_48_array_ele_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_array_ele_72_0
              #                    load from temp_52_array_ele_72 in mem


    lw      a0,252(sp)
              #                    occupy a1 with _anonymous_of_x_66_0
              #                    load from x_66 in mem


    lw      a1,296(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_53_ret_of_delete_72 in mem offset legal
    sw      a0,248(sp)
              #                          store temp_53_ret_of_delete_72:i32 temp_50_index_ptr_72:ptr->i32 
              #                    occupy a1 with temp_50_index_ptr_72
              #                    load from temp_50_index_ptr_72 in mem
    ld      a1,264(sp)
              #                    occupy a0 with temp_53_ret_of_delete_72
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *right_child_0:257 
              #                          *right_child_0 = chi *right_child_0:257 
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } | 
              #                          label branch_false_73: 
.branch_false_73:
              #                          new_var temp_54_array_ptr_75:ptr->i32 
              #                          temp_54_array_ptr_75 = getelementptr *value_0:ptr->i32 [Some(root_66)] 
              #                    occupy a4 with temp_54_array_ptr_75
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with root_66
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy s2 with *value_0
              #                       load label value as ptr to reg
    la      s2, value
              #                    occupy reg s2 with *value_0
    add     a4,a4,s2
              #                    free s2
              #                    free a4
              #                          new_var temp_55_array_ele_75:i32 
              #                          temp_55_array_ele_75 = load temp_54_array_ptr_75:ptr->i32 
              #                    occupy a4 with temp_54_array_ptr_75
              #                    occupy s3 with temp_55_array_ele_75
    lw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                          new_var temp_56_cmp_75:i1 
              #                          temp_56_cmp_75 = icmp i32 Slt x_66, temp_55_array_ele_75 
              #                    occupy a1 with x_66
              #                    occupy s3 with temp_55_array_ele_75
              #                    occupy s4 with temp_56_cmp_75
    slt     s4,a1,s3
              #                    free a1
              #                    free s3
              #                    free s4
              #                          br i1 temp_56_cmp_75, label branch_true_76, label branch_false_76 
              #                    occupy s4 with temp_56_cmp_75
              #                    free s4
              #                    occupy s4 with temp_56_cmp_75
    bnez    s4, .branch_true_76
              #                    free s4
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } | 
              #                          label branch_true_76: 
.branch_true_76:
              #                          new_var temp_57_index_ptr_75:ptr->i32 
              #                          temp_57_index_ptr_75 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a5 with temp_57_index_ptr_75
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_66
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy s5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s5, left_child
              #                    occupy reg s5 with *left_child_0
    add     a5,a5,s5
              #                    free s5
              #                    free a5
              #                          new_var temp_58_array_ptr_75:ptr->i32 
              #                          temp_58_array_ptr_75 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s6 with temp_58_array_ptr_75
    li      s6, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with root_66
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a6,a0
              #                    free a6
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s8, left_child
              #                    occupy reg s8 with *left_child_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_59_array_ele_75:i32 
              #                          temp_59_array_ele_75 = load temp_58_array_ptr_75:ptr->i32 
              #                    occupy s6 with temp_58_array_ptr_75
              #                    occupy s9 with temp_59_array_ele_75
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_60_ret_of_delete_75:i32 
              #                          temp_60_ret_of_delete_75 =  Call i32 delete_0(temp_59_array_ele_75, x_66) 
              #                    saved register dumping to mem
              #                    store to temp_49_cmp_72 in mem offset legal
    sb      s1,275(sp)
              #                    release s1 with temp_49_cmp_72
              #                    store to temp_55_array_ele_75 in mem offset legal
    sw      s3,236(sp)
              #                    release s3 with temp_55_array_ele_75
              #                    store to temp_56_cmp_75 in mem offset legal
    sb      s4,235(sp)
              #                    release s4 with temp_56_cmp_75
              #                    store to temp_58_array_ptr_75 in mem offset legal
    sd      s6,216(sp)
              #                    release s6 with temp_58_array_ptr_75
              #                    store to temp_59_array_ele_75 in mem offset legal
    sw      s9,212(sp)
              #                    release s9 with temp_59_array_ele_75
              #                    store to root_66 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with root_66
              #                    store to x_66 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with x_66
              #                    store to temp_47_array_ptr_72 in mem offset legal
    sd      a2,280(sp)
              #                    release a2 with temp_47_array_ptr_72
              #                    store to temp_45_cmp_69 in mem offset legal
    sb      a3,295(sp)
              #                    release a3 with temp_45_cmp_69
              #                    store to temp_54_array_ptr_75 in mem offset legal
    sd      a4,240(sp)
              #                    release a4 with temp_54_array_ptr_75
              #                    store to temp_57_index_ptr_75 in mem offset legal
    sd      a5,224(sp)
              #                    release a5 with temp_57_index_ptr_75
              #                    store to temp_48_array_ele_72 in mem offset legal
    sw      a7,276(sp)
              #                    release a7 with temp_48_array_ele_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_59_array_ele_75_0
              #                    load from temp_59_array_ele_75 in mem


    lw      a0,212(sp)
              #                    occupy a1 with _anonymous_of_x_66_0
              #                    load from x_66 in mem


    lw      a1,296(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_60_ret_of_delete_75 in mem offset legal
    sw      a0,208(sp)
              #                          store temp_60_ret_of_delete_75:i32 temp_57_index_ptr_75:ptr->i32 
              #                    occupy a1 with temp_57_index_ptr_75
              #                    load from temp_57_index_ptr_75 in mem
    ld      a1,224(sp)
              #                    occupy a0 with temp_60_ret_of_delete_75
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *left_child_0:286 
              #                          *left_child_0 = chi *left_child_0:286 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } | 
              #                          label branch_false_76: 
.branch_false_76:
              #                          new_var temp_61_array_ptr_78:ptr->i32 
              #                          temp_61_array_ptr_78 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a5 with temp_61_array_ptr_78
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with root_66
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
              #                    occupy s5 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s5, right_child
              #                    occupy reg s5 with *right_child_0
    add     a5,a5,s5
              #                    free s5
              #                    free a5
              #                          new_var temp_62_array_ele_78:i32 
              #                          temp_62_array_ele_78 = load temp_61_array_ptr_78:ptr->i32 
              #                    occupy a5 with temp_61_array_ptr_78
              #                    occupy s6 with temp_62_array_ele_78
    lw      s6,0(a5)
              #                    free s6
              #                    free a5
              #                          new_var temp_63_cmp_78:i1 
              #                          temp_63_cmp_78 = icmp i32 Eq temp_62_array_ele_78, -1_0 
              #                    occupy s6 with temp_62_array_ele_78
              #                    occupy s7 with -1_0
    li      s7, -1
              #                    occupy s8 with temp_63_cmp_78
    xor     s8,s6,s7
    seqz    s8, s8
              #                    free s6
              #                    free s7
              #                    free s8
              #                          new_var temp_64_array_ptr_78:ptr->i32 
              #                          temp_64_array_ptr_78 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s9 with temp_64_array_ptr_78
    li      s9, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a0 with root_66
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a6,a0
              #                    free a6
              #                    free a0
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy s11 with *left_child_0
              #                       load label left_child as ptr to reg
    la      s11, left_child
              #                    occupy reg s11 with *left_child_0
    add     s9,s9,s11
              #                    free s11
              #                    free s9
              #                          new_var temp_65_array_ele_78:i32 
              #                          temp_65_array_ele_78 = load temp_64_array_ptr_78:ptr->i32 
              #                    occupy s9 with temp_64_array_ptr_78
              #                    occupy a6 with temp_65_array_ele_78
    lw      a6,0(s9)
              #                    free a6
              #                    free s9
              #                          new_var temp_66_cmp_78:i1 
              #                          temp_66_cmp_78 = icmp i32 Eq temp_65_array_ele_78, -1_0 
              #                    occupy a6 with temp_65_array_ele_78
              #                    found literal reg Some(s7) already exist with -1_0
              #                    occupy s7 with -1_0
              #                    occupy s2 with temp_66_cmp_78
    xor     s2,a6,s7
    seqz    s2, s2
              #                    free a6
              #                    free s7
              #                    free s2
              #                          new_var temp_67_logic_78:i1 
              #                          temp_67_logic_78 = And i1 temp_66_cmp_78, temp_63_cmp_78 
              #                    occupy s2 with temp_66_cmp_78
              #                    occupy s8 with temp_63_cmp_78
              #                    occupy s5 with temp_67_logic_78
    and     s5,s2,s8
              #                    free s2
              #                    free s8
              #                    free s5
              #                          br i1 temp_67_logic_78, label branch_true_79, label branch_false_79 
              #                    occupy s5 with temp_67_logic_78
              #                    free s5
              #                    occupy s5 with temp_67_logic_78
    bnez    s5, .branch_true_79
              #                    free s5
    j       .branch_false_79
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_true_79: 
.branch_true_79:
              #                          new_var temp_68__78:i32 
              #                          temp_68__78 = Sub i32 0_0, 1_0 
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with temp_68__78
              #                    regtab:    a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s11:Occupied { symidx: temp_68__78, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 


    sub     s11,s7,s10
              #                    free s7
              #                    free s10
              #                    free s11
              #                          ret temp_68__78 
              #                    load from ra_delete_0 in mem
    ld      ra,312(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,304(sp)
              #                    store to temp_68__78 in mem offset legal
    sw      s11,172(sp)
              #                    release s11 with temp_68__78
              #                    store to root_66 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with root_66
              #                    occupy a0 with temp_68__78
              #                    load from temp_68__78 in mem


    lw      a0,172(sp)
    addi    sp,sp,320
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_66, tracked: true } |     a1:Freed { symidx: x_66, tracked: true } |     a2:Freed { symidx: temp_47_array_ptr_72, tracked: true } |     a3:Freed { symidx: temp_45_cmp_69, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_false_79: 
.branch_false_79:
              #                          new_var temp_69_array_ptr_81:ptr->i32 
              #                          temp_69_array_ptr_81 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s7 with temp_69_array_ptr_81
    li      s7, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy a0 with root_66
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s10,a0
              #                    free s10
              #                    free a0
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
              #                    occupy s10 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s10, right_child
              #                    occupy reg s10 with *right_child_0
    add     s7,s7,s10
              #                    free s10
              #                    free s7
              #                          new_var temp_70_array_ele_81:i32 
              #                          temp_70_array_ele_81 = load temp_69_array_ptr_81:ptr->i32 
              #                    occupy s7 with temp_69_array_ptr_81
              #                    occupy s10 with temp_70_array_ele_81
    lw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          new_var temp_71_cmp_81:i1 
              #                          temp_71_cmp_81 = icmp i32 Eq temp_70_array_ele_81, -1_0 
              #                    occupy s10 with temp_70_array_ele_81
              #                    occupy s11 with -1_0
    li      s11, -1
              #                    store to root_66 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with root_66
              #                    occupy a0 with temp_71_cmp_81
    xor     a0,s10,s11
    seqz    a0, a0
              #                    free s10
              #                    free s11
              #                    free a0
              #                          new_var temp_72_array_ptr_81:ptr->i32 
              #                          temp_72_array_ptr_81 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s11 with temp_72_array_ptr_81
    li      s11, 0
              #                    store to temp_71_cmp_81 in mem offset legal
    sb      a0,155(sp)
              #                    release a0 with temp_71_cmp_81
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to x_66 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with x_66
              #                    occupy a1 with root_66
              #                    load from root_66 in mem


    lw      a1,300(sp)
              #                    store to temp_47_array_ptr_72 in mem offset legal
    sd      a2,280(sp)
              #                    release a2 with temp_47_array_ptr_72
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a0 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a0, left_child
              #                    occupy reg a0 with *left_child_0
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_73_array_ele_81:i32 
              #                          temp_73_array_ele_81 = load temp_72_array_ptr_81:ptr->i32 
              #                    occupy s11 with temp_72_array_ptr_81
              #                    occupy a0 with temp_73_array_ele_81
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_74_cmp_81:i1 
              #                          temp_74_cmp_81 = icmp i32 Eq temp_73_array_ele_81, -1_0 
              #                    occupy a0 with temp_73_array_ele_81
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to root_66 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with root_66
              #                    occupy a1 with temp_74_cmp_81
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_75_logic_81:i1 
              #                          temp_75_logic_81 = Or i1 temp_74_cmp_81, temp_71_cmp_81 
              #                    occupy a1 with temp_74_cmp_81
              #                    occupy a2 with temp_71_cmp_81
              #                    load from temp_71_cmp_81 in mem
    lb      a2,155(sp)
              #                    occupy a2 with temp_71_cmp_81
              #                    free a1
              #                    free a2
              #                    free a2
              #                          br i1 temp_75_logic_81, label branch_true_82, label branch_false_82 
              #                    store to temp_73_array_ele_81 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_73_array_ele_81
              #                    occupy a0 with temp_75_logic_81
              #                    load from temp_75_logic_81 in mem
    lb      a0,138(sp)
              #                    free a0
              #                    store to temp_45_cmp_69 in mem offset legal
    sb      a3,295(sp)
              #                    release a3 with temp_45_cmp_69
              #                    occupy a0 with temp_75_logic_81
    bnez    a0, .branch_true_82
              #                    free a0
    j       .branch_false_82
              #                    regtab     a0:Freed { symidx: temp_75_logic_81, tracked: true } |     a1:Freed { symidx: temp_74_cmp_81, tracked: true } |     a2:Freed { symidx: temp_71_cmp_81, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_81, tracked: true } |     s11:Freed { symidx: temp_72_array_ptr_81, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Freed { symidx: temp_69_array_ptr_81, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_true_82: 
.branch_true_82:
              #                          new_var temp_76_array_ptr_83:ptr->i32 
              #                          temp_76_array_ptr_83 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a3 with temp_76_array_ptr_83
    li      a3, 0
              #                    store to temp_75_logic_81 in mem offset legal
    sb      a0,138(sp)
              #                    release a0 with temp_75_logic_81
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_74_cmp_81 in mem offset legal
    sb      a1,139(sp)
              #                    release a1 with temp_74_cmp_81
              #                    occupy a1 with root_66
              #                    load from root_66 in mem


    lw      a1,300(sp)
              #                    store to temp_71_cmp_81 in mem offset legal
    sb      a2,155(sp)
              #                    release a2 with temp_71_cmp_81
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a0, left_child
              #                    occupy reg a0 with *left_child_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_77_array_ele_83:i32 
              #                          temp_77_array_ele_83 = load temp_76_array_ptr_83:ptr->i32 
              #                    occupy a3 with temp_76_array_ptr_83
              #                    occupy a0 with temp_77_array_ele_83
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_78_cmp_83:i1 
              #                          temp_78_cmp_83 = icmp i32 Eq temp_77_array_ele_83, -1_0 
              #                    occupy a0 with temp_77_array_ele_83
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    store to root_66 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with root_66
              #                    occupy a1 with temp_78_cmp_83
    xor     a1,a0,a2
    seqz    a1, a1
              #                    free a0
              #                    free a2
              #                    free a1
              #                          br i1 temp_78_cmp_83, label branch_true_84, label branch_false_84 
              #                    occupy a1 with temp_78_cmp_83
              #                    free a1
              #                    occupy a1 with temp_78_cmp_83
    bnez    a1, .branch_true_84
              #                    free a1
    j       .branch_false_84
              #                    regtab     a0:Freed { symidx: temp_77_array_ele_83, tracked: true } |     a1:Freed { symidx: temp_78_cmp_83, tracked: true } |     a3:Freed { symidx: temp_76_array_ptr_83, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_81, tracked: true } |     s11:Freed { symidx: temp_72_array_ptr_81, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Freed { symidx: temp_69_array_ptr_81, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_true_84: 
.branch_true_84:
              #                          new_var temp_79_array_ptr_83:ptr->i32 
              #                          temp_79_array_ptr_83 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a2 with temp_79_array_ptr_83
    li      a2, 0
              #                    store to temp_77_array_ele_83 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_77_array_ele_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_78_cmp_83 in mem offset legal
    sb      a1,123(sp)
              #                    release a1 with temp_78_cmp_83
              #                    occupy a1 with root_66
              #                    load from root_66 in mem


    lw      a1,300(sp)
              #                    store to temp_76_array_ptr_83 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_76_array_ptr_83
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a0, right_child
              #                    occupy reg a0 with *right_child_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_80_array_ele_83:i32 
              #                          temp_80_array_ele_83 = load temp_79_array_ptr_83:ptr->i32 
              #                    occupy a2 with temp_79_array_ptr_83
              #                    occupy a0 with temp_80_array_ele_83
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          ret temp_80_array_ele_83 
              #                    load from ra_delete_0 in mem
    ld      ra,312(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,304(sp)
              #                    store to temp_80_array_ele_83 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_80_array_ele_83
              #                    occupy a0 with temp_80_array_ele_83
              #                    load from temp_80_array_ele_83 in mem


    lw      a0,108(sp)
    addi    sp,sp,320
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_77_array_ele_83, tracked: true } |     a1:Freed { symidx: temp_78_cmp_83, tracked: true } |     a3:Freed { symidx: temp_76_array_ptr_83, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_81, tracked: true } |     s11:Freed { symidx: temp_72_array_ptr_81, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Freed { symidx: temp_69_array_ptr_81, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_false_84: 
.branch_false_84:
              #                          new_var temp_81_array_ptr_83:ptr->i32 
              #                          temp_81_array_ptr_83 = getelementptr *left_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a2 with temp_81_array_ptr_83
    li      a2, 0
              #                    store to temp_77_array_ele_83 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_77_array_ele_83
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_78_cmp_83 in mem offset legal
    sb      a1,123(sp)
              #                    release a1 with temp_78_cmp_83
              #                    occupy a1 with root_66
              #                    load from root_66 in mem


    lw      a1,300(sp)
              #                    store to temp_76_array_ptr_83 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_76_array_ptr_83
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a0, left_child
              #                    occupy reg a0 with *left_child_0
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_82_array_ele_83:i32 
              #                          temp_82_array_ele_83 = load temp_81_array_ptr_83:ptr->i32 
              #                    occupy a2 with temp_81_array_ptr_83
              #                    occupy a0 with temp_82_array_ele_83
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          ret temp_82_array_ele_83 
              #                    load from ra_delete_0 in mem
    ld      ra,312(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,304(sp)
              #                    store to temp_82_array_ele_83 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_82_array_ele_83
              #                    occupy a0 with temp_82_array_ele_83
              #                    load from temp_82_array_ele_83 in mem


    lw      a0,92(sp)
    addi    sp,sp,320
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: root_66, tracked: true } |     a2:Freed { symidx: temp_81_array_ptr_83, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_81, tracked: true } |     s11:Freed { symidx: temp_72_array_ptr_81, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Freed { symidx: temp_69_array_ptr_81, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a0:Freed { symidx: temp_75_logic_81, tracked: true } |     a1:Freed { symidx: temp_74_cmp_81, tracked: true } |     a2:Freed { symidx: temp_71_cmp_81, tracked: true } |     a4:Freed { symidx: temp_54_array_ptr_75, tracked: true } |     a5:Freed { symidx: temp_61_array_ptr_78, tracked: true } |     a6:Freed { symidx: temp_65_array_ele_78, tracked: true } |     a7:Freed { symidx: temp_48_array_ele_72, tracked: true } |     s10:Freed { symidx: temp_70_array_ele_81, tracked: true } |     s11:Freed { symidx: temp_72_array_ptr_81, tracked: true } |     s1:Freed { symidx: temp_49_cmp_72, tracked: true } |     s2:Freed { symidx: temp_66_cmp_78, tracked: true } |     s3:Freed { symidx: temp_55_array_ele_75, tracked: true } |     s4:Freed { symidx: temp_56_cmp_75, tracked: true } |     s5:Freed { symidx: temp_67_logic_78, tracked: true } |     s6:Freed { symidx: temp_62_array_ele_78, tracked: true } |     s7:Freed { symidx: temp_69_array_ptr_81, tracked: true } |     s8:Freed { symidx: temp_63_cmp_78, tracked: true } |     s9:Freed { symidx: temp_64_array_ptr_78, tracked: true } | 
              #                          label branch_false_82: 
.branch_false_82:
              #                          new_var temp_83_array_ptr_87:ptr->i32 
              #                          temp_83_array_ptr_87 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy a3 with temp_83_array_ptr_87
    li      a3, 0
              #                    store to temp_75_logic_81 in mem offset legal
    sb      a0,138(sp)
              #                    release a0 with temp_75_logic_81
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_74_cmp_81 in mem offset legal
    sb      a1,139(sp)
              #                    release a1 with temp_74_cmp_81
              #                    occupy a1 with root_66
              #                    load from root_66 in mem


    lw      a1,300(sp)
              #                    store to temp_71_cmp_81 in mem offset legal
    sb      a2,155(sp)
              #                    release a2 with temp_71_cmp_81
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a0, right_child
              #                    occupy reg a0 with *right_child_0
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_84_array_ele_87:i32 
              #                          temp_84_array_ele_87 = load temp_83_array_ptr_87:ptr->i32 
              #                    occupy a3 with temp_83_array_ptr_87
              #                    occupy a0 with temp_84_array_ele_87
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_85_ret_of_find_minimum_87:i32 
              #                          temp_85_ret_of_find_minimum_87 =  Call i32 find_minimum_0(temp_84_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_49_cmp_72 in mem offset legal
    sb      s1,275(sp)
              #                    release s1 with temp_49_cmp_72
              #                    store to temp_66_cmp_78 in mem offset legal
    sb      s2,179(sp)
              #                    release s2 with temp_66_cmp_78
              #                    store to temp_55_array_ele_75 in mem offset legal
    sw      s3,236(sp)
              #                    release s3 with temp_55_array_ele_75
              #                    store to temp_56_cmp_75 in mem offset legal
    sb      s4,235(sp)
              #                    release s4 with temp_56_cmp_75
              #                    store to temp_67_logic_78 in mem offset legal
    sb      s5,178(sp)
              #                    release s5 with temp_67_logic_78
              #                    store to temp_62_array_ele_78 in mem offset legal
    sw      s6,196(sp)
              #                    release s6 with temp_62_array_ele_78
              #                    store to temp_69_array_ptr_81 in mem offset legal
    sd      s7,160(sp)
              #                    release s7 with temp_69_array_ptr_81
              #                    store to temp_63_cmp_78 in mem offset legal
    sb      s8,195(sp)
              #                    release s8 with temp_63_cmp_78
              #                    store to temp_64_array_ptr_78 in mem offset legal
    sd      s9,184(sp)
              #                    release s9 with temp_64_array_ptr_78
              #                    store to temp_70_array_ele_81 in mem offset legal
    sw      s10,156(sp)
              #                    release s10 with temp_70_array_ele_81
              #                    store to temp_72_array_ptr_81 in mem offset legal
    sd      s11,144(sp)
              #                    release s11 with temp_72_array_ptr_81
              #                    store to temp_84_array_ele_87 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_84_array_ele_87
              #                    store to root_66 in mem offset legal
    sw      a1,300(sp)
              #                    release a1 with root_66
              #                    store to temp_83_array_ptr_87 in mem offset legal
    sd      a3,80(sp)
              #                    release a3 with temp_83_array_ptr_87
              #                    store to temp_54_array_ptr_75 in mem offset legal
    sd      a4,240(sp)
              #                    release a4 with temp_54_array_ptr_75
              #                    store to temp_61_array_ptr_78 in mem offset legal
    sd      a5,200(sp)
              #                    release a5 with temp_61_array_ptr_78
              #                    store to temp_65_array_ele_78 in mem offset legal
    sw      a6,180(sp)
              #                    release a6 with temp_65_array_ele_78
              #                    store to temp_48_array_ele_72 in mem offset legal
    sw      a7,276(sp)
              #                    release a7 with temp_48_array_ele_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_84_array_ele_87_0
              #                    load from temp_84_array_ele_87 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    find_minimum
              #                    store to temp_85_ret_of_find_minimum_87 in mem offset legal
    sw      a0,72(sp)
              #                          tmp_87 = i32 temp_85_ret_of_find_minimum_87 
              #                    occupy a0 with temp_85_ret_of_find_minimum_87
              #                    occupy a1 with tmp_87
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_86_index_ptr_87:ptr->i32 
              #                          temp_86_index_ptr_87 = getelementptr *value_0:ptr->i32 [Some(root_66)] 
              #                    occupy a2 with temp_86_index_ptr_87
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with root_66
              #                    load from root_66 in mem


    lw      a4,300(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *value_0
              #                       load label value as ptr to reg
    la      a6, value
              #                    occupy reg a6 with *value_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_87_array_ptr_87:ptr->i32 
              #                          temp_87_array_ptr_87 = getelementptr *value_0:ptr->i32 [Some(tmp_87)] 
              #                    occupy a7 with temp_87_array_ptr_87
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with tmp_87
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a3,a1
              #                    free a3
              #                    free a1
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with *value_0
              #                       load label value as ptr to reg
    la      s2, value
              #                    occupy reg s2 with *value_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          new_var temp_88_array_ele_87:i32 
              #                          temp_88_array_ele_87 = load temp_87_array_ptr_87:ptr->i32 
              #                    occupy a7 with temp_87_array_ptr_87
              #                    occupy s3 with temp_88_array_ele_87
    lw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          store temp_88_array_ele_87:i32 temp_86_index_ptr_87:ptr->i32 
              #                    occupy a2 with temp_86_index_ptr_87
              #                    occupy s3 with temp_88_array_ele_87
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                          mu *value_0:390 
              #                          *value_0 = chi *value_0:390 
              #                          new_var temp_89_index_ptr_87:ptr->i32 
              #                          temp_89_index_ptr_87 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s4 with temp_89_index_ptr_87
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a4 with root_66
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a3,a4
              #                    free a3
              #                    free a4
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s6, right_child
              #                    occupy reg s6 with *right_child_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          new_var temp_90_array_ptr_87:ptr->i32 
              #                          temp_90_array_ptr_87 = getelementptr *right_child_0:ptr->i32 [Some(root_66)] 
              #                    occupy s7 with temp_90_array_ptr_87
    li      s7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a4 with root_66
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a3,a4
              #                    free a3
              #                    free a4
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s9 with *right_child_0
              #                       load label right_child as ptr to reg
    la      s9, right_child
              #                    occupy reg s9 with *right_child_0
    add     s7,s7,s9
              #                    free s9
              #                    free s7
              #                          new_var temp_91_array_ele_87:i32 
              #                          temp_91_array_ele_87 = load temp_90_array_ptr_87:ptr->i32 
              #                    occupy s7 with temp_90_array_ptr_87
              #                    occupy s10 with temp_91_array_ele_87
    lw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          new_var temp_92_array_ptr_87:ptr->i32 
              #                          temp_92_array_ptr_87 = getelementptr *value_0:ptr->i32 [Some(tmp_87)] 
              #                    occupy s11 with temp_92_array_ptr_87
    li      s11, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with tmp_87
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a1
              #                    free a3
              #                    free a1
    add     s11,s11,a5
              #                    free a5
    slli s11,s11,2
              #                    occupy a3 with *value_0
              #                       load label value as ptr to reg
    la      a3, value
              #                    occupy reg a3 with *value_0
    add     s11,s11,a3
              #                    free a3
              #                    free s11
              #                          new_var temp_93_array_ele_87:i32 
              #                          temp_93_array_ele_87 = load temp_92_array_ptr_87:ptr->i32 
              #                    occupy s11 with temp_92_array_ptr_87
              #                    occupy a3 with temp_93_array_ele_87
    lw      a3,0(s11)
              #                    free a3
              #                    free s11
              #                          new_var temp_94_ret_of_delete_87:i32 
              #                          temp_94_ret_of_delete_87 =  Call i32 delete_0(temp_91_array_ele_87, temp_93_array_ele_87) 
              #                    saved register dumping to mem
              #                    store to temp_88_array_ele_87 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_88_array_ele_87
              #                    store to temp_89_index_ptr_87 in mem offset legal
    sd      s4,32(sp)
              #                    release s4 with temp_89_index_ptr_87
              #                    store to temp_90_array_ptr_87 in mem offset legal
    sd      s7,24(sp)
              #                    release s7 with temp_90_array_ptr_87
              #                    store to temp_91_array_ele_87 in mem offset legal
    sw      s10,20(sp)
              #                    release s10 with temp_91_array_ele_87
              #                    store to temp_92_array_ptr_87 in mem offset legal
    sd      s11,8(sp)
              #                    release s11 with temp_92_array_ptr_87
              #                    store to temp_85_ret_of_find_minimum_87 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_85_ret_of_find_minimum_87
              #                    store to tmp_87 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with tmp_87
              #                    store to temp_86_index_ptr_87 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_86_index_ptr_87
              #                    store to temp_93_array_ele_87 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_93_array_ele_87
              #                    store to root_66 in mem offset legal
    sw      a4,300(sp)
              #                    release a4 with root_66
              #                    store to temp_87_array_ptr_87 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_87_array_ptr_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_array_ele_87_0
              #                    load from temp_91_array_ele_87 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_temp_93_array_ele_87_0
              #                    load from temp_93_array_ele_87 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_94_ret_of_delete_87 in mem offset legal
    sw      a0,0(sp)
              #                          store temp_94_ret_of_delete_87:i32 temp_89_index_ptr_87:ptr->i32 
              #                    occupy a1 with temp_89_index_ptr_87
              #                    load from temp_89_index_ptr_87 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_94_ret_of_delete_87
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *right_child_0:411 
              #                          *right_child_0 = chi *right_child_0:411 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: temp_94_ret_of_delete_87, tracked: true } |     a1:Freed { symidx: temp_89_index_ptr_87, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: temp_94_ret_of_delete_87, tracked: true } |     a1:Freed { symidx: temp_89_index_ptr_87, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a0:Freed { symidx: temp_60_ret_of_delete_75, tracked: true } |     a1:Freed { symidx: temp_57_index_ptr_75, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_delete_72, tracked: true } |     a1:Freed { symidx: temp_50_index_ptr_72, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_delete_72, tracked: true } |     a1:Freed { symidx: temp_50_index_ptr_72, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          ret root_66 
              #                    load from ra_delete_0 in mem
    ld      ra,312(sp)
              #                    load from s0_delete_0 in mem
    ld      s0,304(sp)
              #                    store to temp_53_ret_of_delete_72 in mem offset legal
    sw      a0,248(sp)
              #                    release a0 with temp_53_ret_of_delete_72
              #                    occupy a0 with root_66
              #                    load from root_66 in mem


    lw      a0,300(sp)
    addi    sp,sp,320
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_50_index_ptr_72, tracked: true } | 
              #                    regtab 
              #                          Define inorder_0 [root_92] -> inorder_ret_0 
    .globl inorder
    .type inorder,@function
inorder:
              #                    mem layout:|ra_inorder:8 at 64|s0_inorder:8 at 56|root:4 at 52|temp_95_cmp:1 at 51|none:3 at 48|temp_96_array_ptr:8 at 40|temp_97_array_ele:4 at 36|none:4 at 32|temp_98_array_ptr:8 at 24|temp_99_array_ele:4 at 20|none:4 at 16|temp_100_array_ptr:8 at 8|temp_101_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_inorder_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_inorder_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i1 temp_95_cmp_95 
              #                          alloc ptr->i32 temp_96_array_ptr_97 
              #                          alloc i32 temp_97_array_ele_97 
              #                          alloc ptr->i32 temp_98_array_ptr_97 
              #                          alloc i32 temp_99_array_ele_97 
              #                          alloc ptr->i32 temp_100_array_ptr_97 
              #                          alloc i32 temp_101_array_ele_97 
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_95_cmp_95:i1 
              #                          temp_95_cmp_95 = icmp i32 Ne root_92, -1_0 
              #                    occupy a0 with root_92
              #                    occupy a1 with -1_0
    li      a1, -1
              #                    occupy a2 with temp_95_cmp_95
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_95_cmp_95, label branch_true_96, label branch_false_96 
              #                    occupy a2 with temp_95_cmp_95
              #                    free a2
              #                    occupy a2 with temp_95_cmp_95
    bnez    a2, .branch_true_96
              #                    free a2
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_95_cmp_95, tracked: true } | 
              #                          label branch_true_96: 
.branch_true_96:
              #                          new_var temp_96_array_ptr_97:ptr->i32 
              #                          temp_96_array_ptr_97 = getelementptr *left_child_0:ptr->i32 [Some(root_92)] 
              #                    occupy a1 with temp_96_array_ptr_97
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with root_92
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *left_child_0
              #                       load label left_child as ptr to reg
    la      a5, left_child
              #                    occupy reg a5 with *left_child_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          new_var temp_97_array_ele_97:i32 
              #                          temp_97_array_ele_97 = load temp_96_array_ptr_97:ptr->i32 
              #                    occupy a1 with temp_96_array_ptr_97
              #                    occupy a6 with temp_97_array_ele_97
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                           Call void inorder_0(temp_97_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to root_92 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with root_92
              #                    store to temp_96_array_ptr_97 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_96_array_ptr_97
              #                    store to temp_95_cmp_95 in mem offset legal
    sb      a2,51(sp)
              #                    release a2 with temp_95_cmp_95
              #                    store to temp_97_array_ele_97 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_97_array_ele_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_97_array_ele_97_0
              #                    load from temp_97_array_ele_97 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    inorder
              #                          new_var temp_98_array_ptr_97:ptr->i32 
              #                          temp_98_array_ptr_97 = getelementptr *value_0:ptr->i32 [Some(root_92)] 
              #                    occupy a0 with temp_98_array_ptr_97
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with root_92
              #                    load from root_92 in mem


    lw      a2,52(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *value_0
              #                       load label value as ptr to reg
    la      a4, value
              #                    occupy reg a4 with *value_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_99_array_ele_97:i32 
              #                          temp_99_array_ele_97 = load temp_98_array_ptr_97:ptr->i32 
              #                    occupy a0 with temp_98_array_ptr_97
              #                    occupy a5 with temp_99_array_ele_97
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void putint_0(temp_99_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to temp_98_array_ptr_97 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_98_array_ptr_97
              #                    store to root_92 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with root_92
              #                    store to temp_99_array_ele_97 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_99_array_ele_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_99_array_ele_97_0
              #                    load from temp_99_array_ele_97 in mem


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
              #                          new_var temp_100_array_ptr_97:ptr->i32 
              #                          temp_100_array_ptr_97 = getelementptr *right_child_0:ptr->i32 [Some(root_92)] 
              #                    occupy a0 with temp_100_array_ptr_97
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with root_92
              #                    load from root_92 in mem


    lw      a2,52(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *right_child_0
              #                       load label right_child as ptr to reg
    la      a4, right_child
              #                    occupy reg a4 with *right_child_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                          new_var temp_101_array_ele_97:i32 
              #                          temp_101_array_ele_97 = load temp_100_array_ptr_97:ptr->i32 
              #                    occupy a0 with temp_100_array_ptr_97
              #                    occupy a5 with temp_101_array_ele_97
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void inorder_0(temp_101_array_ele_97) 
              #                    saved register dumping to mem
              #                    store to temp_100_array_ptr_97 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_100_array_ptr_97
              #                    store to root_92 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with root_92
              #                    store to temp_101_array_ele_97 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_101_array_ele_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_101_array_ele_97_0
              #                    load from temp_101_array_ele_97 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    inorder
              #                          jump label: branch_false_96 
              #                    occupy a0 with _anonymous_of_root_92_0
              #                    load from root_92 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_temp_95_cmp_95_0
              #                    load from temp_95_cmp_95 in mem
    lb      a2,51(sp)
    j       .branch_false_96
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_95_cmp_95, tracked: true } | 
              #                          label branch_false_96: 
.branch_false_96:
              #                    regtab     a0:Freed { symidx: root_92, tracked: true } |     a2:Freed { symidx: temp_95_cmp_95, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 72|s0_main:8 at 64|temp_102_ret_of_getint:4 at 60|n:4 at 56|temp_103_booltrans:1 at 55|temp_104_logicnot:1 at 54|none:2 at 52|temp_105_ret_of_getint:4 at 48|temp_106_ret_of_new_node:4 at 44|root:4 at 40|i:4 at 36|temp_107_cmp:1 at 35|none:3 at 32|temp_108_ret_of_getint:4 at 28|temp_109_ret_of_insert:4 at 24|temp_110_arithop:4 at 20|temp_111_ret_of_getint:4 at 16|temp_112_cmp:1 at 15|none:3 at 12|temp_113_ret_of_getint:4 at 8|temp_114_ret_of_delete:4 at 4|temp_115_arithop:4 at 0
    addi    sp,sp,-80
              #                    store to ra_main_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc i32 temp_102_ret_of_getint_103 
              #                          alloc i32 n_103 
              #                          alloc i1 temp_103_booltrans_106 
              #                          alloc i1 temp_104_logicnot_106 
              #                          alloc i32 temp_105_ret_of_getint_103 
              #                          alloc i32 temp_106_ret_of_new_node_103 
              #                          alloc i32 root_103 
              #                          alloc i32 i_103 
              #                          alloc i1 temp_107_cmp_110 
              #                          alloc i32 temp_108_ret_of_getint_112 
              #                          alloc i32 temp_109_ret_of_insert_112 
              #                          alloc i32 temp_110_arithop_112 
              #                          alloc i32 temp_111_ret_of_getint_103 
              #                          alloc i1 temp_112_cmp_119 
              #                          alloc i32 temp_113_ret_of_getint_121 
              #                          alloc i32 temp_114_ret_of_delete_121 
              #                          alloc i32 temp_115_arithop_121 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 0_0:i32 *now_0:ptr->i32 
              #                    occupy a0 with *now_0
              #                       load label now as ptr to reg
    la      a0, now
              #                    occupy reg a0 with *now_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_102_ret_of_getint_103:i32 
              #                          temp_102_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_102_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                          n_103 = i32 temp_102_ret_of_getint_103 
              #                    occupy a0 with temp_102_ret_of_getint_103
              #                    occupy a1 with n_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_102_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_103_booltrans_106:i1 
              #                          temp_103_booltrans_106 = icmp i1 Ne n_103, 0_0 
              #                    occupy a1 with n_103
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_103_booltrans_106
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_104_logicnot_106:i1 
              #                          temp_104_logicnot_106 = xor i1 temp_103_booltrans_106, true 
              #                    occupy a3 with temp_103_booltrans_106
              #                    occupy a4 with temp_104_logicnot_106
    seqz    a4, a3
              #                    free a3
              #                    free a4
              #                          br i1 temp_104_logicnot_106, label branch_true_107, label branch_false_107 
              #                    occupy a4 with temp_104_logicnot_106
              #                    free a4
              #                    occupy a4 with temp_104_logicnot_106
    bnez    a4, .branch_true_107
              #                    free a4
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_102_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_103_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_104_logicnot_106, tracked: true } | 
              #                          label branch_true_107: 
.branch_true_107:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    store to temp_102_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_102_ret_of_getint_103
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_102_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_103_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_104_logicnot_106, tracked: true } | 
              #                          label branch_false_107: 
.branch_false_107:
              #                    regtab     a0:Freed { symidx: temp_102_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a3:Freed { symidx: temp_103_booltrans_106, tracked: true } |     a4:Freed { symidx: temp_104_logicnot_106, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_105_ret_of_getint_103:i32 
              #                          temp_105_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_102_ret_of_getint_103 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_102_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to temp_103_booltrans_106 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_103_booltrans_106
              #                    store to temp_104_logicnot_106 in mem offset legal
    sb      a4,54(sp)
              #                    release a4 with temp_104_logicnot_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_105_ret_of_getint_103 in mem offset legal
    sw      a0,48(sp)
              #                          new_var temp_106_ret_of_new_node_103:i32 
              #                          temp_106_ret_of_new_node_103 =  Call i32 new_node_0(temp_105_ret_of_getint_103) 
              #                    saved register dumping to mem
              #                    store to temp_105_ret_of_getint_103 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_105_ret_of_getint_103
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_105_ret_of_getint_103_0
              #                    load from temp_105_ret_of_getint_103 in mem


    lw      a0,48(sp)
              #                    arg load ended


    call    new_node
              #                    store to temp_106_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                          root_103 = i32 temp_106_ret_of_new_node_103 
              #                    occupy a0 with temp_106_ret_of_new_node_103
              #                    occupy a1 with root_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_103 = i32 1_0 
              #                    occupy a2 with i_103
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_111 
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_106_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } | 
              #                          label while.head_111: 
.while.head_111:
              #                          new_var temp_107_cmp_110:i1 
              #                          temp_107_cmp_110 = icmp i32 Slt i_103, n_103 
              #                    occupy a2 with i_103
              #                    occupy a3 with n_103
              #                    load from n_103 in mem


    lw      a3,56(sp)
              #                    occupy a4 with temp_107_cmp_110
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_107_cmp_110, label while.body_111, label while.exit_111 
              #                    occupy a4 with temp_107_cmp_110
              #                    free a4
              #                    occupy a4 with temp_107_cmp_110
    bnez    a4, .while.body_111
              #                    free a4
    j       .while.exit_111
              #                    regtab     a0:Freed { symidx: temp_106_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: n_103, tracked: true } |     a4:Freed { symidx: temp_107_cmp_110, tracked: true } | 
              #                          label while.body_111: 
.while.body_111:
              #                          new_var temp_108_ret_of_getint_112:i32 
              #                          temp_108_ret_of_getint_112 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_106_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_106_ret_of_new_node_103
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to n_103 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with n_103
              #                    store to temp_107_cmp_110 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_107_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_108_ret_of_getint_112 in mem offset legal
    sw      a0,28(sp)
              #                          new_var temp_109_ret_of_insert_112:i32 
              #                          temp_109_ret_of_insert_112 =  Call i32 insert_0(root_103, temp_108_ret_of_getint_112) 
              #                    saved register dumping to mem
              #                    store to temp_108_ret_of_getint_112 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_108_ret_of_getint_112
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_108_ret_of_getint_112_0
              #                    load from temp_108_ret_of_getint_112 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    insert
              #                    store to temp_109_ret_of_insert_112 in mem offset legal
    sw      a0,24(sp)
              #                          new_var temp_110_arithop_112:i32 
              #                          temp_110_arithop_112 = Add i32 i_103, 1_0 
              #                    occupy a1 with i_103
              #                    load from i_103 in mem


    lw      a1,36(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_110_arithop_112
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          i_103 = i32 temp_110_arithop_112 
              #                    occupy a3 with temp_110_arithop_112
              #                    occupy a1 with i_103
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_111 
              #                    store to temp_110_arithop_112 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_110_arithop_112
              #                    store to temp_109_ret_of_insert_112 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_109_ret_of_insert_112
              #                    store to i_103 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_103
              #                    occupy a0 with _anonymous_of_temp_106_ret_of_new_node_103_0
              #                    load from temp_106_ret_of_new_node_103 in mem


    lw      a0,44(sp)
              #                    occupy a1 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a1,40(sp)
              #                    occupy a2 with _anonymous_of_i_103_0
              #                    load from i_103 in mem


    lw      a2,36(sp)
    j       .while.head_111
              #                    regtab     a0:Freed { symidx: temp_106_ret_of_new_node_103, tracked: true } |     a1:Freed { symidx: root_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: n_103, tracked: true } |     a4:Freed { symidx: temp_107_cmp_110, tracked: true } | 
              #                          label while.exit_111: 
.while.exit_111:
              #                           Call void inorder_0(root_103) 
              #                    saved register dumping to mem
              #                    store to temp_106_ret_of_new_node_103 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_106_ret_of_new_node_103
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to n_103 in mem offset legal
    sw      a3,56(sp)
              #                    release a3 with n_103
              #                    store to temp_107_cmp_110 in mem offset legal
    sb      a4,35(sp)
              #                    release a4 with temp_107_cmp_110
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    inorder
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_111_ret_of_getint_103:i32 
              #                          temp_111_ret_of_getint_103 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_111_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                          n_103 = i32 temp_111_ret_of_getint_103 
              #                    occupy a0 with temp_111_ret_of_getint_103
              #                    occupy a1 with n_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_103 = i32 0_0 
              #                    occupy a2 with i_103
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_111_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } | 
              #                          label while.head_120: 
.while.head_120:
              #                          new_var temp_112_cmp_119:i1 
              #                          temp_112_cmp_119 = icmp i32 Slt i_103, n_103 
              #                    occupy a2 with i_103
              #                    occupy a1 with n_103
              #                    occupy a3 with temp_112_cmp_119
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_112_cmp_119, label while.body_120, label while.exit_120 
              #                    occupy a3 with temp_112_cmp_119
              #                    free a3
              #                    occupy a3 with temp_112_cmp_119
    bnez    a3, .while.body_120
              #                    free a3
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: temp_111_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: temp_112_cmp_119, tracked: true } | 
              #                          label while.body_120: 
.while.body_120:
              #                          new_var temp_113_ret_of_getint_121:i32 
              #                          temp_113_ret_of_getint_121 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_111_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_111_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to temp_112_cmp_119 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_112_cmp_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_113_ret_of_getint_121 in mem offset legal
    sw      a0,8(sp)
              #                          new_var temp_114_ret_of_delete_121:i32 
              #                          temp_114_ret_of_delete_121 =  Call i32 delete_0(root_103, temp_113_ret_of_getint_121) 
              #                    saved register dumping to mem
              #                    store to temp_113_ret_of_getint_121 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_113_ret_of_getint_121
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_113_ret_of_getint_121_0
              #                    load from temp_113_ret_of_getint_121 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    delete
              #                    store to temp_114_ret_of_delete_121 in mem offset legal
    sw      a0,4(sp)
              #                          root_103 = i32 temp_114_ret_of_delete_121 
              #                    occupy a0 with temp_114_ret_of_delete_121
              #                    occupy a1 with root_103
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_115_arithop_121:i32 
              #                          temp_115_arithop_121 = Add i32 i_103, 1_0 
              #                    occupy a2 with i_103
              #                    load from i_103 in mem


    lw      a2,36(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_115_arithop_121
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_103 = i32 temp_115_arithop_121 
              #                    occupy a4 with temp_115_arithop_121
              #                    occupy a2 with i_103
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_120 
              #                    store to temp_114_ret_of_delete_121 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_114_ret_of_delete_121
              #                    store to root_103 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with root_103
              #                    store to temp_115_arithop_121 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_115_arithop_121
              #                    occupy a0 with _anonymous_of_temp_111_ret_of_getint_103_0
              #                    load from temp_111_ret_of_getint_103 in mem


    lw      a0,16(sp)
              #                    occupy a1 with _anonymous_of_n_103_0
              #                    load from n_103 in mem


    lw      a1,56(sp)
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: temp_111_ret_of_getint_103, tracked: true } |     a1:Freed { symidx: n_103, tracked: true } |     a2:Freed { symidx: i_103, tracked: true } |     a3:Freed { symidx: temp_112_cmp_119, tracked: true } | 
              #                          label while.exit_120: 
.while.exit_120:
              #                           Call void inorder_0(root_103) 
              #                    saved register dumping to mem
              #                    store to temp_111_ret_of_getint_103 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_111_ret_of_getint_103
              #                    store to n_103 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with n_103
              #                    store to i_103 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with i_103
              #                    store to temp_112_cmp_119 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_112_cmp_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_root_103_0
              #                    load from root_103 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    inorder
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
    ld      ra,72(sp)
              #                    load from s0_main_0 in mem
    ld      s0,64(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl now
              #                          global i32 now_0 
    .type now,@object
now:
    .word 0
    .align 4
    .globl right_child
              #                          global Array:i32:[Some(10000_0)] right_child_0 
    .type right_child,@object
right_child:
    .zero 40000
    .align 4
    .globl left_child
              #                          global Array:i32:[Some(10000_0)] left_child_0 
    .type left_child,@object
left_child:
    .zero 40000
    .align 4
    .globl value
              #                          global Array:i32:[Some(10000_0)] value_0 
    .type value,@object
value:
    .zero 40000
    .align 4
    .globl maxNode
              #                          global i32 maxNode_0 
    .type maxNode,@object
maxNode:
    .word 10000
    .align 4
    .globl LF
              #                          global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
              #                          global i32 space_0 
    .type space,@object
space:
    .word 32
