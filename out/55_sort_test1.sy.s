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
              #                          Define bubblesort_0 [arr_17] -> bubblesort_ret_0 
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
              #                    mem layout:|ra_bubblesort:8 at 152|s0_bubblesort:8 at 144|arr:8 at 136|i:4 at 132|j:4 at 128|temp_0_ptr2globl:4 at 124|temp_1_arithop:4 at 120|temp_2_cmp:1 at 119|none:3 at 116|temp_3_ptr2globl:4 at 112|temp_4_arithop:4 at 108|temp_5_arithop:4 at 104|temp_6_cmp:1 at 103|none:3 at 100|temp_7_arithop:4 at 96|temp_8_array_ptr:8 at 88|temp_9_array_ele:4 at 84|none:4 at 80|temp_10_array_ptr:8 at 72|temp_11_array_ele:4 at 68|temp_12_cmp:1 at 67|none:3 at 64|tmp:4 at 60|temp_13_arithop:4 at 56|temp_14_array_ptr:8 at 48|temp_15_array_ele:4 at 44|temp_16_arithop:4 at 40|temp_17_index_ptr:8 at 32|temp_18_array_ptr:8 at 24|temp_19_array_ele:4 at 20|none:4 at 16|temp_20_index_ptr:8 at 8|temp_21_arithop:4 at 4|temp_22_arithop:4 at 0
    addi    sp,sp,-160
              #                    store to ra_bubblesort_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_bubblesort_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          new_var arr_17:ptr->i32 
              #                          alloc i32 i_19 
              #                          alloc i32 j_19 
              #                          alloc i32 temp_0_ptr2globl_23 
              #                          alloc i32 temp_1_arithop_23 
              #                          alloc i1 temp_2_cmp_23 
              #                          alloc i32 temp_3_ptr2globl_27 
              #                          alloc i32 temp_4_arithop_27 
              #                          alloc i32 temp_5_arithop_27 
              #                          alloc i1 temp_6_cmp_27 
              #                          alloc i32 temp_7_arithop_30 
              #                          alloc ptr->i32 temp_8_array_ptr_30 
              #                          alloc i32 temp_9_array_ele_30 
              #                          alloc ptr->i32 temp_10_array_ptr_30 
              #                          alloc i32 temp_11_array_ele_30 
              #                          alloc i1 temp_12_cmp_30 
              #                          alloc i32 tmp_32 
              #                          alloc i32 temp_13_arithop_32 
              #                          alloc ptr->i32 temp_14_array_ptr_32 
              #                          alloc i32 temp_15_array_ele_32 
              #                          alloc i32 temp_16_arithop_32 
              #                          alloc ptr->i32 temp_17_index_ptr_32 
              #                          alloc ptr->i32 temp_18_array_ptr_32 
              #                          alloc i32 temp_19_array_ele_32 
              #                          alloc ptr->i32 temp_20_index_ptr_32 
              #                          alloc i32 temp_21_arithop_29 
              #                          alloc i32 temp_22_arithop_25 
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var i_19:i32 
              #                          new_var j_19:i32 
              #                          i_19 = i32 0_0 
              #                    occupy a1 with i_19
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_24: 
.while.head_24:
              #                          new_var temp_0_ptr2globl_23:i32 
              #                          temp_0_ptr2globl_23 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_0_ptr2globl_23
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_1_arithop_23:i32 
              #                          temp_1_arithop_23 = Sub i32 temp_0_ptr2globl_23, 1_0 
              #                    occupy a3 with temp_0_ptr2globl_23
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_1_arithop_23
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: *n_0, tracked: false } |     a3:Occupied { symidx: temp_0_ptr2globl_23, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_1_arithop_23, tracked: true, occupy_count: 1 } | 


    sub     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_23:i1 
              #                          temp_2_cmp_23 = icmp i32 Slt i_19, temp_1_arithop_23 
              #                    occupy a1 with i_19
              #                    occupy a5 with temp_1_arithop_23
              #                    occupy a6 with temp_2_cmp_23
    slt     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          br i1 temp_2_cmp_23, label while.body_24, label while.exit_24 
              #                    occupy a6 with temp_2_cmp_23
              #                    free a6
              #                    occupy a6 with temp_2_cmp_23
    bnez    a6, .while.body_24
              #                    free a6
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } | 
              #                          label while.body_24: 
.while.body_24:
              #                          j_19 = i32 0_0 
              #                    occupy a2 with j_19
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } | 
              #                          label while.head_28: 
.while.head_28:
              #                          new_var temp_3_ptr2globl_27:i32 
              #                          temp_3_ptr2globl_27 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a7 with temp_3_ptr2globl_27
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          new_var temp_4_arithop_27:i32 
              #                          temp_4_arithop_27 = Sub i32 temp_3_ptr2globl_27, i_19 
              #                    occupy a7 with temp_3_ptr2globl_27
              #                    occupy a1 with i_19
              #                    occupy s1 with temp_4_arithop_27
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: i_19, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a4:Freed { symidx: *n_0, tracked: false } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Occupied { symidx: temp_3_ptr2globl_27, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_4_arithop_27, tracked: true, occupy_count: 1 } | 


    sub     s1,a7,a1
              #                    free a7
              #                    free a1
              #                    free s1
              #                          new_var temp_5_arithop_27:i32 
              #                          temp_5_arithop_27 = Sub i32 temp_4_arithop_27, 1_0 
              #                    occupy s1 with temp_4_arithop_27
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_5_arithop_27
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a4:Freed { symidx: *n_0, tracked: false } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s1:Occupied { symidx: temp_4_arithop_27, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_5_arithop_27, tracked: true, occupy_count: 1 } | 


    sub     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_6_cmp_27:i1 
              #                          temp_6_cmp_27 = icmp i32 Slt j_19, temp_5_arithop_27 
              #                    occupy a2 with j_19
              #                    occupy s3 with temp_5_arithop_27
              #                    occupy s4 with temp_6_cmp_27
    slt     s4,a2,s3
              #                    free a2
              #                    free s3
              #                    free s4
              #                          br i1 temp_6_cmp_27, label while.body_28, label while.exit_28 
              #                    occupy s4 with temp_6_cmp_27
              #                    free s4
              #                    occupy s4 with temp_6_cmp_27
    bnez    s4, .while.body_28
              #                    free s4
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } | 
              #                          label while.body_28: 
.while.body_28:
              #                          new_var temp_7_arithop_30:i32 
              #                          temp_7_arithop_30 = Add i32 j_19, 1_0 
              #                    occupy a2 with j_19
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_7_arithop_30
    add     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_8_array_ptr_30:ptr->i32 
              #                          temp_8_array_ptr_30 = getelementptr arr_17:ptr->i32 [Some(temp_7_arithop_30)] 
              #                    occupy s5 with temp_8_array_ptr_30
    li      s5, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s2 with temp_7_arithop_30
              #                    occupy s6 with _anonymous_of_arr_17_0
    mul     s6,a4,s2
              #                    free a4
              #                    free s2
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with arr_17
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_9_array_ele_30:i32 
              #                          temp_9_array_ele_30 = load temp_8_array_ptr_30:ptr->i32 
              #                    occupy s5 with temp_8_array_ptr_30
              #                    occupy s7 with temp_9_array_ele_30
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_10_array_ptr_30:ptr->i32 
              #                          temp_10_array_ptr_30 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
              #                    occupy s8 with temp_10_array_ptr_30
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a2 with j_19
              #                    occupy s9 with _anonymous_of_arr_17_0
    mul     s9,a4,a2
              #                    free a4
              #                    free a2
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy a0 with arr_17
    add     s8,s8,a0
              #                    free a0
              #                    free s8
              #                          new_var temp_11_array_ele_30:i32 
              #                          temp_11_array_ele_30 = load temp_10_array_ptr_30:ptr->i32 
              #                    occupy s8 with temp_10_array_ptr_30
              #                    occupy s10 with temp_11_array_ele_30
    lw      s10,0(s8)
              #                    free s10
              #                    free s8
              #                          new_var temp_12_cmp_30:i1 
              #                          temp_12_cmp_30 = icmp i32 Sgt temp_11_array_ele_30, temp_9_array_ele_30 
              #                    occupy s10 with temp_11_array_ele_30
              #                    occupy s7 with temp_9_array_ele_30
              #                    occupy s11 with temp_12_cmp_30
    slt     s11,s7,s10
              #                    free s10
              #                    free s7
              #                    free s11
              #                          br i1 temp_12_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy s11 with temp_12_cmp_30
              #                    free s11
              #                    occupy s11 with temp_12_cmp_30
    bnez    s11, .branch_true_31
              #                    free s11
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s10:Freed { symidx: temp_11_array_ele_30, tracked: true } |     s11:Freed { symidx: temp_12_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s2:Freed { symidx: temp_7_arithop_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } |     s5:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_10_array_ptr_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var tmp_32:i32 
              #                          new_var temp_13_arithop_32:i32 
              #                          temp_13_arithop_32 = Add i32 j_19, 1_0 
              #                    occupy a2 with j_19
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s6 with temp_13_arithop_32
    add     s6,a2,a4
              #                    free a2
              #                    free a4
              #                    free s6
              #                          new_var temp_14_array_ptr_32:ptr->i32 
              #                          temp_14_array_ptr_32 = getelementptr arr_17:ptr->i32 [Some(temp_13_arithop_32)] 
              #                    occupy s9 with temp_14_array_ptr_32
    li      s9, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s6 with temp_13_arithop_32
              #                    store to arr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with _anonymous_of_arr_17_0
    mul     a0,a4,s6
              #                    free a4
              #                    free s6
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,136(sp)
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_15_array_ele_32:i32 
              #                          temp_15_array_ele_32 = load temp_14_array_ptr_32:ptr->i32 
              #                    occupy s9 with temp_14_array_ptr_32
              #                    occupy a4 with temp_15_array_ele_32
    lw      a4,0(s9)
              #                    free a4
              #                    free s9
              #                          tmp_32 = i32 temp_15_array_ele_32 
              #                    occupy a4 with temp_15_array_ele_32
              #                    store to arr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with tmp_32
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          new_var temp_16_arithop_32:i32 
              #                          temp_16_arithop_32 = Add i32 j_19, 1_0 
              #                    occupy a2 with j_19
              #                    store to tmp_32 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with tmp_32
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to i_19 in mem offset legal
    sw      a1,132(sp)
              #                    release a1 with i_19
              #                    occupy a1 with temp_16_arithop_32
    add     a1,a2,a0
              #                    free a2
              #                    free a0
              #                    free a1
              #                          new_var temp_17_index_ptr_32:ptr->i32 
              #                          temp_17_index_ptr_32 = getelementptr arr_17:ptr->i32 [Some(temp_16_arithop_32)] 
              #                    occupy a0 with temp_17_index_ptr_32
    li      a0, 0
              #                    store to temp_16_arithop_32 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with temp_16_arithop_32
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to j_19 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with j_19
              #                    occupy a2 with temp_16_arithop_32
              #                    load from temp_16_arithop_32 in mem


    lw      a2,40(sp)
              #                    store to temp_0_ptr2globl_23 in mem offset legal
    sw      a3,124(sp)
              #                    release a3 with temp_0_ptr2globl_23
              #                    occupy a3 with _anonymous_of_arr_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with arr_17
              #                    load from arr_17 in mem
    ld      a1,136(sp)
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          new_var temp_18_array_ptr_32:ptr->i32 
              #                          temp_18_array_ptr_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
              #                    occupy a3 with temp_18_array_ptr_32
    li      a3, 0
              #                    store to temp_17_index_ptr_32 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_17_index_ptr_32
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to arr_17 in mem offset legal
    sd      a1,136(sp)
              #                    release a1 with arr_17
              #                    occupy a1 with j_19
              #                    load from j_19 in mem


    lw      a1,128(sp)
              #                    store to temp_16_arithop_32 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_16_arithop_32
              #                    occupy a2 with _anonymous_of_arr_17_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with arr_17
              #                    load from arr_17 in mem
    ld      a0,136(sp)
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_19_array_ele_32:i32 
              #                          temp_19_array_ele_32 = load temp_18_array_ptr_32:ptr->i32 
              #                    occupy a3 with temp_18_array_ptr_32
              #                    occupy a2 with temp_19_array_ele_32
    lw      a2,0(a3)
              #                    free a2
              #                    free a3
              #                          store temp_19_array_ele_32:i32 temp_17_index_ptr_32:ptr->i32 
              #                    store to arr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with temp_17_index_ptr_32
              #                    load from temp_17_index_ptr_32 in mem
    ld      a0,32(sp)
              #                    occupy a2 with temp_19_array_ele_32
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          mu arr_17:101 
              #                          arr_17 = chi arr_17:101 
              #                          new_var temp_20_index_ptr_32:ptr->i32 
              #                          temp_20_index_ptr_32 = getelementptr arr_17:ptr->i32 [Some(j_19)] 
              #                    store to temp_17_index_ptr_32 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_17_index_ptr_32
              #                    occupy a0 with temp_20_index_ptr_32
    li      a0, 0
              #                    store to j_19 in mem offset legal
    sw      a1,128(sp)
              #                    release a1 with j_19
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_19_array_ele_32 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_19_array_ele_32
              #                    occupy a2 with j_19
              #                    load from j_19 in mem


    lw      a2,128(sp)
              #                    store to temp_18_array_ptr_32 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_18_array_ptr_32
              #                    occupy a3 with _anonymous_of_arr_17_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a1 with arr_17
              #                    load from arr_17 in mem
    ld      a1,136(sp)
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          store tmp_32:i32 temp_20_index_ptr_32:ptr->i32 
              #                    occupy a0 with temp_20_index_ptr_32
              #                    occupy a3 with tmp_32
              #                    load from tmp_32 in mem


    lw      a3,60(sp)
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          mu arr_17:107 
              #                          arr_17 = chi arr_17:107 
              #                          jump label: branch_false_31 
              #                    store to temp_14_array_ptr_32 in mem offset legal
    sd      s9,48(sp)
              #                    release s9 with temp_14_array_ptr_32
              #                    store to temp_13_arithop_32 in mem offset legal
    sw      s6,56(sp)
              #                    release s6 with temp_13_arithop_32
              #                    store to tmp_32 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with tmp_32
              #                    store to temp_15_array_ele_32 in mem offset legal
    sw      a4,44(sp)
              #                    release a4 with temp_15_array_ele_32
              #                    store to arr_17 in mem offset legal
    sd      a1,136(sp)
              #                    release a1 with arr_17
              #                    store to temp_20_index_ptr_32 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_20_index_ptr_32
              #                    occupy a3 with _anonymous_of_temp_0_ptr2globl_23_0
              #                    load from temp_0_ptr2globl_23 in mem


    lw      a3,124(sp)
              #                    occupy a1 with _anonymous_of_i_19_0
              #                    load from i_19 in mem


    lw      a1,132(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,136(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s10:Freed { symidx: temp_11_array_ele_30, tracked: true } |     s11:Freed { symidx: temp_12_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s2:Freed { symidx: temp_7_arithop_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } |     s5:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_10_array_ptr_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s10:Freed { symidx: temp_11_array_ele_30, tracked: true } |     s11:Freed { symidx: temp_12_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s2:Freed { symidx: temp_7_arithop_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } |     s5:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_10_array_ptr_30, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_21_arithop_29:i32 
              #                          temp_21_arithop_29 = Add i32 j_19, 1_0 
              #                    occupy a2 with j_19
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s6 with temp_21_arithop_29
    add     s6,a2,a4
              #                    free a2
              #                    free a4
              #                    free s6
              #                          j_19 = i32 temp_21_arithop_29 
              #                    occupy s6 with temp_21_arithop_29
              #                    occupy a2 with j_19
    mv      a2, s6
              #                    free s6
              #                    free a2
              #                          jump label: while.head_28 
              #                    store to temp_8_array_ptr_30 in mem offset legal
    sd      s5,88(sp)
              #                    release s5 with temp_8_array_ptr_30
              #                    store to temp_21_arithop_29 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_21_arithop_29
              #                    store to temp_10_array_ptr_30 in mem offset legal
    sd      s8,72(sp)
              #                    release s8 with temp_10_array_ptr_30
              #                    store to temp_3_ptr2globl_27 in mem offset legal
    sw      a7,112(sp)
              #                    release a7 with temp_3_ptr2globl_27
              #                    store to temp_11_array_ele_30 in mem offset legal
    sw      s10,68(sp)
              #                    release s10 with temp_11_array_ele_30
              #                    store to temp_6_cmp_27 in mem offset legal
    sb      s4,103(sp)
              #                    release s4 with temp_6_cmp_27
              #                    store to temp_9_array_ele_30 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_9_array_ele_30
              #                    store to temp_12_cmp_30 in mem offset legal
    sb      s11,67(sp)
              #                    release s11 with temp_12_cmp_30
              #                    store to temp_5_arithop_27 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_5_arithop_27
              #                    store to temp_4_arithop_27 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_4_arithop_27
              #                    store to temp_7_arithop_30 in mem offset legal
    sw      s2,96(sp)
              #                    release s2 with temp_7_arithop_30
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } | 
              #                          label while.exit_28: 
.while.exit_28:
              #                          new_var temp_22_arithop_25:i32 
              #                          temp_22_arithop_25 = Add i32 i_19, 1_0 
              #                    occupy a1 with i_19
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_22_arithop_25
    add     s2,a1,a4
              #                    free a1
              #                    free a4
              #                    free s2
              #                          i_19 = i32 temp_22_arithop_25 
              #                    occupy s2 with temp_22_arithop_25
              #                    occupy a1 with i_19
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                          jump label: while.head_24 
              #                    store to temp_1_arithop_23 in mem offset legal
    sw      a5,120(sp)
              #                    release a5 with temp_1_arithop_23
              #                    store to j_19 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with j_19
              #                    store to temp_3_ptr2globl_27 in mem offset legal
    sw      a7,112(sp)
              #                    release a7 with temp_3_ptr2globl_27
              #                    store to temp_0_ptr2globl_23 in mem offset legal
    sw      a3,124(sp)
              #                    release a3 with temp_0_ptr2globl_23
              #                    store to temp_6_cmp_27 in mem offset legal
    sb      s4,103(sp)
              #                    release s4 with temp_6_cmp_27
              #                    store to temp_2_cmp_23 in mem offset legal
    sb      a6,119(sp)
              #                    release a6 with temp_2_cmp_23
              #                    store to temp_5_arithop_27 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_5_arithop_27
              #                    store to temp_4_arithop_27 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_4_arithop_27
              #                    store to temp_22_arithop_25 in mem offset legal
    sw      s2,0(sp)
              #                    release s2 with temp_22_arithop_25
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } | 
              #                          label while.exit_24: 
.while.exit_24:
              #                          ret 0_0 
              #                    load from ra_bubblesort_0 in mem
    ld      ra,152(sp)
              #                    load from s0_bubblesort_0 in mem
    ld      s0,144(sp)
              #                    store to arr_17 in mem offset legal
    sd      a0,136(sp)
              #                    release a0 with arr_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,160
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 168|s0_main:8 at 160|a:40 at 120|temp_23_index_ptr:8 at 112|temp_24_index_ptr:8 at 104|temp_25_index_ptr:8 at 96|temp_26_index_ptr:8 at 88|temp_27_index_ptr:8 at 80|temp_28_index_ptr:8 at 72|temp_29_index_ptr:8 at 64|temp_30_index_ptr:8 at 56|temp_31_index_ptr:8 at 48|temp_32_index_ptr:8 at 40|i:4 at 36|temp_33_ret_of_bubblesort:4 at 32|temp_34_ptr2globl:4 at 28|temp_35_cmp:1 at 27|none:3 at 24|tmp:4 at 20|none:4 at 16|temp_36_array_ptr:8 at 8|temp_37_array_ele:4 at 4|temp_38_arithop:4 at 0
    addi    sp,sp,-176
              #                    store to ra_main_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                          alloc Array:i32:[Some(10_0)] a_41 
              #                          alloc ptr->i32 temp_23_index_ptr_41 
              #                          alloc ptr->i32 temp_24_index_ptr_41 
              #                          alloc ptr->i32 temp_25_index_ptr_41 
              #                          alloc ptr->i32 temp_26_index_ptr_41 
              #                          alloc ptr->i32 temp_27_index_ptr_41 
              #                          alloc ptr->i32 temp_28_index_ptr_41 
              #                          alloc ptr->i32 temp_29_index_ptr_41 
              #                          alloc ptr->i32 temp_30_index_ptr_41 
              #                          alloc ptr->i32 temp_31_index_ptr_41 
              #                          alloc ptr->i32 temp_32_index_ptr_41 
              #                          alloc i32 i_41 
              #                          alloc i32 temp_33_ret_of_bubblesort_41 
              #                          alloc i32 temp_34_ptr2globl_56 
              #                          alloc i1 temp_35_cmp_56 
              #                          alloc i32 tmp_58 
              #                          alloc ptr->i32 temp_36_array_ptr_58 
              #                          alloc i32 temp_37_array_ele_58 
              #                          alloc i32 temp_38_arithop_58 
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
              #                          new_var a_41:Array:i32:[Some(10_0)] 
              #                          new_var temp_23_index_ptr_41:ptr->i32 
              #                          temp_23_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_23_index_ptr_41
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_a_41_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          store 4_0:i32 temp_23_index_ptr_41:ptr->i32 
              #                    occupy a2 with temp_23_index_ptr_41
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_41:126 
              #                          a_41 = chi a_41:126 
              #                          new_var temp_24_index_ptr_41:ptr->i32 
              #                          temp_24_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_24_index_ptr_41
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_a_41_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,120
              #                    free a7
              #                          store 3_0:i32 temp_24_index_ptr_41:ptr->i32 
              #                    occupy a7 with temp_24_index_ptr_41
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_41:132 
              #                          a_41 = chi a_41:132 
              #                          new_var temp_25_index_ptr_41:ptr->i32 
              #                          temp_25_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_25_index_ptr_41
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_a_41_0
    mul     s6,s1,s5
              #                    free s1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,120
              #                    free s4
              #                          store 9_0:i32 temp_25_index_ptr_41:ptr->i32 
              #                    occupy s4 with temp_25_index_ptr_41
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_41:138 
              #                          a_41 = chi a_41:138 
              #                          new_var temp_26_index_ptr_41:ptr->i32 
              #                          temp_26_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_26_index_ptr_41
    li      s8, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy s9 with _anonymous_of_a_41_0
    mul     s9,s1,s3
              #                    free s1
              #                    free s3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,120
              #                    free s8
              #                          store 2_0:i32 temp_26_index_ptr_41:ptr->i32 
              #                    occupy s8 with temp_26_index_ptr_41
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_41:144 
              #                          a_41 = chi a_41:144 
              #                          new_var temp_27_index_ptr_41:ptr->i32 
              #                          temp_27_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_27_index_ptr_41
    li      s10, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(a6) already exist with 4_0
              #                    occupy a6 with 4_0
              #                    occupy s11 with _anonymous_of_a_41_0
    mul     s11,s1,a6
              #                    free s1
              #                    free a6
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,120
              #                    free s10
              #                          store 0_0:i32 temp_27_index_ptr_41:ptr->i32 
              #                    occupy s10 with temp_27_index_ptr_41
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_41:150 
              #                          a_41 = chi a_41:150 
              #                          new_var temp_28_index_ptr_41:ptr->i32 
              #                          temp_28_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_28_index_ptr_41
    li      a0, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a3 with _anonymous_of_a_41_0
    mul     a3,s1,a1
              #                    free s1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,120
              #                    free a0
              #                          store 1_0:i32 temp_28_index_ptr_41:ptr->i32 
              #                    occupy a0 with temp_28_index_ptr_41
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu a_41:156 
              #                          a_41 = chi a_41:156 
              #                          new_var temp_29_index_ptr_41:ptr->i32 
              #                          temp_29_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_29_index_ptr_41
    li      a1, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a3 with 6_0
    li      a3, 6
              #                    occupy a4 with _anonymous_of_a_41_0
    mul     a4,s1,a3
              #                    free s1
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,120
              #                    free a1
              #                          store 6_0:i32 temp_29_index_ptr_41:ptr->i32 
              #                    occupy a1 with temp_29_index_ptr_41
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu a_41:162 
              #                          a_41 = chi a_41:162 
              #                          new_var temp_30_index_ptr_41:ptr->i32 
              #                          temp_30_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_30_index_ptr_41
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a5 with _anonymous_of_a_41_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,120
              #                    free a3
              #                          store 5_0:i32 temp_30_index_ptr_41:ptr->i32 
              #                    occupy a3 with temp_30_index_ptr_41
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_41:168 
              #                          a_41 = chi a_41:168 
              #                          new_var temp_31_index_ptr_41:ptr->i32 
              #                          temp_31_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_31_index_ptr_41
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with 8_0
    li      a5, 8
              #                    occupy a6 with _anonymous_of_a_41_0
    mul     a6,s1,a5
              #                    free s1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,120
              #                    free a4
              #                          store 7_0:i32 temp_31_index_ptr_41:ptr->i32 
              #                    occupy a4 with temp_31_index_ptr_41
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_41:174 
              #                          a_41 = chi a_41:174 
              #                          new_var temp_32_index_ptr_41:ptr->i32 
              #                          temp_32_index_ptr_41 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_32_index_ptr_41
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
              #                    occupy a6 with _anonymous_of_a_41_0
    mul     a6,s1,s7
              #                    free s1
              #                    free s7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,120
              #                    free a5
              #                          store 8_0:i32 temp_32_index_ptr_41:ptr->i32 
              #                    occupy a5 with temp_32_index_ptr_41
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_41:180 
              #                          a_41 = chi a_41:180 
              #                          new_var i_41:i32 
              #                          new_var temp_33_ret_of_bubblesort_41:i32 
              #                          temp_33_ret_of_bubblesort_41 =  Call i32 bubblesort_0(a_41) 
              #                    saved register dumping to mem
              #                    store to temp_25_index_ptr_41 in mem offset legal
    sd      s4,96(sp)
              #                    release s4 with temp_25_index_ptr_41
              #                    store to temp_26_index_ptr_41 in mem offset legal
    sd      s8,88(sp)
              #                    release s8 with temp_26_index_ptr_41
              #                    store to temp_27_index_ptr_41 in mem offset legal
    sd      s10,80(sp)
              #                    release s10 with temp_27_index_ptr_41
              #                    store to temp_28_index_ptr_41 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_28_index_ptr_41
              #                    store to temp_29_index_ptr_41 in mem offset legal
    sd      a1,64(sp)
              #                    release a1 with temp_29_index_ptr_41
              #                    store to temp_23_index_ptr_41 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_23_index_ptr_41
              #                    store to temp_30_index_ptr_41 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with temp_30_index_ptr_41
              #                    store to temp_31_index_ptr_41 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_31_index_ptr_41
              #                    store to temp_32_index_ptr_41 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_32_index_ptr_41
              #                    store to temp_24_index_ptr_41 in mem offset legal
    sd      a7,104(sp)
              #                    release a7 with temp_24_index_ptr_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_41_0
              #                    load from a_41 in mem
    lw      a0,120(sp)
              #                    arg load ended


    call    bubblesort
              #                    store to temp_33_ret_of_bubblesort_41 in mem offset legal
    sw      a0,32(sp)
              #                          i_41 = i32 temp_33_ret_of_bubblesort_41 
              #                    occupy a0 with temp_33_ret_of_bubblesort_41
              #                    occupy a1 with i_41
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_57 
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_bubblesort_41, tracked: true } |     a1:Freed { symidx: i_41, tracked: true } | 
              #                          label while.head_57: 
.while.head_57:
              #                          new_var temp_34_ptr2globl_56:i32 
              #                          temp_34_ptr2globl_56 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_34_ptr2globl_56
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_35_cmp_56:i1 
              #                          temp_35_cmp_56 = icmp i32 Slt i_41, temp_34_ptr2globl_56 
              #                    occupy a1 with i_41
              #                    occupy a3 with temp_34_ptr2globl_56
              #                    occupy a4 with temp_35_cmp_56
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_35_cmp_56, label while.body_57, label while.exit_57 
              #                    occupy a4 with temp_35_cmp_56
              #                    free a4
              #                    occupy a4 with temp_35_cmp_56
    bnez    a4, .while.body_57
              #                    free a4
    j       .while.exit_57
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_bubblesort_41, tracked: true } |     a1:Freed { symidx: i_41, tracked: true } |     a3:Freed { symidx: temp_34_ptr2globl_56, tracked: true } |     a4:Freed { symidx: temp_35_cmp_56, tracked: true } | 
              #                          label while.body_57: 
.while.body_57:
              #                          new_var tmp_58:i32 
              #                          new_var temp_36_array_ptr_58:ptr->i32 
              #                          temp_36_array_ptr_58 = getelementptr a_41:Array:i32:[Some(10_0)] [Some(i_41)] 
              #                    occupy a2 with temp_36_array_ptr_58
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_41
              #                    occupy a6 with _anonymous_of_a_41_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,120
              #                    free a2
              #                          new_var temp_37_array_ele_58:i32 
              #                          temp_37_array_ele_58 = load temp_36_array_ptr_58:ptr->i32 
              #                    occupy a2 with temp_36_array_ptr_58
              #                    occupy a7 with temp_37_array_ele_58
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_58 = i32 temp_37_array_ele_58 
              #                    occupy a7 with temp_37_array_ele_58
              #                    occupy s1 with tmp_58
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_58) 
              #                    saved register dumping to mem
              #                    store to tmp_58 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with tmp_58
              #                    store to temp_33_ret_of_bubblesort_41 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_33_ret_of_bubblesort_41
              #                    store to i_41 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_41
              #                    store to temp_36_array_ptr_58 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_36_array_ptr_58
              #                    store to temp_34_ptr2globl_56 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_34_ptr2globl_56
              #                    store to temp_35_cmp_56 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_35_cmp_56
              #                    store to temp_37_array_ele_58 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_37_array_ele_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_58_0
              #                    load from tmp_58 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                          tmp_58 = i32 10_0 
              #                    occupy a0 with tmp_58
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_58) 
              #                    saved register dumping to mem
              #                    store to tmp_58 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with tmp_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_58_0
              #                    load from tmp_58 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_38_arithop_58:i32 
              #                          temp_38_arithop_58 = Add i32 i_41, 1_0 
              #                    occupy a0 with i_41
              #                    load from i_41 in mem


    lw      a0,36(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_38_arithop_58
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_41 = i32 temp_38_arithop_58 
              #                    occupy a2 with temp_38_arithop_58
              #                    occupy a0 with i_41
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_57 
              #                    store to i_41 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_41
              #                    store to temp_38_arithop_58 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_38_arithop_58
              #                    occupy a1 with _anonymous_of_i_41_0
              #                    load from i_41 in mem


    lw      a1,36(sp)
              #                    occupy a0 with _anonymous_of_temp_33_ret_of_bubblesort_41_0
              #                    load from temp_33_ret_of_bubblesort_41 in mem


    lw      a0,32(sp)
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: temp_33_ret_of_bubblesort_41, tracked: true } |     a1:Freed { symidx: i_41, tracked: true } |     a3:Freed { symidx: temp_34_ptr2globl_56, tracked: true } |     a4:Freed { symidx: temp_35_cmp_56, tracked: true } | 
              #                          label while.exit_57: 
.while.exit_57:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,168(sp)
              #                    load from s0_main_0 in mem
    ld      s0,160(sp)
              #                    store to temp_33_ret_of_bubblesort_41 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_33_ret_of_bubblesort_41
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_41, tracked: true } |     a3:Freed { symidx: temp_34_ptr2globl_56, tracked: true } |     a4:Freed { symidx: temp_35_cmp_56, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
