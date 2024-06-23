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
              #                          Define insertsort_0 [a_17] -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
              #                    mem layout:|ra_insertsort:8 at 128|s0_insertsort:8 at 120|a:8 at 112|i:4 at 108|temp_0_ptr2globl:4 at 104|temp_1_cmp:1 at 103|none:3 at 100|temp:4 at 96|temp_2_array_ptr:8 at 88|temp_3_array_ele:4 at 84|j:4 at 80|temp_4_arithop:4 at 76|none:4 at 72|temp_5_array_ptr:8 at 64|temp_6_array_ele:4 at 60|temp_7_cmp:1 at 59|temp_8_cmp:1 at 58|temp_9_logic:1 at 57|none:1 at 56|temp_10_arithop:4 at 52|none:4 at 48|temp_11_index_ptr:8 at 40|temp_12_array_ptr:8 at 32|temp_13_array_ele:4 at 28|temp_14_arithop:4 at 24|temp_15_arithop:4 at 20|none:4 at 16|temp_16_index_ptr:8 at 8|temp_17_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-136
              #                    store to ra_insertsort_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_insertsort_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                          new_var a_17:ptr->i32 
              #                          alloc i32 i_19 
              #                          alloc i32 temp_0_ptr2globl_22 
              #                          alloc i1 temp_1_cmp_22 
              #                          alloc i32 temp_24 
              #                          alloc ptr->i32 temp_2_array_ptr_24 
              #                          alloc i32 temp_3_array_ele_24 
              #                          alloc i32 j_24 
              #                          alloc i32 temp_4_arithop_24 
              #                          alloc ptr->i32 temp_5_array_ptr_29 
              #                          alloc i32 temp_6_array_ele_29 
              #                          alloc i1 temp_7_cmp_29 
              #                          alloc i1 temp_8_cmp_29 
              #                          alloc i1 temp_9_logic_29 
              #                          alloc i32 temp_10_arithop_31 
              #                          alloc ptr->i32 temp_11_index_ptr_31 
              #                          alloc ptr->i32 temp_12_array_ptr_31 
              #                          alloc i32 temp_13_array_ele_31 
              #                          alloc i32 temp_14_arithop_31 
              #                          alloc i32 temp_15_arithop_24 
              #                          alloc ptr->i32 temp_16_index_ptr_24 
              #                          alloc i32 temp_17_arithop_24 
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var i_19:i32 
              #                          i_19 = i32 1_0 
              #                    occupy a1 with i_19
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_ptr2globl_22:i32 
              #                          temp_0_ptr2globl_22 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_0_ptr2globl_22
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_1_cmp_22:i1 
              #                          temp_1_cmp_22 = icmp i32 Slt i_19, temp_0_ptr2globl_22 
              #                    occupy a1 with i_19
              #                    occupy a3 with temp_0_ptr2globl_22
              #                    occupy a4 with temp_1_cmp_22
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_1_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a4 with temp_1_cmp_22
              #                    free a4
              #                    occupy a4 with temp_1_cmp_22
    bnez    a4, .while.body_23
              #                    free a4
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_24:i32 
              #                          new_var temp_2_array_ptr_24:ptr->i32 
              #                          temp_2_array_ptr_24 = getelementptr a_17:ptr->i32 [Some(i_19)] 
              #                    occupy a2 with temp_2_array_ptr_24
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_19
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a0 with a_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_3_array_ele_24:i32 
              #                          temp_3_array_ele_24 = load temp_2_array_ptr_24:ptr->i32 
              #                    occupy a2 with temp_2_array_ptr_24
              #                    occupy a7 with temp_3_array_ele_24
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          temp_24 = i32 temp_3_array_ele_24 
              #                    occupy a7 with temp_3_array_ele_24
              #                    occupy s1 with temp_24
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var j_24:i32 
              #                          new_var temp_4_arithop_24:i32 
              #                          temp_4_arithop_24 = Sub i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_4_arithop_24
              #                    regtab:    a0:Freed { symidx: a_17, tracked: true } |     a1:Occupied { symidx: i_19, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_2_array_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Freed { symidx: temp_3_array_ele_24, tracked: true } |     s1:Freed { symidx: temp_24, tracked: true } |     s2:Occupied { symidx: temp_4_arithop_24, tracked: true, occupy_count: 1 } | 


    sub     s2,a1,a5
              #                    free a1
              #                    free a5
              #                    free s2
              #                          j_24 = i32 temp_4_arithop_24 
              #                    occupy s2 with temp_4_arithop_24
              #                    occupy s3 with j_24
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_2_array_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } |     a7:Freed { symidx: temp_3_array_ele_24, tracked: true } |     s1:Freed { symidx: temp_24, tracked: true } |     s2:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: j_24, tracked: true } | 
              #                          label while.head_30: 
.while.head_30:
              #                          new_var temp_5_array_ptr_29:ptr->i32 
              #                          temp_5_array_ptr_29 = getelementptr a_17:ptr->i32 [Some(j_24)] 
              #                    occupy a5 with temp_5_array_ptr_29
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s3 with j_24
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a6,s3
              #                    free a6
              #                    free s3
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy a0 with a_17
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          new_var temp_6_array_ele_29:i32 
              #                          temp_6_array_ele_29 = load temp_5_array_ptr_29:ptr->i32 
              #                    occupy a5 with temp_5_array_ptr_29
              #                    occupy s5 with temp_6_array_ele_29
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          new_var temp_7_cmp_29:i1 
              #                          temp_7_cmp_29 = icmp i32 Slt temp_24, temp_6_array_ele_29 
              #                    occupy s1 with temp_24
              #                    occupy s5 with temp_6_array_ele_29
              #                    occupy s6 with temp_7_cmp_29
    slt     s6,s1,s5
              #                    free s1
              #                    free s5
              #                    free s6
              #                          new_var temp_8_cmp_29:i1 
              #                          temp_8_cmp_29 = icmp i32 Sgt j_24, -1_0 
              #                    occupy s3 with j_24
              #                    occupy s7 with -1_0
    li      s7, -1
              #                    occupy s8 with temp_8_cmp_29
    slt     s8,s7,s3
              #                    free s3
              #                    free s7
              #                    free s8
              #                          new_var temp_9_logic_29:i1 
              #                          temp_9_logic_29 = And i1 temp_8_cmp_29, temp_7_cmp_29 
              #                    occupy s8 with temp_8_cmp_29
              #                    occupy s6 with temp_7_cmp_29
              #                    occupy s9 with temp_9_logic_29
    and     s9,s8,s6
              #                    free s8
              #                    free s6
              #                    free s9
              #                          br i1 temp_9_logic_29, label while.body_30, label while.exit_30 
              #                    occupy s9 with temp_9_logic_29
              #                    free s9
              #                    occupy s9 with temp_9_logic_29
    bnez    s9, .while.body_30
              #                    free s9
    j       .while.exit_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_2_array_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } |     a5:Freed { symidx: temp_5_array_ptr_29, tracked: true } |     a7:Freed { symidx: temp_3_array_ele_24, tracked: true } |     s1:Freed { symidx: temp_24, tracked: true } |     s2:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: j_24, tracked: true } |     s5:Freed { symidx: temp_6_array_ele_29, tracked: true } |     s6:Freed { symidx: temp_7_cmp_29, tracked: true } |     s8:Freed { symidx: temp_8_cmp_29, tracked: true } |     s9:Freed { symidx: temp_9_logic_29, tracked: true } | 
              #                          label while.body_30: 
.while.body_30:
              #                          new_var temp_10_arithop_31:i32 
              #                          temp_10_arithop_31 = Add i32 j_24, 1_0 
              #                    occupy s3 with j_24
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s4 with temp_10_arithop_31
    add     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          new_var temp_11_index_ptr_31:ptr->i32 
              #                          temp_11_index_ptr_31 = getelementptr a_17:ptr->i32 [Some(temp_10_arithop_31)] 
              #                    occupy s7 with temp_11_index_ptr_31
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_10_arithop_31
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a6,s4
              #                    free a6
              #                    free s4
    add     s7,s7,s10
              #                    free s10
    slli s7,s7,2
              #                    occupy a0 with a_17
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_12_array_ptr_31:ptr->i32 
              #                          temp_12_array_ptr_31 = getelementptr a_17:ptr->i32 [Some(j_24)] 
              #                    occupy s11 with temp_12_array_ptr_31
    li      s11, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s3 with j_24
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a6,s3
              #                    free a6
              #                    free s3
    add     s11,s11,s10
              #                    free s10
    slli s11,s11,2
              #                    occupy a0 with a_17
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_13_array_ele_31:i32 
              #                          temp_13_array_ele_31 = load temp_12_array_ptr_31:ptr->i32 
              #                    occupy s11 with temp_12_array_ptr_31
              #                    occupy a6 with temp_13_array_ele_31
    lw      a6,0(s11)
              #                    free a6
              #                    free s11
              #                          store temp_13_array_ele_31:i32 temp_11_index_ptr_31:ptr->i32 
              #                    occupy s7 with temp_11_index_ptr_31
              #                    occupy a6 with temp_13_array_ele_31
    sw      a6,0(s7)
              #                    free a6
              #                    free s7
              #                          mu a_17:80 
              #                          a_17 = chi a_17:80 
              #                          new_var temp_14_arithop_31:i32 
              #                          temp_14_arithop_31 = Sub i32 j_24, 1_0 
              #                    occupy s3 with j_24
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to a_17 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_14_arithop_31
              #                    regtab:    a0:Occupied { symidx: temp_14_arithop_31, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_2_array_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } |     a5:Freed { symidx: temp_5_array_ptr_29, tracked: true } |     a6:Freed { symidx: temp_13_array_ele_31, tracked: true } |     a7:Freed { symidx: temp_3_array_ele_24, tracked: true } |     s10:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s11:Freed { symidx: temp_12_array_ptr_31, tracked: true } |     s1:Freed { symidx: temp_24, tracked: true } |     s2:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Occupied { symidx: j_24, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_10_arithop_31, tracked: true } |     s5:Freed { symidx: temp_6_array_ele_29, tracked: true } |     s6:Freed { symidx: temp_7_cmp_29, tracked: true } |     s7:Freed { symidx: temp_11_index_ptr_31, tracked: true } |     s8:Freed { symidx: temp_8_cmp_29, tracked: true } |     s9:Freed { symidx: temp_9_logic_29, tracked: true } | 


    sub     a0,s3,s10
              #                    free s3
              #                    free s10
              #                    free a0
              #                          j_24 = i32 temp_14_arithop_31 
              #                    occupy a0 with temp_14_arithop_31
              #                    occupy s3 with j_24
    mv      s3, a0
              #                    free a0
              #                    free s3
              #                          jump label: while.head_30 
              #                    store to temp_6_array_ele_29 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_6_array_ele_29
              #                    store to temp_14_arithop_31 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_14_arithop_31
              #                    store to temp_11_index_ptr_31 in mem offset legal
    sd      s7,40(sp)
              #                    release s7 with temp_11_index_ptr_31
              #                    store to temp_7_cmp_29 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_7_cmp_29
              #                    store to temp_13_array_ele_31 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_13_array_ele_31
              #                    store to temp_5_array_ptr_29 in mem offset legal
    sd      a5,64(sp)
              #                    release a5 with temp_5_array_ptr_29
              #                    store to temp_8_cmp_29 in mem offset legal
    sb      s8,58(sp)
              #                    release s8 with temp_8_cmp_29
              #                    store to temp_12_array_ptr_31 in mem offset legal
    sd      s11,32(sp)
              #                    release s11 with temp_12_array_ptr_31
              #                    store to temp_10_arithop_31 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_10_arithop_31
              #                    store to temp_9_logic_29 in mem offset legal
    sb      s9,57(sp)
              #                    release s9 with temp_9_logic_29
              #                    occupy a0 with _anonymous_of_a_17_0
              #                    load from a_17 in mem
    ld      a0,112(sp)
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_2_array_ptr_24, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } |     a5:Freed { symidx: temp_5_array_ptr_29, tracked: true } |     a7:Freed { symidx: temp_3_array_ele_24, tracked: true } |     s1:Freed { symidx: temp_24, tracked: true } |     s2:Freed { symidx: temp_4_arithop_24, tracked: true } |     s3:Freed { symidx: j_24, tracked: true } |     s5:Freed { symidx: temp_6_array_ele_29, tracked: true } |     s6:Freed { symidx: temp_7_cmp_29, tracked: true } |     s8:Freed { symidx: temp_8_cmp_29, tracked: true } |     s9:Freed { symidx: temp_9_logic_29, tracked: true } | 
              #                          label while.exit_30: 
.while.exit_30:
              #                          new_var temp_15_arithop_24:i32 
              #                          temp_15_arithop_24 = Add i32 j_24, 1_0 
              #                    occupy s3 with j_24
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s4 with temp_15_arithop_24
    add     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          new_var temp_16_index_ptr_24:ptr->i32 
              #                          temp_16_index_ptr_24 = getelementptr a_17:ptr->i32 [Some(temp_15_arithop_24)] 
              #                    occupy s7 with temp_16_index_ptr_24
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_15_arithop_24
              #                    occupy s10 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s10,a6,s4
              #                    free a6
              #                    free s4
    add     s7,s7,s10
              #                    free s10
    slli s7,s7,2
              #                    occupy a0 with a_17
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          store temp_24:i32 temp_16_index_ptr_24:ptr->i32 
              #                    occupy s7 with temp_16_index_ptr_24
              #                    occupy s1 with temp_24
    sw      s1,0(s7)
              #                    free s1
              #                    free s7
              #                          mu a_17:93 
              #                          a_17 = chi a_17:93 
              #                          new_var temp_17_arithop_24:i32 
              #                          temp_17_arithop_24 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s11 with temp_17_arithop_24
    add     s11,a1,a6
              #                    free a1
              #                    free a6
              #                    free s11
              #                          i_19 = i32 temp_17_arithop_24 
              #                    occupy s11 with temp_17_arithop_24
              #                    occupy a1 with i_19
    mv      a1, s11
              #                    free s11
              #                    free a1
              #                          jump label: while.head_23 
              #                    store to temp_6_array_ele_29 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_6_array_ele_29
              #                    store to temp_24 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with temp_24
              #                    store to temp_16_index_ptr_24 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_16_index_ptr_24
              #                    store to temp_1_cmp_22 in mem offset legal
    sb      a4,103(sp)
              #                    release a4 with temp_1_cmp_22
              #                    store to temp_7_cmp_29 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_7_cmp_29
              #                    store to temp_2_array_ptr_24 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_2_array_ptr_24
              #                    store to temp_0_ptr2globl_22 in mem offset legal
    sw      a3,104(sp)
              #                    release a3 with temp_0_ptr2globl_22
              #                    store to temp_5_array_ptr_29 in mem offset legal
    sd      a5,64(sp)
              #                    release a5 with temp_5_array_ptr_29
              #                    store to temp_8_cmp_29 in mem offset legal
    sb      s8,58(sp)
              #                    release s8 with temp_8_cmp_29
              #                    store to temp_3_array_ele_24 in mem offset legal
    sw      a7,84(sp)
              #                    release a7 with temp_3_array_ele_24
              #                    store to temp_17_arithop_24 in mem offset legal
    sw      s11,4(sp)
              #                    release s11 with temp_17_arithop_24
              #                    store to j_24 in mem offset legal
    sw      s3,80(sp)
              #                    release s3 with j_24
              #                    store to temp_15_arithop_24 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_15_arithop_24
              #                    store to temp_9_logic_29 in mem offset legal
    sb      s9,57(sp)
              #                    release s9 with temp_9_logic_29
              #                    store to temp_4_arithop_24 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_4_arithop_24
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                          ret 0_0 
              #                    load from ra_insertsort_0 in mem
    ld      ra,128(sp)
              #                    load from s0_insertsort_0 in mem
    ld      s0,120(sp)
              #                    store to a_17 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_22, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 168|s0_main:8 at 160|a:40 at 120|temp_18_index_ptr:8 at 112|temp_19_index_ptr:8 at 104|temp_20_index_ptr:8 at 96|temp_21_index_ptr:8 at 88|temp_22_index_ptr:8 at 80|temp_23_index_ptr:8 at 72|temp_24_index_ptr:8 at 64|temp_25_index_ptr:8 at 56|temp_26_index_ptr:8 at 48|temp_27_index_ptr:8 at 40|i:4 at 36|temp_28_ret_of_insertsort:4 at 32|temp_29_ptr2globl:4 at 28|temp_30_cmp:1 at 27|none:3 at 24|tmp:4 at 20|none:4 at 16|temp_31_array_ptr:8 at 8|temp_32_array_ele:4 at 4|temp_33_arithop:4 at 0
    addi    sp,sp,-176
              #                    store to ra_main_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                          alloc Array:i32:[Some(10_0)] a_38 
              #                          alloc ptr->i32 temp_18_index_ptr_38 
              #                          alloc ptr->i32 temp_19_index_ptr_38 
              #                          alloc ptr->i32 temp_20_index_ptr_38 
              #                          alloc ptr->i32 temp_21_index_ptr_38 
              #                          alloc ptr->i32 temp_22_index_ptr_38 
              #                          alloc ptr->i32 temp_23_index_ptr_38 
              #                          alloc ptr->i32 temp_24_index_ptr_38 
              #                          alloc ptr->i32 temp_25_index_ptr_38 
              #                          alloc ptr->i32 temp_26_index_ptr_38 
              #                          alloc ptr->i32 temp_27_index_ptr_38 
              #                          alloc i32 i_38 
              #                          alloc i32 temp_28_ret_of_insertsort_38 
              #                          alloc i32 temp_29_ptr2globl_53 
              #                          alloc i1 temp_30_cmp_53 
              #                          alloc i32 tmp_55 
              #                          alloc ptr->i32 temp_31_array_ptr_55 
              #                          alloc i32 temp_32_array_ele_55 
              #                          alloc i32 temp_33_arithop_55 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var a_38:Array:i32:[Some(10_0)] 
              #                          new_var temp_18_index_ptr_38:ptr->i32 
              #                          temp_18_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_18_index_ptr_38
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
    addi    a2,a2,120
              #                    free a2
              #                          store 4_0:i32 temp_18_index_ptr_38:ptr->i32 
              #                    occupy a2 with temp_18_index_ptr_38
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_38:108 
              #                          a_38 = chi a_38:108 
              #                          new_var temp_19_index_ptr_38:ptr->i32 
              #                          temp_19_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_19_index_ptr_38
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,120
              #                    free a7
              #                          store 3_0:i32 temp_19_index_ptr_38:ptr->i32 
              #                    occupy a7 with temp_19_index_ptr_38
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_38:114 
              #                          a_38 = chi a_38:114 
              #                          new_var temp_20_index_ptr_38:ptr->i32 
              #                          temp_20_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_20_index_ptr_38
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,a3,s5
              #                    free a3
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,120
              #                    free s4
              #                          store 9_0:i32 temp_20_index_ptr_38:ptr->i32 
              #                    occupy s4 with temp_20_index_ptr_38
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_38:120 
              #                          a_38 = chi a_38:120 
              #                          new_var temp_21_index_ptr_38:ptr->i32 
              #                          temp_21_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_21_index_ptr_38
    li      s8, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy s9 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s9,a3,s3
              #                    free a3
              #                    free s3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,120
              #                    free s8
              #                          store 2_0:i32 temp_21_index_ptr_38:ptr->i32 
              #                    occupy s8 with temp_21_index_ptr_38
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_38:126 
              #                          a_38 = chi a_38:126 
              #                          new_var temp_22_index_ptr_38:ptr->i32 
              #                          temp_22_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_22_index_ptr_38
    li      s10, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    found literal reg Some(a6) already exist with 4_0
              #                    occupy a6 with 4_0
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a3,a6
              #                    free a3
              #                    free a6
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,120
              #                    free s10
              #                          store 0_0:i32 temp_22_index_ptr_38:ptr->i32 
              #                    occupy s10 with temp_22_index_ptr_38
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_38:132 
              #                          a_38 = chi a_38:132 
              #                          new_var temp_23_index_ptr_38:ptr->i32 
              #                          temp_23_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_23_index_ptr_38
    li      a0, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,120
              #                    free a0
              #                          store 1_0:i32 temp_23_index_ptr_38:ptr->i32 
              #                    occupy a0 with temp_23_index_ptr_38
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          mu a_38:138 
              #                          a_38 = chi a_38:138 
              #                          new_var temp_24_index_ptr_38:ptr->i32 
              #                          temp_24_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_24_index_ptr_38
    li      a1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a4 with 6_0
    li      a4, 6
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,120
              #                    free a1
              #                          store 6_0:i32 temp_24_index_ptr_38:ptr->i32 
              #                    occupy a1 with temp_24_index_ptr_38
              #                    found literal reg Some(a4) already exist with 6_0
              #                    occupy a4 with 6_0
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          mu a_38:144 
              #                          a_38 = chi a_38:144 
              #                          new_var temp_25_index_ptr_38:ptr->i32 
              #                          temp_25_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_25_index_ptr_38
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,120
              #                    free a3
              #                          store 5_0:i32 temp_25_index_ptr_38:ptr->i32 
              #                    occupy a3 with temp_25_index_ptr_38
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_38:150 
              #                          a_38 = chi a_38:150 
              #                          new_var temp_26_index_ptr_38:ptr->i32 
              #                          temp_26_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_26_index_ptr_38
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with 8_0
    li      a5, 8
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s1,a5
              #                    free s1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,120
              #                    free a4
              #                          store 7_0:i32 temp_26_index_ptr_38:ptr->i32 
              #                    occupy a4 with temp_26_index_ptr_38
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_38:156 
              #                          a_38 = chi a_38:156 
              #                          new_var temp_27_index_ptr_38:ptr->i32 
              #                          temp_27_index_ptr_38 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_27_index_ptr_38
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,s1,s7
              #                    free s1
              #                    free s7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,120
              #                    free a5
              #                          store 8_0:i32 temp_27_index_ptr_38:ptr->i32 
              #                    occupy a5 with temp_27_index_ptr_38
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_38:162 
              #                          a_38 = chi a_38:162 
              #                          new_var i_38:i32 
              #                          new_var temp_28_ret_of_insertsort_38:i32 
              #                          temp_28_ret_of_insertsort_38 =  Call i32 insertsort_0(a_38) 
              #                    saved register dumping to mem
              #                    store to temp_20_index_ptr_38 in mem offset legal
    sd      s4,96(sp)
              #                    release s4 with temp_20_index_ptr_38
              #                    store to temp_21_index_ptr_38 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_21_index_ptr_38
              #                    store to temp_22_index_ptr_38 in mem offset legal
    sd      s10,80(sp)
              #                    release s10 with temp_22_index_ptr_38
              #                    store to temp_23_index_ptr_38 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_23_index_ptr_38
              #                    store to temp_24_index_ptr_38 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_24_index_ptr_38
              #                    store to temp_18_index_ptr_38 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_18_index_ptr_38
              #                    store to temp_25_index_ptr_38 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_25_index_ptr_38
              #                    store to temp_26_index_ptr_38 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_26_index_ptr_38
              #                    store to temp_27_index_ptr_38 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_27_index_ptr_38
              #                    store to temp_19_index_ptr_38 in mem offset legal
    sd      a7,104(sp)
              #                    release a7 with temp_19_index_ptr_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_38_0
              #                    load from a_38 in mem
    lw      a0,120(sp)
              #                    arg load ended


    call    insertsort
              #                    store to temp_28_ret_of_insertsort_38 in mem offset legal
    sw      a0,32(sp)
              #                          i_38 = i32 temp_28_ret_of_insertsort_38 
              #                    occupy a0 with temp_28_ret_of_insertsort_38
              #                    occupy a1 with i_38
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_54 
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_28_ret_of_insertsort_38, tracked: true } |     a1:Freed { symidx: i_38, tracked: true } | 
              #                          label while.head_54: 
.while.head_54:
              #                          new_var temp_29_ptr2globl_53:i32 
              #                          temp_29_ptr2globl_53 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_29_ptr2globl_53
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_30_cmp_53:i1 
              #                          temp_30_cmp_53 = icmp i32 Slt i_38, temp_29_ptr2globl_53 
              #                    occupy a1 with i_38
              #                    occupy a3 with temp_29_ptr2globl_53
              #                    occupy a4 with temp_30_cmp_53
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_30_cmp_53, label while.body_54, label while.exit_54 
              #                    occupy a4 with temp_30_cmp_53
              #                    free a4
              #                    occupy a4 with temp_30_cmp_53
    bnez    a4, .while.body_54
              #                    free a4
    j       .while.exit_54
              #                    regtab     a0:Freed { symidx: temp_28_ret_of_insertsort_38, tracked: true } |     a1:Freed { symidx: i_38, tracked: true } |     a3:Freed { symidx: temp_29_ptr2globl_53, tracked: true } |     a4:Freed { symidx: temp_30_cmp_53, tracked: true } | 
              #                          label while.body_54: 
.while.body_54:
              #                          new_var tmp_55:i32 
              #                          new_var temp_31_array_ptr_55:ptr->i32 
              #                          temp_31_array_ptr_55 = getelementptr a_38:Array:i32:[Some(10_0)] [Some(i_38)] 
              #                    occupy a2 with temp_31_array_ptr_55
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_38
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          new_var temp_32_array_ele_55:i32 
              #                          temp_32_array_ele_55 = load temp_31_array_ptr_55:ptr->i32 
              #                    occupy a2 with temp_31_array_ptr_55
              #                    occupy a7 with temp_32_array_ele_55
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_55 = i32 temp_32_array_ele_55 
              #                    occupy a7 with temp_32_array_ele_55
              #                    occupy s1 with tmp_55
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_55) 
              #                    saved register dumping to mem
              #                    store to tmp_55 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with tmp_55
              #                    store to temp_28_ret_of_insertsort_38 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_28_ret_of_insertsort_38
              #                    store to i_38 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_38
              #                    store to temp_31_array_ptr_55 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_31_array_ptr_55
              #                    store to temp_29_ptr2globl_53 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_29_ptr2globl_53
              #                    store to temp_30_cmp_53 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_30_cmp_53
              #                    store to temp_32_array_ele_55 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_32_array_ele_55
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_55_0
              #                    load from tmp_55 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                          tmp_55 = i32 10_0 
              #                    occupy a0 with tmp_55
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_55) 
              #                    saved register dumping to mem
              #                    store to tmp_55 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with tmp_55
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_55_0
              #                    load from tmp_55 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_33_arithop_55:i32 
              #                          temp_33_arithop_55 = Add i32 i_38, 1_0 
              #                    occupy a0 with i_38
              #                    load from i_38 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_33_arithop_55
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_38 = i32 temp_33_arithop_55 
              #                    occupy a2 with temp_33_arithop_55
              #                    occupy a0 with i_38
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_54 
              #                    store to temp_33_arithop_55 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_33_arithop_55
              #                    store to i_38 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_38
              #                    occupy a1 with _anonymous_of_i_38_0
              #                    load from i_38 in mem


    lw      a1,36(sp)
              #                    occupy a0 with _anonymous_of_temp_28_ret_of_insertsort_38_0
              #                    load from temp_28_ret_of_insertsort_38 in mem


    lw      a0,32(sp)
    j       .while.head_54
              #                    regtab     a0:Freed { symidx: temp_28_ret_of_insertsort_38, tracked: true } |     a1:Freed { symidx: i_38, tracked: true } |     a3:Freed { symidx: temp_29_ptr2globl_53, tracked: true } |     a4:Freed { symidx: temp_30_cmp_53, tracked: true } | 
              #                          label while.exit_54: 
.while.exit_54:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,168(sp)
              #                    load from s0_main_0 in mem
    ld      s0,160(sp)
              #                    store to temp_28_ret_of_insertsort_38 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_28_ret_of_insertsort_38
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_38, tracked: true } |     a3:Freed { symidx: temp_29_ptr2globl_53, tracked: true } |     a4:Freed { symidx: temp_30_cmp_53, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
