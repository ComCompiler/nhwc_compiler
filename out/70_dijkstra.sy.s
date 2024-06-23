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
              #                          Define Dijkstra_0 [] -> Dijkstra_ret_0 
    .globl Dijkstra
    .type Dijkstra,@function
Dijkstra:
              #                    mem layout:|ra_Dijkstra:8 at 4768|s0_Dijkstra:8 at 4760|i:4 at 4756|j:4 at 4752|temp_0_ptr2globl:4 at 4748|temp_1_cmp:1 at 4747|none:3 at 4744|temp_2_index_ptr:8 at 4736|temp_3_ptr2globl:1024 at 3712|temp_4_array_ptr:8 at 3704|temp_5_array_ele:4 at 3700|none:4 at 3696|temp_6_index_ptr:8 at 3688|temp_7_arithop:4 at 3684|none:4 at 3680|temp_8_index_ptr:8 at 3672|temp_9_ptr2globl:4 at 3668|temp_10_arithop:4 at 3664|temp_11_cmp:1 at 3663|none:3 at 3660|min_num:4 at 3656|min_index:4 at 3652|k:4 at 3648|temp_12_ptr2globl:4 at 3644|temp_13_cmp:1 at 3643|none:3 at 3640|temp_14_ptr2globl:64 at 3576|temp_15_array_ptr:8 at 3568|temp_16_array_ele:4 at 3564|temp_17_cmp:1 at 3563|none:3 at 3560|temp_18_ptr2globl:64 at 3496|temp_19_array_ptr:8 at 3488|temp_20_array_ele:4 at 3484|temp_21_cmp:1 at 3483|temp_22_logic:1 at 3482|none:2 at 3480|temp_23_ptr2globl:64 at 3416|temp_24_array_ptr:8 at 3408|temp_25_array_ele:4 at 3404|temp_26_arithop:4 at 3400|temp_27_index_ptr:8 at 3392|j:4 at 3388|temp_28_ptr2globl:4 at 3384|temp_29_cmp:1 at 3383|none:3 at 3380|temp_30_ptr2globl:1024 at 2356|none:4 at 2352|temp_31_array_ptr:8 at 2344|temp_32_array_ele:4 at 2340|temp_33_cmp:1 at 2339|none:3 at 2336|temp_34_ptr2globl:1024 at 1312|temp_35_array_ptr:8 at 1304|temp_36_array_ele:4 at 1300|temp_37_ptr2globl:64 at 1236|none:4 at 1232|temp_38_array_ptr:8 at 1224|temp_39_array_ele:4 at 1220|temp_40_arithop:4 at 1216|temp_41_ptr2globl:64 at 1152|temp_42_array_ptr:8 at 1144|temp_43_array_ele:4 at 1140|temp_44_cmp:1 at 1139|none:3 at 1136|temp_45_index_ptr:8 at 1128|temp_46_ptr2globl:1024 at 104|temp_47_array_ptr:8 at 96|temp_48_array_ele:4 at 92|temp_49_ptr2globl:64 at 28|none:4 at 24|temp_50_array_ptr:8 at 16|temp_51_array_ele:4 at 12|temp_52_arithop:4 at 8|temp_53_arithop:4 at 4|temp_54_arithop:4 at 0
              #                    occupy a0 with -4776_0
    li      a0, -4776
    li      a0, -4776
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_Dijkstra_0 in mem offset_illegal
              #                    occupy a1 with 4768_0
    li      a1, 4768
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_Dijkstra_0 in mem offset_illegal
              #                    occupy a2 with 4760_0
    li      a2, 4760
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 4776_0
    li      a3, 4776
    li      a3, 4776
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 i_23 
              #                          alloc i32 j_23 
              #                          alloc i32 temp_0_ptr2globl_26 
              #                          alloc i1 temp_1_cmp_26 
              #                          alloc ptr->i32 temp_2_index_ptr_28 
              #                          alloc Array:i32:[Some(16_0), Some(16_0)] temp_3_ptr2globl_28 
              #                          alloc ptr->i32 temp_4_array_ptr_28 
              #                          alloc i32 temp_5_array_ele_28 
              #                          alloc ptr->i32 temp_6_index_ptr_28 
              #                          alloc i32 temp_7_arithop_28 
              #                          alloc ptr->i32 temp_8_index_ptr_23 
              #                          alloc i32 temp_9_ptr2globl_34 
              #                          alloc i32 temp_10_arithop_34 
              #                          alloc i1 temp_11_cmp_34 
              #                          alloc i32 min_num_36 
              #                          alloc i32 min_index_36 
              #                          alloc i32 k_36 
              #                          alloc i32 temp_12_ptr2globl_40 
              #                          alloc i1 temp_13_cmp_40 
              #                          alloc Array:i32:[Some(16_0)] temp_14_ptr2globl_43 
              #                          alloc ptr->i32 temp_15_array_ptr_43 
              #                          alloc i32 temp_16_array_ele_43 
              #                          alloc i1 temp_17_cmp_43 
              #                          alloc Array:i32:[Some(16_0)] temp_18_ptr2globl_43 
              #                          alloc ptr->i32 temp_19_array_ptr_43 
              #                          alloc i32 temp_20_array_ele_43 
              #                          alloc i1 temp_21_cmp_43 
              #                          alloc i1 temp_22_logic_43 
              #                          alloc Array:i32:[Some(16_0)] temp_23_ptr2globl_45 
              #                          alloc ptr->i32 temp_24_array_ptr_45 
              #                          alloc i32 temp_25_array_ele_45 
              #                          alloc i32 temp_26_arithop_42 
              #                          alloc ptr->i32 temp_27_index_ptr_36 
              #                          alloc i32 j_36 
              #                          alloc i32 temp_28_ptr2globl_51 
              #                          alloc i1 temp_29_cmp_51 
              #                          alloc Array:i32:[Some(16_0), Some(16_0)] temp_30_ptr2globl_54 
              #                          alloc ptr->i32 temp_31_array_ptr_54 
              #                          alloc i32 temp_32_array_ele_54 
              #                          alloc i1 temp_33_cmp_54 
              #                          alloc Array:i32:[Some(16_0), Some(16_0)] temp_34_ptr2globl_57 
              #                          alloc ptr->i32 temp_35_array_ptr_57 
              #                          alloc i32 temp_36_array_ele_57 
              #                          alloc Array:i32:[Some(16_0)] temp_37_ptr2globl_57 
              #                          alloc ptr->i32 temp_38_array_ptr_57 
              #                          alloc i32 temp_39_array_ele_57 
              #                          alloc i32 temp_40_arithop_57 
              #                          alloc Array:i32:[Some(16_0)] temp_41_ptr2globl_57 
              #                          alloc ptr->i32 temp_42_array_ptr_57 
              #                          alloc i32 temp_43_array_ele_57 
              #                          alloc i1 temp_44_cmp_57 
              #                          alloc ptr->i32 temp_45_index_ptr_59 
              #                          alloc Array:i32:[Some(16_0), Some(16_0)] temp_46_ptr2globl_59 
              #                          alloc ptr->i32 temp_47_array_ptr_59 
              #                          alloc i32 temp_48_array_ele_59 
              #                          alloc Array:i32:[Some(16_0)] temp_49_ptr2globl_59 
              #                          alloc ptr->i32 temp_50_array_ptr_59 
              #                          alloc i32 temp_51_array_ele_59 
              #                          alloc i32 temp_52_arithop_59 
              #                          alloc i32 temp_53_arithop_53 
              #                          alloc i32 temp_54_arithop_36 
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                          new_var i_23:i32 
              #                          new_var j_23:i32 
              #                          i_23 = i32 1_0 
              #                    occupy a0 with i_23
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } | 
              #                          label while.head_27: 
.while.head_27:
              #                          new_var temp_0_ptr2globl_26:i32 
              #                          temp_0_ptr2globl_26 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_0_ptr2globl_26
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_1_cmp_26:i1 
              #                          temp_1_cmp_26 = icmp i32 Sle i_23, temp_0_ptr2globl_26 
              #                    occupy a0 with i_23
              #                    occupy a2 with temp_0_ptr2globl_26
              #                    occupy a3 with temp_1_cmp_26
    slt     a3,a2,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_1_cmp_26, label while.body_27, label while.exit_27 
              #                    occupy a3 with temp_1_cmp_26
              #                    free a3
              #                    occupy a3 with temp_1_cmp_26
    bnez    a3, .while.body_27
              #                    free a3
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } | 
              #                          label while.body_27: 
.while.body_27:
              #                          new_var temp_2_index_ptr_28:ptr->i32 
              #                          temp_2_index_ptr_28 = getelementptr dis_0:Array:i32:[Some(16_0)] [Some(i_23)] 
              #                    occupy a1 with temp_2_index_ptr_28
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with i_23
              #                    occupy a5 with _anonymous_of_dis_0_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
              #                    occupy a6 with _anonymous_of_dis_0_0
    la      a6, dis
    add     a1,a1,a6
              #                    free a6
              #                    free a1
              #                          new_var temp_3_ptr2globl_28:Array:i32:[Some(16_0), Some(16_0)] 
              #                          temp_3_ptr2globl_28 = load *e_0:ptr->Array:i32:[Some(16_0)] 
              #                    occupy a7 with *e_0
              #                       load label e as ptr to reg
    la      a7, e
              #                    occupy reg a7 with *e_0
              #                    occupy s1 with temp_3_ptr2globl_28
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_4_array_ptr_28:ptr->i32 
              #                          temp_4_array_ptr_28 = getelementptr temp_3_ptr2globl_28:Array:i32:[Some(16_0), Some(16_0)] [Some(1_0), Some(i_23)] 
              #                    occupy s2 with temp_4_array_ptr_28
    li      s2, 0
              #                    occupy s3 with 16_0
    li      s3, 16
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy s4 with _anonymous_of_temp_3_ptr2globl_28_0
    mul     s4,s3,a4
              #                    free s3
              #                    free a4
    add     s2,s2,s4
              #                    free s4
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with i_23
              #                    occupy s5 with _anonymous_of_temp_3_ptr2globl_28_0
    mul     s5,a4,a0
              #                    free a4
              #                    free a0
    add     s2,s2,s5
              #                    free s5
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s6 with 3712_0
    li      s6, 3712
    li      s6, 3712
    add     s2,s6,s2
              #                    free s6
              #                    free s2
              #                          new_var temp_5_array_ele_28:i32 
              #                          temp_5_array_ele_28 = load temp_4_array_ptr_28:ptr->i32 
              #                    occupy s2 with temp_4_array_ptr_28
              #                    occupy s7 with temp_5_array_ele_28
    lw      s7,0(s2)
              #                    free s7
              #                    free s2
              #                          store temp_5_array_ele_28:i32 temp_2_index_ptr_28:ptr->i32 
              #                    occupy a1 with temp_2_index_ptr_28
              #                    occupy s7 with temp_5_array_ele_28
    sw      s7,0(a1)
              #                    free s7
              #                    free a1
              #                          mu dis_0:58 
              #                          dis_0 = chi dis_0:58 
              #                          new_var temp_6_index_ptr_28:ptr->i32 
              #                          temp_6_index_ptr_28 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(i_23)] 
              #                    occupy s8 with temp_6_index_ptr_28
    li      s8, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a0 with i_23
              #                    occupy s9 with _anonymous_of_book_0_0
    mul     s9,a4,a0
              #                    free a4
              #                    free a0
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
              #                    occupy s10 with _anonymous_of_book_0_0
    la      s10, book
    add     s8,s8,s10
              #                    free s10
              #                    free s8
              #                          store 0_0:i32 temp_6_index_ptr_28:ptr->i32 
              #                    occupy s8 with temp_6_index_ptr_28
              #                    occupy s11 with 0_0
    li      s11, 0
    sw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          mu book_0:64 
              #                          book_0 = chi book_0:64 
              #                          new_var temp_7_arithop_28:i32 
              #                          temp_7_arithop_28 = Add i32 i_23, 1_0 
              #                    occupy a0 with i_23
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with temp_7_arithop_28
    add     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                          i_23 = i32 temp_7_arithop_28 
              #                    occupy a5 with temp_7_arithop_28
              #                    occupy a0 with i_23
    mv      a0, a5
              #                    free a5
              #                    free a0
              #                          jump label: while.head_27 
              #                    store to temp_2_index_ptr_28 in mem offset_illegal
              #                    occupy a1 with 4736_0
    li      a1, 4736
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_2_index_ptr_28
              #                    store to temp_5_array_ele_28 in mem offset_illegal
              #                    occupy a1 with 3700_0
    li      a1, 3700
    add     a1,sp,a1
    sw      s7,0(a1)
              #                    free a1
              #                    release s7 with temp_5_array_ele_28
              #                    store to temp_1_cmp_26 in mem offset_illegal
              #                    occupy a3 with 4747_0
    li      a3, 4747
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_1_cmp_26
              #                    store to temp_7_arithop_28 in mem offset_illegal
              #                    occupy a3 with 3684_0
    li      a3, 3684
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_7_arithop_28
              #                    store to temp_6_index_ptr_28 in mem offset_illegal
              #                    occupy a5 with 3688_0
    li      a5, 3688
    add     a5,sp,a5
    sd      s8,0(a5)
              #                    free a5
              #                    release s8 with temp_6_index_ptr_28
              #                    store to temp_3_ptr2globl_28 in mem offset_illegal
              #                    occupy a4 with 3712_0
    li      a4, 3712
    add     a4,sp,a4
    sw      s1,0(a4)
              #                    free a4
              #                    release s1 with temp_3_ptr2globl_28
              #                    store to temp_4_array_ptr_28 in mem offset_illegal
              #                    occupy a6 with 3704_0
    li      a6, 3704
    add     a6,sp,a6
    sd      s2,0(a6)
              #                    free a6
              #                    release s2 with temp_4_array_ptr_28
              #                    store to temp_0_ptr2globl_26 in mem offset_illegal
              #                    occupy a2 with 4748_0
    li      a2, 4748
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_0_ptr2globl_26
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } | 
              #                          label while.exit_27: 
.while.exit_27:
              #                          new_var temp_8_index_ptr_23:ptr->i32 
              #                          temp_8_index_ptr_23 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(1_0)] 
              #                    occupy a1 with temp_8_index_ptr_23
    li      a1, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with _anonymous_of_book_0_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
              #                    occupy a7 with _anonymous_of_book_0_0
    la      a7, book
    add     a1,a1,a7
              #                    free a7
              #                    free a1
              #                          store 1_0:i32 temp_8_index_ptr_23:ptr->i32 
              #                    occupy a1 with temp_8_index_ptr_23
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
    sw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          mu book_0:74 
              #                          book_0 = chi book_0:74 
              #                          i_23 = i32 1_0 
              #                    occupy a0 with i_23
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } | 
              #                          label while.head_35: 
.while.head_35:
              #                          new_var temp_9_ptr2globl_34:i32 
              #                          temp_9_ptr2globl_34 = load *n_0:ptr->i32 
              #                    occupy a4 with *n_0
              #                       load label n as ptr to reg
    la      a4, n
              #                    occupy reg a4 with *n_0
              #                    occupy a5 with temp_9_ptr2globl_34
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_10_arithop_34:i32 
              #                          temp_10_arithop_34 = Sub i32 temp_9_ptr2globl_34, 1_0 
              #                    occupy a5 with temp_9_ptr2globl_34
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_10_arithop_34
              #                    regtab:    a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: *n_0, tracked: false } |     a5:Occupied { symidx: temp_9_ptr2globl_34, tracked: true, occupy_count: 1 } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_10_arithop_34, tracked: true, occupy_count: 1 } | 


    sub     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          new_var temp_11_cmp_34:i1 
              #                          temp_11_cmp_34 = icmp i32 Sle i_23, temp_10_arithop_34 
              #                    occupy a0 with i_23
              #                    occupy a7 with temp_10_arithop_34
              #                    occupy s1 with temp_11_cmp_34
    slt     s1,a7,a0
    xori    s1,s1,1
              #                    free a0
              #                    free a7
              #                    free s1
              #                          br i1 temp_11_cmp_34, label while.body_35, label while.exit_35 
              #                    occupy s1 with temp_11_cmp_34
              #                    free s1
              #                    occupy s1 with temp_11_cmp_34
    bnez    s1, .while.body_35
              #                    free s1
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } | 
              #                          label while.body_35: 
.while.body_35:
              #                          min_num_36 = i32 65535_0 
              #                    occupy a4 with min_num_36
    li      a4, 65535
              #                    free a4
              #                          min_index_36 = i32 0_0 
              #                    occupy a6 with min_index_36
    li      a6, 0
              #                    free a6
              #                          k_36 = i32 1_0 
              #                    occupy s2 with k_36
    li      s2, 1
              #                    free s2
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } | 
              #                          label while.head_41: 
.while.head_41:
              #                          new_var temp_12_ptr2globl_40:i32 
              #                          temp_12_ptr2globl_40 = load *n_0:ptr->i32 
              #                    occupy s3 with *n_0
              #                       load label n as ptr to reg
    la      s3, n
              #                    occupy reg s3 with *n_0
              #                    occupy s4 with temp_12_ptr2globl_40
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          new_var temp_13_cmp_40:i1 
              #                          temp_13_cmp_40 = icmp i32 Sle k_36, temp_12_ptr2globl_40 
              #                    occupy s2 with k_36
              #                    occupy s4 with temp_12_ptr2globl_40
              #                    occupy s5 with temp_13_cmp_40
    slt     s5,s4,s2
    xori    s5,s5,1
              #                    free s2
              #                    free s4
              #                    free s5
              #                          br i1 temp_13_cmp_40, label while.body_41, label while.exit_41 
              #                    occupy s5 with temp_13_cmp_40
              #                    free s5
              #                    occupy s5 with temp_13_cmp_40
    bnez    s5, .while.body_41
              #                    free s5
    j       .while.exit_41
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } | 
              #                          label while.body_41: 
.while.body_41:
              #                          new_var temp_14_ptr2globl_43:Array:i32:[Some(16_0)] 
              #                          temp_14_ptr2globl_43 = load *book_0:ptr->i32 
              #                    occupy s3 with *book_0
              #                       load label book as ptr to reg
    la      s3, book
              #                    occupy reg s3 with *book_0
              #                    occupy s6 with temp_14_ptr2globl_43
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_15_array_ptr_43:ptr->i32 
              #                          temp_15_array_ptr_43 = getelementptr temp_14_ptr2globl_43:Array:i32:[Some(16_0)] [Some(k_36)] 
              #                    occupy s7 with temp_15_array_ptr_43
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy s2 with k_36
              #                    occupy s9 with _anonymous_of_temp_14_ptr2globl_43_0
    mul     s9,s8,s2
              #                    free s8
              #                    free s2
    add     s7,s7,s9
              #                    free s9
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy s10 with 3576_0
    li      s10, 3576
    li      s10, 3576
    add     s7,s10,s7
              #                    free s10
              #                    free s7
              #                          new_var temp_16_array_ele_43:i32 
              #                          temp_16_array_ele_43 = load temp_15_array_ptr_43:ptr->i32 
              #                    occupy s7 with temp_15_array_ptr_43
              #                    occupy s11 with temp_16_array_ele_43
    lw      s11,0(s7)
              #                    free s11
              #                    free s7
              #                          new_var temp_17_cmp_43:i1 
              #                          temp_17_cmp_43 = icmp i32 Eq temp_16_array_ele_43, 0_0 
              #                    occupy s11 with temp_16_array_ele_43
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s8 with temp_17_cmp_43
    xor     s8,s11,s3
    seqz    s8, s8
              #                    free s11
              #                    free s3
              #                    free s8
              #                          new_var temp_18_ptr2globl_43:Array:i32:[Some(16_0)] 
              #                          temp_18_ptr2globl_43 = load *dis_0:ptr->i32 
              #                    occupy s3 with *dis_0
              #                       load label dis as ptr to reg
    la      s3, dis
              #                    occupy reg s3 with *dis_0
              #                    occupy s9 with temp_18_ptr2globl_43
    lw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          new_var temp_19_array_ptr_43:ptr->i32 
              #                          temp_19_array_ptr_43 = getelementptr temp_18_ptr2globl_43:Array:i32:[Some(16_0)] [Some(k_36)] 
              #                    occupy s3 with temp_19_array_ptr_43
    li      s3, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy s2 with k_36
              #                    store to i_23 in mem offset_illegal
              #                    occupy a0 with 4756_0
    li      a0, 4756
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_23
              #                    occupy a0 with _anonymous_of_temp_18_ptr2globl_43_0
    mul     a0,s10,s2
              #                    free s10
              #                    free s2
    add     s3,s3,a0
              #                    free a0
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy a0 with 3496_0
    li      a0, 3496
    li      a0, 3496
    add     s3,a0,s3
              #                    free a0
              #                    free s3
              #                          new_var temp_20_array_ele_43:i32 
              #                          temp_20_array_ele_43 = load temp_19_array_ptr_43:ptr->i32 
              #                    occupy s3 with temp_19_array_ptr_43
              #                    occupy a0 with temp_20_array_ele_43
    lw      a0,0(s3)
              #                    free a0
              #                    free s3
              #                          new_var temp_21_cmp_43:i1 
              #                          temp_21_cmp_43 = icmp i32 Sgt min_num_36, temp_20_array_ele_43 
              #                    occupy a4 with min_num_36
              #                    occupy a0 with temp_20_array_ele_43
              #                    occupy s10 with temp_21_cmp_43
    slt     s10,a0,a4
              #                    free a4
              #                    free a0
              #                    free s10
              #                          new_var temp_22_logic_43:i1 
              #                          temp_22_logic_43 = And i1 temp_21_cmp_43, temp_17_cmp_43 
              #                    occupy s10 with temp_21_cmp_43
              #                    occupy s8 with temp_17_cmp_43
              #                    store to temp_20_array_ele_43 in mem offset_illegal
              #                    occupy a0 with 3484_0
    li      a0, 3484
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_20_array_ele_43
              #                    occupy a0 with temp_22_logic_43
    and     a0,s10,s8
              #                    free s10
              #                    free s8
              #                    free a0
              #                          br i1 temp_22_logic_43, label branch_true_44, label branch_false_44 
              #                    occupy a0 with temp_22_logic_43
              #                    free a0
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy a6 with 3652_0
    li      a6, 3652
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with min_index_36
              #                    occupy a0 with temp_22_logic_43
    bnez    a0, .branch_true_44
              #                    free a0
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: temp_22_logic_43, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_21_cmp_43, tracked: true } |     s11:Freed { symidx: temp_16_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_19_array_ptr_43, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_43, tracked: true } |     s7:Freed { symidx: temp_15_array_ptr_43, tracked: true } |     s8:Freed { symidx: temp_17_cmp_43, tracked: true } |     s9:Freed { symidx: temp_18_ptr2globl_43, tracked: true } | 
              #                          label branch_true_44: 
.branch_true_44:
              #                          new_var temp_23_ptr2globl_45:Array:i32:[Some(16_0)] 
              #                          temp_23_ptr2globl_45 = load *dis_0:ptr->i32 
              #                    occupy a6 with *dis_0
              #                       load label dis as ptr to reg
    la      a6, dis
              #                    occupy reg a6 with *dis_0
              #                    store to temp_22_logic_43 in mem offset_illegal
              #                    occupy a0 with 3482_0
    li      a0, 3482
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_logic_43
              #                    occupy a0 with temp_23_ptr2globl_45
    lw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                          new_var temp_24_array_ptr_45:ptr->i32 
              #                          temp_24_array_ptr_45 = getelementptr temp_23_ptr2globl_45:Array:i32:[Some(16_0)] [Some(k_36)] 
              #                    occupy a6 with temp_24_array_ptr_45
    li      a6, 0
              #                    store to temp_23_ptr2globl_45 in mem offset_illegal
              #                    occupy a0 with 3416_0
    li      a0, 3416
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_23_ptr2globl_45
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s2 with k_36
              #                    store to temp_8_index_ptr_23 in mem offset_illegal
              #                    occupy a1 with 3672_0
    li      a1, 3672
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_8_index_ptr_23
              #                    occupy a1 with _anonymous_of_temp_23_ptr2globl_45_0
    mul     a1,a0,s2
              #                    free a0
              #                    free s2
    add     a6,a6,a1
              #                    free a1
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy a0 with 3416_0
    li      a0, 3416
    li      a0, 3416
    add     a6,a0,a6
              #                    free a0
              #                    free a6
              #                          new_var temp_25_array_ele_45:i32 
              #                          temp_25_array_ele_45 = load temp_24_array_ptr_45:ptr->i32 
              #                    occupy a6 with temp_24_array_ptr_45
              #                    occupy a0 with temp_25_array_ele_45
    lw      a0,0(a6)
              #                    free a0
              #                    free a6
              #                          min_num_36 = i32 temp_25_array_ele_45 
              #                    occupy a0 with temp_25_array_ele_45
              #                    occupy a4 with min_num_36
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          min_index_36 = i32 k_36 
              #                    occupy s2 with k_36
              #                    occupy a1 with min_index_36
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                          jump label: branch_false_44 
              #                    store to temp_24_array_ptr_45 in mem offset_illegal
              #                    occupy a6 with 3408_0
    li      a6, 3408
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_24_array_ptr_45
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy a1 with 3652_0
    li      a1, 3652
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with min_index_36
              #                    store to temp_25_array_ele_45 in mem offset_illegal
              #                    occupy a0 with 3404_0
    li      a0, 3404
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_25_array_ele_45
              #                    occupy a1 with _anonymous_of_temp_8_index_ptr_23_0
              #                    load from temp_8_index_ptr_23 in mem
              #                    occupy a0 with temp_8_index_ptr_23
    li      a0, 3672
    add     a0,sp,a0
    ld      a1,0(a0)
              #                    free a0
              #                    store to temp_8_index_ptr_23 in mem offset_illegal
              #                    occupy a0 with 3672_0
    li      a0, 3672
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_8_index_ptr_23
              #                    occupy a0 with _anonymous_of_temp_22_logic_43_0
              #                    load from temp_22_logic_43 in mem
              #                    occupy a6 with temp_22_logic_43
    li      a6, 3482
    add     a6,sp,a6
    lb      a0,0(a6)
              #                    free a6
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: temp_22_logic_43, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_21_cmp_43, tracked: true } |     s11:Freed { symidx: temp_16_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_19_array_ptr_43, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_43, tracked: true } |     s7:Freed { symidx: temp_15_array_ptr_43, tracked: true } |     s8:Freed { symidx: temp_17_cmp_43, tracked: true } |     s9:Freed { symidx: temp_18_ptr2globl_43, tracked: true } | 
              #                          label branch_false_44: 
.branch_false_44:
              #                    regtab     a0:Freed { symidx: temp_22_logic_43, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_21_cmp_43, tracked: true } |     s11:Freed { symidx: temp_16_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_19_array_ptr_43, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s6:Freed { symidx: temp_14_ptr2globl_43, tracked: true } |     s7:Freed { symidx: temp_15_array_ptr_43, tracked: true } |     s8:Freed { symidx: temp_17_cmp_43, tracked: true } |     s9:Freed { symidx: temp_18_ptr2globl_43, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_26_arithop_42:i32 
              #                          temp_26_arithop_42 = Add i32 k_36, 1_0 
              #                    occupy s2 with k_36
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    store to temp_22_logic_43 in mem offset_illegal
              #                    occupy a0 with 3482_0
    li      a0, 3482
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_22_logic_43
              #                    occupy a0 with temp_26_arithop_42
    add     a0,s2,a6
              #                    free s2
              #                    free a6
              #                    free a0
              #                          k_36 = i32 temp_26_arithop_42 
              #                    occupy a0 with temp_26_arithop_42
              #                    occupy s2 with k_36
    mv      s2, a0
              #                    free a0
              #                    free s2
              #                          jump label: while.head_41 
              #                    store to temp_19_array_ptr_43 in mem offset_illegal
              #                    occupy a6 with 3488_0
    li      a6, 3488
    add     a6,sp,a6
    sd      s3,0(a6)
              #                    free a6
              #                    release s3 with temp_19_array_ptr_43
              #                    store to temp_12_ptr2globl_40 in mem offset_illegal
              #                    occupy s3 with 3644_0
    li      s3, 3644
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_12_ptr2globl_40
              #                    store to temp_18_ptr2globl_43 in mem offset_illegal
              #                    occupy s4 with 3496_0
    li      s4, 3496
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with temp_18_ptr2globl_43
              #                    store to temp_16_array_ele_43 in mem offset_illegal
              #                    occupy s9 with 3564_0
    li      s9, 3564
    add     s9,sp,s9
    sw      s11,0(s9)
              #                    free s9
              #                    release s11 with temp_16_array_ele_43
              #                    store to temp_13_cmp_40 in mem offset_illegal
              #                    occupy s5 with 3643_0
    li      s5, 3643
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_13_cmp_40
              #                    store to temp_15_array_ptr_43 in mem offset_illegal
              #                    occupy s5 with 3568_0
    li      s5, 3568
    add     s5,sp,s5
    sd      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_15_array_ptr_43
              #                    store to temp_14_ptr2globl_43 in mem offset_illegal
              #                    occupy s6 with 3576_0
    li      s6, 3576
    add     s6,sp,s6
    sw      s6,0(s6)
              #                    free s6
              #                    release s6 with temp_14_ptr2globl_43
              #                    store to temp_17_cmp_43 in mem offset_illegal
              #                    occupy s6 with 3563_0
    li      s6, 3563
    add     s6,sp,s6
    sb      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_17_cmp_43
              #                    store to temp_26_arithop_42 in mem offset_illegal
              #                    occupy a0 with 3400_0
    li      a0, 3400
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_26_arithop_42
              #                    store to temp_21_cmp_43 in mem offset_illegal
              #                    occupy a0 with 3483_0
    li      a0, 3483
    add     a0,sp,a0
    sb      s10,0(a0)
              #                    free a0
              #                    release s10 with temp_21_cmp_43
              #                    occupy a6 with _anonymous_of_min_index_36_0
              #                    load from min_index_36 in mem

              #                    occupy s7 with min_index_36
    li      s7, 3652
    add     s7,sp,s7
    lw      a6,0(s7)
              #                    free s7
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy s3 with 3652_0
    li      s3, 3652
    add     s3,sp,s3
    sw      s7,0(s3)
              #                    free s3
              #                    release s7 with min_index_36
              #                    occupy a0 with _anonymous_of_i_23_0
              #                    load from i_23 in mem

              #                    occupy s4 with i_23
    li      s4, 4756
    add     s4,sp,s4
    lw      a0,0(s4)
              #                    free s4
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } | 
              #                          label while.exit_41: 
.while.exit_41:
              #                          new_var temp_27_index_ptr_36:ptr->i32 
              #                          temp_27_index_ptr_36 = getelementptr book_0:Array:i32:[Some(16_0)] [Some(min_index_36)] 
              #                    occupy s3 with temp_27_index_ptr_36
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a6 with min_index_36
              #                    occupy s7 with _anonymous_of_book_0_0
    mul     s7,s6,a6
              #                    free s6
              #                    free a6
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy s8 with _anonymous_of_book_0_0
    la      s8, book
    add     s3,s3,s8
              #                    free s8
              #                    free s3
              #                          store 1_0:i32 temp_27_index_ptr_36:ptr->i32 
              #                    occupy s3 with temp_27_index_ptr_36
              #                    found literal reg Some(s6) already exist with 1_0
              #                    occupy s6 with 1_0
    sw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          mu book_0:157 
              #                          book_0 = chi book_0:157 
              #                          j_36 = i32 1_0 
              #                    occupy s9 with j_36
    li      s9, 1
              #                    free s9
              #                          jump label: while.head_52 
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label while.head_52: 
.while.head_52:
              #                          new_var temp_28_ptr2globl_51:i32 
              #                          temp_28_ptr2globl_51 = load *n_0:ptr->i32 
              #                    occupy s6 with *n_0
              #                       load label n as ptr to reg
    la      s6, n
              #                    occupy reg s6 with *n_0
              #                    occupy s7 with temp_28_ptr2globl_51
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_29_cmp_51:i1 
              #                          temp_29_cmp_51 = icmp i32 Sle j_36, temp_28_ptr2globl_51 
              #                    occupy s9 with j_36
              #                    occupy s7 with temp_28_ptr2globl_51
              #                    occupy s8 with temp_29_cmp_51
    slt     s8,s7,s9
    xori    s8,s8,1
              #                    free s9
              #                    free s7
              #                    free s8
              #                          br i1 temp_29_cmp_51, label while.body_52, label while.exit_52 
              #                    occupy s8 with temp_29_cmp_51
              #                    free s8
              #                    occupy s8 with temp_29_cmp_51
    bnez    s8, .while.body_52
              #                    free s8
    j       .while.exit_52
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label while.body_52: 
.while.body_52:
              #                          new_var temp_30_ptr2globl_54:Array:i32:[Some(16_0), Some(16_0)] 
              #                          temp_30_ptr2globl_54 = load *e_0:ptr->Array:i32:[Some(16_0)] 
              #                    occupy s6 with *e_0
              #                       load label e as ptr to reg
    la      s6, e
              #                    occupy reg s6 with *e_0
              #                    occupy s10 with temp_30_ptr2globl_54
    lw      s10,0(s6)
              #                    free s10
              #                    free s6
              #                          new_var temp_31_array_ptr_54:ptr->i32 
              #                          temp_31_array_ptr_54 = getelementptr temp_30_ptr2globl_54:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
              #                    occupy s11 with temp_31_array_ptr_54
    li      s11, 0
              #                    occupy s6 with 16_0
    li      s6, 16
              #                    occupy a6 with min_index_36
              #                    store to i_23 in mem offset_illegal
              #                    occupy a0 with 4756_0
    li      a0, 4756
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_23
              #                    occupy a0 with _anonymous_of_temp_30_ptr2globl_54_0
    mul     a0,s6,a6
              #                    free s6
              #                    free a6
    add     s11,s11,a0
              #                    free a0
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with j_36
              #                    occupy s6 with _anonymous_of_temp_30_ptr2globl_54_0
    mul     s6,a0,s9
              #                    free a0
              #                    free s9
    add     s11,s11,s6
              #                    free s6
    slli s11,s11,2
    add     s11,s11,sp
              #                    occupy a0 with 2356_0
    li      a0, 2356
    li      a0, 2356
    add     s11,a0,s11
              #                    free a0
              #                    free s11
              #                          new_var temp_32_array_ele_54:i32 
              #                          temp_32_array_ele_54 = load temp_31_array_ptr_54:ptr->i32 
              #                    occupy s11 with temp_31_array_ptr_54
              #                    occupy a0 with temp_32_array_ele_54
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          new_var temp_33_cmp_54:i1 
              #                          temp_33_cmp_54 = icmp i32 Slt temp_32_array_ele_54, 65535_0 
              #                    occupy a0 with temp_32_array_ele_54
              #                    occupy s6 with 65535_0
    li      s6, 65535
              #                    store to temp_8_index_ptr_23 in mem offset_illegal
              #                    occupy a1 with 3672_0
    li      a1, 3672
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_8_index_ptr_23
              #                    occupy a1 with temp_33_cmp_54
    slt     a1,a0,s6
              #                    free a0
              #                    free s6
              #                    free a1
              #                          br i1 temp_33_cmp_54, label branch_true_55, label branch_false_55 
              #                    occupy a1 with temp_33_cmp_54
              #                    free a1
              #                    occupy a1 with temp_33_cmp_54
    bnez    a1, .branch_true_55
              #                    free a1
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_32_array_ele_54, tracked: true } |     a1:Freed { symidx: temp_33_cmp_54, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_31_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label branch_true_55: 
.branch_true_55:
              #                          new_var temp_34_ptr2globl_57:Array:i32:[Some(16_0), Some(16_0)] 
              #                          temp_34_ptr2globl_57 = load *e_0:ptr->Array:i32:[Some(16_0)] 
              #                    occupy s6 with *e_0
              #                       load label e as ptr to reg
    la      s6, e
              #                    occupy reg s6 with *e_0
              #                    store to temp_32_array_ele_54 in mem offset_illegal
              #                    occupy a0 with 2340_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_32_array_ele_54
              #                    occupy a0 with temp_34_ptr2globl_57
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_35_array_ptr_57:ptr->i32 
              #                          temp_35_array_ptr_57 = getelementptr temp_34_ptr2globl_57:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
              #                    occupy s6 with temp_35_array_ptr_57
    li      s6, 0
              #                    store to temp_34_ptr2globl_57 in mem offset legal
    sw      a0,1312(sp)
              #                    release a0 with temp_34_ptr2globl_57
              #                    occupy a0 with 16_0
    li      a0, 16
              #                    occupy a6 with min_index_36
              #                    store to temp_33_cmp_54 in mem offset_illegal
              #                    occupy a1 with 2339_0
    li      a1, 2339
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_33_cmp_54
              #                    occupy a1 with _anonymous_of_temp_34_ptr2globl_57_0
    mul     a1,a0,a6
              #                    free a0
              #                    free a6
    add     s6,s6,a1
              #                    free a1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with j_36
              #                    occupy a1 with _anonymous_of_temp_34_ptr2globl_57_0
    mul     a1,a0,s9
              #                    free a0
              #                    free s9
    add     s6,s6,a1
              #                    free a1
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,1312
              #                    free s6
              #                          new_var temp_36_array_ele_57:i32 
              #                          temp_36_array_ele_57 = load temp_35_array_ptr_57:ptr->i32 
              #                    occupy s6 with temp_35_array_ptr_57
              #                    occupy a0 with temp_36_array_ele_57
    lw      a0,0(s6)
              #                    free a0
              #                    free s6
              #                          new_var temp_37_ptr2globl_57:Array:i32:[Some(16_0)] 
              #                          temp_37_ptr2globl_57 = load *dis_0:ptr->i32 
              #                    occupy a1 with *dis_0
              #                       load label dis as ptr to reg
    la      a1, dis
              #                    occupy reg a1 with *dis_0
              #                    store to temp_36_array_ele_57 in mem offset legal
    sw      a0,1300(sp)
              #                    release a0 with temp_36_array_ele_57
              #                    occupy a0 with temp_37_ptr2globl_57
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_38_array_ptr_57:ptr->i32 
              #                          temp_38_array_ptr_57 = getelementptr temp_37_ptr2globl_57:Array:i32:[Some(16_0)] [Some(min_index_36)] 
              #                    occupy a1 with temp_38_array_ptr_57
    li      a1, 0
              #                    store to temp_37_ptr2globl_57 in mem offset legal
    sw      a0,1236(sp)
              #                    release a0 with temp_37_ptr2globl_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a6 with min_index_36
              #                    store to temp_0_ptr2globl_26 in mem offset_illegal
              #                    occupy a2 with 4748_0
    li      a2, 4748
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_0_ptr2globl_26
              #                    occupy a2 with _anonymous_of_temp_37_ptr2globl_57_0
    mul     a2,a0,a6
              #                    free a0
              #                    free a6
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,1236
              #                    free a1
              #                          new_var temp_39_array_ele_57:i32 
              #                          temp_39_array_ele_57 = load temp_38_array_ptr_57:ptr->i32 
              #                    occupy a1 with temp_38_array_ptr_57
              #                    occupy a0 with temp_39_array_ele_57
    lw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_40_arithop_57:i32 
              #                          temp_40_arithop_57 = Add i32 temp_39_array_ele_57, temp_36_array_ele_57 
              #                    occupy a0 with temp_39_array_ele_57
              #                    occupy a2 with temp_36_array_ele_57
              #                    load from temp_36_array_ele_57 in mem


    lw      a2,1300(sp)
              #                    store to temp_38_array_ptr_57 in mem offset legal
    sd      a1,1224(sp)
              #                    release a1 with temp_38_array_ptr_57
              #                    occupy a1 with temp_40_arithop_57
    add     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                          new_var temp_41_ptr2globl_57:Array:i32:[Some(16_0)] 
              #                          temp_41_ptr2globl_57 = load *dis_0:ptr->i32 
              #                    store to temp_39_array_ele_57 in mem offset legal
    sw      a0,1220(sp)
              #                    release a0 with temp_39_array_ele_57
              #                    occupy a0 with *dis_0
              #                       load label dis as ptr to reg
    la      a0, dis
              #                    occupy reg a0 with *dis_0
              #                    store to temp_40_arithop_57 in mem offset legal
    sw      a1,1216(sp)
              #                    release a1 with temp_40_arithop_57
              #                    occupy a1 with temp_41_ptr2globl_57
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_42_array_ptr_57:ptr->i32 
              #                          temp_42_array_ptr_57 = getelementptr temp_41_ptr2globl_57:Array:i32:[Some(16_0)] [Some(j_36)] 
              #                    occupy a0 with temp_42_array_ptr_57
    li      a0, 0
              #                    store to temp_41_ptr2globl_57 in mem offset legal
    sw      a1,1152(sp)
              #                    release a1 with temp_41_ptr2globl_57
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s9 with j_36
              #                    store to temp_36_array_ele_57 in mem offset legal
    sw      a2,1300(sp)
              #                    release a2 with temp_36_array_ele_57
              #                    occupy a2 with _anonymous_of_temp_41_ptr2globl_57_0
    mul     a2,a1,s9
              #                    free a1
              #                    free s9
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,1152
              #                    free a0
              #                          new_var temp_43_array_ele_57:i32 
              #                          temp_43_array_ele_57 = load temp_42_array_ptr_57:ptr->i32 
              #                    occupy a0 with temp_42_array_ptr_57
              #                    occupy a1 with temp_43_array_ele_57
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_44_cmp_57:i1 
              #                          temp_44_cmp_57 = icmp i32 Sgt temp_43_array_ele_57, temp_40_arithop_57 
              #                    occupy a1 with temp_43_array_ele_57
              #                    occupy a2 with temp_40_arithop_57
              #                    load from temp_40_arithop_57 in mem


    lw      a2,1216(sp)
              #                    store to temp_42_array_ptr_57 in mem offset legal
    sd      a0,1144(sp)
              #                    release a0 with temp_42_array_ptr_57
              #                    occupy a0 with temp_44_cmp_57
    slt     a0,a2,a1
              #                    free a1
              #                    free a2
              #                    free a0
              #                          br i1 temp_44_cmp_57, label branch_true_58, label branch_false_58 
              #                    occupy a0 with temp_44_cmp_57
              #                    free a0
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy a6 with 3652_0
    li      a6, 3652
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with min_index_36
              #                    occupy a0 with temp_44_cmp_57
    bnez    a0, .branch_true_58
              #                    free a0
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_44_cmp_57, tracked: true } |     a1:Freed { symidx: temp_43_array_ele_57, tracked: true } |     a2:Freed { symidx: temp_40_arithop_57, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_31_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_57, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                          new_var temp_45_index_ptr_59:ptr->i32 
              #                          temp_45_index_ptr_59 = getelementptr dis_0:Array:i32:[Some(16_0)] [Some(j_36)] 
              #                    occupy a6 with temp_45_index_ptr_59
    li      a6, 0
              #                    store to temp_44_cmp_57 in mem offset legal
    sb      a0,1139(sp)
              #                    release a0 with temp_44_cmp_57
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s9 with j_36
              #                    store to temp_43_array_ele_57 in mem offset legal
    sw      a1,1140(sp)
              #                    release a1 with temp_43_array_ele_57
              #                    occupy a1 with _anonymous_of_dis_0_0
    mul     a1,a0,s9
              #                    free a0
              #                    free s9
    add     a6,a6,a1
              #                    free a1
    slli a6,a6,2
              #                    occupy a0 with _anonymous_of_dis_0_0
    la      a0, dis
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                          new_var temp_46_ptr2globl_59:Array:i32:[Some(16_0), Some(16_0)] 
              #                          temp_46_ptr2globl_59 = load *e_0:ptr->Array:i32:[Some(16_0)] 
              #                    occupy a0 with *e_0
              #                       load label e as ptr to reg
    la      a0, e
              #                    occupy reg a0 with *e_0
              #                    occupy a1 with temp_46_ptr2globl_59
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_47_array_ptr_59:ptr->i32 
              #                          temp_47_array_ptr_59 = getelementptr temp_46_ptr2globl_59:Array:i32:[Some(16_0), Some(16_0)] [Some(min_index_36), Some(j_36)] 
              #                    occupy a0 with temp_47_array_ptr_59
    li      a0, 0
              #                    store to temp_46_ptr2globl_59 in mem offset legal
    sw      a1,104(sp)
              #                    release a1 with temp_46_ptr2globl_59
              #                    occupy a1 with 16_0
    li      a1, 16
              #                    store to temp_40_arithop_57 in mem offset legal
    sw      a2,1216(sp)
              #                    release a2 with temp_40_arithop_57
              #                    occupy a2 with min_index_36
              #                    load from min_index_36 in mem

              #                    occupy a2 with min_index_36
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_1_cmp_26 in mem offset_illegal
              #                    occupy a3 with 4747_0
    li      a3, 4747
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_1_cmp_26
              #                    occupy a3 with _anonymous_of_temp_46_ptr2globl_59_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s9 with j_36
              #                    occupy a3 with _anonymous_of_temp_46_ptr2globl_59_0
    mul     a3,a1,s9
              #                    free a1
              #                    free s9
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,104
              #                    free a0
              #                          new_var temp_48_array_ele_59:i32 
              #                          temp_48_array_ele_59 = load temp_47_array_ptr_59:ptr->i32 
              #                    occupy a0 with temp_47_array_ptr_59
              #                    occupy a1 with temp_48_array_ele_59
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_49_ptr2globl_59:Array:i32:[Some(16_0)] 
              #                          temp_49_ptr2globl_59 = load *dis_0:ptr->i32 
              #                    occupy a3 with *dis_0
              #                       load label dis as ptr to reg
    la      a3, dis
              #                    occupy reg a3 with *dis_0
              #                    store to temp_47_array_ptr_59 in mem offset legal
    sd      a0,96(sp)
              #                    release a0 with temp_47_array_ptr_59
              #                    occupy a0 with temp_49_ptr2globl_59
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_50_array_ptr_59:ptr->i32 
              #                          temp_50_array_ptr_59 = getelementptr temp_49_ptr2globl_59:Array:i32:[Some(16_0)] [Some(min_index_36)] 
              #                    occupy a3 with temp_50_array_ptr_59
    li      a3, 0
              #                    store to temp_49_ptr2globl_59 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_49_ptr2globl_59
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with min_index_36
              #                    store to temp_48_array_ele_59 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with temp_48_array_ele_59
              #                    occupy a1 with _anonymous_of_temp_49_ptr2globl_59_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,28
              #                    free a3
              #                          new_var temp_51_array_ele_59:i32 
              #                          temp_51_array_ele_59 = load temp_50_array_ptr_59:ptr->i32 
              #                    occupy a3 with temp_50_array_ptr_59
              #                    occupy a0 with temp_51_array_ele_59
    lw      a0,0(a3)
              #                    free a0
              #                    free a3
              #                          new_var temp_52_arithop_59:i32 
              #                          temp_52_arithop_59 = Add i32 temp_51_array_ele_59, temp_48_array_ele_59 
              #                    occupy a0 with temp_51_array_ele_59
              #                    occupy a1 with temp_48_array_ele_59
              #                    load from temp_48_array_ele_59 in mem


    lw      a1,92(sp)
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy a2 with 3652_0
    li      a2, 3652
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with min_index_36
              #                    occupy a2 with temp_52_arithop_59
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          store temp_52_arithop_59:i32 temp_45_index_ptr_59:ptr->i32 
              #                    occupy a6 with temp_45_index_ptr_59
              #                    occupy a2 with temp_52_arithop_59
    sw      a2,0(a6)
              #                    free a2
              #                    free a6
              #                          mu dis_0:248 
              #                          dis_0 = chi dis_0:248 
              #                          jump label: branch_false_58 
              #                    store to temp_45_index_ptr_59 in mem offset legal
    sd      a6,1128(sp)
              #                    release a6 with temp_45_index_ptr_59
              #                    store to temp_48_array_ele_59 in mem offset legal
    sw      a1,92(sp)
              #                    release a1 with temp_48_array_ele_59
              #                    store to temp_50_array_ptr_59 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_50_array_ptr_59
              #                    store to temp_51_array_ele_59 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_51_array_ele_59
              #                    store to temp_52_arithop_59 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_52_arithop_59
              #                    occupy a1 with _anonymous_of_temp_43_array_ele_57_0
              #                    load from temp_43_array_ele_57 in mem


    lw      a1,1140(sp)
              #                    occupy a3 with _anonymous_of_temp_1_cmp_26_0
              #                    load from temp_1_cmp_26 in mem
              #                    occupy a0 with temp_1_cmp_26
    li      a0, 4747
    add     a0,sp,a0
    lb      a3,0(a0)
              #                    free a0
              #                    store to temp_1_cmp_26 in mem offset_illegal
              #                    occupy a0 with 4747_0
    li      a0, 4747
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_1_cmp_26
              #                    occupy a0 with _anonymous_of_temp_44_cmp_57_0
              #                    load from temp_44_cmp_57 in mem
    lb      a0,1139(sp)
              #                    occupy a2 with _anonymous_of_temp_40_arithop_57_0
              #                    load from temp_40_arithop_57 in mem


    lw      a2,1216(sp)
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_44_cmp_57, tracked: true } |     a1:Freed { symidx: temp_43_array_ele_57, tracked: true } |     a2:Freed { symidx: temp_40_arithop_57, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_31_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s6:Freed { symidx: temp_35_array_ptr_57, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                    regtab     a0:Freed { symidx: temp_32_array_ele_54, tracked: true } |     a1:Freed { symidx: temp_33_cmp_54, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_31_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label branch_false_55: 
.branch_false_55:
              #                    regtab     a0:Freed { symidx: temp_32_array_ele_54, tracked: true } |     a1:Freed { symidx: temp_33_cmp_54, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_54, tracked: true } |     s11:Freed { symidx: temp_31_array_ptr_54, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_53_arithop_53:i32 
              #                          temp_53_arithop_53 = Add i32 j_36, 1_0 
              #                    occupy s9 with j_36
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    store to temp_32_array_ele_54 in mem offset_illegal
              #                    occupy a0 with 2340_0
    li      a0, 2340
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_32_array_ele_54
              #                    occupy a0 with temp_53_arithop_53
    add     a0,s9,s6
              #                    free s9
              #                    free s6
              #                    free a0
              #                          j_36 = i32 temp_53_arithop_53 
              #                    occupy a0 with temp_53_arithop_53
              #                    occupy s9 with j_36
    mv      s9, a0
              #                    free a0
              #                    free s9
              #                          jump label: while.head_52 
              #                    store to temp_33_cmp_54 in mem offset_illegal
              #                    occupy a1 with 2339_0
    li      a1, 2339
    add     a1,sp,a1
    sb      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_33_cmp_54
              #                    store to temp_31_array_ptr_54 in mem offset_illegal
              #                    occupy a1 with 2344_0
    li      a1, 2344
    add     a1,sp,a1
    sd      s11,0(a1)
              #                    free a1
              #                    release s11 with temp_31_array_ptr_54
              #                    store to temp_28_ptr2globl_51 in mem offset_illegal
              #                    occupy s7 with 3384_0
    li      s7, 3384
    add     s7,sp,s7
    sw      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_28_ptr2globl_51
              #                    store to temp_29_cmp_51 in mem offset_illegal
              #                    occupy s6 with 3383_0
    li      s6, 3383
    add     s6,sp,s6
    sb      s8,0(s6)
              #                    free s6
              #                    release s8 with temp_29_cmp_51
              #                    store to temp_53_arithop_53 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_53_arithop_53
              #                    store to temp_30_ptr2globl_54 in mem offset_illegal
              #                    occupy a0 with 2356_0
    li      a0, 2356
    add     a0,sp,a0
    sw      s10,0(a0)
              #                    free a0
              #                    release s10 with temp_30_ptr2globl_54
              #                    occupy a1 with _anonymous_of_temp_8_index_ptr_23_0
              #                    load from temp_8_index_ptr_23 in mem
              #                    occupy s7 with temp_8_index_ptr_23
    li      s7, 3672
    add     s7,sp,s7
    ld      a1,0(s7)
              #                    free s7
              #                    store to temp_8_index_ptr_23 in mem offset_illegal
              #                    occupy s7 with 3672_0
    li      s7, 3672
    add     s7,sp,s7
    sd      s7,0(s7)
              #                    free s7
              #                    release s7 with temp_8_index_ptr_23
              #                    occupy a0 with _anonymous_of_i_23_0
              #                    load from i_23 in mem

              #                    occupy s6 with i_23
    li      s6, 4756
    add     s6,sp,s6
    lw      a0,0(s6)
              #                    free s6
    j       .while.head_52
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a4:Freed { symidx: min_num_36, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a6:Freed { symidx: min_index_36, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } |     s2:Freed { symidx: k_36, tracked: true } |     s3:Freed { symidx: temp_27_index_ptr_36, tracked: true } |     s4:Freed { symidx: temp_12_ptr2globl_40, tracked: true } |     s5:Freed { symidx: temp_13_cmp_40, tracked: true } |     s7:Freed { symidx: temp_28_ptr2globl_51, tracked: true } |     s8:Freed { symidx: temp_29_cmp_51, tracked: true } |     s9:Freed { symidx: j_36, tracked: true } | 
              #                          label while.exit_52: 
.while.exit_52:
              #                          new_var temp_54_arithop_36:i32 
              #                          temp_54_arithop_36 = Add i32 i_23, 1_0 
              #                    occupy a0 with i_23
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s10 with temp_54_arithop_36
    add     s10,a0,s6
              #                    free a0
              #                    free s6
              #                    free s10
              #                          i_23 = i32 temp_54_arithop_36 
              #                    occupy s10 with temp_54_arithop_36
              #                    occupy a0 with i_23
    mv      a0, s10
              #                    free s10
              #                    free a0
              #                          jump label: while.head_35 
              #                    store to min_index_36 in mem offset_illegal
              #                    occupy a6 with 3652_0
    li      a6, 3652
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with min_index_36
              #                    store to temp_27_index_ptr_36 in mem offset_illegal
              #                    occupy a6 with 3392_0
    li      a6, 3392
    add     a6,sp,a6
    sd      s3,0(a6)
              #                    free a6
              #                    release s3 with temp_27_index_ptr_36
              #                    store to temp_12_ptr2globl_40 in mem offset_illegal
              #                    occupy s3 with 3644_0
    li      s3, 3644
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_12_ptr2globl_40
              #                    store to j_36 in mem offset_illegal
              #                    occupy s4 with 3388_0
    li      s4, 3388
    add     s4,sp,s4
    sw      s9,0(s4)
              #                    free s4
              #                    release s9 with j_36
              #                    store to temp_13_cmp_40 in mem offset_illegal
              #                    occupy s5 with 3643_0
    li      s5, 3643
    add     s5,sp,s5
    sb      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_13_cmp_40
              #                    store to temp_28_ptr2globl_51 in mem offset_illegal
              #                    occupy s5 with 3384_0
    li      s5, 3384
    add     s5,sp,s5
    sw      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_28_ptr2globl_51
              #                    store to temp_9_ptr2globl_34 in mem offset_illegal
              #                    occupy a5 with 3668_0
    li      a5, 3668
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_9_ptr2globl_34
              #                    store to temp_10_arithop_34 in mem offset_illegal
              #                    occupy a5 with 3664_0
    li      a5, 3664
    add     a5,sp,a5
    sw      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_10_arithop_34
              #                    store to temp_29_cmp_51 in mem offset_illegal
              #                    occupy a7 with 3383_0
    li      a7, 3383
    add     a7,sp,a7
    sb      s8,0(a7)
              #                    free a7
              #                    release s8 with temp_29_cmp_51
              #                    store to temp_54_arithop_36 in mem offset legal
    sw      s10,0(sp)
              #                    release s10 with temp_54_arithop_36
              #                    store to min_num_36 in mem offset_illegal
              #                    occupy a4 with 3656_0
    li      a4, 3656
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with min_num_36
              #                    store to temp_11_cmp_34 in mem offset_illegal
              #                    occupy a4 with 3663_0
    li      a4, 3663
    add     a4,sp,a4
    sb      s1,0(a4)
              #                    free a4
              #                    release s1 with temp_11_cmp_34
              #                    store to k_36 in mem offset_illegal
              #                    occupy s1 with 3648_0
    li      s1, 3648
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with k_36
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: i_23, tracked: true } |     a1:Freed { symidx: temp_8_index_ptr_23, tracked: true } |     a2:Freed { symidx: temp_0_ptr2globl_26, tracked: true } |     a3:Freed { symidx: temp_1_cmp_26, tracked: true } |     a5:Freed { symidx: temp_9_ptr2globl_34, tracked: true } |     a7:Freed { symidx: temp_10_arithop_34, tracked: true } |     s1:Freed { symidx: temp_11_cmp_34, tracked: true } | 
              #                          label while.exit_35: 
.while.exit_35:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 200|s0_main:8 at 192|i:4 at 188|temp_55_ret_of_getint:4 at 184|temp_56_ret_of_getint:4 at 180|temp_57_ptr2globl:4 at 176|temp_58_cmp:1 at 175|none:3 at 172|j:4 at 168|temp_59_ptr2globl:4 at 164|temp_60_cmp:1 at 163|temp_61_cmp:1 at 162|none:2 at 160|temp_62_index_ptr:8 at 152|temp_63_arithop:4 at 148|none:4 at 144|temp_64_index_ptr:8 at 136|temp_65_arithop:4 at 132|temp_66_ptr2globl:4 at 128|temp_67_cmp:1 at 127|none:3 at 124|temp_68_ret_of_getint:4 at 120|u:4 at 116|temp_69_ret_of_getint:4 at 112|v:4 at 108|none:4 at 104|temp_70_index_ptr:8 at 96|temp_71_ret_of_getint:4 at 92|temp_72_arithop:4 at 88|temp_73_ptr2globl:4 at 84|temp_74_cmp:1 at 83|none:3 at 80|temp_75_ptr2globl:64 at 16|temp_76_array_ptr:8 at 8|temp_77_array_ele:4 at 4|temp_78_arithop:4 at 0
    addi    sp,sp,-208
              #                    store to ra_main_0 in mem offset legal
    sd      ra,200(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,192(sp)
    addi    s0,sp,208
              #                          alloc i32 i_64 
              #                          alloc i32 temp_55_ret_of_getint_64 
              #                          alloc i32 temp_56_ret_of_getint_64 
              #                          alloc i32 temp_57_ptr2globl_69 
              #                          alloc i1 temp_58_cmp_69 
              #                          alloc i32 j_71 
              #                          alloc i32 temp_59_ptr2globl_73 
              #                          alloc i1 temp_60_cmp_73 
              #                          alloc i1 temp_61_cmp_76 
              #                          alloc ptr->i32 temp_62_index_ptr_76 
              #                          alloc i32 temp_63_arithop_75 
              #                          alloc ptr->i32 temp_64_index_ptr_76 
              #                          alloc i32 temp_65_arithop_71 
              #                          alloc i32 temp_66_ptr2globl_83 
              #                          alloc i1 temp_67_cmp_83 
              #                          alloc i32 temp_68_ret_of_getint_85 
              #                          alloc i32 u_85 
              #                          alloc i32 temp_69_ret_of_getint_85 
              #                          alloc i32 v_85 
              #                          alloc ptr->i32 temp_70_index_ptr_85 
              #                          alloc i32 temp_71_ret_of_getint_85 
              #                          alloc i32 temp_72_arithop_85 
              #                          alloc i32 temp_73_ptr2globl_91 
              #                          alloc i1 temp_74_cmp_91 
              #                          alloc Array:i32:[Some(16_0)] temp_75_ptr2globl_93 
              #                          alloc ptr->i32 temp_76_array_ptr_93 
              #                          alloc i32 temp_77_array_ele_93 
              #                          alloc i32 temp_78_arithop_93 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var i_64:i32 
              #                          new_var temp_55_ret_of_getint_64:i32 
              #                          temp_55_ret_of_getint_64 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_55_ret_of_getint_64 in mem offset legal
    sw      a0,184(sp)
              #                          store temp_55_ret_of_getint_64:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_55_ret_of_getint_64
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_56_ret_of_getint_64:i32 
              #                          temp_56_ret_of_getint_64 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_55_ret_of_getint_64 in mem offset legal
    sw      a0,184(sp)
              #                    release a0 with temp_55_ret_of_getint_64
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_56_ret_of_getint_64 in mem offset legal
    sw      a0,180(sp)
              #                          store temp_56_ret_of_getint_64:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_56_ret_of_getint_64
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          i_64 = i32 1_0 
              #                    occupy a2 with i_64
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_70 
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } | 
              #                          label while.head_70: 
.while.head_70:
              #                          new_var temp_57_ptr2globl_69:i32 
              #                          temp_57_ptr2globl_69 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_57_ptr2globl_69
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_58_cmp_69:i1 
              #                          temp_58_cmp_69 = icmp i32 Sle i_64, temp_57_ptr2globl_69 
              #                    occupy a2 with i_64
              #                    occupy a3 with temp_57_ptr2globl_69
              #                    occupy a4 with temp_58_cmp_69
    slt     a4,a3,a2
    xori    a4,a4,1
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_58_cmp_69, label while.body_70, label while.exit_70 
              #                    occupy a4 with temp_58_cmp_69
              #                    free a4
              #                    occupy a4 with temp_58_cmp_69
    bnez    a4, .while.body_70
              #                    free a4
    j       .while.exit_70
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } | 
              #                          label while.body_70: 
.while.body_70:
              #                          j_71 = i32 1_0 
              #                    occupy a1 with j_71
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_74 
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } | 
              #                          label while.head_74: 
.while.head_74:
              #                          new_var temp_59_ptr2globl_73:i32 
              #                          temp_59_ptr2globl_73 = load *n_0:ptr->i32 
              #                    occupy a5 with *n_0
              #                       load label n as ptr to reg
    la      a5, n
              #                    occupy reg a5 with *n_0
              #                    occupy a6 with temp_59_ptr2globl_73
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_60_cmp_73:i1 
              #                          temp_60_cmp_73 = icmp i32 Sle j_71, temp_59_ptr2globl_73 
              #                    occupy a1 with j_71
              #                    occupy a6 with temp_59_ptr2globl_73
              #                    occupy a7 with temp_60_cmp_73
    slt     a7,a6,a1
    xori    a7,a7,1
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_60_cmp_73, label while.body_74, label while.exit_74 
              #                    occupy a7 with temp_60_cmp_73
              #                    free a7
              #                    occupy a7 with temp_60_cmp_73
    bnez    a7, .while.body_74
              #                    free a7
    j       .while.exit_74
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } | 
              #                          label while.body_74: 
.while.body_74:
              #                          new_var temp_61_cmp_76:i1 
              #                          temp_61_cmp_76 = icmp i32 Eq i_64, j_71 
              #                    occupy a2 with i_64
              #                    occupy a1 with j_71
              #                    occupy a5 with temp_61_cmp_76
    xor     a5,a2,a1
    seqz    a5, a5
              #                    free a2
              #                    free a1
              #                    free a5
              #                          br i1 temp_61_cmp_76, label branch_true_77, label branch_false_77 
              #                    occupy a5 with temp_61_cmp_76
              #                    free a5
              #                    occupy a5 with temp_61_cmp_76
    bnez    a5, .branch_true_77
              #                    free a5
    j       .branch_false_77
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_61_cmp_76, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } | 
              #                          label branch_true_77: 
.branch_true_77:
              #                          new_var temp_62_index_ptr_76:ptr->i32 
              #                          temp_62_index_ptr_76 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(i_64), Some(j_71)] 
              #                    occupy s1 with temp_62_index_ptr_76
    li      s1, 0
              #                    occupy s2 with 16_0
    li      s2, 16
              #                    occupy a2 with i_64
              #                    occupy s3 with _anonymous_of_e_0_0
    mul     s3,s2,a2
              #                    free s2
              #                    free a2
    add     s1,s1,s3
              #                    free s3
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with j_71
              #                    occupy s5 with _anonymous_of_e_0_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s6 with _anonymous_of_e_0_0
    la      s6, e
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          store 0_0:i32 temp_62_index_ptr_76:ptr->i32 
              #                    occupy s1 with temp_62_index_ptr_76
              #                    occupy s7 with 0_0
    li      s7, 0
    sw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          mu e_0:303 
              #                          e_0 = chi e_0:303 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_61_cmp_76, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } | 
              #                          label branch_false_77: 
.branch_false_77:
              #                          new_var temp_64_index_ptr_76:ptr->i32 
              #                          temp_64_index_ptr_76 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(i_64), Some(j_71)] 
              #                    occupy s1 with temp_64_index_ptr_76
    li      s1, 0
              #                    occupy s2 with 16_0
    li      s2, 16
              #                    occupy a2 with i_64
              #                    occupy s3 with _anonymous_of_e_0_0
    mul     s3,s2,a2
              #                    free s2
              #                    free a2
    add     s1,s1,s3
              #                    free s3
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with j_71
              #                    occupy s5 with _anonymous_of_e_0_0
    mul     s5,s4,a1
              #                    free s4
              #                    free a1
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s6 with _anonymous_of_e_0_0
    la      s6, e
    add     s1,s1,s6
              #                    free s6
              #                    free s1
              #                          store 65535_0:i32 temp_64_index_ptr_76:ptr->i32 
              #                    occupy s1 with temp_64_index_ptr_76
              #                    occupy s7 with 65535_0
    li      s7, 65535
    sw      s7,0(s1)
              #                    free s7
              #                    free s1
              #                          mu e_0:313 
              #                          e_0 = chi e_0:313 
              #                          jump label: L1_0 
              #                    store to temp_64_index_ptr_76 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_64_index_ptr_76
              #                    occupy s1 with _anonymous_of_temp_62_index_ptr_76_0
              #                    load from temp_62_index_ptr_76 in mem
    ld      s1,152(sp)
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_61_cmp_76, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } |     s1:Freed { symidx: temp_62_index_ptr_76, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_61_cmp_76, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } |     s1:Freed { symidx: temp_62_index_ptr_76, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_63_arithop_75:i32 
              #                          temp_63_arithop_75 = Add i32 j_71, 1_0 
              #                    occupy a1 with j_71
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_63_arithop_75
    add     s3,a1,s2
              #                    free a1
              #                    free s2
              #                    free s3
              #                          j_71 = i32 temp_63_arithop_75 
              #                    occupy s3 with temp_63_arithop_75
              #                    occupy a1 with j_71
    mv      a1, s3
              #                    free s3
              #                    free a1
              #                          jump label: while.head_74 
              #                    store to temp_61_cmp_76 in mem offset legal
    sb      a5,162(sp)
              #                    release a5 with temp_61_cmp_76
              #                    store to temp_60_cmp_73 in mem offset legal
    sb      a7,163(sp)
              #                    release a7 with temp_60_cmp_73
              #                    store to temp_59_ptr2globl_73 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with temp_59_ptr2globl_73
              #                    store to temp_63_arithop_75 in mem offset legal
    sw      s3,148(sp)
              #                    release s3 with temp_63_arithop_75
              #                    store to temp_62_index_ptr_76 in mem offset legal
    sd      s1,152(sp)
              #                    release s1 with temp_62_index_ptr_76
    j       .while.head_74
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a1:Freed { symidx: j_71, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a6:Freed { symidx: temp_59_ptr2globl_73, tracked: true } |     a7:Freed { symidx: temp_60_cmp_73, tracked: true } | 
              #                          label while.exit_74: 
.while.exit_74:
              #                          new_var temp_65_arithop_71:i32 
              #                          temp_65_arithop_71 = Add i32 i_64, 1_0 
              #                    occupy a2 with i_64
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with temp_65_arithop_71
    add     s1,a2,a5
              #                    free a2
              #                    free a5
              #                    free s1
              #                          i_64 = i32 temp_65_arithop_71 
              #                    occupy s1 with temp_65_arithop_71
              #                    occupy a2 with i_64
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.head_70 
              #                    store to temp_57_ptr2globl_69 in mem offset legal
    sw      a3,176(sp)
              #                    release a3 with temp_57_ptr2globl_69
              #                    store to temp_60_cmp_73 in mem offset legal
    sb      a7,163(sp)
              #                    release a7 with temp_60_cmp_73
              #                    store to temp_59_ptr2globl_73 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with temp_59_ptr2globl_73
              #                    store to j_71 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with j_71
              #                    store to temp_58_cmp_69 in mem offset legal
    sb      a4,175(sp)
              #                    release a4 with temp_58_cmp_69
              #                    store to temp_65_arithop_71 in mem offset legal
    sw      s1,132(sp)
              #                    release s1 with temp_65_arithop_71
    j       .while.head_70
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } | 
              #                          label while.exit_70: 
.while.exit_70:
              #                          i_64 = i32 1_0 
              #                    occupy a2 with i_64
    li      a2, 1
              #                    free a2
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } | 
              #                          label while.head_84: 
.while.head_84:
              #                          new_var temp_66_ptr2globl_83:i32 
              #                          temp_66_ptr2globl_83 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a5 with temp_66_ptr2globl_83
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_67_cmp_83:i1 
              #                          temp_67_cmp_83 = icmp i32 Sle i_64, temp_66_ptr2globl_83 
              #                    occupy a2 with i_64
              #                    occupy a5 with temp_66_ptr2globl_83
              #                    occupy a6 with temp_67_cmp_83
    slt     a6,a5,a2
    xori    a6,a6,1
              #                    free a2
              #                    free a5
              #                    free a6
              #                          br i1 temp_67_cmp_83, label while.body_84, label while.exit_84 
              #                    occupy a6 with temp_67_cmp_83
              #                    free a6
              #                    occupy a6 with temp_67_cmp_83
    bnez    a6, .while.body_84
              #                    free a6
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_66_ptr2globl_83, tracked: true } |     a6:Freed { symidx: temp_67_cmp_83, tracked: true } | 
              #                          label while.body_84: 
.while.body_84:
              #                          new_var temp_68_ret_of_getint_85:i32 
              #                          temp_68_ret_of_getint_85 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_56_ret_of_getint_64 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_56_ret_of_getint_64
              #                    store to i_64 in mem offset legal
    sw      a2,188(sp)
              #                    release a2 with i_64
              #                    store to temp_57_ptr2globl_69 in mem offset legal
    sw      a3,176(sp)
              #                    release a3 with temp_57_ptr2globl_69
              #                    store to temp_58_cmp_69 in mem offset legal
    sb      a4,175(sp)
              #                    release a4 with temp_58_cmp_69
              #                    store to temp_66_ptr2globl_83 in mem offset legal
    sw      a5,128(sp)
              #                    release a5 with temp_66_ptr2globl_83
              #                    store to temp_67_cmp_83 in mem offset legal
    sb      a6,127(sp)
              #                    release a6 with temp_67_cmp_83
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_68_ret_of_getint_85 in mem offset legal
    sw      a0,120(sp)
              #                          u_85 = i32 temp_68_ret_of_getint_85 
              #                    occupy a0 with temp_68_ret_of_getint_85
              #                    occupy a1 with u_85
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_69_ret_of_getint_85:i32 
              #                          temp_69_ret_of_getint_85 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_68_ret_of_getint_85 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with temp_68_ret_of_getint_85
              #                    store to u_85 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with u_85
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_69_ret_of_getint_85 in mem offset legal
    sw      a0,112(sp)
              #                          v_85 = i32 temp_69_ret_of_getint_85 
              #                    occupy a0 with temp_69_ret_of_getint_85
              #                    occupy a1 with v_85
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_70_index_ptr_85:ptr->i32 
              #                          temp_70_index_ptr_85 = getelementptr e_0:Array:i32:[Some(16_0), Some(16_0)] [Some(u_85), Some(v_85)] 
              #                    occupy a2 with temp_70_index_ptr_85
    li      a2, 0
              #                    occupy a3 with 16_0
    li      a3, 16
              #                    occupy a4 with u_85
              #                    load from u_85 in mem


    lw      a4,116(sp)
              #                    occupy a5 with _anonymous_of_e_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a1 with v_85
              #                    occupy a7 with _anonymous_of_e_0_0
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
              #                    occupy s1 with _anonymous_of_e_0_0
    la      s1, e
    add     a2,a2,s1
              #                    free s1
              #                    free a2
              #                          new_var temp_71_ret_of_getint_85:i32 
              #                          temp_71_ret_of_getint_85 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_69_ret_of_getint_85 in mem offset legal
    sw      a0,112(sp)
              #                    release a0 with temp_69_ret_of_getint_85
              #                    store to v_85 in mem offset legal
    sw      a1,108(sp)
              #                    release a1 with v_85
              #                    store to temp_70_index_ptr_85 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_70_index_ptr_85
              #                    store to u_85 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with u_85
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_71_ret_of_getint_85 in mem offset legal
    sw      a0,92(sp)
              #                          store temp_71_ret_of_getint_85:i32 temp_70_index_ptr_85:ptr->i32 
              #                    occupy a1 with temp_70_index_ptr_85
              #                    load from temp_70_index_ptr_85 in mem
    ld      a1,96(sp)
              #                    occupy a0 with temp_71_ret_of_getint_85
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu e_0:348 
              #                          e_0 = chi e_0:348 
              #                          new_var temp_72_arithop_85:i32 
              #                          temp_72_arithop_85 = Add i32 i_64, 1_0 
              #                    occupy a2 with i_64
              #                    load from i_64 in mem


    lw      a2,188(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_72_arithop_85
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_64 = i32 temp_72_arithop_85 
              #                    occupy a4 with temp_72_arithop_85
              #                    occupy a2 with i_64
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_84 
              #                    store to temp_70_index_ptr_85 in mem offset legal
    sd      a1,96(sp)
              #                    release a1 with temp_70_index_ptr_85
              #                    store to temp_71_ret_of_getint_85 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_71_ret_of_getint_85
              #                    store to temp_72_arithop_85 in mem offset legal
    sw      a4,88(sp)
              #                    release a4 with temp_72_arithop_85
              #                    occupy a3 with _anonymous_of_temp_57_ptr2globl_69_0
              #                    load from temp_57_ptr2globl_69 in mem


    lw      a3,176(sp)
              #                    occupy a0 with _anonymous_of_temp_56_ret_of_getint_64_0
              #                    load from temp_56_ret_of_getint_64 in mem


    lw      a0,180(sp)
              #                    occupy a4 with _anonymous_of_temp_58_cmp_69_0
              #                    load from temp_58_cmp_69 in mem
    lb      a4,175(sp)
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: temp_56_ret_of_getint_64, tracked: true } |     a2:Freed { symidx: i_64, tracked: true } |     a3:Freed { symidx: temp_57_ptr2globl_69, tracked: true } |     a4:Freed { symidx: temp_58_cmp_69, tracked: true } |     a5:Freed { symidx: temp_66_ptr2globl_83, tracked: true } |     a6:Freed { symidx: temp_67_cmp_83, tracked: true } | 
              #                          label while.exit_84: 
.while.exit_84:
              #                           Call void Dijkstra_0() 
              #                    saved register dumping to mem
              #                    store to temp_56_ret_of_getint_64 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_56_ret_of_getint_64
              #                    store to i_64 in mem offset legal
    sw      a2,188(sp)
              #                    release a2 with i_64
              #                    store to temp_57_ptr2globl_69 in mem offset legal
    sw      a3,176(sp)
              #                    release a3 with temp_57_ptr2globl_69
              #                    store to temp_58_cmp_69 in mem offset legal
    sb      a4,175(sp)
              #                    release a4 with temp_58_cmp_69
              #                    store to temp_66_ptr2globl_83 in mem offset legal
    sw      a5,128(sp)
              #                    release a5 with temp_66_ptr2globl_83
              #                    store to temp_67_cmp_83 in mem offset legal
    sb      a6,127(sp)
              #                    release a6 with temp_67_cmp_83
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    Dijkstra
              #                          i_64 = i32 1_0 
              #                    occupy a0 with i_64
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_92 
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: i_64, tracked: true } | 
              #                          label while.head_92: 
.while.head_92:
              #                          new_var temp_73_ptr2globl_91:i32 
              #                          temp_73_ptr2globl_91 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_73_ptr2globl_91
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_74_cmp_91:i1 
              #                          temp_74_cmp_91 = icmp i32 Sle i_64, temp_73_ptr2globl_91 
              #                    occupy a0 with i_64
              #                    occupy a2 with temp_73_ptr2globl_91
              #                    occupy a3 with temp_74_cmp_91
    slt     a3,a2,a0
    xori    a3,a3,1
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_74_cmp_91, label while.body_92, label while.exit_92 
              #                    occupy a3 with temp_74_cmp_91
              #                    free a3
              #                    occupy a3 with temp_74_cmp_91
    bnez    a3, .while.body_92
              #                    free a3
    j       .while.exit_92
              #                    regtab     a0:Freed { symidx: i_64, tracked: true } |     a2:Freed { symidx: temp_73_ptr2globl_91, tracked: true } |     a3:Freed { symidx: temp_74_cmp_91, tracked: true } | 
              #                          label while.body_92: 
.while.body_92:
              #                          new_var temp_75_ptr2globl_93:Array:i32:[Some(16_0)] 
              #                          temp_75_ptr2globl_93 = load *dis_0:ptr->i32 
              #                    occupy a1 with *dis_0
              #                       load label dis as ptr to reg
    la      a1, dis
              #                    occupy reg a1 with *dis_0
              #                    occupy a4 with temp_75_ptr2globl_93
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_76_array_ptr_93:ptr->i32 
              #                          temp_76_array_ptr_93 = getelementptr temp_75_ptr2globl_93:Array:i32:[Some(16_0)] [Some(i_64)] 
              #                    occupy a5 with temp_76_array_ptr_93
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with i_64
              #                    occupy a7 with _anonymous_of_temp_75_ptr2globl_93_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,16
              #                    free a5
              #                          new_var temp_77_array_ele_93:i32 
              #                          temp_77_array_ele_93 = load temp_76_array_ptr_93:ptr->i32 
              #                    occupy a5 with temp_76_array_ptr_93
              #                    occupy s1 with temp_77_array_ele_93
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                           Call void putint_0(temp_77_array_ele_93) 
              #                    saved register dumping to mem
              #                    store to temp_77_array_ele_93 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_77_array_ele_93
              #                    store to i_64 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with i_64
              #                    store to temp_73_ptr2globl_91 in mem offset legal
    sw      a2,84(sp)
              #                    release a2 with temp_73_ptr2globl_91
              #                    store to temp_74_cmp_91 in mem offset legal
    sb      a3,83(sp)
              #                    release a3 with temp_74_cmp_91
              #                    store to temp_75_ptr2globl_93 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_75_ptr2globl_93
              #                    store to temp_76_array_ptr_93 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_76_array_ptr_93
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_77_array_ele_93_0
              #                    load from temp_77_array_ele_93 in mem


    lw      a0,4(sp)
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
              #                          new_var temp_78_arithop_93:i32 
              #                          temp_78_arithop_93 = Add i32 i_64, 1_0 
              #                    occupy a0 with i_64
              #                    load from i_64 in mem


    lw      a0,188(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_78_arithop_93
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_64 = i32 temp_78_arithop_93 
              #                    occupy a2 with temp_78_arithop_93
              #                    occupy a0 with i_64
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_92 
              #                    store to temp_78_arithop_93 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_78_arithop_93
    j       .while.head_92
              #                    regtab     a0:Freed { symidx: i_64, tracked: true } |     a2:Freed { symidx: temp_73_ptr2globl_91, tracked: true } |     a3:Freed { symidx: temp_74_cmp_91, tracked: true } | 
              #                          label while.exit_92: 
.while.exit_92:
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    store to i_64 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with i_64
              #                    store to temp_73_ptr2globl_91 in mem offset legal
    sw      a2,84(sp)
              #                    release a2 with temp_73_ptr2globl_91
              #                    store to temp_74_cmp_91 in mem offset legal
    sb      a3,83(sp)
              #                    release a3 with temp_74_cmp_91
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,200(sp)
              #                    load from s0_main_0 in mem
    ld      s0,192(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,208
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl w
              #                          global i32 w_0 
    .type w,@object
w:
    .word 0
    .align 4
    .globl v2
              #                          global i32 v2_0 
    .type v2,@object
v2:
    .word 0
    .align 4
    .globl v1
              #                          global i32 v1_0 
    .type v1,@object
v1:
    .word 0
    .align 4
    .globl m
              #                          global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl dis
              #                          global Array:i32:[Some(16_0)] dis_0 
    .type dis,@object
dis:
    .zero 64
    .align 4
    .globl book
              #                          global Array:i32:[Some(16_0)] book_0 
    .type book,@object
book:
    .zero 64
    .align 4
    .globl e
              #                          global Array:i32:[Some(16_0), Some(16_0)] e_0 
    .type e,@object
e:
    .zero 1024
    .align 4
    .globl INF
              #                          global i32 INF_0 
    .type INF,@object
INF:
    .word 65535
