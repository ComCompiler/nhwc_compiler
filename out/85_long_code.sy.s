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
              #                          label L20_0: 
.L20_0:
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
              #                          mu arr_17:118 
              #                          arr_17 = chi arr_17:118 
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
              #                          mu arr_17:124 
              #                          arr_17 = chi arr_17:124 
              #                          jump label: branch_false_31 
              #                    store to tmp_32 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with tmp_32
              #                    store to temp_14_array_ptr_32 in mem offset legal
    sd      s9,48(sp)
              #                    release s9 with temp_14_array_ptr_32
              #                    store to temp_15_array_ele_32 in mem offset legal
    sw      a4,44(sp)
              #                    release a4 with temp_15_array_ele_32
              #                    store to temp_20_index_ptr_32 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_20_index_ptr_32
              #                    store to temp_13_arithop_32 in mem offset legal
    sw      s6,56(sp)
              #                    release s6 with temp_13_arithop_32
              #                    store to arr_17 in mem offset legal
    sd      a1,136(sp)
              #                    release a1 with arr_17
              #                    occupy a3 with _anonymous_of_temp_0_ptr2globl_23_0
              #                    load from temp_0_ptr2globl_23 in mem


    lw      a3,124(sp)
              #                    occupy a0 with _anonymous_of_arr_17_0
              #                    load from arr_17 in mem
    ld      a0,136(sp)
              #                    occupy a1 with _anonymous_of_i_19_0
              #                    load from i_19 in mem


    lw      a1,132(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s10:Freed { symidx: temp_11_array_ele_30, tracked: true } |     s11:Freed { symidx: temp_12_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s2:Freed { symidx: temp_7_arithop_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } |     s5:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_10_array_ptr_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: j_19, tracked: true } |     a3:Freed { symidx: temp_0_ptr2globl_23, tracked: true } |     a5:Freed { symidx: temp_1_arithop_23, tracked: true } |     a6:Freed { symidx: temp_2_cmp_23, tracked: true } |     a7:Freed { symidx: temp_3_ptr2globl_27, tracked: true } |     s10:Freed { symidx: temp_11_array_ele_30, tracked: true } |     s11:Freed { symidx: temp_12_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_arithop_27, tracked: true } |     s2:Freed { symidx: temp_7_arithop_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_27, tracked: true } |     s4:Freed { symidx: temp_6_cmp_27, tracked: true } |     s5:Freed { symidx: temp_8_array_ptr_30, tracked: true } |     s7:Freed { symidx: temp_9_array_ele_30, tracked: true } |     s8:Freed { symidx: temp_10_array_ptr_30, tracked: true } | 
              #                          label L21_0: 
.L21_0:
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
              #                    store to temp_6_cmp_27 in mem offset legal
    sb      s4,103(sp)
              #                    release s4 with temp_6_cmp_27
              #                    store to temp_11_array_ele_30 in mem offset legal
    sw      s10,68(sp)
              #                    release s10 with temp_11_array_ele_30
              #                    store to temp_7_arithop_30 in mem offset legal
    sw      s2,96(sp)
              #                    release s2 with temp_7_arithop_30
              #                    store to temp_21_arithop_29 in mem offset legal
    sw      s6,4(sp)
              #                    release s6 with temp_21_arithop_29
              #                    store to temp_10_array_ptr_30 in mem offset legal
    sd      s8,72(sp)
              #                    release s8 with temp_10_array_ptr_30
              #                    store to temp_5_arithop_27 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_5_arithop_27
              #                    store to temp_4_arithop_27 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_4_arithop_27
              #                    store to temp_12_cmp_30 in mem offset legal
    sb      s11,67(sp)
              #                    release s11 with temp_12_cmp_30
              #                    store to temp_9_array_ele_30 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_9_array_ele_30
              #                    store to temp_3_ptr2globl_27 in mem offset legal
    sw      a7,112(sp)
              #                    release a7 with temp_3_ptr2globl_27
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
              #                    store to temp_0_ptr2globl_23 in mem offset legal
    sw      a3,124(sp)
              #                    release a3 with temp_0_ptr2globl_23
              #                    store to j_19 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with j_19
              #                    store to temp_6_cmp_27 in mem offset legal
    sb      s4,103(sp)
              #                    release s4 with temp_6_cmp_27
              #                    store to temp_1_arithop_23 in mem offset legal
    sw      a5,120(sp)
              #                    release a5 with temp_1_arithop_23
              #                    store to temp_22_arithop_25 in mem offset legal
    sw      s2,0(sp)
              #                    release s2 with temp_22_arithop_25
              #                    store to temp_2_cmp_23 in mem offset legal
    sb      a6,119(sp)
              #                    release a6 with temp_2_cmp_23
              #                    store to temp_5_arithop_27 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_5_arithop_27
              #                    store to temp_4_arithop_27 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with temp_4_arithop_27
              #                    store to temp_3_ptr2globl_27 in mem offset legal
    sw      a7,112(sp)
              #                    release a7 with temp_3_ptr2globl_27
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
              #                          Define insertsort_0 [a_40] -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
              #                    mem layout:|ra_insertsort:8 at 128|s0_insertsort:8 at 120|a:8 at 112|i:4 at 108|temp_23_ptr2globl:4 at 104|temp_24_cmp:1 at 103|none:3 at 100|temp:4 at 96|temp_25_array_ptr:8 at 88|temp_26_array_ele:4 at 84|j:4 at 80|temp_27_arithop:4 at 76|none:4 at 72|temp_28_array_ptr:8 at 64|temp_29_array_ele:4 at 60|temp_30_cmp:1 at 59|temp_31_cmp:1 at 58|temp_32_logic:1 at 57|none:1 at 56|temp_33_arithop:4 at 52|none:4 at 48|temp_34_index_ptr:8 at 40|temp_35_array_ptr:8 at 32|temp_36_array_ele:4 at 28|temp_37_arithop:4 at 24|temp_38_arithop:4 at 20|none:4 at 16|temp_39_index_ptr:8 at 8|temp_40_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-136
              #                    store to ra_insertsort_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_insertsort_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                          new_var a_40:ptr->i32 
              #                          alloc i32 i_42 
              #                          alloc i32 temp_23_ptr2globl_45 
              #                          alloc i1 temp_24_cmp_45 
              #                          alloc i32 temp_47 
              #                          alloc ptr->i32 temp_25_array_ptr_47 
              #                          alloc i32 temp_26_array_ele_47 
              #                          alloc i32 j_47 
              #                          alloc i32 temp_27_arithop_47 
              #                          alloc ptr->i32 temp_28_array_ptr_52 
              #                          alloc i32 temp_29_array_ele_52 
              #                          alloc i1 temp_30_cmp_52 
              #                          alloc i1 temp_31_cmp_52 
              #                          alloc i1 temp_32_logic_52 
              #                          alloc i32 temp_33_arithop_54 
              #                          alloc ptr->i32 temp_34_index_ptr_54 
              #                          alloc ptr->i32 temp_35_array_ptr_54 
              #                          alloc i32 temp_36_array_ele_54 
              #                          alloc i32 temp_37_arithop_54 
              #                          alloc i32 temp_38_arithop_47 
              #                          alloc ptr->i32 temp_39_index_ptr_47 
              #                          alloc i32 temp_40_arithop_47 
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } | 
              #                          label L19_0: 
.L19_0:
              #                          new_var i_42:i32 
              #                          i_42 = i32 1_0 
              #                    occupy a1 with i_42
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } | 
              #                          label while.head_46: 
.while.head_46:
              #                          new_var temp_23_ptr2globl_45:i32 
              #                          temp_23_ptr2globl_45 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_23_ptr2globl_45
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_24_cmp_45:i1 
              #                          temp_24_cmp_45 = icmp i32 Slt i_42, temp_23_ptr2globl_45 
              #                    occupy a1 with i_42
              #                    occupy a3 with temp_23_ptr2globl_45
              #                    occupy a4 with temp_24_cmp_45
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_24_cmp_45, label while.body_46, label while.exit_46 
              #                    occupy a4 with temp_24_cmp_45
              #                    free a4
              #                    occupy a4 with temp_24_cmp_45
    bnez    a4, .while.body_46
              #                    free a4
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } | 
              #                          label while.body_46: 
.while.body_46:
              #                          new_var temp_47:i32 
              #                          new_var temp_25_array_ptr_47:ptr->i32 
              #                          temp_25_array_ptr_47 = getelementptr a_40:ptr->i32 [Some(i_42)] 
              #                    occupy a2 with temp_25_array_ptr_47
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_42
              #                    occupy a6 with _anonymous_of_a_40_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a0 with a_40
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_26_array_ele_47:i32 
              #                          temp_26_array_ele_47 = load temp_25_array_ptr_47:ptr->i32 
              #                    occupy a2 with temp_25_array_ptr_47
              #                    occupy a7 with temp_26_array_ele_47
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          temp_47 = i32 temp_26_array_ele_47 
              #                    occupy a7 with temp_26_array_ele_47
              #                    occupy s1 with temp_47
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var j_47:i32 
              #                          new_var temp_27_arithop_47:i32 
              #                          temp_27_arithop_47 = Sub i32 i_42, 1_0 
              #                    occupy a1 with i_42
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_27_arithop_47
              #                    regtab:    a0:Freed { symidx: a_40, tracked: true } |     a1:Occupied { symidx: i_42, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_25_array_ptr_47, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_a_40_0, tracked: false } |     a7:Freed { symidx: temp_26_array_ele_47, tracked: true } |     s1:Freed { symidx: temp_47, tracked: true } |     s2:Occupied { symidx: temp_27_arithop_47, tracked: true, occupy_count: 1 } | 


    sub     s2,a1,a5
              #                    free a1
              #                    free a5
              #                    free s2
              #                          j_47 = i32 temp_27_arithop_47 
              #                    occupy s2 with temp_27_arithop_47
              #                    occupy s3 with j_47
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_25_array_ptr_47, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } |     a7:Freed { symidx: temp_26_array_ele_47, tracked: true } |     s1:Freed { symidx: temp_47, tracked: true } |     s2:Freed { symidx: temp_27_arithop_47, tracked: true } |     s3:Freed { symidx: j_47, tracked: true } | 
              #                          label while.head_53: 
.while.head_53:
              #                          new_var temp_28_array_ptr_52:ptr->i32 
              #                          temp_28_array_ptr_52 = getelementptr a_40:ptr->i32 [Some(j_47)] 
              #                    occupy a5 with temp_28_array_ptr_52
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s3 with j_47
              #                    occupy s4 with _anonymous_of_a_40_0
    mul     s4,a6,s3
              #                    free a6
              #                    free s3
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy a0 with a_40
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          new_var temp_29_array_ele_52:i32 
              #                          temp_29_array_ele_52 = load temp_28_array_ptr_52:ptr->i32 
              #                    occupy a5 with temp_28_array_ptr_52
              #                    occupy s5 with temp_29_array_ele_52
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          new_var temp_30_cmp_52:i1 
              #                          temp_30_cmp_52 = icmp i32 Slt temp_47, temp_29_array_ele_52 
              #                    occupy s1 with temp_47
              #                    occupy s5 with temp_29_array_ele_52
              #                    occupy s6 with temp_30_cmp_52
    slt     s6,s1,s5
              #                    free s1
              #                    free s5
              #                    free s6
              #                          new_var temp_31_cmp_52:i1 
              #                          temp_31_cmp_52 = icmp i32 Sgt j_47, -1_0 
              #                    occupy s3 with j_47
              #                    occupy s7 with -1_0
    li      s7, -1
              #                    occupy s8 with temp_31_cmp_52
    slt     s8,s7,s3
              #                    free s3
              #                    free s7
              #                    free s8
              #                          new_var temp_32_logic_52:i1 
              #                          temp_32_logic_52 = And i1 temp_31_cmp_52, temp_30_cmp_52 
              #                    occupy s8 with temp_31_cmp_52
              #                    occupy s6 with temp_30_cmp_52
              #                    occupy s9 with temp_32_logic_52
    and     s9,s8,s6
              #                    free s8
              #                    free s6
              #                    free s9
              #                          br i1 temp_32_logic_52, label while.body_53, label while.exit_53 
              #                    occupy s9 with temp_32_logic_52
              #                    free s9
              #                    occupy s9 with temp_32_logic_52
    bnez    s9, .while.body_53
              #                    free s9
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_25_array_ptr_47, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } |     a5:Freed { symidx: temp_28_array_ptr_52, tracked: true } |     a7:Freed { symidx: temp_26_array_ele_47, tracked: true } |     s1:Freed { symidx: temp_47, tracked: true } |     s2:Freed { symidx: temp_27_arithop_47, tracked: true } |     s3:Freed { symidx: j_47, tracked: true } |     s5:Freed { symidx: temp_29_array_ele_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52, tracked: true } |     s8:Freed { symidx: temp_31_cmp_52, tracked: true } |     s9:Freed { symidx: temp_32_logic_52, tracked: true } | 
              #                          label while.body_53: 
.while.body_53:
              #                          new_var temp_33_arithop_54:i32 
              #                          temp_33_arithop_54 = Add i32 j_47, 1_0 
              #                    occupy s3 with j_47
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s4 with temp_33_arithop_54
    add     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          new_var temp_34_index_ptr_54:ptr->i32 
              #                          temp_34_index_ptr_54 = getelementptr a_40:ptr->i32 [Some(temp_33_arithop_54)] 
              #                    occupy s7 with temp_34_index_ptr_54
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_33_arithop_54
              #                    occupy s10 with _anonymous_of_a_40_0
    mul     s10,a6,s4
              #                    free a6
              #                    free s4
    add     s7,s7,s10
              #                    free s10
    slli s7,s7,2
              #                    occupy a0 with a_40
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_35_array_ptr_54:ptr->i32 
              #                          temp_35_array_ptr_54 = getelementptr a_40:ptr->i32 [Some(j_47)] 
              #                    occupy s11 with temp_35_array_ptr_54
    li      s11, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s3 with j_47
              #                    occupy s10 with _anonymous_of_a_40_0
    mul     s10,a6,s3
              #                    free a6
              #                    free s3
    add     s11,s11,s10
              #                    free s10
    slli s11,s11,2
              #                    occupy a0 with a_40
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_36_array_ele_54:i32 
              #                          temp_36_array_ele_54 = load temp_35_array_ptr_54:ptr->i32 
              #                    occupy s11 with temp_35_array_ptr_54
              #                    occupy a6 with temp_36_array_ele_54
    lw      a6,0(s11)
              #                    free a6
              #                    free s11
              #                          store temp_36_array_ele_54:i32 temp_34_index_ptr_54:ptr->i32 
              #                    occupy s7 with temp_34_index_ptr_54
              #                    occupy a6 with temp_36_array_ele_54
    sw      a6,0(s7)
              #                    free a6
              #                    free s7
              #                          mu a_40:198 
              #                          a_40 = chi a_40:198 
              #                          new_var temp_37_arithop_54:i32 
              #                          temp_37_arithop_54 = Sub i32 j_47, 1_0 
              #                    occupy s3 with j_47
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    store to a_40 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_40
              #                    occupy a0 with temp_37_arithop_54
              #                    regtab:    a0:Occupied { symidx: temp_37_arithop_54, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_25_array_ptr_47, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } |     a5:Freed { symidx: temp_28_array_ptr_52, tracked: true } |     a6:Freed { symidx: temp_36_array_ele_54, tracked: true } |     a7:Freed { symidx: temp_26_array_ele_47, tracked: true } |     s10:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s11:Freed { symidx: temp_35_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_47, tracked: true } |     s2:Freed { symidx: temp_27_arithop_47, tracked: true } |     s3:Occupied { symidx: j_47, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_33_arithop_54, tracked: true } |     s5:Freed { symidx: temp_29_array_ele_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52, tracked: true } |     s7:Freed { symidx: temp_34_index_ptr_54, tracked: true } |     s8:Freed { symidx: temp_31_cmp_52, tracked: true } |     s9:Freed { symidx: temp_32_logic_52, tracked: true } | 


    sub     a0,s3,s10
              #                    free s3
              #                    free s10
              #                    free a0
              #                          j_47 = i32 temp_37_arithop_54 
              #                    occupy a0 with temp_37_arithop_54
              #                    occupy s3 with j_47
    mv      s3, a0
              #                    free a0
              #                    free s3
              #                          jump label: while.head_53 
              #                    store to temp_34_index_ptr_54 in mem offset legal
    sd      s7,40(sp)
              #                    release s7 with temp_34_index_ptr_54
              #                    store to temp_30_cmp_52 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_30_cmp_52
              #                    store to temp_36_array_ele_54 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with temp_36_array_ele_54
              #                    store to temp_35_array_ptr_54 in mem offset legal
    sd      s11,32(sp)
              #                    release s11 with temp_35_array_ptr_54
              #                    store to temp_33_arithop_54 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with temp_33_arithop_54
              #                    store to temp_28_array_ptr_52 in mem offset legal
    sd      a5,64(sp)
              #                    release a5 with temp_28_array_ptr_52
              #                    store to temp_37_arithop_54 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_37_arithop_54
              #                    store to temp_31_cmp_52 in mem offset legal
    sb      s8,58(sp)
              #                    release s8 with temp_31_cmp_52
              #                    store to temp_29_array_ele_52 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_29_array_ele_52
              #                    store to temp_32_logic_52 in mem offset legal
    sb      s9,57(sp)
              #                    release s9 with temp_32_logic_52
              #                    occupy a0 with _anonymous_of_a_40_0
              #                    load from a_40 in mem
    ld      a0,112(sp)
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } |     a2:Freed { symidx: temp_25_array_ptr_47, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } |     a5:Freed { symidx: temp_28_array_ptr_52, tracked: true } |     a7:Freed { symidx: temp_26_array_ele_47, tracked: true } |     s1:Freed { symidx: temp_47, tracked: true } |     s2:Freed { symidx: temp_27_arithop_47, tracked: true } |     s3:Freed { symidx: j_47, tracked: true } |     s5:Freed { symidx: temp_29_array_ele_52, tracked: true } |     s6:Freed { symidx: temp_30_cmp_52, tracked: true } |     s8:Freed { symidx: temp_31_cmp_52, tracked: true } |     s9:Freed { symidx: temp_32_logic_52, tracked: true } | 
              #                          label while.exit_53: 
.while.exit_53:
              #                          new_var temp_38_arithop_47:i32 
              #                          temp_38_arithop_47 = Add i32 j_47, 1_0 
              #                    occupy s3 with j_47
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s4 with temp_38_arithop_47
    add     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          new_var temp_39_index_ptr_47:ptr->i32 
              #                          temp_39_index_ptr_47 = getelementptr a_40:ptr->i32 [Some(temp_38_arithop_47)] 
              #                    occupy s7 with temp_39_index_ptr_47
    li      s7, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_38_arithop_47
              #                    occupy s10 with _anonymous_of_a_40_0
    mul     s10,a6,s4
              #                    free a6
              #                    free s4
    add     s7,s7,s10
              #                    free s10
    slli s7,s7,2
              #                    occupy a0 with a_40
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          store temp_47:i32 temp_39_index_ptr_47:ptr->i32 
              #                    occupy s7 with temp_39_index_ptr_47
              #                    occupy s1 with temp_47
    sw      s1,0(s7)
              #                    free s1
              #                    free s7
              #                          mu a_40:211 
              #                          a_40 = chi a_40:211 
              #                          new_var temp_40_arithop_47:i32 
              #                          temp_40_arithop_47 = Add i32 i_42, 1_0 
              #                    occupy a1 with i_42
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s11 with temp_40_arithop_47
    add     s11,a1,a6
              #                    free a1
              #                    free a6
              #                    free s11
              #                          i_42 = i32 temp_40_arithop_47 
              #                    occupy s11 with temp_40_arithop_47
              #                    occupy a1 with i_42
    mv      a1, s11
              #                    free s11
              #                    free a1
              #                          jump label: while.head_46 
              #                    store to temp_25_array_ptr_47 in mem offset legal
    sd      a2,88(sp)
              #                    release a2 with temp_25_array_ptr_47
              #                    store to temp_39_index_ptr_47 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_39_index_ptr_47
              #                    store to temp_30_cmp_52 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_30_cmp_52
              #                    store to temp_27_arithop_47 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_27_arithop_47
              #                    store to temp_26_array_ele_47 in mem offset legal
    sw      a7,84(sp)
              #                    release a7 with temp_26_array_ele_47
              #                    store to j_47 in mem offset legal
    sw      s3,80(sp)
              #                    release s3 with j_47
              #                    store to temp_40_arithop_47 in mem offset legal
    sw      s11,4(sp)
              #                    release s11 with temp_40_arithop_47
              #                    store to temp_38_arithop_47 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_38_arithop_47
              #                    store to temp_28_array_ptr_52 in mem offset legal
    sd      a5,64(sp)
              #                    release a5 with temp_28_array_ptr_52
              #                    store to temp_24_cmp_45 in mem offset legal
    sb      a4,103(sp)
              #                    release a4 with temp_24_cmp_45
              #                    store to temp_31_cmp_52 in mem offset legal
    sb      s8,58(sp)
              #                    release s8 with temp_31_cmp_52
              #                    store to temp_47 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with temp_47
              #                    store to temp_29_array_ele_52 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_29_array_ele_52
              #                    store to temp_32_logic_52 in mem offset legal
    sb      s9,57(sp)
              #                    release s9 with temp_32_logic_52
              #                    store to temp_23_ptr2globl_45 in mem offset legal
    sw      a3,104(sp)
              #                    release a3 with temp_23_ptr2globl_45
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: i_42, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } | 
              #                          label while.exit_46: 
.while.exit_46:
              #                          ret 0_0 
              #                    load from ra_insertsort_0 in mem
    ld      ra,128(sp)
              #                    load from s0_insertsort_0 in mem
    ld      s0,120(sp)
              #                    store to a_40 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_40
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_42, tracked: true } |     a3:Freed { symidx: temp_23_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_24_cmp_45, tracked: true } | 
              #                    regtab 
              #                          Define QuickSort_0 [arr_60, low_60, high_60] -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
              #                    mem layout:|ra_QuickSort:8 at 192|s0_QuickSort:8 at 184|arr:8 at 176|low:4 at 172|high:4 at 168|temp_41_cmp:1 at 167|none:3 at 164|i:4 at 160|j:4 at 156|k:4 at 152|temp_42_array_ptr:8 at 144|temp_43_array_ele:4 at 140|temp_44_cmp:1 at 139|none:3 at 136|temp_45_arithop:4 at 132|none:4 at 128|temp_46_array_ptr:8 at 120|temp_47_array_ele:4 at 116|temp_48_cmp:1 at 115|temp_49_cmp:1 at 114|temp_50_logic:1 at 113|none:1 at 112|temp_51_arithop:4 at 108|temp_52_cmp:1 at 107|none:3 at 104|temp_53_index_ptr:8 at 96|temp_54_array_ptr:8 at 88|temp_55_array_ele:4 at 84|temp_56_arithop:4 at 80|temp_57_array_ptr:8 at 72|temp_58_array_ele:4 at 68|temp_59_cmp:1 at 67|temp_60_cmp:1 at 66|temp_61_logic:1 at 65|none:1 at 64|temp_62_arithop:4 at 60|temp_63_cmp:1 at 59|none:3 at 56|temp_64_index_ptr:8 at 48|temp_65_array_ptr:8 at 40|temp_66_array_ele:4 at 36|temp_67_arithop:4 at 32|temp_68_index_ptr:8 at 24|tmp:4 at 20|temp_69_arithop:4 at 16|temp_70_ret_of_QuickSort:4 at 12|temp_71_arithop:4 at 8|temp_72_ret_of_QuickSort:4 at 4|none:4 at 0
    addi    sp,sp,-200
              #                    store to ra_QuickSort_0 in mem offset legal
    sd      ra,192(sp)
              #                    store to s0_QuickSort_0 in mem offset legal
    sd      s0,184(sp)
    addi    s0,sp,200
              #                          new_var arr_60:ptr->i32 
              #                          alloc i1 temp_41_cmp_63 
              #                          alloc i32 i_65 
              #                          alloc i32 j_65 
              #                          alloc i32 k_65 
              #                          alloc ptr->i32 temp_42_array_ptr_65 
              #                          alloc i32 temp_43_array_ele_65 
              #                          alloc i1 temp_44_cmp_72 
              #                          alloc i32 temp_45_arithop_75 
              #                          alloc ptr->i32 temp_46_array_ptr_75 
              #                          alloc i32 temp_47_array_ele_75 
              #                          alloc i1 temp_48_cmp_75 
              #                          alloc i1 temp_49_cmp_75 
              #                          alloc i1 temp_50_logic_75 
              #                          alloc i32 temp_51_arithop_77 
              #                          alloc i1 temp_52_cmp_79 
              #                          alloc ptr->i32 temp_53_index_ptr_81 
              #                          alloc ptr->i32 temp_54_array_ptr_81 
              #                          alloc i32 temp_55_array_ele_81 
              #                          alloc i32 temp_56_arithop_81 
              #                          alloc ptr->i32 temp_57_array_ptr_84 
              #                          alloc i32 temp_58_array_ele_84 
              #                          alloc i1 temp_59_cmp_84 
              #                          alloc i1 temp_60_cmp_84 
              #                          alloc i1 temp_61_logic_84 
              #                          alloc i32 temp_62_arithop_86 
              #                          alloc i1 temp_63_cmp_88 
              #                          alloc ptr->i32 temp_64_index_ptr_90 
              #                          alloc ptr->i32 temp_65_array_ptr_90 
              #                          alloc i32 temp_66_array_ele_90 
              #                          alloc i32 temp_67_arithop_90 
              #                          alloc ptr->i32 temp_68_index_ptr_65 
              #                          alloc i32 tmp_65 
              #                          alloc i32 temp_69_arithop_65 
              #                          alloc i32 temp_70_ret_of_QuickSort_65 
              #                          alloc i32 temp_71_arithop_65 
              #                          alloc i32 temp_72_ret_of_QuickSort_65 
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } | 
              #                          label L17_0: 
.L17_0:
              #                          new_var temp_41_cmp_63:i1 
              #                          temp_41_cmp_63 = icmp i32 Slt low_60, high_60 
              #                    occupy a1 with low_60
              #                    occupy a2 with high_60
              #                    occupy a3 with temp_41_cmp_63
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_41_cmp_63, label branch_true_64, label branch_false_64 
              #                    occupy a3 with temp_41_cmp_63
              #                    free a3
              #                    occupy a3 with temp_41_cmp_63
    bnez    a3, .branch_true_64
              #                    free a3
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } | 
              #                          label branch_true_64: 
.branch_true_64:
              #                          new_var i_65:i32 
              #                          i_65 = i32 low_60 
              #                    occupy a1 with low_60
              #                    occupy a4 with i_65
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          new_var j_65:i32 
              #                          j_65 = i32 high_60 
              #                    occupy a2 with high_60
              #                    occupy a5 with j_65
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                          new_var k_65:i32 
              #                          new_var temp_42_array_ptr_65:ptr->i32 
              #                          temp_42_array_ptr_65 = getelementptr arr_60:ptr->i32 [Some(low_60)] 
              #                    occupy a6 with temp_42_array_ptr_65
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a1 with low_60
              #                    occupy s1 with _anonymous_of_arr_60_0
    mul     s1,a7,a1
              #                    free a7
              #                    free a1
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy a0 with arr_60
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_43_array_ele_65:i32 
              #                          temp_43_array_ele_65 = load temp_42_array_ptr_65:ptr->i32 
              #                    occupy a6 with temp_42_array_ptr_65
              #                    occupy s2 with temp_43_array_ele_65
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                          k_65 = i32 temp_43_array_ele_65 
              #                    occupy s2 with temp_43_array_ele_65
              #                    occupy s3 with k_65
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } | 
              #                          label while.head_73: 
.while.head_73:
              #                          new_var temp_44_cmp_72:i1 
              #                          temp_44_cmp_72 = icmp i32 Slt i_65, j_65 
              #                    occupy a4 with i_65
              #                    occupy a5 with j_65
              #                    occupy a7 with temp_44_cmp_72
    slt     a7,a4,a5
              #                    free a4
              #                    free a5
              #                    free a7
              #                          br i1 temp_44_cmp_72, label while.body_73, label while.exit_73 
              #                    occupy a7 with temp_44_cmp_72
              #                    free a7
              #                    occupy a7 with temp_44_cmp_72
    bnez    a7, .while.body_73
              #                    free a7
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } | 
              #                          label while.body_73: 
.while.body_73:
              #                          new_var temp_45_arithop_75:i32 
              #                          temp_45_arithop_75 = Sub i32 k_65, 1_0 
              #                    occupy s3 with k_65
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_45_arithop_75
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Occupied { symidx: k_65, tracked: true, occupy_count: 1 } |     s4:Occupied { symidx: temp_45_arithop_75, tracked: true, occupy_count: 1 } | 


    sub     s4,s3,s1
              #                    free s3
              #                    free s1
              #                    free s4
              #                          new_var temp_46_array_ptr_75:ptr->i32 
              #                          temp_46_array_ptr_75 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
              #                    occupy s5 with temp_46_array_ptr_75
    li      s5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with j_65
              #                    occupy s6 with _anonymous_of_arr_60_0
    mul     s6,s1,a5
              #                    free s1
              #                    free a5
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with arr_60
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_47_array_ele_75:i32 
              #                          temp_47_array_ele_75 = load temp_46_array_ptr_75:ptr->i32 
              #                    occupy s5 with temp_46_array_ptr_75
              #                    occupy s7 with temp_47_array_ele_75
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_48_cmp_75:i1 
              #                          temp_48_cmp_75 = icmp i32 Sgt temp_47_array_ele_75, temp_45_arithop_75 
              #                    occupy s7 with temp_47_array_ele_75
              #                    occupy s4 with temp_45_arithop_75
              #                    occupy s8 with temp_48_cmp_75
    slt     s8,s4,s7
              #                    free s7
              #                    free s4
              #                    free s8
              #                          new_var temp_49_cmp_75:i1 
              #                          temp_49_cmp_75 = icmp i32 Slt i_65, j_65 
              #                    occupy a4 with i_65
              #                    occupy a5 with j_65
              #                    occupy s9 with temp_49_cmp_75
    slt     s9,a4,a5
              #                    free a4
              #                    free a5
              #                    free s9
              #                          new_var temp_50_logic_75:i1 
              #                          temp_50_logic_75 = And i1 temp_49_cmp_75, temp_48_cmp_75 
              #                    occupy s9 with temp_49_cmp_75
              #                    occupy s8 with temp_48_cmp_75
              #                    occupy s10 with temp_50_logic_75
    and     s10,s9,s8
              #                    free s9
              #                    free s8
              #                    free s10
              #                          br i1 temp_50_logic_75, label while.body_76, label while.exit_76 
              #                    occupy s10 with temp_50_logic_75
              #                    free s10
              #                    occupy s10 with temp_50_logic_75
    bnez    s10, .while.body_76
              #                    free s10
    j       .while.exit_76
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label while.body_76: 
.while.body_76:
              #                          new_var temp_51_arithop_77:i32 
              #                          temp_51_arithop_77 = Sub i32 j_65, 1_0 
              #                    occupy a5 with j_65
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s6 with temp_51_arithop_77
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Occupied { symidx: j_65, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s6:Occupied { symidx: temp_51_arithop_77, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 


    sub     s6,a5,s1
              #                    free a5
              #                    free s1
              #                    free s6
              #                          j_65 = i32 temp_51_arithop_77 
              #                    occupy s6 with temp_51_arithop_77
              #                    occupy a5 with j_65
    mv      a5, s6
              #                    free s6
              #                    free a5
              #                          jump label: while.body_73 
              #                    store to temp_51_arithop_77 in mem offset legal
    sw      s6,108(sp)
              #                    release s6 with temp_51_arithop_77
              #                    store to temp_47_array_ele_75 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_47_array_ele_75
              #                    store to temp_45_arithop_75 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_45_arithop_75
              #                    store to temp_46_array_ptr_75 in mem offset legal
    sd      s5,120(sp)
              #                    release s5 with temp_46_array_ptr_75
              #                    store to temp_50_logic_75 in mem offset legal
    sb      s10,113(sp)
              #                    release s10 with temp_50_logic_75
              #                    store to temp_48_cmp_75 in mem offset legal
    sb      s8,115(sp)
              #                    release s8 with temp_48_cmp_75
              #                    store to temp_49_cmp_75 in mem offset legal
    sb      s9,114(sp)
              #                    release s9 with temp_49_cmp_75
    j       .while.body_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label while.exit_76: 
.while.exit_76:
              #                          new_var temp_52_cmp_79:i1 
              #                          temp_52_cmp_79 = icmp i32 Slt i_65, j_65 
              #                    occupy a4 with i_65
              #                    occupy a5 with j_65
              #                    occupy s1 with temp_52_cmp_79
    slt     s1,a4,a5
              #                    free a4
              #                    free a5
              #                    free s1
              #                          br i1 temp_52_cmp_79, label branch_true_80, label branch_false_80 
              #                    occupy s1 with temp_52_cmp_79
              #                    free s1
              #                    occupy s1 with temp_52_cmp_79
    bnez    s1, .branch_true_80
              #                    free s1
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                          new_var temp_53_index_ptr_81:ptr->i32 
              #                          temp_53_index_ptr_81 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
              #                    occupy s6 with temp_53_index_ptr_81
    li      s6, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a4 with i_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with _anonymous_of_arr_60_0
    mul     a0,s11,a4
              #                    free s11
              #                    free a4
    add     s6,s6,a0
              #                    free a0
    slli s6,s6,2
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,176(sp)
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_54_array_ptr_81:ptr->i32 
              #                          temp_54_array_ptr_81 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
              #                    occupy s11 with temp_54_array_ptr_81
    li      s11, 0
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_65
              #                    store to low_60 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_60
              #                    occupy a1 with _anonymous_of_arr_60_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     s11,s11,a1
              #                    free a1
    slli s11,s11,2
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,176(sp)
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_55_array_ele_81:i32 
              #                          temp_55_array_ele_81 = load temp_54_array_ptr_81:ptr->i32 
              #                    occupy s11 with temp_54_array_ptr_81
              #                    occupy a1 with temp_55_array_ele_81
    lw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          store temp_55_array_ele_81:i32 temp_53_index_ptr_81:ptr->i32 
              #                    occupy s6 with temp_53_index_ptr_81
              #                    occupy a1 with temp_55_array_ele_81
    sw      a1,0(s6)
              #                    free a1
              #                    free s6
              #                          mu arr_60:290 
              #                          arr_60 = chi arr_60:290 
              #                          new_var temp_56_arithop_81:i32 
              #                          temp_56_arithop_81 = Add i32 i_65, 1_0 
              #                    occupy a4 with i_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_55_array_ele_81 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_55_array_ele_81
              #                    occupy a1 with temp_56_arithop_81
    add     a1,a4,a0
              #                    free a4
              #                    free a0
              #                    free a1
              #                          i_65 = i32 temp_56_arithop_81 
              #                    occupy a1 with temp_56_arithop_81
              #                    occupy a4 with i_65
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                          jump label: branch_false_80 
              #                    store to temp_53_index_ptr_81 in mem offset legal
    sd      s6,96(sp)
              #                    release s6 with temp_53_index_ptr_81
              #                    store to temp_56_arithop_81 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with temp_56_arithop_81
              #                    store to temp_54_array_ptr_81 in mem offset legal
    sd      s11,88(sp)
              #                    release s11 with temp_54_array_ptr_81
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_60_0
              #                    load from low_60 in mem


    lw      a1,172(sp)
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label while.head_85: 
.while.head_85:
              #                          new_var temp_57_array_ptr_84:ptr->i32 
              #                          temp_57_array_ptr_84 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
              #                    occupy s6 with temp_57_array_ptr_84
    li      s6, 0
              #                    occupy s11 with 1_0
    li      s11, 1
              #                    occupy a4 with i_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with _anonymous_of_arr_60_0
    mul     a0,s11,a4
              #                    free s11
              #                    free a4
    add     s6,s6,a0
              #                    free a0
    slli s6,s6,2
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,176(sp)
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_58_array_ele_84:i32 
              #                          temp_58_array_ele_84 = load temp_57_array_ptr_84:ptr->i32 
              #                    occupy s6 with temp_57_array_ptr_84
              #                    occupy s11 with temp_58_array_ele_84
    lw      s11,0(s6)
              #                    free s11
              #                    free s6
              #                          new_var temp_59_cmp_84:i1 
              #                          temp_59_cmp_84 = icmp i32 Slt temp_58_array_ele_84, k_65 
              #                    occupy s11 with temp_58_array_ele_84
              #                    occupy s3 with k_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with temp_59_cmp_84
    slt     a0,s11,s3
              #                    free s11
              #                    free s3
              #                    free a0
              #                          new_var temp_60_cmp_84:i1 
              #                          temp_60_cmp_84 = icmp i32 Slt i_65, j_65 
              #                    occupy a4 with i_65
              #                    occupy a5 with j_65
              #                    store to temp_59_cmp_84 in mem offset legal
    sb      a0,67(sp)
              #                    release a0 with temp_59_cmp_84
              #                    occupy a0 with temp_60_cmp_84
    slt     a0,a4,a5
              #                    free a4
              #                    free a5
              #                    free a0
              #                          new_var temp_61_logic_84:i1 
              #                          temp_61_logic_84 = And i1 temp_60_cmp_84, temp_59_cmp_84 
              #                    occupy a0 with temp_60_cmp_84
              #                    store to low_60 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_60
              #                    occupy a1 with temp_59_cmp_84
              #                    load from temp_59_cmp_84 in mem
    lb      a1,67(sp)
              #                    store to high_60 in mem offset legal
    sw      a2,168(sp)
              #                    release a2 with high_60
              #                    occupy a2 with temp_61_logic_84
    and     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_61_logic_84, label while.body_85, label while.exit_85 
              #                    occupy a2 with temp_61_logic_84
              #                    free a2
              #                    store to temp_57_array_ptr_84 in mem offset legal
    sd      s6,72(sp)
              #                    release s6 with temp_57_array_ptr_84
              #                    occupy a2 with temp_61_logic_84
    bnez    a2, .while.body_85
              #                    free a2
    j       .while.exit_85
              #                    regtab     a0:Freed { symidx: temp_60_cmp_84, tracked: true } |     a1:Freed { symidx: temp_59_cmp_84, tracked: true } |     a2:Freed { symidx: temp_61_logic_84, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s11:Freed { symidx: temp_58_array_ele_84, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label while.body_85: 
.while.body_85:
              #                          new_var temp_62_arithop_86:i32 
              #                          temp_62_arithop_86 = Add i32 i_65, 1_0 
              #                    occupy a4 with i_65
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    store to temp_60_cmp_84 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_60_cmp_84
              #                    occupy a0 with temp_62_arithop_86
    add     a0,a4,s6
              #                    free a4
              #                    free s6
              #                    free a0
              #                          i_65 = i32 temp_62_arithop_86 
              #                    occupy a0 with temp_62_arithop_86
              #                    occupy a4 with i_65
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_85 
              #                    store to temp_62_arithop_86 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_62_arithop_86
              #                    store to temp_59_cmp_84 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_59_cmp_84
              #                    store to temp_61_logic_84 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_61_logic_84
              #                    store to temp_58_array_ele_84 in mem offset legal
    sw      s11,68(sp)
              #                    release s11 with temp_58_array_ele_84
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_60_0
              #                    load from low_60 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_60_0
              #                    load from high_60 in mem


    lw      a2,168(sp)
    j       .while.head_85
              #                    regtab     a0:Freed { symidx: temp_60_cmp_84, tracked: true } |     a1:Freed { symidx: temp_59_cmp_84, tracked: true } |     a2:Freed { symidx: temp_61_logic_84, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s11:Freed { symidx: temp_58_array_ele_84, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label while.exit_85: 
.while.exit_85:
              #                          new_var temp_63_cmp_88:i1 
              #                          temp_63_cmp_88 = icmp i32 Slt i_65, j_65 
              #                    occupy a4 with i_65
              #                    occupy a5 with j_65
              #                    occupy s6 with temp_63_cmp_88
    slt     s6,a4,a5
              #                    free a4
              #                    free a5
              #                    free s6
              #                          br i1 temp_63_cmp_88, label branch_true_89, label branch_false_89 
              #                    occupy s6 with temp_63_cmp_88
              #                    free s6
              #                    store to temp_63_cmp_88 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_63_cmp_88
              #                    occupy s6 with temp_63_cmp_88
              #                    load from temp_63_cmp_88 in mem
    lb      s6,59(sp)
    bnez    s6, .branch_true_89
              #                    free s6
              #                    store to temp_63_cmp_88 in mem offset legal
    sb      s6,59(sp)
              #                    release s6 with temp_63_cmp_88
    j       .branch_false_89
              #                    regtab     a0:Freed { symidx: temp_60_cmp_84, tracked: true } |     a1:Freed { symidx: temp_59_cmp_84, tracked: true } |     a2:Freed { symidx: temp_61_logic_84, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s11:Freed { symidx: temp_58_array_ele_84, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label branch_true_89: 
.branch_true_89:
              #                          new_var temp_64_index_ptr_90:ptr->i32 
              #                          temp_64_index_ptr_90 = getelementptr arr_60:ptr->i32 [Some(j_65)] 
              #                    occupy s6 with temp_64_index_ptr_90
    li      s6, 0
              #                    store to temp_60_cmp_84 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_60_cmp_84
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_65
              #                    store to temp_59_cmp_84 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_59_cmp_84
              #                    occupy a1 with _anonymous_of_arr_60_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,176(sp)
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_65_array_ptr_90:ptr->i32 
              #                          temp_65_array_ptr_90 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
              #                    occupy a1 with temp_65_array_ptr_90
    li      a1, 0
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a4 with i_65
              #                    store to temp_61_logic_84 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_61_logic_84
              #                    occupy a2 with _anonymous_of_arr_60_0
    mul     a2,a0,a4
              #                    free a0
              #                    free a4
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,176(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_66_array_ele_90:i32 
              #                          temp_66_array_ele_90 = load temp_65_array_ptr_90:ptr->i32 
              #                    occupy a1 with temp_65_array_ptr_90
              #                    occupy a2 with temp_66_array_ele_90
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          store temp_66_array_ele_90:i32 temp_64_index_ptr_90:ptr->i32 
              #                    occupy s6 with temp_64_index_ptr_90
              #                    occupy a2 with temp_66_array_ele_90
    sw      a2,0(s6)
              #                    free a2
              #                    free s6
              #                          mu arr_60:336 
              #                          arr_60 = chi arr_60:336 
              #                          new_var temp_67_arithop_90:i32 
              #                          temp_67_arithop_90 = Sub i32 j_65, 1_0 
              #                    occupy a5 with j_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_65_array_ptr_90 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_65_array_ptr_90
              #                    occupy a1 with temp_67_arithop_90
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_67_arithop_90, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_66_array_ele_90, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Occupied { symidx: j_65, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s11:Freed { symidx: temp_58_array_ele_84, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s6:Freed { symidx: temp_64_index_ptr_90, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 


    sub     a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                          j_65 = i32 temp_67_arithop_90 
              #                    occupy a1 with temp_67_arithop_90
              #                    occupy a5 with j_65
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: branch_false_89 
              #                    store to temp_64_index_ptr_90 in mem offset legal
    sd      s6,48(sp)
              #                    release s6 with temp_64_index_ptr_90
              #                    store to temp_67_arithop_90 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_67_arithop_90
              #                    store to temp_66_array_ele_90 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_66_array_ele_90
              #                    occupy a0 with _anonymous_of_temp_60_cmp_84_0
              #                    load from temp_60_cmp_84 in mem
    lb      a0,66(sp)
              #                    occupy a1 with _anonymous_of_temp_59_cmp_84_0
              #                    load from temp_59_cmp_84 in mem
    lb      a1,67(sp)
              #                    occupy a2 with _anonymous_of_temp_61_logic_84_0
              #                    load from temp_61_logic_84 in mem
    lb      a2,65(sp)
    j       .branch_false_89
              #                    regtab     a0:Freed { symidx: temp_60_cmp_84, tracked: true } |     a1:Freed { symidx: temp_59_cmp_84, tracked: true } |     a2:Freed { symidx: temp_61_logic_84, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s10:Freed { symidx: temp_50_logic_75, tracked: true } |     s11:Freed { symidx: temp_58_array_ele_84, tracked: true } |     s1:Freed { symidx: temp_52_cmp_79, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Freed { symidx: temp_45_arithop_75, tracked: true } |     s5:Freed { symidx: temp_46_array_ptr_75, tracked: true } |     s7:Freed { symidx: temp_47_array_ele_75, tracked: true } |     s8:Freed { symidx: temp_48_cmp_75, tracked: true } |     s9:Freed { symidx: temp_49_cmp_75, tracked: true } | 
              #                          label branch_false_89: 
.branch_false_89:
              #                          jump label: while.head_73 
              #                    store to temp_47_array_ele_75 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_47_array_ele_75
              #                    store to temp_45_arithop_75 in mem offset legal
    sw      s4,132(sp)
              #                    release s4 with temp_45_arithop_75
              #                    store to temp_46_array_ptr_75 in mem offset legal
    sd      s5,120(sp)
              #                    release s5 with temp_46_array_ptr_75
              #                    store to temp_50_logic_75 in mem offset legal
    sb      s10,113(sp)
              #                    release s10 with temp_50_logic_75
              #                    store to temp_44_cmp_72 in mem offset legal
    sb      a7,139(sp)
              #                    release a7 with temp_44_cmp_72
              #                    store to temp_60_cmp_84 in mem offset legal
    sb      a0,66(sp)
              #                    release a0 with temp_60_cmp_84
              #                    store to temp_59_cmp_84 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_59_cmp_84
              #                    store to temp_48_cmp_75 in mem offset legal
    sb      s8,115(sp)
              #                    release s8 with temp_48_cmp_75
              #                    store to temp_49_cmp_75 in mem offset legal
    sb      s9,114(sp)
              #                    release s9 with temp_49_cmp_75
              #                    store to temp_61_logic_84 in mem offset legal
    sb      a2,65(sp)
              #                    release a2 with temp_61_logic_84
              #                    store to temp_52_cmp_79 in mem offset legal
    sb      s1,107(sp)
              #                    release s1 with temp_52_cmp_79
              #                    store to temp_58_array_ele_84 in mem offset legal
    sw      s11,68(sp)
              #                    release s11 with temp_58_array_ele_84
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_60_0
              #                    load from low_60 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_60_0
              #                    load from high_60 in mem


    lw      a2,168(sp)
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Freed { symidx: i_65, tracked: true } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } | 
              #                          label while.exit_73: 
.while.exit_73:
              #                          new_var temp_68_index_ptr_65:ptr->i32 
              #                          temp_68_index_ptr_65 = getelementptr arr_60:ptr->i32 [Some(i_65)] 
              #                    occupy s1 with temp_68_index_ptr_65
    li      s1, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a4 with i_65
              #                    occupy s5 with _anonymous_of_arr_60_0
    mul     s5,s4,a4
              #                    free s4
              #                    free a4
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy a0 with arr_60
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          store k_65:i32 temp_68_index_ptr_65:ptr->i32 
              #                    occupy s1 with temp_68_index_ptr_65
              #                    occupy s3 with k_65
    sw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          mu arr_60:346 
              #                          arr_60 = chi arr_60:346 
              #                          new_var tmp_65:i32 
              #                          new_var temp_69_arithop_65:i32 
              #                          temp_69_arithop_65 = Sub i32 i_65, 1_0 
              #                    occupy a4 with i_65
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s6 with temp_69_arithop_65
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } |     a4:Occupied { symidx: i_65, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: j_65, tracked: true } |     a6:Freed { symidx: temp_42_array_ptr_65, tracked: true } |     a7:Freed { symidx: temp_44_cmp_72, tracked: true } |     s1:Freed { symidx: temp_68_index_ptr_65, tracked: true } |     s2:Freed { symidx: temp_43_array_ele_65, tracked: true } |     s3:Freed { symidx: k_65, tracked: true } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Freed { symidx: _anonymous_of_arr_60_0, tracked: false } |     s6:Occupied { symidx: temp_69_arithop_65, tracked: true, occupy_count: 1 } | 


    sub     s6,a4,s4
              #                    free a4
              #                    free s4
              #                    free s6
              #                          tmp_65 = i32 temp_69_arithop_65 
              #                    occupy s6 with temp_69_arithop_65
              #                    occupy s7 with tmp_65
    mv      s7, s6
              #                    free s6
              #                    free s7
              #                          new_var temp_70_ret_of_QuickSort_65:i32 
              #                          temp_70_ret_of_QuickSort_65 =  Call i32 QuickSort_0(arr_60, low_60, tmp_65) 
              #                    saved register dumping to mem
              #                    store to temp_68_index_ptr_65 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_68_index_ptr_65
              #                    store to temp_43_array_ele_65 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with temp_43_array_ele_65
              #                    store to k_65 in mem offset legal
    sw      s3,152(sp)
              #                    release s3 with k_65
              #                    store to temp_69_arithop_65 in mem offset legal
    sw      s6,16(sp)
              #                    release s6 with temp_69_arithop_65
              #                    store to tmp_65 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with tmp_65
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    store to low_60 in mem offset legal
    sw      a1,172(sp)
              #                    release a1 with low_60
              #                    store to high_60 in mem offset legal
    sw      a2,168(sp)
              #                    release a2 with high_60
              #                    store to temp_41_cmp_63 in mem offset legal
    sb      a3,167(sp)
              #                    release a3 with temp_41_cmp_63
              #                    store to i_65 in mem offset legal
    sw      a4,160(sp)
              #                    release a4 with i_65
              #                    store to j_65 in mem offset legal
    sw      a5,156(sp)
              #                    release a5 with j_65
              #                    store to temp_42_array_ptr_65 in mem offset legal
    sd      a6,144(sp)
              #                    release a6 with temp_42_array_ptr_65
              #                    store to temp_44_cmp_72 in mem offset legal
    sb      a7,139(sp)
              #                    release a7 with temp_44_cmp_72
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_60_0
              #                    load from low_60 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_tmp_65_0
              #                    load from tmp_65 in mem


    lw      a2,20(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_70_ret_of_QuickSort_65 in mem offset legal
    sw      a0,12(sp)
              #                          tmp_65 = i32 temp_70_ret_of_QuickSort_65 
              #                    occupy a0 with temp_70_ret_of_QuickSort_65
              #                    occupy a1 with tmp_65
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_71_arithop_65:i32 
              #                          temp_71_arithop_65 = Add i32 i_65, 1_0 
              #                    occupy a2 with i_65
              #                    load from i_65 in mem


    lw      a2,160(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_71_arithop_65
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          tmp_65 = i32 temp_71_arithop_65 
              #                    occupy a4 with temp_71_arithop_65
              #                    occupy a1 with tmp_65
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          new_var temp_72_ret_of_QuickSort_65:i32 
              #                          temp_72_ret_of_QuickSort_65 =  Call i32 QuickSort_0(arr_60, tmp_65, high_60) 
              #                    saved register dumping to mem
              #                    store to temp_70_ret_of_QuickSort_65 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_70_ret_of_QuickSort_65
              #                    store to tmp_65 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with tmp_65
              #                    store to i_65 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with i_65
              #                    store to temp_71_arithop_65 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_71_arithop_65
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_tmp_65_0
              #                    load from tmp_65 in mem


    lw      a1,20(sp)
              #                    occupy a2 with _anonymous_of_high_60_0
              #                    load from high_60 in mem


    lw      a2,168(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_72_ret_of_QuickSort_65 in mem offset legal
    sw      a0,4(sp)
              #                          tmp_65 = i32 temp_72_ret_of_QuickSort_65 
              #                    occupy a0 with temp_72_ret_of_QuickSort_65
              #                    occupy a1 with tmp_65
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: branch_false_64 
              #                    store to temp_72_ret_of_QuickSort_65 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_72_ret_of_QuickSort_65
              #                    store to tmp_65 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with tmp_65
              #                    occupy a3 with _anonymous_of_temp_41_cmp_63_0
              #                    load from temp_41_cmp_63 in mem
    lb      a3,167(sp)
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,176(sp)
              #                    occupy a1 with _anonymous_of_low_60_0
              #                    load from low_60 in mem


    lw      a1,172(sp)
              #                    occupy a2 with _anonymous_of_high_60_0
              #                    load from high_60 in mem


    lw      a2,168(sp)
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } | 
              #                          label branch_false_64: 
.branch_false_64:
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } | 
              #                          label L18_0: 
.L18_0:
              #                          ret 0_0 
              #                    load from ra_QuickSort_0 in mem
    ld      ra,192(sp)
              #                    load from s0_QuickSort_0 in mem
    ld      s0,184(sp)
              #                    store to arr_60 in mem offset legal
    sd      a0,176(sp)
              #                    release a0 with arr_60
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,200
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: low_60, tracked: true } |     a2:Freed { symidx: high_60, tracked: true } |     a3:Freed { symidx: temp_41_cmp_63, tracked: true } | 
              #                    regtab 
              #                          Define getMid_0 [arr_100] -> getMid_ret_0 
    .globl getMid
    .type getMid,@function
getMid:
              #                    mem layout:|ra_getMid:8 at 112|s0_getMid:8 at 104|arr:8 at 96|mid:4 at 92|temp_73_ptr2globl:4 at 88|temp_74_arithop:4 at 84|temp_75_cmp:1 at 83|none:3 at 80|temp_76_ptr2globl:4 at 76|temp_77_arithop:4 at 72|temp_78_arithop:4 at 68|none:4 at 64|temp_79_array_ptr:8 at 56|temp_80_array_ele:4 at 52|none:4 at 48|temp_81_array_ptr:8 at 40|temp_82_array_ele:4 at 36|temp_83_arithop:4 at 32|temp_84_arithop:4 at 28|temp_85_ptr2globl:4 at 24|temp_86_arithop:4 at 20|none:4 at 16|temp_87_array_ptr:8 at 8|temp_88_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_getMid_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_getMid_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          new_var arr_100:ptr->i32 
              #                          alloc i32 mid_102 
              #                          alloc i32 temp_73_ptr2globl_104 
              #                          alloc i32 temp_74_arithop_104 
              #                          alloc i1 temp_75_cmp_104 
              #                          alloc i32 temp_76_ptr2globl_106 
              #                          alloc i32 temp_77_arithop_106 
              #                          alloc i32 temp_78_arithop_106 
              #                          alloc ptr->i32 temp_79_array_ptr_106 
              #                          alloc i32 temp_80_array_ele_106 
              #                          alloc ptr->i32 temp_81_array_ptr_106 
              #                          alloc i32 temp_82_array_ele_106 
              #                          alloc i32 temp_83_arithop_106 
              #                          alloc i32 temp_84_arithop_106 
              #                          alloc i32 temp_85_ptr2globl_109 
              #                          alloc i32 temp_86_arithop_109 
              #                          alloc ptr->i32 temp_87_array_ptr_109 
              #                          alloc i32 temp_88_array_ele_109 
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var mid_102:i32 
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_73_ptr2globl_104:i32 
              #                          temp_73_ptr2globl_104 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_73_ptr2globl_104
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_74_arithop_104:i32 
              #                          temp_74_arithop_104 = Mod i32 temp_73_ptr2globl_104, 2_0 
              #                    occupy a2 with temp_73_ptr2globl_104
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_74_arithop_104
              #                    load from temp_74_arithop_104 in mem


    lw      a4,84(sp)
    rem     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_75_cmp_104:i1 
              #                          temp_75_cmp_104 = icmp i32 Eq temp_74_arithop_104, 0_0 
              #                    occupy a4 with temp_74_arithop_104
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_75_cmp_104
    xor     a6,a4,a5
    seqz    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                          br i1 temp_75_cmp_104, label branch_true_105, label branch_false_105 
              #                    occupy a6 with temp_75_cmp_104
              #                    free a6
              #                    occupy a6 with temp_75_cmp_104
    bnez    a6, .branch_true_105
              #                    free a6
    j       .branch_false_105
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |     a2:Freed { symidx: temp_73_ptr2globl_104, tracked: true } |     a4:Freed { symidx: temp_74_arithop_104, tracked: true } |     a6:Freed { symidx: temp_75_cmp_104, tracked: true } | 
              #                          label branch_true_105: 
.branch_true_105:
              #                          new_var temp_76_ptr2globl_106:i32 
              #                          temp_76_ptr2globl_106 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_76_ptr2globl_106
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_77_arithop_106:i32 
              #                          temp_77_arithop_106 = Div i32 temp_76_ptr2globl_106, 2_0 
              #                    occupy a3 with temp_76_ptr2globl_106
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a7 with temp_77_arithop_106
    div     a7,a3,a5
              #                    free a3
              #                    free a5
              #                    free a7
              #                          mid_102 = i32 temp_77_arithop_106 
              #                    occupy a7 with temp_77_arithop_106
              #                    occupy s1 with mid_102
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_78_arithop_106:i32 
              #                          temp_78_arithop_106 = Sub i32 mid_102, 1_0 
              #                    occupy s1 with mid_102
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_78_arithop_106
              #                    regtab:    a0:Freed { symidx: arr_100, tracked: true } |     a1:Freed { symidx: *n_0, tracked: false } |     a2:Freed { symidx: temp_73_ptr2globl_104, tracked: true } |     a3:Freed { symidx: temp_76_ptr2globl_106, tracked: true } |     a4:Freed { symidx: temp_74_arithop_104, tracked: true } |     a5:Freed { symidx: 2_0, tracked: false } |     a6:Freed { symidx: temp_75_cmp_104, tracked: true } |     a7:Freed { symidx: temp_77_arithop_106, tracked: true } |     s1:Occupied { symidx: mid_102, tracked: true, occupy_count: 1 } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_78_arithop_106, tracked: true, occupy_count: 1 } | 


    sub     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_79_array_ptr_106:ptr->i32 
              #                          temp_79_array_ptr_106 = getelementptr arr_100:ptr->i32 [Some(temp_78_arithop_106)] 
              #                    occupy s4 with temp_79_array_ptr_106
    li      s4, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s3 with temp_78_arithop_106
              #                    occupy s5 with _anonymous_of_arr_100_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with arr_100
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_80_array_ele_106:i32 
              #                          temp_80_array_ele_106 = load temp_79_array_ptr_106:ptr->i32 
              #                    occupy s4 with temp_79_array_ptr_106
              #                    occupy s6 with temp_80_array_ele_106
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          new_var temp_81_array_ptr_106:ptr->i32 
              #                          temp_81_array_ptr_106 = getelementptr arr_100:ptr->i32 [Some(mid_102)] 
              #                    occupy s7 with temp_81_array_ptr_106
    li      s7, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s1 with mid_102
              #                    occupy s8 with _anonymous_of_arr_100_0
    mul     s8,s2,s1
              #                    free s2
              #                    free s1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with arr_100
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_82_array_ele_106:i32 
              #                          temp_82_array_ele_106 = load temp_81_array_ptr_106:ptr->i32 
              #                    occupy s7 with temp_81_array_ptr_106
              #                    occupy s9 with temp_82_array_ele_106
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_83_arithop_106:i32 
              #                          temp_83_arithop_106 = Add i32 temp_82_array_ele_106, temp_80_array_ele_106 
              #                    occupy s9 with temp_82_array_ele_106
              #                    occupy s6 with temp_80_array_ele_106
              #                    occupy s10 with temp_83_arithop_106
    add     s10,s9,s6
              #                    free s9
              #                    free s6
              #                    free s10
              #                          new_var temp_84_arithop_106:i32 
              #                          temp_84_arithop_106 = Div i32 temp_83_arithop_106, 2_0 
              #                    occupy s10 with temp_83_arithop_106
              #                    found literal reg Some(a5) already exist with 2_0
              #                    occupy a5 with 2_0
              #                    occupy s11 with temp_84_arithop_106
    div     s11,s10,a5
              #                    free s10
              #                    free a5
              #                    free s11
              #                          ret temp_84_arithop_106 
              #                    load from ra_getMid_0 in mem
    ld      ra,112(sp)
              #                    load from s0_getMid_0 in mem
    ld      s0,104(sp)
              #                    store to temp_84_arithop_106 in mem offset legal
    sw      s11,28(sp)
              #                    release s11 with temp_84_arithop_106
              #                    store to arr_100 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with arr_100
              #                    occupy a0 with temp_84_arithop_106
              #                    load from temp_84_arithop_106 in mem


    lw      a0,28(sp)
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |     a2:Freed { symidx: temp_73_ptr2globl_104, tracked: true } |     a4:Freed { symidx: temp_74_arithop_104, tracked: true } |     a6:Freed { symidx: temp_75_cmp_104, tracked: true } | 
              #                          label branch_false_105: 
.branch_false_105:
              #                          new_var temp_85_ptr2globl_109:i32 
              #                          temp_85_ptr2globl_109 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_85_ptr2globl_109
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_86_arithop_109:i32 
              #                          temp_86_arithop_109 = Div i32 temp_85_ptr2globl_109, 2_0 
              #                    occupy a3 with temp_85_ptr2globl_109
              #                    occupy a5 with 2_0
    li      a5, 2
              #                    occupy a7 with temp_86_arithop_109
    div     a7,a3,a5
              #                    free a3
              #                    free a5
              #                    free a7
              #                          mid_102 = i32 temp_86_arithop_109 
              #                    occupy a7 with temp_86_arithop_109
              #                    occupy s1 with mid_102
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_87_array_ptr_109:ptr->i32 
              #                          temp_87_array_ptr_109 = getelementptr arr_100:ptr->i32 [Some(mid_102)] 
              #                    occupy s2 with temp_87_array_ptr_109
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s1 with mid_102
              #                    occupy s4 with _anonymous_of_arr_100_0
    mul     s4,s3,s1
              #                    free s3
              #                    free s1
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy a0 with arr_100
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_88_array_ele_109:i32 
              #                          temp_88_array_ele_109 = load temp_87_array_ptr_109:ptr->i32 
              #                    occupy s2 with temp_87_array_ptr_109
              #                    occupy s5 with temp_88_array_ele_109
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          ret temp_88_array_ele_109 
              #                    load from ra_getMid_0 in mem
    ld      ra,112(sp)
              #                    load from s0_getMid_0 in mem
    ld      s0,104(sp)
              #                    store to temp_88_array_ele_109 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_88_array_ele_109
              #                    store to arr_100 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with arr_100
              #                    occupy a0 with temp_88_array_ele_109
              #                    load from temp_88_array_ele_109 in mem


    lw      a0,4(sp)
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_73_ptr2globl_104, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_109, tracked: true } |     a4:Freed { symidx: temp_74_arithop_104, tracked: true } |     a6:Freed { symidx: temp_75_cmp_104, tracked: true } |     a7:Freed { symidx: temp_86_arithop_109, tracked: true } |     s1:Freed { symidx: mid_102, tracked: true } |     s2:Freed { symidx: temp_87_array_ptr_109, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                    regtab     a2:Freed { symidx: temp_73_ptr2globl_104, tracked: true } |     a3:Freed { symidx: temp_85_ptr2globl_109, tracked: true } |     a4:Freed { symidx: temp_74_arithop_104, tracked: true } |     a6:Freed { symidx: temp_75_cmp_104, tracked: true } |     a7:Freed { symidx: temp_86_arithop_109, tracked: true } |     s1:Freed { symidx: mid_102, tracked: true } |     s2:Freed { symidx: temp_87_array_ptr_109, tracked: true } | 
              #                    regtab 
              #                          Define getMost_0 [arr_112] -> getMost_ret_0 
    .globl getMost
    .type getMost,@function
getMost:
              #                    mem layout:|ra_getMost:8 at 4128|s0_getMost:8 at 4120|arr:8 at 4112|count:4000 at 112|i:4 at 108|temp_89_cmp:1 at 107|none:3 at 104|temp_90_index_ptr:8 at 96|temp_91_arithop:4 at 92|max:4 at 88|number:4 at 84|temp_92_ptr2globl:4 at 80|temp_93_cmp:1 at 79|none:3 at 76|num:4 at 72|temp_94_array_ptr:8 at 64|temp_95_array_ele:4 at 60|none:4 at 56|temp_96_index_ptr:8 at 48|temp_97_array_ptr:8 at 40|temp_98_array_ele:4 at 36|temp_99_arithop:4 at 32|temp_100_array_ptr:8 at 24|temp_101_array_ele:4 at 20|temp_102_cmp:1 at 19|none:3 at 16|temp_103_array_ptr:8 at 8|temp_104_array_ele:4 at 4|temp_105_arithop:4 at 0
              #                    occupy a1 with -4136_0
    li      a1, -4136
    li      a1, -4136
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_getMost_0 in mem offset_illegal
              #                    occupy a2 with 4128_0
    li      a2, 4128
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_getMost_0 in mem offset_illegal
              #                    occupy a3 with 4120_0
    li      a3, 4120
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 4136_0
    li      a4, 4136
    li      a4, 4136
    add     s0,a4,sp
              #                    free a4
              #                          new_var arr_112:ptr->i32 
              #                          alloc Array:i32:[Some(1000_0)] count_114 
              #                          alloc i32 i_114 
              #                          alloc i1 temp_89_cmp_118 
              #                          alloc ptr->i32 temp_90_index_ptr_120 
              #                          alloc i32 temp_91_arithop_120 
              #                          alloc i32 max_114 
              #                          alloc i32 number_114 
              #                          alloc i32 temp_92_ptr2globl_127 
              #                          alloc i1 temp_93_cmp_127 
              #                          alloc i32 num_129 
              #                          alloc ptr->i32 temp_94_array_ptr_129 
              #                          alloc i32 temp_95_array_ele_129 
              #                          alloc ptr->i32 temp_96_index_ptr_129 
              #                          alloc ptr->i32 temp_97_array_ptr_129 
              #                          alloc i32 temp_98_array_ele_129 
              #                          alloc i32 temp_99_arithop_129 
              #                          alloc ptr->i32 temp_100_array_ptr_133 
              #                          alloc i32 temp_101_array_ele_133 
              #                          alloc i1 temp_102_cmp_133 
              #                          alloc ptr->i32 temp_103_array_ptr_135 
              #                          alloc i32 temp_104_array_ele_135 
              #                          alloc i32 temp_105_arithop_129 
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var count_114:Array:i32:[Some(1000_0)] 
              #                          new_var i_114:i32 
              #                          i_114 = i32 0_0 
              #                    occupy a1 with i_114
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_119 
    j       .while.head_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } | 
              #                          label while.head_119: 
.while.head_119:
              #                          new_var temp_89_cmp_118:i1 
              #                          temp_89_cmp_118 = icmp i32 Slt i_114, 1000_0 
              #                    occupy a1 with i_114
              #                    occupy a2 with 1000_0
    li      a2, 1000
              #                    occupy a3 with temp_89_cmp_118
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_89_cmp_118, label while.body_119, label while.exit_119 
              #                    occupy a3 with temp_89_cmp_118
              #                    free a3
              #                    occupy a3 with temp_89_cmp_118
    bnez    a3, .while.body_119
              #                    free a3
    j       .while.exit_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } | 
              #                          label while.body_119: 
.while.body_119:
              #                          new_var temp_90_index_ptr_120:ptr->i32 
              #                          temp_90_index_ptr_120 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(i_114)] 
              #                    occupy a2 with temp_90_index_ptr_120
    li      a2, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a1 with i_114
              #                    occupy a5 with _anonymous_of_count_114_0
    mul     a5,a4,a1
              #                    free a4
              #                    free a1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
              #                    free a2
              #                          store 0_0:i32 temp_90_index_ptr_120:ptr->i32 
              #                    occupy a2 with temp_90_index_ptr_120
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu count_114:444 
              #                          count_114 = chi count_114:444 
              #                          new_var temp_91_arithop_120:i32 
              #                          temp_91_arithop_120 = Add i32 i_114, 1_0 
              #                    occupy a1 with i_114
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a7 with temp_91_arithop_120
    add     a7,a1,a4
              #                    free a1
              #                    free a4
              #                    free a7
              #                          i_114 = i32 temp_91_arithop_120 
              #                    occupy a7 with temp_91_arithop_120
              #                    occupy a1 with i_114
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_119 
              #                    store to temp_90_index_ptr_120 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_90_index_ptr_120
              #                    store to temp_91_arithop_120 in mem offset legal
    sw      a7,92(sp)
              #                    release a7 with temp_91_arithop_120
              #                    store to temp_89_cmp_118 in mem offset legal
    sb      a3,107(sp)
              #                    release a3 with temp_89_cmp_118
    j       .while.head_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } | 
              #                          label while.exit_119: 
.while.exit_119:
              #                          i_114 = i32 0_0 
              #                    occupy a1 with i_114
    li      a1, 0
              #                    free a1
              #                          new_var max_114:i32 
              #                          new_var number_114:i32 
              #                          max_114 = i32 0_0 
              #                    occupy a2 with max_114
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_128 
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } | 
              #                          label while.head_128: 
.while.head_128:
              #                          new_var temp_92_ptr2globl_127:i32 
              #                          temp_92_ptr2globl_127 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with temp_92_ptr2globl_127
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_93_cmp_127:i1 
              #                          temp_93_cmp_127 = icmp i32 Slt i_114, temp_92_ptr2globl_127 
              #                    occupy a1 with i_114
              #                    occupy a5 with temp_92_ptr2globl_127
              #                    occupy a6 with temp_93_cmp_127
    slt     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          br i1 temp_93_cmp_127, label while.body_128, label while.exit_128 
              #                    occupy a6 with temp_93_cmp_127
              #                    free a6
              #                    occupy a6 with temp_93_cmp_127
    bnez    a6, .while.body_128
              #                    free a6
    j       .while.exit_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } | 
              #                          label while.body_128: 
.while.body_128:
              #                          new_var num_129:i32 
              #                          new_var temp_94_array_ptr_129:ptr->i32 
              #                          temp_94_array_ptr_129 = getelementptr arr_112:ptr->i32 [Some(i_114)] 
              #                    occupy a4 with temp_94_array_ptr_129
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a1 with i_114
              #                    occupy s1 with _anonymous_of_arr_112_0
    mul     s1,a7,a1
              #                    free a7
              #                    free a1
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a0 with arr_112
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_95_array_ele_129:i32 
              #                          temp_95_array_ele_129 = load temp_94_array_ptr_129:ptr->i32 
              #                    occupy a4 with temp_94_array_ptr_129
              #                    occupy s2 with temp_95_array_ele_129
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          num_129 = i32 temp_95_array_ele_129 
              #                    occupy s2 with temp_95_array_ele_129
              #                    occupy s3 with num_129
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                          new_var temp_96_index_ptr_129:ptr->i32 
              #                          temp_96_index_ptr_129 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
              #                    occupy s4 with temp_96_index_ptr_129
    li      s4, 0
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s3 with num_129
              #                    occupy s5 with _anonymous_of_count_114_0
    mul     s5,a7,s3
              #                    free a7
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,112
              #                    free s4
              #                          new_var temp_97_array_ptr_129:ptr->i32 
              #                          temp_97_array_ptr_129 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
              #                    occupy s6 with temp_97_array_ptr_129
    li      s6, 0
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s3 with num_129
              #                    occupy s7 with _anonymous_of_count_114_0
    mul     s7,a7,s3
              #                    free a7
              #                    free s3
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,112
              #                    free s6
              #                          new_var temp_98_array_ele_129:i32 
              #                          temp_98_array_ele_129 = load temp_97_array_ptr_129:ptr->i32 
              #                    occupy s6 with temp_97_array_ptr_129
              #                    occupy s8 with temp_98_array_ele_129
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          new_var temp_99_arithop_129:i32 
              #                          temp_99_arithop_129 = Add i32 temp_98_array_ele_129, 1_0 
              #                    occupy s8 with temp_98_array_ele_129
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s9 with temp_99_arithop_129
    add     s9,s8,a7
              #                    free s8
              #                    free a7
              #                    free s9
              #                          store temp_99_arithop_129:i32 temp_96_index_ptr_129:ptr->i32 
              #                    occupy s4 with temp_96_index_ptr_129
              #                    occupy s9 with temp_99_arithop_129
    sw      s9,0(s4)
              #                    free s9
              #                    free s4
              #                          mu count_114:489 
              #                          count_114 = chi count_114:489 
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a4:Freed { symidx: temp_94_array_ptr_129, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } |     s2:Freed { symidx: temp_95_array_ele_129, tracked: true } |     s3:Freed { symidx: num_129, tracked: true } |     s4:Freed { symidx: temp_96_index_ptr_129, tracked: true } |     s6:Freed { symidx: temp_97_array_ptr_129, tracked: true } |     s8:Freed { symidx: temp_98_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_99_arithop_129, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_100_array_ptr_133:ptr->i32 
              #                          temp_100_array_ptr_133 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
              #                    occupy a7 with temp_100_array_ptr_133
    li      a7, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with num_129
              #                    occupy s5 with _anonymous_of_count_114_0
    mul     s5,s1,s3
              #                    free s1
              #                    free s3
    add     a7,a7,s5
              #                    free s5
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,112
              #                    free a7
              #                          new_var temp_101_array_ele_133:i32 
              #                          temp_101_array_ele_133 = load temp_100_array_ptr_133:ptr->i32 
              #                    occupy a7 with temp_100_array_ptr_133
              #                    occupy s7 with temp_101_array_ele_133
    lw      s7,0(a7)
              #                    free s7
              #                    free a7
              #                          new_var temp_102_cmp_133:i1 
              #                          temp_102_cmp_133 = icmp i32 Sgt temp_101_array_ele_133, max_114 
              #                    occupy s7 with temp_101_array_ele_133
              #                    occupy a2 with max_114
              #                    occupy s10 with temp_102_cmp_133
    slt     s10,a2,s7
              #                    free s7
              #                    free a2
              #                    free s10
              #                          br i1 temp_102_cmp_133, label branch_true_134, label branch_false_134 
              #                    occupy s10 with temp_102_cmp_133
              #                    free s10
              #                    occupy s10 with temp_102_cmp_133
    bnez    s10, .branch_true_134
              #                    free s10
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a4:Freed { symidx: temp_94_array_ptr_129, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } |     a7:Freed { symidx: temp_100_array_ptr_133, tracked: true } |     s10:Freed { symidx: temp_102_cmp_133, tracked: true } |     s2:Freed { symidx: temp_95_array_ele_129, tracked: true } |     s3:Freed { symidx: num_129, tracked: true } |     s4:Freed { symidx: temp_96_index_ptr_129, tracked: true } |     s6:Freed { symidx: temp_97_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_101_array_ele_133, tracked: true } |     s8:Freed { symidx: temp_98_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_99_arithop_129, tracked: true } | 
              #                          label branch_true_134: 
.branch_true_134:
              #                          new_var temp_103_array_ptr_135:ptr->i32 
              #                          temp_103_array_ptr_135 = getelementptr count_114:Array:i32:[Some(1000_0)] [Some(num_129)] 
              #                    occupy s1 with temp_103_array_ptr_135
    li      s1, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s3 with num_129
              #                    occupy s11 with _anonymous_of_count_114_0
    mul     s11,s5,s3
              #                    free s5
              #                    free s3
    add     s1,s1,s11
              #                    free s11
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,112
              #                    free s1
              #                          new_var temp_104_array_ele_135:i32 
              #                          temp_104_array_ele_135 = load temp_103_array_ptr_135:ptr->i32 
              #                    occupy s1 with temp_103_array_ptr_135
              #                    occupy s5 with temp_104_array_ele_135
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                          max_114 = i32 temp_104_array_ele_135 
              #                    occupy s5 with temp_104_array_ele_135
              #                    occupy a2 with max_114
    mv      a2, s5
              #                    free s5
              #                    free a2
              #                          number_114 = i32 num_129 
              #                    occupy s3 with num_129
              #                    occupy s11 with number_114
    mv      s11, s3
              #                    free s3
              #                    free s11
              #                          jump label: branch_false_134 
              #                    store to temp_104_array_ele_135 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_104_array_ele_135
              #                    store to temp_103_array_ptr_135 in mem offset legal
    sd      s1,8(sp)
              #                    release s1 with temp_103_array_ptr_135
              #                    store to number_114 in mem offset legal
    sw      s11,84(sp)
              #                    release s11 with number_114
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a4:Freed { symidx: temp_94_array_ptr_129, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } |     a7:Freed { symidx: temp_100_array_ptr_133, tracked: true } |     s10:Freed { symidx: temp_102_cmp_133, tracked: true } |     s2:Freed { symidx: temp_95_array_ele_129, tracked: true } |     s3:Freed { symidx: num_129, tracked: true } |     s4:Freed { symidx: temp_96_index_ptr_129, tracked: true } |     s6:Freed { symidx: temp_97_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_101_array_ele_133, tracked: true } |     s8:Freed { symidx: temp_98_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_99_arithop_129, tracked: true } | 
              #                          label branch_false_134: 
.branch_false_134:
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a4:Freed { symidx: temp_94_array_ptr_129, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } |     a7:Freed { symidx: temp_100_array_ptr_133, tracked: true } |     s10:Freed { symidx: temp_102_cmp_133, tracked: true } |     s2:Freed { symidx: temp_95_array_ele_129, tracked: true } |     s3:Freed { symidx: num_129, tracked: true } |     s4:Freed { symidx: temp_96_index_ptr_129, tracked: true } |     s6:Freed { symidx: temp_97_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_101_array_ele_133, tracked: true } |     s8:Freed { symidx: temp_98_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_99_arithop_129, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                          new_var temp_105_arithop_129:i32 
              #                          temp_105_arithop_129 = Add i32 i_114, 1_0 
              #                    occupy a1 with i_114
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_105_arithop_129
    add     s5,a1,s1
              #                    free a1
              #                    free s1
              #                    free s5
              #                          i_114 = i32 temp_105_arithop_129 
              #                    occupy s5 with temp_105_arithop_129
              #                    occupy a1 with i_114
    mv      a1, s5
              #                    free s5
              #                    free a1
              #                          jump label: while.head_128 
              #                    store to temp_97_array_ptr_129 in mem offset legal
    sd      s6,40(sp)
              #                    release s6 with temp_97_array_ptr_129
              #                    store to temp_93_cmp_127 in mem offset legal
    sb      a6,79(sp)
              #                    release a6 with temp_93_cmp_127
              #                    store to temp_94_array_ptr_129 in mem offset legal
    sd      a4,64(sp)
              #                    release a4 with temp_94_array_ptr_129
              #                    store to temp_98_array_ele_129 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_98_array_ele_129
              #                    store to temp_101_array_ele_133 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_101_array_ele_133
              #                    store to temp_100_array_ptr_133 in mem offset legal
    sd      a7,24(sp)
              #                    release a7 with temp_100_array_ptr_133
              #                    store to num_129 in mem offset legal
    sw      s3,72(sp)
              #                    release s3 with num_129
              #                    store to temp_102_cmp_133 in mem offset legal
    sb      s10,19(sp)
              #                    release s10 with temp_102_cmp_133
              #                    store to temp_92_ptr2globl_127 in mem offset legal
    sw      a5,80(sp)
              #                    release a5 with temp_92_ptr2globl_127
              #                    store to temp_105_arithop_129 in mem offset legal
    sw      s5,0(sp)
              #                    release s5 with temp_105_arithop_129
              #                    store to temp_95_array_ele_129 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_95_array_ele_129
              #                    store to temp_99_arithop_129 in mem offset legal
    sw      s9,32(sp)
              #                    release s9 with temp_99_arithop_129
              #                    store to temp_96_index_ptr_129 in mem offset legal
    sd      s4,48(sp)
              #                    release s4 with temp_96_index_ptr_129
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } | 
              #                          label while.exit_128: 
.while.exit_128:
              #                          ret number_114 
              #                    load from ra_getMost_0 in mem
              #                    occupy a4 with ra_getMost_0
    li      a4, 4128
    add     a4,sp,a4
    ld      ra,0(a4)
              #                    free a4
              #                    load from s0_getMost_0 in mem
              #                    occupy a7 with s0_getMost_0
    li      a7, 4120
    add     a7,sp,a7
    ld      s0,0(a7)
              #                    free a7
              #                    store to arr_112 in mem offset_illegal
              #                    occupy a0 with 4112_0
    li      a0, 4112
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with arr_112
              #                    occupy a0 with number_114
              #                    load from number_114 in mem


    lw      a0,84(sp)
              #                    occupy s1 with 4136_0
    li      s1, 4136
    li      s1, 4136
    add     sp,s1,sp
              #                    free s1
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_114, tracked: true } |     a2:Freed { symidx: max_114, tracked: true } |     a3:Freed { symidx: temp_89_cmp_118, tracked: true } |     a4:Freed { symidx: ra_getMost_0, tracked: true } |     a5:Freed { symidx: temp_92_ptr2globl_127, tracked: true } |     a6:Freed { symidx: temp_93_cmp_127, tracked: true } |     a7:Freed { symidx: s0_getMost_0, tracked: true } | 
              #                    regtab 
              #                          Define revert_0 [arr_140] -> revert_ret_0 
    .globl revert
    .type revert,@function
revert:
              #                    mem layout:|ra_revert:8 at 88|s0_revert:8 at 80|arr:8 at 72|temp:4 at 68|i:4 at 64|j:4 at 60|temp_106_cmp:1 at 59|none:3 at 56|temp_107_array_ptr:8 at 48|temp_108_array_ele:4 at 44|none:4 at 40|temp_109_index_ptr:8 at 32|temp_110_array_ptr:8 at 24|temp_111_array_ele:4 at 20|none:4 at 16|temp_112_index_ptr:8 at 8|temp_113_arithop:4 at 4|temp_114_arithop:4 at 0
    addi    sp,sp,-96
              #                    store to ra_revert_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_revert_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          new_var arr_140:ptr->i32 
              #                          alloc i32 temp_142 
              #                          alloc i32 i_142 
              #                          alloc i32 j_142 
              #                          alloc i1 temp_106_cmp_148 
              #                          alloc ptr->i32 temp_107_array_ptr_150 
              #                          alloc i32 temp_108_array_ele_150 
              #                          alloc ptr->i32 temp_109_index_ptr_150 
              #                          alloc ptr->i32 temp_110_array_ptr_150 
              #                          alloc i32 temp_111_array_ele_150 
              #                          alloc ptr->i32 temp_112_index_ptr_150 
              #                          alloc i32 temp_113_arithop_150 
              #                          alloc i32 temp_114_arithop_150 
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_142:i32 
              #                          new_var i_142:i32 
              #                          new_var j_142:i32 
              #                          i_142 = i32 0_0 
              #                    occupy a1 with i_142
    li      a1, 0
              #                    free a1
              #                          j_142 = i32 0_0 
              #                    occupy a2 with j_142
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_149 
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142, tracked: true } |     a2:Freed { symidx: j_142, tracked: true } | 
              #                          label while.head_149: 
.while.head_149:
              #                          new_var temp_106_cmp_148:i1 
              #                          temp_106_cmp_148 = icmp i32 Slt i_142, j_142 
              #                    occupy a1 with i_142
              #                    occupy a2 with j_142
              #                    occupy a3 with temp_106_cmp_148
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_106_cmp_148, label while.body_149, label while.exit_149 
              #                    occupy a3 with temp_106_cmp_148
              #                    free a3
              #                    occupy a3 with temp_106_cmp_148
    bnez    a3, .while.body_149
              #                    free a3
    j       .while.exit_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142, tracked: true } |     a2:Freed { symidx: j_142, tracked: true } |     a3:Freed { symidx: temp_106_cmp_148, tracked: true } | 
              #                          label while.body_149: 
.while.body_149:
              #                          new_var temp_107_array_ptr_150:ptr->i32 
              #                          temp_107_array_ptr_150 = getelementptr arr_140:ptr->i32 [Some(i_142)] 
              #                    occupy a4 with temp_107_array_ptr_150
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_142
              #                    occupy a6 with _anonymous_of_arr_140_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a0 with arr_140
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_108_array_ele_150:i32 
              #                          temp_108_array_ele_150 = load temp_107_array_ptr_150:ptr->i32 
              #                    occupy a4 with temp_107_array_ptr_150
              #                    occupy a7 with temp_108_array_ele_150
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          temp_142 = i32 temp_108_array_ele_150 
              #                    occupy a7 with temp_108_array_ele_150
              #                    occupy s1 with temp_142
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          new_var temp_109_index_ptr_150:ptr->i32 
              #                          temp_109_index_ptr_150 = getelementptr arr_140:ptr->i32 [Some(i_142)] 
              #                    occupy s2 with temp_109_index_ptr_150
    li      s2, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a1 with i_142
              #                    occupy s3 with _anonymous_of_arr_140_0
    mul     s3,a5,a1
              #                    free a5
              #                    free a1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a0 with arr_140
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_110_array_ptr_150:ptr->i32 
              #                          temp_110_array_ptr_150 = getelementptr arr_140:ptr->i32 [Some(j_142)] 
              #                    occupy s4 with temp_110_array_ptr_150
    li      s4, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a2 with j_142
              #                    occupy s5 with _anonymous_of_arr_140_0
    mul     s5,a5,a2
              #                    free a5
              #                    free a2
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with arr_140
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_111_array_ele_150:i32 
              #                          temp_111_array_ele_150 = load temp_110_array_ptr_150:ptr->i32 
              #                    occupy s4 with temp_110_array_ptr_150
              #                    occupy s6 with temp_111_array_ele_150
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          store temp_111_array_ele_150:i32 temp_109_index_ptr_150:ptr->i32 
              #                    occupy s2 with temp_109_index_ptr_150
              #                    occupy s6 with temp_111_array_ele_150
    sw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          mu arr_140:550 
              #                          arr_140 = chi arr_140:550 
              #                          new_var temp_112_index_ptr_150:ptr->i32 
              #                          temp_112_index_ptr_150 = getelementptr arr_140:ptr->i32 [Some(j_142)] 
              #                    occupy s7 with temp_112_index_ptr_150
    li      s7, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a2 with j_142
              #                    occupy s8 with _anonymous_of_arr_140_0
    mul     s8,a5,a2
              #                    free a5
              #                    free a2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with arr_140
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          store temp_142:i32 temp_112_index_ptr_150:ptr->i32 
              #                    occupy s7 with temp_112_index_ptr_150
              #                    occupy s1 with temp_142
    sw      s1,0(s7)
              #                    free s1
              #                    free s7
              #                          mu arr_140:556 
              #                          arr_140 = chi arr_140:556 
              #                          new_var temp_113_arithop_150:i32 
              #                          temp_113_arithop_150 = Add i32 i_142, 1_0 
              #                    occupy a1 with i_142
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s9 with temp_113_arithop_150
    add     s9,a1,a5
              #                    free a1
              #                    free a5
              #                    free s9
              #                          i_142 = i32 temp_113_arithop_150 
              #                    occupy s9 with temp_113_arithop_150
              #                    occupy a1 with i_142
    mv      a1, s9
              #                    free s9
              #                    free a1
              #                          new_var temp_114_arithop_150:i32 
              #                          temp_114_arithop_150 = Sub i32 j_142, 1_0 
              #                    occupy a2 with j_142
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s10 with temp_114_arithop_150
              #                    regtab:    a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142, tracked: true } |     a2:Occupied { symidx: j_142, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_106_cmp_148, tracked: true } |     a4:Freed { symidx: temp_107_array_ptr_150, tracked: true } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_arr_140_0, tracked: false } |     a7:Freed { symidx: temp_108_array_ele_150, tracked: true } |     s10:Occupied { symidx: temp_114_arithop_150, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_142, tracked: true } |     s2:Freed { symidx: temp_109_index_ptr_150, tracked: true } |     s3:Freed { symidx: _anonymous_of_arr_140_0, tracked: false } |     s4:Freed { symidx: temp_110_array_ptr_150, tracked: true } |     s5:Freed { symidx: _anonymous_of_arr_140_0, tracked: false } |     s6:Freed { symidx: temp_111_array_ele_150, tracked: true } |     s7:Freed { symidx: temp_112_index_ptr_150, tracked: true } |     s8:Freed { symidx: _anonymous_of_arr_140_0, tracked: false } |     s9:Freed { symidx: temp_113_arithop_150, tracked: true } | 


    sub     s10,a2,a5
              #                    free a2
              #                    free a5
              #                    free s10
              #                          j_142 = i32 temp_114_arithop_150 
              #                    occupy s10 with temp_114_arithop_150
              #                    occupy a2 with j_142
    mv      a2, s10
              #                    free s10
              #                    free a2
              #                          jump label: while.head_149 
              #                    store to temp_108_array_ele_150 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with temp_108_array_ele_150
              #                    store to temp_112_index_ptr_150 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_112_index_ptr_150
              #                    store to temp_107_array_ptr_150 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_107_array_ptr_150
              #                    store to temp_111_array_ele_150 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_111_array_ele_150
              #                    store to temp_113_arithop_150 in mem offset legal
    sw      s9,4(sp)
              #                    release s9 with temp_113_arithop_150
              #                    store to temp_114_arithop_150 in mem offset legal
    sw      s10,0(sp)
              #                    release s10 with temp_114_arithop_150
              #                    store to temp_109_index_ptr_150 in mem offset legal
    sd      s2,32(sp)
              #                    release s2 with temp_109_index_ptr_150
              #                    store to temp_142 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with temp_142
              #                    store to temp_106_cmp_148 in mem offset legal
    sb      a3,59(sp)
              #                    release a3 with temp_106_cmp_148
              #                    store to temp_110_array_ptr_150 in mem offset legal
    sd      s4,24(sp)
              #                    release s4 with temp_110_array_ptr_150
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142, tracked: true } |     a2:Freed { symidx: j_142, tracked: true } |     a3:Freed { symidx: temp_106_cmp_148, tracked: true } | 
              #                          label while.exit_149: 
.while.exit_149:
              #                          ret 0_0 
              #                    load from ra_revert_0 in mem
    ld      ra,88(sp)
              #                    load from s0_revert_0 in mem
    ld      s0,80(sp)
              #                    store to arr_140 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with arr_140
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_142, tracked: true } |     a2:Freed { symidx: j_142, tracked: true } |     a3:Freed { symidx: temp_106_cmp_148, tracked: true } | 
              #                    regtab 
              #                          Define arrCopy_0 [src_157, target_157] -> arrCopy_ret_0 
    .globl arrCopy
    .type arrCopy,@function
arrCopy:
              #                    mem layout:|ra_arrCopy:8 at 64|s0_arrCopy:8 at 56|src:8 at 48|target:8 at 40|i:4 at 36|temp_115_ptr2globl:4 at 32|temp_116_cmp:1 at 31|none:7 at 24|temp_117_index_ptr:8 at 16|temp_118_array_ptr:8 at 8|temp_119_array_ele:4 at 4|temp_120_arithop:4 at 0
    addi    sp,sp,-72
              #                    store to ra_arrCopy_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_arrCopy_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          new_var src_157:ptr->i32 
              #                          new_var target_157:ptr->i32 
              #                          alloc i32 i_159 
              #                          alloc i32 temp_115_ptr2globl_162 
              #                          alloc i1 temp_116_cmp_162 
              #                          alloc ptr->i32 temp_117_index_ptr_164 
              #                          alloc ptr->i32 temp_118_array_ptr_164 
              #                          alloc i32 temp_119_array_ele_164 
              #                          alloc i32 temp_120_arithop_164 
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var i_159:i32 
              #                          i_159 = i32 0_0 
              #                    occupy a2 with i_159
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_163 
    j       .while.head_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: i_159, tracked: true } | 
              #                          label while.head_163: 
.while.head_163:
              #                          new_var temp_115_ptr2globl_162:i32 
              #                          temp_115_ptr2globl_162 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    occupy a4 with temp_115_ptr2globl_162
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_116_cmp_162:i1 
              #                          temp_116_cmp_162 = icmp i32 Slt i_159, temp_115_ptr2globl_162 
              #                    occupy a2 with i_159
              #                    occupy a4 with temp_115_ptr2globl_162
              #                    occupy a5 with temp_116_cmp_162
    slt     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_116_cmp_162, label while.body_163, label while.exit_163 
              #                    occupy a5 with temp_116_cmp_162
              #                    free a5
              #                    occupy a5 with temp_116_cmp_162
    bnez    a5, .while.body_163
              #                    free a5
    j       .while.exit_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: i_159, tracked: true } |     a4:Freed { symidx: temp_115_ptr2globl_162, tracked: true } |     a5:Freed { symidx: temp_116_cmp_162, tracked: true } | 
              #                          label while.body_163: 
.while.body_163:
              #                          new_var temp_117_index_ptr_164:ptr->i32 
              #                          temp_117_index_ptr_164 = getelementptr target_157:ptr->i32 [Some(i_159)] 
              #                    occupy a3 with temp_117_index_ptr_164
    li      a3, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a2 with i_159
              #                    occupy a7 with _anonymous_of_target_157_0
    mul     a7,a6,a2
              #                    free a6
              #                    free a2
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a1 with target_157
    add     a3,a3,a1
              #                    free a1
              #                    free a3
              #                          new_var temp_118_array_ptr_164:ptr->i32 
              #                          temp_118_array_ptr_164 = getelementptr src_157:ptr->i32 [Some(i_159)] 
              #                    occupy s1 with temp_118_array_ptr_164
    li      s1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a2 with i_159
              #                    occupy s2 with _anonymous_of_src_157_0
    mul     s2,a6,a2
              #                    free a6
              #                    free a2
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with src_157
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          new_var temp_119_array_ele_164:i32 
              #                          temp_119_array_ele_164 = load temp_118_array_ptr_164:ptr->i32 
              #                    occupy s1 with temp_118_array_ptr_164
              #                    occupy s3 with temp_119_array_ele_164
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          store temp_119_array_ele_164:i32 temp_117_index_ptr_164:ptr->i32 
              #                    occupy a3 with temp_117_index_ptr_164
              #                    occupy s3 with temp_119_array_ele_164
    sw      s3,0(a3)
              #                    free s3
              #                    free a3
              #                          mu target_157:592 
              #                          target_157 = chi target_157:592 
              #                          new_var temp_120_arithop_164:i32 
              #                          temp_120_arithop_164 = Add i32 i_159, 1_0 
              #                    occupy a2 with i_159
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s4 with temp_120_arithop_164
    add     s4,a2,a6
              #                    free a2
              #                    free a6
              #                    free s4
              #                          i_159 = i32 temp_120_arithop_164 
              #                    occupy s4 with temp_120_arithop_164
              #                    occupy a2 with i_159
    mv      a2, s4
              #                    free s4
              #                    free a2
              #                          jump label: while.head_163 
              #                    store to temp_115_ptr2globl_162 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_115_ptr2globl_162
              #                    store to temp_118_array_ptr_164 in mem offset legal
    sd      s1,8(sp)
              #                    release s1 with temp_118_array_ptr_164
              #                    store to temp_116_cmp_162 in mem offset legal
    sb      a5,31(sp)
              #                    release a5 with temp_116_cmp_162
              #                    store to temp_117_index_ptr_164 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_117_index_ptr_164
              #                    store to temp_119_array_ele_164 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_119_array_ele_164
              #                    store to temp_120_arithop_164 in mem offset legal
    sw      s4,0(sp)
              #                    release s4 with temp_120_arithop_164
    j       .while.head_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: i_159, tracked: true } |     a4:Freed { symidx: temp_115_ptr2globl_162, tracked: true } |     a5:Freed { symidx: temp_116_cmp_162, tracked: true } | 
              #                          label while.exit_163: 
.while.exit_163:
              #                          ret 0_0 
              #                    load from ra_arrCopy_0 in mem
    ld      ra,64(sp)
              #                    load from s0_arrCopy_0 in mem
    ld      s0,56(sp)
              #                    store to src_157 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with src_157
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: i_159, tracked: true } |     a4:Freed { symidx: temp_115_ptr2globl_162, tracked: true } |     a5:Freed { symidx: temp_116_cmp_162, tracked: true } | 
              #                    regtab 
              #                          Define calSum_0 [arr_168, stride_168] -> calSum_ret_0 
    .globl calSum
    .type calSum,@function
calSum:
              #                    mem layout:|ra_calSum:8 at 96|s0_calSum:8 at 88|arr:8 at 80|stride:4 at 76|sum:4 at 72|i:4 at 68|temp_121_ptr2globl:4 at 64|temp_122_cmp:1 at 63|none:7 at 56|temp_123_array_ptr:8 at 48|temp_124_array_ele:4 at 44|temp_125_arithop:4 at 40|temp_126_arithop:4 at 36|temp_127_arithop:4 at 32|temp_128_cmp:1 at 31|none:7 at 24|temp_129_index_ptr:8 at 16|temp_130_arithop:4 at 12|none:4 at 8|temp_131_index_ptr:8 at 0
    addi    sp,sp,-104
              #                    store to ra_calSum_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_calSum_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                          new_var arr_168:ptr->i32 
              #                          alloc i32 sum_170 
              #                          alloc i32 i_170 
              #                          alloc i32 temp_121_ptr2globl_175 
              #                          alloc i1 temp_122_cmp_175 
              #                          alloc ptr->i32 temp_123_array_ptr_177 
              #                          alloc i32 temp_124_array_ele_177 
              #                          alloc i32 temp_125_arithop_177 
              #                          alloc i32 temp_126_arithop_179 
              #                          alloc i32 temp_127_arithop_179 
              #                          alloc i1 temp_128_cmp_179 
              #                          alloc ptr->i32 temp_129_index_ptr_181 
              #                          alloc i32 temp_130_arithop_177 
              #                          alloc ptr->i32 temp_131_index_ptr_183 
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var sum_170:i32 
              #                          sum_170 = i32 0_0 
              #                    occupy a2 with sum_170
    li      a2, 0
              #                    free a2
              #                          new_var i_170:i32 
              #                          i_170 = i32 0_0 
              #                    occupy a3 with i_170
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_176 
    j       .while.head_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } | 
              #                          label while.head_176: 
.while.head_176:
              #                          new_var temp_121_ptr2globl_175:i32 
              #                          temp_121_ptr2globl_175 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with temp_121_ptr2globl_175
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_122_cmp_175:i1 
              #                          temp_122_cmp_175 = icmp i32 Slt i_170, temp_121_ptr2globl_175 
              #                    occupy a3 with i_170
              #                    occupy a5 with temp_121_ptr2globl_175
              #                    occupy a6 with temp_122_cmp_175
    slt     a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                          br i1 temp_122_cmp_175, label while.body_176, label while.exit_176 
              #                    occupy a6 with temp_122_cmp_175
              #                    free a6
              #                    occupy a6 with temp_122_cmp_175
    bnez    a6, .while.body_176
              #                    free a6
    j       .while.exit_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } | 
              #                          label while.body_176: 
.while.body_176:
              #                          new_var temp_123_array_ptr_177:ptr->i32 
              #                          temp_123_array_ptr_177 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
              #                    occupy a4 with temp_123_array_ptr_177
    li      a4, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a3 with i_170
              #                    occupy s1 with _anonymous_of_arr_168_0
    mul     s1,a7,a3
              #                    free a7
              #                    free a3
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a0 with arr_168
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_124_array_ele_177:i32 
              #                          temp_124_array_ele_177 = load temp_123_array_ptr_177:ptr->i32 
              #                    occupy a4 with temp_123_array_ptr_177
              #                    occupy s2 with temp_124_array_ele_177
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          new_var temp_125_arithop_177:i32 
              #                          temp_125_arithop_177 = Add i32 sum_170, temp_124_array_ele_177 
              #                    occupy a2 with sum_170
              #                    occupy s2 with temp_124_array_ele_177
              #                    occupy s3 with temp_125_arithop_177
    add     s3,a2,s2
              #                    free a2
              #                    free s2
              #                    free s3
              #                          sum_170 = i32 temp_125_arithop_177 
              #                    occupy s3 with temp_125_arithop_177
              #                    occupy a2 with sum_170
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_126_arithop_179:i32 
              #                          temp_126_arithop_179 = Sub i32 stride_168, 1_0 
              #                    occupy a1 with stride_168
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_126_arithop_179
              #                    regtab:    a0:Freed { symidx: arr_168, tracked: true } |     a1:Occupied { symidx: stride_168, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_126_arithop_179, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } | 


    sub     s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                          new_var temp_127_arithop_179:i32 
              #                          temp_127_arithop_179 = Mod i32 i_170, stride_168 
              #                    occupy a3 with i_170
              #                    occupy a1 with stride_168
              #                    occupy s4 with temp_127_arithop_179
              #                    load from temp_127_arithop_179 in mem


    lw      s4,32(sp)
    rem     s4,a3,a1
              #                    free a3
              #                    free a1
              #                    free s4
              #                          new_var temp_128_cmp_179:i1 
              #                          temp_128_cmp_179 = icmp i32 Ne temp_127_arithop_179, temp_126_arithop_179 
              #                    occupy s4 with temp_127_arithop_179
              #                    occupy s1 with temp_126_arithop_179
              #                    occupy s5 with temp_128_cmp_179
    xor     s5,s4,s1
    snez    s5, s5
              #                    free s4
              #                    free s1
              #                    free s5
              #                          br i1 temp_128_cmp_179, label branch_true_180, label branch_false_180 
              #                    occupy s5 with temp_128_cmp_179
              #                    free s5
              #                    occupy s5 with temp_128_cmp_179
    bnez    s5, .branch_true_180
              #                    free s5
    j       .branch_false_180
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     s1:Freed { symidx: temp_126_arithop_179, tracked: true } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } |     s4:Freed { symidx: temp_127_arithop_179, tracked: true } |     s5:Freed { symidx: temp_128_cmp_179, tracked: true } | 
              #                          label branch_true_180: 
.branch_true_180:
              #                          new_var temp_129_index_ptr_181:ptr->i32 
              #                          temp_129_index_ptr_181 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
              #                    occupy a7 with temp_129_index_ptr_181
    li      a7, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a3 with i_170
              #                    occupy s7 with _anonymous_of_arr_168_0
    mul     s7,s6,a3
              #                    free s6
              #                    free a3
    add     a7,a7,s7
              #                    free s7
    slli a7,a7,2
              #                    occupy a0 with arr_168
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          store 0_0:i32 temp_129_index_ptr_181:ptr->i32 
              #                    occupy a7 with temp_129_index_ptr_181
              #                    occupy s8 with 0_0
    li      s8, 0
    sw      s8,0(a7)
              #                    free s8
              #                    free a7
              #                          mu arr_168:643 
              #                          arr_168 = chi arr_168:643 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     s1:Freed { symidx: temp_126_arithop_179, tracked: true } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } |     s4:Freed { symidx: temp_127_arithop_179, tracked: true } |     s5:Freed { symidx: temp_128_cmp_179, tracked: true } | 
              #                          label branch_false_180: 
.branch_false_180:
              #                          new_var temp_131_index_ptr_183:ptr->i32 
              #                          temp_131_index_ptr_183 = getelementptr arr_168:ptr->i32 [Some(i_170)] 
              #                    occupy a7 with temp_131_index_ptr_183
    li      a7, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a3 with i_170
              #                    occupy s7 with _anonymous_of_arr_168_0
    mul     s7,s6,a3
              #                    free s6
              #                    free a3
    add     a7,a7,s7
              #                    free s7
    slli a7,a7,2
              #                    occupy a0 with arr_168
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          store sum_170:i32 temp_131_index_ptr_183:ptr->i32 
              #                    occupy a7 with temp_131_index_ptr_183
              #                    occupy a2 with sum_170
    sw      a2,0(a7)
              #                    free a2
              #                    free a7
              #                          mu arr_168:653 
              #                          arr_168 = chi arr_168:653 
              #                          sum_170 = i32 0_0 
              #                    occupy a2 with sum_170
    li      a2, 0
              #                    free a2
              #                          jump label: L7_0 
              #                    store to temp_131_index_ptr_183 in mem offset legal
    sd      a7,0(sp)
              #                    release a7 with temp_131_index_ptr_183
              #                    occupy a7 with _anonymous_of_temp_129_index_ptr_181_0
              #                    load from temp_129_index_ptr_181 in mem
    ld      a7,16(sp)
    j       .L7_0
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     a7:Freed { symidx: temp_129_index_ptr_181, tracked: true } |     s1:Freed { symidx: temp_126_arithop_179, tracked: true } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } |     s4:Freed { symidx: temp_127_arithop_179, tracked: true } |     s5:Freed { symidx: temp_128_cmp_179, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a4:Freed { symidx: temp_123_array_ptr_177, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } |     a7:Freed { symidx: temp_129_index_ptr_181, tracked: true } |     s1:Freed { symidx: temp_126_arithop_179, tracked: true } |     s2:Freed { symidx: temp_124_array_ele_177, tracked: true } |     s3:Freed { symidx: temp_125_arithop_177, tracked: true } |     s4:Freed { symidx: temp_127_arithop_179, tracked: true } |     s5:Freed { symidx: temp_128_cmp_179, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_130_arithop_177:i32 
              #                          temp_130_arithop_177 = Add i32 i_170, 1_0 
              #                    occupy a3 with i_170
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with temp_130_arithop_177
    add     s7,a3,s6
              #                    free a3
              #                    free s6
              #                    free s7
              #                          i_170 = i32 temp_130_arithop_177 
              #                    occupy s7 with temp_130_arithop_177
              #                    occupy a3 with i_170
    mv      a3, s7
              #                    free s7
              #                    free a3
              #                          jump label: while.head_176 
              #                    store to temp_130_arithop_177 in mem offset legal
    sw      s7,12(sp)
              #                    release s7 with temp_130_arithop_177
              #                    store to temp_124_array_ele_177 in mem offset legal
    sw      s2,44(sp)
              #                    release s2 with temp_124_array_ele_177
              #                    store to temp_125_arithop_177 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_125_arithop_177
              #                    store to temp_123_array_ptr_177 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_123_array_ptr_177
              #                    store to temp_127_arithop_179 in mem offset legal
    sw      s4,32(sp)
              #                    release s4 with temp_127_arithop_179
              #                    store to temp_122_cmp_175 in mem offset legal
    sb      a6,63(sp)
              #                    release a6 with temp_122_cmp_175
              #                    store to temp_121_ptr2globl_175 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_121_ptr2globl_175
              #                    store to temp_126_arithop_179 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_126_arithop_179
              #                    store to temp_128_cmp_179 in mem offset legal
    sb      s5,31(sp)
              #                    release s5 with temp_128_cmp_179
              #                    store to temp_129_index_ptr_181 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_129_index_ptr_181
    j       .while.head_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } | 
              #                          label while.exit_176: 
.while.exit_176:
              #                          ret 0_0 
              #                    load from ra_calSum_0 in mem
    ld      ra,96(sp)
              #                    load from s0_calSum_0 in mem
    ld      s0,88(sp)
              #                    store to arr_168 in mem offset legal
    sd      a0,80(sp)
              #                    release a0 with arr_168
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: stride_168, tracked: true } |     a2:Freed { symidx: sum_170, tracked: true } |     a3:Freed { symidx: i_170, tracked: true } |     a5:Freed { symidx: temp_121_ptr2globl_175, tracked: true } |     a6:Freed { symidx: temp_122_cmp_175, tracked: true } | 
              #                    regtab 
              #                          Define avgPooling_0 [arr_188, stride_188] -> avgPooling_ret_0 
    .globl avgPooling
    .type avgPooling,@function
avgPooling:
              #                    mem layout:|ra_avgPooling:8 at 216|s0_avgPooling:8 at 208|arr:8 at 200|stride:4 at 196|sum:4 at 192|i:4 at 188|lastnum:4 at 184|temp_132_ptr2globl:4 at 180|temp_133_cmp:1 at 179|none:3 at 176|temp_134_arithop:4 at 172|temp_135_cmp:1 at 171|none:3 at 168|temp_136_array_ptr:8 at 160|temp_137_array_ele:4 at 156|temp_138_arithop:4 at 152|temp_139_arithop:4 at 148|temp_140_arithop:4 at 144|temp_141_cmp:1 at 143|none:7 at 136|temp_142_array_ptr:8 at 128|temp_143_array_ele:4 at 124|none:4 at 120|temp_144_index_ptr:8 at 112|temp_145_arithop:4 at 108|none:4 at 104|temp_146_array_ptr:8 at 96|temp_147_array_ele:4 at 92|temp_148_arithop:4 at 88|temp_149_arithop:4 at 84|temp_150_arithop:4 at 80|temp_151_arithop:4 at 76|none:4 at 72|temp_152_array_ptr:8 at 64|temp_153_array_ele:4 at 60|temp_154_arithop:4 at 56|temp_155_arithop:4 at 52|none:4 at 48|temp_156_index_ptr:8 at 40|temp_157_arithop:4 at 36|temp_158_ptr2globl:4 at 32|temp_159_arithop:4 at 28|temp_160_arithop:4 at 24|temp_161_ptr2globl:4 at 20|temp_162_cmp:1 at 19|none:3 at 16|temp_163_index_ptr:8 at 8|temp_164_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-224
              #                    store to ra_avgPooling_0 in mem offset legal
    sd      ra,216(sp)
              #                    store to s0_avgPooling_0 in mem offset legal
    sd      s0,208(sp)
    addi    s0,sp,224
              #                          new_var arr_188:ptr->i32 
              #                          alloc i32 sum_190 
              #                          alloc i32 i_190 
              #                          alloc i32 lastnum_190 
              #                          alloc i32 temp_132_ptr2globl_196 
              #                          alloc i1 temp_133_cmp_196 
              #                          alloc i32 temp_134_arithop_199 
              #                          alloc i1 temp_135_cmp_199 
              #                          alloc ptr->i32 temp_136_array_ptr_201 
              #                          alloc i32 temp_137_array_ele_201 
              #                          alloc i32 temp_138_arithop_201 
              #                          alloc i32 temp_139_arithop_198 
              #                          alloc i32 temp_140_arithop_203 
              #                          alloc i1 temp_141_cmp_203 
              #                          alloc ptr->i32 temp_142_array_ptr_205 
              #                          alloc i32 temp_143_array_ele_205 
              #                          alloc ptr->i32 temp_144_index_ptr_205 
              #                          alloc i32 temp_145_arithop_205 
              #                          alloc ptr->i32 temp_146_array_ptr_208 
              #                          alloc i32 temp_147_array_ele_208 
              #                          alloc i32 temp_148_arithop_208 
              #                          alloc i32 temp_149_arithop_208 
              #                          alloc i32 temp_150_arithop_208 
              #                          alloc i32 temp_151_arithop_208 
              #                          alloc ptr->i32 temp_152_array_ptr_208 
              #                          alloc i32 temp_153_array_ele_208 
              #                          alloc i32 temp_154_arithop_208 
              #                          alloc i32 temp_155_arithop_208 
              #                          alloc ptr->i32 temp_156_index_ptr_208 
              #                          alloc i32 temp_157_arithop_208 
              #                          alloc i32 temp_158_ptr2globl_190 
              #                          alloc i32 temp_159_arithop_190 
              #                          alloc i32 temp_160_arithop_190 
              #                          alloc i32 temp_161_ptr2globl_214 
              #                          alloc i1 temp_162_cmp_214 
              #                          alloc ptr->i32 temp_163_index_ptr_216 
              #                          alloc i32 temp_164_arithop_216 
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var sum_190:i32 
              #                          new_var i_190:i32 
              #                          i_190 = i32 0_0 
              #                    occupy a2 with i_190
    li      a2, 0
              #                    free a2
              #                          sum_190 = i32 0_0 
              #                    occupy a3 with sum_190
    li      a3, 0
              #                    free a3
              #                          new_var lastnum_190:i32 
              #                          jump label: while.head_197 
    j       .while.head_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } | 
              #                          label while.head_197: 
.while.head_197:
              #                          new_var temp_132_ptr2globl_196:i32 
              #                          temp_132_ptr2globl_196 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with temp_132_ptr2globl_196
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_133_cmp_196:i1 
              #                          temp_133_cmp_196 = icmp i32 Slt i_190, temp_132_ptr2globl_196 
              #                    occupy a2 with i_190
              #                    occupy a5 with temp_132_ptr2globl_196
              #                    occupy a6 with temp_133_cmp_196
    slt     a6,a2,a5
              #                    free a2
              #                    free a5
              #                    free a6
              #                          br i1 temp_133_cmp_196, label while.body_197, label while.exit_197 
              #                    occupy a6 with temp_133_cmp_196
              #                    free a6
              #                    occupy a6 with temp_133_cmp_196
    bnez    a6, .while.body_197
              #                    free a6
    j       .while.exit_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } | 
              #                          label while.body_197: 
.while.body_197:
              #                          new_var temp_134_arithop_199:i32 
              #                          temp_134_arithop_199 = Sub i32 stride_188, 1_0 
              #                    occupy a1 with stride_188
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a7 with temp_134_arithop_199
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Occupied { symidx: temp_134_arithop_199, tracked: true, occupy_count: 1 } | 


    sub     a7,a1,a4
              #                    free a1
              #                    free a4
              #                    free a7
              #                          new_var temp_135_cmp_199:i1 
              #                          temp_135_cmp_199 = icmp i32 Slt i_190, temp_134_arithop_199 
              #                    occupy a2 with i_190
              #                    occupy a7 with temp_134_arithop_199
              #                    occupy s1 with temp_135_cmp_199
    slt     s1,a2,a7
              #                    free a2
              #                    free a7
              #                    free s1
              #                          br i1 temp_135_cmp_199, label branch_true_200, label branch_false_200 
              #                    occupy s1 with temp_135_cmp_199
              #                    free s1
              #                    occupy s1 with temp_135_cmp_199
    bnez    s1, .branch_true_200
              #                    free s1
    j       .branch_false_200
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } | 
              #                          label branch_true_200: 
.branch_true_200:
              #                          new_var temp_136_array_ptr_201:ptr->i32 
              #                          temp_136_array_ptr_201 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
              #                    occupy a4 with temp_136_array_ptr_201
    li      a4, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a2 with i_190
              #                    occupy s3 with _anonymous_of_arr_188_0
    mul     s3,s2,a2
              #                    free s2
              #                    free a2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
              #                    occupy a0 with arr_188
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_137_array_ele_201:i32 
              #                          temp_137_array_ele_201 = load temp_136_array_ptr_201:ptr->i32 
              #                    occupy a4 with temp_136_array_ptr_201
              #                    occupy s4 with temp_137_array_ele_201
    lw      s4,0(a4)
              #                    free s4
              #                    free a4
              #                          new_var temp_138_arithop_201:i32 
              #                          temp_138_arithop_201 = Add i32 sum_190, temp_137_array_ele_201 
              #                    occupy a3 with sum_190
              #                    occupy s4 with temp_137_array_ele_201
              #                    occupy s5 with temp_138_arithop_201
    add     s5,a3,s4
              #                    free a3
              #                    free s4
              #                    free s5
              #                          sum_190 = i32 temp_138_arithop_201 
              #                    occupy s5 with temp_138_arithop_201
              #                    occupy a3 with sum_190
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } | 
              #                          label branch_false_200: 
.branch_false_200:
              #                          new_var temp_140_arithop_203:i32 
              #                          temp_140_arithop_203 = Sub i32 stride_188, 1_0 
              #                    occupy a1 with stride_188
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_140_arithop_203
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Occupied { symidx: temp_140_arithop_203, tracked: true, occupy_count: 1 } | 


    sub     s2,a1,a4
              #                    free a1
              #                    free a4
              #                    free s2
              #                          new_var temp_141_cmp_203:i1 
              #                          temp_141_cmp_203 = icmp i32 Eq i_190, temp_140_arithop_203 
              #                    occupy a2 with i_190
              #                    occupy s2 with temp_140_arithop_203
              #                    occupy s3 with temp_141_cmp_203
    xor     s3,a2,s2
    seqz    s3, s3
              #                    free a2
              #                    free s2
              #                    free s3
              #                          br i1 temp_141_cmp_203, label branch_true_204, label branch_false_204 
              #                    occupy s3 with temp_141_cmp_203
              #                    free s3
              #                    occupy s3 with temp_141_cmp_203
    bnez    s3, .branch_true_204
              #                    free s3
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } | 
              #                          label branch_true_204: 
.branch_true_204:
              #                          new_var temp_142_array_ptr_205:ptr->i32 
              #                          temp_142_array_ptr_205 = getelementptr arr_188:ptr->i32 [Some(0_0)] 
              #                    occupy a4 with temp_142_array_ptr_205
    li      a4, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s6 with _anonymous_of_arr_188_0
    mul     s6,s4,s5
              #                    free s4
              #                    free s5
    add     a4,a4,s6
              #                    free s6
    slli a4,a4,2
              #                    occupy a0 with arr_188
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_143_array_ele_205:i32 
              #                          temp_143_array_ele_205 = load temp_142_array_ptr_205:ptr->i32 
              #                    occupy a4 with temp_142_array_ptr_205
              #                    occupy s7 with temp_143_array_ele_205
    lw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          lastnum_190 = i32 temp_143_array_ele_205 
              #                    occupy s7 with temp_143_array_ele_205
              #                    occupy s8 with lastnum_190
    mv      s8, s7
              #                    free s7
              #                    free s8
              #                          new_var temp_144_index_ptr_205:ptr->i32 
              #                          temp_144_index_ptr_205 = getelementptr arr_188:ptr->i32 [Some(0_0)] 
              #                    occupy s9 with temp_144_index_ptr_205
    li      s9, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    found literal reg Some(s5) already exist with 0_0
              #                    occupy s5 with 0_0
              #                    occupy s10 with _anonymous_of_arr_188_0
    mul     s10,s4,s5
              #                    free s4
              #                    free s5
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy a0 with arr_188
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_145_arithop_205:i32 
              #                          temp_145_arithop_205 = Div i32 sum_190, stride_188 
              #                    occupy a3 with sum_190
              #                    occupy a1 with stride_188
              #                    occupy s11 with temp_145_arithop_205
    div     s11,a3,a1
              #                    free a3
              #                    free a1
              #                    free s11
              #                          store temp_145_arithop_205:i32 temp_144_index_ptr_205:ptr->i32 
              #                    occupy s9 with temp_144_index_ptr_205
              #                    occupy s11 with temp_145_arithop_205
    sw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          mu arr_188:723 
              #                          arr_188 = chi arr_188:723 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } | 
              #                          label branch_false_204: 
.branch_false_204:
              #                          new_var temp_146_array_ptr_208:ptr->i32 
              #                          temp_146_array_ptr_208 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
              #                    occupy a4 with temp_146_array_ptr_208
    li      a4, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a2 with i_190
              #                    occupy s5 with _anonymous_of_arr_188_0
    mul     s5,s4,a2
              #                    free s4
              #                    free a2
    add     a4,a4,s5
              #                    free s5
    slli a4,a4,2
              #                    occupy a0 with arr_188
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          new_var temp_147_array_ele_208:i32 
              #                          temp_147_array_ele_208 = load temp_146_array_ptr_208:ptr->i32 
              #                    occupy a4 with temp_146_array_ptr_208
              #                    occupy s6 with temp_147_array_ele_208
    lw      s6,0(a4)
              #                    free s6
              #                    free a4
              #                          new_var temp_148_arithop_208:i32 
              #                          temp_148_arithop_208 = Add i32 sum_190, temp_147_array_ele_208 
              #                    occupy a3 with sum_190
              #                    occupy s6 with temp_147_array_ele_208
              #                    occupy s7 with temp_148_arithop_208
    add     s7,a3,s6
              #                    free a3
              #                    free s6
              #                    free s7
              #                          new_var temp_149_arithop_208:i32 
              #                          temp_149_arithop_208 = Sub i32 temp_148_arithop_208, lastnum_190 
              #                    occupy s7 with temp_148_arithop_208
              #                    occupy s8 with lastnum_190
              #                    load from lastnum_190 in mem


    lw      s8,184(sp)
              #                    occupy s9 with temp_149_arithop_208
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_146_array_ptr_208, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } |     s4:Freed { symidx: 1_0, tracked: false } |     s5:Freed { symidx: _anonymous_of_arr_188_0, tracked: false } |     s6:Freed { symidx: temp_147_array_ele_208, tracked: true } |     s7:Occupied { symidx: temp_148_arithop_208, tracked: true, occupy_count: 1 } |     s8:Occupied { symidx: lastnum_190, tracked: true, occupy_count: 1 } |     s9:Occupied { symidx: temp_149_arithop_208, tracked: true, occupy_count: 1 } | 


    sub     s9,s7,s8
              #                    free s7
              #                    free s8
              #                    free s9
              #                          sum_190 = i32 temp_149_arithop_208 
              #                    occupy s9 with temp_149_arithop_208
              #                    occupy a3 with sum_190
    mv      a3, s9
              #                    free s9
              #                    free a3
              #                          new_var temp_150_arithop_208:i32 
              #                          temp_150_arithop_208 = Sub i32 i_190, stride_188 
              #                    occupy a2 with i_190
              #                    occupy a1 with stride_188
              #                    occupy s10 with temp_150_arithop_208
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: i_190, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_146_array_ptr_208, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s10:Occupied { symidx: temp_150_arithop_208, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } |     s4:Freed { symidx: 1_0, tracked: false } |     s5:Freed { symidx: _anonymous_of_arr_188_0, tracked: false } |     s6:Freed { symidx: temp_147_array_ele_208, tracked: true } |     s7:Freed { symidx: temp_148_arithop_208, tracked: true } |     s8:Freed { symidx: lastnum_190, tracked: true } |     s9:Freed { symidx: temp_149_arithop_208, tracked: true } | 


    sub     s10,a2,a1
              #                    free a2
              #                    free a1
              #                    free s10
              #                          new_var temp_151_arithop_208:i32 
              #                          temp_151_arithop_208 = Add i32 temp_150_arithop_208, 1_0 
              #                    occupy s10 with temp_150_arithop_208
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s11 with temp_151_arithop_208
    add     s11,s10,s4
              #                    free s10
              #                    free s4
              #                    free s11
              #                          new_var temp_152_array_ptr_208:ptr->i32 
              #                          temp_152_array_ptr_208 = getelementptr arr_188:ptr->i32 [Some(temp_151_arithop_208)] 
              #                    occupy s4 with temp_152_array_ptr_208
    li      s4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s11 with temp_151_arithop_208
              #                    store to arr_188 in mem offset legal
    sd      a0,200(sp)
              #                    release a0 with arr_188
              #                    occupy a0 with _anonymous_of_arr_188_0
    mul     a0,s5,s11
              #                    free s5
              #                    free s11
    add     s4,s4,a0
              #                    free a0
    slli s4,s4,2
              #                    occupy a0 with arr_188
              #                    load from arr_188 in mem
    ld      a0,200(sp)
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_153_array_ele_208:i32 
              #                          temp_153_array_ele_208 = load temp_152_array_ptr_208:ptr->i32 
              #                    occupy s4 with temp_152_array_ptr_208
              #                    occupy s5 with temp_153_array_ele_208
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          lastnum_190 = i32 temp_153_array_ele_208 
              #                    occupy s5 with temp_153_array_ele_208
              #                    occupy s8 with lastnum_190
    mv      s8, s5
              #                    free s5
              #                    free s8
              #                          new_var temp_154_arithop_208:i32 
              #                          temp_154_arithop_208 = Sub i32 i_190, stride_188 
              #                    occupy a2 with i_190
              #                    occupy a1 with stride_188
              #                    store to arr_188 in mem offset legal
    sd      a0,200(sp)
              #                    release a0 with arr_188
              #                    occupy a0 with temp_154_arithop_208
              #                    regtab:    a0:Occupied { symidx: temp_154_arithop_208, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: stride_188, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: i_190, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_146_array_ptr_208, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s10:Freed { symidx: temp_150_arithop_208, tracked: true } |     s11:Freed { symidx: temp_151_arithop_208, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } |     s4:Freed { symidx: temp_152_array_ptr_208, tracked: true } |     s5:Freed { symidx: temp_153_array_ele_208, tracked: true } |     s6:Freed { symidx: temp_147_array_ele_208, tracked: true } |     s7:Freed { symidx: temp_148_arithop_208, tracked: true } |     s8:Freed { symidx: lastnum_190, tracked: true } |     s9:Freed { symidx: temp_149_arithop_208, tracked: true } | 


    sub     a0,a2,a1
              #                    free a2
              #                    free a1
              #                    free a0
              #                          new_var temp_155_arithop_208:i32 
              #                          temp_155_arithop_208 = Add i32 temp_154_arithop_208, 1_0 
              #                    occupy a0 with temp_154_arithop_208
              #                    store to stride_188 in mem offset legal
    sw      a1,196(sp)
              #                    release a1 with stride_188
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to i_190 in mem offset legal
    sw      a2,188(sp)
              #                    release a2 with i_190
              #                    occupy a2 with temp_155_arithop_208
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_156_index_ptr_208:ptr->i32 
              #                          temp_156_index_ptr_208 = getelementptr arr_188:ptr->i32 [Some(temp_155_arithop_208)] 
              #                    occupy a1 with temp_156_index_ptr_208
    li      a1, 0
              #                    store to temp_154_arithop_208 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_154_arithop_208
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with temp_155_arithop_208
              #                    store to sum_190 in mem offset legal
    sw      a3,192(sp)
              #                    release a3 with sum_190
              #                    occupy a3 with _anonymous_of_arr_188_0
    mul     a3,a0,a2
              #                    free a0
              #                    free a2
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a0 with arr_188
              #                    load from arr_188 in mem
    ld      a0,200(sp)
    add     a1,a1,a0
              #                    free a0
              #                    free a1
              #                          new_var temp_157_arithop_208:i32 
              #                          temp_157_arithop_208 = Div i32 sum_190, stride_188 
              #                    occupy a3 with sum_190
              #                    load from sum_190 in mem


    lw      a3,192(sp)
              #                    store to arr_188 in mem offset legal
    sd      a0,200(sp)
              #                    release a0 with arr_188
              #                    occupy a0 with stride_188
              #                    load from stride_188 in mem


    lw      a0,196(sp)
              #                    store to temp_156_index_ptr_208 in mem offset legal
    sd      a1,40(sp)
              #                    release a1 with temp_156_index_ptr_208
              #                    occupy a1 with temp_157_arithop_208
    div     a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                          store temp_157_arithop_208:i32 temp_156_index_ptr_208:ptr->i32 
              #                    store to stride_188 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with stride_188
              #                    occupy a0 with temp_156_index_ptr_208
              #                    load from temp_156_index_ptr_208 in mem
    ld      a0,40(sp)
              #                    occupy a1 with temp_157_arithop_208
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_188:764 
              #                          arr_188 = chi arr_188:764 
              #                          jump label: L2_0 
              #                    store to temp_153_array_ele_208 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_153_array_ele_208
              #                    store to temp_151_arithop_208 in mem offset legal
    sw      s11,76(sp)
              #                    release s11 with temp_151_arithop_208
              #                    store to temp_150_arithop_208 in mem offset legal
    sw      s10,80(sp)
              #                    release s10 with temp_150_arithop_208
              #                    store to temp_155_arithop_208 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_155_arithop_208
              #                    store to temp_157_arithop_208 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_157_arithop_208
              #                    store to temp_148_arithop_208 in mem offset legal
    sw      s7,88(sp)
              #                    release s7 with temp_148_arithop_208
              #                    store to temp_149_arithop_208 in mem offset legal
    sw      s9,84(sp)
              #                    release s9 with temp_149_arithop_208
              #                    store to temp_152_array_ptr_208 in mem offset legal
    sd      s4,64(sp)
              #                    release s4 with temp_152_array_ptr_208
              #                    store to temp_146_array_ptr_208 in mem offset legal
    sd      a4,96(sp)
              #                    release a4 with temp_146_array_ptr_208
              #                    store to temp_156_index_ptr_208 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_156_index_ptr_208
              #                    store to temp_147_array_ele_208 in mem offset legal
    sw      s6,92(sp)
              #                    release s6 with temp_147_array_ele_208
              #                    occupy s11 with _anonymous_of_temp_145_arithop_205_0
              #                    load from temp_145_arithop_205 in mem


    lw      s11,108(sp)
              #                    occupy a2 with _anonymous_of_i_190_0
              #                    load from i_190 in mem


    lw      a2,188(sp)
              #                    occupy a1 with _anonymous_of_stride_188_0
              #                    load from stride_188 in mem


    lw      a1,196(sp)
              #                    occupy s7 with _anonymous_of_temp_143_array_ele_205_0
              #                    load from temp_143_array_ele_205 in mem


    lw      s7,124(sp)
              #                    occupy s9 with _anonymous_of_temp_144_index_ptr_205_0
              #                    load from temp_144_index_ptr_205 in mem
    ld      s9,112(sp)
              #                    occupy a4 with _anonymous_of_temp_142_array_ptr_205_0
              #                    load from temp_142_array_ptr_205 in mem
    ld      a4,128(sp)
              #                    occupy a0 with _anonymous_of_arr_188_0
              #                    load from arr_188 in mem
    ld      a0,200(sp)
    j       .L2_0
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_142_array_ptr_205, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s11:Freed { symidx: temp_145_arithop_205, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s2:Freed { symidx: temp_140_arithop_203, tracked: true } |     s3:Freed { symidx: temp_141_cmp_203, tracked: true } |     s7:Freed { symidx: temp_143_array_ele_205, tracked: true } |     s8:Freed { symidx: lastnum_190, tracked: true } |     s9:Freed { symidx: temp_144_index_ptr_205, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_136_array_ptr_201, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s4:Freed { symidx: temp_137_array_ele_201, tracked: true } |     s5:Freed { symidx: temp_138_arithop_201, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: temp_136_array_ptr_201, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_134_arithop_199, tracked: true } |     s1:Freed { symidx: temp_135_cmp_199, tracked: true } |     s4:Freed { symidx: temp_137_array_ele_201, tracked: true } |     s5:Freed { symidx: temp_138_arithop_201, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_139_arithop_198:i32 
              #                          temp_139_arithop_198 = Add i32 i_190, 1_0 
              #                    occupy a2 with i_190
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_139_arithop_198
    add     s3,a2,s2
              #                    free a2
              #                    free s2
              #                    free s3
              #                          i_190 = i32 temp_139_arithop_198 
              #                    occupy s3 with temp_139_arithop_198
              #                    occupy a2 with i_190
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_197 
              #                    store to temp_139_arithop_198 in mem offset legal
    sw      s3,148(sp)
              #                    release s3 with temp_139_arithop_198
              #                    store to temp_138_arithop_201 in mem offset legal
    sw      s5,152(sp)
              #                    release s5 with temp_138_arithop_201
              #                    store to temp_132_ptr2globl_196 in mem offset legal
    sw      a5,180(sp)
              #                    release a5 with temp_132_ptr2globl_196
              #                    store to temp_134_arithop_199 in mem offset legal
    sw      a7,172(sp)
              #                    release a7 with temp_134_arithop_199
              #                    store to temp_133_cmp_196 in mem offset legal
    sb      a6,179(sp)
              #                    release a6 with temp_133_cmp_196
              #                    store to temp_135_cmp_199 in mem offset legal
    sb      s1,171(sp)
              #                    release s1 with temp_135_cmp_199
              #                    store to temp_137_array_ele_201 in mem offset legal
    sw      s4,156(sp)
              #                    release s4 with temp_137_array_ele_201
              #                    store to temp_136_array_ptr_201 in mem offset legal
    sd      a4,160(sp)
              #                    release a4 with temp_136_array_ptr_201
    j       .while.head_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } | 
              #                          label while.exit_197: 
.while.exit_197:
              #                          new_var temp_158_ptr2globl_190:i32 
              #                          temp_158_ptr2globl_190 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a7 with temp_158_ptr2globl_190
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          new_var temp_159_arithop_190:i32 
              #                          temp_159_arithop_190 = Sub i32 temp_158_ptr2globl_190, stride_188 
              #                    occupy a7 with temp_158_ptr2globl_190
              #                    occupy a1 with stride_188
              #                    occupy s1 with temp_159_arithop_190
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a4:Freed { symidx: *n_0, tracked: false } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Occupied { symidx: temp_158_ptr2globl_190, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_159_arithop_190, tracked: true, occupy_count: 1 } | 


    sub     s1,a7,a1
              #                    free a7
              #                    free a1
              #                    free s1
              #                          new_var temp_160_arithop_190:i32 
              #                          temp_160_arithop_190 = Add i32 temp_159_arithop_190, 1_0 
              #                    occupy s1 with temp_159_arithop_190
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_160_arithop_190
    add     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          i_190 = i32 temp_160_arithop_190 
              #                    occupy s3 with temp_160_arithop_190
              #                    occupy a2 with i_190
    mv      a2, s3
              #                    free s3
              #                    free a2
              #                          jump label: while.head_215 
    j       .while.head_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_158_ptr2globl_190, tracked: true } |     s1:Freed { symidx: temp_159_arithop_190, tracked: true } |     s3:Freed { symidx: temp_160_arithop_190, tracked: true } | 
              #                          label while.head_215: 
.while.head_215:
              #                          new_var temp_161_ptr2globl_214:i32 
              #                          temp_161_ptr2globl_214 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy s2 with temp_161_ptr2globl_214
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          new_var temp_162_cmp_214:i1 
              #                          temp_162_cmp_214 = icmp i32 Slt i_190, temp_161_ptr2globl_214 
              #                    occupy a2 with i_190
              #                    occupy s2 with temp_161_ptr2globl_214
              #                    occupy s4 with temp_162_cmp_214
    slt     s4,a2,s2
              #                    free a2
              #                    free s2
              #                    free s4
              #                          br i1 temp_162_cmp_214, label while.body_215, label while.exit_215 
              #                    occupy s4 with temp_162_cmp_214
              #                    free s4
              #                    occupy s4 with temp_162_cmp_214
    bnez    s4, .while.body_215
              #                    free s4
    j       .while.exit_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_158_ptr2globl_190, tracked: true } |     s1:Freed { symidx: temp_159_arithop_190, tracked: true } |     s2:Freed { symidx: temp_161_ptr2globl_214, tracked: true } |     s3:Freed { symidx: temp_160_arithop_190, tracked: true } |     s4:Freed { symidx: temp_162_cmp_214, tracked: true } | 
              #                          label while.body_215: 
.while.body_215:
              #                          new_var temp_163_index_ptr_216:ptr->i32 
              #                          temp_163_index_ptr_216 = getelementptr arr_188:ptr->i32 [Some(i_190)] 
              #                    occupy a4 with temp_163_index_ptr_216
    li      a4, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy a2 with i_190
              #                    occupy s6 with _anonymous_of_arr_188_0
    mul     s6,s5,a2
              #                    free s5
              #                    free a2
    add     a4,a4,s6
              #                    free s6
    slli a4,a4,2
              #                    occupy a0 with arr_188
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                          store 0_0:i32 temp_163_index_ptr_216:ptr->i32 
              #                    occupy a4 with temp_163_index_ptr_216
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(a4)
              #                    free s7
              #                    free a4
              #                          mu arr_188:791 
              #                          arr_188 = chi arr_188:791 
              #                          new_var temp_164_arithop_216:i32 
              #                          temp_164_arithop_216 = Add i32 i_190, 1_0 
              #                    occupy a2 with i_190
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s8 with temp_164_arithop_216
    add     s8,a2,s5
              #                    free a2
              #                    free s5
              #                    free s8
              #                          i_190 = i32 temp_164_arithop_216 
              #                    occupy s8 with temp_164_arithop_216
              #                    occupy a2 with i_190
    mv      a2, s8
              #                    free s8
              #                    free a2
              #                          jump label: while.head_215 
              #                    store to temp_161_ptr2globl_214 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_161_ptr2globl_214
              #                    store to temp_164_arithop_216 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_164_arithop_216
              #                    store to temp_162_cmp_214 in mem offset legal
    sb      s4,19(sp)
              #                    release s4 with temp_162_cmp_214
              #                    store to temp_163_index_ptr_216 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_163_index_ptr_216
    j       .while.head_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_158_ptr2globl_190, tracked: true } |     s1:Freed { symidx: temp_159_arithop_190, tracked: true } |     s2:Freed { symidx: temp_161_ptr2globl_214, tracked: true } |     s3:Freed { symidx: temp_160_arithop_190, tracked: true } |     s4:Freed { symidx: temp_162_cmp_214, tracked: true } | 
              #                          label while.exit_215: 
.while.exit_215:
              #                          ret 0_0 
              #                    load from ra_avgPooling_0 in mem
    ld      ra,216(sp)
              #                    load from s0_avgPooling_0 in mem
    ld      s0,208(sp)
              #                    store to arr_188 in mem offset legal
    sd      a0,200(sp)
              #                    release a0 with arr_188
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,224
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: stride_188, tracked: true } |     a2:Freed { symidx: i_190, tracked: true } |     a3:Freed { symidx: sum_190, tracked: true } |     a5:Freed { symidx: temp_132_ptr2globl_196, tracked: true } |     a6:Freed { symidx: temp_133_cmp_196, tracked: true } |     a7:Freed { symidx: temp_158_ptr2globl_190, tracked: true } |     s1:Freed { symidx: temp_159_arithop_190, tracked: true } |     s2:Freed { symidx: temp_161_ptr2globl_214, tracked: true } |     s3:Freed { symidx: temp_160_arithop_190, tracked: true } |     s4:Freed { symidx: temp_162_cmp_214, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 752|s0_main:8 at 744|arr:128 at 616|result:128 at 488|temp_165_index_ptr:8 at 480|temp_166_index_ptr:8 at 472|temp_167_index_ptr:8 at 464|temp_168_index_ptr:8 at 456|temp_169_index_ptr:8 at 448|temp_170_index_ptr:8 at 440|temp_171_index_ptr:8 at 432|temp_172_index_ptr:8 at 424|temp_173_index_ptr:8 at 416|temp_174_index_ptr:8 at 408|temp_175_index_ptr:8 at 400|temp_176_index_ptr:8 at 392|temp_177_index_ptr:8 at 384|temp_178_index_ptr:8 at 376|temp_179_index_ptr:8 at 368|temp_180_index_ptr:8 at 360|temp_181_index_ptr:8 at 352|temp_182_index_ptr:8 at 344|temp_183_index_ptr:8 at 336|temp_184_index_ptr:8 at 328|temp_185_index_ptr:8 at 320|temp_186_index_ptr:8 at 312|temp_187_index_ptr:8 at 304|temp_188_index_ptr:8 at 296|temp_189_index_ptr:8 at 288|temp_190_index_ptr:8 at 280|temp_191_index_ptr:8 at 272|temp_192_index_ptr:8 at 264|temp_193_index_ptr:8 at 256|temp_194_index_ptr:8 at 248|temp_195_index_ptr:8 at 240|temp_196_index_ptr:8 at 232|t:4 at 228|temp_197_ret_of_arrCopy:4 at 224|temp_198_ret_of_revert:4 at 220|i:4 at 216|temp_199_cmp:1 at 215|none:7 at 208|temp_200_array_ptr:8 at 200|temp_201_array_ele:4 at 196|temp_202_arithop:4 at 192|temp_203_ret_of_bubblesort:4 at 188|temp_204_cmp:1 at 187|none:3 at 184|temp_205_array_ptr:8 at 176|temp_206_array_ele:4 at 172|temp_207_arithop:4 at 168|temp_208_ret_of_getMid:4 at 164|temp_209_ret_of_getMost:4 at 160|temp_210_ret_of_arrCopy:4 at 156|temp_211_ret_of_bubblesort:4 at 152|temp_212_cmp:1 at 151|none:7 at 144|temp_213_array_ptr:8 at 136|temp_214_array_ele:4 at 132|temp_215_arithop:4 at 128|temp_216_ret_of_arrCopy:4 at 124|temp_217_ret_of_insertsort:4 at 120|temp_218_cmp:1 at 119|none:7 at 112|temp_219_array_ptr:8 at 104|temp_220_array_ele:4 at 100|temp_221_arithop:4 at 96|temp_222_ret_of_arrCopy:4 at 92|temp_223_ret_of_QuickSort:4 at 88|temp_224_cmp:1 at 87|none:7 at 80|temp_225_array_ptr:8 at 72|temp_226_array_ele:4 at 68|temp_227_arithop:4 at 64|temp_228_ret_of_arrCopy:4 at 60|temp_229_ret_of_calSum:4 at 56|temp_230_cmp:1 at 55|none:7 at 48|temp_231_array_ptr:8 at 40|temp_232_array_ele:4 at 36|temp_233_arithop:4 at 32|temp_234_ret_of_arrCopy:4 at 28|temp_235_ret_of_avgPooling:4 at 24|temp_236_cmp:1 at 23|none:7 at 16|temp_237_array_ptr:8 at 8|temp_238_array_ele:4 at 4|temp_239_arithop:4 at 0
    addi    sp,sp,-760
              #                    store to ra_main_0 in mem offset legal
    sd      ra,752(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,744(sp)
    addi    s0,sp,760
              #                          alloc Array:i32:[Some(32_0)] arr_221 
              #                          alloc Array:i32:[Some(32_0)] result_221 
              #                          alloc ptr->i32 temp_165_index_ptr_221 
              #                          alloc ptr->i32 temp_166_index_ptr_221 
              #                          alloc ptr->i32 temp_167_index_ptr_221 
              #                          alloc ptr->i32 temp_168_index_ptr_221 
              #                          alloc ptr->i32 temp_169_index_ptr_221 
              #                          alloc ptr->i32 temp_170_index_ptr_221 
              #                          alloc ptr->i32 temp_171_index_ptr_221 
              #                          alloc ptr->i32 temp_172_index_ptr_221 
              #                          alloc ptr->i32 temp_173_index_ptr_221 
              #                          alloc ptr->i32 temp_174_index_ptr_221 
              #                          alloc ptr->i32 temp_175_index_ptr_221 
              #                          alloc ptr->i32 temp_176_index_ptr_221 
              #                          alloc ptr->i32 temp_177_index_ptr_221 
              #                          alloc ptr->i32 temp_178_index_ptr_221 
              #                          alloc ptr->i32 temp_179_index_ptr_221 
              #                          alloc ptr->i32 temp_180_index_ptr_221 
              #                          alloc ptr->i32 temp_181_index_ptr_221 
              #                          alloc ptr->i32 temp_182_index_ptr_221 
              #                          alloc ptr->i32 temp_183_index_ptr_221 
              #                          alloc ptr->i32 temp_184_index_ptr_221 
              #                          alloc ptr->i32 temp_185_index_ptr_221 
              #                          alloc ptr->i32 temp_186_index_ptr_221 
              #                          alloc ptr->i32 temp_187_index_ptr_221 
              #                          alloc ptr->i32 temp_188_index_ptr_221 
              #                          alloc ptr->i32 temp_189_index_ptr_221 
              #                          alloc ptr->i32 temp_190_index_ptr_221 
              #                          alloc ptr->i32 temp_191_index_ptr_221 
              #                          alloc ptr->i32 temp_192_index_ptr_221 
              #                          alloc ptr->i32 temp_193_index_ptr_221 
              #                          alloc ptr->i32 temp_194_index_ptr_221 
              #                          alloc ptr->i32 temp_195_index_ptr_221 
              #                          alloc ptr->i32 temp_196_index_ptr_221 
              #                          alloc i32 t_221 
              #                          alloc i32 temp_197_ret_of_arrCopy_221 
              #                          alloc i32 temp_198_ret_of_revert_221 
              #                          alloc i32 i_221 
              #                          alloc i1 temp_199_cmp_262 
              #                          alloc ptr->i32 temp_200_array_ptr_264 
              #                          alloc i32 temp_201_array_ele_264 
              #                          alloc i32 temp_202_arithop_264 
              #                          alloc i32 temp_203_ret_of_bubblesort_221 
              #                          alloc i1 temp_204_cmp_270 
              #                          alloc ptr->i32 temp_205_array_ptr_272 
              #                          alloc i32 temp_206_array_ele_272 
              #                          alloc i32 temp_207_arithop_272 
              #                          alloc i32 temp_208_ret_of_getMid_221 
              #                          alloc i32 temp_209_ret_of_getMost_221 
              #                          alloc i32 temp_210_ret_of_arrCopy_221 
              #                          alloc i32 temp_211_ret_of_bubblesort_221 
              #                          alloc i1 temp_212_cmp_283 
              #                          alloc ptr->i32 temp_213_array_ptr_285 
              #                          alloc i32 temp_214_array_ele_285 
              #                          alloc i32 temp_215_arithop_285 
              #                          alloc i32 temp_216_ret_of_arrCopy_221 
              #                          alloc i32 temp_217_ret_of_insertsort_221 
              #                          alloc i1 temp_218_cmp_292 
              #                          alloc ptr->i32 temp_219_array_ptr_294 
              #                          alloc i32 temp_220_array_ele_294 
              #                          alloc i32 temp_221_arithop_294 
              #                          alloc i32 temp_222_ret_of_arrCopy_221 
              #                          alloc i32 temp_223_ret_of_QuickSort_221 
              #                          alloc i1 temp_224_cmp_302 
              #                          alloc ptr->i32 temp_225_array_ptr_304 
              #                          alloc i32 temp_226_array_ele_304 
              #                          alloc i32 temp_227_arithop_304 
              #                          alloc i32 temp_228_ret_of_arrCopy_221 
              #                          alloc i32 temp_229_ret_of_calSum_221 
              #                          alloc i1 temp_230_cmp_311 
              #                          alloc ptr->i32 temp_231_array_ptr_313 
              #                          alloc i32 temp_232_array_ele_313 
              #                          alloc i32 temp_233_arithop_313 
              #                          alloc i32 temp_234_ret_of_arrCopy_221 
              #                          alloc i32 temp_235_ret_of_avgPooling_221 
              #                          alloc i1 temp_236_cmp_320 
              #                          alloc ptr->i32 temp_237_array_ptr_322 
              #                          alloc i32 temp_238_array_ele_322 
              #                          alloc i32 temp_239_arithop_322 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          store 32_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 32_0
    li      a1, 32
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var arr_221:Array:i32:[Some(32_0)] 
              #                          new_var result_221:Array:i32:[Some(32_0)] 
              #                          new_var temp_165_index_ptr_221:ptr->i32 
              #                          temp_165_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(0_0)] 
              #                    occupy a2 with temp_165_index_ptr_221
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_arr_221_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,616
              #                    free a2
              #                          store 7_0:i32 temp_165_index_ptr_221:ptr->i32 
              #                    occupy a2 with temp_165_index_ptr_221
              #                    occupy a6 with 7_0
    li      a6, 7
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu arr_221:808 
              #                          arr_221 = chi arr_221:808 
              #                          new_var temp_166_index_ptr_221:ptr->i32 
              #                          temp_166_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(1_0)] 
              #                    occupy a7 with temp_166_index_ptr_221
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_arr_221_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,616
              #                    free a7
              #                          store 23_0:i32 temp_166_index_ptr_221:ptr->i32 
              #                    occupy a7 with temp_166_index_ptr_221
              #                    occupy s3 with 23_0
    li      s3, 23
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu arr_221:814 
              #                          arr_221 = chi arr_221:814 
              #                          new_var temp_167_index_ptr_221:ptr->i32 
              #                          temp_167_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(2_0)] 
              #                    occupy s4 with temp_167_index_ptr_221
    li      s4, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_arr_221_0
    mul     s6,a3,s5
              #                    free a3
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,616
              #                    free s4
              #                          store 89_0:i32 temp_167_index_ptr_221:ptr->i32 
              #                    occupy s4 with temp_167_index_ptr_221
              #                    occupy s7 with 89_0
    li      s7, 89
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu arr_221:820 
              #                          arr_221 = chi arr_221:820 
              #                          new_var temp_168_index_ptr_221:ptr->i32 
              #                          temp_168_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(3_0)] 
              #                    occupy s8 with temp_168_index_ptr_221
    li      s8, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s9 with 3_0
    li      s9, 3
              #                    occupy s10 with _anonymous_of_arr_221_0
    mul     s10,a3,s9
              #                    free a3
              #                    free s9
    add     s8,s8,s10
              #                    free s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,616
              #                    free s8
              #                          store 26_0:i32 temp_168_index_ptr_221:ptr->i32 
              #                    occupy s8 with temp_168_index_ptr_221
              #                    occupy s11 with 26_0
    li      s11, 26
    sw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          mu arr_221:826 
              #                          arr_221 = chi arr_221:826 
              #                          new_var temp_169_index_ptr_221:ptr->i32 
              #                          temp_169_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(4_0)] 
              #                    occupy a0 with temp_169_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a4 with _anonymous_of_arr_221_0
    mul     a4,a3,a1
              #                    free a3
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 282_0:i32 temp_169_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_169_index_ptr_221
              #                    occupy a1 with 282_0
    li      a1, 282
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:832 
              #                          arr_221 = chi arr_221:832 
              #                          new_var temp_170_index_ptr_221:ptr->i32 
              #                          temp_170_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(5_0)] 
              #                    occupy a1 with temp_170_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a4 with 5_0
    li      a4, 5
              #                    occupy a5 with _anonymous_of_arr_221_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 254_0:i32 temp_170_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_170_index_ptr_221
              #                    occupy a3 with 254_0
    li      a3, 254
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu arr_221:838 
              #                          arr_221 = chi arr_221:838 
              #                          new_var temp_171_index_ptr_221:ptr->i32 
              #                          temp_171_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(6_0)] 
              #                    occupy a3 with temp_171_index_ptr_221
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 6_0
    li      a4, 6
              #                    occupy a5 with _anonymous_of_arr_221_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,616
              #                    free a3
              #                          store 27_0:i32 temp_171_index_ptr_221:ptr->i32 
              #                    occupy a3 with temp_171_index_ptr_221
              #                    occupy a4 with 27_0
    li      a4, 27
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu arr_221:844 
              #                          arr_221 = chi arr_221:844 
              #                          new_var temp_172_index_ptr_221:ptr->i32 
              #                          temp_172_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(7_0)] 
              #                    occupy a4 with temp_172_index_ptr_221
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(a6) already exist with 7_0
              #                    occupy a6 with 7_0
              #                    occupy a5 with _anonymous_of_arr_221_0
    mul     a5,s1,a6
              #                    free s1
              #                    free a6
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,616
              #                    free a4
              #                          store 5_0:i32 temp_172_index_ptr_221:ptr->i32 
              #                    occupy a4 with temp_172_index_ptr_221
              #                    occupy a5 with 5_0
    li      a5, 5
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu arr_221:850 
              #                          arr_221 = chi arr_221:850 
              #                          new_var temp_173_index_ptr_221:ptr->i32 
              #                          temp_173_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(8_0)] 
              #                    occupy a5 with temp_173_index_ptr_221
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a6 with 8_0
    li      a6, 8
              #                    occupy s2 with _anonymous_of_arr_221_0
    mul     s2,s1,a6
              #                    free s1
              #                    free a6
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,616
              #                    free a5
              #                          store 83_0:i32 temp_173_index_ptr_221:ptr->i32 
              #                    occupy a5 with temp_173_index_ptr_221
              #                    occupy a6 with 83_0
    li      a6, 83
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu arr_221:856 
              #                          arr_221 = chi arr_221:856 
              #                          new_var temp_174_index_ptr_221:ptr->i32 
              #                          temp_174_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(9_0)] 
              #                    occupy a6 with temp_174_index_ptr_221
    li      a6, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s2 with 9_0
    li      s2, 9
              #                    occupy s3 with _anonymous_of_arr_221_0
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,616
              #                    free a6
              #                          store 273_0:i32 temp_174_index_ptr_221:ptr->i32 
              #                    occupy a6 with temp_174_index_ptr_221
              #                    occupy s1 with 273_0
    li      s1, 273
    sw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                          mu arr_221:862 
              #                          arr_221 = chi arr_221:862 
              #                          new_var temp_175_index_ptr_221:ptr->i32 
              #                          temp_175_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(10_0)] 
              #                    occupy s1 with temp_175_index_ptr_221
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with 10_0
    li      s3, 10
              #                    occupy s5 with _anonymous_of_arr_221_0
    mul     s5,s2,s3
              #                    free s2
              #                    free s3
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,616
              #                    free s1
              #                          store 574_0:i32 temp_175_index_ptr_221:ptr->i32 
              #                    occupy s1 with temp_175_index_ptr_221
              #                    occupy s2 with 574_0
    li      s2, 574
    sw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          mu arr_221:868 
              #                          arr_221 = chi arr_221:868 
              #                          new_var temp_176_index_ptr_221:ptr->i32 
              #                          temp_176_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(11_0)] 
              #                    occupy s2 with temp_176_index_ptr_221
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with 11_0
    li      s5, 11
              #                    occupy s6 with _anonymous_of_arr_221_0
    mul     s6,s3,s5
              #                    free s3
              #                    free s5
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,616
              #                    free s2
              #                          store 905_0:i32 temp_176_index_ptr_221:ptr->i32 
              #                    occupy s2 with temp_176_index_ptr_221
              #                    occupy s3 with 905_0
    li      s3, 905
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu arr_221:874 
              #                          arr_221 = chi arr_221:874 
              #                          new_var temp_177_index_ptr_221:ptr->i32 
              #                          temp_177_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(12_0)] 
              #                    occupy s3 with temp_177_index_ptr_221
    li      s3, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with 12_0
    li      s6, 12
              #                    occupy s7 with _anonymous_of_arr_221_0
    mul     s7,s5,s6
              #                    free s5
              #                    free s6
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,616
              #                    free s3
              #                          store 354_0:i32 temp_177_index_ptr_221:ptr->i32 
              #                    occupy s3 with temp_177_index_ptr_221
              #                    occupy s5 with 354_0
    li      s5, 354
    sw      s5,0(s3)
              #                    free s5
              #                    free s3
              #                          mu arr_221:880 
              #                          arr_221 = chi arr_221:880 
              #                          new_var temp_178_index_ptr_221:ptr->i32 
              #                          temp_178_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(13_0)] 
              #                    occupy s5 with temp_178_index_ptr_221
    li      s5, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s7 with 13_0
    li      s7, 13
              #                    occupy s9 with _anonymous_of_arr_221_0
    mul     s9,s6,s7
              #                    free s6
              #                    free s7
    add     s5,s5,s9
              #                    free s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,616
              #                    free s5
              #                          store 657_0:i32 temp_178_index_ptr_221:ptr->i32 
              #                    occupy s5 with temp_178_index_ptr_221
              #                    occupy s6 with 657_0
    li      s6, 657
    sw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          mu arr_221:886 
              #                          arr_221 = chi arr_221:886 
              #                          new_var temp_179_index_ptr_221:ptr->i32 
              #                          temp_179_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(14_0)] 
              #                    occupy s6 with temp_179_index_ptr_221
    li      s6, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s9 with 14_0
    li      s9, 14
              #                    occupy s10 with _anonymous_of_arr_221_0
    mul     s10,s7,s9
              #                    free s7
              #                    free s9
    add     s6,s6,s10
              #                    free s10
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,616
              #                    free s6
              #                          store 935_0:i32 temp_179_index_ptr_221:ptr->i32 
              #                    occupy s6 with temp_179_index_ptr_221
              #                    occupy s7 with 935_0
    li      s7, 935
    sw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          mu arr_221:892 
              #                          arr_221 = chi arr_221:892 
              #                          new_var temp_180_index_ptr_221:ptr->i32 
              #                          temp_180_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(15_0)] 
              #                    occupy s7 with temp_180_index_ptr_221
    li      s7, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s10 with 15_0
    li      s10, 15
              #                    occupy s11 with _anonymous_of_arr_221_0
    mul     s11,s9,s10
              #                    free s9
              #                    free s10
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,616
              #                    free s7
              #                          store 264_0:i32 temp_180_index_ptr_221:ptr->i32 
              #                    occupy s7 with temp_180_index_ptr_221
              #                    occupy s9 with 264_0
    li      s9, 264
    sw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          mu arr_221:898 
              #                          arr_221 = chi arr_221:898 
              #                          new_var temp_181_index_ptr_221:ptr->i32 
              #                          temp_181_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(16_0)] 
              #                    occupy s9 with temp_181_index_ptr_221
    li      s9, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s11 with 16_0
    li      s11, 16
              #                    store to temp_169_index_ptr_221 in mem offset legal
    sd      a0,448(sp)
              #                    release a0 with temp_169_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     s9,s9,a0
              #                    free a0
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,616
              #                    free s9
              #                          store 639_0:i32 temp_181_index_ptr_221:ptr->i32 
              #                    occupy s9 with temp_181_index_ptr_221
              #                    occupy a0 with 639_0
    li      a0, 639
    sw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          mu arr_221:904 
              #                          arr_221 = chi arr_221:904 
              #                          new_var temp_182_index_ptr_221:ptr->i32 
              #                          temp_182_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(17_0)] 
              #                    occupy a0 with temp_182_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 17_0
    li      s11, 17
              #                    store to temp_170_index_ptr_221 in mem offset legal
    sd      a1,440(sp)
              #                    release a1 with temp_170_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 459_0:i32 temp_182_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_182_index_ptr_221
              #                    occupy a1 with 459_0
    li      a1, 459
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:910 
              #                          arr_221 = chi arr_221:910 
              #                          new_var temp_183_index_ptr_221:ptr->i32 
              #                          temp_183_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(18_0)] 
              #                    occupy a1 with temp_183_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 18_0
    li      s11, 18
              #                    store to temp_182_index_ptr_221 in mem offset legal
    sd      a0,344(sp)
              #                    release a0 with temp_182_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 29_0:i32 temp_183_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_183_index_ptr_221
              #                    occupy a0 with 29_0
    li      a0, 29
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:916 
              #                          arr_221 = chi arr_221:916 
              #                          new_var temp_184_index_ptr_221:ptr->i32 
              #                          temp_184_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(19_0)] 
              #                    occupy a0 with temp_184_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 19_0
    li      s11, 19
              #                    store to temp_183_index_ptr_221 in mem offset legal
    sd      a1,336(sp)
              #                    release a1 with temp_183_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 68_0:i32 temp_184_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_184_index_ptr_221
              #                    occupy a1 with 68_0
    li      a1, 68
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:922 
              #                          arr_221 = chi arr_221:922 
              #                          new_var temp_185_index_ptr_221:ptr->i32 
              #                          temp_185_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(20_0)] 
              #                    occupy a1 with temp_185_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 20_0
    li      s11, 20
              #                    store to temp_184_index_ptr_221 in mem offset legal
    sd      a0,328(sp)
              #                    release a0 with temp_184_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 929_0:i32 temp_185_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_185_index_ptr_221
              #                    occupy a0 with 929_0
    li      a0, 929
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:928 
              #                          arr_221 = chi arr_221:928 
              #                          new_var temp_186_index_ptr_221:ptr->i32 
              #                          temp_186_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(21_0)] 
              #                    occupy a0 with temp_186_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 21_0
    li      s11, 21
              #                    store to temp_185_index_ptr_221 in mem offset legal
    sd      a1,320(sp)
              #                    release a1 with temp_185_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 756_0:i32 temp_186_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_186_index_ptr_221
              #                    occupy a1 with 756_0
    li      a1, 756
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:934 
              #                          arr_221 = chi arr_221:934 
              #                          new_var temp_187_index_ptr_221:ptr->i32 
              #                          temp_187_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(22_0)] 
              #                    occupy a1 with temp_187_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 22_0
    li      s11, 22
              #                    store to temp_186_index_ptr_221 in mem offset legal
    sd      a0,312(sp)
              #                    release a0 with temp_186_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 452_0:i32 temp_187_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_187_index_ptr_221
              #                    occupy a0 with 452_0
    li      a0, 452
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:940 
              #                          arr_221 = chi arr_221:940 
              #                          new_var temp_188_index_ptr_221:ptr->i32 
              #                          temp_188_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(23_0)] 
              #                    occupy a0 with temp_188_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 23_0
    li      s11, 23
              #                    store to temp_187_index_ptr_221 in mem offset legal
    sd      a1,304(sp)
              #                    release a1 with temp_187_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 279_0:i32 temp_188_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_188_index_ptr_221
              #                    occupy a1 with 279_0
    li      a1, 279
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:946 
              #                          arr_221 = chi arr_221:946 
              #                          new_var temp_189_index_ptr_221:ptr->i32 
              #                          temp_189_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(24_0)] 
              #                    occupy a1 with temp_189_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 24_0
    li      s11, 24
              #                    store to temp_188_index_ptr_221 in mem offset legal
    sd      a0,296(sp)
              #                    release a0 with temp_188_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 58_0:i32 temp_189_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_189_index_ptr_221
              #                    occupy a0 with 58_0
    li      a0, 58
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:952 
              #                          arr_221 = chi arr_221:952 
              #                          new_var temp_190_index_ptr_221:ptr->i32 
              #                          temp_190_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(25_0)] 
              #                    occupy a0 with temp_190_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 25_0
    li      s11, 25
              #                    store to temp_189_index_ptr_221 in mem offset legal
    sd      a1,288(sp)
              #                    release a1 with temp_189_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 87_0:i32 temp_190_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_190_index_ptr_221
              #                    occupy a1 with 87_0
    li      a1, 87
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:958 
              #                          arr_221 = chi arr_221:958 
              #                          new_var temp_191_index_ptr_221:ptr->i32 
              #                          temp_191_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(26_0)] 
              #                    occupy a1 with temp_191_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 26_0
    li      s11, 26
              #                    store to temp_190_index_ptr_221 in mem offset legal
    sd      a0,280(sp)
              #                    release a0 with temp_190_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 96_0:i32 temp_191_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_191_index_ptr_221
              #                    occupy a0 with 96_0
    li      a0, 96
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:964 
              #                          arr_221 = chi arr_221:964 
              #                          new_var temp_192_index_ptr_221:ptr->i32 
              #                          temp_192_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(27_0)] 
              #                    occupy a0 with temp_192_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 27_0
    li      s11, 27
              #                    store to temp_191_index_ptr_221 in mem offset legal
    sd      a1,272(sp)
              #                    release a1 with temp_191_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 36_0:i32 temp_192_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_192_index_ptr_221
              #                    occupy a1 with 36_0
    li      a1, 36
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:970 
              #                          arr_221 = chi arr_221:970 
              #                          new_var temp_193_index_ptr_221:ptr->i32 
              #                          temp_193_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(28_0)] 
              #                    occupy a1 with temp_193_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 28_0
    li      s11, 28
              #                    store to temp_192_index_ptr_221 in mem offset legal
    sd      a0,264(sp)
              #                    release a0 with temp_192_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 39_0:i32 temp_193_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_193_index_ptr_221
              #                    occupy a0 with 39_0
    li      a0, 39
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu arr_221:976 
              #                          arr_221 = chi arr_221:976 
              #                          new_var temp_194_index_ptr_221:ptr->i32 
              #                          temp_194_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(29_0)] 
              #                    occupy a0 with temp_194_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 29_0
    li      s11, 29
              #                    store to temp_193_index_ptr_221 in mem offset legal
    sd      a1,256(sp)
              #                    release a1 with temp_193_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 28_0:i32 temp_194_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_194_index_ptr_221
              #                    occupy a1 with 28_0
    li      a1, 28
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:982 
              #                          arr_221 = chi arr_221:982 
              #                          new_var temp_195_index_ptr_221:ptr->i32 
              #                          temp_195_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(30_0)] 
              #                    occupy a1 with temp_195_index_ptr_221
    li      a1, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 30_0
    li      s11, 30
              #                    store to temp_194_index_ptr_221 in mem offset legal
    sd      a0,248(sp)
              #                    release a0 with temp_194_index_ptr_221
              #                    occupy a0 with _anonymous_of_arr_221_0
    mul     a0,s10,s11
              #                    free s10
              #                    free s11
    add     a1,a1,a0
              #                    free a0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,616
              #                    free a1
              #                          store 1_0:i32 temp_195_index_ptr_221:ptr->i32 
              #                    occupy a1 with temp_195_index_ptr_221
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
    sw      s10,0(a1)
              #                    free s10
              #                    free a1
              #                          mu arr_221:988 
              #                          arr_221 = chi arr_221:988 
              #                          new_var temp_196_index_ptr_221:ptr->i32 
              #                          temp_196_index_ptr_221 = getelementptr arr_221:Array:i32:[Some(32_0)] [Some(31_0)] 
              #                    occupy a0 with temp_196_index_ptr_221
    li      a0, 0
              #                    found literal reg Some(s10) already exist with 1_0
              #                    occupy s10 with 1_0
              #                    occupy s11 with 31_0
    li      s11, 31
              #                    store to temp_195_index_ptr_221 in mem offset legal
    sd      a1,240(sp)
              #                    release a1 with temp_195_index_ptr_221
              #                    occupy a1 with _anonymous_of_arr_221_0
    mul     a1,s10,s11
              #                    free s10
              #                    free s11
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,616
              #                    free a0
              #                          store 290_0:i32 temp_196_index_ptr_221:ptr->i32 
              #                    occupy a0 with temp_196_index_ptr_221
              #                    occupy a1 with 290_0
    li      a1, 290
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          mu arr_221:994 
              #                          arr_221 = chi arr_221:994 
              #                          new_var t_221:i32 
              #                          new_var temp_197_ret_of_arrCopy_221:i32 
              #                          temp_197_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    store to temp_175_index_ptr_221 in mem offset legal
    sd      s1,400(sp)
              #                    release s1 with temp_175_index_ptr_221
              #                    store to temp_176_index_ptr_221 in mem offset legal
    sd      s2,392(sp)
              #                    release s2 with temp_176_index_ptr_221
              #                    store to temp_177_index_ptr_221 in mem offset legal
    sd      s3,384(sp)
              #                    release s3 with temp_177_index_ptr_221
              #                    store to temp_167_index_ptr_221 in mem offset legal
    sd      s4,464(sp)
              #                    release s4 with temp_167_index_ptr_221
              #                    store to temp_178_index_ptr_221 in mem offset legal
    sd      s5,376(sp)
              #                    release s5 with temp_178_index_ptr_221
              #                    store to temp_179_index_ptr_221 in mem offset legal
    sd      s6,368(sp)
              #                    release s6 with temp_179_index_ptr_221
              #                    store to temp_180_index_ptr_221 in mem offset legal
    sd      s7,360(sp)
              #                    release s7 with temp_180_index_ptr_221
              #                    store to temp_168_index_ptr_221 in mem offset legal
    sd      s8,456(sp)
              #                    release s8 with temp_168_index_ptr_221
              #                    store to temp_181_index_ptr_221 in mem offset legal
    sd      s9,352(sp)
              #                    release s9 with temp_181_index_ptr_221
              #                    store to temp_196_index_ptr_221 in mem offset legal
    sd      a0,232(sp)
              #                    release a0 with temp_196_index_ptr_221
              #                    store to temp_165_index_ptr_221 in mem offset legal
    sd      a2,480(sp)
              #                    release a2 with temp_165_index_ptr_221
              #                    store to temp_171_index_ptr_221 in mem offset legal
    sd      a3,432(sp)
              #                    release a3 with temp_171_index_ptr_221
              #                    store to temp_172_index_ptr_221 in mem offset legal
    sd      a4,424(sp)
              #                    release a4 with temp_172_index_ptr_221
              #                    store to temp_173_index_ptr_221 in mem offset legal
    sd      a5,416(sp)
              #                    release a5 with temp_173_index_ptr_221
              #                    store to temp_174_index_ptr_221 in mem offset legal
    sd      a6,408(sp)
              #                    release a6 with temp_174_index_ptr_221
              #                    store to temp_166_index_ptr_221 in mem offset legal
    sd      a7,472(sp)
              #                    release a7 with temp_166_index_ptr_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_197_ret_of_arrCopy_221 in mem offset legal
    sw      a0,224(sp)
              #                          t_221 = i32 temp_197_ret_of_arrCopy_221 
              #                    occupy a0 with temp_197_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_198_ret_of_revert_221:i32 
              #                          temp_198_ret_of_revert_221 =  Call i32 revert_0(result_221) 
              #                    saved register dumping to mem
              #                    store to temp_197_ret_of_arrCopy_221 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with temp_197_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    revert
              #                    store to temp_198_ret_of_revert_221 in mem offset legal
    sw      a0,220(sp)
              #                          t_221 = i32 temp_198_ret_of_revert_221 
              #                    occupy a0 with temp_198_ret_of_revert_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var i_221:i32 
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_263 
    j       .while.head_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_263: 
.while.head_263:
              #                          new_var temp_199_cmp_262:i1 
              #                          temp_199_cmp_262 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_199_cmp_262
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_199_cmp_262, label while.body_263, label while.exit_263 
              #                    occupy a4 with temp_199_cmp_262
              #                    free a4
              #                    occupy a4 with temp_199_cmp_262
    bnez    a4, .while.body_263
              #                    free a4
    j       .while.exit_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_199_cmp_262, tracked: true } | 
              #                          label while.body_263: 
.while.body_263:
              #                          new_var temp_200_array_ptr_264:ptr->i32 
              #                          temp_200_array_ptr_264 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_200_array_ptr_264
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_201_array_ele_264:i32 
              #                          temp_201_array_ele_264 = load temp_200_array_ptr_264:ptr->i32 
              #                    occupy a3 with temp_200_array_ptr_264
              #                    occupy a7 with temp_201_array_ele_264
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_201_array_ele_264 
              #                    occupy a7 with temp_201_array_ele_264
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_198_ret_of_revert_221 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_198_ret_of_revert_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_200_array_ptr_264 in mem offset legal
    sd      a3,200(sp)
              #                    release a3 with temp_200_array_ptr_264
              #                    store to temp_199_cmp_262 in mem offset legal
    sb      a4,215(sp)
              #                    release a4 with temp_199_cmp_262
              #                    store to temp_201_array_ele_264 in mem offset legal
    sw      a7,196(sp)
              #                    release a7 with temp_201_array_ele_264
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_202_arithop_264:i32 
              #                          temp_202_arithop_264 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_202_arithop_264
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_202_arithop_264 
              #                    occupy a2 with temp_202_arithop_264
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_263 
              #                    store to temp_202_arithop_264 in mem offset legal
    sw      a2,192(sp)
              #                    release a2 with temp_202_arithop_264
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_198_ret_of_revert_221_0
              #                    load from temp_198_ret_of_revert_221 in mem


    lw      a0,220(sp)
    j       .while.head_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_199_cmp_262, tracked: true } | 
              #                          label while.exit_263: 
.while.exit_263:
              #                          new_var temp_203_ret_of_bubblesort_221:i32 
              #                          temp_203_ret_of_bubblesort_221 =  Call i32 bubblesort_0(result_221) 
              #                    saved register dumping to mem
              #                    store to temp_198_ret_of_revert_221 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_198_ret_of_revert_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_199_cmp_262 in mem offset legal
    sb      a4,215(sp)
              #                    release a4 with temp_199_cmp_262
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    bubblesort
              #                    store to temp_203_ret_of_bubblesort_221 in mem offset legal
    sw      a0,188(sp)
              #                          t_221 = i32 temp_203_ret_of_bubblesort_221 
              #                    occupy a0 with temp_203_ret_of_bubblesort_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_271 
    j       .while.head_271
              #                    regtab     a0:Freed { symidx: temp_203_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_271: 
.while.head_271:
              #                          new_var temp_204_cmp_270:i1 
              #                          temp_204_cmp_270 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_204_cmp_270
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_204_cmp_270, label while.body_271, label while.exit_271 
              #                    occupy a4 with temp_204_cmp_270
              #                    free a4
              #                    occupy a4 with temp_204_cmp_270
    bnez    a4, .while.body_271
              #                    free a4
    j       .while.exit_271
              #                    regtab     a0:Freed { symidx: temp_203_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_204_cmp_270, tracked: true } | 
              #                          label while.body_271: 
.while.body_271:
              #                          new_var temp_205_array_ptr_272:ptr->i32 
              #                          temp_205_array_ptr_272 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_205_array_ptr_272
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_206_array_ele_272:i32 
              #                          temp_206_array_ele_272 = load temp_205_array_ptr_272:ptr->i32 
              #                    occupy a3 with temp_205_array_ptr_272
              #                    occupy a7 with temp_206_array_ele_272
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_206_array_ele_272 
              #                    occupy a7 with temp_206_array_ele_272
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_203_ret_of_bubblesort_221 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_203_ret_of_bubblesort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_205_array_ptr_272 in mem offset legal
    sd      a3,176(sp)
              #                    release a3 with temp_205_array_ptr_272
              #                    store to temp_204_cmp_270 in mem offset legal
    sb      a4,187(sp)
              #                    release a4 with temp_204_cmp_270
              #                    store to temp_206_array_ele_272 in mem offset legal
    sw      a7,172(sp)
              #                    release a7 with temp_206_array_ele_272
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_207_arithop_272:i32 
              #                          temp_207_arithop_272 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_207_arithop_272
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_207_arithop_272 
              #                    occupy a2 with temp_207_arithop_272
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_271 
              #                    store to temp_207_arithop_272 in mem offset legal
    sw      a2,168(sp)
              #                    release a2 with temp_207_arithop_272
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_203_ret_of_bubblesort_221_0
              #                    load from temp_203_ret_of_bubblesort_221 in mem


    lw      a0,188(sp)
    j       .while.head_271
              #                    regtab     a0:Freed { symidx: temp_203_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_204_cmp_270, tracked: true } | 
              #                          label while.exit_271: 
.while.exit_271:
              #                          new_var temp_208_ret_of_getMid_221:i32 
              #                          temp_208_ret_of_getMid_221 =  Call i32 getMid_0(result_221) 
              #                    saved register dumping to mem
              #                    store to temp_203_ret_of_bubblesort_221 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_203_ret_of_bubblesort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_204_cmp_270 in mem offset legal
    sb      a4,187(sp)
              #                    release a4 with temp_204_cmp_270
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    getMid
              #                    store to temp_208_ret_of_getMid_221 in mem offset legal
    sw      a0,164(sp)
              #                          t_221 = i32 temp_208_ret_of_getMid_221 
              #                    occupy a0 with temp_208_ret_of_getMid_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_208_ret_of_getMid_221 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_208_ret_of_getMid_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_209_ret_of_getMost_221:i32 
              #                          temp_209_ret_of_getMost_221 =  Call i32 getMost_0(result_221) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    getMost
              #                    store to temp_209_ret_of_getMost_221 in mem offset legal
    sw      a0,160(sp)
              #                          t_221 = i32 temp_209_ret_of_getMost_221 
              #                    occupy a0 with temp_209_ret_of_getMost_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_209_ret_of_getMost_221 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with temp_209_ret_of_getMost_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_210_ret_of_arrCopy_221:i32 
              #                          temp_210_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_210_ret_of_arrCopy_221 in mem offset legal
    sw      a0,156(sp)
              #                          t_221 = i32 temp_210_ret_of_arrCopy_221 
              #                    occupy a0 with temp_210_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_211_ret_of_bubblesort_221:i32 
              #                          temp_211_ret_of_bubblesort_221 =  Call i32 bubblesort_0(result_221) 
              #                    saved register dumping to mem
              #                    store to temp_210_ret_of_arrCopy_221 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with temp_210_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    bubblesort
              #                    store to temp_211_ret_of_bubblesort_221 in mem offset legal
    sw      a0,152(sp)
              #                          t_221 = i32 temp_211_ret_of_bubblesort_221 
              #                    occupy a0 with temp_211_ret_of_bubblesort_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_284 
    j       .while.head_284
              #                    regtab     a0:Freed { symidx: temp_211_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_284: 
.while.head_284:
              #                          new_var temp_212_cmp_283:i1 
              #                          temp_212_cmp_283 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_212_cmp_283
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_212_cmp_283, label while.body_284, label while.exit_284 
              #                    occupy a4 with temp_212_cmp_283
              #                    free a4
              #                    occupy a4 with temp_212_cmp_283
    bnez    a4, .while.body_284
              #                    free a4
    j       .while.exit_284
              #                    regtab     a0:Freed { symidx: temp_211_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_212_cmp_283, tracked: true } | 
              #                          label while.body_284: 
.while.body_284:
              #                          new_var temp_213_array_ptr_285:ptr->i32 
              #                          temp_213_array_ptr_285 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_213_array_ptr_285
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_214_array_ele_285:i32 
              #                          temp_214_array_ele_285 = load temp_213_array_ptr_285:ptr->i32 
              #                    occupy a3 with temp_213_array_ptr_285
              #                    occupy a7 with temp_214_array_ele_285
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_214_array_ele_285 
              #                    occupy a7 with temp_214_array_ele_285
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_211_ret_of_bubblesort_221 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_211_ret_of_bubblesort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_213_array_ptr_285 in mem offset legal
    sd      a3,136(sp)
              #                    release a3 with temp_213_array_ptr_285
              #                    store to temp_212_cmp_283 in mem offset legal
    sb      a4,151(sp)
              #                    release a4 with temp_212_cmp_283
              #                    store to temp_214_array_ele_285 in mem offset legal
    sw      a7,132(sp)
              #                    release a7 with temp_214_array_ele_285
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_215_arithop_285:i32 
              #                          temp_215_arithop_285 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_215_arithop_285
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_215_arithop_285 
              #                    occupy a2 with temp_215_arithop_285
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_284 
              #                    store to temp_215_arithop_285 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with temp_215_arithop_285
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_211_ret_of_bubblesort_221_0
              #                    load from temp_211_ret_of_bubblesort_221 in mem


    lw      a0,152(sp)
    j       .while.head_284
              #                    regtab     a0:Freed { symidx: temp_211_ret_of_bubblesort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_212_cmp_283, tracked: true } | 
              #                          label while.exit_284: 
.while.exit_284:
              #                          new_var temp_216_ret_of_arrCopy_221:i32 
              #                          temp_216_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    store to temp_211_ret_of_bubblesort_221 in mem offset legal
    sw      a0,152(sp)
              #                    release a0 with temp_211_ret_of_bubblesort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_212_cmp_283 in mem offset legal
    sb      a4,151(sp)
              #                    release a4 with temp_212_cmp_283
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_216_ret_of_arrCopy_221 in mem offset legal
    sw      a0,124(sp)
              #                          t_221 = i32 temp_216_ret_of_arrCopy_221 
              #                    occupy a0 with temp_216_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_217_ret_of_insertsort_221:i32 
              #                          temp_217_ret_of_insertsort_221 =  Call i32 insertsort_0(result_221) 
              #                    saved register dumping to mem
              #                    store to temp_216_ret_of_arrCopy_221 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_216_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    arg load ended


    call    insertsort
              #                    store to temp_217_ret_of_insertsort_221 in mem offset legal
    sw      a0,120(sp)
              #                          t_221 = i32 temp_217_ret_of_insertsort_221 
              #                    occupy a0 with temp_217_ret_of_insertsort_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_293 
    j       .while.head_293
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_insertsort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_293: 
.while.head_293:
              #                          new_var temp_218_cmp_292:i1 
              #                          temp_218_cmp_292 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_218_cmp_292
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_218_cmp_292, label while.body_293, label while.exit_293 
              #                    occupy a4 with temp_218_cmp_292
              #                    free a4
              #                    occupy a4 with temp_218_cmp_292
    bnez    a4, .while.body_293
              #                    free a4
    j       .while.exit_293
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_insertsort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_218_cmp_292, tracked: true } | 
              #                          label while.body_293: 
.while.body_293:
              #                          new_var temp_219_array_ptr_294:ptr->i32 
              #                          temp_219_array_ptr_294 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_219_array_ptr_294
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_220_array_ele_294:i32 
              #                          temp_220_array_ele_294 = load temp_219_array_ptr_294:ptr->i32 
              #                    occupy a3 with temp_219_array_ptr_294
              #                    occupy a7 with temp_220_array_ele_294
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_220_array_ele_294 
              #                    occupy a7 with temp_220_array_ele_294
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_217_ret_of_insertsort_221 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_217_ret_of_insertsort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_219_array_ptr_294 in mem offset legal
    sd      a3,104(sp)
              #                    release a3 with temp_219_array_ptr_294
              #                    store to temp_218_cmp_292 in mem offset legal
    sb      a4,119(sp)
              #                    release a4 with temp_218_cmp_292
              #                    store to temp_220_array_ele_294 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_220_array_ele_294
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_221_arithop_294:i32 
              #                          temp_221_arithop_294 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_221_arithop_294
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_221_arithop_294 
              #                    occupy a2 with temp_221_arithop_294
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_293 
              #                    store to temp_221_arithop_294 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with temp_221_arithop_294
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_217_ret_of_insertsort_221_0
              #                    load from temp_217_ret_of_insertsort_221 in mem


    lw      a0,120(sp)
    j       .while.head_293
              #                    regtab     a0:Freed { symidx: temp_217_ret_of_insertsort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_218_cmp_292, tracked: true } | 
              #                          label while.exit_293: 
.while.exit_293:
              #                          new_var temp_222_ret_of_arrCopy_221:i32 
              #                          temp_222_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    store to temp_217_ret_of_insertsort_221 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_217_ret_of_insertsort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_218_cmp_292 in mem offset legal
    sb      a4,119(sp)
              #                    release a4 with temp_218_cmp_292
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_222_ret_of_arrCopy_221 in mem offset legal
    sw      a0,92(sp)
              #                          t_221 = i32 temp_222_ret_of_arrCopy_221 
              #                    occupy a0 with temp_222_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          t_221 = i32 31_0 
              #                    occupy a1 with t_221
    li      a1, 31
              #                    free a1
              #                          new_var temp_223_ret_of_QuickSort_221:i32 
              #                          temp_223_ret_of_QuickSort_221 =  Call i32 QuickSort_0(result_221, i_221, t_221) 
              #                    saved register dumping to mem
              #                    store to temp_222_ret_of_arrCopy_221 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_222_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    occupy a1 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a1,216(sp)
              #                    occupy a2 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a2,228(sp)
              #                    arg load ended


    call    QuickSort
              #                    store to temp_223_ret_of_QuickSort_221 in mem offset legal
    sw      a0,88(sp)
              #                          t_221 = i32 temp_223_ret_of_QuickSort_221 
              #                    occupy a0 with temp_223_ret_of_QuickSort_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_303 
    j       .while.head_303
              #                    regtab     a0:Freed { symidx: temp_223_ret_of_QuickSort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } | 
              #                          label while.head_303: 
.while.head_303:
              #                          new_var temp_224_cmp_302:i1 
              #                          temp_224_cmp_302 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_224_cmp_302
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_224_cmp_302, label while.body_303, label while.exit_303 
              #                    occupy a4 with temp_224_cmp_302
              #                    free a4
              #                    occupy a4 with temp_224_cmp_302
    bnez    a4, .while.body_303
              #                    free a4
    j       .while.exit_303
              #                    regtab     a0:Freed { symidx: temp_223_ret_of_QuickSort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_224_cmp_302, tracked: true } | 
              #                          label while.body_303: 
.while.body_303:
              #                          new_var temp_225_array_ptr_304:ptr->i32 
              #                          temp_225_array_ptr_304 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_225_array_ptr_304
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_226_array_ele_304:i32 
              #                          temp_226_array_ele_304 = load temp_225_array_ptr_304:ptr->i32 
              #                    occupy a3 with temp_225_array_ptr_304
              #                    occupy a7 with temp_226_array_ele_304
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_226_array_ele_304 
              #                    occupy a7 with temp_226_array_ele_304
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_223_ret_of_QuickSort_221 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_223_ret_of_QuickSort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_225_array_ptr_304 in mem offset legal
    sd      a3,72(sp)
              #                    release a3 with temp_225_array_ptr_304
              #                    store to temp_224_cmp_302 in mem offset legal
    sb      a4,87(sp)
              #                    release a4 with temp_224_cmp_302
              #                    store to temp_226_array_ele_304 in mem offset legal
    sw      a7,68(sp)
              #                    release a7 with temp_226_array_ele_304
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_227_arithop_304:i32 
              #                          temp_227_arithop_304 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_227_arithop_304
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_227_arithop_304 
              #                    occupy a2 with temp_227_arithop_304
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_303 
              #                    store to temp_227_arithop_304 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_227_arithop_304
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_223_ret_of_QuickSort_221_0
              #                    load from temp_223_ret_of_QuickSort_221 in mem


    lw      a0,88(sp)
    j       .while.head_303
              #                    regtab     a0:Freed { symidx: temp_223_ret_of_QuickSort_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_224_cmp_302, tracked: true } | 
              #                          label while.exit_303: 
.while.exit_303:
              #                          new_var temp_228_ret_of_arrCopy_221:i32 
              #                          temp_228_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    store to temp_223_ret_of_QuickSort_221 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_223_ret_of_QuickSort_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_224_cmp_302 in mem offset legal
    sb      a4,87(sp)
              #                    release a4 with temp_224_cmp_302
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_228_ret_of_arrCopy_221 in mem offset legal
    sw      a0,60(sp)
              #                          t_221 = i32 temp_228_ret_of_arrCopy_221 
              #                    occupy a0 with temp_228_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_229_ret_of_calSum_221:i32 
              #                          temp_229_ret_of_calSum_221 =  Call i32 calSum_0(result_221, 4_0) 
              #                    saved register dumping to mem
              #                    store to temp_228_ret_of_arrCopy_221 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_228_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    occupy a1 with _anonymous_of_4_0_0
    li      a1, 4
              #                    arg load ended


    call    calSum
              #                    store to temp_229_ret_of_calSum_221 in mem offset legal
    sw      a0,56(sp)
              #                          t_221 = i32 temp_229_ret_of_calSum_221 
              #                    occupy a0 with temp_229_ret_of_calSum_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_312 
    j       .while.head_312
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_calSum_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_312: 
.while.head_312:
              #                          new_var temp_230_cmp_311:i1 
              #                          temp_230_cmp_311 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_230_cmp_311
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_230_cmp_311, label while.body_312, label while.exit_312 
              #                    occupy a4 with temp_230_cmp_311
              #                    free a4
              #                    occupy a4 with temp_230_cmp_311
    bnez    a4, .while.body_312
              #                    free a4
    j       .while.exit_312
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_calSum_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_230_cmp_311, tracked: true } | 
              #                          label while.body_312: 
.while.body_312:
              #                          new_var temp_231_array_ptr_313:ptr->i32 
              #                          temp_231_array_ptr_313 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_231_array_ptr_313
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_232_array_ele_313:i32 
              #                          temp_232_array_ele_313 = load temp_231_array_ptr_313:ptr->i32 
              #                    occupy a3 with temp_231_array_ptr_313
              #                    occupy a7 with temp_232_array_ele_313
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_232_array_ele_313 
              #                    occupy a7 with temp_232_array_ele_313
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_229_ret_of_calSum_221 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_229_ret_of_calSum_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_231_array_ptr_313 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_231_array_ptr_313
              #                    store to temp_230_cmp_311 in mem offset legal
    sb      a4,55(sp)
              #                    release a4 with temp_230_cmp_311
              #                    store to temp_232_array_ele_313 in mem offset legal
    sw      a7,36(sp)
              #                    release a7 with temp_232_array_ele_313
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_233_arithop_313:i32 
              #                          temp_233_arithop_313 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_233_arithop_313
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_233_arithop_313 
              #                    occupy a2 with temp_233_arithop_313
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_312 
              #                    store to temp_233_arithop_313 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with temp_233_arithop_313
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_229_ret_of_calSum_221_0
              #                    load from temp_229_ret_of_calSum_221 in mem


    lw      a0,56(sp)
    j       .while.head_312
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_calSum_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_230_cmp_311, tracked: true } | 
              #                          label while.exit_312: 
.while.exit_312:
              #                          new_var temp_234_ret_of_arrCopy_221:i32 
              #                          temp_234_ret_of_arrCopy_221 =  Call i32 arrCopy_0(arr_221, result_221) 
              #                    saved register dumping to mem
              #                    store to temp_229_ret_of_calSum_221 in mem offset legal
    sw      a0,56(sp)
              #                    release a0 with temp_229_ret_of_calSum_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_230_cmp_311 in mem offset legal
    sb      a4,55(sp)
              #                    release a4 with temp_230_cmp_311
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_221_0
              #                    load from arr_221 in mem
    lw      a0,616(sp)
              #                    occupy a1 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a1,488(sp)
              #                    arg load ended


    call    arrCopy
              #                    store to temp_234_ret_of_arrCopy_221 in mem offset legal
    sw      a0,28(sp)
              #                          t_221 = i32 temp_234_ret_of_arrCopy_221 
              #                    occupy a0 with temp_234_ret_of_arrCopy_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_235_ret_of_avgPooling_221:i32 
              #                          temp_235_ret_of_avgPooling_221 =  Call i32 avgPooling_0(result_221, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_234_ret_of_arrCopy_221 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_234_ret_of_arrCopy_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_result_221_0
              #                    load from result_221 in mem
    lw      a0,488(sp)
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    arg load ended


    call    avgPooling
              #                    store to temp_235_ret_of_avgPooling_221 in mem offset legal
    sw      a0,24(sp)
              #                          t_221 = i32 temp_235_ret_of_avgPooling_221 
              #                    occupy a0 with temp_235_ret_of_avgPooling_221
              #                    occupy a1 with t_221
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_221 = i32 0_0 
              #                    occupy a2 with i_221
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_321 
    j       .while.head_321
              #                    regtab     a0:Freed { symidx: temp_235_ret_of_avgPooling_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } | 
              #                          label while.head_321: 
.while.head_321:
              #                          new_var temp_236_cmp_320:i1 
              #                          temp_236_cmp_320 = icmp i32 Slt i_221, 32_0 
              #                    occupy a2 with i_221
              #                    occupy a3 with 32_0
    li      a3, 32
              #                    occupy a4 with temp_236_cmp_320
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_236_cmp_320, label while.body_321, label while.exit_321 
              #                    occupy a4 with temp_236_cmp_320
              #                    free a4
              #                    occupy a4 with temp_236_cmp_320
    bnez    a4, .while.body_321
              #                    free a4
    j       .while.exit_321
              #                    regtab     a0:Freed { symidx: temp_235_ret_of_avgPooling_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_236_cmp_320, tracked: true } | 
              #                          label while.body_321: 
.while.body_321:
              #                          new_var temp_237_array_ptr_322:ptr->i32 
              #                          temp_237_array_ptr_322 = getelementptr result_221:Array:i32:[Some(32_0)] [Some(i_221)] 
              #                    occupy a3 with temp_237_array_ptr_322
    li      a3, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_221
              #                    occupy a6 with _anonymous_of_result_221_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,488
              #                    free a3
              #                          new_var temp_238_array_ele_322:i32 
              #                          temp_238_array_ele_322 = load temp_237_array_ptr_322:ptr->i32 
              #                    occupy a3 with temp_237_array_ptr_322
              #                    occupy a7 with temp_238_array_ele_322
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          t_221 = i32 temp_238_array_ele_322 
              #                    occupy a7 with temp_238_array_ele_322
              #                    occupy a1 with t_221
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                           Call void putint_0(t_221) 
              #                    saved register dumping to mem
              #                    store to temp_235_ret_of_avgPooling_221 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_235_ret_of_avgPooling_221
              #                    store to t_221 in mem offset legal
    sw      a1,228(sp)
              #                    release a1 with t_221
              #                    store to i_221 in mem offset legal
    sw      a2,216(sp)
              #                    release a2 with i_221
              #                    store to temp_237_array_ptr_322 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_237_array_ptr_322
              #                    store to temp_236_cmp_320 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_236_cmp_320
              #                    store to temp_238_array_ele_322 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_238_array_ele_322
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_239_arithop_322:i32 
              #                          temp_239_arithop_322 = Add i32 i_221, 1_0 
              #                    occupy a0 with i_221
              #                    load from i_221 in mem


    lw      a0,216(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_239_arithop_322
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_221 = i32 temp_239_arithop_322 
              #                    occupy a2 with temp_239_arithop_322
              #                    occupy a0 with i_221
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_321 
              #                    store to temp_239_arithop_322 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_239_arithop_322
              #                    store to i_221 in mem offset legal
    sw      a0,216(sp)
              #                    release a0 with i_221
              #                    occupy a2 with _anonymous_of_i_221_0
              #                    load from i_221 in mem


    lw      a2,216(sp)
              #                    occupy a1 with _anonymous_of_t_221_0
              #                    load from t_221 in mem


    lw      a1,228(sp)
              #                    occupy a0 with _anonymous_of_temp_235_ret_of_avgPooling_221_0
              #                    load from temp_235_ret_of_avgPooling_221 in mem


    lw      a0,24(sp)
    j       .while.head_321
              #                    regtab     a0:Freed { symidx: temp_235_ret_of_avgPooling_221, tracked: true } |     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_236_cmp_320, tracked: true } | 
              #                          label while.exit_321: 
.while.exit_321:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,752(sp)
              #                    load from s0_main_0 in mem
    ld      s0,744(sp)
              #                    store to temp_235_ret_of_avgPooling_221 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_235_ret_of_avgPooling_221
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,760
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: t_221, tracked: true } |     a2:Freed { symidx: i_221, tracked: true } |     a4:Freed { symidx: temp_236_cmp_320, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
