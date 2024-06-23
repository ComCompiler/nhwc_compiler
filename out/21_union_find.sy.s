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
              #                          Define find_0 [root_18] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 72|s0_find:8 at 64|root:4 at 60|none:4 at 56|temp_0_array_ptr:8 at 48|temp_1_array_ele:4 at 44|temp_2_cmp:1 at 43|none:3 at 40|temp_3_index_ptr:8 at 32|temp_4_array_ptr:8 at 24|temp_5_array_ele:4 at 20|temp_6_ret_of_find:4 at 16|temp_7_array_ptr:8 at 8|temp_8_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-80
              #                    store to ra_find_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_find_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                          alloc ptr->i32 temp_0_array_ptr_21 
              #                          alloc i32 temp_1_array_ele_21 
              #                          alloc i1 temp_2_cmp_21 
              #                          alloc ptr->i32 temp_3_index_ptr_24 
              #                          alloc ptr->i32 temp_4_array_ptr_24 
              #                          alloc i32 temp_5_array_ele_24 
              #                          alloc i32 temp_6_ret_of_find_24 
              #                          alloc ptr->i32 temp_7_array_ptr_24 
              #                          alloc i32 temp_8_array_ele_24 
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_0_array_ptr_21:ptr->i32 
              #                          temp_0_array_ptr_21 = getelementptr *parent_0:ptr->i32 [Some(root_18)] 
              #                    occupy a1 with temp_0_array_ptr_21
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a0 with root_18
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *parent_0
              #                       load label parent as ptr to reg
    la      a4, parent
              #                    occupy reg a4 with *parent_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          new_var temp_1_array_ele_21:i32 
              #                          temp_1_array_ele_21 = load temp_0_array_ptr_21:ptr->i32 
              #                    occupy a1 with temp_0_array_ptr_21
              #                    occupy a5 with temp_1_array_ele_21
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_2_cmp_21:i1 
              #                          temp_2_cmp_21 = icmp i32 Eq temp_1_array_ele_21, root_18 
              #                    occupy a5 with temp_1_array_ele_21
              #                    occupy a0 with root_18
              #                    occupy a6 with temp_2_cmp_21
    xor     a6,a5,a0
    seqz    a6, a6
              #                    free a5
              #                    free a0
              #                    free a6
              #                          br i1 temp_2_cmp_21, label branch_true_22, label branch_false_22 
              #                    occupy a6 with temp_2_cmp_21
              #                    free a6
              #                    occupy a6 with temp_2_cmp_21
    bnez    a6, .branch_true_22
              #                    free a6
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } |     a1:Freed { symidx: temp_0_array_ptr_21, tracked: true } |     a5:Freed { symidx: temp_1_array_ele_21, tracked: true } |     a6:Freed { symidx: temp_2_cmp_21, tracked: true } | 
              #                          label branch_true_22: 
.branch_true_22:
              #                          ret root_18 
              #                    load from ra_find_0 in mem
    ld      ra,72(sp)
              #                    load from s0_find_0 in mem
    ld      s0,64(sp)
              #                    store to root_18 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with root_18
              #                    occupy a0 with root_18
              #                    load from root_18 in mem


    lw      a0,60(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: root_18, tracked: true } |     a1:Freed { symidx: temp_0_array_ptr_21, tracked: true } |     a5:Freed { symidx: temp_1_array_ele_21, tracked: true } |     a6:Freed { symidx: temp_2_cmp_21, tracked: true } | 
              #                          label branch_false_22: 
.branch_false_22:
              #                          new_var temp_3_index_ptr_24:ptr->i32 
              #                          temp_3_index_ptr_24 = getelementptr *parent_0:ptr->i32 [Some(root_18)] 
              #                    occupy a2 with temp_3_index_ptr_24
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with root_18
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a7 with *parent_0
              #                       load label parent as ptr to reg
    la      a7, parent
              #                    occupy reg a7 with *parent_0
    add     a2,a2,a7
              #                    free a7
              #                    free a2
              #                          new_var temp_4_array_ptr_24:ptr->i32 
              #                          temp_4_array_ptr_24 = getelementptr *parent_0:ptr->i32 [Some(root_18)] 
              #                    occupy s1 with temp_4_array_ptr_24
    li      s1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a0 with root_18
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,a0
              #                    free a3
              #                    free a0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy s3 with *parent_0
              #                       load label parent as ptr to reg
    la      s3, parent
              #                    occupy reg s3 with *parent_0
    add     s1,s1,s3
              #                    free s3
              #                    free s1
              #                          new_var temp_5_array_ele_24:i32 
              #                          temp_5_array_ele_24 = load temp_4_array_ptr_24:ptr->i32 
              #                    occupy s1 with temp_4_array_ptr_24
              #                    occupy s4 with temp_5_array_ele_24
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_6_ret_of_find_24:i32 
              #                          temp_6_ret_of_find_24 =  Call i32 find_0(temp_5_array_ele_24) 
              #                    saved register dumping to mem
              #                    store to temp_4_array_ptr_24 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_4_array_ptr_24
              #                    store to temp_5_array_ele_24 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_5_array_ele_24
              #                    store to root_18 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with root_18
              #                    store to temp_0_array_ptr_21 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_0_array_ptr_21
              #                    store to temp_3_index_ptr_24 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_3_index_ptr_24
              #                    store to temp_1_array_ele_21 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_1_array_ele_21
              #                    store to temp_2_cmp_21 in mem offset legal
    sb      a6,43(sp)
              #                    release a6 with temp_2_cmp_21
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_array_ele_24_0
              #                    load from temp_5_array_ele_24 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                    store to temp_6_ret_of_find_24 in mem offset legal
    sw      a0,16(sp)
              #                          store temp_6_ret_of_find_24:i32 temp_3_index_ptr_24:ptr->i32 
              #                    occupy a1 with temp_3_index_ptr_24
              #                    load from temp_3_index_ptr_24 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_6_ret_of_find_24
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu *parent_0:48 
              #                          *parent_0 = chi *parent_0:48 
              #                          new_var temp_7_array_ptr_24:ptr->i32 
              #                          temp_7_array_ptr_24 = getelementptr *parent_0:ptr->i32 [Some(root_18)] 
              #                    occupy a2 with temp_7_array_ptr_24
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with root_18
              #                    load from root_18 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with *parent_0
              #                       load label parent as ptr to reg
    la      a6, parent
              #                    occupy reg a6 with *parent_0
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_8_array_ele_24:i32 
              #                          temp_8_array_ele_24 = load temp_7_array_ptr_24:ptr->i32 
              #                    occupy a2 with temp_7_array_ptr_24
              #                    occupy a7 with temp_8_array_ele_24
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          ret temp_8_array_ele_24 
              #                    load from ra_find_0 in mem
    ld      ra,72(sp)
              #                    load from s0_find_0 in mem
    ld      s0,64(sp)
              #                    store to temp_8_array_ele_24 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_8_array_ele_24
              #                    store to temp_6_ret_of_find_24 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_6_ret_of_find_24
              #                    occupy a0 with temp_8_array_ele_24
              #                    load from temp_8_array_ele_24 in mem


    lw      a0,4(sp)
    addi    sp,sp,80
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_3_index_ptr_24, tracked: true } |     a2:Freed { symidx: temp_7_array_ptr_24, tracked: true } |     a4:Freed { symidx: root_18, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a1:Freed { symidx: temp_3_index_ptr_24, tracked: true } |     a2:Freed { symidx: temp_7_array_ptr_24, tracked: true } |     a4:Freed { symidx: root_18, tracked: true } | 
              #                    regtab 
              #                          Define merge_0 [p_27, q_27] -> merge_ret_0 
    .globl merge
    .type merge,@function
merge:
              #                    mem layout:|ra_merge:8 at 48|s0_merge:8 at 40|p:4 at 36|q:4 at 32|root_p:4 at 28|root_q:4 at 24|temp_9_ret_of_find:4 at 20|temp_10_ret_of_find:4 at 16|temp_11_cmp:1 at 15|none:7 at 8|temp_12_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_merge_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_merge_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 root_p_29 
              #                          alloc i32 root_q_29 
              #                          alloc i32 temp_9_ret_of_find_29 
              #                          alloc i32 temp_10_ret_of_find_29 
              #                          alloc i1 temp_11_cmp_33 
              #                          alloc ptr->i32 temp_12_index_ptr_35 
              #                    regtab     a0:Freed { symidx: p_27, tracked: true } |     a1:Freed { symidx: q_27, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var root_p_29:i32 
              #                          new_var root_q_29:i32 
              #                          new_var temp_9_ret_of_find_29:i32 
              #                          temp_9_ret_of_find_29 =  Call i32 find_0(p_27) 
              #                    saved register dumping to mem
              #                    store to p_27 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with p_27
              #                    store to q_27 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with q_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_27_0
              #                    load from p_27 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    find
              #                    store to temp_9_ret_of_find_29 in mem offset legal
    sw      a0,20(sp)
              #                          root_p_29 = i32 temp_9_ret_of_find_29 
              #                    occupy a0 with temp_9_ret_of_find_29
              #                    occupy a1 with root_p_29
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_10_ret_of_find_29:i32 
              #                          temp_10_ret_of_find_29 =  Call i32 find_0(q_27) 
              #                    saved register dumping to mem
              #                    store to temp_9_ret_of_find_29 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_9_ret_of_find_29
              #                    store to root_p_29 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with root_p_29
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_q_27_0
              #                    load from q_27 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    find
              #                    store to temp_10_ret_of_find_29 in mem offset legal
    sw      a0,16(sp)
              #                          root_q_29 = i32 temp_10_ret_of_find_29 
              #                    occupy a0 with temp_10_ret_of_find_29
              #                    occupy a1 with root_q_29
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_11_cmp_33:i1 
              #                          temp_11_cmp_33 = icmp i32 Ne root_p_29, root_q_29 
              #                    occupy a2 with root_p_29
              #                    load from root_p_29 in mem


    lw      a2,28(sp)
              #                    occupy a1 with root_q_29
              #                    occupy a3 with temp_11_cmp_33
    xor     a3,a2,a1
    snez    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_11_cmp_33, label branch_true_34, label branch_false_34 
              #                    occupy a3 with temp_11_cmp_33
              #                    free a3
              #                    occupy a3 with temp_11_cmp_33
    bnez    a3, .branch_true_34
              #                    free a3
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label branch_true_34: 
.branch_true_34:
              #                          new_var temp_12_index_ptr_35:ptr->i32 
              #                          temp_12_index_ptr_35 = getelementptr *parent_0:ptr->i32 [Some(root_q_29)] 
              #                    occupy a4 with temp_12_index_ptr_35
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with root_q_29
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *parent_0
              #                       load label parent as ptr to reg
    la      a7, parent
              #                    occupy reg a7 with *parent_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store root_p_29:i32 temp_12_index_ptr_35:ptr->i32 
              #                    occupy a4 with temp_12_index_ptr_35
              #                    occupy a2 with root_p_29
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                          mu *parent_0:80 
              #                          *parent_0 = chi *parent_0:80 
              #                          jump label: branch_false_34 
              #                    store to temp_12_index_ptr_35 in mem offset legal
    sd      a4,0(sp)
              #                    release a4 with temp_12_index_ptr_35
    j       .branch_false_34
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label branch_false_34: 
.branch_false_34:
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          ret 
              #                    load from ra_merge_0 in mem
    ld      ra,48(sp)
              #                    load from s0_merge_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab     a0:Freed { symidx: temp_10_ret_of_find_29, tracked: true } |     a1:Freed { symidx: root_q_29, tracked: true } |     a2:Freed { symidx: root_p_29, tracked: true } |     a3:Freed { symidx: temp_11_cmp_33, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|temp_13_ret_of_getint:4 at 92|n:4 at 88|temp_14_ret_of_getint:4 at 84|m:4 at 80|i:4 at 76|p:4 at 72|q:4 at 68|temp_15_cmp:1 at 67|none:3 at 64|temp_16_index_ptr:8 at 56|temp_17_arithop:4 at 52|temp_18_cmp:1 at 51|none:3 at 48|temp_19_ret_of_getint:4 at 44|temp_20_ret_of_getint:4 at 40|temp_21_arithop:4 at 36|clusters:4 at 32|temp_22_cmp:1 at 31|none:7 at 24|temp_23_array_ptr:8 at 16|temp_24_array_ele:4 at 12|temp_25_cmp:1 at 11|none:3 at 8|temp_26_arithop:4 at 4|temp_27_arithop:4 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                          alloc i32 temp_13_ret_of_getint_39 
              #                          alloc i32 n_39 
              #                          alloc i32 temp_14_ret_of_getint_39 
              #                          alloc i32 m_39 
              #                          alloc i32 i_39 
              #                          alloc i32 p_39 
              #                          alloc i32 q_39 
              #                          alloc i1 temp_15_cmp_43 
              #                          alloc ptr->i32 temp_16_index_ptr_45 
              #                          alloc i32 temp_17_arithop_45 
              #                          alloc i1 temp_18_cmp_49 
              #                          alloc i32 temp_19_ret_of_getint_51 
              #                          alloc i32 temp_20_ret_of_getint_51 
              #                          alloc i32 temp_21_arithop_51 
              #                          alloc i32 clusters_39 
              #                          alloc i1 temp_22_cmp_58 
              #                          alloc ptr->i32 temp_23_array_ptr_61 
              #                          alloc i32 temp_24_array_ele_61 
              #                          alloc i1 temp_25_cmp_61 
              #                          alloc i32 temp_26_arithop_61 
              #                          alloc i32 temp_27_arithop_60 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_13_ret_of_getint_39:i32 
              #                          temp_13_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_13_ret_of_getint_39 in mem offset legal
    sw      a0,92(sp)
              #                          n_39 = i32 temp_13_ret_of_getint_39 
              #                    occupy a0 with temp_13_ret_of_getint_39
              #                    occupy a1 with n_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_14_ret_of_getint_39:i32 
              #                          temp_14_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_13_ret_of_getint_39 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_13_ret_of_getint_39
              #                    store to n_39 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with n_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_14_ret_of_getint_39 in mem offset legal
    sw      a0,84(sp)
              #                          m_39 = i32 temp_14_ret_of_getint_39 
              #                    occupy a0 with temp_14_ret_of_getint_39
              #                    occupy a1 with m_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var i_39:i32 
              #                          new_var p_39:i32 
              #                          new_var q_39:i32 
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } | 
              #                          label while.head_44: 
.while.head_44:
              #                          new_var temp_15_cmp_43:i1 
              #                          temp_15_cmp_43 = icmp i32 Slt i_39, n_39 
              #                    occupy a2 with i_39
              #                    occupy a3 with n_39
              #                    load from n_39 in mem


    lw      a3,88(sp)
              #                    occupy a4 with temp_15_cmp_43
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_15_cmp_43, label while.body_44, label while.exit_44 
              #                    occupy a4 with temp_15_cmp_43
              #                    free a4
              #                    occupy a4 with temp_15_cmp_43
    bnez    a4, .while.body_44
              #                    free a4
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } | 
              #                          label while.body_44: 
.while.body_44:
              #                          new_var temp_16_index_ptr_45:ptr->i32 
              #                          temp_16_index_ptr_45 = getelementptr *parent_0:ptr->i32 [Some(i_39)] 
              #                    occupy a5 with temp_16_index_ptr_45
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_39
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy s1 with *parent_0
              #                       load label parent as ptr to reg
    la      s1, parent
              #                    occupy reg s1 with *parent_0
    add     a5,a5,s1
              #                    free s1
              #                    free a5
              #                          store i_39:i32 temp_16_index_ptr_45:ptr->i32 
              #                    occupy a5 with temp_16_index_ptr_45
              #                    occupy a2 with i_39
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                          mu *parent_0:113 
              #                          *parent_0 = chi *parent_0:113 
              #                          new_var temp_17_arithop_45:i32 
              #                          temp_17_arithop_45 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s2 with temp_17_arithop_45
    add     s2,a2,a6
              #                    free a2
              #                    free a6
              #                    free s2
              #                          i_39 = i32 temp_17_arithop_45 
              #                    occupy s2 with temp_17_arithop_45
              #                    occupy a2 with i_39
    mv      a2, s2
              #                    free s2
              #                    free a2
              #                          jump label: while.head_44 
              #                    store to temp_16_index_ptr_45 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with temp_16_index_ptr_45
              #                    store to n_39 in mem offset legal
    sw      a3,88(sp)
              #                    release a3 with n_39
              #                    store to temp_15_cmp_43 in mem offset legal
    sb      a4,67(sp)
              #                    release a4 with temp_15_cmp_43
              #                    store to temp_17_arithop_45 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_17_arithop_45
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } | 
              #                          label while.exit_44: 
.while.exit_44:
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_18_cmp_49:i1 
              #                          temp_18_cmp_49 = icmp i32 Slt i_39, m_39 
              #                    occupy a2 with i_39
              #                    occupy a1 with m_39
              #                    occupy a5 with temp_18_cmp_49
    slt     a5,a2,a1
              #                    free a2
              #                    free a1
              #                    free a5
              #                          br i1 temp_18_cmp_49, label while.body_50, label while.exit_50 
              #                    occupy a5 with temp_18_cmp_49
              #                    free a5
              #                    occupy a5 with temp_18_cmp_49
    bnez    a5, .while.body_50
              #                    free a5
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_19_ret_of_getint_51:i32 
              #                          temp_19_ret_of_getint_51 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_14_ret_of_getint_39 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_14_ret_of_getint_39
              #                    store to m_39 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with m_39
              #                    store to i_39 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with i_39
              #                    store to n_39 in mem offset legal
    sw      a3,88(sp)
              #                    release a3 with n_39
              #                    store to temp_15_cmp_43 in mem offset legal
    sb      a4,67(sp)
              #                    release a4 with temp_15_cmp_43
              #                    store to temp_18_cmp_49 in mem offset legal
    sb      a5,51(sp)
              #                    release a5 with temp_18_cmp_49
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_19_ret_of_getint_51 in mem offset legal
    sw      a0,44(sp)
              #                          p_39 = i32 temp_19_ret_of_getint_51 
              #                    occupy a0 with temp_19_ret_of_getint_51
              #                    occupy a1 with p_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_20_ret_of_getint_51:i32 
              #                          temp_20_ret_of_getint_51 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_19_ret_of_getint_51 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_19_ret_of_getint_51
              #                    store to p_39 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with p_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_20_ret_of_getint_51 in mem offset legal
    sw      a0,40(sp)
              #                          q_39 = i32 temp_20_ret_of_getint_51 
              #                    occupy a0 with temp_20_ret_of_getint_51
              #                    occupy a1 with q_39
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void merge_0(p_39, q_39) 
              #                    saved register dumping to mem
              #                    store to temp_20_ret_of_getint_51 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_20_ret_of_getint_51
              #                    store to q_39 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with q_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_39_0
              #                    load from p_39 in mem


    lw      a0,72(sp)
              #                    occupy a1 with _anonymous_of_q_39_0
              #                    load from q_39 in mem


    lw      a1,68(sp)
              #                    arg load ended


    call    merge
              #                          new_var temp_21_arithop_51:i32 
              #                          temp_21_arithop_51 = Add i32 i_39, 1_0 
              #                    occupy a0 with i_39
              #                    load from i_39 in mem


    lw      a0,76(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_21_arithop_51
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_39 = i32 temp_21_arithop_51 
              #                    occupy a2 with temp_21_arithop_51
              #                    occupy a0 with i_39
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_50 
              #                    store to temp_21_arithop_51 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_21_arithop_51
              #                    store to i_39 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with i_39
              #                    occupy a1 with _anonymous_of_m_39_0
              #                    load from m_39 in mem


    lw      a1,80(sp)
              #                    occupy a3 with _anonymous_of_n_39_0
              #                    load from n_39 in mem


    lw      a3,88(sp)
              #                    occupy a4 with _anonymous_of_temp_15_cmp_43_0
              #                    load from temp_15_cmp_43 in mem
    lb      a4,67(sp)
              #                    occupy a2 with _anonymous_of_i_39_0
              #                    load from i_39 in mem


    lw      a2,76(sp)
              #                    occupy a0 with _anonymous_of_temp_14_ret_of_getint_39_0
              #                    load from temp_14_ret_of_getint_39 in mem


    lw      a0,84(sp)
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          clusters_39 = i32 0_0 
              #                    occupy a6 with clusters_39
    li      a6, 0
              #                    free a6
              #                          i_39 = i32 0_0 
              #                    occupy a2 with i_39
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } | 
              #                          label while.head_59: 
.while.head_59:
              #                          new_var temp_22_cmp_58:i1 
              #                          temp_22_cmp_58 = icmp i32 Slt i_39, n_39 
              #                    occupy a2 with i_39
              #                    occupy a3 with n_39
              #                    occupy a7 with temp_22_cmp_58
    slt     a7,a2,a3
              #                    free a2
              #                    free a3
              #                    free a7
              #                          br i1 temp_22_cmp_58, label while.body_59, label while.exit_59 
              #                    occupy a7 with temp_22_cmp_58
              #                    free a7
              #                    occupy a7 with temp_22_cmp_58
    bnez    a7, .while.body_59
              #                    free a7
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_22_cmp_58, tracked: true } | 
              #                          label while.body_59: 
.while.body_59:
              #                          new_var temp_23_array_ptr_61:ptr->i32 
              #                          temp_23_array_ptr_61 = getelementptr *parent_0:ptr->i32 [Some(i_39)] 
              #                    occupy s1 with temp_23_array_ptr_61
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a2 with i_39
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,s2,a2
              #                    free s2
              #                    free a2
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy s4 with *parent_0
              #                       load label parent as ptr to reg
    la      s4, parent
              #                    occupy reg s4 with *parent_0
    add     s1,s1,s4
              #                    free s4
              #                    free s1
              #                          new_var temp_24_array_ele_61:i32 
              #                          temp_24_array_ele_61 = load temp_23_array_ptr_61:ptr->i32 
              #                    occupy s1 with temp_23_array_ptr_61
              #                    occupy s5 with temp_24_array_ele_61
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          new_var temp_25_cmp_61:i1 
              #                          temp_25_cmp_61 = icmp i32 Eq temp_24_array_ele_61, i_39 
              #                    occupy s5 with temp_24_array_ele_61
              #                    occupy a2 with i_39
              #                    occupy s6 with temp_25_cmp_61
    xor     s6,s5,a2
    seqz    s6, s6
              #                    free s5
              #                    free a2
              #                    free s6
              #                          br i1 temp_25_cmp_61, label branch_true_62, label branch_false_62 
              #                    occupy s6 with temp_25_cmp_61
              #                    free s6
              #                    occupy s6 with temp_25_cmp_61
    bnez    s6, .branch_true_62
              #                    free s6
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_22_cmp_58, tracked: true } |     s1:Freed { symidx: temp_23_array_ptr_61, tracked: true } |     s5:Freed { symidx: temp_24_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_25_cmp_61, tracked: true } | 
              #                          label branch_true_62: 
.branch_true_62:
              #                          new_var temp_26_arithop_61:i32 
              #                          temp_26_arithop_61 = Add i32 clusters_39, 1_0 
              #                    occupy a6 with clusters_39
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_26_arithop_61
    add     s3,a6,s2
              #                    free a6
              #                    free s2
              #                    free s3
              #                          clusters_39 = i32 temp_26_arithop_61 
              #                    occupy s3 with temp_26_arithop_61
              #                    occupy a6 with clusters_39
    mv      a6, s3
              #                    free s3
              #                    free a6
              #                          jump label: branch_false_62 
              #                    store to temp_26_arithop_61 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_26_arithop_61
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_22_cmp_58, tracked: true } |     s1:Freed { symidx: temp_23_array_ptr_61, tracked: true } |     s5:Freed { symidx: temp_24_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_25_cmp_61, tracked: true } | 
              #                          label branch_false_62: 
.branch_false_62:
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_22_cmp_58, tracked: true } |     s1:Freed { symidx: temp_23_array_ptr_61, tracked: true } |     s5:Freed { symidx: temp_24_array_ele_61, tracked: true } |     s6:Freed { symidx: temp_25_cmp_61, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_27_arithop_60:i32 
              #                          temp_27_arithop_60 = Add i32 i_39, 1_0 
              #                    occupy a2 with i_39
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_27_arithop_60
    add     s3,a2,s2
              #                    free a2
              #                    free s2
              #                    free s3
              #                          i_39 = i32 temp_27_arithop_60 
              #                    occupy s3 with temp_27_arithop_60
              #                    occupy a2 with i_39
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_59 
              #                    store to temp_25_cmp_61 in mem offset legal
    sb      s6,11(sp)
              #                    release s6 with temp_25_cmp_61
              #                    store to temp_24_array_ele_61 in mem offset legal
    sw      s5,12(sp)
              #                    release s5 with temp_24_array_ele_61
              #                    store to temp_23_array_ptr_61 in mem offset legal
    sd      s1,16(sp)
              #                    release s1 with temp_23_array_ptr_61
              #                    store to temp_27_arithop_60 in mem offset legal
    sw      s3,0(sp)
              #                    release s3 with temp_27_arithop_60
              #                    store to temp_22_cmp_58 in mem offset legal
    sb      a7,31(sp)
              #                    release a7 with temp_22_cmp_58
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_getint_39, tracked: true } |     a1:Freed { symidx: m_39, tracked: true } |     a2:Freed { symidx: i_39, tracked: true } |     a3:Freed { symidx: n_39, tracked: true } |     a4:Freed { symidx: temp_15_cmp_43, tracked: true } |     a5:Freed { symidx: temp_18_cmp_49, tracked: true } |     a6:Freed { symidx: clusters_39, tracked: true } |     a7:Freed { symidx: temp_22_cmp_58, tracked: true } | 
              #                          label while.exit_59: 
.while.exit_59:
              #                           Call void putint_0(clusters_39) 
              #                    saved register dumping to mem
              #                    store to temp_14_ret_of_getint_39 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_14_ret_of_getint_39
              #                    store to m_39 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with m_39
              #                    store to i_39 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with i_39
              #                    store to n_39 in mem offset legal
    sw      a3,88(sp)
              #                    release a3 with n_39
              #                    store to temp_15_cmp_43 in mem offset legal
    sb      a4,67(sp)
              #                    release a4 with temp_15_cmp_43
              #                    store to temp_18_cmp_49 in mem offset legal
    sb      a5,51(sp)
              #                    release a5 with temp_18_cmp_49
              #                    store to clusters_39 in mem offset legal
    sw      a6,32(sp)
              #                    release a6 with clusters_39
              #                    store to temp_22_cmp_58 in mem offset legal
    sb      a7,31(sp)
              #                    release a7 with temp_22_cmp_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_clusters_39_0
              #                    load from clusters_39 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl parent
              #                          global Array:i32:[Some(1005_0)] parent_0 
    .type parent,@object
parent:
    .zero 4020
    .align 4
    .globl maxN
              #                          global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 1005
