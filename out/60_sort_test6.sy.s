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
              #                          Define counting_sort_0 [ini_arr_17, sorted_arr_17, n_17] -> counting_sort_ret_0 
    .globl counting_sort
    .type counting_sort,@function
counting_sort:
              #                    mem layout:|ra_counting_sort:8 at 368|s0_counting_sort:8 at 360|ini_arr:8 at 352|sorted_arr:8 at 344|n:4 at 340|count_arr:40 at 300|i:4 at 296|j:4 at 292|k:4 at 288|temp_0_cmp:1 at 287|none:7 at 280|temp_1_index_ptr:8 at 272|temp_2_arithop:4 at 268|temp_3_cmp:1 at 267|none:3 at 264|temp_4_array_ptr:8 at 256|temp_5_array_ele:4 at 252|none:4 at 248|temp_6_index_ptr:8 at 240|temp_7_array_ptr:8 at 232|temp_8_array_ele:4 at 228|none:4 at 224|temp_9_array_ptr:8 at 216|temp_10_array_ele:4 at 212|temp_11_arithop:4 at 208|temp_12_arithop:4 at 204|temp_13_cmp:1 at 203|none:3 at 200|temp_14_index_ptr:8 at 192|temp_15_arithop:4 at 188|none:4 at 184|temp_16_array_ptr:8 at 176|temp_17_array_ele:4 at 172|none:4 at 168|temp_18_array_ptr:8 at 160|temp_19_array_ele:4 at 156|temp_20_arithop:4 at 152|temp_21_arithop:4 at 148|temp_22_cmp:1 at 147|none:3 at 144|temp_23_arithop:4 at 140|none:4 at 136|temp_24_array_ptr:8 at 128|temp_25_array_ele:4 at 124|none:4 at 120|temp_26_index_ptr:8 at 112|temp_27_arithop:4 at 108|none:4 at 104|temp_28_array_ptr:8 at 96|temp_29_array_ele:4 at 92|none:4 at 88|temp_30_array_ptr:8 at 80|temp_31_array_ele:4 at 76|temp_32_arithop:4 at 72|temp_33_arithop:4 at 68|none:4 at 64|temp_34_array_ptr:8 at 56|temp_35_array_ele:4 at 52|none:4 at 48|temp_36_array_ptr:8 at 40|temp_37_array_ele:4 at 36|none:4 at 32|temp_38_index_ptr:8 at 24|temp_39_arithop:4 at 20|none:4 at 16|temp_40_array_ptr:8 at 8|temp_41_array_ele:4 at 4|temp_42_arithop:4 at 0
    addi    sp,sp,-376
              #                    store to ra_counting_sort_0 in mem offset legal
    sd      ra,368(sp)
              #                    store to s0_counting_sort_0 in mem offset legal
    sd      s0,360(sp)
    addi    s0,sp,376
              #                          new_var ini_arr_17:ptr->i32 
              #                          new_var sorted_arr_17:ptr->i32 
              #                          alloc Array:i32:[Some(10_0)] count_arr_19 
              #                          alloc i32 i_19 
              #                          alloc i32 j_19 
              #                          alloc i32 k_19 
              #                          alloc i1 temp_0_cmp_27 
              #                          alloc ptr->i32 temp_1_index_ptr_29 
              #                          alloc i32 temp_2_arithop_29 
              #                          alloc i1 temp_3_cmp_32 
              #                          alloc ptr->i32 temp_4_array_ptr_34 
              #                          alloc i32 temp_5_array_ele_34 
              #                          alloc ptr->i32 temp_6_index_ptr_34 
              #                          alloc ptr->i32 temp_7_array_ptr_34 
              #                          alloc i32 temp_8_array_ele_34 
              #                          alloc ptr->i32 temp_9_array_ptr_34 
              #                          alloc i32 temp_10_array_ele_34 
              #                          alloc i32 temp_11_arithop_34 
              #                          alloc i32 temp_12_arithop_34 
              #                          alloc i1 temp_13_cmp_38 
              #                          alloc ptr->i32 temp_14_index_ptr_40 
              #                          alloc i32 temp_15_arithop_40 
              #                          alloc ptr->i32 temp_16_array_ptr_40 
              #                          alloc i32 temp_17_array_ele_40 
              #                          alloc ptr->i32 temp_18_array_ptr_40 
              #                          alloc i32 temp_19_array_ele_40 
              #                          alloc i32 temp_20_arithop_40 
              #                          alloc i32 temp_21_arithop_40 
              #                          alloc i1 temp_22_cmp_44 
              #                          alloc i32 temp_23_arithop_46 
              #                          alloc ptr->i32 temp_24_array_ptr_46 
              #                          alloc i32 temp_25_array_ele_46 
              #                          alloc ptr->i32 temp_26_index_ptr_46 
              #                          alloc i32 temp_27_arithop_46 
              #                          alloc ptr->i32 temp_28_array_ptr_46 
              #                          alloc i32 temp_29_array_ele_46 
              #                          alloc ptr->i32 temp_30_array_ptr_46 
              #                          alloc i32 temp_31_array_ele_46 
              #                          alloc i32 temp_32_arithop_46 
              #                          alloc i32 temp_33_arithop_46 
              #                          alloc ptr->i32 temp_34_array_ptr_46 
              #                          alloc i32 temp_35_array_ele_46 
              #                          alloc ptr->i32 temp_36_array_ptr_46 
              #                          alloc i32 temp_37_array_ele_46 
              #                          alloc ptr->i32 temp_38_index_ptr_46 
              #                          alloc i32 temp_39_arithop_46 
              #                          alloc ptr->i32 temp_40_array_ptr_46 
              #                          alloc i32 temp_41_array_ele_46 
              #                          alloc i32 temp_42_arithop_46 
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var count_arr_19:Array:i32:[Some(10_0)] 
              #                          new_var i_19:i32 
              #                          new_var j_19:i32 
              #                          new_var k_19:i32 
              #                          k_19 = i32 0_0 
              #                    occupy a3 with k_19
    li      a3, 0
              #                    free a3
              #                          i_19 = i32 0_0 
              #                    occupy a4 with i_19
    li      a4, 0
              #                    free a4
              #                          j_19 = i32 0_0 
              #                    occupy a5 with j_19
    li      a5, 0
              #                    free a5
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } | 
              #                          label while.head_28: 
.while.head_28:
              #                          new_var temp_0_cmp_27:i1 
              #                          temp_0_cmp_27 = icmp i32 Slt k_19, 10_0 
              #                    occupy a3 with k_19
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy a7 with temp_0_cmp_27
    slt     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          br i1 temp_0_cmp_27, label while.body_28, label while.exit_28 
              #                    occupy a7 with temp_0_cmp_27
              #                    free a7
              #                    occupy a7 with temp_0_cmp_27
    bnez    a7, .while.body_28
              #                    free a7
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label while.body_28: 
.while.body_28:
              #                          new_var temp_1_index_ptr_29:ptr->i32 
              #                          temp_1_index_ptr_29 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
              #                    occupy a6 with temp_1_index_ptr_29
    li      a6, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a3 with k_19
              #                    occupy s2 with _anonymous_of_count_arr_19_0
    mul     s2,s1,a3
              #                    free s1
              #                    free a3
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,300
              #                    free a6
              #                          store 0_0:i32 temp_1_index_ptr_29:ptr->i32 
              #                    occupy a6 with temp_1_index_ptr_29
              #                    occupy s3 with 0_0
    li      s3, 0
    sw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          mu count_arr_19:42 
              #                          count_arr_19 = chi count_arr_19:42 
              #                          new_var temp_2_arithop_29:i32 
              #                          temp_2_arithop_29 = Add i32 k_19, 1_0 
              #                    occupy a3 with k_19
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s4 with temp_2_arithop_29
    add     s4,a3,s1
              #                    free a3
              #                    free s1
              #                    free s4
              #                          k_19 = i32 temp_2_arithop_29 
              #                    occupy s4 with temp_2_arithop_29
              #                    occupy a3 with k_19
    mv      a3, s4
              #                    free s4
              #                    free a3
              #                          jump label: while.head_28 
              #                    store to temp_1_index_ptr_29 in mem offset legal
    sd      a6,272(sp)
              #                    release a6 with temp_1_index_ptr_29
              #                    store to temp_0_cmp_27 in mem offset legal
    sb      a7,287(sp)
              #                    release a7 with temp_0_cmp_27
              #                    store to temp_2_arithop_29 in mem offset legal
    sw      s4,268(sp)
              #                    release s4 with temp_2_arithop_29
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label while.exit_28: 
.while.exit_28:
              #                          new_var temp_3_cmp_32:i1 
              #                          temp_3_cmp_32 = icmp i32 Slt i_19, n_17 
              #                    occupy a4 with i_19
              #                    occupy a2 with n_17
              #                    occupy a6 with temp_3_cmp_32
    slt     a6,a4,a2
              #                    free a4
              #                    free a2
              #                    free a6
              #                          br i1 temp_3_cmp_32, label while.body_33, label while.exit_33 
              #                    occupy a6 with temp_3_cmp_32
              #                    free a6
              #                    occupy a6 with temp_3_cmp_32
    bnez    a6, .while.body_33
              #                    free a6
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_4_array_ptr_34:ptr->i32 
              #                          temp_4_array_ptr_34 = getelementptr ini_arr_17:ptr->i32 [Some(i_19)] 
              #                    occupy s1 with temp_4_array_ptr_34
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a4 with i_19
              #                    occupy s3 with _anonymous_of_ini_arr_17_0
    mul     s3,s2,a4
              #                    free s2
              #                    free a4
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy a0 with ini_arr_17
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                          new_var temp_5_array_ele_34:i32 
              #                          temp_5_array_ele_34 = load temp_4_array_ptr_34:ptr->i32 
              #                    occupy s1 with temp_4_array_ptr_34
              #                    occupy s4 with temp_5_array_ele_34
    lw      s4,0(s1)
              #                    free s4
              #                    free s1
              #                          new_var temp_6_index_ptr_34:ptr->i32 
              #                          temp_6_index_ptr_34 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_5_array_ele_34)] 
              #                    occupy s5 with temp_6_index_ptr_34
    li      s5, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s4 with temp_5_array_ele_34
              #                    occupy s6 with _anonymous_of_count_arr_19_0
    mul     s6,s2,s4
              #                    free s2
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,300
              #                    free s5
              #                          new_var temp_7_array_ptr_34:ptr->i32 
              #                          temp_7_array_ptr_34 = getelementptr ini_arr_17:ptr->i32 [Some(i_19)] 
              #                    occupy s7 with temp_7_array_ptr_34
    li      s7, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a4 with i_19
              #                    occupy s8 with _anonymous_of_ini_arr_17_0
    mul     s8,s2,a4
              #                    free s2
              #                    free a4
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with ini_arr_17
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_8_array_ele_34:i32 
              #                          temp_8_array_ele_34 = load temp_7_array_ptr_34:ptr->i32 
              #                    occupy s7 with temp_7_array_ptr_34
              #                    occupy s9 with temp_8_array_ele_34
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_9_array_ptr_34:ptr->i32 
              #                          temp_9_array_ptr_34 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_8_array_ele_34)] 
              #                    occupy s10 with temp_9_array_ptr_34
    li      s10, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy s9 with temp_8_array_ele_34
              #                    occupy s11 with _anonymous_of_count_arr_19_0
    mul     s11,s2,s9
              #                    free s2
              #                    free s9
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,300
              #                    free s10
              #                          new_var temp_10_array_ele_34:i32 
              #                          temp_10_array_ele_34 = load temp_9_array_ptr_34:ptr->i32 
              #                    occupy s10 with temp_9_array_ptr_34
              #                    occupy s2 with temp_10_array_ele_34
    lw      s2,0(s10)
              #                    free s2
              #                    free s10
              #                          new_var temp_11_arithop_34:i32 
              #                          temp_11_arithop_34 = Add i32 temp_10_array_ele_34, 1_0 
              #                    occupy s2 with temp_10_array_ele_34
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s6 with temp_11_arithop_34
    add     s6,s2,s3
              #                    free s2
              #                    free s3
              #                    free s6
              #                          store temp_11_arithop_34:i32 temp_6_index_ptr_34:ptr->i32 
              #                    occupy s5 with temp_6_index_ptr_34
              #                    occupy s6 with temp_11_arithop_34
    sw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          mu count_arr_19:80 
              #                          count_arr_19 = chi count_arr_19:80 
              #                          new_var temp_12_arithop_34:i32 
              #                          temp_12_arithop_34 = Add i32 i_19, 1_0 
              #                    occupy a4 with i_19
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s8 with temp_12_arithop_34
    add     s8,a4,s3
              #                    free a4
              #                    free s3
              #                    free s8
              #                          i_19 = i32 temp_12_arithop_34 
              #                    occupy s8 with temp_12_arithop_34
              #                    occupy a4 with i_19
    mv      a4, s8
              #                    free s8
              #                    free a4
              #                          jump label: while.exit_28 
              #                    store to temp_3_cmp_32 in mem offset legal
    sb      a6,267(sp)
              #                    release a6 with temp_3_cmp_32
              #                    store to temp_11_arithop_34 in mem offset legal
    sw      s6,208(sp)
              #                    release s6 with temp_11_arithop_34
              #                    store to temp_8_array_ele_34 in mem offset legal
    sw      s9,228(sp)
              #                    release s9 with temp_8_array_ele_34
              #                    store to temp_4_array_ptr_34 in mem offset legal
    sd      s1,256(sp)
              #                    release s1 with temp_4_array_ptr_34
              #                    store to temp_10_array_ele_34 in mem offset legal
    sw      s2,212(sp)
              #                    release s2 with temp_10_array_ele_34
              #                    store to temp_5_array_ele_34 in mem offset legal
    sw      s4,252(sp)
              #                    release s4 with temp_5_array_ele_34
              #                    store to temp_9_array_ptr_34 in mem offset legal
    sd      s10,216(sp)
              #                    release s10 with temp_9_array_ptr_34
              #                    store to temp_12_arithop_34 in mem offset legal
    sw      s8,204(sp)
              #                    release s8 with temp_12_arithop_34
              #                    store to temp_6_index_ptr_34 in mem offset legal
    sd      s5,240(sp)
              #                    release s5 with temp_6_index_ptr_34
              #                    store to temp_7_array_ptr_34 in mem offset legal
    sd      s7,232(sp)
              #                    release s7 with temp_7_array_ptr_34
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          k_19 = i32 1_0 
              #                    occupy a3 with k_19
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label while.head_39: 
.while.head_39:
              #                          new_var temp_13_cmp_38:i1 
              #                          temp_13_cmp_38 = icmp i32 Slt k_19, 10_0 
              #                    occupy a3 with k_19
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s2 with temp_13_cmp_38
    slt     s2,a3,s1
              #                    free a3
              #                    free s1
              #                    free s2
              #                          br i1 temp_13_cmp_38, label while.body_39, label while.exit_39 
              #                    occupy s2 with temp_13_cmp_38
              #                    free s2
              #                    occupy s2 with temp_13_cmp_38
    bnez    s2, .while.body_39
              #                    free s2
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } | 
              #                          label while.body_39: 
.while.body_39:
              #                          new_var temp_14_index_ptr_40:ptr->i32 
              #                          temp_14_index_ptr_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
              #                    occupy s1 with temp_14_index_ptr_40
    li      s1, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a3 with k_19
              #                    occupy s4 with _anonymous_of_count_arr_19_0
    mul     s4,s3,a3
              #                    free s3
              #                    free a3
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,300
              #                    free s1
              #                          new_var temp_15_arithop_40:i32 
              #                          temp_15_arithop_40 = Sub i32 k_19, 1_0 
              #                    occupy a3 with k_19
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s5 with temp_15_arithop_40
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Occupied { symidx: k_19, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s1:Freed { symidx: temp_14_index_ptr_40, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Freed { symidx: _anonymous_of_count_arr_19_0, tracked: false } |     s5:Occupied { symidx: temp_15_arithop_40, tracked: true, occupy_count: 1 } | 


    sub     s5,a3,s3
              #                    free a3
              #                    free s3
              #                    free s5
              #                          new_var temp_16_array_ptr_40:ptr->i32 
              #                          temp_16_array_ptr_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_15_arithop_40)] 
              #                    occupy s6 with temp_16_array_ptr_40
    li      s6, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy s5 with temp_15_arithop_40
              #                    occupy s7 with _anonymous_of_count_arr_19_0
    mul     s7,s3,s5
              #                    free s3
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,300
              #                    free s6
              #                          new_var temp_17_array_ele_40:i32 
              #                          temp_17_array_ele_40 = load temp_16_array_ptr_40:ptr->i32 
              #                    occupy s6 with temp_16_array_ptr_40
              #                    occupy s8 with temp_17_array_ele_40
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          new_var temp_18_array_ptr_40:ptr->i32 
              #                          temp_18_array_ptr_40 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(k_19)] 
              #                    occupy s9 with temp_18_array_ptr_40
    li      s9, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a3 with k_19
              #                    occupy s10 with _anonymous_of_count_arr_19_0
    mul     s10,s3,a3
              #                    free s3
              #                    free a3
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,300
              #                    free s9
              #                          new_var temp_19_array_ele_40:i32 
              #                          temp_19_array_ele_40 = load temp_18_array_ptr_40:ptr->i32 
              #                    occupy s9 with temp_18_array_ptr_40
              #                    occupy s11 with temp_19_array_ele_40
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          new_var temp_20_arithop_40:i32 
              #                          temp_20_arithop_40 = Add i32 temp_19_array_ele_40, temp_17_array_ele_40 
              #                    occupy s11 with temp_19_array_ele_40
              #                    occupy s8 with temp_17_array_ele_40
              #                    occupy s3 with temp_20_arithop_40
    add     s3,s11,s8
              #                    free s11
              #                    free s8
              #                    free s3
              #                          store temp_20_arithop_40:i32 temp_14_index_ptr_40:ptr->i32 
              #                    occupy s1 with temp_14_index_ptr_40
              #                    occupy s3 with temp_20_arithop_40
    sw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                          mu count_arr_19:117 
              #                          count_arr_19 = chi count_arr_19:117 
              #                          new_var temp_21_arithop_40:i32 
              #                          temp_21_arithop_40 = Add i32 k_19, 1_0 
              #                    occupy a3 with k_19
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_21_arithop_40
    add     s7,a3,s4
              #                    free a3
              #                    free s4
              #                    free s7
              #                          k_19 = i32 temp_21_arithop_40 
              #                    occupy s7 with temp_21_arithop_40
              #                    occupy a3 with k_19
    mv      a3, s7
              #                    free s7
              #                    free a3
              #                          jump label: while.head_39 
              #                    store to temp_16_array_ptr_40 in mem offset legal
    sd      s6,176(sp)
              #                    release s6 with temp_16_array_ptr_40
              #                    store to temp_18_array_ptr_40 in mem offset legal
    sd      s9,160(sp)
              #                    release s9 with temp_18_array_ptr_40
              #                    store to temp_20_arithop_40 in mem offset legal
    sw      s3,152(sp)
              #                    release s3 with temp_20_arithop_40
              #                    store to temp_19_array_ele_40 in mem offset legal
    sw      s11,156(sp)
              #                    release s11 with temp_19_array_ele_40
              #                    store to temp_14_index_ptr_40 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_14_index_ptr_40
              #                    store to temp_13_cmp_38 in mem offset legal
    sb      s2,203(sp)
              #                    release s2 with temp_13_cmp_38
              #                    store to temp_17_array_ele_40 in mem offset legal
    sw      s8,172(sp)
              #                    release s8 with temp_17_array_ele_40
              #                    store to temp_15_arithop_40 in mem offset legal
    sw      s5,188(sp)
              #                    release s5 with temp_15_arithop_40
              #                    store to temp_21_arithop_40 in mem offset legal
    sw      s7,148(sp)
              #                    release s7 with temp_21_arithop_40
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } | 
              #                          label while.exit_39: 
.while.exit_39:
              #                          j_19 = i32 n_17 
              #                    occupy a2 with n_17
              #                    occupy a5 with j_19
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } | 
              #                          label while.head_45: 
.while.head_45:
              #                          new_var temp_22_cmp_44:i1 
              #                          temp_22_cmp_44 = icmp i32 Sgt j_19, 0_0 
              #                    occupy a5 with j_19
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s3 with temp_22_cmp_44
    slt     s3,s1,a5
              #                    free a5
              #                    free s1
              #                    free s3
              #                          br i1 temp_22_cmp_44, label while.body_45, label while.exit_45 
              #                    occupy s3 with temp_22_cmp_44
              #                    free s3
              #                    occupy s3 with temp_22_cmp_44
    bnez    s3, .while.body_45
              #                    free s3
    j       .while.exit_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } | 
              #                          label while.body_45: 
.while.body_45:
              #                          new_var temp_23_arithop_46:i32 
              #                          temp_23_arithop_46 = Sub i32 j_19, 1_0 
              #                    occupy a5 with j_19
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_23_arithop_46
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Occupied { symidx: j_19, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Occupied { symidx: temp_23_arithop_46, tracked: true, occupy_count: 1 } | 


    sub     s4,a5,s1
              #                    free a5
              #                    free s1
              #                    free s4
              #                          new_var temp_24_array_ptr_46:ptr->i32 
              #                          temp_24_array_ptr_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_23_arithop_46)] 
              #                    occupy s5 with temp_24_array_ptr_46
    li      s5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s4 with temp_23_arithop_46
              #                    occupy s6 with _anonymous_of_ini_arr_17_0
    mul     s6,s1,s4
              #                    free s1
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with ini_arr_17
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_25_array_ele_46:i32 
              #                          temp_25_array_ele_46 = load temp_24_array_ptr_46:ptr->i32 
              #                    occupy s5 with temp_24_array_ptr_46
              #                    occupy s7 with temp_25_array_ele_46
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_26_index_ptr_46:ptr->i32 
              #                          temp_26_index_ptr_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_25_array_ele_46)] 
              #                    occupy s8 with temp_26_index_ptr_46
    li      s8, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s7 with temp_25_array_ele_46
              #                    occupy s9 with _anonymous_of_count_arr_19_0
    mul     s9,s1,s7
              #                    free s1
              #                    free s7
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,300
              #                    free s8
              #                          new_var temp_27_arithop_46:i32 
              #                          temp_27_arithop_46 = Sub i32 j_19, 1_0 
              #                    occupy a5 with j_19
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s10 with temp_27_arithop_46
              #                    regtab:    a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Occupied { symidx: j_19, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s10:Occupied { symidx: temp_27_arithop_46, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Freed { symidx: temp_23_arithop_46, tracked: true } |     s5:Freed { symidx: temp_24_array_ptr_46, tracked: true } |     s6:Freed { symidx: _anonymous_of_ini_arr_17_0, tracked: false } |     s7:Freed { symidx: temp_25_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_26_index_ptr_46, tracked: true } |     s9:Freed { symidx: _anonymous_of_count_arr_19_0, tracked: false } | 


    sub     s10,a5,s1
              #                    free a5
              #                    free s1
              #                    free s10
              #                          new_var temp_28_array_ptr_46:ptr->i32 
              #                          temp_28_array_ptr_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_27_arithop_46)] 
              #                    occupy s11 with temp_28_array_ptr_46
    li      s11, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s10 with temp_27_arithop_46
              #                    occupy s6 with _anonymous_of_ini_arr_17_0
    mul     s6,s1,s10
              #                    free s1
              #                    free s10
    add     s11,s11,s6
              #                    free s6
    slli s11,s11,2
              #                    occupy a0 with ini_arr_17
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_29_array_ele_46:i32 
              #                          temp_29_array_ele_46 = load temp_28_array_ptr_46:ptr->i32 
              #                    occupy s11 with temp_28_array_ptr_46
              #                    occupy s1 with temp_29_array_ele_46
    lw      s1,0(s11)
              #                    free s1
              #                    free s11
              #                          new_var temp_30_array_ptr_46:ptr->i32 
              #                          temp_30_array_ptr_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_29_array_ele_46)] 
              #                    occupy s6 with temp_30_array_ptr_46
    li      s6, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s1 with temp_29_array_ele_46
              #                    store to ini_arr_17 in mem offset legal
    sd      a0,352(sp)
              #                    release a0 with ini_arr_17
              #                    occupy a0 with _anonymous_of_count_arr_19_0
    mul     a0,s9,s1
              #                    free s9
              #                    free s1
    add     s6,s6,a0
              #                    free a0
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,300
              #                    free s6
              #                          new_var temp_31_array_ele_46:i32 
              #                          temp_31_array_ele_46 = load temp_30_array_ptr_46:ptr->i32 
              #                    occupy s6 with temp_30_array_ptr_46
              #                    occupy a0 with temp_31_array_ele_46
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_32_arithop_46:i32 
              #                          temp_32_arithop_46 = Sub i32 temp_31_array_ele_46, 1_0 
              #                    occupy a0 with temp_31_array_ele_46
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    store to sorted_arr_17 in mem offset legal
    sd      a1,344(sp)
              #                    release a1 with sorted_arr_17
              #                    occupy a1 with temp_32_arithop_46
              #                    regtab:    a0:Occupied { symidx: temp_31_array_ele_46, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_32_arithop_46, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s10:Freed { symidx: temp_27_arithop_46, tracked: true } |     s11:Freed { symidx: temp_28_array_ptr_46, tracked: true } |     s1:Freed { symidx: temp_29_array_ele_46, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Freed { symidx: temp_23_arithop_46, tracked: true } |     s5:Freed { symidx: temp_24_array_ptr_46, tracked: true } |     s6:Freed { symidx: temp_30_array_ptr_46, tracked: true } |     s7:Freed { symidx: temp_25_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_26_index_ptr_46, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     a1,a0,s9
              #                    free a0
              #                    free s9
              #                    free a1
              #                          store temp_32_arithop_46:i32 temp_26_index_ptr_46:ptr->i32 
              #                    occupy s8 with temp_26_index_ptr_46
              #                    occupy a1 with temp_32_arithop_46
    sw      a1,0(s8)
              #                    free a1
              #                    free s8
              #                          mu count_arr_19:163 
              #                          count_arr_19 = chi count_arr_19:163 
              #                          new_var temp_33_arithop_46:i32 
              #                          temp_33_arithop_46 = Sub i32 j_19, 1_0 
              #                    occupy a5 with j_19
              #                    found literal reg Some(s9) already exist with 1_0
              #                    occupy s9 with 1_0
              #                    store to temp_31_array_ele_46 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_31_array_ele_46
              #                    occupy a0 with temp_33_arithop_46
              #                    regtab:    a0:Occupied { symidx: temp_33_arithop_46, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_32_arithop_46, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Occupied { symidx: j_19, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s10:Freed { symidx: temp_27_arithop_46, tracked: true } |     s11:Freed { symidx: temp_28_array_ptr_46, tracked: true } |     s1:Freed { symidx: temp_29_array_ele_46, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Freed { symidx: temp_23_arithop_46, tracked: true } |     s5:Freed { symidx: temp_24_array_ptr_46, tracked: true } |     s6:Freed { symidx: temp_30_array_ptr_46, tracked: true } |     s7:Freed { symidx: temp_25_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_26_index_ptr_46, tracked: true } |     s9:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } | 


    sub     a0,a5,s9
              #                    free a5
              #                    free s9
              #                    free a0
              #                          new_var temp_34_array_ptr_46:ptr->i32 
              #                          temp_34_array_ptr_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_33_arithop_46)] 
              #                    occupy s9 with temp_34_array_ptr_46
    li      s9, 0
              #                    store to temp_33_arithop_46 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_33_arithop_46
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_32_arithop_46 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with temp_32_arithop_46
              #                    occupy a1 with temp_33_arithop_46
              #                    load from temp_33_arithop_46 in mem


    lw      a1,68(sp)
              #                    store to n_17 in mem offset legal
    sw      a2,340(sp)
              #                    release a2 with n_17
              #                    occupy a2 with _anonymous_of_ini_arr_17_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,a2
              #                    free a2
    slli s9,s9,2
              #                    occupy a0 with ini_arr_17
              #                    load from ini_arr_17 in mem
    ld      a0,352(sp)
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_35_array_ele_46:i32 
              #                          temp_35_array_ele_46 = load temp_34_array_ptr_46:ptr->i32 
              #                    occupy s9 with temp_34_array_ptr_46
              #                    occupy a2 with temp_35_array_ele_46
    lw      a2,0(s9)
              #                    free a2
              #                    free s9
              #                          new_var temp_36_array_ptr_46:ptr->i32 
              #                          temp_36_array_ptr_46 = getelementptr count_arr_19:Array:i32:[Some(10_0)] [Some(temp_35_array_ele_46)] 
              #                    store to ini_arr_17 in mem offset legal
    sd      a0,352(sp)
              #                    release a0 with ini_arr_17
              #                    occupy a0 with temp_36_array_ptr_46
    li      a0, 0
              #                    store to temp_33_arithop_46 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_33_arithop_46
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_35_array_ele_46
              #                    store to k_19 in mem offset legal
    sw      a3,288(sp)
              #                    release a3 with k_19
              #                    occupy a3 with _anonymous_of_count_arr_19_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,300
              #                    free a0
              #                          new_var temp_37_array_ele_46:i32 
              #                          temp_37_array_ele_46 = load temp_36_array_ptr_46:ptr->i32 
              #                    occupy a0 with temp_36_array_ptr_46
              #                    occupy a1 with temp_37_array_ele_46
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_38_index_ptr_46:ptr->i32 
              #                          temp_38_index_ptr_46 = getelementptr sorted_arr_17:ptr->i32 [Some(temp_37_array_ele_46)] 
              #                    occupy a3 with temp_38_index_ptr_46
    li      a3, 0
              #                    store to temp_36_array_ptr_46 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_36_array_ptr_46
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with temp_37_array_ele_46
              #                    store to temp_35_array_ele_46 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with temp_35_array_ele_46
              #                    occupy a2 with _anonymous_of_sorted_arr_17_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     a3,a3,a2
              #                    free a2
    slli a3,a3,2
              #                    occupy a0 with sorted_arr_17
              #                    load from sorted_arr_17 in mem
    ld      a0,344(sp)
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_39_arithop_46:i32 
              #                          temp_39_arithop_46 = Sub i32 j_19, 1_0 
              #                    occupy a5 with j_19
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    store to sorted_arr_17 in mem offset legal
    sd      a0,344(sp)
              #                    release a0 with sorted_arr_17
              #                    occupy a0 with temp_39_arithop_46
              #                    regtab:    a0:Occupied { symidx: temp_39_arithop_46, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_37_array_ele_46, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_38_index_ptr_46, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Occupied { symidx: j_19, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s10:Freed { symidx: temp_27_arithop_46, tracked: true } |     s11:Freed { symidx: temp_28_array_ptr_46, tracked: true } |     s1:Freed { symidx: temp_29_array_ele_46, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Freed { symidx: temp_23_arithop_46, tracked: true } |     s5:Freed { symidx: temp_24_array_ptr_46, tracked: true } |     s6:Freed { symidx: temp_30_array_ptr_46, tracked: true } |     s7:Freed { symidx: temp_25_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_26_index_ptr_46, tracked: true } |     s9:Freed { symidx: temp_34_array_ptr_46, tracked: true } | 


    sub     a0,a5,a2
              #                    free a5
              #                    free a2
              #                    free a0
              #                          new_var temp_40_array_ptr_46:ptr->i32 
              #                          temp_40_array_ptr_46 = getelementptr ini_arr_17:ptr->i32 [Some(temp_39_arithop_46)] 
              #                    occupy a2 with temp_40_array_ptr_46
    li      a2, 0
              #                    store to temp_39_arithop_46 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_39_arithop_46
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_37_array_ele_46 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with temp_37_array_ele_46
              #                    occupy a1 with temp_39_arithop_46
              #                    load from temp_39_arithop_46 in mem


    lw      a1,20(sp)
              #                    store to temp_38_index_ptr_46 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_38_index_ptr_46
              #                    occupy a3 with _anonymous_of_ini_arr_17_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with ini_arr_17
              #                    load from ini_arr_17 in mem
    ld      a0,352(sp)
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_41_array_ele_46:i32 
              #                          temp_41_array_ele_46 = load temp_40_array_ptr_46:ptr->i32 
              #                    occupy a2 with temp_40_array_ptr_46
              #                    occupy a3 with temp_41_array_ele_46
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          store temp_41_array_ele_46:i32 temp_38_index_ptr_46:ptr->i32 
              #                    store to ini_arr_17 in mem offset legal
    sd      a0,352(sp)
              #                    release a0 with ini_arr_17
              #                    occupy a0 with temp_38_index_ptr_46
              #                    load from temp_38_index_ptr_46 in mem
    ld      a0,24(sp)
              #                    occupy a3 with temp_41_array_ele_46
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          mu sorted_arr_17:193 
              #                          sorted_arr_17 = chi sorted_arr_17:193 
              #                          new_var temp_42_arithop_46:i32 
              #                          temp_42_arithop_46 = Sub i32 j_19, 1_0 
              #                    occupy a5 with j_19
              #                    store to temp_38_index_ptr_46 in mem offset legal
    sd      a0,24(sp)
              #                    release a0 with temp_38_index_ptr_46
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_39_arithop_46 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_39_arithop_46
              #                    occupy a1 with temp_42_arithop_46
              #                    regtab:    a0:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a1:Occupied { symidx: temp_42_arithop_46, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_40_array_ptr_46, tracked: true } |     a3:Freed { symidx: temp_41_array_ele_46, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Occupied { symidx: j_19, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s10:Freed { symidx: temp_27_arithop_46, tracked: true } |     s11:Freed { symidx: temp_28_array_ptr_46, tracked: true } |     s1:Freed { symidx: temp_29_array_ele_46, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } |     s4:Freed { symidx: temp_23_arithop_46, tracked: true } |     s5:Freed { symidx: temp_24_array_ptr_46, tracked: true } |     s6:Freed { symidx: temp_30_array_ptr_46, tracked: true } |     s7:Freed { symidx: temp_25_array_ele_46, tracked: true } |     s8:Freed { symidx: temp_26_index_ptr_46, tracked: true } |     s9:Freed { symidx: temp_34_array_ptr_46, tracked: true } | 


    sub     a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                          j_19 = i32 temp_42_arithop_46 
              #                    occupy a1 with temp_42_arithop_46
              #                    occupy a5 with j_19
    mv      a5, a1
              #                    free a1
              #                    free a5
              #                          jump label: while.head_45 
              #                    store to temp_30_array_ptr_46 in mem offset legal
    sd      s6,80(sp)
              #                    release s6 with temp_30_array_ptr_46
              #                    store to temp_34_array_ptr_46 in mem offset legal
    sd      s9,56(sp)
              #                    release s9 with temp_34_array_ptr_46
              #                    store to temp_22_cmp_44 in mem offset legal
    sb      s3,147(sp)
              #                    release s3 with temp_22_cmp_44
              #                    store to temp_28_array_ptr_46 in mem offset legal
    sd      s11,96(sp)
              #                    release s11 with temp_28_array_ptr_46
              #                    store to temp_41_array_ele_46 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_41_array_ele_46
              #                    store to temp_29_array_ele_46 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with temp_29_array_ele_46
              #                    store to temp_42_arithop_46 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with temp_42_arithop_46
              #                    store to temp_23_arithop_46 in mem offset legal
    sw      s4,140(sp)
              #                    release s4 with temp_23_arithop_46
              #                    store to temp_40_array_ptr_46 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_40_array_ptr_46
              #                    store to temp_27_arithop_46 in mem offset legal
    sw      s10,108(sp)
              #                    release s10 with temp_27_arithop_46
              #                    store to temp_26_index_ptr_46 in mem offset legal
    sd      s8,112(sp)
              #                    release s8 with temp_26_index_ptr_46
              #                    store to temp_24_array_ptr_46 in mem offset legal
    sd      s5,128(sp)
              #                    release s5 with temp_24_array_ptr_46
              #                    store to temp_25_array_ele_46 in mem offset legal
    sw      s7,124(sp)
              #                    release s7 with temp_25_array_ele_46
              #                    occupy a0 with _anonymous_of_ini_arr_17_0
              #                    load from ini_arr_17 in mem
    ld      a0,352(sp)
              #                    occupy a3 with _anonymous_of_k_19_0
              #                    load from k_19 in mem


    lw      a3,288(sp)
              #                    occupy a1 with _anonymous_of_sorted_arr_17_0
              #                    load from sorted_arr_17 in mem
    ld      a1,344(sp)
              #                    occupy a2 with _anonymous_of_n_17_0
              #                    load from n_17 in mem


    lw      a2,340(sp)
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: ini_arr_17, tracked: true } |     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } | 
              #                          label while.exit_45: 
.while.exit_45:
              #                          ret 0_0 
              #                    load from ra_counting_sort_0 in mem
    ld      ra,368(sp)
              #                    load from s0_counting_sort_0 in mem
    ld      s0,360(sp)
              #                    store to ini_arr_17 in mem offset legal
    sd      a0,352(sp)
              #                    release a0 with ini_arr_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,376
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: sorted_arr_17, tracked: true } |     a2:Freed { symidx: n_17, tracked: true } |     a3:Freed { symidx: k_19, tracked: true } |     a4:Freed { symidx: i_19, tracked: true } |     a5:Freed { symidx: j_19, tracked: true } |     a6:Freed { symidx: temp_3_cmp_32, tracked: true } |     a7:Freed { symidx: temp_0_cmp_27, tracked: true } |     s2:Freed { symidx: temp_13_cmp_38, tracked: true } |     s3:Freed { symidx: temp_22_cmp_44, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 208|s0_main:8 at 200|a:40 at 160|temp_43_index_ptr:8 at 152|temp_44_index_ptr:8 at 144|temp_45_index_ptr:8 at 136|temp_46_index_ptr:8 at 128|temp_47_index_ptr:8 at 120|temp_48_index_ptr:8 at 112|temp_49_index_ptr:8 at 104|temp_50_index_ptr:8 at 96|temp_51_index_ptr:8 at 88|temp_52_index_ptr:8 at 80|i:4 at 76|b:40 at 36|temp_53_ptr2globl:4 at 32|temp_54_ret_of_counting_sort:4 at 28|temp_55_ptr2globl:4 at 24|temp_56_cmp:1 at 23|none:3 at 20|tmp:4 at 16|temp_57_array_ptr:8 at 8|temp_58_array_ele:4 at 4|temp_59_arithop:4 at 0
    addi    sp,sp,-216
              #                    store to ra_main_0 in mem offset legal
    sd      ra,208(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,200(sp)
    addi    s0,sp,216
              #                          alloc Array:i32:[Some(10_0)] a_52 
              #                          alloc ptr->i32 temp_43_index_ptr_52 
              #                          alloc ptr->i32 temp_44_index_ptr_52 
              #                          alloc ptr->i32 temp_45_index_ptr_52 
              #                          alloc ptr->i32 temp_46_index_ptr_52 
              #                          alloc ptr->i32 temp_47_index_ptr_52 
              #                          alloc ptr->i32 temp_48_index_ptr_52 
              #                          alloc ptr->i32 temp_49_index_ptr_52 
              #                          alloc ptr->i32 temp_50_index_ptr_52 
              #                          alloc ptr->i32 temp_51_index_ptr_52 
              #                          alloc ptr->i32 temp_52_index_ptr_52 
              #                          alloc i32 i_52 
              #                          alloc Array:i32:[Some(10_0)] b_52 
              #                          alloc i32 temp_53_ptr2globl_52 
              #                          alloc i32 temp_54_ret_of_counting_sort_52 
              #                          alloc i32 temp_55_ptr2globl_69 
              #                          alloc i1 temp_56_cmp_69 
              #                          alloc i32 tmp_71 
              #                          alloc ptr->i32 temp_57_array_ptr_71 
              #                          alloc i32 temp_58_array_ele_71 
              #                          alloc i32 temp_59_arithop_71 
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
              #                          new_var a_52:Array:i32:[Some(10_0)] 
              #                          new_var temp_43_index_ptr_52:ptr->i32 
              #                          temp_43_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_43_index_ptr_52
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with _anonymous_of_a_52_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,160
              #                    free a2
              #                          store 4_0:i32 temp_43_index_ptr_52:ptr->i32 
              #                    occupy a2 with temp_43_index_ptr_52
              #                    occupy a6 with 4_0
    li      a6, 4
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu a_52:208 
              #                          a_52 = chi a_52:208 
              #                          new_var temp_44_index_ptr_52:ptr->i32 
              #                          temp_44_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a7 with temp_44_index_ptr_52
    li      a7, 0
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with _anonymous_of_a_52_0
    mul     s2,a3,s1
              #                    free a3
              #                    free s1
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,160
              #                    free a7
              #                          store 3_0:i32 temp_44_index_ptr_52:ptr->i32 
              #                    occupy a7 with temp_44_index_ptr_52
              #                    occupy s3 with 3_0
    li      s3, 3
    sw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          mu a_52:214 
              #                          a_52 = chi a_52:214 
              #                          new_var temp_45_index_ptr_52:ptr->i32 
              #                          temp_45_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy s4 with temp_45_index_ptr_52
    li      s4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s5 with 2_0
    li      s5, 2
              #                    occupy s6 with _anonymous_of_a_52_0
    mul     s6,s1,s5
              #                    free s1
              #                    free s5
    add     s4,s4,s6
              #                    free s6
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,160
              #                    free s4
              #                          store 9_0:i32 temp_45_index_ptr_52:ptr->i32 
              #                    occupy s4 with temp_45_index_ptr_52
              #                    occupy s7 with 9_0
    li      s7, 9
    sw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          mu a_52:220 
              #                          a_52 = chi a_52:220 
              #                          new_var temp_46_index_ptr_52:ptr->i32 
              #                          temp_46_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy s8 with temp_46_index_ptr_52
    li      s8, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s3) already exist with 3_0
              #                    occupy s3 with 3_0
              #                    occupy s9 with _anonymous_of_a_52_0
    mul     s9,s1,s3
              #                    free s1
              #                    free s3
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,160
              #                    free s8
              #                          store 2_0:i32 temp_46_index_ptr_52:ptr->i32 
              #                    occupy s8 with temp_46_index_ptr_52
              #                    found literal reg Some(s5) already exist with 2_0
              #                    occupy s5 with 2_0
    sw      s5,0(s8)
              #                    free s5
              #                    free s8
              #                          mu a_52:226 
              #                          a_52 = chi a_52:226 
              #                          new_var temp_47_index_ptr_52:ptr->i32 
              #                          temp_47_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy s10 with temp_47_index_ptr_52
    li      s10, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(a6) already exist with 4_0
              #                    occupy a6 with 4_0
              #                    occupy s11 with _anonymous_of_a_52_0
    mul     s11,s1,a6
              #                    free s1
              #                    free a6
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,160
              #                    free s10
              #                          store 0_0:i32 temp_47_index_ptr_52:ptr->i32 
              #                    occupy s10 with temp_47_index_ptr_52
              #                    found literal reg Some(a4) already exist with 0_0
              #                    occupy a4 with 0_0
    sw      a4,0(s10)
              #                    free a4
              #                    free s10
              #                          mu a_52:232 
              #                          a_52 = chi a_52:232 
              #                          new_var temp_48_index_ptr_52:ptr->i32 
              #                          temp_48_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a0 with temp_48_index_ptr_52
    li      a0, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a3 with _anonymous_of_a_52_0
    mul     a3,s1,a1
              #                    free s1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,160
              #                    free a0
              #                          store 1_0:i32 temp_48_index_ptr_52:ptr->i32 
              #                    occupy a0 with temp_48_index_ptr_52
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
    sw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                          mu a_52:238 
              #                          a_52 = chi a_52:238 
              #                          new_var temp_49_index_ptr_52:ptr->i32 
              #                          temp_49_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_49_index_ptr_52
    li      a1, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a3 with 6_0
    li      a3, 6
              #                    occupy a4 with _anonymous_of_a_52_0
    mul     a4,s1,a3
              #                    free s1
              #                    free a3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,160
              #                    free a1
              #                          store 6_0:i32 temp_49_index_ptr_52:ptr->i32 
              #                    occupy a1 with temp_49_index_ptr_52
              #                    found literal reg Some(a3) already exist with 6_0
              #                    occupy a3 with 6_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          mu a_52:244 
              #                          a_52 = chi a_52:244 
              #                          new_var temp_50_index_ptr_52:ptr->i32 
              #                          temp_50_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a3 with temp_50_index_ptr_52
    li      a3, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a5 with _anonymous_of_a_52_0
    mul     a5,s1,a4
              #                    free s1
              #                    free a4
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,160
              #                    free a3
              #                          store 5_0:i32 temp_50_index_ptr_52:ptr->i32 
              #                    occupy a3 with temp_50_index_ptr_52
              #                    occupy a4 with 5_0
    li      a4, 5
    sw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          mu a_52:250 
              #                          a_52 = chi a_52:250 
              #                          new_var temp_51_index_ptr_52:ptr->i32 
              #                          temp_51_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a4 with temp_51_index_ptr_52
    li      a4, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy a5 with 8_0
    li      a5, 8
              #                    occupy a6 with _anonymous_of_a_52_0
    mul     a6,s1,a5
              #                    free s1
              #                    free a5
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,160
              #                    free a4
              #                          store 7_0:i32 temp_51_index_ptr_52:ptr->i32 
              #                    occupy a4 with temp_51_index_ptr_52
              #                    occupy a5 with 7_0
    li      a5, 7
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          mu a_52:256 
              #                          a_52 = chi a_52:256 
              #                          new_var temp_52_index_ptr_52:ptr->i32 
              #                          temp_52_index_ptr_52 = getelementptr a_52:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a5 with temp_52_index_ptr_52
    li      a5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    found literal reg Some(s7) already exist with 9_0
              #                    occupy s7 with 9_0
              #                    occupy a6 with _anonymous_of_a_52_0
    mul     a6,s1,s7
              #                    free s1
              #                    free s7
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,160
              #                    free a5
              #                          store 8_0:i32 temp_52_index_ptr_52:ptr->i32 
              #                    occupy a5 with temp_52_index_ptr_52
              #                    occupy a6 with 8_0
    li      a6, 8
    sw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          mu a_52:262 
              #                          a_52 = chi a_52:262 
              #                          new_var i_52:i32 
              #                          i_52 = i32 0_0 
              #                    occupy a6 with i_52
    li      a6, 0
              #                    free a6
              #                          new_var b_52:Array:i32:[Some(10_0)] 
              #                          new_var temp_53_ptr2globl_52:i32 
              #                          temp_53_ptr2globl_52 = load *n_0:ptr->i32 
              #                    occupy s1 with *n_0
              #                       load label n as ptr to reg
    la      s1, n
              #                    occupy reg s1 with *n_0
              #                    occupy s2 with temp_53_ptr2globl_52
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_54_ret_of_counting_sort_52:i32 
              #                          temp_54_ret_of_counting_sort_52 =  Call i32 counting_sort_0(a_52, b_52, temp_53_ptr2globl_52) 
              #                    saved register dumping to mem
              #                    store to temp_53_ptr2globl_52 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_53_ptr2globl_52
              #                    store to temp_45_index_ptr_52 in mem offset legal
    sd      s4,136(sp)
              #                    release s4 with temp_45_index_ptr_52
              #                    store to temp_46_index_ptr_52 in mem offset legal
    sd      s8,128(sp)
              #                    release s8 with temp_46_index_ptr_52
              #                    store to temp_47_index_ptr_52 in mem offset legal
    sd      s10,120(sp)
              #                    release s10 with temp_47_index_ptr_52
              #                    store to temp_48_index_ptr_52 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_48_index_ptr_52
              #                    store to temp_49_index_ptr_52 in mem offset legal
    sd      a1,104(sp)
              #                    release a1 with temp_49_index_ptr_52
              #                    store to temp_43_index_ptr_52 in mem offset legal
    sd      a2,152(sp)
              #                    release a2 with temp_43_index_ptr_52
              #                    store to temp_50_index_ptr_52 in mem offset legal
    sd      a3,96(sp)
              #                    release a3 with temp_50_index_ptr_52
              #                    store to temp_51_index_ptr_52 in mem offset legal
    sd      a4,88(sp)
              #                    release a4 with temp_51_index_ptr_52
              #                    store to temp_52_index_ptr_52 in mem offset legal
    sd      a5,80(sp)
              #                    release a5 with temp_52_index_ptr_52
              #                    store to i_52 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with i_52
              #                    store to temp_44_index_ptr_52 in mem offset legal
    sd      a7,144(sp)
              #                    release a7 with temp_44_index_ptr_52
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_52_0
              #                    load from a_52 in mem
    lw      a0,160(sp)
              #                    occupy a1 with _anonymous_of_b_52_0
              #                    load from b_52 in mem
    lw      a1,36(sp)
              #                    occupy a2 with _anonymous_of_temp_53_ptr2globl_52_0
              #                    load from temp_53_ptr2globl_52 in mem


    lw      a2,32(sp)
              #                    arg load ended


    call    counting_sort
              #                    store to temp_54_ret_of_counting_sort_52 in mem offset legal
    sw      a0,28(sp)
              #                          i_52 = i32 temp_54_ret_of_counting_sort_52 
              #                    occupy a0 with temp_54_ret_of_counting_sort_52
              #                    occupy a1 with i_52
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_counting_sort_52, tracked: true } |     a1:Freed { symidx: i_52, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_55_ptr2globl_69:i32 
              #                          temp_55_ptr2globl_69 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_55_ptr2globl_69
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_56_cmp_69:i1 
              #                          temp_56_cmp_69 = icmp i32 Slt i_52, temp_55_ptr2globl_69 
              #                    occupy a1 with i_52
              #                    occupy a3 with temp_55_ptr2globl_69
              #                    occupy a4 with temp_56_cmp_69
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_56_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy a4 with temp_56_cmp_69
              #                    free a4
              #                    occupy a4 with temp_56_cmp_69
    bnez    a4, .while.body_70
              #                    free a4
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_counting_sort_52, tracked: true } |     a1:Freed { symidx: i_52, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_56_cmp_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          new_var tmp_71:i32 
              #                          new_var temp_57_array_ptr_71:ptr->i32 
              #                          temp_57_array_ptr_71 = getelementptr b_52:Array:i32:[Some(10_0)] [Some(i_52)] 
              #                    occupy a2 with temp_57_array_ptr_71
    li      a2, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with i_52
              #                    occupy a6 with _anonymous_of_b_52_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,36
              #                    free a2
              #                          new_var temp_58_array_ele_71:i32 
              #                          temp_58_array_ele_71 = load temp_57_array_ptr_71:ptr->i32 
              #                    occupy a2 with temp_57_array_ptr_71
              #                    occupy a7 with temp_58_array_ele_71
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          tmp_71 = i32 temp_58_array_ele_71 
              #                    occupy a7 with temp_58_array_ele_71
              #                    occupy s1 with tmp_71
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                           Call void putint_0(tmp_71) 
              #                    saved register dumping to mem
              #                    store to tmp_71 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with tmp_71
              #                    store to temp_54_ret_of_counting_sort_52 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_54_ret_of_counting_sort_52
              #                    store to i_52 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with i_52
              #                    store to temp_57_array_ptr_71 in mem offset legal
    sd      a2,8(sp)
              #                    release a2 with temp_57_array_ptr_71
              #                    store to temp_55_ptr2globl_69 in mem offset legal
    sw      a3,24(sp)
              #                    release a3 with temp_55_ptr2globl_69
              #                    store to temp_56_cmp_69 in mem offset legal
    sb      a4,23(sp)
              #                    release a4 with temp_56_cmp_69
              #                    store to temp_58_array_ele_71 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_58_array_ele_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_71_0
              #                    load from tmp_71 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          tmp_71 = i32 10_0 
              #                    occupy a0 with tmp_71
    li      a0, 10
              #                    free a0
              #                           Call void putch_0(tmp_71) 
              #                    saved register dumping to mem
              #                    store to tmp_71 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with tmp_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_tmp_71_0
              #                    load from tmp_71 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putch
              #                          new_var temp_59_arithop_71:i32 
              #                          temp_59_arithop_71 = Add i32 i_52, 1_0 
              #                    occupy a0 with i_52
              #                    load from i_52 in mem


    lw      a0,76(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_59_arithop_71
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_52 = i32 temp_59_arithop_71 
              #                    occupy a2 with temp_59_arithop_71
              #                    occupy a0 with i_52
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_70 
              #                    store to temp_59_arithop_71 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_59_arithop_71
              #                    store to i_52 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with i_52
              #                    occupy a1 with _anonymous_of_i_52_0
              #                    load from i_52 in mem


    lw      a1,76(sp)
              #                    occupy a0 with _anonymous_of_temp_54_ret_of_counting_sort_52_0
              #                    load from temp_54_ret_of_counting_sort_52 in mem


    lw      a0,28(sp)
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_counting_sort_52, tracked: true } |     a1:Freed { symidx: i_52, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_56_cmp_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,208(sp)
              #                    load from s0_main_0 in mem
    ld      s0,200(sp)
              #                    store to temp_54_ret_of_counting_sort_52 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_54_ret_of_counting_sort_52
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,216
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_52, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_56_cmp_69, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
