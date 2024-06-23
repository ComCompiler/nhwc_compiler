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
              #                          Define swap_0 [array_17, i_17, j_17] -> swap_ret_0 
    .globl swap
    .type swap,@function
swap:
              #                    mem layout:|ra_swap:8 at 80|s0_swap:8 at 72|array:8 at 64|i:4 at 60|j:4 at 56|temp:4 at 52|none:4 at 48|temp_0_array_ptr:8 at 40|temp_1_array_ele:4 at 36|none:4 at 32|temp_2_index_ptr:8 at 24|temp_3_array_ptr:8 at 16|temp_4_array_ele:4 at 12|none:4 at 8|temp_5_index_ptr:8 at 0
    addi    sp,sp,-88
              #                    store to ra_swap_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_swap_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          new_var array_17:ptr->i32 
              #                          alloc i32 temp_19 
              #                          alloc ptr->i32 temp_0_array_ptr_19 
              #                          alloc i32 temp_1_array_ele_19 
              #                          alloc ptr->i32 temp_2_index_ptr_19 
              #                          alloc ptr->i32 temp_3_array_ptr_19 
              #                          alloc i32 temp_4_array_ele_19 
              #                          alloc ptr->i32 temp_5_index_ptr_19 
              #                    regtab     a0:Freed { symidx: array_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_17, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_19:i32 
              #                          new_var temp_0_array_ptr_19:ptr->i32 
              #                          temp_0_array_ptr_19 = getelementptr array_17:ptr->i32 [Some(i_17)] 
              #                    occupy a3 with temp_0_array_ptr_19
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with i_17
              #                    occupy a5 with _anonymous_of_array_17_0
    mul     a5,a4,a1
              #                    free a4
              #                    free a1
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
              #                    occupy a0 with array_17
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_1_array_ele_19:i32 
              #                          temp_1_array_ele_19 = load temp_0_array_ptr_19:ptr->i32 
              #                    occupy a3 with temp_0_array_ptr_19
              #                    occupy a6 with temp_1_array_ele_19
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          temp_19 = i32 temp_1_array_ele_19 
              #                    occupy a6 with temp_1_array_ele_19
              #                    occupy a7 with temp_19
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          new_var temp_2_index_ptr_19:ptr->i32 
              #                          temp_2_index_ptr_19 = getelementptr array_17:ptr->i32 [Some(i_17)] 
              #                    occupy s1 with temp_2_index_ptr_19
    li      s1, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a1 with i_17
              #                    occupy s2 with _anonymous_of_array_17_0
    mul     s2,a4,a1
              #                    free a4
              #                    free a1
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with array_17
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          new_var temp_3_array_ptr_19:ptr->i32 
              #                          temp_3_array_ptr_19 = getelementptr array_17:ptr->i32 [Some(j_17)] 
              #                    occupy s3 with temp_3_array_ptr_19
    li      s3, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a2 with j_17
              #                    occupy s4 with _anonymous_of_array_17_0
    mul     s4,a4,a2
              #                    free a4
              #                    free a2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with array_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_4_array_ele_19:i32 
              #                          temp_4_array_ele_19 = load temp_3_array_ptr_19:ptr->i32 
              #                    occupy s3 with temp_3_array_ptr_19
              #                    occupy s5 with temp_4_array_ele_19
    lw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          store temp_4_array_ele_19:i32 temp_2_index_ptr_19:ptr->i32 
              #                    occupy s1 with temp_2_index_ptr_19
              #                    occupy s5 with temp_4_array_ele_19
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          mu array_17:41 
              #                          array_17 = chi array_17:41 
              #                          new_var temp_5_index_ptr_19:ptr->i32 
              #                          temp_5_index_ptr_19 = getelementptr array_17:ptr->i32 [Some(j_17)] 
              #                    occupy s6 with temp_5_index_ptr_19
    li      s6, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a2 with j_17
              #                    occupy s7 with _anonymous_of_array_17_0
    mul     s7,a4,a2
              #                    free a4
              #                    free a2
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a0 with array_17
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          store temp_19:i32 temp_5_index_ptr_19:ptr->i32 
              #                    occupy s6 with temp_5_index_ptr_19
              #                    occupy a7 with temp_19
    sw      a7,0(s6)
              #                    free a7
              #                    free s6
              #                          mu array_17:47 
              #                          array_17 = chi array_17:47 
              #                          ret 0_0 
              #                    load from ra_swap_0 in mem
    ld      ra,80(sp)
              #                    load from s0_swap_0 in mem
    ld      s0,72(sp)
              #                    store to array_17 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with array_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_17, tracked: true } |     a3:Freed { symidx: temp_0_array_ptr_19, tracked: true } |     a6:Freed { symidx: temp_1_array_ele_19, tracked: true } |     a7:Freed { symidx: temp_19, tracked: true } |     s1:Freed { symidx: temp_2_index_ptr_19, tracked: true } |     s3:Freed { symidx: temp_3_array_ptr_19, tracked: true } |     s5:Freed { symidx: temp_4_array_ele_19, tracked: true } |     s6:Freed { symidx: temp_5_index_ptr_19, tracked: true } | 
              #                    regtab 
              #                          Define heap_ajust_0 [arr_25, start_25, end_25] -> heap_ajust_ret_0 
    .globl heap_ajust
    .type heap_ajust,@function
heap_ajust:
              #                    mem layout:|ra_heap_ajust:8 at 144|s0_heap_ajust:8 at 136|arr:8 at 128|start:4 at 124|end:4 at 120|dad:4 at 116|son:4 at 112|temp_6_arithop:4 at 108|temp_7_arithop:4 at 104|temp_8_arithop:4 at 100|temp_9_cmp:1 at 99|none:3 at 96|temp_10_arithop:4 at 92|none:4 at 88|temp_11_array_ptr:8 at 80|temp_12_array_ele:4 at 76|none:4 at 72|temp_13_array_ptr:8 at 64|temp_14_array_ele:4 at 60|temp_15_cmp:1 at 59|temp_16_cmp:1 at 58|temp_17_logic:1 at 57|none:1 at 56|temp_18_arithop:4 at 52|none:4 at 48|temp_19_array_ptr:8 at 40|temp_20_array_ele:4 at 36|none:4 at 32|temp_21_array_ptr:8 at 24|temp_22_array_ele:4 at 20|temp_23_cmp:1 at 19|none:3 at 16|temp_24_ret_of_swap:4 at 12|temp_25_arithop:4 at 8|temp_26_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-152
              #                    store to ra_heap_ajust_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_heap_ajust_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                          new_var arr_25:ptr->i32 
              #                          alloc i32 dad_27 
              #                          alloc i32 son_27 
              #                          alloc i32 temp_6_arithop_27 
              #                          alloc i32 temp_7_arithop_27 
              #                          alloc i32 temp_8_arithop_32 
              #                          alloc i1 temp_9_cmp_32 
              #                          alloc i32 temp_10_arithop_35 
              #                          alloc ptr->i32 temp_11_array_ptr_35 
              #                          alloc i32 temp_12_array_ele_35 
              #                          alloc ptr->i32 temp_13_array_ptr_35 
              #                          alloc i32 temp_14_array_ele_35 
              #                          alloc i1 temp_15_cmp_35 
              #                          alloc i1 temp_16_cmp_35 
              #                          alloc i1 temp_17_logic_35 
              #                          alloc i32 temp_18_arithop_35 
              #                          alloc ptr->i32 temp_19_array_ptr_38 
              #                          alloc i32 temp_20_array_ele_38 
              #                          alloc ptr->i32 temp_21_array_ptr_38 
              #                          alloc i32 temp_22_array_ele_38 
              #                          alloc i1 temp_23_cmp_38 
              #                          alloc i32 temp_24_ret_of_swap_41 
              #                          alloc i32 temp_25_arithop_41 
              #                          alloc i32 temp_26_arithop_41 
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var dad_27:i32 
              #                          dad_27 = i32 start_25 
              #                    occupy a1 with start_25
              #                    occupy a3 with dad_27
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          new_var son_27:i32 
              #                          new_var temp_6_arithop_27:i32 
              #                          temp_6_arithop_27 = Mul i32 dad_27, 2_0 
              #                    occupy a3 with dad_27
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy a5 with temp_6_arithop_27
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          new_var temp_7_arithop_27:i32 
              #                          temp_7_arithop_27 = Add i32 temp_6_arithop_27, 1_0 
              #                    occupy a5 with temp_6_arithop_27
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_7_arithop_27
    add     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          son_27 = i32 temp_7_arithop_27 
              #                    occupy a7 with temp_7_arithop_27
              #                    occupy s1 with son_27
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          jump label: while.head_33 
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } | 
              #                          label while.head_33: 
.while.head_33:
              #                          new_var temp_8_arithop_32:i32 
              #                          temp_8_arithop_32 = Add i32 end_25, 1_0 
              #                    occupy a2 with end_25
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_8_arithop_32
    add     a6,a2,a4
              #                    free a2
              #                    free a4
              #                    free a6
              #                          new_var temp_9_cmp_32:i1 
              #                          temp_9_cmp_32 = icmp i32 Slt son_27, temp_8_arithop_32 
              #                    occupy s1 with son_27
              #                    occupy a6 with temp_8_arithop_32
              #                    occupy s2 with temp_9_cmp_32
    slt     s2,s1,a6
              #                    free s1
              #                    free a6
              #                    free s2
              #                          br i1 temp_9_cmp_32, label while.body_33, label while.exit_33 
              #                    occupy s2 with temp_9_cmp_32
              #                    free s2
              #                    occupy s2 with temp_9_cmp_32
    bnez    s2, .while.body_33
              #                    free s2
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_10_arithop_35:i32 
              #                          temp_10_arithop_35 = Add i32 son_27, 1_0 
              #                    occupy s1 with son_27
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_10_arithop_35
    add     s3,s1,a4
              #                    free s1
              #                    free a4
              #                    free s3
              #                          new_var temp_11_array_ptr_35:ptr->i32 
              #                          temp_11_array_ptr_35 = getelementptr arr_25:ptr->i32 [Some(temp_10_arithop_35)] 
              #                    occupy s4 with temp_11_array_ptr_35
    li      s4, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s3 with temp_10_arithop_35
              #                    occupy s5 with _anonymous_of_arr_25_0
    mul     s5,a4,s3
              #                    free a4
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with arr_25
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_12_array_ele_35:i32 
              #                          temp_12_array_ele_35 = load temp_11_array_ptr_35:ptr->i32 
              #                    occupy s4 with temp_11_array_ptr_35
              #                    occupy s6 with temp_12_array_ele_35
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_13_array_ptr_35:ptr->i32 
              #                          temp_13_array_ptr_35 = getelementptr arr_25:ptr->i32 [Some(son_27)] 
              #                    occupy s7 with temp_13_array_ptr_35
    li      s7, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s1 with son_27
              #                    occupy s8 with _anonymous_of_arr_25_0
    mul     s8,a4,s1
              #                    free a4
              #                    free s1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with arr_25
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_14_array_ele_35:i32 
              #                          temp_14_array_ele_35 = load temp_13_array_ptr_35:ptr->i32 
              #                    occupy s7 with temp_13_array_ptr_35
              #                    occupy s9 with temp_14_array_ele_35
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_15_cmp_35:i1 
              #                          temp_15_cmp_35 = icmp i32 Slt temp_14_array_ele_35, temp_12_array_ele_35 
              #                    occupy s9 with temp_14_array_ele_35
              #                    occupy s6 with temp_12_array_ele_35
              #                    occupy s10 with temp_15_cmp_35
    slt     s10,s9,s6
              #                    free s9
              #                    free s6
              #                    free s10
              #                          new_var temp_16_cmp_35:i1 
              #                          temp_16_cmp_35 = icmp i32 Slt son_27, end_25 
              #                    occupy s1 with son_27
              #                    occupy a2 with end_25
              #                    occupy s11 with temp_16_cmp_35
    slt     s11,s1,a2
              #                    free s1
              #                    free a2
              #                    free s11
              #                          new_var temp_17_logic_35:i1 
              #                          temp_17_logic_35 = And i1 temp_16_cmp_35, temp_15_cmp_35 
              #                    occupy s11 with temp_16_cmp_35
              #                    occupy s10 with temp_15_cmp_35
              #                    occupy a4 with temp_17_logic_35
    and     a4,s11,s10
              #                    free s11
              #                    free s10
              #                    free a4
              #                          br i1 temp_17_logic_35, label branch_true_36, label branch_false_36 
              #                    occupy a4 with temp_17_logic_35
              #                    free a4
              #                    occupy a4 with temp_17_logic_35
    bnez    a4, .branch_true_36
              #                    free a4
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a4:Freed { symidx: temp_17_logic_35, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s10:Freed { symidx: temp_15_cmp_35, tracked: true } |     s11:Freed { symidx: temp_16_cmp_35, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } |     s3:Freed { symidx: temp_10_arithop_35, tracked: true } |     s4:Freed { symidx: temp_11_array_ptr_35, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_35, tracked: true } |     s7:Freed { symidx: temp_13_array_ptr_35, tracked: true } |     s9:Freed { symidx: temp_14_array_ele_35, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_18_arithop_35:i32 
              #                          temp_18_arithop_35 = Add i32 son_27, 1_0 
              #                    occupy s1 with son_27
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s8 with temp_18_arithop_35
    add     s8,s1,s5
              #                    free s1
              #                    free s5
              #                    free s8
              #                          son_27 = i32 temp_18_arithop_35 
              #                    occupy s8 with temp_18_arithop_35
              #                    occupy s1 with son_27
    mv      s1, s8
              #                    free s8
              #                    free s1
              #                          jump label: branch_false_36 
              #                    store to temp_18_arithop_35 in mem offset legal
    sw      s8,52(sp)
              #                    release s8 with temp_18_arithop_35
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a4:Freed { symidx: temp_17_logic_35, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s10:Freed { symidx: temp_15_cmp_35, tracked: true } |     s11:Freed { symidx: temp_16_cmp_35, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } |     s3:Freed { symidx: temp_10_arithop_35, tracked: true } |     s4:Freed { symidx: temp_11_array_ptr_35, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_35, tracked: true } |     s7:Freed { symidx: temp_13_array_ptr_35, tracked: true } |     s9:Freed { symidx: temp_14_array_ele_35, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a4:Freed { symidx: temp_17_logic_35, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s10:Freed { symidx: temp_15_cmp_35, tracked: true } |     s11:Freed { symidx: temp_16_cmp_35, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } |     s3:Freed { symidx: temp_10_arithop_35, tracked: true } |     s4:Freed { symidx: temp_11_array_ptr_35, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_35, tracked: true } |     s7:Freed { symidx: temp_13_array_ptr_35, tracked: true } |     s9:Freed { symidx: temp_14_array_ele_35, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_19_array_ptr_38:ptr->i32 
              #                          temp_19_array_ptr_38 = getelementptr arr_25:ptr->i32 [Some(son_27)] 
              #                    occupy s5 with temp_19_array_ptr_38
    li      s5, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s1 with son_27
              #                    store to arr_25 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with arr_25
              #                    occupy a0 with _anonymous_of_arr_25_0
    mul     a0,s8,s1
              #                    free s8
              #                    free s1
    add     s5,s5,a0
              #                    free a0
    slli s5,s5,2
              #                    occupy a0 with arr_25
              #                    load from arr_25 in mem
    ld      a0,128(sp)
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_20_array_ele_38:i32 
              #                          temp_20_array_ele_38 = load temp_19_array_ptr_38:ptr->i32 
              #                    occupy s5 with temp_19_array_ptr_38
              #                    occupy s8 with temp_20_array_ele_38
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          new_var temp_21_array_ptr_38:ptr->i32 
              #                          temp_21_array_ptr_38 = getelementptr arr_25:ptr->i32 [Some(dad_27)] 
              #                    store to arr_25 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with arr_25
              #                    occupy a0 with temp_21_array_ptr_38
    li      a0, 0
              #                    store to start_25 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with start_25
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with dad_27
              #                    store to end_25 in mem offset legal
    sw      a2,120(sp)
              #                    release a2 with end_25
              #                    occupy a2 with _anonymous_of_arr_25_0
    mul     a2,a1,a3
              #                    free a1
              #                    free a3
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a1 with arr_25
              #                    load from arr_25 in mem
    ld      a1,128(sp)
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_22_array_ele_38:i32 
              #                          temp_22_array_ele_38 = load temp_21_array_ptr_38:ptr->i32 
              #                    occupy a0 with temp_21_array_ptr_38
              #                    occupy a2 with temp_22_array_ele_38
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_23_cmp_38:i1 
              #                          temp_23_cmp_38 = icmp i32 Sgt temp_22_array_ele_38, temp_20_array_ele_38 
              #                    occupy a2 with temp_22_array_ele_38
              #                    occupy s8 with temp_20_array_ele_38
              #                    store to temp_21_array_ptr_38 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_21_array_ptr_38
              #                    occupy a0 with temp_23_cmp_38
    slt     a0,s8,a2
              #                    free a2
              #                    free s8
              #                    free a0
              #                          br i1 temp_23_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy a0 with temp_23_cmp_38
              #                    free a0
              #                    store to temp_22_array_ele_38 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_22_array_ele_38
              #                    occupy a0 with temp_23_cmp_38
    bnez    a0, .branch_true_39
              #                    free a0
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: temp_23_cmp_38, tracked: true } |     a1:Freed { symidx: arr_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a4:Freed { symidx: temp_17_logic_35, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s10:Freed { symidx: temp_15_cmp_35, tracked: true } |     s11:Freed { symidx: temp_16_cmp_35, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } |     s3:Freed { symidx: temp_10_arithop_35, tracked: true } |     s4:Freed { symidx: temp_11_array_ptr_35, tracked: true } |     s5:Freed { symidx: temp_19_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_35, tracked: true } |     s7:Freed { symidx: temp_13_array_ptr_35, tracked: true } |     s8:Freed { symidx: temp_20_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_14_array_ele_35, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          ret 0_0 
              #                    load from ra_heap_ajust_0 in mem
    ld      ra,144(sp)
              #                    load from s0_heap_ajust_0 in mem
    ld      s0,136(sp)
              #                    store to temp_23_cmp_38 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_23_cmp_38
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_23_cmp_38, tracked: true } |     a1:Freed { symidx: arr_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a4:Freed { symidx: temp_17_logic_35, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s10:Freed { symidx: temp_15_cmp_35, tracked: true } |     s11:Freed { symidx: temp_16_cmp_35, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } |     s3:Freed { symidx: temp_10_arithop_35, tracked: true } |     s4:Freed { symidx: temp_11_array_ptr_35, tracked: true } |     s5:Freed { symidx: temp_19_array_ptr_38, tracked: true } |     s6:Freed { symidx: temp_12_array_ele_35, tracked: true } |     s7:Freed { symidx: temp_13_array_ptr_35, tracked: true } |     s8:Freed { symidx: temp_20_array_ele_38, tracked: true } |     s9:Freed { symidx: temp_14_array_ele_35, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          new_var temp_24_ret_of_swap_41:i32 
              #                          temp_24_ret_of_swap_41 =  Call i32 swap_0(arr_25, dad_27, son_27) 
              #                    saved register dumping to mem
              #                    store to son_27 in mem offset legal
    sw      s1,112(sp)
              #                    release s1 with son_27
              #                    store to temp_9_cmp_32 in mem offset legal
    sb      s2,99(sp)
              #                    release s2 with temp_9_cmp_32
              #                    store to temp_10_arithop_35 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with temp_10_arithop_35
              #                    store to temp_11_array_ptr_35 in mem offset legal
    sd      s4,80(sp)
              #                    release s4 with temp_11_array_ptr_35
              #                    store to temp_19_array_ptr_38 in mem offset legal
    sd      s5,40(sp)
              #                    release s5 with temp_19_array_ptr_38
              #                    store to temp_12_array_ele_35 in mem offset legal
    sw      s6,76(sp)
              #                    release s6 with temp_12_array_ele_35
              #                    store to temp_13_array_ptr_35 in mem offset legal
    sd      s7,64(sp)
              #                    release s7 with temp_13_array_ptr_35
              #                    store to temp_20_array_ele_38 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_20_array_ele_38
              #                    store to temp_14_array_ele_35 in mem offset legal
    sw      s9,60(sp)
              #                    release s9 with temp_14_array_ele_35
              #                    store to temp_15_cmp_35 in mem offset legal
    sb      s10,59(sp)
              #                    release s10 with temp_15_cmp_35
              #                    store to temp_16_cmp_35 in mem offset legal
    sb      s11,58(sp)
              #                    release s11 with temp_16_cmp_35
              #                    store to temp_23_cmp_38 in mem offset legal
    sb      a0,19(sp)
              #                    release a0 with temp_23_cmp_38
              #                    store to arr_25 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with arr_25
              #                    store to dad_27 in mem offset legal
    sw      a3,116(sp)
              #                    release a3 with dad_27
              #                    store to temp_17_logic_35 in mem offset legal
    sb      a4,57(sp)
              #                    release a4 with temp_17_logic_35
              #                    store to temp_6_arithop_27 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with temp_6_arithop_27
              #                    store to temp_8_arithop_32 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with temp_8_arithop_32
              #                    store to temp_7_arithop_27 in mem offset legal
    sw      a7,104(sp)
              #                    release a7 with temp_7_arithop_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_25_0
              #                    load from arr_25 in mem
    ld      a0,128(sp)
              #                    occupy a1 with _anonymous_of_dad_27_0
              #                    load from dad_27 in mem


    lw      a1,116(sp)
              #                    occupy a2 with _anonymous_of_son_27_0
              #                    load from son_27 in mem


    lw      a2,112(sp)
              #                    arg load ended


    call    swap
              #                    store to temp_24_ret_of_swap_41 in mem offset legal
    sw      a0,12(sp)
              #                          dad_27 = i32 temp_24_ret_of_swap_41 
              #                    occupy a0 with temp_24_ret_of_swap_41
              #                    occupy a1 with dad_27
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          dad_27 = i32 son_27 
              #                    occupy a2 with son_27
              #                    load from son_27 in mem


    lw      a2,112(sp)
              #                    occupy a1 with dad_27
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_25_arithop_41:i32 
              #                          temp_25_arithop_41 = Mul i32 dad_27, 2_0 
              #                    occupy a1 with dad_27
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_25_arithop_41
    mul     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          new_var temp_26_arithop_41:i32 
              #                          temp_26_arithop_41 = Add i32 temp_25_arithop_41, 1_0 
              #                    occupy a4 with temp_25_arithop_41
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_26_arithop_41
    add     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                          son_27 = i32 temp_26_arithop_41 
              #                    occupy a6 with temp_26_arithop_41
              #                    occupy a2 with son_27
    mv      a2, a6
              #                    free a6
              #                    free a2
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_24_ret_of_swap_41, tracked: true } |     a1:Freed { symidx: dad_27, tracked: true } |     a2:Freed { symidx: son_27, tracked: true } |     a4:Freed { symidx: temp_25_arithop_41, tracked: true } |     a6:Freed { symidx: temp_26_arithop_41, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          jump label: while.head_33 
              #                    store to son_27 in mem offset legal
    sw      a2,112(sp)
              #                    release a2 with son_27
              #                    store to temp_26_arithop_41 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_26_arithop_41
              #                    store to temp_24_ret_of_swap_41 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_24_ret_of_swap_41
              #                    store to dad_27 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with dad_27
              #                    store to temp_25_arithop_41 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_25_arithop_41
              #                    occupy a2 with _anonymous_of_end_25_0
              #                    load from end_25 in mem


    lw      a2,120(sp)
              #                    occupy a5 with _anonymous_of_temp_6_arithop_27_0
              #                    load from temp_6_arithop_27 in mem


    lw      a5,108(sp)
              #                    occupy a7 with _anonymous_of_temp_7_arithop_27_0
              #                    load from temp_7_arithop_27 in mem


    lw      a7,104(sp)
              #                    occupy s1 with _anonymous_of_son_27_0
              #                    load from son_27 in mem


    lw      s1,112(sp)
              #                    occupy a0 with _anonymous_of_arr_25_0
              #                    load from arr_25 in mem
    ld      a0,128(sp)
              #                    occupy a3 with _anonymous_of_dad_27_0
              #                    load from dad_27 in mem


    lw      a3,116(sp)
              #                    occupy a1 with _anonymous_of_start_25_0
              #                    load from start_25 in mem


    lw      a1,124(sp)
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: arr_25, tracked: true } |     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          ret 0_0 
              #                    load from ra_heap_ajust_0 in mem
    ld      ra,144(sp)
              #                    load from s0_heap_ajust_0 in mem
    ld      s0,136(sp)
              #                    store to arr_25 in mem offset legal
    sd      a0,128(sp)
              #                    release a0 with arr_25
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: start_25, tracked: true } |     a2:Freed { symidx: end_25, tracked: true } |     a3:Freed { symidx: dad_27, tracked: true } |     a5:Freed { symidx: temp_6_arithop_27, tracked: true } |     a6:Freed { symidx: temp_8_arithop_32, tracked: true } |     a7:Freed { symidx: temp_7_arithop_27, tracked: true } |     s1:Freed { symidx: son_27, tracked: true } |     s2:Freed { symidx: temp_9_cmp_32, tracked: true } | 
              #                    regtab 
              #                          Define heap_sort_0 [arr_46, len_46] -> heap_sort_ret_0 
    .globl heap_sort
    .type heap_sort,@function
heap_sort:
              #                    mem layout:|ra_heap_sort:8 at 80|s0_heap_sort:8 at 72|arr:8 at 64|len:4 at 60|i:4 at 56|tmp:4 at 52|temp_27_arithop:4 at 48|temp_28_arithop:4 at 44|temp_29_cmp:1 at 43|none:3 at 40|temp_30_arithop:4 at 36|temp_31_ret_of_heap_ajust:4 at 32|temp_32_arithop:4 at 28|temp_33_arithop:4 at 24|temp_34_cmp:1 at 23|none:3 at 20|tmp0:4 at 16|temp_35_ret_of_swap:4 at 12|temp_36_arithop:4 at 8|temp_37_ret_of_heap_ajust:4 at 4|temp_38_arithop:4 at 0
    addi    sp,sp,-88
              #                    store to ra_heap_sort_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_heap_sort_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                          new_var arr_46:ptr->i32 
              #                          alloc i32 i_48 
              #                          alloc i32 tmp_48 
              #                          alloc i32 temp_27_arithop_48 
              #                          alloc i32 temp_28_arithop_48 
              #                          alloc i1 temp_29_cmp_52 
              #                          alloc i32 temp_30_arithop_54 
              #                          alloc i32 temp_31_ret_of_heap_ajust_54 
              #                          alloc i32 temp_32_arithop_54 
              #                          alloc i32 temp_33_arithop_48 
              #                          alloc i1 temp_34_cmp_59 
              #                          alloc i32 tmp0_61 
              #                          alloc i32 temp_35_ret_of_swap_61 
              #                          alloc i32 temp_36_arithop_61 
              #                          alloc i32 temp_37_ret_of_heap_ajust_61 
              #                          alloc i32 temp_38_arithop_61 
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var i_48:i32 
              #                          new_var tmp_48:i32 
              #                          new_var temp_27_arithop_48:i32 
              #                          temp_27_arithop_48 = Div i32 len_46, 2_0 
              #                    occupy a1 with len_46
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_27_arithop_48
    div     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_28_arithop_48:i32 
              #                          temp_28_arithop_48 = Sub i32 temp_27_arithop_48, 1_0 
              #                    occupy a3 with temp_27_arithop_48
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_28_arithop_48
              #                    regtab:    a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Occupied { symidx: temp_27_arithop_48, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_28_arithop_48, tracked: true, occupy_count: 1 } | 


    sub     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          i_48 = i32 temp_28_arithop_48 
              #                    occupy a5 with temp_28_arithop_48
              #                    occupy a6 with i_48
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.head_53: 
.while.head_53:
              #                          new_var temp_29_cmp_52:i1 
              #                          temp_29_cmp_52 = icmp i32 Sgt i_48, -1_0 
              #                    occupy a6 with i_48
              #                    occupy a2 with -1_0
    li      a2, -1
              #                    occupy a4 with temp_29_cmp_52
    slt     a4,a2,a6
              #                    free a6
              #                    free a2
              #                    free a4
              #                          br i1 temp_29_cmp_52, label while.body_53, label while.exit_53 
              #                    occupy a4 with temp_29_cmp_52
              #                    free a4
              #                    occupy a4 with temp_29_cmp_52
    bnez    a4, .while.body_53
              #                    free a4
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.body_53: 
.while.body_53:
              #                          new_var temp_30_arithop_54:i32 
              #                          temp_30_arithop_54 = Sub i32 len_46, 1_0 
              #                    occupy a1 with len_46
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_30_arithop_54
              #                    regtab:    a0:Freed { symidx: arr_46, tracked: true } |     a1:Occupied { symidx: len_46, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Occupied { symidx: temp_30_arithop_54, tracked: true, occupy_count: 1 } | 


    sub     a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                          tmp_48 = i32 temp_30_arithop_54 
              #                    occupy a7 with temp_30_arithop_54
              #                    occupy s1 with tmp_48
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_31_ret_of_heap_ajust_54:i32 
              #                          temp_31_ret_of_heap_ajust_54 =  Call i32 heap_ajust_0(arr_46, i_48, tmp_48) 
              #                    saved register dumping to mem
              #                    store to tmp_48 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with tmp_48
              #                    store to arr_46 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with arr_46
              #                    store to len_46 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with len_46
              #                    store to temp_27_arithop_48 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with temp_27_arithop_48
              #                    store to temp_29_cmp_52 in mem offset legal
    sb      a4,43(sp)
              #                    release a4 with temp_29_cmp_52
              #                    store to temp_28_arithop_48 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_28_arithop_48
              #                    store to i_48 in mem offset legal
    sw      a6,56(sp)
              #                    release a6 with i_48
              #                    store to temp_30_arithop_54 in mem offset legal
    sw      a7,36(sp)
              #                    release a7 with temp_30_arithop_54
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,64(sp)
              #                    occupy a1 with _anonymous_of_i_48_0
              #                    load from i_48 in mem


    lw      a1,56(sp)
              #                    occupy a2 with _anonymous_of_tmp_48_0
              #                    load from tmp_48 in mem


    lw      a2,52(sp)
              #                    arg load ended


    call    heap_ajust
              #                    store to temp_31_ret_of_heap_ajust_54 in mem offset legal
    sw      a0,32(sp)
              #                          tmp_48 = i32 temp_31_ret_of_heap_ajust_54 
              #                    occupy a0 with temp_31_ret_of_heap_ajust_54
              #                    occupy a1 with tmp_48
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_32_arithop_54:i32 
              #                          temp_32_arithop_54 = Sub i32 i_48, 1_0 
              #                    occupy a2 with i_48
              #                    load from i_48 in mem


    lw      a2,56(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_32_arithop_54
              #                    regtab:    a0:Freed { symidx: temp_31_ret_of_heap_ajust_54, tracked: true } |     a1:Freed { symidx: tmp_48, tracked: true } |     a2:Occupied { symidx: i_48, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_32_arithop_54, tracked: true, occupy_count: 1 } | 


    sub     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_48 = i32 temp_32_arithop_54 
              #                    occupy a4 with temp_32_arithop_54
              #                    occupy a2 with i_48
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_53 
              #                    store to tmp_48 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with tmp_48
              #                    store to temp_31_ret_of_heap_ajust_54 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_31_ret_of_heap_ajust_54
              #                    store to i_48 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_48
              #                    store to temp_32_arithop_54 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_32_arithop_54
              #                    occupy a3 with _anonymous_of_temp_27_arithop_48_0
              #                    load from temp_27_arithop_48 in mem


    lw      a3,48(sp)
              #                    occupy a1 with _anonymous_of_len_46_0
              #                    load from len_46 in mem


    lw      a1,60(sp)
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,64(sp)
              #                    occupy a5 with _anonymous_of_temp_28_arithop_48_0
              #                    load from temp_28_arithop_48 in mem


    lw      a5,44(sp)
              #                    occupy a6 with _anonymous_of_i_48_0
              #                    load from i_48 in mem


    lw      a6,56(sp)
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } | 
              #                          label while.exit_53: 
.while.exit_53:
              #                          new_var temp_33_arithop_48:i32 
              #                          temp_33_arithop_48 = Sub i32 len_46, 1_0 
              #                    occupy a1 with len_46
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_33_arithop_48
              #                    regtab:    a0:Freed { symidx: arr_46, tracked: true } |     a1:Occupied { symidx: len_46, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Occupied { symidx: temp_33_arithop_48, tracked: true, occupy_count: 1 } | 


    sub     a7,a1,a2
              #                    free a1
              #                    free a2
              #                    free a7
              #                          i_48 = i32 temp_33_arithop_48 
              #                    occupy a7 with temp_33_arithop_48
              #                    occupy a6 with i_48
    mv      a6, a7
              #                    free a7
              #                    free a6
              #                          jump label: while.head_60 
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Freed { symidx: temp_33_arithop_48, tracked: true } | 
              #                          label while.head_60: 
.while.head_60:
              #                          new_var temp_34_cmp_59:i1 
              #                          temp_34_cmp_59 = icmp i32 Sgt i_48, 0_0 
              #                    occupy a6 with i_48
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy s1 with temp_34_cmp_59
    slt     s1,a2,a6
              #                    free a6
              #                    free a2
              #                    free s1
              #                          br i1 temp_34_cmp_59, label while.body_60, label while.exit_60 
              #                    occupy s1 with temp_34_cmp_59
              #                    free s1
              #                    occupy s1 with temp_34_cmp_59
    bnez    s1, .while.body_60
              #                    free s1
    j       .while.exit_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Freed { symidx: temp_33_arithop_48, tracked: true } |     s1:Freed { symidx: temp_34_cmp_59, tracked: true } | 
              #                          label while.body_60: 
.while.body_60:
              #                          new_var tmp0_61:i32 
              #                          tmp0_61 = i32 0_0 
              #                    occupy a2 with tmp0_61
    li      a2, 0
              #                    free a2
              #                          new_var temp_35_ret_of_swap_61:i32 
              #                          temp_35_ret_of_swap_61 =  Call i32 swap_0(arr_46, tmp0_61, i_48) 
              #                    saved register dumping to mem
              #                    store to temp_34_cmp_59 in mem offset legal
    sb      s1,23(sp)
              #                    release s1 with temp_34_cmp_59
              #                    store to arr_46 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with arr_46
              #                    store to len_46 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with len_46
              #                    store to tmp0_61 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with tmp0_61
              #                    store to temp_27_arithop_48 in mem offset legal
    sw      a3,48(sp)
              #                    release a3 with temp_27_arithop_48
              #                    store to temp_29_cmp_52 in mem offset legal
    sb      a4,43(sp)
              #                    release a4 with temp_29_cmp_52
              #                    store to temp_28_arithop_48 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_28_arithop_48
              #                    store to i_48 in mem offset legal
    sw      a6,56(sp)
              #                    release a6 with i_48
              #                    store to temp_33_arithop_48 in mem offset legal
    sw      a7,24(sp)
              #                    release a7 with temp_33_arithop_48
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,64(sp)
              #                    occupy a1 with _anonymous_of_tmp0_61_0
              #                    load from tmp0_61 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_i_48_0
              #                    load from i_48 in mem


    lw      a2,56(sp)
              #                    arg load ended


    call    swap
              #                    store to temp_35_ret_of_swap_61 in mem offset legal
    sw      a0,12(sp)
              #                          tmp_48 = i32 temp_35_ret_of_swap_61 
              #                    occupy a0 with temp_35_ret_of_swap_61
              #                    occupy a1 with tmp_48
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_36_arithop_61:i32 
              #                          temp_36_arithop_61 = Sub i32 i_48, 1_0 
              #                    occupy a2 with i_48
              #                    load from i_48 in mem


    lw      a2,56(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_36_arithop_61
              #                    regtab:    a0:Freed { symidx: temp_35_ret_of_swap_61, tracked: true } |     a1:Freed { symidx: tmp_48, tracked: true } |     a2:Occupied { symidx: i_48, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_36_arithop_61, tracked: true, occupy_count: 1 } | 


    sub     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          tmp_48 = i32 temp_36_arithop_61 
              #                    occupy a4 with temp_36_arithop_61
              #                    occupy a1 with tmp_48
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          new_var temp_37_ret_of_heap_ajust_61:i32 
              #                          temp_37_ret_of_heap_ajust_61 =  Call i32 heap_ajust_0(arr_46, tmp0_61, tmp_48) 
              #                    saved register dumping to mem
              #                    store to temp_35_ret_of_swap_61 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_35_ret_of_swap_61
              #                    store to tmp_48 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with tmp_48
              #                    store to i_48 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_48
              #                    store to temp_36_arithop_61 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_36_arithop_61
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,64(sp)
              #                    occupy a1 with _anonymous_of_tmp0_61_0
              #                    load from tmp0_61 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_tmp_48_0
              #                    load from tmp_48 in mem


    lw      a2,52(sp)
              #                    arg load ended


    call    heap_ajust
              #                    store to temp_37_ret_of_heap_ajust_61 in mem offset legal
    sw      a0,4(sp)
              #                          tmp_48 = i32 temp_37_ret_of_heap_ajust_61 
              #                    occupy a0 with temp_37_ret_of_heap_ajust_61
              #                    occupy a1 with tmp_48
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_38_arithop_61:i32 
              #                          temp_38_arithop_61 = Sub i32 i_48, 1_0 
              #                    occupy a2 with i_48
              #                    load from i_48 in mem


    lw      a2,56(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_38_arithop_61
              #                    regtab:    a0:Freed { symidx: temp_37_ret_of_heap_ajust_61, tracked: true } |     a1:Freed { symidx: tmp_48, tracked: true } |     a2:Occupied { symidx: i_48, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_38_arithop_61, tracked: true, occupy_count: 1 } | 


    sub     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_48 = i32 temp_38_arithop_61 
              #                    occupy a4 with temp_38_arithop_61
              #                    occupy a2 with i_48
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_60 
              #                    store to tmp_48 in mem offset legal
    sw      a1,52(sp)
              #                    release a1 with tmp_48
              #                    store to temp_37_ret_of_heap_ajust_61 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_37_ret_of_heap_ajust_61
              #                    store to i_48 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with i_48
              #                    store to temp_38_arithop_61 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_38_arithop_61
              #                    occupy a7 with _anonymous_of_temp_33_arithop_48_0
              #                    load from temp_33_arithop_48 in mem


    lw      a7,24(sp)
              #                    occupy a3 with _anonymous_of_temp_27_arithop_48_0
              #                    load from temp_27_arithop_48 in mem


    lw      a3,48(sp)
              #                    occupy a1 with _anonymous_of_len_46_0
              #                    load from len_46 in mem


    lw      a1,60(sp)
              #                    occupy a0 with _anonymous_of_arr_46_0
              #                    load from arr_46 in mem
    ld      a0,64(sp)
              #                    occupy a4 with _anonymous_of_temp_29_cmp_52_0
              #                    load from temp_29_cmp_52 in mem
    lb      a4,43(sp)
              #                    occupy a5 with _anonymous_of_temp_28_arithop_48_0
              #                    load from temp_28_arithop_48 in mem


    lw      a5,44(sp)
              #                    occupy a6 with _anonymous_of_i_48_0
              #                    load from i_48 in mem


    lw      a6,56(sp)
    j       .while.head_60
              #                    regtab     a0:Freed { symidx: arr_46, tracked: true } |     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Freed { symidx: temp_33_arithop_48, tracked: true } |     s1:Freed { symidx: temp_34_cmp_59, tracked: true } | 
              #                          label while.exit_60: 
.while.exit_60:
              #                          ret 0_0 
              #                    load from ra_heap_sort_0 in mem
    ld      ra,80(sp)
              #                    load from s0_heap_sort_0 in mem
    ld      s0,72(sp)
              #                    store to arr_46 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with arr_46
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: len_46, tracked: true } |     a3:Freed { symidx: temp_27_arithop_48, tracked: true } |     a4:Freed { symidx: temp_29_cmp_52, tracked: true } |     a5:Freed { symidx: temp_28_arithop_48, tracked: true } |     a6:Freed { symidx: i_48, tracked: true } |     a7:Freed { symidx: temp_33_arithop_48, tracked: true } |     s1:Freed { symidx: temp_34_cmp_59, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 168|s0_main:8 at 160|a:40 at 120|temp_39_index_ptr:8 at 112|temp_40_index_ptr:8 at 104|temp_41_index_ptr:8 at 96|temp_42_index_ptr:8 at 88|temp_43_index_ptr:8 at 80|temp_44_index_ptr:8 at 72|temp_45_index_ptr:8 at 64|temp_46_index_ptr:8 at 56|temp_47_index_ptr:8 at 48|temp_48_index_ptr:8 at 40|i:4 at 36|temp_49_ptr2globl:4 at 32|temp_50_ret_of_heap_sort:4 at 28|temp_51_ptr2globl:4 at 24|temp_52_cmp:1 at 23|none:3 at 20|tmp:4 at 16|temp_53_array_ptr:8 at 8|temp_54_array_ele:4 at 4|temp_55_arithop:4 at 0
    addi    sp,sp,-176
              #                    store to ra_main_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                          alloc Array:i32:[Some(10_0)] a_70 
              #                          alloc ptr->i32 temp_39_index_ptr_70 
              #                          alloc ptr->i32 temp_40_index_ptr_70 
              #                          alloc ptr->i32 temp_41_index_ptr_70 
              #                          alloc ptr->i32 temp_42_index_ptr_70 
              #                          alloc ptr->i32 temp_43_index_ptr_70 
              #                          alloc ptr->i32 temp_44_index_ptr_70 
              #                          alloc ptr->i32 temp_45_index_ptr_70 
              #                          alloc ptr->i32 temp_46_index_ptr_70 
              #                          alloc ptr->i32 temp_47_index_ptr_70 
              #                          alloc ptr->i32 temp_48_index_ptr_70 
              #                          alloc i32 i_70 
              #                          alloc i32 temp_49_ptr2globl_70 
              #                          alloc i32 temp_50_ret_of_heap_sort_70 
              #                          alloc i32 temp_51_ptr2globl_86 
              #                          alloc i1 temp_52_cmp_86 
              #                          alloc i32 tmp_88 
              #                          alloc ptr->i32 temp_53_array_ptr_88 
              #                          alloc i32 temp_54_array_ele_88 
              #                          alloc i32 temp_55_arithop_88 
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
              #                          new_var a_70:Array:i32:[Some(10_0)] 
              #                          new_var temp_39_index_ptr_70:ptr->i32 
              #                          temp_39_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_39_index_ptr_70
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_a_70_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          store 4_0:i32 temp_39_index_ptr_70:ptr->i32 
              #                    occupy a2 with temp_39_index_ptr_70
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_70:210 
              #                          a_70 = chi a_70:210 
              #                          new_var temp_40_index_ptr_70:ptr->i32 
              #                          temp_40_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_40_index_ptr_70
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_a_70_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,120
              #                    free a7
              #                          store 3_0:i32 temp_40_index_ptr_70:ptr->i32 
              #                    occupy a7 with temp_40_index_ptr_70
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_70:216 
              #                          a_70 = chi a_70:216 
              #                          new_var temp_41_index_ptr_70:ptr->i32 
              #                          temp_41_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_41_index_ptr_70
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_a_70_0
    mul     s6,s1,s5
              #                    free s1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,120
              #                    free s4
              #                          store 9_0:i32 temp_41_index_ptr_70:ptr->i32 
              #                    occupy s4 with temp_41_index_ptr_70
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_70:222 
              #                          a_70 = chi a_70:222 
              #                          new_var temp_42_index_ptr_70:ptr->i32 
              #                          temp_42_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_42_index_ptr_70
    li      s8, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy s9 with _anonymous_of_a_70_0
    mul     s9,s1,s3
              #                    free s1
              #                    free s3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,120
              #                    free s8
              #                          store 2_0:i32 temp_42_index_ptr_70:ptr->i32 
              #                    occupy s8 with temp_42_index_ptr_70
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_70:228 
              #                          a_70 = chi a_70:228 
              #                          new_var temp_43_index_ptr_70:ptr->i32 
              #                          temp_43_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_43_index_ptr_70
    li      s10, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(a6) already exist with 4_0
              #                    occupy a6 with 4_0
              #                    occupy s11 with _anonymous_of_a_70_0
    mul     s11,s1,a6
              #                    free s1
              #                    free a6
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,120
              #                    free s10
              #                          store 0_0:i32 temp_43_index_ptr_70:ptr->i32 
              #                    occupy s10 with temp_43_index_ptr_70
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_70:234 
              #                          a_70 = chi a_70:234 
              #                          new_var temp_44_index_ptr_70:ptr->i32 
              #                          temp_44_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_44_index_ptr_70
    li      a0, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a3 with _anonymous_of_a_70_0
    mul     a3,s1,a1
              #                    free s1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,120
              #                    free a0
              #                          store 1_0:i32 temp_44_index_ptr_70:ptr->i32 
              #                    occupy a0 with temp_44_index_ptr_70
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu a_70:240 
              #                          a_70 = chi a_70:240 
              #                          new_var temp_45_index_ptr_70:ptr->i32 
              #                          temp_45_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_45_index_ptr_70
    li      a1, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a3 with 6_0
    li      a3, 6
              #                    occupy a4 with _anonymous_of_a_70_0
    mul     a4,s1,a3
              #                    free s1
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,120
              #                    free a1
              #                          store 6_0:i32 temp_45_index_ptr_70:ptr->i32 
              #                    occupy a1 with temp_45_index_ptr_70
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu a_70:246 
              #                          a_70 = chi a_70:246 
              #                          new_var temp_46_index_ptr_70:ptr->i32 
              #                          temp_46_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_46_index_ptr_70
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a5 with _anonymous_of_a_70_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,120
              #                    free a3
              #                          store 5_0:i32 temp_46_index_ptr_70:ptr->i32 
              #                    occupy a3 with temp_46_index_ptr_70
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_70:252 
              #                          a_70 = chi a_70:252 
              #                          new_var temp_47_index_ptr_70:ptr->i32 
              #                          temp_47_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_47_index_ptr_70
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with 8_0
    li      a5, 8
              #                    occupy a6 with _anonymous_of_a_70_0
    mul     a6,s1,a5
              #                    free s1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,120
              #                    free a4
              #                          store 7_0:i32 temp_47_index_ptr_70:ptr->i32 
              #                    occupy a4 with temp_47_index_ptr_70
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_70:258 
              #                          a_70 = chi a_70:258 
              #                          new_var temp_48_index_ptr_70:ptr->i32 
              #                          temp_48_index_ptr_70 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_48_index_ptr_70
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
              #                    occupy a6 with _anonymous_of_a_70_0
    mul     a6,s1,s7
              #                    free s1
              #                    free s7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,120
              #                    free a5
              #                          store 8_0:i32 temp_48_index_ptr_70:ptr->i32 
              #                    occupy a5 with temp_48_index_ptr_70
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_70:264 
              #                          a_70 = chi a_70:264 
              #                          new_var i_70:i32 
              #                          i_70 = i32 0_0 
              #                    occupy a6 with i_70
    li      a6, 0
              #                    free a6
              #                          new_var temp_49_ptr2globl_70:i32 
              #                          temp_49_ptr2globl_70 = load *n_0:ptr->i32 
              #                    occupy s1 with *n_0
              #                       load label n as ptr to reg
    la      s1, n
              #                    occupy reg s1 with *n_0
              #                    occupy s2 with temp_49_ptr2globl_70
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_50_ret_of_heap_sort_70:i32 
              #                          temp_50_ret_of_heap_sort_70 =  Call i32 heap_sort_0(a_70, temp_49_ptr2globl_70) 
              #                    saved register dumping to mem
              #                    store to temp_49_ptr2globl_70 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_49_ptr2globl_70
              #                    store to temp_41_index_ptr_70 in mem offset legal
    sd      s4,96(sp)
              #                    release s4 with temp_41_index_ptr_70
              #                    store to temp_42_index_ptr_70 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_42_index_ptr_70
              #                    store to temp_43_index_ptr_70 in mem offset legal
    sd      s10,80(sp)
              #                    release s10 with temp_43_index_ptr_70
              #                    store to temp_44_index_ptr_70 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_44_index_ptr_70
              #                    store to temp_45_index_ptr_70 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_45_index_ptr_70
              #                    store to temp_39_index_ptr_70 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_39_index_ptr_70
              #                    store to temp_46_index_ptr_70 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_46_index_ptr_70
              #                    store to temp_47_index_ptr_70 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_47_index_ptr_70
              #                    store to temp_48_index_ptr_70 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_48_index_ptr_70
              #                    store to i_70 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with i_70
              #                    store to temp_40_index_ptr_70 in mem offset legal
    sd      a7,104(sp)
              #                    release a7 with temp_40_index_ptr_70
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_70_0
              #                    load from a_70 in mem
    lw      a0,120(sp)
              #                    occupy a1 with _anonymous_of_temp_49_ptr2globl_70_0
              #                    load from temp_49_ptr2globl_70 in mem


    lw      a1,32(sp)
              #                    arg load ended


    call    heap_sort
              #                    store to temp_50_ret_of_heap_sort_70 in mem offset legal
    sw      a0,28(sp)
              #                          i_70 = i32 temp_50_ret_of_heap_sort_70 
              #                    occupy a0 with temp_50_ret_of_heap_sort_70
              #                    occupy a1 with i_70
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_heap_sort_70, tracked: true } |     a1:Freed { symidx: i_70, tracked: true } | 
              #                          label while.head_87: 
.while.head_87:
              #                          new_var temp_51_ptr2globl_86:i32 
              #                          temp_51_ptr2globl_86 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_51_ptr2globl_86
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_52_cmp_86:i1 
              #                          temp_52_cmp_86 = icmp i32 Slt i_70, temp_51_ptr2globl_86 
              #                    occupy a1 with i_70
              #                    occupy a3 with temp_51_ptr2globl_86
              #                    occupy a4 with temp_52_cmp_86
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_52_cmp_86, label while.body_87, label while.exit_87 
              #                    occupy a4 with temp_52_cmp_86
              #                    free a4
              #                    occupy a4 with temp_52_cmp_86
    bnez    a4, .while.body_87
              #                    free a4
    j       .while.exit_87
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_heap_sort_70, tracked: true } |     a1:Freed { symidx: i_70, tracked: true } |     a3:Freed { symidx: temp_51_ptr2globl_86, tracked: true } |     a4:Freed { symidx: temp_52_cmp_86, tracked: true } | 
              #                          label while.body_87: 
.while.body_87:
              #                          new_var tmp_88:i32 
              #                          new_var temp_53_array_ptr_88:ptr->i32 
              #                          temp_53_array_ptr_88 = getelementptr a_70:Array:i32:[Some(10_0)] [Some(i_70)] 
              #                    occupy a2 with temp_53_array_ptr_88
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_70
              #                    occupy a6 with _anonymous_of_a_70_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          new_var temp_54_array_ele_88:i32 
              #                          temp_54_array_ele_88 = load temp_53_array_ptr_88:ptr->i32 
              #                    occupy a2 with temp_53_array_ptr_88
              #                    occupy a7 with temp_54_array_ele_88
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_88 = i32 temp_54_array_ele_88 
              #                    occupy a7 with temp_54_array_ele_88
              #                    occupy s1 with tmp_88
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_88) 
              #                    saved register dumping to mem
              #                    store to tmp_88 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with tmp_88
              #                    store to temp_50_ret_of_heap_sort_70 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_50_ret_of_heap_sort_70
              #                    store to i_70 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_70
              #                    store to temp_53_array_ptr_88 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_53_array_ptr_88
              #                    store to temp_51_ptr2globl_86 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_51_ptr2globl_86
              #                    store to temp_52_cmp_86 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_52_cmp_86
              #                    store to temp_54_array_ele_88 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_54_array_ele_88
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_88_0
              #                    load from tmp_88 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          tmp_88 = i32 10_0 
              #                    occupy a0 with tmp_88
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_88) 
              #                    saved register dumping to mem
              #                    store to tmp_88 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with tmp_88
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_88_0
              #                    load from tmp_88 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_55_arithop_88:i32 
              #                          temp_55_arithop_88 = Add i32 i_70, 1_0 
              #                    occupy a0 with i_70
              #                    load from i_70 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_55_arithop_88
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_70 = i32 temp_55_arithop_88 
              #                    occupy a2 with temp_55_arithop_88
              #                    occupy a0 with i_70
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_87 
              #                    store to temp_55_arithop_88 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_55_arithop_88
              #                    store to i_70 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_70
              #                    occupy a1 with _anonymous_of_i_70_0
              #                    load from i_70 in mem


    lw      a1,36(sp)
              #                    occupy a0 with _anonymous_of_temp_50_ret_of_heap_sort_70_0
              #                    load from temp_50_ret_of_heap_sort_70 in mem


    lw      a0,28(sp)
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_50_ret_of_heap_sort_70, tracked: true } |     a1:Freed { symidx: i_70, tracked: true } |     a3:Freed { symidx: temp_51_ptr2globl_86, tracked: true } |     a4:Freed { symidx: temp_52_cmp_86, tracked: true } | 
              #                          label while.exit_87: 
.while.exit_87:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,168(sp)
              #                    load from s0_main_0 in mem
    ld      s0,160(sp)
              #                    store to temp_50_ret_of_heap_sort_70 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_50_ret_of_heap_sort_70
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_70, tracked: true } |     a3:Freed { symidx: temp_51_ptr2globl_86, tracked: true } |     a4:Freed { symidx: temp_52_cmp_86, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
