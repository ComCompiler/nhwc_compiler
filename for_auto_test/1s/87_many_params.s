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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define sort_0 "arr_16,len_16_0," -> sort_ret_0 
    .globl sort
    .type sort,@function
sort:
              #                    mem layout:|ra_sort:8 at 160|s0_sort:8 at 152|arr:8 at 144|arr:8 at 136|arr:8 at 128|arr:8 at 120|arr:8 at 112|arr:8 at 104|arr _s16 _i6:8 at 96|len _s16 _i0:4 at 92|i _s18 _i1:4 at 88|temp_0_arithop _s22 _i0:4 at 84|j _s22 _i1:4 at 80|temp_2_arithop _s26 _i0:4 at 76|none:4 at 72|temp_3_ptr_of_arr_16:8 at 64|temp_5_ptr_of_arr_16:8 at 56|temp_6_ptr_of_arr_16:8 at 48|temp_8_ptr_of_arr_16:8 at 40|temp_9_arithop _s20 _i0:4 at 36|temp_10_cmp _s20 _i0:1 at 35|temp_11_cmp _s24 _i0:1 at 34|none:2 at 32|temp_12_ptr_of_arr_16:8 at 24|temp_13_ele_of_arr_16 _s27 _i0:4 at 20|none:4 at 16|temp_14_ptr_of_arr_16:8 at 8|temp_15_ele_of_arr_16 _s27 _i0:4 at 4|temp_16_cmp _s27 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-168
              #                    store to ra_sort_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_sort_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     55   alloc i32 [i_18] 
              #                     56   alloc i32 [temp_0_arithop_22] 
              #                     59   alloc i32 [j_22] 
              #                     60   alloc i32 [temp_1_arithop_22] 
              #                     63   alloc i32 [temp_2_arithop_26] 
              #                     66   alloc ptr->i32 [temp_3_ptr_of_arr_16_29] 
              #                     68   alloc i32 [temp_4_ele_of_arr_16_29] 
              #                     72   alloc i32 [temp_29] 
              #                     73   alloc ptr->i32 [temp_5_ptr_of_arr_16_29] 
              #                     75   alloc ptr->i32 [temp_6_ptr_of_arr_16_29] 
              #                     77   alloc i32 [temp_7_ele_of_arr_16_29] 
              #                     82   alloc ptr->i32 [temp_8_ptr_of_arr_16_29] 
              #                     86   alloc i32 [temp_9_arithop_20] 
              #                     88   alloc i1 [temp_10_cmp_20] 
              #                     95   alloc i1 [temp_11_cmp_24] 
              #                     101  alloc ptr->i32 [temp_12_ptr_of_arr_16_27] 
              #                     103  alloc i32 [temp_13_ele_of_arr_16_27] 
              #                     106  alloc ptr->i32 [temp_14_ptr_of_arr_16_27] 
              #                     108  alloc i32 [temp_15_ele_of_arr_16_27] 
              #                     111  alloc i1 [temp_16_cmp_27] 
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     16    
              #                     54   (nop) 
              #                     87   temp_9_arithop_20_0 = Sub i32 len_16_0, 1_0 
              #                    occupy a1 with len_16_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_9_arithop_20_0
              #                    regtab:    a0:Freed { symidx: arr_16, tracked: true } |     a1:Occupied { symidx: len_16_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_9_arithop_20_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     949  i_18_1 = i32 0_0 
              #                    occupy a4 with i_18_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     90   label while.head_21: 
.while.head_21:
              #                     89   temp_10_cmp_20_0 = icmp i32 Slt i_18_1, temp_9_arithop_20_0 
              #                    occupy a4 with i_18_1
              #                    occupy a3 with temp_9_arithop_20_0
              #                    occupy a2 with temp_10_cmp_20_0
    slt     a2,a4,a3
              #                    free a4
              #                    free a3
              #                    free a2
              #                     93   br i1 temp_10_cmp_20_0, label while.body_21, label while.exit_21 
              #                    occupy a2 with temp_10_cmp_20_0
              #                    free a2
              #                    occupy a2 with temp_10_cmp_20_0
    bnez    a2, .while.body_21
              #                    free a2
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     91   label while.body_21: 
.while.body_21:
              #                     57   temp_0_arithop_22_0 = Add i32 i_18_1, 1_0 
              #                    occupy a4 with i_18_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_0_arithop_22_0
    ADDW    a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                     58   (nop) 
              #                     950  j_22_1 = i32 temp_0_arithop_22_0 
              #                    occupy a6 with temp_0_arithop_22_0
              #                    occupy a7 with j_22_1
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     97   label while.head_25: 
.while.head_25:
              #                     96   temp_11_cmp_24_0 = icmp i32 Slt j_22_1, len_16_0 
              #                    occupy a7 with j_22_1
              #                    occupy a1 with len_16_0
              #                    occupy a5 with temp_11_cmp_24_0
    slt     a5,a7,a1
              #                    free a7
              #                    free a1
              #                    free a5
              #                     100  br i1 temp_11_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a5 with temp_11_cmp_24_0
              #                    free a5
              #                    occupy a5 with temp_11_cmp_24_0
    bnez    a5, .while.body_25
              #                    free a5
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |     a5:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     98   label while.body_25: 
.while.body_25:
              #                     102  temp_12_ptr_of_arr_16_27 = GEP arr_16:Array:i32:[None] [Some(j_22_1)] 
              #                    occupy s1 with temp_12_ptr_of_arr_16_27
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_22_1
    mv      s2, a7
              #                    free a7
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with arr_16
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     104  temp_13_ele_of_arr_16_27_0 = load temp_12_ptr_of_arr_16_27:ptr->i32 
              #                    occupy s1 with temp_12_ptr_of_arr_16_27
              #                    occupy s3 with temp_13_ele_of_arr_16_27_0
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                     105  mu arr_16:104 
              #                     107  temp_14_ptr_of_arr_16_27 = GEP arr_16:Array:i32:[None] [Some(i_18_1)] 
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_18_1
    mv      s5, a4
              #                    free a4
              #                    occupy a4 with i_18_1
              #                    store to i_18_1 in mem offset legal
    sw      a4,88(sp)
              #                    release a4 with i_18_1
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with arr_16
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                     109  temp_15_ele_of_arr_16_27_0 = load temp_14_ptr_of_arr_16_27:ptr->i32 
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
              #                    occupy a4 with temp_15_ele_of_arr_16_27_0
    lw      a4,0(s4)
              #                    free a4
              #                    occupy a4 with temp_15_ele_of_arr_16_27_0
              #                    store to temp_15_ele_of_arr_16_27_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_15_ele_of_arr_16_27_0
              #                    free s4
              #                     110  mu arr_16:109 
              #                     112  temp_16_cmp_27_0 = icmp i32 Slt temp_15_ele_of_arr_16_27_0, temp_13_ele_of_arr_16_27_0 
              #                    occupy a4 with temp_15_ele_of_arr_16_27_0
              #                    load from temp_15_ele_of_arr_16_27_0 in mem


    lw      a4,4(sp)
              #                    occupy s3 with temp_13_ele_of_arr_16_27_0
              #                    occupy s6 with temp_16_cmp_27_0
    slt     s6,a4,s3
              #                    free a4
              #                    occupy a4 with temp_15_ele_of_arr_16_27_0
              #                    store to temp_15_ele_of_arr_16_27_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_15_ele_of_arr_16_27_0
              #                    free s3
              #                    occupy s3 with temp_13_ele_of_arr_16_27_0
              #                    store to temp_13_ele_of_arr_16_27_0 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_13_ele_of_arr_16_27_0
              #                    free s6
              #                     115  br i1 temp_16_cmp_27_0, label branch_true_28, label branch_false_28 
              #                    occupy s6 with temp_16_cmp_27_0
              #                    free s6
              #                    occupy s6 with temp_16_cmp_27_0
    bnez    s6, .branch_true_28
              #                    free s6
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a5:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |     s1:Freed { symidx: temp_12_ptr_of_arr_16_27, tracked: true } |     s4:Freed { symidx: temp_14_ptr_of_arr_16_27, tracked: true } |     s6:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     113  label branch_true_28: 
.branch_true_28:
              #                     960  untrack temp_16_cmp_27_0 
              #                    occupy s6 with temp_16_cmp_27_0
              #                    release s6 with temp_16_cmp_27_0
              #                     959  untrack temp_12_ptr_of_arr_16_27 
              #                    occupy s1 with temp_12_ptr_of_arr_16_27
              #                    release s1 with temp_12_ptr_of_arr_16_27
              #                     958  untrack temp_11_cmp_24_0 
              #                    occupy a5 with temp_11_cmp_24_0
              #                    release a5 with temp_11_cmp_24_0
              #                     67   (nop) 
              #                     69   (nop) 
              #                     70   mu arr_16:69 
              #                     71   (nop) 
              #                     74   (nop) 
              #                     76   (nop) 
              #                     78   (nop) 
              #                     79   mu arr_16:78 
              #                     80   store temp_13_ele_of_arr_16_27_0:i32 temp_14_ptr_of_arr_16_27:ptr->i32 
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
              #                    occupy a4 with temp_13_ele_of_arr_16_27_0
              #                    load from temp_13_ele_of_arr_16_27_0 in mem


    lw      a4,20(sp)
    sw      a4,0(s4)
              #                    free a4
              #                    free s4
              #                     963  untrack temp_13_ele_of_arr_16_27_0 
              #                    occupy a4 with temp_13_ele_of_arr_16_27_0
              #                    release a4 with temp_13_ele_of_arr_16_27_0
              #                     961  untrack temp_14_ptr_of_arr_16_27 
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
              #                    release s4 with temp_14_ptr_of_arr_16_27
              #                     81   arr_16 = chi arr_16:80 
              #                     83   temp_8_ptr_of_arr_16_29 = GEP arr_16:ptr->i32 [Some(j_22_1)] 
              #                    occupy a4 with temp_8_ptr_of_arr_16_29
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with j_22_1
    mv      a5, a7
              #                    free a7
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a0 with arr_16
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     84   store temp_15_ele_of_arr_16_27_0:i32 temp_8_ptr_of_arr_16_29:ptr->i32 
              #                    occupy a4 with temp_8_ptr_of_arr_16_29
              #                    occupy s1 with temp_15_ele_of_arr_16_27_0
              #                    load from temp_15_ele_of_arr_16_27_0 in mem


    lw      s1,4(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                     964  untrack temp_15_ele_of_arr_16_27_0 
              #                    occupy s1 with temp_15_ele_of_arr_16_27_0
              #                    release s1 with temp_15_ele_of_arr_16_27_0
              #                     962  untrack temp_8_ptr_of_arr_16_29 
              #                    occupy a4 with temp_8_ptr_of_arr_16_29
              #                    release a4 with temp_8_ptr_of_arr_16_29
              #                     85   arr_16 = chi arr_16:84 
              #                          jump label: branch_false_28 
              #                    occupy s6 with temp_16_cmp_27_0
              #                    load from temp_16_cmp_27_0 in mem


    lb      s6,3(sp)
              #                    occupy s1 with temp_12_ptr_of_arr_16_27
              #                    load from temp_12_ptr_of_arr_16_27 in mem
    ld      s1,24(sp)
              #                    occupy a5 with temp_11_cmp_24_0
              #                    load from temp_11_cmp_24_0 in mem


    lb      a5,34(sp)
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
              #                    load from temp_14_ptr_of_arr_16_27 in mem
    ld      s4,8(sp)
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a5:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |     s1:Freed { symidx: temp_12_ptr_of_arr_16_27, tracked: true } |     s4:Freed { symidx: temp_14_ptr_of_arr_16_27, tracked: true } |     s6:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     114  label branch_false_28: 
.branch_false_28:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a5:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |     s1:Freed { symidx: temp_12_ptr_of_arr_16_27, tracked: true } |     s4:Freed { symidx: temp_14_ptr_of_arr_16_27, tracked: true } |     s6:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     64   temp_2_arithop_26_0 = Add i32 j_22_1, 1_0 
              #                    occupy a7 with j_22_1
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s2 with temp_2_arithop_26_0
    ADDW    s2,a7,a4
              #                    free a7
              #                    occupy a7 with j_22_1
              #                    store to j_22_1 in mem offset legal
    sw      a7,80(sp)
              #                    release a7 with j_22_1
              #                    free a4
              #                    free s2
              #                     65   (nop) 
              #                     951  j_22_1 = i32 temp_2_arithop_26_0 
              #                    occupy s2 with temp_2_arithop_26_0
              #                    occupy a4 with j_22_1
    mv      a4, s2
              #                    free s2
              #                    occupy s2 with temp_2_arithop_26_0
              #                    store to temp_2_arithop_26_0 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_2_arithop_26_0
              #                    free a4
              #                          jump label: while.head_25 
              #                    occupy a4 with j_22_1
              #                    store to j_22_1 in mem offset legal
    sw      a4,80(sp)
              #                    release a4 with j_22_1
              #                    occupy a4 with i_18_1
              #                    load from i_18_1 in mem


    lw      a4,88(sp)
              #                    occupy a7 with j_22_1
              #                    load from j_22_1 in mem


    lw      a7,80(sp)
              #                    occupy s6 with temp_16_cmp_27_0
              #                    store to temp_16_cmp_27_0 in mem offset legal
    sb      s6,3(sp)
              #                    release s6 with temp_16_cmp_27_0
              #                    occupy s1 with temp_12_ptr_of_arr_16_27
              #                    store to temp_12_ptr_of_arr_16_27 in mem offset legal
    sd      s1,24(sp)
              #                    release s1 with temp_12_ptr_of_arr_16_27
              #                    occupy a5 with temp_11_cmp_24_0
              #                    store to temp_11_cmp_24_0 in mem offset legal
    sb      a5,34(sp)
              #                    release a5 with temp_11_cmp_24_0
              #                    occupy s4 with temp_14_ptr_of_arr_16_27
              #                    store to temp_14_ptr_of_arr_16_27 in mem offset legal
    sd      s4,8(sp)
              #                    release s4 with temp_14_ptr_of_arr_16_27
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |     a5:Freed { symidx: temp_11_cmp_24_0, tracked: true } |     a6:Freed { symidx: temp_0_arithop_22_0, tracked: true } |     a7:Freed { symidx: j_22_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     99   label while.exit_25: 
.while.exit_25:
              #                     61   (nop) 
              #                     62   (nop) 
              #                     952  i_18_1 = i32 temp_0_arithop_22_0 
              #                    occupy a6 with temp_0_arithop_22_0
              #                    occupy a4 with i_18_1
    mv      a4, a6
              #                    free a6
              #                    free a4
              #                          jump label: while.head_21 
              #                    occupy a6 with temp_0_arithop_22_0
              #                    store to temp_0_arithop_22_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_0_arithop_22_0
              #                    occupy a7 with j_22_1
              #                    store to j_22_1 in mem offset legal
    sw      a7,80(sp)
              #                    release a7 with j_22_1
              #                    occupy a2 with temp_10_cmp_20_0
              #                    store to temp_10_cmp_20_0 in mem offset legal
    sb      a2,35(sp)
              #                    release a2 with temp_10_cmp_20_0
              #                    occupy a5 with temp_11_cmp_24_0
              #                    store to temp_11_cmp_24_0 in mem offset legal
    sb      a5,34(sp)
              #                    release a5 with temp_11_cmp_24_0
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: arr_16, tracked: true } |     a1:Freed { symidx: len_16_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_20_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_20_0, tracked: true } |     a4:Freed { symidx: i_18_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     92   label while.exit_21: 
.while.exit_21:
              #                     957  untrack temp_9_arithop_20_0 
              #                    occupy a3 with temp_9_arithop_20_0
              #                    release a3 with temp_9_arithop_20_0
              #                     956  untrack i_18_1 
              #                    occupy a4 with i_18_1
              #                    release a4 with i_18_1
              #                     955  untrack len_16_0 
              #                    occupy a1 with len_16_0
              #                    release a1 with len_16_0
              #                     933  mu arr_16:94 
              #                     965  untrack arr_16 
              #                    occupy a0 with arr_16
              #                    release a0 with arr_16
              #                     94   ret 
              #                    load from ra_sort_0 in mem
    ld      ra,160(sp)
              #                    load from s0_sort_0 in mem
    ld      s0,152(sp)
    addi    sp,sp,168
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define param32_rec_0 "a1_35_0,a2_35_0,a3_35_0,a4_35_0,a5_35_0,a6_35_0,a7_35_0,a8_35_0,a9_35_0,a10_35_0,a11_35_0,a12_35_0,a13_35_0,a14_35_0,a15_35_0,a16_35_0,a17_35_0,a18_35_0,a19_35_0,a20_35_0,a21_35_0,a22_35_0,a23_35_0,a24_35_0,a25_35_0,a26_35_0,a27_35_0,a28_35_0,a29_35_0,a30_35_0,a31_35_0,a32_35_0," -> param32_rec_ret_0 
    .globl param32_rec
    .type param32_rec,@function
param32_rec:
              #                    mem layout:|a9 _s35 _i0:4 at 164|a10 _s35 _i0:4 at 160|a11 _s35 _i0:4 at 156|a12 _s35 _i0:4 at 152|a13 _s35 _i0:4 at 148|a14 _s35 _i0:4 at 144|a15 _s35 _i0:4 at 140|a16 _s35 _i0:4 at 136|a17 _s35 _i0:4 at 132|a18 _s35 _i0:4 at 128|a19 _s35 _i0:4 at 124|a20 _s35 _i0:4 at 120|a21 _s35 _i0:4 at 116|a22 _s35 _i0:4 at 112|a23 _s35 _i0:4 at 108|a24 _s35 _i0:4 at 104|a25 _s35 _i0:4 at 100|a26 _s35 _i0:4 at 96|a27 _s35 _i0:4 at 92|a28 _s35 _i0:4 at 88|a29 _s35 _i0:4 at 84|a30 _s35 _i0:4 at 80|a31 _s35 _i0:4 at 76|a32 _s35 _i0:4 at 72|ra_param32_rec:8 at 64|s0_param32_rec:8 at 56|a1 _s35 _i0:4 at 52|a2 _s35 _i0:4 at 48|a3 _s35 _i0:4 at 44|a4 _s35 _i0:4 at 40|a5 _s35 _i0:4 at 36|a6 _s35 _i0:4 at 32|a7 _s35 _i0:4 at 28|a8 _s35 _i0:4 at 24|temp_17_arithop _s42 _i0:4 at 20|temp_18_arithop _s42 _i0:4 at 16|temp_19_arithop _s42 _i0:4 at 12|temp_20_ret_of_param32_rec _s42 _i0:4 at 8|temp_21_cmp _s38 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-168
              #                    store to ra_param32_rec_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_param32_rec_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,168
              #                     117  alloc i32 [temp_17_arithop_42] 
              #                     119  alloc i32 [temp_18_arithop_42] 
              #                     121  alloc i32 [temp_19_arithop_42] 
              #                     123  alloc i32 [temp_20_ret_of_param32_rec_42] 
              #                     128  alloc i1 [temp_21_cmp_38] 
              #                    regtab     a0:Freed { symidx: a1_35_0, tracked: true } |     a1:Freed { symidx: a2_35_0, tracked: true } |     a2:Freed { symidx: a3_35_0, tracked: true } |     a3:Freed { symidx: a4_35_0, tracked: true } |     a4:Freed { symidx: a5_35_0, tracked: true } |     a5:Freed { symidx: a6_35_0, tracked: true } |     a6:Freed { symidx: a7_35_0, tracked: true } |     a7:Freed { symidx: a8_35_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     129  temp_21_cmp_38_0 = icmp i32 Eq a1_35_0, 0_0 
              #                    occupy a0 with a1_35_0
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_21_cmp_38_0
    xor     s2,a0,s1
    seqz    s2, s2
              #                    free a0
              #                    free s1
              #                    free s2
              #                     132  br i1 temp_21_cmp_38_0, label branch_true_39, label branch_false_39 
              #                    occupy s2 with temp_21_cmp_38_0
              #                    free s2
              #                    occupy s2 with temp_21_cmp_38_0
    bnez    s2, .branch_true_39
              #                    free s2
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a1_35_0, tracked: true } |     a1:Freed { symidx: a2_35_0, tracked: true } |     a2:Freed { symidx: a3_35_0, tracked: true } |     a3:Freed { symidx: a4_35_0, tracked: true } |     a4:Freed { symidx: a5_35_0, tracked: true } |     a5:Freed { symidx: a6_35_0, tracked: true } |     a6:Freed { symidx: a7_35_0, tracked: true } |     a7:Freed { symidx: a8_35_0, tracked: true } |     s2:Freed { symidx: temp_21_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     130  label branch_true_39: 
.branch_true_39:
              #                     1001 untrack temp_21_cmp_38_0 
              #                    occupy s2 with temp_21_cmp_38_0
              #                    release s2 with temp_21_cmp_38_0
              #                     1000 untrack a19_35_0 
              #                     999  untrack a17_35_0 
              #                     998  untrack a15_35_0 
              #                     997  untrack a6_35_0 
              #                    occupy a5 with a6_35_0
              #                    release a5 with a6_35_0
              #                     996  untrack a18_35_0 
              #                     995  untrack a26_35_0 
              #                     994  untrack a10_35_0 
              #                     993  untrack a9_35_0 
              #                     992  untrack temp_19_arithop_42_0 
              #                     991  untrack a29_35_0 
              #                     990  untrack a12_35_0 
              #                     989  untrack a23_35_0 
              #                     988  untrack a30_35_0 
              #                     987  untrack a25_35_0 
              #                     986  untrack a16_35_0 
              #                     985  untrack temp_18_arithop_42_0 
              #                     984  untrack a3_35_0 
              #                    occupy a2 with a3_35_0
              #                    release a2 with a3_35_0
              #                     983  untrack a32_35_0 
              #                     982  untrack a7_35_0 
              #                    occupy a6 with a7_35_0
              #                    release a6 with a7_35_0
              #                     981  untrack a21_35_0 
              #                     980  untrack temp_20_ret_of_param32_rec_42_0 
              #                     979  untrack a31_35_0 
              #                     978  untrack a14_35_0 
              #                     977  untrack a4_35_0 
              #                    occupy a3 with a4_35_0
              #                    release a3 with a4_35_0
              #                     976  untrack a24_35_0 
              #                     975  untrack a20_35_0 
              #                     974  untrack temp_17_arithop_42_0 
              #                     973  untrack a27_35_0 
              #                     972  untrack a8_35_0 
              #                    occupy a7 with a8_35_0
              #                    release a7 with a8_35_0
              #                     971  untrack a13_35_0 
              #                     970  untrack a28_35_0 
              #                     969  untrack a1_35_0 
              #                    occupy a0 with a1_35_0
              #                    release a0 with a1_35_0
              #                     968  untrack a5_35_0 
              #                    occupy a4 with a5_35_0
              #                    release a4 with a5_35_0
              #                     967  untrack a11_35_0 
              #                     966  untrack a22_35_0 
              #                     127  ret a2_35_0 
              #                    load from ra_param32_rec_0 in mem
    ld      ra,64(sp)
              #                    load from s0_param32_rec_0 in mem
    ld      s0,56(sp)
              #                    occupy a1 with a2_35_0
              #                    store to a2_35_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with a2_35_0
              #                    occupy a0 with a2_35_0
              #                    load from a2_35_0 in mem


    lw      a0,48(sp)
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a1_35_0, tracked: true } |     a1:Freed { symidx: a2_35_0, tracked: true } |     a2:Freed { symidx: a3_35_0, tracked: true } |     a3:Freed { symidx: a4_35_0, tracked: true } |     a4:Freed { symidx: a5_35_0, tracked: true } |     a5:Freed { symidx: a6_35_0, tracked: true } |     a6:Freed { symidx: a7_35_0, tracked: true } |     a7:Freed { symidx: a8_35_0, tracked: true } |     s2:Freed { symidx: temp_21_cmp_38_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     131  label branch_false_39: 
.branch_false_39:
              #                     1002 untrack temp_21_cmp_38_0 
              #                    occupy s2 with temp_21_cmp_38_0
              #                    release s2 with temp_21_cmp_38_0
              #                     118  temp_17_arithop_42_0 = Sub i32 a1_35_0, 1_0 
              #                    occupy a0 with a1_35_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_17_arithop_42_0
              #                    regtab:    a0:Occupied { symidx: a1_35_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: a2_35_0, tracked: true } |     a2:Freed { symidx: a3_35_0, tracked: true } |     a3:Freed { symidx: a4_35_0, tracked: true } |     a4:Freed { symidx: a5_35_0, tracked: true } |     a5:Freed { symidx: a6_35_0, tracked: true } |     a6:Freed { symidx: a7_35_0, tracked: true } |     a7:Freed { symidx: a8_35_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Occupied { symidx: temp_17_arithop_42_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    s2,a0,s1
              #                    free a0
              #                    free s1
              #                    free s2
              #                     1014 untrack a1_35_0 
              #                    occupy a0 with a1_35_0
              #                    release a0 with a1_35_0
              #                     120  temp_18_arithop_42_0 = Add i32 a2_35_0, a3_35_0 
              #                    occupy a1 with a2_35_0
              #                    occupy a2 with a3_35_0
              #                    occupy a0 with temp_18_arithop_42_0
    ADDW    a0,a1,a2
              #                    free a1
              #                    free a2
              #                    free a0
              #                     1025 untrack a3_35_0 
              #                    occupy a2 with a3_35_0
              #                    release a2 with a3_35_0
              #                     1008 untrack a2_35_0 
              #                    occupy a1 with a2_35_0
              #                    release a1 with a2_35_0
              #                     122  temp_19_arithop_42_0 = Mod i32 temp_18_arithop_42_0, 998244353_0 
              #                    occupy a0 with temp_18_arithop_42_0
              #                    occupy a1 with 998244353_0
    li      a1, 998244353
              #                    occupy a2 with temp_19_arithop_42_0
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     1036 untrack temp_18_arithop_42_0 
              #                    occupy a0 with temp_18_arithop_42_0
              #                    release a0 with temp_18_arithop_42_0
              #                     124  temp_20_ret_of_param32_rec_42_0 =  Call i32 param32_rec_0(temp_17_arithop_42_0, temp_19_arithop_42_0, a4_35_0, a5_35_0, a6_35_0, a7_35_0, a8_35_0, a9_35_0, a10_35_0, a11_35_0, a12_35_0, a13_35_0, a14_35_0, a15_35_0, a16_35_0, a17_35_0, a18_35_0, a19_35_0, a20_35_0, a21_35_0, a22_35_0, a23_35_0, a24_35_0, a25_35_0, a26_35_0, a27_35_0, a28_35_0, a29_35_0, a30_35_0, a31_35_0, a32_35_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with a10_35_0
              #                    load from a10_35_0 in mem


    lw      a0,160(sp)
              #                    store to a9_35_0 in mem offset legal
    sw      a0,-4(sp)
              #                    free a0
              #                    occupy s3 with a11_35_0
              #                    load from a11_35_0 in mem


    lw      s3,156(sp)
              #                    store to a10_35_0 in mem offset legal
    sw      s3,-8(sp)
              #                    free s3
              #                    occupy s4 with a12_35_0
              #                    load from a12_35_0 in mem


    lw      s4,152(sp)
              #                    store to a11_35_0 in mem offset legal
    sw      s4,-12(sp)
              #                    free s4
              #                    occupy s5 with a13_35_0
              #                    load from a13_35_0 in mem


    lw      s5,148(sp)
              #                    store to a12_35_0 in mem offset legal
    sw      s5,-16(sp)
              #                    free s5
              #                    occupy s6 with a14_35_0
              #                    load from a14_35_0 in mem


    lw      s6,144(sp)
              #                    store to a13_35_0 in mem offset legal
    sw      s6,-20(sp)
              #                    free s6
              #                    occupy s6 with a14_35_0
              #                    store to a14_35_0 in mem offset legal
    sw      s6,144(sp)
              #                    release s6 with a14_35_0
              #                    occupy s6 with a15_35_0
              #                    load from a15_35_0 in mem


    lw      s6,140(sp)
              #                    store to a14_35_0 in mem offset legal
    sw      s6,-24(sp)
              #                    free s6
              #                    occupy s6 with a15_35_0
              #                    store to a15_35_0 in mem offset legal
    sw      s6,140(sp)
              #                    release s6 with a15_35_0
              #                    occupy s6 with a16_35_0
              #                    load from a16_35_0 in mem


    lw      s6,136(sp)
              #                    store to a15_35_0 in mem offset legal
    sw      s6,-28(sp)
              #                    free s6
              #                    occupy s6 with a16_35_0
              #                    store to a16_35_0 in mem offset legal
    sw      s6,136(sp)
              #                    release s6 with a16_35_0
              #                    occupy s6 with a17_35_0
              #                    load from a17_35_0 in mem


    lw      s6,132(sp)
              #                    store to a16_35_0 in mem offset legal
    sw      s6,-32(sp)
              #                    free s6
              #                    occupy s6 with a17_35_0
              #                    store to a17_35_0 in mem offset legal
    sw      s6,132(sp)
              #                    release s6 with a17_35_0
              #                    occupy s6 with a18_35_0
              #                    load from a18_35_0 in mem


    lw      s6,128(sp)
              #                    store to a17_35_0 in mem offset legal
    sw      s6,-36(sp)
              #                    free s6
              #                    occupy s6 with a18_35_0
              #                    store to a18_35_0 in mem offset legal
    sw      s6,128(sp)
              #                    release s6 with a18_35_0
              #                    occupy s6 with a19_35_0
              #                    load from a19_35_0 in mem


    lw      s6,124(sp)
              #                    store to a18_35_0 in mem offset legal
    sw      s6,-40(sp)
              #                    free s6
              #                    occupy s6 with a19_35_0
              #                    store to a19_35_0 in mem offset legal
    sw      s6,124(sp)
              #                    release s6 with a19_35_0
              #                    occupy s6 with a20_35_0
              #                    load from a20_35_0 in mem


    lw      s6,120(sp)
              #                    store to a19_35_0 in mem offset legal
    sw      s6,-44(sp)
              #                    free s6
              #                    occupy s6 with a20_35_0
              #                    store to a20_35_0 in mem offset legal
    sw      s6,120(sp)
              #                    release s6 with a20_35_0
              #                    occupy s6 with a21_35_0
              #                    load from a21_35_0 in mem


    lw      s6,116(sp)
              #                    store to a20_35_0 in mem offset legal
    sw      s6,-48(sp)
              #                    free s6
              #                    occupy s6 with a21_35_0
              #                    store to a21_35_0 in mem offset legal
    sw      s6,116(sp)
              #                    release s6 with a21_35_0
              #                    occupy s6 with a22_35_0
              #                    load from a22_35_0 in mem


    lw      s6,112(sp)
              #                    store to a21_35_0 in mem offset legal
    sw      s6,-52(sp)
              #                    free s6
              #                    occupy s6 with a22_35_0
              #                    store to a22_35_0 in mem offset legal
    sw      s6,112(sp)
              #                    release s6 with a22_35_0
              #                    occupy s6 with a23_35_0
              #                    load from a23_35_0 in mem


    lw      s6,108(sp)
              #                    store to a22_35_0 in mem offset legal
    sw      s6,-56(sp)
              #                    free s6
              #                    occupy s6 with a23_35_0
              #                    store to a23_35_0 in mem offset legal
    sw      s6,108(sp)
              #                    release s6 with a23_35_0
              #                    occupy s6 with a24_35_0
              #                    load from a24_35_0 in mem


    lw      s6,104(sp)
              #                    store to a23_35_0 in mem offset legal
    sw      s6,-60(sp)
              #                    free s6
              #                    occupy s6 with a24_35_0
              #                    store to a24_35_0 in mem offset legal
    sw      s6,104(sp)
              #                    release s6 with a24_35_0
              #                    occupy s6 with a25_35_0
              #                    load from a25_35_0 in mem


    lw      s6,100(sp)
              #                    store to a24_35_0 in mem offset legal
    sw      s6,-64(sp)
              #                    free s6
              #                    occupy s6 with a25_35_0
              #                    store to a25_35_0 in mem offset legal
    sw      s6,100(sp)
              #                    release s6 with a25_35_0
              #                    occupy s6 with a26_35_0
              #                    load from a26_35_0 in mem


    lw      s6,96(sp)
              #                    store to a25_35_0 in mem offset legal
    sw      s6,-68(sp)
              #                    free s6
              #                    occupy s6 with a26_35_0
              #                    store to a26_35_0 in mem offset legal
    sw      s6,96(sp)
              #                    release s6 with a26_35_0
              #                    occupy s6 with a27_35_0
              #                    load from a27_35_0 in mem


    lw      s6,92(sp)
              #                    store to a26_35_0 in mem offset legal
    sw      s6,-72(sp)
              #                    free s6
              #                    occupy s6 with a27_35_0
              #                    store to a27_35_0 in mem offset legal
    sw      s6,92(sp)
              #                    release s6 with a27_35_0
              #                    occupy s6 with a28_35_0
              #                    load from a28_35_0 in mem


    lw      s6,88(sp)
              #                    store to a27_35_0 in mem offset legal
    sw      s6,-76(sp)
              #                    free s6
              #                    occupy s6 with a28_35_0
              #                    store to a28_35_0 in mem offset legal
    sw      s6,88(sp)
              #                    release s6 with a28_35_0
              #                    occupy s6 with a29_35_0
              #                    load from a29_35_0 in mem


    lw      s6,84(sp)
              #                    store to a28_35_0 in mem offset legal
    sw      s6,-80(sp)
              #                    free s6
              #                    occupy s6 with a29_35_0
              #                    store to a29_35_0 in mem offset legal
    sw      s6,84(sp)
              #                    release s6 with a29_35_0
              #                    occupy s6 with a30_35_0
              #                    load from a30_35_0 in mem


    lw      s6,80(sp)
              #                    store to a29_35_0 in mem offset legal
    sw      s6,-84(sp)
              #                    free s6
              #                    occupy s6 with a30_35_0
              #                    store to a30_35_0 in mem offset legal
    sw      s6,80(sp)
              #                    release s6 with a30_35_0
              #                    occupy s6 with a31_35_0
              #                    load from a31_35_0 in mem


    lw      s6,76(sp)
              #                    store to a30_35_0 in mem offset legal
    sw      s6,-88(sp)
              #                    free s6
              #                    occupy s6 with a31_35_0
              #                    store to a31_35_0 in mem offset legal
    sw      s6,76(sp)
              #                    release s6 with a31_35_0
              #                    occupy s6 with a32_35_0
              #                    load from a32_35_0 in mem


    lw      s6,72(sp)
              #                    store to a31_35_0 in mem offset legal
    sw      s6,-92(sp)
              #                    free s6
              #                    occupy s6 with a32_35_0
              #                    store to a32_35_0 in mem offset legal
    sw      s6,72(sp)
              #                    release s6 with a32_35_0
              #                    occupy s6 with 0_0
    li      s6, 0
              #                    store to a32_35_0 in mem offset legal
    sw      s6,-96(sp)
              #                    free s6
              #                    occupy s2 with temp_17_arithop_42_0
              #                    store to temp_17_arithop_42_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_17_arithop_42_0
              #                    occupy s3 with a11_35_0
              #                    store to a11_35_0 in mem offset legal
    sw      s3,156(sp)
              #                    release s3 with a11_35_0
              #                    occupy s4 with a12_35_0
              #                    store to a12_35_0 in mem offset legal
    sw      s4,152(sp)
              #                    release s4 with a12_35_0
              #                    occupy s5 with a13_35_0
              #                    store to a13_35_0 in mem offset legal
    sw      s5,148(sp)
              #                    release s5 with a13_35_0
              #                    occupy a0 with a10_35_0
              #                    store to a10_35_0 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with a10_35_0
              #                    occupy a2 with temp_19_arithop_42_0
              #                    store to temp_19_arithop_42_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_19_arithop_42_0
              #                    occupy a3 with a4_35_0
              #                    store to a4_35_0 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with a4_35_0
              #                    occupy a4 with a5_35_0
              #                    store to a5_35_0 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with a5_35_0
              #                    occupy a5 with a6_35_0
              #                    store to a6_35_0 in mem offset legal
    sw      a5,32(sp)
              #                    release a5 with a6_35_0
              #                    occupy a6 with a7_35_0
              #                    store to a7_35_0 in mem offset legal
    sw      a6,28(sp)
              #                    release a6 with a7_35_0
              #                    occupy a7 with a8_35_0
              #                    store to a8_35_0 in mem offset legal
    sw      a7,24(sp)
              #                    release a7 with a8_35_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_arithop_42_0_0
              #                    load from temp_17_arithop_42_0 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_temp_19_arithop_42_0_0
              #                    load from temp_19_arithop_42_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with _anonymous_of_a4_35_0_0
              #                    load from a4_35_0 in mem


    lw      a2,40(sp)
              #                    occupy a3 with _anonymous_of_a5_35_0_0
              #                    load from a5_35_0 in mem


    lw      a3,36(sp)
              #                    occupy a4 with _anonymous_of_a6_35_0_0
              #                    load from a6_35_0 in mem


    lw      a4,32(sp)
              #                    occupy a5 with _anonymous_of_a7_35_0_0
              #                    load from a7_35_0 in mem


    lw      a5,28(sp)
              #                    occupy a6 with _anonymous_of_a8_35_0_0
              #                    load from a8_35_0 in mem


    lw      a6,24(sp)
              #                    occupy a7 with _anonymous_of_a9_35_0_0
              #                    load from a9_35_0 in mem


    lw      a7,164(sp)
              #                    arg load ended


    call    param32_rec
              #                     1037 untrack a6_35_0 
              #                     1035 untrack a10_35_0 
              #                     1034 untrack a30_35_0 
              #                     1033 untrack a17_35_0 
              #                     1032 untrack a7_35_0 
              #                     1031 untrack a27_35_0 
              #                     1030 untrack a9_35_0 
              #                     1029 untrack a31_35_0 
              #                     1028 untrack temp_19_arithop_42_0 
              #                     1027 untrack a14_35_0 
              #                     1026 untrack a23_35_0 
              #                     1024 untrack a32_35_0 
              #                     1023 untrack a19_35_0 
              #                     1022 untrack a25_35_0 
              #                     1021 untrack a8_35_0 
              #                     1020 untrack a15_35_0 
              #                     1019 untrack a20_35_0 
              #                     1018 untrack a16_35_0 
              #                     1017 untrack a5_35_0 
              #                     1016 untrack a11_35_0 
              #                     1015 untrack a13_35_0 
              #                     1013 untrack a29_35_0 
              #                     1012 untrack a28_35_0 
              #                     1011 untrack temp_17_arithop_42_0 
              #                     1010 untrack a12_35_0 
              #                     1009 untrack a26_35_0 
              #                     1007 untrack a21_35_0 
              #                     1006 untrack a22_35_0 
              #                     1005 untrack a24_35_0 
              #                     1004 untrack a4_35_0 
              #                     1003 untrack a18_35_0 
              #                     125  ret temp_20_ret_of_param32_rec_42_0 
              #                    load from ra_param32_rec_0 in mem
    ld      ra,64(sp)
              #                    load from s0_param32_rec_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with temp_20_ret_of_param32_rec_42_0
              #                    store to temp_20_ret_of_param32_rec_42_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_20_ret_of_param32_rec_42_0
              #                    occupy a0 with temp_20_ret_of_param32_rec_42_0
              #                    load from temp_20_ret_of_param32_rec_42_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,168
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     51   Define param32_arr_0 "a1_44,a2_44,a3_44,a4_44,a5_44,a6_44,a7_44,a8_44,a9_44,a10_44,a11_44,a12_44,a13_44,a14_44,a15_44,a16_44,a17_44,a18_44,a19_44,a20_44,a21_44,a22_44,a23_44,a24_44,a25_44,a26_44,a27_44,a28_44,a29_44,a30_44,a31_44,a32_44," -> param32_arr_ret_0 
    .globl param32_arr
    .type param32_arr,@function
param32_arr:
              #                    mem layout:|a9:8 at 1544|a9:8 at 1536|a10:8 at 1528|a10:8 at 1520|a11:8 at 1512|a11:8 at 1504|a12:8 at 1496|a12:8 at 1488|a13:8 at 1480|a13:8 at 1472|a14:8 at 1464|a14:8 at 1456|a15:8 at 1448|a15:8 at 1440|a16:8 at 1432|a16:8 at 1424|a17:8 at 1416|a17:8 at 1408|a18:8 at 1400|a18:8 at 1392|a19:8 at 1384|a19:8 at 1376|a20:8 at 1368|a20:8 at 1360|a21:8 at 1352|a21:8 at 1344|a22:8 at 1336|a22:8 at 1328|a23:8 at 1320|a23:8 at 1312|a24:8 at 1304|a24:8 at 1296|a25:8 at 1288|a25:8 at 1280|a26:8 at 1272|a26:8 at 1264|a27:8 at 1256|a27:8 at 1248|a28:8 at 1240|a28:8 at 1232|a29:8 at 1224|a29:8 at 1216|a30:8 at 1208|a30:8 at 1200|a31:8 at 1192|a31:8 at 1184|a32:8 at 1176|a32:8 at 1168|ra_param32_arr:8 at 1160|s0_param32_arr:8 at 1152|a1:8 at 1144|a1:8 at 1136|a2:8 at 1128|a2:8 at 1120|a3:8 at 1112|a3:8 at 1104|a4:8 at 1096|a4:8 at 1088|a5:8 at 1080|a5:8 at 1072|a6:8 at 1064|a6:8 at 1056|a7:8 at 1048|a7:8 at 1040|a8:8 at 1032|a8:8 at 1024|temp_22_ptr_of_a1_44:8 at 1016|temp_23_ele_of_a1_44 _s46 _i0:4 at 1012|none:4 at 1008|temp_24_ptr_of_a1_44:8 at 1000|temp_25_ele_of_a1_44 _s46 _i0:4 at 996|temp_26_arithop _s46 _i0:4 at 992|temp_27_ptr_of_a2_44:8 at 984|temp_28_ele_of_a2_44 _s46 _i0:4 at 980|temp_29_arithop _s46 _i0:4 at 976|temp_30_ptr_of_a2_44:8 at 968|temp_31_ele_of_a2_44 _s46 _i0:4 at 964|temp_32_arithop _s46 _i0:4 at 960|temp_33_ptr_of_a3_44:8 at 952|temp_34_ele_of_a3_44 _s46 _i0:4 at 948|temp_35_arithop _s46 _i0:4 at 944|temp_36_ptr_of_a3_44:8 at 936|temp_37_ele_of_a3_44 _s46 _i0:4 at 932|temp_38_arithop _s46 _i0:4 at 928|temp_39_ptr_of_a4_44:8 at 920|temp_40_ele_of_a4_44 _s46 _i0:4 at 916|temp_41_arithop _s46 _i0:4 at 912|temp_42_ptr_of_a4_44:8 at 904|temp_43_ele_of_a4_44 _s46 _i0:4 at 900|temp_44_arithop _s46 _i0:4 at 896|temp_45_ptr_of_a5_44:8 at 888|temp_46_ele_of_a5_44 _s46 _i0:4 at 884|temp_47_arithop _s46 _i0:4 at 880|temp_48_ptr_of_a5_44:8 at 872|temp_49_ele_of_a5_44 _s46 _i0:4 at 868|temp_50_arithop _s46 _i0:4 at 864|temp_51_ptr_of_a6_44:8 at 856|temp_52_ele_of_a6_44 _s46 _i0:4 at 852|temp_53_arithop _s46 _i0:4 at 848|temp_54_ptr_of_a6_44:8 at 840|temp_55_ele_of_a6_44 _s46 _i0:4 at 836|temp_56_arithop _s46 _i0:4 at 832|temp_57_ptr_of_a7_44:8 at 824|temp_58_ele_of_a7_44 _s46 _i0:4 at 820|temp_59_arithop _s46 _i0:4 at 816|temp_60_ptr_of_a7_44:8 at 808|temp_61_ele_of_a7_44 _s46 _i0:4 at 804|temp_62_arithop _s46 _i0:4 at 800|temp_63_ptr_of_a8_44:8 at 792|temp_64_ele_of_a8_44 _s46 _i0:4 at 788|temp_65_arithop _s46 _i0:4 at 784|temp_66_ptr_of_a8_44:8 at 776|temp_67_ele_of_a8_44 _s46 _i0:4 at 772|temp_68_arithop _s46 _i0:4 at 768|temp_69_ptr_of_a9_44:8 at 760|temp_70_ele_of_a9_44 _s46 _i0:4 at 756|temp_71_arithop _s46 _i0:4 at 752|temp_72_ptr_of_a9_44:8 at 744|temp_73_ele_of_a9_44 _s46 _i0:4 at 740|temp_74_arithop _s46 _i0:4 at 736|temp_75_ptr_of_a10_44:8 at 728|temp_76_ele_of_a10_44 _s46 _i0:4 at 724|temp_77_arithop _s46 _i0:4 at 720|temp_78_ptr_of_a10_44:8 at 712|temp_79_ele_of_a10_44 _s46 _i0:4 at 708|temp_80_arithop _s46 _i0:4 at 704|temp_81_ptr_of_a11_44:8 at 696|temp_82_ele_of_a11_44 _s46 _i0:4 at 692|temp_83_arithop _s46 _i0:4 at 688|temp_84_ptr_of_a11_44:8 at 680|temp_85_ele_of_a11_44 _s46 _i0:4 at 676|temp_86_arithop _s46 _i0:4 at 672|temp_87_ptr_of_a12_44:8 at 664|temp_88_ele_of_a12_44 _s46 _i0:4 at 660|temp_89_arithop _s46 _i0:4 at 656|temp_90_ptr_of_a12_44:8 at 648|temp_91_ele_of_a12_44 _s46 _i0:4 at 644|temp_92_arithop _s46 _i0:4 at 640|temp_93_ptr_of_a13_44:8 at 632|temp_94_ele_of_a13_44 _s46 _i0:4 at 628|temp_95_arithop _s46 _i0:4 at 624|temp_96_ptr_of_a13_44:8 at 616|temp_97_ele_of_a13_44 _s46 _i0:4 at 612|temp_98_arithop _s46 _i0:4 at 608|temp_99_ptr_of_a14_44:8 at 600|temp_100_ele_of_a14_44 _s46 _i0:4 at 596|temp_101_arithop _s46 _i0:4 at 592|temp_102_ptr_of_a14_44:8 at 584|temp_103_ele_of_a14_44 _s46 _i0:4 at 580|temp_104_arithop _s46 _i0:4 at 576|temp_105_ptr_of_a15_44:8 at 568|temp_106_ele_of_a15_44 _s46 _i0:4 at 564|temp_107_arithop _s46 _i0:4 at 560|temp_108_ptr_of_a15_44:8 at 552|temp_109_ele_of_a15_44 _s46 _i0:4 at 548|temp_110_arithop _s46 _i0:4 at 544|temp_111_ptr_of_a16_44:8 at 536|temp_112_ele_of_a16_44 _s46 _i0:4 at 532|temp_113_arithop _s46 _i0:4 at 528|temp_114_ptr_of_a16_44:8 at 520|temp_115_ele_of_a16_44 _s46 _i0:4 at 516|temp_116_arithop _s46 _i0:4 at 512|temp_117_ptr_of_a17_44:8 at 504|temp_118_ele_of_a17_44 _s46 _i0:4 at 500|temp_119_arithop _s46 _i0:4 at 496|temp_120_ptr_of_a17_44:8 at 488|temp_121_ele_of_a17_44 _s46 _i0:4 at 484|temp_122_arithop _s46 _i0:4 at 480|temp_123_ptr_of_a18_44:8 at 472|temp_124_ele_of_a18_44 _s46 _i0:4 at 468|temp_125_arithop _s46 _i0:4 at 464|temp_126_ptr_of_a18_44:8 at 456|temp_127_ele_of_a18_44 _s46 _i0:4 at 452|temp_128_arithop _s46 _i0:4 at 448|temp_129_ptr_of_a19_44:8 at 440|temp_130_ele_of_a19_44 _s46 _i0:4 at 436|temp_131_arithop _s46 _i0:4 at 432|temp_132_ptr_of_a19_44:8 at 424|temp_133_ele_of_a19_44 _s46 _i0:4 at 420|temp_134_arithop _s46 _i0:4 at 416|temp_135_ptr_of_a20_44:8 at 408|temp_136_ele_of_a20_44 _s46 _i0:4 at 404|temp_137_arithop _s46 _i0:4 at 400|temp_138_ptr_of_a20_44:8 at 392|temp_139_ele_of_a20_44 _s46 _i0:4 at 388|temp_140_arithop _s46 _i0:4 at 384|temp_141_ptr_of_a21_44:8 at 376|temp_142_ele_of_a21_44 _s46 _i0:4 at 372|temp_143_arithop _s46 _i0:4 at 368|temp_144_ptr_of_a21_44:8 at 360|temp_145_ele_of_a21_44 _s46 _i0:4 at 356|temp_146_arithop _s46 _i0:4 at 352|temp_147_ptr_of_a22_44:8 at 344|temp_148_ele_of_a22_44 _s46 _i0:4 at 340|temp_149_arithop _s46 _i0:4 at 336|temp_150_ptr_of_a22_44:8 at 328|temp_151_ele_of_a22_44 _s46 _i0:4 at 324|temp_152_arithop _s46 _i0:4 at 320|temp_153_ptr_of_a23_44:8 at 312|temp_154_ele_of_a23_44 _s46 _i0:4 at 308|temp_155_arithop _s46 _i0:4 at 304|temp_156_ptr_of_a23_44:8 at 296|temp_157_ele_of_a23_44 _s46 _i0:4 at 292|temp_158_arithop _s46 _i0:4 at 288|temp_159_ptr_of_a24_44:8 at 280|temp_160_ele_of_a24_44 _s46 _i0:4 at 276|temp_161_arithop _s46 _i0:4 at 272|temp_162_ptr_of_a24_44:8 at 264|temp_163_ele_of_a24_44 _s46 _i0:4 at 260|temp_164_arithop _s46 _i0:4 at 256|temp_165_ptr_of_a25_44:8 at 248|temp_166_ele_of_a25_44 _s46 _i0:4 at 244|temp_167_arithop _s46 _i0:4 at 240|temp_168_ptr_of_a25_44:8 at 232|temp_169_ele_of_a25_44 _s46 _i0:4 at 228|temp_170_arithop _s46 _i0:4 at 224|temp_171_ptr_of_a26_44:8 at 216|temp_172_ele_of_a26_44 _s46 _i0:4 at 212|temp_173_arithop _s46 _i0:4 at 208|temp_174_ptr_of_a26_44:8 at 200|temp_175_ele_of_a26_44 _s46 _i0:4 at 196|temp_176_arithop _s46 _i0:4 at 192|temp_177_ptr_of_a27_44:8 at 184|temp_178_ele_of_a27_44 _s46 _i0:4 at 180|temp_179_arithop _s46 _i0:4 at 176|temp_180_ptr_of_a27_44:8 at 168|temp_181_ele_of_a27_44 _s46 _i0:4 at 164|temp_182_arithop _s46 _i0:4 at 160|temp_183_ptr_of_a28_44:8 at 152|temp_184_ele_of_a28_44 _s46 _i0:4 at 148|temp_185_arithop _s46 _i0:4 at 144|temp_186_ptr_of_a28_44:8 at 136|temp_187_ele_of_a28_44 _s46 _i0:4 at 132|temp_188_arithop _s46 _i0:4 at 128|temp_189_ptr_of_a29_44:8 at 120|temp_190_ele_of_a29_44 _s46 _i0:4 at 116|temp_191_arithop _s46 _i0:4 at 112|temp_192_ptr_of_a29_44:8 at 104|temp_193_ele_of_a29_44 _s46 _i0:4 at 100|temp_194_arithop _s46 _i0:4 at 96|temp_195_ptr_of_a30_44:8 at 88|temp_196_ele_of_a30_44 _s46 _i0:4 at 84|temp_197_arithop _s46 _i0:4 at 80|temp_198_ptr_of_a30_44:8 at 72|temp_199_ele_of_a30_44 _s46 _i0:4 at 68|temp_200_arithop _s46 _i0:4 at 64|temp_201_ptr_of_a31_44:8 at 56|temp_202_ele_of_a31_44 _s46 _i0:4 at 52|temp_203_arithop _s46 _i0:4 at 48|temp_204_ptr_of_a31_44:8 at 40|temp_205_ele_of_a31_44 _s46 _i0:4 at 36|temp_206_arithop _s46 _i0:4 at 32|temp_207_ptr_of_a32_44:8 at 24|temp_208_ele_of_a32_44 _s46 _i0:4 at 20|temp_209_arithop _s46 _i0:4 at 16|temp_210_ptr_of_a32_44:8 at 8|temp_211_ele_of_a32_44 _s46 _i0:4 at 4|temp_212_arithop _s46 _i0:4 at 0
    addi    sp,sp,-1552
              #                    store to ra_param32_arr_0 in mem offset legal
    sd      ra,1160(sp)
              #                    store to s0_param32_arr_0 in mem offset legal
    sd      s0,1152(sp)
    addi    s0,sp,1552
              #                     136  alloc ptr->i32 [temp_22_ptr_of_a1_44_46] 
              #                     138  alloc i32 [temp_23_ele_of_a1_44_46] 
              #                     141  alloc ptr->i32 [temp_24_ptr_of_a1_44_46] 
              #                     143  alloc i32 [temp_25_ele_of_a1_44_46] 
              #                     146  alloc i32 [temp_26_arithop_46] 
              #                     149  alloc i32 [sum_46] 
              #                     150  alloc ptr->i32 [temp_27_ptr_of_a2_44_46] 
              #                     152  alloc i32 [temp_28_ele_of_a2_44_46] 
              #                     155  alloc i32 [temp_29_arithop_46] 
              #                     157  alloc ptr->i32 [temp_30_ptr_of_a2_44_46] 
              #                     159  alloc i32 [temp_31_ele_of_a2_44_46] 
              #                     162  alloc i32 [temp_32_arithop_46] 
              #                     165  alloc ptr->i32 [temp_33_ptr_of_a3_44_46] 
              #                     167  alloc i32 [temp_34_ele_of_a3_44_46] 
              #                     170  alloc i32 [temp_35_arithop_46] 
              #                     172  alloc ptr->i32 [temp_36_ptr_of_a3_44_46] 
              #                     174  alloc i32 [temp_37_ele_of_a3_44_46] 
              #                     177  alloc i32 [temp_38_arithop_46] 
              #                     180  alloc ptr->i32 [temp_39_ptr_of_a4_44_46] 
              #                     182  alloc i32 [temp_40_ele_of_a4_44_46] 
              #                     185  alloc i32 [temp_41_arithop_46] 
              #                     187  alloc ptr->i32 [temp_42_ptr_of_a4_44_46] 
              #                     189  alloc i32 [temp_43_ele_of_a4_44_46] 
              #                     192  alloc i32 [temp_44_arithop_46] 
              #                     195  alloc ptr->i32 [temp_45_ptr_of_a5_44_46] 
              #                     197  alloc i32 [temp_46_ele_of_a5_44_46] 
              #                     200  alloc i32 [temp_47_arithop_46] 
              #                     202  alloc ptr->i32 [temp_48_ptr_of_a5_44_46] 
              #                     204  alloc i32 [temp_49_ele_of_a5_44_46] 
              #                     207  alloc i32 [temp_50_arithop_46] 
              #                     210  alloc ptr->i32 [temp_51_ptr_of_a6_44_46] 
              #                     212  alloc i32 [temp_52_ele_of_a6_44_46] 
              #                     215  alloc i32 [temp_53_arithop_46] 
              #                     217  alloc ptr->i32 [temp_54_ptr_of_a6_44_46] 
              #                     219  alloc i32 [temp_55_ele_of_a6_44_46] 
              #                     222  alloc i32 [temp_56_arithop_46] 
              #                     225  alloc ptr->i32 [temp_57_ptr_of_a7_44_46] 
              #                     227  alloc i32 [temp_58_ele_of_a7_44_46] 
              #                     230  alloc i32 [temp_59_arithop_46] 
              #                     232  alloc ptr->i32 [temp_60_ptr_of_a7_44_46] 
              #                     234  alloc i32 [temp_61_ele_of_a7_44_46] 
              #                     237  alloc i32 [temp_62_arithop_46] 
              #                     240  alloc ptr->i32 [temp_63_ptr_of_a8_44_46] 
              #                     242  alloc i32 [temp_64_ele_of_a8_44_46] 
              #                     245  alloc i32 [temp_65_arithop_46] 
              #                     247  alloc ptr->i32 [temp_66_ptr_of_a8_44_46] 
              #                     249  alloc i32 [temp_67_ele_of_a8_44_46] 
              #                     252  alloc i32 [temp_68_arithop_46] 
              #                     255  alloc ptr->i32 [temp_69_ptr_of_a9_44_46] 
              #                     257  alloc i32 [temp_70_ele_of_a9_44_46] 
              #                     260  alloc i32 [temp_71_arithop_46] 
              #                     262  alloc ptr->i32 [temp_72_ptr_of_a9_44_46] 
              #                     264  alloc i32 [temp_73_ele_of_a9_44_46] 
              #                     267  alloc i32 [temp_74_arithop_46] 
              #                     270  alloc ptr->i32 [temp_75_ptr_of_a10_44_46] 
              #                     272  alloc i32 [temp_76_ele_of_a10_44_46] 
              #                     275  alloc i32 [temp_77_arithop_46] 
              #                     277  alloc ptr->i32 [temp_78_ptr_of_a10_44_46] 
              #                     279  alloc i32 [temp_79_ele_of_a10_44_46] 
              #                     282  alloc i32 [temp_80_arithop_46] 
              #                     285  alloc ptr->i32 [temp_81_ptr_of_a11_44_46] 
              #                     287  alloc i32 [temp_82_ele_of_a11_44_46] 
              #                     290  alloc i32 [temp_83_arithop_46] 
              #                     292  alloc ptr->i32 [temp_84_ptr_of_a11_44_46] 
              #                     294  alloc i32 [temp_85_ele_of_a11_44_46] 
              #                     297  alloc i32 [temp_86_arithop_46] 
              #                     300  alloc ptr->i32 [temp_87_ptr_of_a12_44_46] 
              #                     302  alloc i32 [temp_88_ele_of_a12_44_46] 
              #                     305  alloc i32 [temp_89_arithop_46] 
              #                     307  alloc ptr->i32 [temp_90_ptr_of_a12_44_46] 
              #                     309  alloc i32 [temp_91_ele_of_a12_44_46] 
              #                     312  alloc i32 [temp_92_arithop_46] 
              #                     315  alloc ptr->i32 [temp_93_ptr_of_a13_44_46] 
              #                     317  alloc i32 [temp_94_ele_of_a13_44_46] 
              #                     320  alloc i32 [temp_95_arithop_46] 
              #                     322  alloc ptr->i32 [temp_96_ptr_of_a13_44_46] 
              #                     324  alloc i32 [temp_97_ele_of_a13_44_46] 
              #                     327  alloc i32 [temp_98_arithop_46] 
              #                     330  alloc ptr->i32 [temp_99_ptr_of_a14_44_46] 
              #                     332  alloc i32 [temp_100_ele_of_a14_44_46] 
              #                     335  alloc i32 [temp_101_arithop_46] 
              #                     337  alloc ptr->i32 [temp_102_ptr_of_a14_44_46] 
              #                     339  alloc i32 [temp_103_ele_of_a14_44_46] 
              #                     342  alloc i32 [temp_104_arithop_46] 
              #                     345  alloc ptr->i32 [temp_105_ptr_of_a15_44_46] 
              #                     347  alloc i32 [temp_106_ele_of_a15_44_46] 
              #                     350  alloc i32 [temp_107_arithop_46] 
              #                     352  alloc ptr->i32 [temp_108_ptr_of_a15_44_46] 
              #                     354  alloc i32 [temp_109_ele_of_a15_44_46] 
              #                     357  alloc i32 [temp_110_arithop_46] 
              #                     360  alloc ptr->i32 [temp_111_ptr_of_a16_44_46] 
              #                     362  alloc i32 [temp_112_ele_of_a16_44_46] 
              #                     365  alloc i32 [temp_113_arithop_46] 
              #                     367  alloc ptr->i32 [temp_114_ptr_of_a16_44_46] 
              #                     369  alloc i32 [temp_115_ele_of_a16_44_46] 
              #                     372  alloc i32 [temp_116_arithop_46] 
              #                     375  alloc ptr->i32 [temp_117_ptr_of_a17_44_46] 
              #                     377  alloc i32 [temp_118_ele_of_a17_44_46] 
              #                     380  alloc i32 [temp_119_arithop_46] 
              #                     382  alloc ptr->i32 [temp_120_ptr_of_a17_44_46] 
              #                     384  alloc i32 [temp_121_ele_of_a17_44_46] 
              #                     387  alloc i32 [temp_122_arithop_46] 
              #                     390  alloc ptr->i32 [temp_123_ptr_of_a18_44_46] 
              #                     392  alloc i32 [temp_124_ele_of_a18_44_46] 
              #                     395  alloc i32 [temp_125_arithop_46] 
              #                     397  alloc ptr->i32 [temp_126_ptr_of_a18_44_46] 
              #                     399  alloc i32 [temp_127_ele_of_a18_44_46] 
              #                     402  alloc i32 [temp_128_arithop_46] 
              #                     405  alloc ptr->i32 [temp_129_ptr_of_a19_44_46] 
              #                     407  alloc i32 [temp_130_ele_of_a19_44_46] 
              #                     410  alloc i32 [temp_131_arithop_46] 
              #                     412  alloc ptr->i32 [temp_132_ptr_of_a19_44_46] 
              #                     414  alloc i32 [temp_133_ele_of_a19_44_46] 
              #                     417  alloc i32 [temp_134_arithop_46] 
              #                     420  alloc ptr->i32 [temp_135_ptr_of_a20_44_46] 
              #                     422  alloc i32 [temp_136_ele_of_a20_44_46] 
              #                     425  alloc i32 [temp_137_arithop_46] 
              #                     427  alloc ptr->i32 [temp_138_ptr_of_a20_44_46] 
              #                     429  alloc i32 [temp_139_ele_of_a20_44_46] 
              #                     432  alloc i32 [temp_140_arithop_46] 
              #                     435  alloc ptr->i32 [temp_141_ptr_of_a21_44_46] 
              #                     437  alloc i32 [temp_142_ele_of_a21_44_46] 
              #                     440  alloc i32 [temp_143_arithop_46] 
              #                     442  alloc ptr->i32 [temp_144_ptr_of_a21_44_46] 
              #                     444  alloc i32 [temp_145_ele_of_a21_44_46] 
              #                     447  alloc i32 [temp_146_arithop_46] 
              #                     450  alloc ptr->i32 [temp_147_ptr_of_a22_44_46] 
              #                     452  alloc i32 [temp_148_ele_of_a22_44_46] 
              #                     455  alloc i32 [temp_149_arithop_46] 
              #                     457  alloc ptr->i32 [temp_150_ptr_of_a22_44_46] 
              #                     459  alloc i32 [temp_151_ele_of_a22_44_46] 
              #                     462  alloc i32 [temp_152_arithop_46] 
              #                     465  alloc ptr->i32 [temp_153_ptr_of_a23_44_46] 
              #                     467  alloc i32 [temp_154_ele_of_a23_44_46] 
              #                     470  alloc i32 [temp_155_arithop_46] 
              #                     472  alloc ptr->i32 [temp_156_ptr_of_a23_44_46] 
              #                     474  alloc i32 [temp_157_ele_of_a23_44_46] 
              #                     477  alloc i32 [temp_158_arithop_46] 
              #                     480  alloc ptr->i32 [temp_159_ptr_of_a24_44_46] 
              #                     482  alloc i32 [temp_160_ele_of_a24_44_46] 
              #                     485  alloc i32 [temp_161_arithop_46] 
              #                     487  alloc ptr->i32 [temp_162_ptr_of_a24_44_46] 
              #                     489  alloc i32 [temp_163_ele_of_a24_44_46] 
              #                     492  alloc i32 [temp_164_arithop_46] 
              #                     495  alloc ptr->i32 [temp_165_ptr_of_a25_44_46] 
              #                     497  alloc i32 [temp_166_ele_of_a25_44_46] 
              #                     500  alloc i32 [temp_167_arithop_46] 
              #                     502  alloc ptr->i32 [temp_168_ptr_of_a25_44_46] 
              #                     504  alloc i32 [temp_169_ele_of_a25_44_46] 
              #                     507  alloc i32 [temp_170_arithop_46] 
              #                     510  alloc ptr->i32 [temp_171_ptr_of_a26_44_46] 
              #                     512  alloc i32 [temp_172_ele_of_a26_44_46] 
              #                     515  alloc i32 [temp_173_arithop_46] 
              #                     517  alloc ptr->i32 [temp_174_ptr_of_a26_44_46] 
              #                     519  alloc i32 [temp_175_ele_of_a26_44_46] 
              #                     522  alloc i32 [temp_176_arithop_46] 
              #                     525  alloc ptr->i32 [temp_177_ptr_of_a27_44_46] 
              #                     527  alloc i32 [temp_178_ele_of_a27_44_46] 
              #                     530  alloc i32 [temp_179_arithop_46] 
              #                     532  alloc ptr->i32 [temp_180_ptr_of_a27_44_46] 
              #                     534  alloc i32 [temp_181_ele_of_a27_44_46] 
              #                     537  alloc i32 [temp_182_arithop_46] 
              #                     540  alloc ptr->i32 [temp_183_ptr_of_a28_44_46] 
              #                     542  alloc i32 [temp_184_ele_of_a28_44_46] 
              #                     545  alloc i32 [temp_185_arithop_46] 
              #                     547  alloc ptr->i32 [temp_186_ptr_of_a28_44_46] 
              #                     549  alloc i32 [temp_187_ele_of_a28_44_46] 
              #                     552  alloc i32 [temp_188_arithop_46] 
              #                     555  alloc ptr->i32 [temp_189_ptr_of_a29_44_46] 
              #                     557  alloc i32 [temp_190_ele_of_a29_44_46] 
              #                     560  alloc i32 [temp_191_arithop_46] 
              #                     562  alloc ptr->i32 [temp_192_ptr_of_a29_44_46] 
              #                     564  alloc i32 [temp_193_ele_of_a29_44_46] 
              #                     567  alloc i32 [temp_194_arithop_46] 
              #                     570  alloc ptr->i32 [temp_195_ptr_of_a30_44_46] 
              #                     572  alloc i32 [temp_196_ele_of_a30_44_46] 
              #                     575  alloc i32 [temp_197_arithop_46] 
              #                     577  alloc ptr->i32 [temp_198_ptr_of_a30_44_46] 
              #                     579  alloc i32 [temp_199_ele_of_a30_44_46] 
              #                     582  alloc i32 [temp_200_arithop_46] 
              #                     585  alloc ptr->i32 [temp_201_ptr_of_a31_44_46] 
              #                     587  alloc i32 [temp_202_ele_of_a31_44_46] 
              #                     590  alloc i32 [temp_203_arithop_46] 
              #                     592  alloc ptr->i32 [temp_204_ptr_of_a31_44_46] 
              #                     594  alloc i32 [temp_205_ele_of_a31_44_46] 
              #                     597  alloc i32 [temp_206_arithop_46] 
              #                     600  alloc ptr->i32 [temp_207_ptr_of_a32_44_46] 
              #                     602  alloc i32 [temp_208_ele_of_a32_44_46] 
              #                     605  alloc i32 [temp_209_arithop_46] 
              #                     607  alloc ptr->i32 [temp_210_ptr_of_a32_44_46] 
              #                     609  alloc i32 [temp_211_ele_of_a32_44_46] 
              #                     612  alloc i32 [temp_212_arithop_46] 
              #                    regtab     a0:Freed { symidx: a1_44, tracked: true } |     a1:Freed { symidx: a2_44, tracked: true } |     a2:Freed { symidx: a3_44, tracked: true } |     a3:Freed { symidx: a4_44, tracked: true } |     a4:Freed { symidx: a5_44, tracked: true } |     a5:Freed { symidx: a6_44, tracked: true } |     a6:Freed { symidx: a7_44, tracked: true } |     a7:Freed { symidx: a8_44, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     19    
              #                     20    
              #                     21    
              #                     22    
              #                     23    
              #                     24    
              #                     25    
              #                     26    
              #                     27    
              #                     28    
              #                     29    
              #                     30    
              #                     31    
              #                     32    
              #                     33    
              #                     34    
              #                     35    
              #                     36    
              #                     37    
              #                     38    
              #                     39    
              #                     40    
              #                     41    
              #                     42    
              #                     43    
              #                     44    
              #                     45    
              #                     46    
              #                     47    
              #                     48    
              #                     49    
              #                     50    
              #                     137  temp_22_ptr_of_a1_44_46 = GEP a1_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy s1 with temp_22_ptr_of_a1_44_46
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a0 with a1_44
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     139  temp_23_ele_of_a1_44_46_0 = load temp_22_ptr_of_a1_44_46:ptr->i32 
              #                    occupy s1 with temp_22_ptr_of_a1_44_46
              #                    occupy s3 with temp_23_ele_of_a1_44_46_0
    lw      s3,0(s1)
              #                    free s3
              #                    free s1
              #                     1105 untrack temp_22_ptr_of_a1_44_46 
              #                    occupy s1 with temp_22_ptr_of_a1_44_46
              #                    release s1 with temp_22_ptr_of_a1_44_46
              #                     140  mu a1_44:139 
              #                     142  temp_24_ptr_of_a1_44_46 = GEP a1_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy s1 with temp_24_ptr_of_a1_44_46
    li      s1, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 1
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
              #                    occupy a0 with a1_44
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     144  temp_25_ele_of_a1_44_46_0 = load temp_24_ptr_of_a1_44_46:ptr->i32 
              #                    occupy s1 with temp_24_ptr_of_a1_44_46
              #                    occupy s5 with temp_25_ele_of_a1_44_46_0
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                     1186 untrack temp_24_ptr_of_a1_44_46 
              #                    occupy s1 with temp_24_ptr_of_a1_44_46
              #                    release s1 with temp_24_ptr_of_a1_44_46
              #                     145  mu a1_44:144 
              #                     1099 untrack a1_44 
              #                    occupy a0 with a1_44
              #                    release a0 with a1_44
              #                     147  temp_26_arithop_46_0 = Add i32 temp_23_ele_of_a1_44_46_0, temp_25_ele_of_a1_44_46_0 
              #                    occupy s3 with temp_23_ele_of_a1_44_46_0
              #                    occupy s5 with temp_25_ele_of_a1_44_46_0
              #                    occupy a0 with temp_26_arithop_46_0
    ADDW    a0,s3,s5
              #                    free s3
              #                    free s5
              #                    free a0
              #                     1215 untrack temp_23_ele_of_a1_44_46_0 
              #                    occupy s3 with temp_23_ele_of_a1_44_46_0
              #                    release s3 with temp_23_ele_of_a1_44_46_0
              #                     1095 untrack temp_25_ele_of_a1_44_46_0 
              #                    occupy s5 with temp_25_ele_of_a1_44_46_0
              #                    release s5 with temp_25_ele_of_a1_44_46_0
              #                     148  (nop) 
              #                     151  temp_27_ptr_of_a2_44_46 = GEP a2_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy s1 with temp_27_ptr_of_a2_44_46
    li      s1, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy a1 with a2_44
    add     s1,s1,a1
              #                    free a1
              #                    free s1
              #                     153  temp_28_ele_of_a2_44_46_0 = load temp_27_ptr_of_a2_44_46:ptr->i32 
              #                    occupy s1 with temp_27_ptr_of_a2_44_46
              #                    occupy s5 with temp_28_ele_of_a2_44_46_0
    lw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                     1104 untrack temp_27_ptr_of_a2_44_46 
              #                    occupy s1 with temp_27_ptr_of_a2_44_46
              #                    release s1 with temp_27_ptr_of_a2_44_46
              #                     154  mu a2_44:153 
              #                     156  temp_29_arithop_46_0 = Add i32 temp_26_arithop_46_0, temp_28_ele_of_a2_44_46_0 
              #                    occupy a0 with temp_26_arithop_46_0
              #                    occupy s5 with temp_28_ele_of_a2_44_46_0
              #                    occupy s1 with temp_29_arithop_46_0
    ADDW    s1,a0,s5
              #                    free a0
              #                    free s5
              #                    free s1
              #                     1086 untrack temp_28_ele_of_a2_44_46_0 
              #                    occupy s5 with temp_28_ele_of_a2_44_46_0
              #                    release s5 with temp_28_ele_of_a2_44_46_0
              #                     1084 untrack temp_26_arithop_46_0 
              #                    occupy a0 with temp_26_arithop_46_0
              #                    release a0 with temp_26_arithop_46_0
              #                     158  temp_30_ptr_of_a2_44_46 = GEP a2_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_30_ptr_of_a2_44_46
    li      a0, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 1
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
              #                    occupy a1 with a2_44
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                     160  temp_31_ele_of_a2_44_46_0 = load temp_30_ptr_of_a2_44_46:ptr->i32 
              #                    occupy a0 with temp_30_ptr_of_a2_44_46
              #                    occupy s6 with temp_31_ele_of_a2_44_46_0
    lw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     1210 untrack temp_30_ptr_of_a2_44_46 
              #                    occupy a0 with temp_30_ptr_of_a2_44_46
              #                    release a0 with temp_30_ptr_of_a2_44_46
              #                     161  mu a2_44:160 
              #                     1083 untrack a2_44 
              #                    occupy a1 with a2_44
              #                    release a1 with a2_44
              #                     163  temp_32_arithop_46_0 = Add i32 temp_29_arithop_46_0, temp_31_ele_of_a2_44_46_0 
              #                    occupy s1 with temp_29_arithop_46_0
              #                    occupy s6 with temp_31_ele_of_a2_44_46_0
              #                    occupy a0 with temp_32_arithop_46_0
    ADDW    a0,s1,s6
              #                    free s1
              #                    free s6
              #                    free a0
              #                     1224 untrack temp_31_ele_of_a2_44_46_0 
              #                    occupy s6 with temp_31_ele_of_a2_44_46_0
              #                    release s6 with temp_31_ele_of_a2_44_46_0
              #                     1093 untrack temp_29_arithop_46_0 
              #                    occupy s1 with temp_29_arithop_46_0
              #                    release s1 with temp_29_arithop_46_0
              #                     164  (nop) 
              #                     166  temp_33_ptr_of_a3_44_46 = GEP a3_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a1 with temp_33_ptr_of_a3_44_46
    li      a1, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 0
    add     a1,a1,s1
              #                    free s1
    slli a1,a1,2
              #                    occupy a2 with a3_44
    add     a1,a1,a2
              #                    free a2
              #                    free a1
              #                     168  temp_34_ele_of_a3_44_46_0 = load temp_33_ptr_of_a3_44_46:ptr->i32 
              #                    occupy a1 with temp_33_ptr_of_a3_44_46
              #                    occupy s6 with temp_34_ele_of_a3_44_46_0
    lw      s6,0(a1)
              #                    free s6
              #                    free a1
              #                     1159 untrack temp_33_ptr_of_a3_44_46 
              #                    occupy a1 with temp_33_ptr_of_a3_44_46
              #                    release a1 with temp_33_ptr_of_a3_44_46
              #                     169  mu a3_44:168 
              #                     171  temp_35_arithop_46_0 = Add i32 temp_32_arithop_46_0, temp_34_ele_of_a3_44_46_0 
              #                    occupy a0 with temp_32_arithop_46_0
              #                    occupy s6 with temp_34_ele_of_a3_44_46_0
              #                    occupy a1 with temp_35_arithop_46_0
    ADDW    a1,a0,s6
              #                    free a0
              #                    free s6
              #                    free a1
              #                     1231 untrack temp_34_ele_of_a3_44_46_0 
              #                    occupy s6 with temp_34_ele_of_a3_44_46_0
              #                    release s6 with temp_34_ele_of_a3_44_46_0
              #                     1109 untrack temp_32_arithop_46_0 
              #                    occupy a0 with temp_32_arithop_46_0
              #                    release a0 with temp_32_arithop_46_0
              #                     173  temp_36_ptr_of_a3_44_46 = GEP a3_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_36_ptr_of_a3_44_46
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 1
    add     a0,a0,s6
              #                    free s6
    slli a0,a0,2
              #                    occupy a2 with a3_44
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     175  temp_37_ele_of_a3_44_46_0 = load temp_36_ptr_of_a3_44_46:ptr->i32 
              #                    occupy a0 with temp_36_ptr_of_a3_44_46
              #                    occupy s7 with temp_37_ele_of_a3_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_37_ele_of_a3_44_46_0
              #                    store to temp_37_ele_of_a3_44_46_0 in mem offset legal
    sw      s7,932(sp)
              #                    release s7 with temp_37_ele_of_a3_44_46_0
              #                    free a0
              #                     1143 untrack temp_36_ptr_of_a3_44_46 
              #                    occupy a0 with temp_36_ptr_of_a3_44_46
              #                    release a0 with temp_36_ptr_of_a3_44_46
              #                     176  mu a3_44:175 
              #                     1214 untrack a3_44 
              #                    occupy a2 with a3_44
              #                    release a2 with a3_44
              #                     178  temp_38_arithop_46_0 = Add i32 temp_35_arithop_46_0, temp_37_ele_of_a3_44_46_0 
              #                    occupy a1 with temp_35_arithop_46_0
              #                    occupy a0 with temp_37_ele_of_a3_44_46_0
              #                    load from temp_37_ele_of_a3_44_46_0 in mem


    lw      a0,932(sp)
              #                    occupy a2 with temp_38_arithop_46_0
    ADDW    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     1141 untrack temp_37_ele_of_a3_44_46_0 
              #                    occupy a0 with temp_37_ele_of_a3_44_46_0
              #                    release a0 with temp_37_ele_of_a3_44_46_0
              #                     1096 untrack temp_35_arithop_46_0 
              #                    occupy a1 with temp_35_arithop_46_0
              #                    release a1 with temp_35_arithop_46_0
              #                     179  (nop) 
              #                     181  temp_39_ptr_of_a4_44_46 = GEP a4_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_39_ptr_of_a4_44_46
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a3 with a4_44
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     183  temp_40_ele_of_a4_44_46_0 = load temp_39_ptr_of_a4_44_46:ptr->i32 
              #                    occupy a0 with temp_39_ptr_of_a4_44_46
              #                    occupy s7 with temp_40_ele_of_a4_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_40_ele_of_a4_44_46_0
              #                    store to temp_40_ele_of_a4_44_46_0 in mem offset legal
    sw      s7,916(sp)
              #                    release s7 with temp_40_ele_of_a4_44_46_0
              #                    free a0
              #                     1156 untrack temp_39_ptr_of_a4_44_46 
              #                    occupy a0 with temp_39_ptr_of_a4_44_46
              #                    release a0 with temp_39_ptr_of_a4_44_46
              #                     184  mu a4_44:183 
              #                     186  temp_41_arithop_46_0 = Add i32 temp_38_arithop_46_0, temp_40_ele_of_a4_44_46_0 
              #                    occupy a2 with temp_38_arithop_46_0
              #                    occupy a0 with temp_40_ele_of_a4_44_46_0
              #                    load from temp_40_ele_of_a4_44_46_0 in mem


    lw      a0,916(sp)
              #                    occupy s7 with temp_41_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_38_arithop_46_0
              #                    store to temp_38_arithop_46_0 in mem offset legal
    sw      a2,928(sp)
              #                    release a2 with temp_38_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1209 untrack temp_38_arithop_46_0 
              #                     1039 untrack temp_40_ele_of_a4_44_46_0 
              #                    occupy a0 with temp_40_ele_of_a4_44_46_0
              #                    release a0 with temp_40_ele_of_a4_44_46_0
              #                     188  temp_42_ptr_of_a4_44_46 = GEP a4_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_42_ptr_of_a4_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a3 with a4_44
    add     a0,a0,a3
              #                    free a3
              #                    free a0
              #                     190  temp_43_ele_of_a4_44_46_0 = load temp_42_ptr_of_a4_44_46:ptr->i32 
              #                    occupy a0 with temp_42_ptr_of_a4_44_46
              #                    occupy a2 with temp_43_ele_of_a4_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_43_ele_of_a4_44_46_0
              #                    store to temp_43_ele_of_a4_44_46_0 in mem offset legal
    sw      a2,900(sp)
              #                    release a2 with temp_43_ele_of_a4_44_46_0
              #                    free a0
              #                     1207 untrack temp_42_ptr_of_a4_44_46 
              #                    occupy a0 with temp_42_ptr_of_a4_44_46
              #                    release a0 with temp_42_ptr_of_a4_44_46
              #                     191  mu a4_44:190 
              #                     1160 untrack a4_44 
              #                    occupy a3 with a4_44
              #                    release a3 with a4_44
              #                     193  temp_44_arithop_46_0 = Add i32 temp_41_arithop_46_0, temp_43_ele_of_a4_44_46_0 
              #                    occupy s7 with temp_41_arithop_46_0
              #                    occupy a0 with temp_43_ele_of_a4_44_46_0
              #                    load from temp_43_ele_of_a4_44_46_0 in mem


    lw      a0,900(sp)
              #                    occupy a2 with temp_44_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                     1223 untrack temp_41_arithop_46_0 
              #                    occupy s7 with temp_41_arithop_46_0
              #                    release s7 with temp_41_arithop_46_0
              #                     1092 untrack temp_43_ele_of_a4_44_46_0 
              #                    occupy a0 with temp_43_ele_of_a4_44_46_0
              #                    release a0 with temp_43_ele_of_a4_44_46_0
              #                     194  (nop) 
              #                     196  temp_45_ptr_of_a5_44_46 = GEP a5_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_45_ptr_of_a5_44_46
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with a5_44
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     198  temp_46_ele_of_a5_44_46_0 = load temp_45_ptr_of_a5_44_46:ptr->i32 
              #                    occupy a0 with temp_45_ptr_of_a5_44_46
              #                    occupy s7 with temp_46_ele_of_a5_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_46_ele_of_a5_44_46_0
              #                    store to temp_46_ele_of_a5_44_46_0 in mem offset legal
    sw      s7,884(sp)
              #                    release s7 with temp_46_ele_of_a5_44_46_0
              #                    free a0
              #                     1098 untrack temp_45_ptr_of_a5_44_46 
              #                    occupy a0 with temp_45_ptr_of_a5_44_46
              #                    release a0 with temp_45_ptr_of_a5_44_46
              #                     199  mu a5_44:198 
              #                     201  temp_47_arithop_46_0 = Add i32 temp_44_arithop_46_0, temp_46_ele_of_a5_44_46_0 
              #                    occupy a2 with temp_44_arithop_46_0
              #                    occupy a0 with temp_46_ele_of_a5_44_46_0
              #                    load from temp_46_ele_of_a5_44_46_0 in mem


    lw      a0,884(sp)
              #                    occupy s7 with temp_47_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_44_arithop_46_0
              #                    store to temp_44_arithop_46_0 in mem offset legal
    sw      a2,896(sp)
              #                    release a2 with temp_44_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1204 untrack temp_44_arithop_46_0 
              #                     1101 untrack temp_46_ele_of_a5_44_46_0 
              #                    occupy a0 with temp_46_ele_of_a5_44_46_0
              #                    release a0 with temp_46_ele_of_a5_44_46_0
              #                     203  temp_48_ptr_of_a5_44_46 = GEP a5_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_48_ptr_of_a5_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a4 with a5_44
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     205  temp_49_ele_of_a5_44_46_0 = load temp_48_ptr_of_a5_44_46:ptr->i32 
              #                    occupy a0 with temp_48_ptr_of_a5_44_46
              #                    occupy a2 with temp_49_ele_of_a5_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_49_ele_of_a5_44_46_0
              #                    store to temp_49_ele_of_a5_44_46_0 in mem offset legal
    sw      a2,868(sp)
              #                    release a2 with temp_49_ele_of_a5_44_46_0
              #                    free a0
              #                     1149 untrack temp_48_ptr_of_a5_44_46 
              #                    occupy a0 with temp_48_ptr_of_a5_44_46
              #                    release a0 with temp_48_ptr_of_a5_44_46
              #                     206  mu a5_44:205 
              #                     1162 untrack a5_44 
              #                    occupy a4 with a5_44
              #                    release a4 with a5_44
              #                     208  temp_50_arithop_46_0 = Add i32 temp_47_arithop_46_0, temp_49_ele_of_a5_44_46_0 
              #                    occupy s7 with temp_47_arithop_46_0
              #                    occupy a0 with temp_49_ele_of_a5_44_46_0
              #                    load from temp_49_ele_of_a5_44_46_0 in mem


    lw      a0,868(sp)
              #                    occupy a2 with temp_50_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                     1103 untrack temp_47_arithop_46_0 
              #                    occupy s7 with temp_47_arithop_46_0
              #                    release s7 with temp_47_arithop_46_0
              #                     1079 untrack temp_49_ele_of_a5_44_46_0 
              #                    occupy a0 with temp_49_ele_of_a5_44_46_0
              #                    release a0 with temp_49_ele_of_a5_44_46_0
              #                     209  (nop) 
              #                     211  temp_51_ptr_of_a6_44_46 = GEP a6_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_51_ptr_of_a6_44_46
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
              #                    occupy a5 with a6_44
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     213  temp_52_ele_of_a6_44_46_0 = load temp_51_ptr_of_a6_44_46:ptr->i32 
              #                    occupy a0 with temp_51_ptr_of_a6_44_46
              #                    occupy s7 with temp_52_ele_of_a6_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_52_ele_of_a6_44_46_0
              #                    store to temp_52_ele_of_a6_44_46_0 in mem offset legal
    sw      s7,852(sp)
              #                    release s7 with temp_52_ele_of_a6_44_46_0
              #                    free a0
              #                     1078 untrack temp_51_ptr_of_a6_44_46 
              #                    occupy a0 with temp_51_ptr_of_a6_44_46
              #                    release a0 with temp_51_ptr_of_a6_44_46
              #                     214  mu a6_44:213 
              #                     216  temp_53_arithop_46_0 = Add i32 temp_50_arithop_46_0, temp_52_ele_of_a6_44_46_0 
              #                    occupy a2 with temp_50_arithop_46_0
              #                    occupy a0 with temp_52_ele_of_a6_44_46_0
              #                    load from temp_52_ele_of_a6_44_46_0 in mem


    lw      a0,852(sp)
              #                    occupy s7 with temp_53_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_50_arithop_46_0
              #                    store to temp_50_arithop_46_0 in mem offset legal
    sw      a2,864(sp)
              #                    release a2 with temp_50_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1181 untrack temp_52_ele_of_a6_44_46_0 
              #                    occupy a0 with temp_52_ele_of_a6_44_46_0
              #                    release a0 with temp_52_ele_of_a6_44_46_0
              #                     1090 untrack temp_50_arithop_46_0 
              #                     218  temp_54_ptr_of_a6_44_46 = GEP a6_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_54_ptr_of_a6_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a5 with a6_44
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     220  temp_55_ele_of_a6_44_46_0 = load temp_54_ptr_of_a6_44_46:ptr->i32 
              #                    occupy a0 with temp_54_ptr_of_a6_44_46
              #                    occupy a2 with temp_55_ele_of_a6_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_55_ele_of_a6_44_46_0
              #                    store to temp_55_ele_of_a6_44_46_0 in mem offset legal
    sw      a2,836(sp)
              #                    release a2 with temp_55_ele_of_a6_44_46_0
              #                    free a0
              #                     1108 untrack temp_54_ptr_of_a6_44_46 
              #                    occupy a0 with temp_54_ptr_of_a6_44_46
              #                    release a0 with temp_54_ptr_of_a6_44_46
              #                     221  mu a6_44:220 
              #                     1226 untrack a6_44 
              #                    occupy a5 with a6_44
              #                    release a5 with a6_44
              #                     223  temp_56_arithop_46_0 = Add i32 temp_53_arithop_46_0, temp_55_ele_of_a6_44_46_0 
              #                    occupy s7 with temp_53_arithop_46_0
              #                    occupy a0 with temp_55_ele_of_a6_44_46_0
              #                    load from temp_55_ele_of_a6_44_46_0 in mem


    lw      a0,836(sp)
              #                    occupy a2 with temp_56_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                     1168 untrack temp_55_ele_of_a6_44_46_0 
              #                    occupy a0 with temp_55_ele_of_a6_44_46_0
              #                    release a0 with temp_55_ele_of_a6_44_46_0
              #                     1082 untrack temp_53_arithop_46_0 
              #                    occupy s7 with temp_53_arithop_46_0
              #                    release s7 with temp_53_arithop_46_0
              #                     224  (nop) 
              #                     226  temp_57_ptr_of_a7_44_46 = GEP a7_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_57_ptr_of_a7_44_46
    li      a0, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
              #                    occupy a6 with a7_44
    add     a0,a0,a6
              #                    free a6
              #                    free a0
              #                     228  temp_58_ele_of_a7_44_46_0 = load temp_57_ptr_of_a7_44_46:ptr->i32 
              #                    occupy a0 with temp_57_ptr_of_a7_44_46
              #                    occupy s7 with temp_58_ele_of_a7_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_58_ele_of_a7_44_46_0
              #                    store to temp_58_ele_of_a7_44_46_0 in mem offset legal
    sw      s7,820(sp)
              #                    release s7 with temp_58_ele_of_a7_44_46_0
              #                    free a0
              #                     1218 untrack temp_57_ptr_of_a7_44_46 
              #                    occupy a0 with temp_57_ptr_of_a7_44_46
              #                    release a0 with temp_57_ptr_of_a7_44_46
              #                     229  mu a7_44:228 
              #                     231  temp_59_arithop_46_0 = Add i32 temp_56_arithop_46_0, temp_58_ele_of_a7_44_46_0 
              #                    occupy a2 with temp_56_arithop_46_0
              #                    occupy a0 with temp_58_ele_of_a7_44_46_0
              #                    load from temp_58_ele_of_a7_44_46_0 in mem


    lw      a0,820(sp)
              #                    occupy s7 with temp_59_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_56_arithop_46_0
              #                    store to temp_56_arithop_46_0 in mem offset legal
    sw      a2,832(sp)
              #                    release a2 with temp_56_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1259 untrack temp_58_ele_of_a7_44_46_0 
              #                    occupy a0 with temp_58_ele_of_a7_44_46_0
              #                    release a0 with temp_58_ele_of_a7_44_46_0
              #                     1258 untrack temp_56_arithop_46_0 
              #                     233  temp_60_ptr_of_a7_44_46 = GEP a7_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_60_ptr_of_a7_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a6 with a7_44
    add     a0,a0,a6
              #                    free a6
              #                    free a0
              #                     235  temp_61_ele_of_a7_44_46_0 = load temp_60_ptr_of_a7_44_46:ptr->i32 
              #                    occupy a0 with temp_60_ptr_of_a7_44_46
              #                    occupy a2 with temp_61_ele_of_a7_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_61_ele_of_a7_44_46_0
              #                    store to temp_61_ele_of_a7_44_46_0 in mem offset legal
    sw      a2,804(sp)
              #                    release a2 with temp_61_ele_of_a7_44_46_0
              #                    free a0
              #                     1191 untrack temp_60_ptr_of_a7_44_46 
              #                    occupy a0 with temp_60_ptr_of_a7_44_46
              #                    release a0 with temp_60_ptr_of_a7_44_46
              #                     236  mu a7_44:235 
              #                     1121 untrack a7_44 
              #                    occupy a6 with a7_44
              #                    release a6 with a7_44
              #                     238  temp_62_arithop_46_0 = Add i32 temp_59_arithop_46_0, temp_61_ele_of_a7_44_46_0 
              #                    occupy s7 with temp_59_arithop_46_0
              #                    occupy a0 with temp_61_ele_of_a7_44_46_0
              #                    load from temp_61_ele_of_a7_44_46_0 in mem


    lw      a0,804(sp)
              #                    occupy a2 with temp_62_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                     1178 untrack temp_59_arithop_46_0 
              #                    occupy s7 with temp_59_arithop_46_0
              #                    release s7 with temp_59_arithop_46_0
              #                     1077 untrack temp_61_ele_of_a7_44_46_0 
              #                    occupy a0 with temp_61_ele_of_a7_44_46_0
              #                    release a0 with temp_61_ele_of_a7_44_46_0
              #                     239  (nop) 
              #                     241  temp_63_ptr_of_a8_44_46 = GEP a8_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_63_ptr_of_a8_44_46
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
              #                    occupy a7 with a8_44
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     243  temp_64_ele_of_a8_44_46_0 = load temp_63_ptr_of_a8_44_46:ptr->i32 
              #                    occupy a0 with temp_63_ptr_of_a8_44_46
              #                    occupy s7 with temp_64_ele_of_a8_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_64_ele_of_a8_44_46_0
              #                    store to temp_64_ele_of_a8_44_46_0 in mem offset legal
    sw      s7,788(sp)
              #                    release s7 with temp_64_ele_of_a8_44_46_0
              #                    free a0
              #                     1257 untrack temp_63_ptr_of_a8_44_46 
              #                    occupy a0 with temp_63_ptr_of_a8_44_46
              #                    release a0 with temp_63_ptr_of_a8_44_46
              #                     244  mu a8_44:243 
              #                     246  temp_65_arithop_46_0 = Add i32 temp_62_arithop_46_0, temp_64_ele_of_a8_44_46_0 
              #                    occupy a2 with temp_62_arithop_46_0
              #                    occupy a0 with temp_64_ele_of_a8_44_46_0
              #                    load from temp_64_ele_of_a8_44_46_0 in mem


    lw      a0,788(sp)
              #                    occupy s7 with temp_65_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_62_arithop_46_0
              #                    store to temp_62_arithop_46_0 in mem offset legal
    sw      a2,800(sp)
              #                    release a2 with temp_62_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1217 untrack temp_64_ele_of_a8_44_46_0 
              #                    occupy a0 with temp_64_ele_of_a8_44_46_0
              #                    release a0 with temp_64_ele_of_a8_44_46_0
              #                     1113 untrack temp_62_arithop_46_0 
              #                     248  temp_66_ptr_of_a8_44_46 = GEP a8_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_66_ptr_of_a8_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a7 with a8_44
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     250  temp_67_ele_of_a8_44_46_0 = load temp_66_ptr_of_a8_44_46:ptr->i32 
              #                    occupy a0 with temp_66_ptr_of_a8_44_46
              #                    occupy a2 with temp_67_ele_of_a8_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_67_ele_of_a8_44_46_0
              #                    store to temp_67_ele_of_a8_44_46_0 in mem offset legal
    sw      a2,772(sp)
              #                    release a2 with temp_67_ele_of_a8_44_46_0
              #                    free a0
              #                     1161 untrack temp_66_ptr_of_a8_44_46 
              #                    occupy a0 with temp_66_ptr_of_a8_44_46
              #                    release a0 with temp_66_ptr_of_a8_44_46
              #                     251  mu a8_44:250 
              #                     1247 untrack a8_44 
              #                    occupy a7 with a8_44
              #                    release a7 with a8_44
              #                     253  temp_68_arithop_46_0 = Add i32 temp_65_arithop_46_0, temp_67_ele_of_a8_44_46_0 
              #                    occupy s7 with temp_65_arithop_46_0
              #                    occupy a0 with temp_67_ele_of_a8_44_46_0
              #                    load from temp_67_ele_of_a8_44_46_0 in mem


    lw      a0,772(sp)
              #                    occupy a2 with temp_68_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    free a0
              #                    free a2
              #                     1185 untrack temp_67_ele_of_a8_44_46_0 
              #                    occupy a0 with temp_67_ele_of_a8_44_46_0
              #                    release a0 with temp_67_ele_of_a8_44_46_0
              #                     1063 untrack temp_65_arithop_46_0 
              #                    occupy s7 with temp_65_arithop_46_0
              #                    release s7 with temp_65_arithop_46_0
              #                     254  (nop) 
              #                     256  temp_69_ptr_of_a9_44_46 = GEP a9_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_69_ptr_of_a9_44_46
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a0,a0,a7
              #                    free a7
    slli a0,a0,2
              #                    occupy s7 with a9_44
              #                    load from a9_44 in mem
    ld      s7,1536(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a9_44
              #                    store to a9_44 in mem offset legal
    sd      s7,1536(sp)
              #                    release s7 with a9_44
              #                    free a0
              #                     258  temp_70_ele_of_a9_44_46_0 = load temp_69_ptr_of_a9_44_46:ptr->i32 
              #                    occupy a0 with temp_69_ptr_of_a9_44_46
              #                    occupy s7 with temp_70_ele_of_a9_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_70_ele_of_a9_44_46_0
              #                    store to temp_70_ele_of_a9_44_46_0 in mem offset legal
    sw      s7,756(sp)
              #                    release s7 with temp_70_ele_of_a9_44_46_0
              #                    free a0
              #                     1062 untrack temp_69_ptr_of_a9_44_46 
              #                    occupy a0 with temp_69_ptr_of_a9_44_46
              #                    release a0 with temp_69_ptr_of_a9_44_46
              #                     259  mu a9_44:258 
              #                     261  temp_71_arithop_46_0 = Add i32 temp_68_arithop_46_0, temp_70_ele_of_a9_44_46_0 
              #                    occupy a2 with temp_68_arithop_46_0
              #                    occupy a0 with temp_70_ele_of_a9_44_46_0
              #                    load from temp_70_ele_of_a9_44_46_0 in mem


    lw      a0,756(sp)
              #                    occupy s7 with temp_71_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_68_arithop_46_0
              #                    store to temp_68_arithop_46_0 in mem offset legal
    sw      a2,768(sp)
              #                    release a2 with temp_68_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1236 untrack temp_68_arithop_46_0 
              #                     1076 untrack temp_70_ele_of_a9_44_46_0 
              #                    occupy a0 with temp_70_ele_of_a9_44_46_0
              #                    release a0 with temp_70_ele_of_a9_44_46_0
              #                     263  temp_72_ptr_of_a9_44_46 = GEP a9_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_72_ptr_of_a9_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a9_44
              #                    load from a9_44 in mem
    ld      a2,1536(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a9_44
              #                    store to a9_44 in mem offset legal
    sd      a2,1536(sp)
              #                    release a2 with a9_44
              #                    free a0
              #                     265  temp_73_ele_of_a9_44_46_0 = load temp_72_ptr_of_a9_44_46:ptr->i32 
              #                    occupy a0 with temp_72_ptr_of_a9_44_46
              #                    occupy a2 with temp_73_ele_of_a9_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_73_ele_of_a9_44_46_0
              #                    store to temp_73_ele_of_a9_44_46_0 in mem offset legal
    sw      a2,740(sp)
              #                    release a2 with temp_73_ele_of_a9_44_46_0
              #                    free a0
              #                     1106 untrack temp_72_ptr_of_a9_44_46 
              #                    occupy a0 with temp_72_ptr_of_a9_44_46
              #                    release a0 with temp_72_ptr_of_a9_44_46
              #                     266  mu a9_44:265 
              #                     1188 untrack a9_44 
              #                     268  temp_74_arithop_46_0 = Add i32 temp_71_arithop_46_0, temp_73_ele_of_a9_44_46_0 
              #                    occupy s7 with temp_71_arithop_46_0
              #                    occupy a0 with temp_73_ele_of_a9_44_46_0
              #                    load from temp_73_ele_of_a9_44_46_0 in mem


    lw      a0,740(sp)
              #                    occupy a2 with temp_74_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_71_arithop_46_0
              #                    store to temp_71_arithop_46_0 in mem offset legal
    sw      s7,752(sp)
              #                    release s7 with temp_71_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1136 untrack temp_71_arithop_46_0 
              #                     1128 untrack temp_73_ele_of_a9_44_46_0 
              #                    occupy a0 with temp_73_ele_of_a9_44_46_0
              #                    release a0 with temp_73_ele_of_a9_44_46_0
              #                     269  (nop) 
              #                     271  temp_75_ptr_of_a10_44_46 = GEP a10_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_75_ptr_of_a10_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a10_44
              #                    load from a10_44 in mem
    ld      s7,1520(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a10_44
              #                    store to a10_44 in mem offset legal
    sd      s7,1520(sp)
              #                    release s7 with a10_44
              #                    free a0
              #                     273  temp_76_ele_of_a10_44_46_0 = load temp_75_ptr_of_a10_44_46:ptr->i32 
              #                    occupy a0 with temp_75_ptr_of_a10_44_46
              #                    occupy s7 with temp_76_ele_of_a10_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_76_ele_of_a10_44_46_0
              #                    store to temp_76_ele_of_a10_44_46_0 in mem offset legal
    sw      s7,724(sp)
              #                    release s7 with temp_76_ele_of_a10_44_46_0
              #                    free a0
              #                     1115 untrack temp_75_ptr_of_a10_44_46 
              #                    occupy a0 with temp_75_ptr_of_a10_44_46
              #                    release a0 with temp_75_ptr_of_a10_44_46
              #                     274  mu a10_44:273 
              #                     276  temp_77_arithop_46_0 = Add i32 temp_74_arithop_46_0, temp_76_ele_of_a10_44_46_0 
              #                    occupy a2 with temp_74_arithop_46_0
              #                    occupy a0 with temp_76_ele_of_a10_44_46_0
              #                    load from temp_76_ele_of_a10_44_46_0 in mem


    lw      a0,724(sp)
              #                    occupy s7 with temp_77_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_74_arithop_46_0
              #                    store to temp_74_arithop_46_0 in mem offset legal
    sw      a2,736(sp)
              #                    release a2 with temp_74_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1153 untrack temp_76_ele_of_a10_44_46_0 
              #                    occupy a0 with temp_76_ele_of_a10_44_46_0
              #                    release a0 with temp_76_ele_of_a10_44_46_0
              #                     1148 untrack temp_74_arithop_46_0 
              #                     278  temp_78_ptr_of_a10_44_46 = GEP a10_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_78_ptr_of_a10_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a10_44
              #                    load from a10_44 in mem
    ld      a2,1520(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a10_44
              #                    store to a10_44 in mem offset legal
    sd      a2,1520(sp)
              #                    release a2 with a10_44
              #                    free a0
              #                     280  temp_79_ele_of_a10_44_46_0 = load temp_78_ptr_of_a10_44_46:ptr->i32 
              #                    occupy a0 with temp_78_ptr_of_a10_44_46
              #                    occupy a2 with temp_79_ele_of_a10_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_79_ele_of_a10_44_46_0
              #                    store to temp_79_ele_of_a10_44_46_0 in mem offset legal
    sw      a2,708(sp)
              #                    release a2 with temp_79_ele_of_a10_44_46_0
              #                    free a0
              #                     1250 untrack temp_78_ptr_of_a10_44_46 
              #                    occupy a0 with temp_78_ptr_of_a10_44_46
              #                    release a0 with temp_78_ptr_of_a10_44_46
              #                     281  mu a10_44:280 
              #                     1157 untrack a10_44 
              #                     283  temp_80_arithop_46_0 = Add i32 temp_77_arithop_46_0, temp_79_ele_of_a10_44_46_0 
              #                    occupy s7 with temp_77_arithop_46_0
              #                    occupy a0 with temp_79_ele_of_a10_44_46_0
              #                    load from temp_79_ele_of_a10_44_46_0 in mem


    lw      a0,708(sp)
              #                    occupy a2 with temp_80_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_77_arithop_46_0
              #                    store to temp_77_arithop_46_0 in mem offset legal
    sw      s7,720(sp)
              #                    release s7 with temp_77_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1184 untrack temp_79_ele_of_a10_44_46_0 
              #                    occupy a0 with temp_79_ele_of_a10_44_46_0
              #                    release a0 with temp_79_ele_of_a10_44_46_0
              #                     1147 untrack temp_77_arithop_46_0 
              #                     284  (nop) 
              #                     286  temp_81_ptr_of_a11_44_46 = GEP a11_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_81_ptr_of_a11_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a11_44
              #                    load from a11_44 in mem
    ld      s7,1504(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a11_44
              #                    store to a11_44 in mem offset legal
    sd      s7,1504(sp)
              #                    release s7 with a11_44
              #                    free a0
              #                     288  temp_82_ele_of_a11_44_46_0 = load temp_81_ptr_of_a11_44_46:ptr->i32 
              #                    occupy a0 with temp_81_ptr_of_a11_44_46
              #                    occupy s7 with temp_82_ele_of_a11_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_82_ele_of_a11_44_46_0
              #                    store to temp_82_ele_of_a11_44_46_0 in mem offset legal
    sw      s7,692(sp)
              #                    release s7 with temp_82_ele_of_a11_44_46_0
              #                    free a0
              #                     1190 untrack temp_81_ptr_of_a11_44_46 
              #                    occupy a0 with temp_81_ptr_of_a11_44_46
              #                    release a0 with temp_81_ptr_of_a11_44_46
              #                     289  mu a11_44:288 
              #                     291  temp_83_arithop_46_0 = Add i32 temp_80_arithop_46_0, temp_82_ele_of_a11_44_46_0 
              #                    occupy a2 with temp_80_arithop_46_0
              #                    occupy a0 with temp_82_ele_of_a11_44_46_0
              #                    load from temp_82_ele_of_a11_44_46_0 in mem


    lw      a0,692(sp)
              #                    occupy s7 with temp_83_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_80_arithop_46_0
              #                    store to temp_80_arithop_46_0 in mem offset legal
    sw      a2,704(sp)
              #                    release a2 with temp_80_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1222 untrack temp_80_arithop_46_0 
              #                     1134 untrack temp_82_ele_of_a11_44_46_0 
              #                    occupy a0 with temp_82_ele_of_a11_44_46_0
              #                    release a0 with temp_82_ele_of_a11_44_46_0
              #                     293  temp_84_ptr_of_a11_44_46 = GEP a11_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_84_ptr_of_a11_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a11_44
              #                    load from a11_44 in mem
    ld      a2,1504(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a11_44
              #                    store to a11_44 in mem offset legal
    sd      a2,1504(sp)
              #                    release a2 with a11_44
              #                    free a0
              #                     295  temp_85_ele_of_a11_44_46_0 = load temp_84_ptr_of_a11_44_46:ptr->i32 
              #                    occupy a0 with temp_84_ptr_of_a11_44_46
              #                    occupy a2 with temp_85_ele_of_a11_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_85_ele_of_a11_44_46_0
              #                    store to temp_85_ele_of_a11_44_46_0 in mem offset legal
    sw      a2,676(sp)
              #                    release a2 with temp_85_ele_of_a11_44_46_0
              #                    free a0
              #                     1203 untrack temp_84_ptr_of_a11_44_46 
              #                    occupy a0 with temp_84_ptr_of_a11_44_46
              #                    release a0 with temp_84_ptr_of_a11_44_46
              #                     296  mu a11_44:295 
              #                     1107 untrack a11_44 
              #                     298  temp_86_arithop_46_0 = Add i32 temp_83_arithop_46_0, temp_85_ele_of_a11_44_46_0 
              #                    occupy s7 with temp_83_arithop_46_0
              #                    occupy a0 with temp_85_ele_of_a11_44_46_0
              #                    load from temp_85_ele_of_a11_44_46_0 in mem


    lw      a0,676(sp)
              #                    occupy a2 with temp_86_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_83_arithop_46_0
              #                    store to temp_83_arithop_46_0 in mem offset legal
    sw      s7,688(sp)
              #                    release s7 with temp_83_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1220 untrack temp_85_ele_of_a11_44_46_0 
              #                    occupy a0 with temp_85_ele_of_a11_44_46_0
              #                    release a0 with temp_85_ele_of_a11_44_46_0
              #                     1158 untrack temp_83_arithop_46_0 
              #                     299  (nop) 
              #                     301  temp_87_ptr_of_a12_44_46 = GEP a12_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_87_ptr_of_a12_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a12_44
              #                    load from a12_44 in mem
    ld      s7,1488(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a12_44
              #                    store to a12_44 in mem offset legal
    sd      s7,1488(sp)
              #                    release s7 with a12_44
              #                    free a0
              #                     303  temp_88_ele_of_a12_44_46_0 = load temp_87_ptr_of_a12_44_46:ptr->i32 
              #                    occupy a0 with temp_87_ptr_of_a12_44_46
              #                    occupy s7 with temp_88_ele_of_a12_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_88_ele_of_a12_44_46_0
              #                    store to temp_88_ele_of_a12_44_46_0 in mem offset legal
    sw      s7,660(sp)
              #                    release s7 with temp_88_ele_of_a12_44_46_0
              #                    free a0
              #                     1145 untrack temp_87_ptr_of_a12_44_46 
              #                    occupy a0 with temp_87_ptr_of_a12_44_46
              #                    release a0 with temp_87_ptr_of_a12_44_46
              #                     304  mu a12_44:303 
              #                     306  temp_89_arithop_46_0 = Add i32 temp_86_arithop_46_0, temp_88_ele_of_a12_44_46_0 
              #                    occupy a2 with temp_86_arithop_46_0
              #                    occupy a0 with temp_88_ele_of_a12_44_46_0
              #                    load from temp_88_ele_of_a12_44_46_0 in mem


    lw      a0,660(sp)
              #                    occupy s7 with temp_89_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_86_arithop_46_0
              #                    store to temp_86_arithop_46_0 in mem offset legal
    sw      a2,672(sp)
              #                    release a2 with temp_86_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1133 untrack temp_86_arithop_46_0 
              #                     1089 untrack temp_88_ele_of_a12_44_46_0 
              #                    occupy a0 with temp_88_ele_of_a12_44_46_0
              #                    release a0 with temp_88_ele_of_a12_44_46_0
              #                     308  temp_90_ptr_of_a12_44_46 = GEP a12_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_90_ptr_of_a12_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a12_44
              #                    load from a12_44 in mem
    ld      a2,1488(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a12_44
              #                    store to a12_44 in mem offset legal
    sd      a2,1488(sp)
              #                    release a2 with a12_44
              #                    free a0
              #                     310  temp_91_ele_of_a12_44_46_0 = load temp_90_ptr_of_a12_44_46:ptr->i32 
              #                    occupy a0 with temp_90_ptr_of_a12_44_46
              #                    occupy a2 with temp_91_ele_of_a12_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_91_ele_of_a12_44_46_0
              #                    store to temp_91_ele_of_a12_44_46_0 in mem offset legal
    sw      a2,644(sp)
              #                    release a2 with temp_91_ele_of_a12_44_46_0
              #                    free a0
              #                     1056 untrack temp_90_ptr_of_a12_44_46 
              #                    occupy a0 with temp_90_ptr_of_a12_44_46
              #                    release a0 with temp_90_ptr_of_a12_44_46
              #                     311  mu a12_44:310 
              #                     1213 untrack a12_44 
              #                     313  temp_92_arithop_46_0 = Add i32 temp_89_arithop_46_0, temp_91_ele_of_a12_44_46_0 
              #                    occupy s7 with temp_89_arithop_46_0
              #                    occupy a0 with temp_91_ele_of_a12_44_46_0
              #                    load from temp_91_ele_of_a12_44_46_0 in mem


    lw      a0,644(sp)
              #                    occupy a2 with temp_92_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_89_arithop_46_0
              #                    store to temp_89_arithop_46_0 in mem offset legal
    sw      s7,656(sp)
              #                    release s7 with temp_89_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1219 untrack temp_89_arithop_46_0 
              #                     1165 untrack temp_91_ele_of_a12_44_46_0 
              #                    occupy a0 with temp_91_ele_of_a12_44_46_0
              #                    release a0 with temp_91_ele_of_a12_44_46_0
              #                     314  (nop) 
              #                     316  temp_93_ptr_of_a13_44_46 = GEP a13_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_93_ptr_of_a13_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a13_44
              #                    load from a13_44 in mem
    ld      s7,1472(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a13_44
              #                    store to a13_44 in mem offset legal
    sd      s7,1472(sp)
              #                    release s7 with a13_44
              #                    free a0
              #                     318  temp_94_ele_of_a13_44_46_0 = load temp_93_ptr_of_a13_44_46:ptr->i32 
              #                    occupy a0 with temp_93_ptr_of_a13_44_46
              #                    occupy s7 with temp_94_ele_of_a13_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_94_ele_of_a13_44_46_0
              #                    store to temp_94_ele_of_a13_44_46_0 in mem offset legal
    sw      s7,628(sp)
              #                    release s7 with temp_94_ele_of_a13_44_46_0
              #                    free a0
              #                     1152 untrack temp_93_ptr_of_a13_44_46 
              #                    occupy a0 with temp_93_ptr_of_a13_44_46
              #                    release a0 with temp_93_ptr_of_a13_44_46
              #                     319  mu a13_44:318 
              #                     321  temp_95_arithop_46_0 = Add i32 temp_92_arithop_46_0, temp_94_ele_of_a13_44_46_0 
              #                    occupy a2 with temp_92_arithop_46_0
              #                    occupy a0 with temp_94_ele_of_a13_44_46_0
              #                    load from temp_94_ele_of_a13_44_46_0 in mem


    lw      a0,628(sp)
              #                    occupy s7 with temp_95_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_92_arithop_46_0
              #                    store to temp_92_arithop_46_0 in mem offset legal
    sw      a2,640(sp)
              #                    release a2 with temp_92_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1227 untrack temp_92_arithop_46_0 
              #                     1202 untrack temp_94_ele_of_a13_44_46_0 
              #                    occupy a0 with temp_94_ele_of_a13_44_46_0
              #                    release a0 with temp_94_ele_of_a13_44_46_0
              #                     323  temp_96_ptr_of_a13_44_46 = GEP a13_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_96_ptr_of_a13_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a13_44
              #                    load from a13_44 in mem
    ld      a2,1472(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a13_44
              #                    store to a13_44 in mem offset legal
    sd      a2,1472(sp)
              #                    release a2 with a13_44
              #                    free a0
              #                     325  temp_97_ele_of_a13_44_46_0 = load temp_96_ptr_of_a13_44_46:ptr->i32 
              #                    occupy a0 with temp_96_ptr_of_a13_44_46
              #                    occupy a2 with temp_97_ele_of_a13_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_97_ele_of_a13_44_46_0
              #                    store to temp_97_ele_of_a13_44_46_0 in mem offset legal
    sw      a2,612(sp)
              #                    release a2 with temp_97_ele_of_a13_44_46_0
              #                    free a0
              #                     1140 untrack temp_96_ptr_of_a13_44_46 
              #                    occupy a0 with temp_96_ptr_of_a13_44_46
              #                    release a0 with temp_96_ptr_of_a13_44_46
              #                     326  mu a13_44:325 
              #                     1243 untrack a13_44 
              #                     328  temp_98_arithop_46_0 = Add i32 temp_95_arithop_46_0, temp_97_ele_of_a13_44_46_0 
              #                    occupy s7 with temp_95_arithop_46_0
              #                    occupy a0 with temp_97_ele_of_a13_44_46_0
              #                    load from temp_97_ele_of_a13_44_46_0 in mem


    lw      a0,612(sp)
              #                    occupy a2 with temp_98_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_95_arithop_46_0
              #                    store to temp_95_arithop_46_0 in mem offset legal
    sw      s7,624(sp)
              #                    release s7 with temp_95_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1144 untrack temp_97_ele_of_a13_44_46_0 
              #                    occupy a0 with temp_97_ele_of_a13_44_46_0
              #                    release a0 with temp_97_ele_of_a13_44_46_0
              #                     1066 untrack temp_95_arithop_46_0 
              #                     329  (nop) 
              #                     331  temp_99_ptr_of_a14_44_46 = GEP a14_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_99_ptr_of_a14_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a14_44
              #                    load from a14_44 in mem
    ld      s7,1456(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a14_44
              #                    store to a14_44 in mem offset legal
    sd      s7,1456(sp)
              #                    release s7 with a14_44
              #                    free a0
              #                     333  temp_100_ele_of_a14_44_46_0 = load temp_99_ptr_of_a14_44_46:ptr->i32 
              #                    occupy a0 with temp_99_ptr_of_a14_44_46
              #                    occupy s7 with temp_100_ele_of_a14_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_100_ele_of_a14_44_46_0
              #                    store to temp_100_ele_of_a14_44_46_0 in mem offset legal
    sw      s7,596(sp)
              #                    release s7 with temp_100_ele_of_a14_44_46_0
              #                    free a0
              #                     1180 untrack temp_99_ptr_of_a14_44_46 
              #                    occupy a0 with temp_99_ptr_of_a14_44_46
              #                    release a0 with temp_99_ptr_of_a14_44_46
              #                     334  mu a14_44:333 
              #                     336  temp_101_arithop_46_0 = Add i32 temp_98_arithop_46_0, temp_100_ele_of_a14_44_46_0 
              #                    occupy a2 with temp_98_arithop_46_0
              #                    occupy a0 with temp_100_ele_of_a14_44_46_0
              #                    load from temp_100_ele_of_a14_44_46_0 in mem


    lw      a0,596(sp)
              #                    occupy s7 with temp_101_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_98_arithop_46_0
              #                    store to temp_98_arithop_46_0 in mem offset legal
    sw      a2,608(sp)
              #                    release a2 with temp_98_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1246 untrack temp_98_arithop_46_0 
              #                     1044 untrack temp_100_ele_of_a14_44_46_0 
              #                    occupy a0 with temp_100_ele_of_a14_44_46_0
              #                    release a0 with temp_100_ele_of_a14_44_46_0
              #                     338  temp_102_ptr_of_a14_44_46 = GEP a14_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_102_ptr_of_a14_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a14_44
              #                    load from a14_44 in mem
    ld      a2,1456(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a14_44
              #                    store to a14_44 in mem offset legal
    sd      a2,1456(sp)
              #                    release a2 with a14_44
              #                    free a0
              #                     340  temp_103_ele_of_a14_44_46_0 = load temp_102_ptr_of_a14_44_46:ptr->i32 
              #                    occupy a0 with temp_102_ptr_of_a14_44_46
              #                    occupy a2 with temp_103_ele_of_a14_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_103_ele_of_a14_44_46_0
              #                    store to temp_103_ele_of_a14_44_46_0 in mem offset legal
    sw      a2,580(sp)
              #                    release a2 with temp_103_ele_of_a14_44_46_0
              #                    free a0
              #                     1228 untrack temp_102_ptr_of_a14_44_46 
              #                    occupy a0 with temp_102_ptr_of_a14_44_46
              #                    release a0 with temp_102_ptr_of_a14_44_46
              #                     341  mu a14_44:340 
              #                     1235 untrack a14_44 
              #                     343  temp_104_arithop_46_0 = Add i32 temp_101_arithop_46_0, temp_103_ele_of_a14_44_46_0 
              #                    occupy s7 with temp_101_arithop_46_0
              #                    occupy a0 with temp_103_ele_of_a14_44_46_0
              #                    load from temp_103_ele_of_a14_44_46_0 in mem


    lw      a0,580(sp)
              #                    occupy a2 with temp_104_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_101_arithop_46_0
              #                    store to temp_101_arithop_46_0 in mem offset legal
    sw      s7,592(sp)
              #                    release s7 with temp_101_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1135 untrack temp_101_arithop_46_0 
              #                     1075 untrack temp_103_ele_of_a14_44_46_0 
              #                    occupy a0 with temp_103_ele_of_a14_44_46_0
              #                    release a0 with temp_103_ele_of_a14_44_46_0
              #                     344  (nop) 
              #                     346  temp_105_ptr_of_a15_44_46 = GEP a15_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_105_ptr_of_a15_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a15_44
              #                    load from a15_44 in mem
    ld      s7,1440(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a15_44
              #                    store to a15_44 in mem offset legal
    sd      s7,1440(sp)
              #                    release s7 with a15_44
              #                    free a0
              #                     348  temp_106_ele_of_a15_44_46_0 = load temp_105_ptr_of_a15_44_46:ptr->i32 
              #                    occupy a0 with temp_105_ptr_of_a15_44_46
              #                    occupy s7 with temp_106_ele_of_a15_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_106_ele_of_a15_44_46_0
              #                    store to temp_106_ele_of_a15_44_46_0 in mem offset legal
    sw      s7,564(sp)
              #                    release s7 with temp_106_ele_of_a15_44_46_0
              #                    free a0
              #                     1117 untrack temp_105_ptr_of_a15_44_46 
              #                    occupy a0 with temp_105_ptr_of_a15_44_46
              #                    release a0 with temp_105_ptr_of_a15_44_46
              #                     349  mu a15_44:348 
              #                     351  temp_107_arithop_46_0 = Add i32 temp_104_arithop_46_0, temp_106_ele_of_a15_44_46_0 
              #                    occupy a2 with temp_104_arithop_46_0
              #                    occupy a0 with temp_106_ele_of_a15_44_46_0
              #                    load from temp_106_ele_of_a15_44_46_0 in mem


    lw      a0,564(sp)
              #                    occupy s7 with temp_107_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_104_arithop_46_0
              #                    store to temp_104_arithop_46_0 in mem offset legal
    sw      a2,576(sp)
              #                    release a2 with temp_104_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1253 untrack temp_104_arithop_46_0 
              #                     1177 untrack temp_106_ele_of_a15_44_46_0 
              #                    occupy a0 with temp_106_ele_of_a15_44_46_0
              #                    release a0 with temp_106_ele_of_a15_44_46_0
              #                     353  temp_108_ptr_of_a15_44_46 = GEP a15_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_108_ptr_of_a15_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a15_44
              #                    load from a15_44 in mem
    ld      a2,1440(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a15_44
              #                    store to a15_44 in mem offset legal
    sd      a2,1440(sp)
              #                    release a2 with a15_44
              #                    free a0
              #                     355  temp_109_ele_of_a15_44_46_0 = load temp_108_ptr_of_a15_44_46:ptr->i32 
              #                    occupy a0 with temp_108_ptr_of_a15_44_46
              #                    occupy a2 with temp_109_ele_of_a15_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_109_ele_of_a15_44_46_0
              #                    store to temp_109_ele_of_a15_44_46_0 in mem offset legal
    sw      a2,548(sp)
              #                    release a2 with temp_109_ele_of_a15_44_46_0
              #                    free a0
              #                     1164 untrack temp_108_ptr_of_a15_44_46 
              #                    occupy a0 with temp_108_ptr_of_a15_44_46
              #                    release a0 with temp_108_ptr_of_a15_44_46
              #                     356  mu a15_44:355 
              #                     1175 untrack a15_44 
              #                     358  temp_110_arithop_46_0 = Add i32 temp_107_arithop_46_0, temp_109_ele_of_a15_44_46_0 
              #                    occupy s7 with temp_107_arithop_46_0
              #                    occupy a0 with temp_109_ele_of_a15_44_46_0
              #                    load from temp_109_ele_of_a15_44_46_0 in mem


    lw      a0,548(sp)
              #                    occupy a2 with temp_110_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_107_arithop_46_0
              #                    store to temp_107_arithop_46_0 in mem offset legal
    sw      s7,560(sp)
              #                    release s7 with temp_107_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1166 untrack temp_109_ele_of_a15_44_46_0 
              #                    occupy a0 with temp_109_ele_of_a15_44_46_0
              #                    release a0 with temp_109_ele_of_a15_44_46_0
              #                     1073 untrack temp_107_arithop_46_0 
              #                     359  (nop) 
              #                     361  temp_111_ptr_of_a16_44_46 = GEP a16_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_111_ptr_of_a16_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a16_44
              #                    load from a16_44 in mem
    ld      s7,1424(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a16_44
              #                    store to a16_44 in mem offset legal
    sd      s7,1424(sp)
              #                    release s7 with a16_44
              #                    free a0
              #                     363  temp_112_ele_of_a16_44_46_0 = load temp_111_ptr_of_a16_44_46:ptr->i32 
              #                    occupy a0 with temp_111_ptr_of_a16_44_46
              #                    occupy s7 with temp_112_ele_of_a16_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_112_ele_of_a16_44_46_0
              #                    store to temp_112_ele_of_a16_44_46_0 in mem offset legal
    sw      s7,532(sp)
              #                    release s7 with temp_112_ele_of_a16_44_46_0
              #                    free a0
              #                     1183 untrack temp_111_ptr_of_a16_44_46 
              #                    occupy a0 with temp_111_ptr_of_a16_44_46
              #                    release a0 with temp_111_ptr_of_a16_44_46
              #                     364  mu a16_44:363 
              #                     366  temp_113_arithop_46_0 = Add i32 temp_110_arithop_46_0, temp_112_ele_of_a16_44_46_0 
              #                    occupy a2 with temp_110_arithop_46_0
              #                    occupy a0 with temp_112_ele_of_a16_44_46_0
              #                    load from temp_112_ele_of_a16_44_46_0 in mem


    lw      a0,532(sp)
              #                    occupy s7 with temp_113_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_110_arithop_46_0
              #                    store to temp_110_arithop_46_0 in mem offset legal
    sw      a2,544(sp)
              #                    release a2 with temp_110_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1132 untrack temp_110_arithop_46_0 
              #                     1068 untrack temp_112_ele_of_a16_44_46_0 
              #                    occupy a0 with temp_112_ele_of_a16_44_46_0
              #                    release a0 with temp_112_ele_of_a16_44_46_0
              #                     368  temp_114_ptr_of_a16_44_46 = GEP a16_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_114_ptr_of_a16_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a16_44
              #                    load from a16_44 in mem
    ld      a2,1424(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a16_44
              #                    store to a16_44 in mem offset legal
    sd      a2,1424(sp)
              #                    release a2 with a16_44
              #                    free a0
              #                     370  temp_115_ele_of_a16_44_46_0 = load temp_114_ptr_of_a16_44_46:ptr->i32 
              #                    occupy a0 with temp_114_ptr_of_a16_44_46
              #                    occupy a2 with temp_115_ele_of_a16_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_115_ele_of_a16_44_46_0
              #                    store to temp_115_ele_of_a16_44_46_0 in mem offset legal
    sw      a2,516(sp)
              #                    release a2 with temp_115_ele_of_a16_44_46_0
              #                    free a0
              #                     1233 untrack temp_114_ptr_of_a16_44_46 
              #                    occupy a0 with temp_114_ptr_of_a16_44_46
              #                    release a0 with temp_114_ptr_of_a16_44_46
              #                     371  mu a16_44:370 
              #                     1139 untrack a16_44 
              #                     373  temp_116_arithop_46_0 = Add i32 temp_113_arithop_46_0, temp_115_ele_of_a16_44_46_0 
              #                    occupy s7 with temp_113_arithop_46_0
              #                    occupy a0 with temp_115_ele_of_a16_44_46_0
              #                    load from temp_115_ele_of_a16_44_46_0 in mem


    lw      a0,516(sp)
              #                    occupy a2 with temp_116_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_113_arithop_46_0
              #                    store to temp_113_arithop_46_0 in mem offset legal
    sw      s7,528(sp)
              #                    release s7 with temp_113_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1256 untrack temp_113_arithop_46_0 
              #                     1176 untrack temp_115_ele_of_a16_44_46_0 
              #                    occupy a0 with temp_115_ele_of_a16_44_46_0
              #                    release a0 with temp_115_ele_of_a16_44_46_0
              #                     374  (nop) 
              #                     376  temp_117_ptr_of_a17_44_46 = GEP a17_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_117_ptr_of_a17_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a17_44
              #                    load from a17_44 in mem
    ld      s7,1408(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a17_44
              #                    store to a17_44 in mem offset legal
    sd      s7,1408(sp)
              #                    release s7 with a17_44
              #                    free a0
              #                     378  temp_118_ele_of_a17_44_46_0 = load temp_117_ptr_of_a17_44_46:ptr->i32 
              #                    occupy a0 with temp_117_ptr_of_a17_44_46
              #                    occupy s7 with temp_118_ele_of_a17_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_118_ele_of_a17_44_46_0
              #                    store to temp_118_ele_of_a17_44_46_0 in mem offset legal
    sw      s7,500(sp)
              #                    release s7 with temp_118_ele_of_a17_44_46_0
              #                    free a0
              #                     1193 untrack temp_117_ptr_of_a17_44_46 
              #                    occupy a0 with temp_117_ptr_of_a17_44_46
              #                    release a0 with temp_117_ptr_of_a17_44_46
              #                     379  mu a17_44:378 
              #                     381  temp_119_arithop_46_0 = Add i32 temp_116_arithop_46_0, temp_118_ele_of_a17_44_46_0 
              #                    occupy a2 with temp_116_arithop_46_0
              #                    occupy a0 with temp_118_ele_of_a17_44_46_0
              #                    load from temp_118_ele_of_a17_44_46_0 in mem


    lw      a0,500(sp)
              #                    occupy s7 with temp_119_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_116_arithop_46_0
              #                    store to temp_116_arithop_46_0 in mem offset legal
    sw      a2,512(sp)
              #                    release a2 with temp_116_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1212 untrack temp_116_arithop_46_0 
              #                     1122 untrack temp_118_ele_of_a17_44_46_0 
              #                    occupy a0 with temp_118_ele_of_a17_44_46_0
              #                    release a0 with temp_118_ele_of_a17_44_46_0
              #                     383  temp_120_ptr_of_a17_44_46 = GEP a17_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_120_ptr_of_a17_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a17_44
              #                    load from a17_44 in mem
    ld      a2,1408(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a17_44
              #                    store to a17_44 in mem offset legal
    sd      a2,1408(sp)
              #                    release a2 with a17_44
              #                    free a0
              #                     385  temp_121_ele_of_a17_44_46_0 = load temp_120_ptr_of_a17_44_46:ptr->i32 
              #                    occupy a0 with temp_120_ptr_of_a17_44_46
              #                    occupy a2 with temp_121_ele_of_a17_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_121_ele_of_a17_44_46_0
              #                    store to temp_121_ele_of_a17_44_46_0 in mem offset legal
    sw      a2,484(sp)
              #                    release a2 with temp_121_ele_of_a17_44_46_0
              #                    free a0
              #                     1201 untrack temp_120_ptr_of_a17_44_46 
              #                    occupy a0 with temp_120_ptr_of_a17_44_46
              #                    release a0 with temp_120_ptr_of_a17_44_46
              #                     386  mu a17_44:385 
              #                     1216 untrack a17_44 
              #                     388  temp_122_arithop_46_0 = Add i32 temp_119_arithop_46_0, temp_121_ele_of_a17_44_46_0 
              #                    occupy s7 with temp_119_arithop_46_0
              #                    occupy a0 with temp_121_ele_of_a17_44_46_0
              #                    load from temp_121_ele_of_a17_44_46_0 in mem


    lw      a0,484(sp)
              #                    occupy a2 with temp_122_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_119_arithop_46_0
              #                    store to temp_119_arithop_46_0 in mem offset legal
    sw      s7,496(sp)
              #                    release s7 with temp_119_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1054 untrack temp_121_ele_of_a17_44_46_0 
              #                    occupy a0 with temp_121_ele_of_a17_44_46_0
              #                    release a0 with temp_121_ele_of_a17_44_46_0
              #                     1053 untrack temp_119_arithop_46_0 
              #                     389  (nop) 
              #                     391  temp_123_ptr_of_a18_44_46 = GEP a18_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_123_ptr_of_a18_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a18_44
              #                    load from a18_44 in mem
    ld      s7,1392(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a18_44
              #                    store to a18_44 in mem offset legal
    sd      s7,1392(sp)
              #                    release s7 with a18_44
              #                    free a0
              #                     393  temp_124_ele_of_a18_44_46_0 = load temp_123_ptr_of_a18_44_46:ptr->i32 
              #                    occupy a0 with temp_123_ptr_of_a18_44_46
              #                    occupy s7 with temp_124_ele_of_a18_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_124_ele_of_a18_44_46_0
              #                    store to temp_124_ele_of_a18_44_46_0 in mem offset legal
    sw      s7,468(sp)
              #                    release s7 with temp_124_ele_of_a18_44_46_0
              #                    free a0
              #                     1251 untrack temp_123_ptr_of_a18_44_46 
              #                    occupy a0 with temp_123_ptr_of_a18_44_46
              #                    release a0 with temp_123_ptr_of_a18_44_46
              #                     394  mu a18_44:393 
              #                     396  temp_125_arithop_46_0 = Add i32 temp_122_arithop_46_0, temp_124_ele_of_a18_44_46_0 
              #                    occupy a2 with temp_122_arithop_46_0
              #                    occupy a0 with temp_124_ele_of_a18_44_46_0
              #                    load from temp_124_ele_of_a18_44_46_0 in mem


    lw      a0,468(sp)
              #                    occupy s7 with temp_125_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_122_arithop_46_0
              #                    store to temp_122_arithop_46_0 in mem offset legal
    sw      a2,480(sp)
              #                    release a2 with temp_122_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1199 untrack temp_122_arithop_46_0 
              #                     1179 untrack temp_124_ele_of_a18_44_46_0 
              #                    occupy a0 with temp_124_ele_of_a18_44_46_0
              #                    release a0 with temp_124_ele_of_a18_44_46_0
              #                     398  temp_126_ptr_of_a18_44_46 = GEP a18_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_126_ptr_of_a18_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a18_44
              #                    load from a18_44 in mem
    ld      a2,1392(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a18_44
              #                    store to a18_44 in mem offset legal
    sd      a2,1392(sp)
              #                    release a2 with a18_44
              #                    free a0
              #                     400  temp_127_ele_of_a18_44_46_0 = load temp_126_ptr_of_a18_44_46:ptr->i32 
              #                    occupy a0 with temp_126_ptr_of_a18_44_46
              #                    occupy a2 with temp_127_ele_of_a18_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_127_ele_of_a18_44_46_0
              #                    store to temp_127_ele_of_a18_44_46_0 in mem offset legal
    sw      a2,452(sp)
              #                    release a2 with temp_127_ele_of_a18_44_46_0
              #                    free a0
              #                     1146 untrack temp_126_ptr_of_a18_44_46 
              #                    occupy a0 with temp_126_ptr_of_a18_44_46
              #                    release a0 with temp_126_ptr_of_a18_44_46
              #                     401  mu a18_44:400 
              #                     1088 untrack a18_44 
              #                     403  temp_128_arithop_46_0 = Add i32 temp_125_arithop_46_0, temp_127_ele_of_a18_44_46_0 
              #                    occupy s7 with temp_125_arithop_46_0
              #                    occupy a0 with temp_127_ele_of_a18_44_46_0
              #                    load from temp_127_ele_of_a18_44_46_0 in mem


    lw      a0,452(sp)
              #                    occupy a2 with temp_128_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_125_arithop_46_0
              #                    store to temp_125_arithop_46_0 in mem offset legal
    sw      s7,464(sp)
              #                    release s7 with temp_125_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1244 untrack temp_125_arithop_46_0 
              #                     1059 untrack temp_127_ele_of_a18_44_46_0 
              #                    occupy a0 with temp_127_ele_of_a18_44_46_0
              #                    release a0 with temp_127_ele_of_a18_44_46_0
              #                     404  (nop) 
              #                     406  temp_129_ptr_of_a19_44_46 = GEP a19_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_129_ptr_of_a19_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a19_44
              #                    load from a19_44 in mem
    ld      s7,1376(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a19_44
              #                    store to a19_44 in mem offset legal
    sd      s7,1376(sp)
              #                    release s7 with a19_44
              #                    free a0
              #                     408  temp_130_ele_of_a19_44_46_0 = load temp_129_ptr_of_a19_44_46:ptr->i32 
              #                    occupy a0 with temp_129_ptr_of_a19_44_46
              #                    occupy s7 with temp_130_ele_of_a19_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_130_ele_of_a19_44_46_0
              #                    store to temp_130_ele_of_a19_44_46_0 in mem offset legal
    sw      s7,436(sp)
              #                    release s7 with temp_130_ele_of_a19_44_46_0
              #                    free a0
              #                     1124 untrack temp_129_ptr_of_a19_44_46 
              #                    occupy a0 with temp_129_ptr_of_a19_44_46
              #                    release a0 with temp_129_ptr_of_a19_44_46
              #                     409  mu a19_44:408 
              #                     411  temp_131_arithop_46_0 = Add i32 temp_128_arithop_46_0, temp_130_ele_of_a19_44_46_0 
              #                    occupy a2 with temp_128_arithop_46_0
              #                    occupy a0 with temp_130_ele_of_a19_44_46_0
              #                    load from temp_130_ele_of_a19_44_46_0 in mem


    lw      a0,436(sp)
              #                    occupy s7 with temp_131_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_128_arithop_46_0
              #                    store to temp_128_arithop_46_0 in mem offset legal
    sw      a2,448(sp)
              #                    release a2 with temp_128_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1172 untrack temp_128_arithop_46_0 
              #                     1129 untrack temp_130_ele_of_a19_44_46_0 
              #                    occupy a0 with temp_130_ele_of_a19_44_46_0
              #                    release a0 with temp_130_ele_of_a19_44_46_0
              #                     413  temp_132_ptr_of_a19_44_46 = GEP a19_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_132_ptr_of_a19_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a19_44
              #                    load from a19_44 in mem
    ld      a2,1376(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a19_44
              #                    store to a19_44 in mem offset legal
    sd      a2,1376(sp)
              #                    release a2 with a19_44
              #                    free a0
              #                     415  temp_133_ele_of_a19_44_46_0 = load temp_132_ptr_of_a19_44_46:ptr->i32 
              #                    occupy a0 with temp_132_ptr_of_a19_44_46
              #                    occupy a2 with temp_133_ele_of_a19_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_133_ele_of_a19_44_46_0
              #                    store to temp_133_ele_of_a19_44_46_0 in mem offset legal
    sw      a2,420(sp)
              #                    release a2 with temp_133_ele_of_a19_44_46_0
              #                    free a0
              #                     1242 untrack temp_132_ptr_of_a19_44_46 
              #                    occupy a0 with temp_132_ptr_of_a19_44_46
              #                    release a0 with temp_132_ptr_of_a19_44_46
              #                     416  mu a19_44:415 
              #                     1197 untrack a19_44 
              #                     418  temp_134_arithop_46_0 = Add i32 temp_131_arithop_46_0, temp_133_ele_of_a19_44_46_0 
              #                    occupy s7 with temp_131_arithop_46_0
              #                    occupy a0 with temp_133_ele_of_a19_44_46_0
              #                    load from temp_133_ele_of_a19_44_46_0 in mem


    lw      a0,420(sp)
              #                    occupy a2 with temp_134_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_131_arithop_46_0
              #                    store to temp_131_arithop_46_0 in mem offset legal
    sw      s7,432(sp)
              #                    release s7 with temp_131_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1208 untrack temp_131_arithop_46_0 
              #                     1041 untrack temp_133_ele_of_a19_44_46_0 
              #                    occupy a0 with temp_133_ele_of_a19_44_46_0
              #                    release a0 with temp_133_ele_of_a19_44_46_0
              #                     419  (nop) 
              #                     421  temp_135_ptr_of_a20_44_46 = GEP a20_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_135_ptr_of_a20_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a20_44
              #                    load from a20_44 in mem
    ld      s7,1360(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a20_44
              #                    store to a20_44 in mem offset legal
    sd      s7,1360(sp)
              #                    release s7 with a20_44
              #                    free a0
              #                     423  temp_136_ele_of_a20_44_46_0 = load temp_135_ptr_of_a20_44_46:ptr->i32 
              #                    occupy a0 with temp_135_ptr_of_a20_44_46
              #                    occupy s7 with temp_136_ele_of_a20_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_136_ele_of_a20_44_46_0
              #                    store to temp_136_ele_of_a20_44_46_0 in mem offset legal
    sw      s7,404(sp)
              #                    release s7 with temp_136_ele_of_a20_44_46_0
              #                    free a0
              #                     1130 untrack temp_135_ptr_of_a20_44_46 
              #                    occupy a0 with temp_135_ptr_of_a20_44_46
              #                    release a0 with temp_135_ptr_of_a20_44_46
              #                     424  mu a20_44:423 
              #                     426  temp_137_arithop_46_0 = Add i32 temp_134_arithop_46_0, temp_136_ele_of_a20_44_46_0 
              #                    occupy a2 with temp_134_arithop_46_0
              #                    occupy a0 with temp_136_ele_of_a20_44_46_0
              #                    load from temp_136_ele_of_a20_44_46_0 in mem


    lw      a0,404(sp)
              #                    occupy s7 with temp_137_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_134_arithop_46_0
              #                    store to temp_134_arithop_46_0 in mem offset legal
    sw      a2,416(sp)
              #                    release a2 with temp_134_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1240 untrack temp_136_ele_of_a20_44_46_0 
              #                    occupy a0 with temp_136_ele_of_a20_44_46_0
              #                    release a0 with temp_136_ele_of_a20_44_46_0
              #                     1040 untrack temp_134_arithop_46_0 
              #                     428  temp_138_ptr_of_a20_44_46 = GEP a20_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_138_ptr_of_a20_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a20_44
              #                    load from a20_44 in mem
    ld      a2,1360(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a20_44
              #                    store to a20_44 in mem offset legal
    sd      a2,1360(sp)
              #                    release a2 with a20_44
              #                    free a0
              #                     430  temp_139_ele_of_a20_44_46_0 = load temp_138_ptr_of_a20_44_46:ptr->i32 
              #                    occupy a0 with temp_138_ptr_of_a20_44_46
              #                    occupy a2 with temp_139_ele_of_a20_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_139_ele_of_a20_44_46_0
              #                    store to temp_139_ele_of_a20_44_46_0 in mem offset legal
    sw      a2,388(sp)
              #                    release a2 with temp_139_ele_of_a20_44_46_0
              #                    free a0
              #                     1126 untrack temp_138_ptr_of_a20_44_46 
              #                    occupy a0 with temp_138_ptr_of_a20_44_46
              #                    release a0 with temp_138_ptr_of_a20_44_46
              #                     431  mu a20_44:430 
              #                     1070 untrack a20_44 
              #                     433  temp_140_arithop_46_0 = Add i32 temp_137_arithop_46_0, temp_139_ele_of_a20_44_46_0 
              #                    occupy s7 with temp_137_arithop_46_0
              #                    occupy a0 with temp_139_ele_of_a20_44_46_0
              #                    load from temp_139_ele_of_a20_44_46_0 in mem


    lw      a0,388(sp)
              #                    occupy a2 with temp_140_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_137_arithop_46_0
              #                    store to temp_137_arithop_46_0 in mem offset legal
    sw      s7,400(sp)
              #                    release s7 with temp_137_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1239 untrack temp_139_ele_of_a20_44_46_0 
              #                    occupy a0 with temp_139_ele_of_a20_44_46_0
              #                    release a0 with temp_139_ele_of_a20_44_46_0
              #                     1060 untrack temp_137_arithop_46_0 
              #                     434  (nop) 
              #                     436  temp_141_ptr_of_a21_44_46 = GEP a21_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_141_ptr_of_a21_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a21_44
              #                    load from a21_44 in mem
    ld      s7,1344(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a21_44
              #                    store to a21_44 in mem offset legal
    sd      s7,1344(sp)
              #                    release s7 with a21_44
              #                    free a0
              #                     438  temp_142_ele_of_a21_44_46_0 = load temp_141_ptr_of_a21_44_46:ptr->i32 
              #                    occupy a0 with temp_141_ptr_of_a21_44_46
              #                    occupy s7 with temp_142_ele_of_a21_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_142_ele_of_a21_44_46_0
              #                    store to temp_142_ele_of_a21_44_46_0 in mem offset legal
    sw      s7,372(sp)
              #                    release s7 with temp_142_ele_of_a21_44_46_0
              #                    free a0
              #                     1249 untrack temp_141_ptr_of_a21_44_46 
              #                    occupy a0 with temp_141_ptr_of_a21_44_46
              #                    release a0 with temp_141_ptr_of_a21_44_46
              #                     439  mu a21_44:438 
              #                     441  temp_143_arithop_46_0 = Add i32 temp_140_arithop_46_0, temp_142_ele_of_a21_44_46_0 
              #                    occupy a2 with temp_140_arithop_46_0
              #                    occupy a0 with temp_142_ele_of_a21_44_46_0
              #                    load from temp_142_ele_of_a21_44_46_0 in mem


    lw      a0,372(sp)
              #                    occupy s7 with temp_143_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_140_arithop_46_0
              #                    store to temp_140_arithop_46_0 in mem offset legal
    sw      a2,384(sp)
              #                    release a2 with temp_140_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1138 untrack temp_142_ele_of_a21_44_46_0 
              #                    occupy a0 with temp_142_ele_of_a21_44_46_0
              #                    release a0 with temp_142_ele_of_a21_44_46_0
              #                     1051 untrack temp_140_arithop_46_0 
              #                     443  temp_144_ptr_of_a21_44_46 = GEP a21_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_144_ptr_of_a21_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a21_44
              #                    load from a21_44 in mem
    ld      a2,1344(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a21_44
              #                    store to a21_44 in mem offset legal
    sd      a2,1344(sp)
              #                    release a2 with a21_44
              #                    free a0
              #                     445  temp_145_ele_of_a21_44_46_0 = load temp_144_ptr_of_a21_44_46:ptr->i32 
              #                    occupy a0 with temp_144_ptr_of_a21_44_46
              #                    occupy a2 with temp_145_ele_of_a21_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_145_ele_of_a21_44_46_0
              #                    store to temp_145_ele_of_a21_44_46_0 in mem offset legal
    sw      a2,356(sp)
              #                    release a2 with temp_145_ele_of_a21_44_46_0
              #                    free a0
              #                     1097 untrack temp_144_ptr_of_a21_44_46 
              #                    occupy a0 with temp_144_ptr_of_a21_44_46
              #                    release a0 with temp_144_ptr_of_a21_44_46
              #                     446  mu a21_44:445 
              #                     1072 untrack a21_44 
              #                     448  temp_146_arithop_46_0 = Add i32 temp_143_arithop_46_0, temp_145_ele_of_a21_44_46_0 
              #                    occupy s7 with temp_143_arithop_46_0
              #                    occupy a0 with temp_145_ele_of_a21_44_46_0
              #                    load from temp_145_ele_of_a21_44_46_0 in mem


    lw      a0,356(sp)
              #                    occupy a2 with temp_146_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_143_arithop_46_0
              #                    store to temp_143_arithop_46_0 in mem offset legal
    sw      s7,368(sp)
              #                    release s7 with temp_143_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1142 untrack temp_143_arithop_46_0 
              #                     1067 untrack temp_145_ele_of_a21_44_46_0 
              #                    occupy a0 with temp_145_ele_of_a21_44_46_0
              #                    release a0 with temp_145_ele_of_a21_44_46_0
              #                     449  (nop) 
              #                     451  temp_147_ptr_of_a22_44_46 = GEP a22_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_147_ptr_of_a22_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a22_44
              #                    load from a22_44 in mem
    ld      s7,1328(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a22_44
              #                    store to a22_44 in mem offset legal
    sd      s7,1328(sp)
              #                    release s7 with a22_44
              #                    free a0
              #                     453  temp_148_ele_of_a22_44_46_0 = load temp_147_ptr_of_a22_44_46:ptr->i32 
              #                    occupy a0 with temp_147_ptr_of_a22_44_46
              #                    occupy s7 with temp_148_ele_of_a22_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_148_ele_of_a22_44_46_0
              #                    store to temp_148_ele_of_a22_44_46_0 in mem offset legal
    sw      s7,340(sp)
              #                    release s7 with temp_148_ele_of_a22_44_46_0
              #                    free a0
              #                     1081 untrack temp_147_ptr_of_a22_44_46 
              #                    occupy a0 with temp_147_ptr_of_a22_44_46
              #                    release a0 with temp_147_ptr_of_a22_44_46
              #                     454  mu a22_44:453 
              #                     456  temp_149_arithop_46_0 = Add i32 temp_146_arithop_46_0, temp_148_ele_of_a22_44_46_0 
              #                    occupy a2 with temp_146_arithop_46_0
              #                    occupy a0 with temp_148_ele_of_a22_44_46_0
              #                    load from temp_148_ele_of_a22_44_46_0 in mem


    lw      a0,340(sp)
              #                    occupy s7 with temp_149_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_146_arithop_46_0
              #                    store to temp_146_arithop_46_0 in mem offset legal
    sw      a2,352(sp)
              #                    release a2 with temp_146_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1155 untrack temp_146_arithop_46_0 
              #                     1118 untrack temp_148_ele_of_a22_44_46_0 
              #                    occupy a0 with temp_148_ele_of_a22_44_46_0
              #                    release a0 with temp_148_ele_of_a22_44_46_0
              #                     458  temp_150_ptr_of_a22_44_46 = GEP a22_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_150_ptr_of_a22_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a22_44
              #                    load from a22_44 in mem
    ld      a2,1328(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a22_44
              #                    store to a22_44 in mem offset legal
    sd      a2,1328(sp)
              #                    release a2 with a22_44
              #                    free a0
              #                     460  temp_151_ele_of_a22_44_46_0 = load temp_150_ptr_of_a22_44_46:ptr->i32 
              #                    occupy a0 with temp_150_ptr_of_a22_44_46
              #                    occupy a2 with temp_151_ele_of_a22_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_151_ele_of_a22_44_46_0
              #                    store to temp_151_ele_of_a22_44_46_0 in mem offset legal
    sw      a2,324(sp)
              #                    release a2 with temp_151_ele_of_a22_44_46_0
              #                    free a0
              #                     1189 untrack temp_150_ptr_of_a22_44_46 
              #                    occupy a0 with temp_150_ptr_of_a22_44_46
              #                    release a0 with temp_150_ptr_of_a22_44_46
              #                     461  mu a22_44:460 
              #                     1167 untrack a22_44 
              #                     463  temp_152_arithop_46_0 = Add i32 temp_149_arithop_46_0, temp_151_ele_of_a22_44_46_0 
              #                    occupy s7 with temp_149_arithop_46_0
              #                    occupy a0 with temp_151_ele_of_a22_44_46_0
              #                    load from temp_151_ele_of_a22_44_46_0 in mem


    lw      a0,324(sp)
              #                    occupy a2 with temp_152_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_149_arithop_46_0
              #                    store to temp_149_arithop_46_0 in mem offset legal
    sw      s7,336(sp)
              #                    release s7 with temp_149_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1252 untrack temp_149_arithop_46_0 
              #                     1112 untrack temp_151_ele_of_a22_44_46_0 
              #                    occupy a0 with temp_151_ele_of_a22_44_46_0
              #                    release a0 with temp_151_ele_of_a22_44_46_0
              #                     464  (nop) 
              #                     466  temp_153_ptr_of_a23_44_46 = GEP a23_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_153_ptr_of_a23_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a23_44
              #                    load from a23_44 in mem
    ld      s7,1312(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a23_44
              #                    store to a23_44 in mem offset legal
    sd      s7,1312(sp)
              #                    release s7 with a23_44
              #                    free a0
              #                     468  temp_154_ele_of_a23_44_46_0 = load temp_153_ptr_of_a23_44_46:ptr->i32 
              #                    occupy a0 with temp_153_ptr_of_a23_44_46
              #                    occupy s7 with temp_154_ele_of_a23_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_154_ele_of_a23_44_46_0
              #                    store to temp_154_ele_of_a23_44_46_0 in mem offset legal
    sw      s7,308(sp)
              #                    release s7 with temp_154_ele_of_a23_44_46_0
              #                    free a0
              #                     1255 untrack temp_153_ptr_of_a23_44_46 
              #                    occupy a0 with temp_153_ptr_of_a23_44_46
              #                    release a0 with temp_153_ptr_of_a23_44_46
              #                     469  mu a23_44:468 
              #                     471  temp_155_arithop_46_0 = Add i32 temp_152_arithop_46_0, temp_154_ele_of_a23_44_46_0 
              #                    occupy a2 with temp_152_arithop_46_0
              #                    occupy a0 with temp_154_ele_of_a23_44_46_0
              #                    load from temp_154_ele_of_a23_44_46_0 in mem


    lw      a0,308(sp)
              #                    occupy s7 with temp_155_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_152_arithop_46_0
              #                    store to temp_152_arithop_46_0 in mem offset legal
    sw      a2,320(sp)
              #                    release a2 with temp_152_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1125 untrack temp_154_ele_of_a23_44_46_0 
              #                    occupy a0 with temp_154_ele_of_a23_44_46_0
              #                    release a0 with temp_154_ele_of_a23_44_46_0
              #                     1050 untrack temp_152_arithop_46_0 
              #                     473  temp_156_ptr_of_a23_44_46 = GEP a23_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_156_ptr_of_a23_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a23_44
              #                    load from a23_44 in mem
    ld      a2,1312(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a23_44
              #                    store to a23_44 in mem offset legal
    sd      a2,1312(sp)
              #                    release a2 with a23_44
              #                    free a0
              #                     475  temp_157_ele_of_a23_44_46_0 = load temp_156_ptr_of_a23_44_46:ptr->i32 
              #                    occupy a0 with temp_156_ptr_of_a23_44_46
              #                    occupy a2 with temp_157_ele_of_a23_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_157_ele_of_a23_44_46_0
              #                    store to temp_157_ele_of_a23_44_46_0 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with temp_157_ele_of_a23_44_46_0
              #                    free a0
              #                     1116 untrack temp_156_ptr_of_a23_44_46 
              #                    occupy a0 with temp_156_ptr_of_a23_44_46
              #                    release a0 with temp_156_ptr_of_a23_44_46
              #                     476  mu a23_44:475 
              #                     1238 untrack a23_44 
              #                     478  temp_158_arithop_46_0 = Add i32 temp_155_arithop_46_0, temp_157_ele_of_a23_44_46_0 
              #                    occupy s7 with temp_155_arithop_46_0
              #                    occupy a0 with temp_157_ele_of_a23_44_46_0
              #                    load from temp_157_ele_of_a23_44_46_0 in mem


    lw      a0,292(sp)
              #                    occupy a2 with temp_158_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_155_arithop_46_0
              #                    store to temp_155_arithop_46_0 in mem offset legal
    sw      s7,304(sp)
              #                    release s7 with temp_155_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1169 untrack temp_157_ele_of_a23_44_46_0 
              #                    occupy a0 with temp_157_ele_of_a23_44_46_0
              #                    release a0 with temp_157_ele_of_a23_44_46_0
              #                     1043 untrack temp_155_arithop_46_0 
              #                     479  (nop) 
              #                     481  temp_159_ptr_of_a24_44_46 = GEP a24_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_159_ptr_of_a24_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a24_44
              #                    load from a24_44 in mem
    ld      s7,1296(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a24_44
              #                    store to a24_44 in mem offset legal
    sd      s7,1296(sp)
              #                    release s7 with a24_44
              #                    free a0
              #                     483  temp_160_ele_of_a24_44_46_0 = load temp_159_ptr_of_a24_44_46:ptr->i32 
              #                    occupy a0 with temp_159_ptr_of_a24_44_46
              #                    occupy s7 with temp_160_ele_of_a24_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_160_ele_of_a24_44_46_0
              #                    store to temp_160_ele_of_a24_44_46_0 in mem offset legal
    sw      s7,276(sp)
              #                    release s7 with temp_160_ele_of_a24_44_46_0
              #                    free a0
              #                     1174 untrack temp_159_ptr_of_a24_44_46 
              #                    occupy a0 with temp_159_ptr_of_a24_44_46
              #                    release a0 with temp_159_ptr_of_a24_44_46
              #                     484  mu a24_44:483 
              #                     486  temp_161_arithop_46_0 = Add i32 temp_158_arithop_46_0, temp_160_ele_of_a24_44_46_0 
              #                    occupy a2 with temp_158_arithop_46_0
              #                    occupy a0 with temp_160_ele_of_a24_44_46_0
              #                    load from temp_160_ele_of_a24_44_46_0 in mem


    lw      a0,276(sp)
              #                    occupy s7 with temp_161_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_158_arithop_46_0
              #                    store to temp_158_arithop_46_0 in mem offset legal
    sw      a2,288(sp)
              #                    release a2 with temp_158_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1206 untrack temp_160_ele_of_a24_44_46_0 
              #                    occupy a0 with temp_160_ele_of_a24_44_46_0
              #                    release a0 with temp_160_ele_of_a24_44_46_0
              #                     1192 untrack temp_158_arithop_46_0 
              #                     488  temp_162_ptr_of_a24_44_46 = GEP a24_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_162_ptr_of_a24_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a24_44
              #                    load from a24_44 in mem
    ld      a2,1296(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a24_44
              #                    store to a24_44 in mem offset legal
    sd      a2,1296(sp)
              #                    release a2 with a24_44
              #                    free a0
              #                     490  temp_163_ele_of_a24_44_46_0 = load temp_162_ptr_of_a24_44_46:ptr->i32 
              #                    occupy a0 with temp_162_ptr_of_a24_44_46
              #                    occupy a2 with temp_163_ele_of_a24_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_163_ele_of_a24_44_46_0
              #                    store to temp_163_ele_of_a24_44_46_0 in mem offset legal
    sw      a2,260(sp)
              #                    release a2 with temp_163_ele_of_a24_44_46_0
              #                    free a0
              #                     1232 untrack temp_162_ptr_of_a24_44_46 
              #                    occupy a0 with temp_162_ptr_of_a24_44_46
              #                    release a0 with temp_162_ptr_of_a24_44_46
              #                     491  mu a24_44:490 
              #                     1221 untrack a24_44 
              #                     493  temp_164_arithop_46_0 = Add i32 temp_161_arithop_46_0, temp_163_ele_of_a24_44_46_0 
              #                    occupy s7 with temp_161_arithop_46_0
              #                    occupy a0 with temp_163_ele_of_a24_44_46_0
              #                    load from temp_163_ele_of_a24_44_46_0 in mem


    lw      a0,260(sp)
              #                    occupy a2 with temp_164_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_161_arithop_46_0
              #                    store to temp_161_arithop_46_0 in mem offset legal
    sw      s7,272(sp)
              #                    release s7 with temp_161_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1100 untrack temp_163_ele_of_a24_44_46_0 
              #                    occupy a0 with temp_163_ele_of_a24_44_46_0
              #                    release a0 with temp_163_ele_of_a24_44_46_0
              #                     1048 untrack temp_161_arithop_46_0 
              #                     494  (nop) 
              #                     496  temp_165_ptr_of_a25_44_46 = GEP a25_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_165_ptr_of_a25_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a25_44
              #                    load from a25_44 in mem
    ld      s7,1280(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a25_44
              #                    store to a25_44 in mem offset legal
    sd      s7,1280(sp)
              #                    release s7 with a25_44
              #                    free a0
              #                     498  temp_166_ele_of_a25_44_46_0 = load temp_165_ptr_of_a25_44_46:ptr->i32 
              #                    occupy a0 with temp_165_ptr_of_a25_44_46
              #                    occupy s7 with temp_166_ele_of_a25_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_166_ele_of_a25_44_46_0
              #                    store to temp_166_ele_of_a25_44_46_0 in mem offset legal
    sw      s7,244(sp)
              #                    release s7 with temp_166_ele_of_a25_44_46_0
              #                    free a0
              #                     1131 untrack temp_165_ptr_of_a25_44_46 
              #                    occupy a0 with temp_165_ptr_of_a25_44_46
              #                    release a0 with temp_165_ptr_of_a25_44_46
              #                     499  mu a25_44:498 
              #                     501  temp_167_arithop_46_0 = Add i32 temp_164_arithop_46_0, temp_166_ele_of_a25_44_46_0 
              #                    occupy a2 with temp_164_arithop_46_0
              #                    occupy a0 with temp_166_ele_of_a25_44_46_0
              #                    load from temp_166_ele_of_a25_44_46_0 in mem


    lw      a0,244(sp)
              #                    occupy s7 with temp_167_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_164_arithop_46_0
              #                    store to temp_164_arithop_46_0 in mem offset legal
    sw      a2,256(sp)
              #                    release a2 with temp_164_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1055 untrack temp_164_arithop_46_0 
              #                     1042 untrack temp_166_ele_of_a25_44_46_0 
              #                    occupy a0 with temp_166_ele_of_a25_44_46_0
              #                    release a0 with temp_166_ele_of_a25_44_46_0
              #                     503  temp_168_ptr_of_a25_44_46 = GEP a25_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_168_ptr_of_a25_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a25_44
              #                    load from a25_44 in mem
    ld      a2,1280(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a25_44
              #                    store to a25_44 in mem offset legal
    sd      a2,1280(sp)
              #                    release a2 with a25_44
              #                    free a0
              #                     505  temp_169_ele_of_a25_44_46_0 = load temp_168_ptr_of_a25_44_46:ptr->i32 
              #                    occupy a0 with temp_168_ptr_of_a25_44_46
              #                    occupy a2 with temp_169_ele_of_a25_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_169_ele_of_a25_44_46_0
              #                    store to temp_169_ele_of_a25_44_46_0 in mem offset legal
    sw      a2,228(sp)
              #                    release a2 with temp_169_ele_of_a25_44_46_0
              #                    free a0
              #                     1151 untrack temp_168_ptr_of_a25_44_46 
              #                    occupy a0 with temp_168_ptr_of_a25_44_46
              #                    release a0 with temp_168_ptr_of_a25_44_46
              #                     506  mu a25_44:505 
              #                     1229 untrack a25_44 
              #                     508  temp_170_arithop_46_0 = Add i32 temp_167_arithop_46_0, temp_169_ele_of_a25_44_46_0 
              #                    occupy s7 with temp_167_arithop_46_0
              #                    occupy a0 with temp_169_ele_of_a25_44_46_0
              #                    load from temp_169_ele_of_a25_44_46_0 in mem


    lw      a0,228(sp)
              #                    occupy a2 with temp_170_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_167_arithop_46_0
              #                    store to temp_167_arithop_46_0 in mem offset legal
    sw      s7,240(sp)
              #                    release s7 with temp_167_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1120 untrack temp_169_ele_of_a25_44_46_0 
              #                    occupy a0 with temp_169_ele_of_a25_44_46_0
              #                    release a0 with temp_169_ele_of_a25_44_46_0
              #                     1119 untrack temp_167_arithop_46_0 
              #                     509  (nop) 
              #                     511  temp_171_ptr_of_a26_44_46 = GEP a26_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_171_ptr_of_a26_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a26_44
              #                    load from a26_44 in mem
    ld      s7,1264(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a26_44
              #                    store to a26_44 in mem offset legal
    sd      s7,1264(sp)
              #                    release s7 with a26_44
              #                    free a0
              #                     513  temp_172_ele_of_a26_44_46_0 = load temp_171_ptr_of_a26_44_46:ptr->i32 
              #                    occupy a0 with temp_171_ptr_of_a26_44_46
              #                    occupy s7 with temp_172_ele_of_a26_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_172_ele_of_a26_44_46_0
              #                    store to temp_172_ele_of_a26_44_46_0 in mem offset legal
    sw      s7,212(sp)
              #                    release s7 with temp_172_ele_of_a26_44_46_0
              #                    free a0
              #                     1110 untrack temp_171_ptr_of_a26_44_46 
              #                    occupy a0 with temp_171_ptr_of_a26_44_46
              #                    release a0 with temp_171_ptr_of_a26_44_46
              #                     514  mu a26_44:513 
              #                     516  temp_173_arithop_46_0 = Add i32 temp_170_arithop_46_0, temp_172_ele_of_a26_44_46_0 
              #                    occupy a2 with temp_170_arithop_46_0
              #                    occupy a0 with temp_172_ele_of_a26_44_46_0
              #                    load from temp_172_ele_of_a26_44_46_0 in mem


    lw      a0,212(sp)
              #                    occupy s7 with temp_173_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_170_arithop_46_0
              #                    store to temp_170_arithop_46_0 in mem offset legal
    sw      a2,224(sp)
              #                    release a2 with temp_170_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1198 untrack temp_172_ele_of_a26_44_46_0 
              #                    occupy a0 with temp_172_ele_of_a26_44_46_0
              #                    release a0 with temp_172_ele_of_a26_44_46_0
              #                     1163 untrack temp_170_arithop_46_0 
              #                     518  temp_174_ptr_of_a26_44_46 = GEP a26_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_174_ptr_of_a26_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a26_44
              #                    load from a26_44 in mem
    ld      a2,1264(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a26_44
              #                    store to a26_44 in mem offset legal
    sd      a2,1264(sp)
              #                    release a2 with a26_44
              #                    free a0
              #                     520  temp_175_ele_of_a26_44_46_0 = load temp_174_ptr_of_a26_44_46:ptr->i32 
              #                    occupy a0 with temp_174_ptr_of_a26_44_46
              #                    occupy a2 with temp_175_ele_of_a26_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_175_ele_of_a26_44_46_0
              #                    store to temp_175_ele_of_a26_44_46_0 in mem offset legal
    sw      a2,196(sp)
              #                    release a2 with temp_175_ele_of_a26_44_46_0
              #                    free a0
              #                     1225 untrack temp_174_ptr_of_a26_44_46 
              #                    occupy a0 with temp_174_ptr_of_a26_44_46
              #                    release a0 with temp_174_ptr_of_a26_44_46
              #                     521  mu a26_44:520 
              #                     1194 untrack a26_44 
              #                     523  temp_176_arithop_46_0 = Add i32 temp_173_arithop_46_0, temp_175_ele_of_a26_44_46_0 
              #                    occupy s7 with temp_173_arithop_46_0
              #                    occupy a0 with temp_175_ele_of_a26_44_46_0
              #                    load from temp_175_ele_of_a26_44_46_0 in mem


    lw      a0,196(sp)
              #                    occupy a2 with temp_176_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_173_arithop_46_0
              #                    store to temp_173_arithop_46_0 in mem offset legal
    sw      s7,208(sp)
              #                    release s7 with temp_173_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1254 untrack temp_175_ele_of_a26_44_46_0 
              #                    occupy a0 with temp_175_ele_of_a26_44_46_0
              #                    release a0 with temp_175_ele_of_a26_44_46_0
              #                     1248 untrack temp_173_arithop_46_0 
              #                     524  (nop) 
              #                     526  temp_177_ptr_of_a27_44_46 = GEP a27_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_177_ptr_of_a27_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a27_44
              #                    load from a27_44 in mem
    ld      s7,1248(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a27_44
              #                    store to a27_44 in mem offset legal
    sd      s7,1248(sp)
              #                    release s7 with a27_44
              #                    free a0
              #                     528  temp_178_ele_of_a27_44_46_0 = load temp_177_ptr_of_a27_44_46:ptr->i32 
              #                    occupy a0 with temp_177_ptr_of_a27_44_46
              #                    occupy s7 with temp_178_ele_of_a27_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_178_ele_of_a27_44_46_0
              #                    store to temp_178_ele_of_a27_44_46_0 in mem offset legal
    sw      s7,180(sp)
              #                    release s7 with temp_178_ele_of_a27_44_46_0
              #                    free a0
              #                     1123 untrack temp_177_ptr_of_a27_44_46 
              #                    occupy a0 with temp_177_ptr_of_a27_44_46
              #                    release a0 with temp_177_ptr_of_a27_44_46
              #                     529  mu a27_44:528 
              #                     531  temp_179_arithop_46_0 = Add i32 temp_176_arithop_46_0, temp_178_ele_of_a27_44_46_0 
              #                    occupy a2 with temp_176_arithop_46_0
              #                    occupy a0 with temp_178_ele_of_a27_44_46_0
              #                    load from temp_178_ele_of_a27_44_46_0 in mem


    lw      a0,180(sp)
              #                    occupy s7 with temp_179_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_176_arithop_46_0
              #                    store to temp_176_arithop_46_0 in mem offset legal
    sw      a2,192(sp)
              #                    release a2 with temp_176_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1080 untrack temp_176_arithop_46_0 
              #                     1065 untrack temp_178_ele_of_a27_44_46_0 
              #                    occupy a0 with temp_178_ele_of_a27_44_46_0
              #                    release a0 with temp_178_ele_of_a27_44_46_0
              #                     533  temp_180_ptr_of_a27_44_46 = GEP a27_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_180_ptr_of_a27_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a27_44
              #                    load from a27_44 in mem
    ld      a2,1248(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a27_44
              #                    store to a27_44 in mem offset legal
    sd      a2,1248(sp)
              #                    release a2 with a27_44
              #                    free a0
              #                     535  temp_181_ele_of_a27_44_46_0 = load temp_180_ptr_of_a27_44_46:ptr->i32 
              #                    occupy a0 with temp_180_ptr_of_a27_44_46
              #                    occupy a2 with temp_181_ele_of_a27_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_181_ele_of_a27_44_46_0
              #                    store to temp_181_ele_of_a27_44_46_0 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with temp_181_ele_of_a27_44_46_0
              #                    free a0
              #                     1211 untrack temp_180_ptr_of_a27_44_46 
              #                    occupy a0 with temp_180_ptr_of_a27_44_46
              #                    release a0 with temp_180_ptr_of_a27_44_46
              #                     536  mu a27_44:535 
              #                     1046 untrack a27_44 
              #                     538  temp_182_arithop_46_0 = Add i32 temp_179_arithop_46_0, temp_181_ele_of_a27_44_46_0 
              #                    occupy s7 with temp_179_arithop_46_0
              #                    occupy a0 with temp_181_ele_of_a27_44_46_0
              #                    load from temp_181_ele_of_a27_44_46_0 in mem


    lw      a0,164(sp)
              #                    occupy a2 with temp_182_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_179_arithop_46_0
              #                    store to temp_179_arithop_46_0 in mem offset legal
    sw      s7,176(sp)
              #                    release s7 with temp_179_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1234 untrack temp_181_ele_of_a27_44_46_0 
              #                    occupy a0 with temp_181_ele_of_a27_44_46_0
              #                    release a0 with temp_181_ele_of_a27_44_46_0
              #                     1094 untrack temp_179_arithop_46_0 
              #                     539  (nop) 
              #                     541  temp_183_ptr_of_a28_44_46 = GEP a28_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_183_ptr_of_a28_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a28_44
              #                    load from a28_44 in mem
    ld      s7,1232(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a28_44
              #                    store to a28_44 in mem offset legal
    sd      s7,1232(sp)
              #                    release s7 with a28_44
              #                    free a0
              #                     543  temp_184_ele_of_a28_44_46_0 = load temp_183_ptr_of_a28_44_46:ptr->i32 
              #                    occupy a0 with temp_183_ptr_of_a28_44_46
              #                    occupy s7 with temp_184_ele_of_a28_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_184_ele_of_a28_44_46_0
              #                    store to temp_184_ele_of_a28_44_46_0 in mem offset legal
    sw      s7,148(sp)
              #                    release s7 with temp_184_ele_of_a28_44_46_0
              #                    free a0
              #                     1171 untrack temp_183_ptr_of_a28_44_46 
              #                    occupy a0 with temp_183_ptr_of_a28_44_46
              #                    release a0 with temp_183_ptr_of_a28_44_46
              #                     544  mu a28_44:543 
              #                     546  temp_185_arithop_46_0 = Add i32 temp_182_arithop_46_0, temp_184_ele_of_a28_44_46_0 
              #                    occupy a2 with temp_182_arithop_46_0
              #                    occupy a0 with temp_184_ele_of_a28_44_46_0
              #                    load from temp_184_ele_of_a28_44_46_0 in mem


    lw      a0,148(sp)
              #                    occupy s7 with temp_185_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_182_arithop_46_0
              #                    store to temp_182_arithop_46_0 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with temp_182_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1196 untrack temp_184_ele_of_a28_44_46_0 
              #                    occupy a0 with temp_184_ele_of_a28_44_46_0
              #                    release a0 with temp_184_ele_of_a28_44_46_0
              #                     1058 untrack temp_182_arithop_46_0 
              #                     548  temp_186_ptr_of_a28_44_46 = GEP a28_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_186_ptr_of_a28_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a28_44
              #                    load from a28_44 in mem
    ld      a2,1232(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a28_44
              #                    store to a28_44 in mem offset legal
    sd      a2,1232(sp)
              #                    release a2 with a28_44
              #                    free a0
              #                     550  temp_187_ele_of_a28_44_46_0 = load temp_186_ptr_of_a28_44_46:ptr->i32 
              #                    occupy a0 with temp_186_ptr_of_a28_44_46
              #                    occupy a2 with temp_187_ele_of_a28_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_187_ele_of_a28_44_46_0
              #                    store to temp_187_ele_of_a28_44_46_0 in mem offset legal
    sw      a2,132(sp)
              #                    release a2 with temp_187_ele_of_a28_44_46_0
              #                    free a0
              #                     1038 untrack temp_186_ptr_of_a28_44_46 
              #                    occupy a0 with temp_186_ptr_of_a28_44_46
              #                    release a0 with temp_186_ptr_of_a28_44_46
              #                     551  mu a28_44:550 
              #                     1195 untrack a28_44 
              #                     553  temp_188_arithop_46_0 = Add i32 temp_185_arithop_46_0, temp_187_ele_of_a28_44_46_0 
              #                    occupy s7 with temp_185_arithop_46_0
              #                    occupy a0 with temp_187_ele_of_a28_44_46_0
              #                    load from temp_187_ele_of_a28_44_46_0 in mem


    lw      a0,132(sp)
              #                    occupy a2 with temp_188_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_185_arithop_46_0
              #                    store to temp_185_arithop_46_0 in mem offset legal
    sw      s7,144(sp)
              #                    release s7 with temp_185_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1127 untrack temp_185_arithop_46_0 
              #                     1074 untrack temp_187_ele_of_a28_44_46_0 
              #                    occupy a0 with temp_187_ele_of_a28_44_46_0
              #                    release a0 with temp_187_ele_of_a28_44_46_0
              #                     554  (nop) 
              #                     556  temp_189_ptr_of_a29_44_46 = GEP a29_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_189_ptr_of_a29_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a29_44
              #                    load from a29_44 in mem
    ld      s7,1216(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a29_44
              #                    store to a29_44 in mem offset legal
    sd      s7,1216(sp)
              #                    release s7 with a29_44
              #                    free a0
              #                     558  temp_190_ele_of_a29_44_46_0 = load temp_189_ptr_of_a29_44_46:ptr->i32 
              #                    occupy a0 with temp_189_ptr_of_a29_44_46
              #                    occupy s7 with temp_190_ele_of_a29_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_190_ele_of_a29_44_46_0
              #                    store to temp_190_ele_of_a29_44_46_0 in mem offset legal
    sw      s7,116(sp)
              #                    release s7 with temp_190_ele_of_a29_44_46_0
              #                    free a0
              #                     1071 untrack temp_189_ptr_of_a29_44_46 
              #                    occupy a0 with temp_189_ptr_of_a29_44_46
              #                    release a0 with temp_189_ptr_of_a29_44_46
              #                     559  mu a29_44:558 
              #                     561  temp_191_arithop_46_0 = Add i32 temp_188_arithop_46_0, temp_190_ele_of_a29_44_46_0 
              #                    occupy a2 with temp_188_arithop_46_0
              #                    occupy a0 with temp_190_ele_of_a29_44_46_0
              #                    load from temp_190_ele_of_a29_44_46_0 in mem


    lw      a0,116(sp)
              #                    occupy s7 with temp_191_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_188_arithop_46_0
              #                    store to temp_188_arithop_46_0 in mem offset legal
    sw      a2,128(sp)
              #                    release a2 with temp_188_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1245 untrack temp_188_arithop_46_0 
              #                     1230 untrack temp_190_ele_of_a29_44_46_0 
              #                    occupy a0 with temp_190_ele_of_a29_44_46_0
              #                    release a0 with temp_190_ele_of_a29_44_46_0
              #                     563  temp_192_ptr_of_a29_44_46 = GEP a29_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_192_ptr_of_a29_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a29_44
              #                    load from a29_44 in mem
    ld      a2,1216(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a29_44
              #                    store to a29_44 in mem offset legal
    sd      a2,1216(sp)
              #                    release a2 with a29_44
              #                    free a0
              #                     565  temp_193_ele_of_a29_44_46_0 = load temp_192_ptr_of_a29_44_46:ptr->i32 
              #                    occupy a0 with temp_192_ptr_of_a29_44_46
              #                    occupy a2 with temp_193_ele_of_a29_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_193_ele_of_a29_44_46_0
              #                    store to temp_193_ele_of_a29_44_46_0 in mem offset legal
    sw      a2,100(sp)
              #                    release a2 with temp_193_ele_of_a29_44_46_0
              #                    free a0
              #                     1137 untrack temp_192_ptr_of_a29_44_46 
              #                    occupy a0 with temp_192_ptr_of_a29_44_46
              #                    release a0 with temp_192_ptr_of_a29_44_46
              #                     566  mu a29_44:565 
              #                     1049 untrack a29_44 
              #                     568  temp_194_arithop_46_0 = Add i32 temp_191_arithop_46_0, temp_193_ele_of_a29_44_46_0 
              #                    occupy s7 with temp_191_arithop_46_0
              #                    occupy a0 with temp_193_ele_of_a29_44_46_0
              #                    load from temp_193_ele_of_a29_44_46_0 in mem


    lw      a0,100(sp)
              #                    occupy a2 with temp_194_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_191_arithop_46_0
              #                    store to temp_191_arithop_46_0 in mem offset legal
    sw      s7,112(sp)
              #                    release s7 with temp_191_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1205 untrack temp_193_ele_of_a29_44_46_0 
              #                    occupy a0 with temp_193_ele_of_a29_44_46_0
              #                    release a0 with temp_193_ele_of_a29_44_46_0
              #                     1045 untrack temp_191_arithop_46_0 
              #                     569  (nop) 
              #                     571  temp_195_ptr_of_a30_44_46 = GEP a30_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_195_ptr_of_a30_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a30_44
              #                    load from a30_44 in mem
    ld      s7,1200(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a30_44
              #                    store to a30_44 in mem offset legal
    sd      s7,1200(sp)
              #                    release s7 with a30_44
              #                    free a0
              #                     573  temp_196_ele_of_a30_44_46_0 = load temp_195_ptr_of_a30_44_46:ptr->i32 
              #                    occupy a0 with temp_195_ptr_of_a30_44_46
              #                    occupy s7 with temp_196_ele_of_a30_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_196_ele_of_a30_44_46_0
              #                    store to temp_196_ele_of_a30_44_46_0 in mem offset legal
    sw      s7,84(sp)
              #                    release s7 with temp_196_ele_of_a30_44_46_0
              #                    free a0
              #                     1154 untrack temp_195_ptr_of_a30_44_46 
              #                    occupy a0 with temp_195_ptr_of_a30_44_46
              #                    release a0 with temp_195_ptr_of_a30_44_46
              #                     574  mu a30_44:573 
              #                     576  temp_197_arithop_46_0 = Add i32 temp_194_arithop_46_0, temp_196_ele_of_a30_44_46_0 
              #                    occupy a2 with temp_194_arithop_46_0
              #                    occupy a0 with temp_196_ele_of_a30_44_46_0
              #                    load from temp_196_ele_of_a30_44_46_0 in mem


    lw      a0,84(sp)
              #                    occupy s7 with temp_197_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_194_arithop_46_0
              #                    store to temp_194_arithop_46_0 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with temp_194_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1102 untrack temp_196_ele_of_a30_44_46_0 
              #                    occupy a0 with temp_196_ele_of_a30_44_46_0
              #                    release a0 with temp_196_ele_of_a30_44_46_0
              #                     1047 untrack temp_194_arithop_46_0 
              #                     578  temp_198_ptr_of_a30_44_46 = GEP a30_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_198_ptr_of_a30_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a30_44
              #                    load from a30_44 in mem
    ld      a2,1200(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a30_44
              #                    store to a30_44 in mem offset legal
    sd      a2,1200(sp)
              #                    release a2 with a30_44
              #                    free a0
              #                     580  temp_199_ele_of_a30_44_46_0 = load temp_198_ptr_of_a30_44_46:ptr->i32 
              #                    occupy a0 with temp_198_ptr_of_a30_44_46
              #                    occupy a2 with temp_199_ele_of_a30_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_199_ele_of_a30_44_46_0
              #                    store to temp_199_ele_of_a30_44_46_0 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_199_ele_of_a30_44_46_0
              #                    free a0
              #                     1087 untrack temp_198_ptr_of_a30_44_46 
              #                    occupy a0 with temp_198_ptr_of_a30_44_46
              #                    release a0 with temp_198_ptr_of_a30_44_46
              #                     581  mu a30_44:580 
              #                     1057 untrack a30_44 
              #                     583  temp_200_arithop_46_0 = Add i32 temp_197_arithop_46_0, temp_199_ele_of_a30_44_46_0 
              #                    occupy s7 with temp_197_arithop_46_0
              #                    occupy a0 with temp_199_ele_of_a30_44_46_0
              #                    load from temp_199_ele_of_a30_44_46_0 in mem


    lw      a0,68(sp)
              #                    occupy a2 with temp_200_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_197_arithop_46_0
              #                    store to temp_197_arithop_46_0 in mem offset legal
    sw      s7,80(sp)
              #                    release s7 with temp_197_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1173 untrack temp_199_ele_of_a30_44_46_0 
              #                    occupy a0 with temp_199_ele_of_a30_44_46_0
              #                    release a0 with temp_199_ele_of_a30_44_46_0
              #                     1064 untrack temp_197_arithop_46_0 
              #                     584  (nop) 
              #                     586  temp_201_ptr_of_a31_44_46 = GEP a31_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_201_ptr_of_a31_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a31_44
              #                    load from a31_44 in mem
    ld      s7,1184(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a31_44
              #                    store to a31_44 in mem offset legal
    sd      s7,1184(sp)
              #                    release s7 with a31_44
              #                    free a0
              #                     588  temp_202_ele_of_a31_44_46_0 = load temp_201_ptr_of_a31_44_46:ptr->i32 
              #                    occupy a0 with temp_201_ptr_of_a31_44_46
              #                    occupy s7 with temp_202_ele_of_a31_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_202_ele_of_a31_44_46_0
              #                    store to temp_202_ele_of_a31_44_46_0 in mem offset legal
    sw      s7,52(sp)
              #                    release s7 with temp_202_ele_of_a31_44_46_0
              #                    free a0
              #                     1061 untrack temp_201_ptr_of_a31_44_46 
              #                    occupy a0 with temp_201_ptr_of_a31_44_46
              #                    release a0 with temp_201_ptr_of_a31_44_46
              #                     589  mu a31_44:588 
              #                     591  temp_203_arithop_46_0 = Add i32 temp_200_arithop_46_0, temp_202_ele_of_a31_44_46_0 
              #                    occupy a2 with temp_200_arithop_46_0
              #                    occupy a0 with temp_202_ele_of_a31_44_46_0
              #                    load from temp_202_ele_of_a31_44_46_0 in mem


    lw      a0,52(sp)
              #                    occupy s7 with temp_203_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_200_arithop_46_0
              #                    store to temp_200_arithop_46_0 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with temp_200_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1114 untrack temp_200_arithop_46_0 
              #                     1091 untrack temp_202_ele_of_a31_44_46_0 
              #                    occupy a0 with temp_202_ele_of_a31_44_46_0
              #                    release a0 with temp_202_ele_of_a31_44_46_0
              #                     593  temp_204_ptr_of_a31_44_46 = GEP a31_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_204_ptr_of_a31_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a31_44
              #                    load from a31_44 in mem
    ld      a2,1184(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a31_44
              #                    store to a31_44 in mem offset legal
    sd      a2,1184(sp)
              #                    release a2 with a31_44
              #                    free a0
              #                     595  temp_205_ele_of_a31_44_46_0 = load temp_204_ptr_of_a31_44_46:ptr->i32 
              #                    occupy a0 with temp_204_ptr_of_a31_44_46
              #                    occupy a2 with temp_205_ele_of_a31_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_205_ele_of_a31_44_46_0
              #                    store to temp_205_ele_of_a31_44_46_0 in mem offset legal
    sw      a2,36(sp)
              #                    release a2 with temp_205_ele_of_a31_44_46_0
              #                    free a0
              #                     1150 untrack temp_204_ptr_of_a31_44_46 
              #                    occupy a0 with temp_204_ptr_of_a31_44_46
              #                    release a0 with temp_204_ptr_of_a31_44_46
              #                     596  mu a31_44:595 
              #                     1052 untrack a31_44 
              #                     598  temp_206_arithop_46_0 = Add i32 temp_203_arithop_46_0, temp_205_ele_of_a31_44_46_0 
              #                    occupy s7 with temp_203_arithop_46_0
              #                    occupy a0 with temp_205_ele_of_a31_44_46_0
              #                    load from temp_205_ele_of_a31_44_46_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_206_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_203_arithop_46_0
              #                    store to temp_203_arithop_46_0 in mem offset legal
    sw      s7,48(sp)
              #                    release s7 with temp_203_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1200 untrack temp_203_arithop_46_0 
              #                     1187 untrack temp_205_ele_of_a31_44_46_0 
              #                    occupy a0 with temp_205_ele_of_a31_44_46_0
              #                    release a0 with temp_205_ele_of_a31_44_46_0
              #                     599  (nop) 
              #                     601  temp_207_ptr_of_a32_44_46 = GEP a32_44:Array:i32:[None] [Some(0_0)] 
              #                    occupy a0 with temp_207_ptr_of_a32_44_46
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
              #                    occupy s7 with a32_44
              #                    load from a32_44 in mem
    ld      s7,1168(sp)
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with a32_44
              #                    store to a32_44 in mem offset legal
    sd      s7,1168(sp)
              #                    release s7 with a32_44
              #                    free a0
              #                     603  temp_208_ele_of_a32_44_46_0 = load temp_207_ptr_of_a32_44_46:ptr->i32 
              #                    occupy a0 with temp_207_ptr_of_a32_44_46
              #                    occupy s7 with temp_208_ele_of_a32_44_46_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_208_ele_of_a32_44_46_0
              #                    store to temp_208_ele_of_a32_44_46_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_208_ele_of_a32_44_46_0
              #                    free a0
              #                     1069 untrack temp_207_ptr_of_a32_44_46 
              #                    occupy a0 with temp_207_ptr_of_a32_44_46
              #                    release a0 with temp_207_ptr_of_a32_44_46
              #                     604  mu a32_44:603 
              #                     606  temp_209_arithop_46_0 = Add i32 temp_206_arithop_46_0, temp_208_ele_of_a32_44_46_0 
              #                    occupy a2 with temp_206_arithop_46_0
              #                    occupy a0 with temp_208_ele_of_a32_44_46_0
              #                    load from temp_208_ele_of_a32_44_46_0 in mem


    lw      a0,20(sp)
              #                    occupy s7 with temp_209_arithop_46_0
    ADDW    s7,a2,a0
              #                    free a2
              #                    occupy a2 with temp_206_arithop_46_0
              #                    store to temp_206_arithop_46_0 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with temp_206_arithop_46_0
              #                    free a0
              #                    free s7
              #                     1170 untrack temp_208_ele_of_a32_44_46_0 
              #                    occupy a0 with temp_208_ele_of_a32_44_46_0
              #                    release a0 with temp_208_ele_of_a32_44_46_0
              #                     1085 untrack temp_206_arithop_46_0 
              #                     608  temp_210_ptr_of_a32_44_46 = GEP a32_44:Array:i32:[None] [Some(1_0)] 
              #                    occupy a0 with temp_210_ptr_of_a32_44_46
    li      a0, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a2 with a32_44
              #                    load from a32_44 in mem
    ld      a2,1168(sp)
    add     a0,a0,a2
              #                    free a2
              #                    occupy a2 with a32_44
              #                    store to a32_44 in mem offset legal
    sd      a2,1168(sp)
              #                    release a2 with a32_44
              #                    free a0
              #                     610  temp_211_ele_of_a32_44_46_0 = load temp_210_ptr_of_a32_44_46:ptr->i32 
              #                    occupy a0 with temp_210_ptr_of_a32_44_46
              #                    occupy a2 with temp_211_ele_of_a32_44_46_0
    lw      a2,0(a0)
              #                    free a2
              #                    occupy a2 with temp_211_ele_of_a32_44_46_0
              #                    store to temp_211_ele_of_a32_44_46_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_211_ele_of_a32_44_46_0
              #                    free a0
              #                     1111 untrack temp_210_ptr_of_a32_44_46 
              #                    occupy a0 with temp_210_ptr_of_a32_44_46
              #                    release a0 with temp_210_ptr_of_a32_44_46
              #                     611  mu a32_44:610 
              #                     1182 untrack a32_44 
              #                     613  temp_212_arithop_46_0 = Add i32 temp_209_arithop_46_0, temp_211_ele_of_a32_44_46_0 
              #                    occupy s7 with temp_209_arithop_46_0
              #                    occupy a0 with temp_211_ele_of_a32_44_46_0
              #                    load from temp_211_ele_of_a32_44_46_0 in mem


    lw      a0,4(sp)
              #                    occupy a2 with temp_212_arithop_46_0
    ADDW    a2,s7,a0
              #                    free s7
              #                    occupy s7 with temp_209_arithop_46_0
              #                    store to temp_209_arithop_46_0 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_209_arithop_46_0
              #                    free a0
              #                    free a2
              #                     1241 untrack temp_211_ele_of_a32_44_46_0 
              #                    occupy a0 with temp_211_ele_of_a32_44_46_0
              #                    release a0 with temp_211_ele_of_a32_44_46_0
              #                     1237 untrack temp_209_arithop_46_0 
              #                     614  (nop) 
              #                     616  ret temp_212_arithop_46_0 
              #                    load from ra_param32_arr_0 in mem
    ld      ra,1160(sp)
              #                    load from s0_param32_arr_0 in mem
    ld      s0,1152(sp)
              #                    occupy a2 with temp_212_arithop_46_0
              #                    store to temp_212_arithop_46_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_212_arithop_46_0
              #                    occupy a0 with temp_212_arithop_46_0
              #                    load from temp_212_arithop_46_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,1552
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     52   Define param16_0 "a1_80_0,a2_80_0,a3_80_0,a4_80_0,a5_80_0,a6_80_0,a7_80_0,a8_80_0,a9_80_0,a10_80_0,a11_80_0,a12_80_0,a13_80_0,a14_80_0,a15_80_0,a16_80_0," -> param16_ret_0 
    .globl param16
    .type param16,@function
param16:
              #                    mem layout:|a9 _s80 _i0:4 at 540|a10 _s80 _i0:4 at 536|a11 _s80 _i0:4 at 532|a12 _s80 _i0:4 at 528|a13 _s80 _i0:4 at 524|a14 _s80 _i0:4 at 520|a15 _s80 _i0:4 at 516|a16 _s80 _i0:4 at 512|ra_param16:8 at 504|s0_param16:8 at 496|a1 _s80 _i0:4 at 492|a2 _s80 _i0:4 at 488|a3 _s80 _i0:4 at 484|a4 _s80 _i0:4 at 480|a5 _s80 _i0:4 at 476|a6 _s80 _i0:4 at 472|a7 _s80 _i0:4 at 468|a8 _s80 _i0:4 at 464|temp_213_array_init_ptr:8 at 456|temp_214_array_init_ptr:8 at 448|temp_215_array_init_ptr:8 at 440|temp_216_array_init_ptr:8 at 432|temp_217_array_init_ptr:8 at 424|temp_218_array_init_ptr:8 at 416|temp_219_array_init_ptr:8 at 408|temp_220_array_init_ptr:8 at 400|temp_221_array_init_ptr:8 at 392|temp_222_array_init_ptr:8 at 384|temp_223_array_init_ptr:8 at 376|temp_224_array_init_ptr:8 at 368|temp_225_array_init_ptr:8 at 360|temp_226_array_init_ptr:8 at 352|temp_227_array_init_ptr:8 at 344|temp_228_array_init_ptr:8 at 336|temp_229_array_init_ptr:8 at 328|arr:64 at 264|temp_230_ele_ptr_of_arr_82:8 at 256|temp_231_ptr_of_arr_82:8 at 248|temp_232_ele_of_arr_82 _s82 _i0:4 at 244|none:4 at 240|temp_233_ptr_of_arr_82:8 at 232|temp_234_ele_of_arr_82 _s82 _i0:4 at 228|none:4 at 224|temp_235_ptr_of_arr_82:8 at 216|temp_236_ele_of_arr_82 _s82 _i0:4 at 212|none:4 at 208|temp_237_ptr_of_arr_82:8 at 200|temp_238_ele_of_arr_82 _s82 _i0:4 at 196|none:4 at 192|temp_239_ptr_of_arr_82:8 at 184|temp_240_ele_of_arr_82 _s82 _i0:4 at 180|none:4 at 176|temp_241_ptr_of_arr_82:8 at 168|temp_242_ele_of_arr_82 _s82 _i0:4 at 164|none:4 at 160|temp_243_ptr_of_arr_82:8 at 152|temp_244_ele_of_arr_82 _s82 _i0:4 at 148|none:4 at 144|temp_245_ptr_of_arr_82:8 at 136|temp_246_ele_of_arr_82 _s82 _i0:4 at 132|none:4 at 128|temp_247_ptr_of_arr_82:8 at 120|temp_248_ele_of_arr_82 _s82 _i0:4 at 116|none:4 at 112|temp_249_ptr_of_arr_82:8 at 104|temp_250_ele_of_arr_82 _s82 _i0:4 at 100|none:4 at 96|temp_251_ptr_of_arr_82:8 at 88|temp_252_ele_of_arr_82 _s82 _i0:4 at 84|none:4 at 80|temp_253_ptr_of_arr_82:8 at 72|temp_254_ele_of_arr_82 _s82 _i0:4 at 68|none:4 at 64|temp_255_ptr_of_arr_82:8 at 56|temp_256_ele_of_arr_82 _s82 _i0:4 at 52|none:4 at 48|temp_257_ptr_of_arr_82:8 at 40|temp_258_ele_of_arr_82 _s82 _i0:4 at 36|none:4 at 32|temp_259_ptr_of_arr_82:8 at 24|temp_260_ele_of_arr_82 _s82 _i0:4 at 20|none:4 at 16|temp_261_ptr_of_arr_82:8 at 8|temp_262_ele_of_arr_82 _s82 _i0:4 at 4|temp_263_ret_of_param32_rec _s82 _i0:4 at 0
    addi    sp,sp,-544
              #                    store to ra_param16_0 in mem offset legal
    sd      ra,504(sp)
              #                    store to s0_param16_0 in mem offset legal
    sd      s0,496(sp)
    addi    s0,sp,544
              #                     620  alloc ptr->i32 [temp_213_array_init_ptr_82] 
              #                     623  alloc ptr->i32 [temp_214_array_init_ptr_82] 
              #                     627  alloc ptr->i32 [temp_215_array_init_ptr_82] 
              #                     631  alloc ptr->i32 [temp_216_array_init_ptr_82] 
              #                     635  alloc ptr->i32 [temp_217_array_init_ptr_82] 
              #                     639  alloc ptr->i32 [temp_218_array_init_ptr_82] 
              #                     643  alloc ptr->i32 [temp_219_array_init_ptr_82] 
              #                     647  alloc ptr->i32 [temp_220_array_init_ptr_82] 
              #                     651  alloc ptr->i32 [temp_221_array_init_ptr_82] 
              #                     655  alloc ptr->i32 [temp_222_array_init_ptr_82] 
              #                     659  alloc ptr->i32 [temp_223_array_init_ptr_82] 
              #                     663  alloc ptr->i32 [temp_224_array_init_ptr_82] 
              #                     667  alloc ptr->i32 [temp_225_array_init_ptr_82] 
              #                     671  alloc ptr->i32 [temp_226_array_init_ptr_82] 
              #                     675  alloc ptr->i32 [temp_227_array_init_ptr_82] 
              #                     679  alloc ptr->i32 [temp_228_array_init_ptr_82] 
              #                     683  alloc ptr->i32 [temp_229_array_init_ptr_82] 
              #                     687  alloc Array:i32:[Some(16_0)] [arr_82] 
              #                     688  alloc ptr->i32 [temp_230_ele_ptr_of_arr_82_82] 
              #                     692  alloc ptr->i32 [temp_231_ptr_of_arr_82_82] 
              #                     694  alloc i32 [temp_232_ele_of_arr_82_82] 
              #                     697  alloc ptr->i32 [temp_233_ptr_of_arr_82_82] 
              #                     699  alloc i32 [temp_234_ele_of_arr_82_82] 
              #                     702  alloc ptr->i32 [temp_235_ptr_of_arr_82_82] 
              #                     704  alloc i32 [temp_236_ele_of_arr_82_82] 
              #                     707  alloc ptr->i32 [temp_237_ptr_of_arr_82_82] 
              #                     709  alloc i32 [temp_238_ele_of_arr_82_82] 
              #                     712  alloc ptr->i32 [temp_239_ptr_of_arr_82_82] 
              #                     714  alloc i32 [temp_240_ele_of_arr_82_82] 
              #                     717  alloc ptr->i32 [temp_241_ptr_of_arr_82_82] 
              #                     719  alloc i32 [temp_242_ele_of_arr_82_82] 
              #                     722  alloc ptr->i32 [temp_243_ptr_of_arr_82_82] 
              #                     724  alloc i32 [temp_244_ele_of_arr_82_82] 
              #                     727  alloc ptr->i32 [temp_245_ptr_of_arr_82_82] 
              #                     729  alloc i32 [temp_246_ele_of_arr_82_82] 
              #                     732  alloc ptr->i32 [temp_247_ptr_of_arr_82_82] 
              #                     734  alloc i32 [temp_248_ele_of_arr_82_82] 
              #                     737  alloc ptr->i32 [temp_249_ptr_of_arr_82_82] 
              #                     739  alloc i32 [temp_250_ele_of_arr_82_82] 
              #                     742  alloc ptr->i32 [temp_251_ptr_of_arr_82_82] 
              #                     744  alloc i32 [temp_252_ele_of_arr_82_82] 
              #                     747  alloc ptr->i32 [temp_253_ptr_of_arr_82_82] 
              #                     749  alloc i32 [temp_254_ele_of_arr_82_82] 
              #                     752  alloc ptr->i32 [temp_255_ptr_of_arr_82_82] 
              #                     754  alloc i32 [temp_256_ele_of_arr_82_82] 
              #                     757  alloc ptr->i32 [temp_257_ptr_of_arr_82_82] 
              #                     759  alloc i32 [temp_258_ele_of_arr_82_82] 
              #                     762  alloc ptr->i32 [temp_259_ptr_of_arr_82_82] 
              #                     764  alloc i32 [temp_260_ele_of_arr_82_82] 
              #                     767  alloc ptr->i32 [temp_261_ptr_of_arr_82_82] 
              #                     769  alloc i32 [temp_262_ele_of_arr_82_82] 
              #                     772  alloc i32 [temp_263_ret_of_param32_rec_82] 
              #                    regtab     a0:Freed { symidx: a1_80_0, tracked: true } |     a1:Freed { symidx: a2_80_0, tracked: true } |     a2:Freed { symidx: a3_80_0, tracked: true } |     a3:Freed { symidx: a4_80_0, tracked: true } |     a4:Freed { symidx: a5_80_0, tracked: true } |     a5:Freed { symidx: a6_80_0, tracked: true } |     a6:Freed { symidx: a7_80_0, tracked: true } |     a7:Freed { symidx: a8_80_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     619   
              #                     621  temp_213_array_init_ptr_82 = GEP arr_82_0:Array:i32:[Some(16_0)] [] 
              #                    occupy s1 with temp_213_array_init_ptr_82
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,264
              #                    free s1
              #                     622   Call void memset_0(temp_213_array_init_ptr_82, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_213_array_init_ptr_82
              #                    store to temp_213_array_init_ptr_82 in mem offset legal
    sd      s1,456(sp)
              #                    release s1 with temp_213_array_init_ptr_82
              #                    occupy a0 with a1_80_0
              #                    store to a1_80_0 in mem offset legal
    sw      a0,492(sp)
              #                    release a0 with a1_80_0
              #                    occupy a1 with a2_80_0
              #                    store to a2_80_0 in mem offset legal
    sw      a1,488(sp)
              #                    release a1 with a2_80_0
              #                    occupy a2 with a3_80_0
              #                    store to a3_80_0 in mem offset legal
    sw      a2,484(sp)
              #                    release a2 with a3_80_0
              #                    occupy a3 with a4_80_0
              #                    store to a4_80_0 in mem offset legal
    sw      a3,480(sp)
              #                    release a3 with a4_80_0
              #                    occupy a4 with a5_80_0
              #                    store to a5_80_0 in mem offset legal
    sw      a4,476(sp)
              #                    release a4 with a5_80_0
              #                    occupy a5 with a6_80_0
              #                    store to a6_80_0 in mem offset legal
    sw      a5,472(sp)
              #                    release a5 with a6_80_0
              #                    occupy a6 with a7_80_0
              #                    store to a7_80_0 in mem offset legal
    sw      a6,468(sp)
              #                    release a6 with a7_80_0
              #                    occupy a7 with a8_80_0
              #                    store to a8_80_0 in mem offset legal
    sw      a7,464(sp)
              #                    release a7 with a8_80_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_213_array_init_ptr_82_0
              #                    load from temp_213_array_init_ptr_82 in mem
    ld      a0,456(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     1295 untrack temp_213_array_init_ptr_82 
              #                     934  mu arr_82_0:622 
              #                     935  arr_82_1 = chi arr_82_0:622 
              #                     624  temp_214_array_init_ptr_82 = GEP arr_82_1:Array:i32:[Some(16_0)] [Some(1_0)] 
              #                    occupy a0 with temp_214_array_init_ptr_82
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,264
              #                    free a0
              #                     625  store a2_80_0:i32 temp_214_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_214_array_init_ptr_82
              #                    occupy a2 with a2_80_0
              #                    load from a2_80_0 in mem


    lw      a2,488(sp)
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     626  arr_82_2 = chi arr_82_1:625 
              #                     628  temp_215_array_init_ptr_82 = GEP arr_82_2:Array:i32:[Some(16_0)] [Some(5_0)] 
              #                    occupy a3 with temp_215_array_init_ptr_82
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 5
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,264
              #                    free a3
              #                     629  store a6_80_0:i32 temp_215_array_init_ptr_82:ptr->i32 
              #                    occupy a3 with temp_215_array_init_ptr_82
              #                    occupy a5 with a6_80_0
              #                    load from a6_80_0 in mem


    lw      a5,472(sp)
    sw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     630  arr_82_3 = chi arr_82_2:629 
              #                     632  temp_216_array_init_ptr_82 = GEP arr_82_3:Array:i32:[Some(16_0)] [Some(14_0)] 
              #                    occupy a6 with temp_216_array_init_ptr_82
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 14
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,264
              #                    free a6
              #                     633  store a15_80_0:i32 temp_216_array_init_ptr_82:ptr->i32 
              #                    occupy a6 with temp_216_array_init_ptr_82
              #                    occupy s1 with a15_80_0
              #                    load from a15_80_0 in mem


    lw      s1,516(sp)
    sw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     634  arr_82_4 = chi arr_82_3:633 
              #                     636  temp_217_array_init_ptr_82 = GEP arr_82_4:Array:i32:[Some(16_0)] [Some(3_0)] 
              #                    occupy s2 with temp_217_array_init_ptr_82
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 3
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,264
              #                    free s2
              #                     637  store a4_80_0:i32 temp_217_array_init_ptr_82:ptr->i32 
              #                    occupy s2 with temp_217_array_init_ptr_82
              #                    occupy s4 with a4_80_0
              #                    load from a4_80_0 in mem


    lw      s4,480(sp)
    sw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     638  arr_82_5 = chi arr_82_4:637 
              #                     640  temp_218_array_init_ptr_82 = GEP arr_82_5:Array:i32:[Some(16_0)] [Some(12_0)] 
              #                    occupy s5 with temp_218_array_init_ptr_82
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 12
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,264
              #                    free s5
              #                     641  store a13_80_0:i32 temp_218_array_init_ptr_82:ptr->i32 
              #                    occupy s5 with temp_218_array_init_ptr_82
              #                    occupy s7 with a13_80_0
              #                    load from a13_80_0 in mem


    lw      s7,524(sp)
    sw      s7,0(s5)
              #                    free s7
              #                    occupy s7 with a13_80_0
              #                    store to a13_80_0 in mem offset legal
    sw      s7,524(sp)
              #                    release s7 with a13_80_0
              #                    free s5
              #                     642  arr_82_6 = chi arr_82_5:641 
              #                     644  temp_219_array_init_ptr_82 = GEP arr_82_6:Array:i32:[Some(16_0)] [Some(6_0)] 
              #                    occupy s7 with temp_219_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 6
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_219_array_init_ptr_82
              #                    store to temp_219_array_init_ptr_82 in mem offset legal
    sd      s7,408(sp)
              #                    release s7 with temp_219_array_init_ptr_82
              #                     645  store a7_80_0:i32 temp_219_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_219_array_init_ptr_82
              #                    load from temp_219_array_init_ptr_82 in mem
    ld      s7,408(sp)
              #                    occupy s8 with a7_80_0
              #                    load from a7_80_0 in mem


    lw      s8,468(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a7_80_0
              #                    store to a7_80_0 in mem offset legal
    sw      s8,468(sp)
              #                    release s8 with a7_80_0
              #                    free s7
              #                    occupy s7 with temp_219_array_init_ptr_82
              #                    store to temp_219_array_init_ptr_82 in mem offset legal
    sd      s7,408(sp)
              #                    release s7 with temp_219_array_init_ptr_82
              #                     646  arr_82_7 = chi arr_82_6:645 
              #                     648  temp_220_array_init_ptr_82 = GEP arr_82_7:Array:i32:[Some(16_0)] [Some(0_0)] 
              #                    occupy s7 with temp_220_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 0
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_220_array_init_ptr_82
              #                    store to temp_220_array_init_ptr_82 in mem offset legal
    sd      s7,400(sp)
              #                    release s7 with temp_220_array_init_ptr_82
              #                     649  store a1_80_0:i32 temp_220_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_220_array_init_ptr_82
              #                    load from temp_220_array_init_ptr_82 in mem
    ld      s7,400(sp)
              #                    occupy s8 with a1_80_0
              #                    load from a1_80_0 in mem


    lw      s8,492(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a1_80_0
              #                    store to a1_80_0 in mem offset legal
    sw      s8,492(sp)
              #                    release s8 with a1_80_0
              #                    free s7
              #                    occupy s7 with temp_220_array_init_ptr_82
              #                    store to temp_220_array_init_ptr_82 in mem offset legal
    sd      s7,400(sp)
              #                    release s7 with temp_220_array_init_ptr_82
              #                     650  arr_82_8 = chi arr_82_7:649 
              #                     652  temp_221_array_init_ptr_82 = GEP arr_82_8:Array:i32:[Some(16_0)] [Some(4_0)] 
              #                    occupy s7 with temp_221_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 4
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_221_array_init_ptr_82
              #                    store to temp_221_array_init_ptr_82 in mem offset legal
    sd      s7,392(sp)
              #                    release s7 with temp_221_array_init_ptr_82
              #                     653  store a5_80_0:i32 temp_221_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_221_array_init_ptr_82
              #                    load from temp_221_array_init_ptr_82 in mem
    ld      s7,392(sp)
              #                    occupy s8 with a5_80_0
              #                    load from a5_80_0 in mem


    lw      s8,476(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a5_80_0
              #                    store to a5_80_0 in mem offset legal
    sw      s8,476(sp)
              #                    release s8 with a5_80_0
              #                    free s7
              #                    occupy s7 with temp_221_array_init_ptr_82
              #                    store to temp_221_array_init_ptr_82 in mem offset legal
    sd      s7,392(sp)
              #                    release s7 with temp_221_array_init_ptr_82
              #                     654  arr_82_9 = chi arr_82_8:653 
              #                     656  temp_222_array_init_ptr_82 = GEP arr_82_9:Array:i32:[Some(16_0)] [Some(13_0)] 
              #                    occupy s7 with temp_222_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 13
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_222_array_init_ptr_82
              #                    store to temp_222_array_init_ptr_82 in mem offset legal
    sd      s7,384(sp)
              #                    release s7 with temp_222_array_init_ptr_82
              #                     657  store a14_80_0:i32 temp_222_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_222_array_init_ptr_82
              #                    load from temp_222_array_init_ptr_82 in mem
    ld      s7,384(sp)
              #                    occupy s8 with a14_80_0
              #                    load from a14_80_0 in mem


    lw      s8,520(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a14_80_0
              #                    store to a14_80_0 in mem offset legal
    sw      s8,520(sp)
              #                    release s8 with a14_80_0
              #                    free s7
              #                    occupy s7 with temp_222_array_init_ptr_82
              #                    store to temp_222_array_init_ptr_82 in mem offset legal
    sd      s7,384(sp)
              #                    release s7 with temp_222_array_init_ptr_82
              #                     658  arr_82_10 = chi arr_82_9:657 
              #                     660  temp_223_array_init_ptr_82 = GEP arr_82_10:Array:i32:[Some(16_0)] [Some(2_0)] 
              #                    occupy s7 with temp_223_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 2
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_223_array_init_ptr_82
              #                    store to temp_223_array_init_ptr_82 in mem offset legal
    sd      s7,376(sp)
              #                    release s7 with temp_223_array_init_ptr_82
              #                     661  store a3_80_0:i32 temp_223_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_223_array_init_ptr_82
              #                    load from temp_223_array_init_ptr_82 in mem
    ld      s7,376(sp)
              #                    occupy s8 with a3_80_0
              #                    load from a3_80_0 in mem


    lw      s8,484(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a3_80_0
              #                    store to a3_80_0 in mem offset legal
    sw      s8,484(sp)
              #                    release s8 with a3_80_0
              #                    free s7
              #                    occupy s7 with temp_223_array_init_ptr_82
              #                    store to temp_223_array_init_ptr_82 in mem offset legal
    sd      s7,376(sp)
              #                    release s7 with temp_223_array_init_ptr_82
              #                     662  arr_82_11 = chi arr_82_10:661 
              #                     664  temp_224_array_init_ptr_82 = GEP arr_82_11:Array:i32:[Some(16_0)] [Some(7_0)] 
              #                    occupy s7 with temp_224_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 7
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_224_array_init_ptr_82
              #                    store to temp_224_array_init_ptr_82 in mem offset legal
    sd      s7,368(sp)
              #                    release s7 with temp_224_array_init_ptr_82
              #                     665  store a8_80_0:i32 temp_224_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_224_array_init_ptr_82
              #                    load from temp_224_array_init_ptr_82 in mem
    ld      s7,368(sp)
              #                    occupy s8 with a8_80_0
              #                    load from a8_80_0 in mem


    lw      s8,464(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a8_80_0
              #                    store to a8_80_0 in mem offset legal
    sw      s8,464(sp)
              #                    release s8 with a8_80_0
              #                    free s7
              #                    occupy s7 with temp_224_array_init_ptr_82
              #                    store to temp_224_array_init_ptr_82 in mem offset legal
    sd      s7,368(sp)
              #                    release s7 with temp_224_array_init_ptr_82
              #                     666  arr_82_12 = chi arr_82_11:665 
              #                     668  temp_225_array_init_ptr_82 = GEP arr_82_12:Array:i32:[Some(16_0)] [Some(11_0)] 
              #                    occupy s7 with temp_225_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 11
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_225_array_init_ptr_82
              #                    store to temp_225_array_init_ptr_82 in mem offset legal
    sd      s7,360(sp)
              #                    release s7 with temp_225_array_init_ptr_82
              #                     669  store a12_80_0:i32 temp_225_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_225_array_init_ptr_82
              #                    load from temp_225_array_init_ptr_82 in mem
    ld      s7,360(sp)
              #                    occupy s8 with a12_80_0
              #                    load from a12_80_0 in mem


    lw      s8,528(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a12_80_0
              #                    store to a12_80_0 in mem offset legal
    sw      s8,528(sp)
              #                    release s8 with a12_80_0
              #                    free s7
              #                    occupy s7 with temp_225_array_init_ptr_82
              #                    store to temp_225_array_init_ptr_82 in mem offset legal
    sd      s7,360(sp)
              #                    release s7 with temp_225_array_init_ptr_82
              #                     670  arr_82_13 = chi arr_82_12:669 
              #                     672  temp_226_array_init_ptr_82 = GEP arr_82_13:Array:i32:[Some(16_0)] [Some(15_0)] 
              #                    occupy s7 with temp_226_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 15
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_226_array_init_ptr_82
              #                    store to temp_226_array_init_ptr_82 in mem offset legal
    sd      s7,352(sp)
              #                    release s7 with temp_226_array_init_ptr_82
              #                     673  store a16_80_0:i32 temp_226_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_226_array_init_ptr_82
              #                    load from temp_226_array_init_ptr_82 in mem
    ld      s7,352(sp)
              #                    occupy s8 with a16_80_0
              #                    load from a16_80_0 in mem


    lw      s8,512(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a16_80_0
              #                    store to a16_80_0 in mem offset legal
    sw      s8,512(sp)
              #                    release s8 with a16_80_0
              #                    free s7
              #                    occupy s7 with temp_226_array_init_ptr_82
              #                    store to temp_226_array_init_ptr_82 in mem offset legal
    sd      s7,352(sp)
              #                    release s7 with temp_226_array_init_ptr_82
              #                     674  arr_82_14 = chi arr_82_13:673 
              #                     676  temp_227_array_init_ptr_82 = GEP arr_82_14:Array:i32:[Some(16_0)] [Some(10_0)] 
              #                    occupy s7 with temp_227_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 10
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_227_array_init_ptr_82
              #                    store to temp_227_array_init_ptr_82 in mem offset legal
    sd      s7,344(sp)
              #                    release s7 with temp_227_array_init_ptr_82
              #                     677  store a11_80_0:i32 temp_227_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_227_array_init_ptr_82
              #                    load from temp_227_array_init_ptr_82 in mem
    ld      s7,344(sp)
              #                    occupy s8 with a11_80_0
              #                    load from a11_80_0 in mem


    lw      s8,532(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a11_80_0
              #                    store to a11_80_0 in mem offset legal
    sw      s8,532(sp)
              #                    release s8 with a11_80_0
              #                    free s7
              #                    occupy s7 with temp_227_array_init_ptr_82
              #                    store to temp_227_array_init_ptr_82 in mem offset legal
    sd      s7,344(sp)
              #                    release s7 with temp_227_array_init_ptr_82
              #                     678  arr_82_15 = chi arr_82_14:677 
              #                     680  temp_228_array_init_ptr_82 = GEP arr_82_15:Array:i32:[Some(16_0)] [Some(9_0)] 
              #                    occupy s7 with temp_228_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 9
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_228_array_init_ptr_82
              #                    store to temp_228_array_init_ptr_82 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_228_array_init_ptr_82
              #                     681  store a10_80_0:i32 temp_228_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_228_array_init_ptr_82
              #                    load from temp_228_array_init_ptr_82 in mem
    ld      s7,336(sp)
              #                    occupy s8 with a10_80_0
              #                    load from a10_80_0 in mem


    lw      s8,536(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a10_80_0
              #                    store to a10_80_0 in mem offset legal
    sw      s8,536(sp)
              #                    release s8 with a10_80_0
              #                    free s7
              #                    occupy s7 with temp_228_array_init_ptr_82
              #                    store to temp_228_array_init_ptr_82 in mem offset legal
    sd      s7,336(sp)
              #                    release s7 with temp_228_array_init_ptr_82
              #                     682  arr_82_16 = chi arr_82_15:681 
              #                     684  temp_229_array_init_ptr_82 = GEP arr_82_16:Array:i32:[Some(16_0)] [Some(8_0)] 
              #                    occupy s7 with temp_229_array_init_ptr_82
    li      s7, 0
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s8, 8
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_229_array_init_ptr_82
              #                    store to temp_229_array_init_ptr_82 in mem offset legal
    sd      s7,328(sp)
              #                    release s7 with temp_229_array_init_ptr_82
              #                     685  store a9_80_0:i32 temp_229_array_init_ptr_82:ptr->i32 
              #                    occupy s7 with temp_229_array_init_ptr_82
              #                    load from temp_229_array_init_ptr_82 in mem
    ld      s7,328(sp)
              #                    occupy s8 with a9_80_0
              #                    load from a9_80_0 in mem


    lw      s8,540(sp)
    sw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with a9_80_0
              #                    store to a9_80_0 in mem offset legal
    sw      s8,540(sp)
              #                    release s8 with a9_80_0
              #                    free s7
              #                    occupy s7 with temp_229_array_init_ptr_82
              #                    store to temp_229_array_init_ptr_82 in mem offset legal
    sd      s7,328(sp)
              #                    release s7 with temp_229_array_init_ptr_82
              #                     686  arr_82_17 = chi arr_82_16:685 
              #                     689  temp_230_ele_ptr_of_arr_82_82 = GEP arr_82_17:Array:i32:[Some(16_0)] [] 
              #                    occupy s7 with temp_230_ele_ptr_of_arr_82_82
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,264
              #                    free s7
              #                    occupy s7 with temp_230_ele_ptr_of_arr_82_82
              #                    store to temp_230_ele_ptr_of_arr_82_82 in mem offset legal
    sd      s7,256(sp)
              #                    release s7 with temp_230_ele_ptr_of_arr_82_82
              #                     690   Call void sort_0(temp_230_ele_ptr_of_arr_82_82, 16_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with a15_80_0
              #                    store to a15_80_0 in mem offset legal
    sw      s1,516(sp)
              #                    release s1 with a15_80_0
              #                    occupy s2 with temp_217_array_init_ptr_82
              #                    store to temp_217_array_init_ptr_82 in mem offset legal
    sd      s2,424(sp)
              #                    release s2 with temp_217_array_init_ptr_82
              #                    occupy s4 with a4_80_0
              #                    store to a4_80_0 in mem offset legal
    sw      s4,480(sp)
              #                    release s4 with a4_80_0
              #                    occupy s5 with temp_218_array_init_ptr_82
              #                    store to temp_218_array_init_ptr_82 in mem offset legal
    sd      s5,416(sp)
              #                    release s5 with temp_218_array_init_ptr_82
              #                    occupy a0 with temp_214_array_init_ptr_82
              #                    store to temp_214_array_init_ptr_82 in mem offset legal
    sd      a0,448(sp)
              #                    release a0 with temp_214_array_init_ptr_82
              #                    occupy a2 with a2_80_0
              #                    store to a2_80_0 in mem offset legal
    sw      a2,488(sp)
              #                    release a2 with a2_80_0
              #                    occupy a3 with temp_215_array_init_ptr_82
              #                    store to temp_215_array_init_ptr_82 in mem offset legal
    sd      a3,440(sp)
              #                    release a3 with temp_215_array_init_ptr_82
              #                    occupy a5 with a6_80_0
              #                    store to a6_80_0 in mem offset legal
    sw      a5,472(sp)
              #                    release a5 with a6_80_0
              #                    occupy a6 with temp_216_array_init_ptr_82
              #                    store to temp_216_array_init_ptr_82 in mem offset legal
    sd      a6,432(sp)
              #                    release a6 with temp_216_array_init_ptr_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_230_ele_ptr_of_arr_82_82_0
              #                    load from temp_230_ele_ptr_of_arr_82_82 in mem
    ld      a0,256(sp)
              #                    occupy a1 with _anonymous_of_16_0_0
    li      a1, 16
              #                    arg load ended


    call    sort
              #                     1282 untrack temp_230_ele_ptr_of_arr_82_82 
              #                     936  mu arr_82_17:690 
              #                     937  arr_82_18 = chi arr_82_17:690 
              #                     693  (nop) 
              #                     695  temp_232_ele_of_arr_82_82_0 = load temp_220_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_220_array_init_ptr_82
              #                    load from temp_220_array_init_ptr_82 in mem
    ld      a0,400(sp)
              #                    occupy a1 with temp_232_ele_of_arr_82_82_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     1276 untrack temp_220_array_init_ptr_82 
              #                    occupy a0 with temp_220_array_init_ptr_82
              #                    release a0 with temp_220_array_init_ptr_82
              #                     696  mu arr_82_18:695 
              #                     698  (nop) 
              #                     700  temp_234_ele_of_arr_82_82_0 = load temp_214_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_214_array_init_ptr_82
              #                    load from temp_214_array_init_ptr_82 in mem
    ld      a0,448(sp)
              #                    occupy a2 with temp_234_ele_of_arr_82_82_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     1263 untrack temp_214_array_init_ptr_82 
              #                    occupy a0 with temp_214_array_init_ptr_82
              #                    release a0 with temp_214_array_init_ptr_82
              #                     701  mu arr_82_18:700 
              #                     703  (nop) 
              #                     705  temp_236_ele_of_arr_82_82_0 = load temp_223_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_223_array_init_ptr_82
              #                    load from temp_223_array_init_ptr_82 in mem
    ld      a0,376(sp)
              #                    occupy a3 with temp_236_ele_of_arr_82_82_0
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     1281 untrack temp_223_array_init_ptr_82 
              #                    occupy a0 with temp_223_array_init_ptr_82
              #                    release a0 with temp_223_array_init_ptr_82
              #                     706  mu arr_82_18:705 
              #                     708  (nop) 
              #                     710  temp_238_ele_of_arr_82_82_0 = load temp_217_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_217_array_init_ptr_82
              #                    load from temp_217_array_init_ptr_82 in mem
    ld      a0,424(sp)
              #                    occupy a4 with temp_238_ele_of_arr_82_82_0
    lw      a4,0(a0)
              #                    free a4
              #                    free a0
              #                     1294 untrack temp_217_array_init_ptr_82 
              #                    occupy a0 with temp_217_array_init_ptr_82
              #                    release a0 with temp_217_array_init_ptr_82
              #                     711  mu arr_82_18:710 
              #                     713  (nop) 
              #                     715  temp_240_ele_of_arr_82_82_0 = load temp_221_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_221_array_init_ptr_82
              #                    load from temp_221_array_init_ptr_82 in mem
    ld      a0,392(sp)
              #                    occupy a5 with temp_240_ele_of_arr_82_82_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     1260 untrack temp_221_array_init_ptr_82 
              #                    occupy a0 with temp_221_array_init_ptr_82
              #                    release a0 with temp_221_array_init_ptr_82
              #                     716  mu arr_82_18:715 
              #                     718  (nop) 
              #                     720  temp_242_ele_of_arr_82_82_0 = load temp_215_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_215_array_init_ptr_82
              #                    load from temp_215_array_init_ptr_82 in mem
    ld      a0,440(sp)
              #                    occupy a6 with temp_242_ele_of_arr_82_82_0
    lw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     1308 untrack temp_215_array_init_ptr_82 
              #                    occupy a0 with temp_215_array_init_ptr_82
              #                    release a0 with temp_215_array_init_ptr_82
              #                     721  mu arr_82_18:720 
              #                     723  (nop) 
              #                     725  temp_244_ele_of_arr_82_82_0 = load temp_219_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_219_array_init_ptr_82
              #                    load from temp_219_array_init_ptr_82 in mem
    ld      a0,408(sp)
              #                    occupy a7 with temp_244_ele_of_arr_82_82_0
    lw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     1291 untrack temp_219_array_init_ptr_82 
              #                    occupy a0 with temp_219_array_init_ptr_82
              #                    release a0 with temp_219_array_init_ptr_82
              #                     726  mu arr_82_18:725 
              #                     728  (nop) 
              #                     730  temp_246_ele_of_arr_82_82_0 = load temp_224_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_224_array_init_ptr_82
              #                    load from temp_224_array_init_ptr_82 in mem
    ld      a0,368(sp)
              #                    occupy s1 with temp_246_ele_of_arr_82_82_0
    lw      s1,0(a0)
              #                    free s1
              #                    free a0
              #                     1309 untrack temp_224_array_init_ptr_82 
              #                    occupy a0 with temp_224_array_init_ptr_82
              #                    release a0 with temp_224_array_init_ptr_82
              #                     731  mu arr_82_18:730 
              #                     733  (nop) 
              #                     735  temp_248_ele_of_arr_82_82_0 = load temp_229_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_229_array_init_ptr_82
              #                    load from temp_229_array_init_ptr_82 in mem
    ld      a0,328(sp)
              #                    occupy s2 with temp_248_ele_of_arr_82_82_0
    lw      s2,0(a0)
              #                    free s2
              #                    free a0
              #                     1284 untrack temp_229_array_init_ptr_82 
              #                    occupy a0 with temp_229_array_init_ptr_82
              #                    release a0 with temp_229_array_init_ptr_82
              #                     736  mu arr_82_18:735 
              #                     738  (nop) 
              #                     740  temp_250_ele_of_arr_82_82_0 = load temp_228_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_228_array_init_ptr_82
              #                    load from temp_228_array_init_ptr_82 in mem
    ld      a0,336(sp)
              #                    occupy s3 with temp_250_ele_of_arr_82_82_0
    lw      s3,0(a0)
              #                    free s3
              #                    free a0
              #                     1301 untrack temp_228_array_init_ptr_82 
              #                    occupy a0 with temp_228_array_init_ptr_82
              #                    release a0 with temp_228_array_init_ptr_82
              #                     741  mu arr_82_18:740 
              #                     743  (nop) 
              #                     745  temp_252_ele_of_arr_82_82_0 = load temp_227_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_227_array_init_ptr_82
              #                    load from temp_227_array_init_ptr_82 in mem
    ld      a0,344(sp)
              #                    occupy s4 with temp_252_ele_of_arr_82_82_0
    lw      s4,0(a0)
              #                    free s4
              #                    free a0
              #                     1271 untrack temp_227_array_init_ptr_82 
              #                    occupy a0 with temp_227_array_init_ptr_82
              #                    release a0 with temp_227_array_init_ptr_82
              #                     746  mu arr_82_18:745 
              #                     748  (nop) 
              #                     750  temp_254_ele_of_arr_82_82_0 = load temp_225_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_225_array_init_ptr_82
              #                    load from temp_225_array_init_ptr_82 in mem
    ld      a0,360(sp)
              #                    occupy s5 with temp_254_ele_of_arr_82_82_0
    lw      s5,0(a0)
              #                    free s5
              #                    free a0
              #                     1290 untrack temp_225_array_init_ptr_82 
              #                    occupy a0 with temp_225_array_init_ptr_82
              #                    release a0 with temp_225_array_init_ptr_82
              #                     751  mu arr_82_18:750 
              #                     753  (nop) 
              #                     755  temp_256_ele_of_arr_82_82_0 = load temp_218_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_218_array_init_ptr_82
              #                    load from temp_218_array_init_ptr_82 in mem
    ld      a0,416(sp)
              #                    occupy s6 with temp_256_ele_of_arr_82_82_0
    lw      s6,0(a0)
              #                    free s6
              #                    free a0
              #                     1280 untrack temp_218_array_init_ptr_82 
              #                    occupy a0 with temp_218_array_init_ptr_82
              #                    release a0 with temp_218_array_init_ptr_82
              #                     756  mu arr_82_18:755 
              #                     758  (nop) 
              #                     760  temp_258_ele_of_arr_82_82_0 = load temp_222_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_222_array_init_ptr_82
              #                    load from temp_222_array_init_ptr_82 in mem
    ld      a0,384(sp)
              #                    occupy s7 with temp_258_ele_of_arr_82_82_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_258_ele_of_arr_82_82_0
              #                    store to temp_258_ele_of_arr_82_82_0 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_258_ele_of_arr_82_82_0
              #                    free a0
              #                     1300 untrack temp_222_array_init_ptr_82 
              #                    occupy a0 with temp_222_array_init_ptr_82
              #                    release a0 with temp_222_array_init_ptr_82
              #                     761  mu arr_82_18:760 
              #                     763  (nop) 
              #                     765  temp_260_ele_of_arr_82_82_0 = load temp_216_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_216_array_init_ptr_82
              #                    load from temp_216_array_init_ptr_82 in mem
    ld      a0,432(sp)
              #                    occupy s7 with temp_260_ele_of_arr_82_82_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_260_ele_of_arr_82_82_0
              #                    store to temp_260_ele_of_arr_82_82_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_260_ele_of_arr_82_82_0
              #                    free a0
              #                     1270 untrack temp_216_array_init_ptr_82 
              #                    occupy a0 with temp_216_array_init_ptr_82
              #                    release a0 with temp_216_array_init_ptr_82
              #                     766  mu arr_82_18:765 
              #                     768  (nop) 
              #                     770  temp_262_ele_of_arr_82_82_0 = load temp_226_array_init_ptr_82:ptr->i32 
              #                    occupy a0 with temp_226_array_init_ptr_82
              #                    load from temp_226_array_init_ptr_82 in mem
    ld      a0,352(sp)
              #                    occupy s7 with temp_262_ele_of_arr_82_82_0
    lw      s7,0(a0)
              #                    free s7
              #                    occupy s7 with temp_262_ele_of_arr_82_82_0
              #                    store to temp_262_ele_of_arr_82_82_0 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_262_ele_of_arr_82_82_0
              #                    free a0
              #                     1269 untrack temp_226_array_init_ptr_82 
              #                    occupy a0 with temp_226_array_init_ptr_82
              #                    release a0 with temp_226_array_init_ptr_82
              #                     771  mu arr_82_18:770 
              #                     773  temp_263_ret_of_param32_rec_82_0 =  Call i32 param32_rec_0(temp_232_ele_of_arr_82_82_0, temp_234_ele_of_arr_82_82_0, temp_236_ele_of_arr_82_82_0, temp_238_ele_of_arr_82_82_0, temp_240_ele_of_arr_82_82_0, temp_242_ele_of_arr_82_82_0, temp_244_ele_of_arr_82_82_0, temp_246_ele_of_arr_82_82_0, temp_248_ele_of_arr_82_82_0, temp_250_ele_of_arr_82_82_0, temp_252_ele_of_arr_82_82_0, temp_254_ele_of_arr_82_82_0, temp_256_ele_of_arr_82_82_0, temp_258_ele_of_arr_82_82_0, temp_260_ele_of_arr_82_82_0, temp_262_ele_of_arr_82_82_0, a1_80_0, a2_80_0, a3_80_0, a4_80_0, a5_80_0, a6_80_0, a7_80_0, a8_80_0, a9_80_0, a10_80_0, a11_80_0, a12_80_0, a13_80_0, a14_80_0, a15_80_0, a16_80_0) 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_248_ele_of_arr_82_82_0
              #                    store to a9_35_0 in mem offset legal
    sw      s2,-4(sp)
              #                    free s2
              #                    occupy s3 with temp_250_ele_of_arr_82_82_0
              #                    store to a10_35_0 in mem offset legal
    sw      s3,-8(sp)
              #                    free s3
              #                    occupy s4 with temp_252_ele_of_arr_82_82_0
              #                    store to a11_35_0 in mem offset legal
    sw      s4,-12(sp)
              #                    free s4
              #                    occupy s5 with temp_254_ele_of_arr_82_82_0
              #                    store to a12_35_0 in mem offset legal
    sw      s5,-16(sp)
              #                    free s5
              #                    occupy s6 with temp_256_ele_of_arr_82_82_0
              #                    store to a13_35_0 in mem offset legal
    sw      s6,-20(sp)
              #                    free s6
              #                    occupy a0 with temp_258_ele_of_arr_82_82_0
              #                    load from temp_258_ele_of_arr_82_82_0 in mem


    lw      a0,36(sp)
              #                    store to a14_35_0 in mem offset legal
    sw      a0,-24(sp)
              #                    free a0
              #                    occupy s7 with temp_260_ele_of_arr_82_82_0
              #                    load from temp_260_ele_of_arr_82_82_0 in mem


    lw      s7,20(sp)
              #                    store to a15_35_0 in mem offset legal
    sw      s7,-28(sp)
              #                    free s7
              #                    occupy s7 with temp_260_ele_of_arr_82_82_0
              #                    store to temp_260_ele_of_arr_82_82_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_260_ele_of_arr_82_82_0
              #                    occupy s7 with temp_262_ele_of_arr_82_82_0
              #                    load from temp_262_ele_of_arr_82_82_0 in mem


    lw      s7,4(sp)
              #                    store to a16_35_0 in mem offset legal
    sw      s7,-32(sp)
              #                    free s7
              #                    occupy s7 with temp_262_ele_of_arr_82_82_0
              #                    store to temp_262_ele_of_arr_82_82_0 in mem offset legal
    sw      s7,4(sp)
              #                    release s7 with temp_262_ele_of_arr_82_82_0
              #                    occupy s7 with a1_80_0
              #                    load from a1_80_0 in mem


    lw      s7,492(sp)
              #                    store to a17_35_0 in mem offset legal
    sw      s7,-36(sp)
              #                    free s7
              #                    occupy s7 with a1_80_0
              #                    store to a1_80_0 in mem offset legal
    sw      s7,492(sp)
              #                    release s7 with a1_80_0
              #                    occupy s7 with a2_80_0
              #                    load from a2_80_0 in mem


    lw      s7,488(sp)
              #                    store to a18_35_0 in mem offset legal
    sw      s7,-40(sp)
              #                    free s7
              #                    occupy s7 with a2_80_0
              #                    store to a2_80_0 in mem offset legal
    sw      s7,488(sp)
              #                    release s7 with a2_80_0
              #                    occupy s7 with a3_80_0
              #                    load from a3_80_0 in mem


    lw      s7,484(sp)
              #                    store to a19_35_0 in mem offset legal
    sw      s7,-44(sp)
              #                    free s7
              #                    occupy s7 with a3_80_0
              #                    store to a3_80_0 in mem offset legal
    sw      s7,484(sp)
              #                    release s7 with a3_80_0
              #                    occupy s7 with a4_80_0
              #                    load from a4_80_0 in mem


    lw      s7,480(sp)
              #                    store to a20_35_0 in mem offset legal
    sw      s7,-48(sp)
              #                    free s7
              #                    occupy s7 with a4_80_0
              #                    store to a4_80_0 in mem offset legal
    sw      s7,480(sp)
              #                    release s7 with a4_80_0
              #                    occupy s7 with a5_80_0
              #                    load from a5_80_0 in mem


    lw      s7,476(sp)
              #                    store to a21_35_0 in mem offset legal
    sw      s7,-52(sp)
              #                    free s7
              #                    occupy s7 with a5_80_0
              #                    store to a5_80_0 in mem offset legal
    sw      s7,476(sp)
              #                    release s7 with a5_80_0
              #                    occupy s7 with a6_80_0
              #                    load from a6_80_0 in mem


    lw      s7,472(sp)
              #                    store to a22_35_0 in mem offset legal
    sw      s7,-56(sp)
              #                    free s7
              #                    occupy s7 with a6_80_0
              #                    store to a6_80_0 in mem offset legal
    sw      s7,472(sp)
              #                    release s7 with a6_80_0
              #                    occupy s7 with a7_80_0
              #                    load from a7_80_0 in mem


    lw      s7,468(sp)
              #                    store to a23_35_0 in mem offset legal
    sw      s7,-60(sp)
              #                    free s7
              #                    occupy s7 with a7_80_0
              #                    store to a7_80_0 in mem offset legal
    sw      s7,468(sp)
              #                    release s7 with a7_80_0
              #                    occupy s7 with a8_80_0
              #                    load from a8_80_0 in mem


    lw      s7,464(sp)
              #                    store to a24_35_0 in mem offset legal
    sw      s7,-64(sp)
              #                    free s7
              #                    occupy s7 with a8_80_0
              #                    store to a8_80_0 in mem offset legal
    sw      s7,464(sp)
              #                    release s7 with a8_80_0
              #                    occupy s7 with a9_80_0
              #                    load from a9_80_0 in mem


    lw      s7,540(sp)
              #                    store to a25_35_0 in mem offset legal
    sw      s7,-68(sp)
              #                    free s7
              #                    occupy s7 with a9_80_0
              #                    store to a9_80_0 in mem offset legal
    sw      s7,540(sp)
              #                    release s7 with a9_80_0
              #                    occupy s7 with a10_80_0
              #                    load from a10_80_0 in mem


    lw      s7,536(sp)
              #                    store to a26_35_0 in mem offset legal
    sw      s7,-72(sp)
              #                    free s7
              #                    occupy s7 with a10_80_0
              #                    store to a10_80_0 in mem offset legal
    sw      s7,536(sp)
              #                    release s7 with a10_80_0
              #                    occupy s7 with a11_80_0
              #                    load from a11_80_0 in mem


    lw      s7,532(sp)
              #                    store to a27_35_0 in mem offset legal
    sw      s7,-76(sp)
              #                    free s7
              #                    occupy s7 with a11_80_0
              #                    store to a11_80_0 in mem offset legal
    sw      s7,532(sp)
              #                    release s7 with a11_80_0
              #                    occupy s7 with a12_80_0
              #                    load from a12_80_0 in mem


    lw      s7,528(sp)
              #                    store to a28_35_0 in mem offset legal
    sw      s7,-80(sp)
              #                    free s7
              #                    occupy s7 with a12_80_0
              #                    store to a12_80_0 in mem offset legal
    sw      s7,528(sp)
              #                    release s7 with a12_80_0
              #                    occupy s7 with a13_80_0
              #                    load from a13_80_0 in mem


    lw      s7,524(sp)
              #                    store to a29_35_0 in mem offset legal
    sw      s7,-84(sp)
              #                    free s7
              #                    occupy s7 with a13_80_0
              #                    store to a13_80_0 in mem offset legal
    sw      s7,524(sp)
              #                    release s7 with a13_80_0
              #                    occupy s7 with a14_80_0
              #                    load from a14_80_0 in mem


    lw      s7,520(sp)
              #                    store to a30_35_0 in mem offset legal
    sw      s7,-88(sp)
              #                    free s7
              #                    occupy s7 with a14_80_0
              #                    store to a14_80_0 in mem offset legal
    sw      s7,520(sp)
              #                    release s7 with a14_80_0
              #                    occupy s7 with a15_80_0
              #                    load from a15_80_0 in mem


    lw      s7,516(sp)
              #                    store to a31_35_0 in mem offset legal
    sw      s7,-92(sp)
              #                    free s7
              #                    occupy s7 with a15_80_0
              #                    store to a15_80_0 in mem offset legal
    sw      s7,516(sp)
              #                    release s7 with a15_80_0
              #                    occupy s7 with a16_80_0
              #                    load from a16_80_0 in mem


    lw      s7,512(sp)
              #                    store to a32_35_0 in mem offset legal
    sw      s7,-96(sp)
              #                    free s7
              #                    occupy s7 with a16_80_0
              #                    store to a16_80_0 in mem offset legal
    sw      s7,512(sp)
              #                    release s7 with a16_80_0
              #                    occupy s1 with temp_246_ele_of_arr_82_82_0
              #                    store to temp_246_ele_of_arr_82_82_0 in mem offset legal
    sw      s1,132(sp)
              #                    release s1 with temp_246_ele_of_arr_82_82_0
              #                    occupy s2 with temp_248_ele_of_arr_82_82_0
              #                    store to temp_248_ele_of_arr_82_82_0 in mem offset legal
    sw      s2,116(sp)
              #                    release s2 with temp_248_ele_of_arr_82_82_0
              #                    occupy s3 with temp_250_ele_of_arr_82_82_0
              #                    store to temp_250_ele_of_arr_82_82_0 in mem offset legal
    sw      s3,100(sp)
              #                    release s3 with temp_250_ele_of_arr_82_82_0
              #                    occupy s4 with temp_252_ele_of_arr_82_82_0
              #                    store to temp_252_ele_of_arr_82_82_0 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with temp_252_ele_of_arr_82_82_0
              #                    occupy s5 with temp_254_ele_of_arr_82_82_0
              #                    store to temp_254_ele_of_arr_82_82_0 in mem offset legal
    sw      s5,68(sp)
              #                    release s5 with temp_254_ele_of_arr_82_82_0
              #                    occupy s6 with temp_256_ele_of_arr_82_82_0
              #                    store to temp_256_ele_of_arr_82_82_0 in mem offset legal
    sw      s6,52(sp)
              #                    release s6 with temp_256_ele_of_arr_82_82_0
              #                    occupy a0 with temp_258_ele_of_arr_82_82_0
              #                    store to temp_258_ele_of_arr_82_82_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_258_ele_of_arr_82_82_0
              #                    occupy a1 with temp_232_ele_of_arr_82_82_0
              #                    store to temp_232_ele_of_arr_82_82_0 in mem offset legal
    sw      a1,244(sp)
              #                    release a1 with temp_232_ele_of_arr_82_82_0
              #                    occupy a2 with temp_234_ele_of_arr_82_82_0
              #                    store to temp_234_ele_of_arr_82_82_0 in mem offset legal
    sw      a2,228(sp)
              #                    release a2 with temp_234_ele_of_arr_82_82_0
              #                    occupy a3 with temp_236_ele_of_arr_82_82_0
              #                    store to temp_236_ele_of_arr_82_82_0 in mem offset legal
    sw      a3,212(sp)
              #                    release a3 with temp_236_ele_of_arr_82_82_0
              #                    occupy a4 with temp_238_ele_of_arr_82_82_0
              #                    store to temp_238_ele_of_arr_82_82_0 in mem offset legal
    sw      a4,196(sp)
              #                    release a4 with temp_238_ele_of_arr_82_82_0
              #                    occupy a5 with temp_240_ele_of_arr_82_82_0
              #                    store to temp_240_ele_of_arr_82_82_0 in mem offset legal
    sw      a5,180(sp)
              #                    release a5 with temp_240_ele_of_arr_82_82_0
              #                    occupy a6 with temp_242_ele_of_arr_82_82_0
              #                    store to temp_242_ele_of_arr_82_82_0 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with temp_242_ele_of_arr_82_82_0
              #                    occupy a7 with temp_244_ele_of_arr_82_82_0
              #                    store to temp_244_ele_of_arr_82_82_0 in mem offset legal
    sw      a7,148(sp)
              #                    release a7 with temp_244_ele_of_arr_82_82_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_232_ele_of_arr_82_82_0_0
              #                    load from temp_232_ele_of_arr_82_82_0 in mem


    lw      a0,244(sp)
              #                    occupy a1 with _anonymous_of_temp_234_ele_of_arr_82_82_0_0
              #                    load from temp_234_ele_of_arr_82_82_0 in mem


    lw      a1,228(sp)
              #                    occupy a2 with _anonymous_of_temp_236_ele_of_arr_82_82_0_0
              #                    load from temp_236_ele_of_arr_82_82_0 in mem


    lw      a2,212(sp)
              #                    occupy a3 with _anonymous_of_temp_238_ele_of_arr_82_82_0_0
              #                    load from temp_238_ele_of_arr_82_82_0 in mem


    lw      a3,196(sp)
              #                    occupy a4 with _anonymous_of_temp_240_ele_of_arr_82_82_0_0
              #                    load from temp_240_ele_of_arr_82_82_0 in mem


    lw      a4,180(sp)
              #                    occupy a5 with _anonymous_of_temp_242_ele_of_arr_82_82_0_0
              #                    load from temp_242_ele_of_arr_82_82_0 in mem


    lw      a5,164(sp)
              #                    occupy a6 with _anonymous_of_temp_244_ele_of_arr_82_82_0_0
              #                    load from temp_244_ele_of_arr_82_82_0 in mem


    lw      a6,148(sp)
              #                    occupy a7 with _anonymous_of_temp_246_ele_of_arr_82_82_0_0
              #                    load from temp_246_ele_of_arr_82_82_0 in mem


    lw      a7,132(sp)
              #                    arg load ended


    call    param32_rec
              #                     1307 untrack a8_80_0 
              #                     1306 untrack temp_250_ele_of_arr_82_82_0 
              #                     1305 untrack a5_80_0 
              #                     1304 untrack temp_240_ele_of_arr_82_82_0 
              #                     1303 untrack a7_80_0 
              #                     1302 untrack temp_256_ele_of_arr_82_82_0 
              #                     1299 untrack temp_238_ele_of_arr_82_82_0 
              #                     1298 untrack a2_80_0 
              #                     1297 untrack temp_248_ele_of_arr_82_82_0 
              #                     1296 untrack a11_80_0 
              #                     1293 untrack a14_80_0 
              #                     1292 untrack temp_252_ele_of_arr_82_82_0 
              #                     1289 untrack a6_80_0 
              #                     1288 untrack a9_80_0 
              #                     1287 untrack a13_80_0 
              #                     1286 untrack a12_80_0 
              #                     1285 untrack temp_244_ele_of_arr_82_82_0 
              #                     1283 untrack a15_80_0 
              #                     1279 untrack a1_80_0 
              #                     1278 untrack temp_260_ele_of_arr_82_82_0 
              #                     1277 untrack temp_242_ele_of_arr_82_82_0 
              #                     1275 untrack a16_80_0 
              #                     1274 untrack a4_80_0 
              #                     1273 untrack temp_258_ele_of_arr_82_82_0 
              #                     1272 untrack temp_246_ele_of_arr_82_82_0 
              #                     1268 untrack a3_80_0 
              #                     1267 untrack temp_232_ele_of_arr_82_82_0 
              #                     1266 untrack temp_234_ele_of_arr_82_82_0 
              #                     1265 untrack temp_236_ele_of_arr_82_82_0 
              #                     1264 untrack a10_80_0 
              #                     1262 untrack temp_262_ele_of_arr_82_82_0 
              #                     1261 untrack temp_254_ele_of_arr_82_82_0 
              #                     774  ret temp_263_ret_of_param32_rec_82_0 
              #                    load from ra_param16_0 in mem
    ld      ra,504(sp)
              #                    load from s0_param16_0 in mem
    ld      s0,496(sp)
              #                    occupy a0 with temp_263_ret_of_param32_rec_82_0
              #                    store to temp_263_ret_of_param32_rec_82_0 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_263_ret_of_param32_rec_82_0
              #                    occupy a0 with temp_263_ret_of_param32_rec_82_0
              #                    load from temp_263_ret_of_param32_rec_82_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,544
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     53   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 696|s0_main:8 at 688|temp_264_ret_of_getint _s87 _i0:4 at 684|temp_265_ret_of_getint _s87 _i0:4 at 680|temp_266_ret_of_getint _s87 _i0:4 at 676|temp_267_ret_of_getint _s87 _i0:4 at 672|temp_268_ret_of_getint _s87 _i0:4 at 668|temp_269_ret_of_getint _s87 _i0:4 at 664|temp_270_ret_of_getint _s87 _i0:4 at 660|temp_271_ret_of_getint _s87 _i0:4 at 656|temp_272_ret_of_getint _s87 _i0:4 at 652|temp_273_ret_of_getint _s87 _i0:4 at 648|temp_274_ret_of_getint _s87 _i0:4 at 644|temp_275_ret_of_getint _s87 _i0:4 at 640|temp_276_ret_of_getint _s87 _i0:4 at 636|temp_277_ret_of_getint _s87 _i0:4 at 632|temp_278_ret_of_getint _s87 _i0:4 at 628|temp_279_ret_of_getint _s87 _i0:4 at 624|temp_280_ret_of_param16 _s87 _i0:4 at 620|none:4 at 616|temp_281_array_init_ptr:8 at 608|temp_282_array_init_ptr:8 at 600|temp_283_array_init_ptr:8 at 592|arr:256 at 336|i _s87 _i1:4 at 332|none:4 at 328|temp_284_ptr_of_arr_87:8 at 320|temp_285_ptr_of_arr_87:8 at 312|temp_286_ptr_of_arr_87:8 at 304|temp_287_ptr_of_arr_87:8 at 296|temp_288_ptr_of_arr_87:8 at 288|temp_289_ptr_of_arr_87:8 at 280|temp_290_ptr_of_arr_87:8 at 272|temp_291_ptr_of_arr_87:8 at 264|temp_292_ptr_of_arr_87:8 at 256|temp_293_ptr_of_arr_87:8 at 248|temp_294_ptr_of_arr_87:8 at 240|temp_295_ptr_of_arr_87:8 at 232|temp_296_ptr_of_arr_87:8 at 224|temp_297_ptr_of_arr_87:8 at 216|temp_298_ptr_of_arr_87:8 at 208|temp_299_ptr_of_arr_87:8 at 200|temp_300_ptr_of_arr_87:8 at 192|temp_301_ptr_of_arr_87:8 at 184|temp_302_ptr_of_arr_87:8 at 176|temp_303_ptr_of_arr_87:8 at 168|temp_304_ptr_of_arr_87:8 at 160|temp_305_ptr_of_arr_87:8 at 152|temp_306_ptr_of_arr_87:8 at 144|temp_307_ptr_of_arr_87:8 at 136|temp_308_ptr_of_arr_87:8 at 128|temp_309_ptr_of_arr_87:8 at 120|temp_310_ptr_of_arr_87:8 at 112|temp_311_ptr_of_arr_87:8 at 104|temp_312_ptr_of_arr_87:8 at 96|temp_313_ptr_of_arr_87:8 at 88|temp_314_ptr_of_arr_87:8 at 80|temp_315_ptr_of_arr_87:8 at 72|temp_316_ret_of_param32_arr _s87 _i0:4 at 68|none:4 at 64|temp_317_ptr_of_arr_87:8 at 56|temp_318_arithop _s91 _i0:4 at 52|none:4 at 48|temp_319_ptr_of_arr_87:8 at 40|temp_320_ele_of_arr_87 _s91 _i0:4 at 36|temp_321_arithop _s91 _i0:4 at 32|temp_322_ptr_of_arr_87:8 at 24|temp_324_ptr_of_arr_87:8 at 16|temp_325_ele_of_arr_87 _s91 _i0:4 at 12|temp_326_arithop _s91 _i0:4 at 8|temp_327_arithop _s91 _i0:4 at 4|temp_328_cmp _s89 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-704
              #                    store to ra_main_0 in mem offset legal
    sd      ra,696(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,688(sp)
    addi    s0,sp,704
              #                     778  alloc i32 [temp_264_ret_of_getint_87] 
              #                     780  alloc i32 [temp_265_ret_of_getint_87] 
              #                     782  alloc i32 [temp_266_ret_of_getint_87] 
              #                     784  alloc i32 [temp_267_ret_of_getint_87] 
              #                     786  alloc i32 [temp_268_ret_of_getint_87] 
              #                     788  alloc i32 [temp_269_ret_of_getint_87] 
              #                     790  alloc i32 [temp_270_ret_of_getint_87] 
              #                     792  alloc i32 [temp_271_ret_of_getint_87] 
              #                     794  alloc i32 [temp_272_ret_of_getint_87] 
              #                     796  alloc i32 [temp_273_ret_of_getint_87] 
              #                     798  alloc i32 [temp_274_ret_of_getint_87] 
              #                     800  alloc i32 [temp_275_ret_of_getint_87] 
              #                     802  alloc i32 [temp_276_ret_of_getint_87] 
              #                     804  alloc i32 [temp_277_ret_of_getint_87] 
              #                     806  alloc i32 [temp_278_ret_of_getint_87] 
              #                     808  alloc i32 [temp_279_ret_of_getint_87] 
              #                     810  alloc i32 [temp_280_ret_of_param16_87] 
              #                     812  alloc ptr->i32 [temp_281_array_init_ptr_87] 
              #                     815  alloc ptr->i32 [temp_282_array_init_ptr_87] 
              #                     819  alloc ptr->i32 [temp_283_array_init_ptr_87] 
              #                     823  alloc Array:i32:[Some(32_0), Some(2_0)] [arr_87] 
              #                     825  alloc i32 [i_87] 
              #                     826  alloc ptr->i32 [temp_284_ptr_of_arr_87_87] 
              #                     828  alloc ptr->i32 [temp_285_ptr_of_arr_87_87] 
              #                     830  alloc ptr->i32 [temp_286_ptr_of_arr_87_87] 
              #                     832  alloc ptr->i32 [temp_287_ptr_of_arr_87_87] 
              #                     834  alloc ptr->i32 [temp_288_ptr_of_arr_87_87] 
              #                     836  alloc ptr->i32 [temp_289_ptr_of_arr_87_87] 
              #                     838  alloc ptr->i32 [temp_290_ptr_of_arr_87_87] 
              #                     840  alloc ptr->i32 [temp_291_ptr_of_arr_87_87] 
              #                     842  alloc ptr->i32 [temp_292_ptr_of_arr_87_87] 
              #                     844  alloc ptr->i32 [temp_293_ptr_of_arr_87_87] 
              #                     846  alloc ptr->i32 [temp_294_ptr_of_arr_87_87] 
              #                     848  alloc ptr->i32 [temp_295_ptr_of_arr_87_87] 
              #                     850  alloc ptr->i32 [temp_296_ptr_of_arr_87_87] 
              #                     852  alloc ptr->i32 [temp_297_ptr_of_arr_87_87] 
              #                     854  alloc ptr->i32 [temp_298_ptr_of_arr_87_87] 
              #                     856  alloc ptr->i32 [temp_299_ptr_of_arr_87_87] 
              #                     858  alloc ptr->i32 [temp_300_ptr_of_arr_87_87] 
              #                     860  alloc ptr->i32 [temp_301_ptr_of_arr_87_87] 
              #                     862  alloc ptr->i32 [temp_302_ptr_of_arr_87_87] 
              #                     864  alloc ptr->i32 [temp_303_ptr_of_arr_87_87] 
              #                     866  alloc ptr->i32 [temp_304_ptr_of_arr_87_87] 
              #                     868  alloc ptr->i32 [temp_305_ptr_of_arr_87_87] 
              #                     870  alloc ptr->i32 [temp_306_ptr_of_arr_87_87] 
              #                     872  alloc ptr->i32 [temp_307_ptr_of_arr_87_87] 
              #                     874  alloc ptr->i32 [temp_308_ptr_of_arr_87_87] 
              #                     876  alloc ptr->i32 [temp_309_ptr_of_arr_87_87] 
              #                     878  alloc ptr->i32 [temp_310_ptr_of_arr_87_87] 
              #                     880  alloc ptr->i32 [temp_311_ptr_of_arr_87_87] 
              #                     882  alloc ptr->i32 [temp_312_ptr_of_arr_87_87] 
              #                     884  alloc ptr->i32 [temp_313_ptr_of_arr_87_87] 
              #                     886  alloc ptr->i32 [temp_314_ptr_of_arr_87_87] 
              #                     888  alloc ptr->i32 [temp_315_ptr_of_arr_87_87] 
              #                     890  alloc i32 [temp_316_ret_of_param32_arr_87] 
              #                     896  alloc ptr->i32 [temp_317_ptr_of_arr_87_91] 
              #                     898  alloc i32 [temp_318_arithop_91] 
              #                     900  alloc ptr->i32 [temp_319_ptr_of_arr_87_91] 
              #                     902  alloc i32 [temp_320_ele_of_arr_87_91] 
              #                     905  alloc i32 [temp_321_arithop_91] 
              #                     909  alloc ptr->i32 [temp_322_ptr_of_arr_87_91] 
              #                     911  alloc i32 [temp_323_arithop_91] 
              #                     913  alloc ptr->i32 [temp_324_ptr_of_arr_87_91] 
              #                     915  alloc i32 [temp_325_ele_of_arr_87_91] 
              #                     918  alloc i32 [temp_326_arithop_91] 
              #                     922  alloc i32 [temp_327_arithop_91] 
              #                     925  alloc i1 [temp_328_cmp_89] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     777   
              #                     779  temp_264_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     781  temp_265_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_264_ret_of_getint_87_0
              #                    store to temp_264_ret_of_getint_87_0 in mem offset legal
    sw      a0,684(sp)
              #                    release a0 with temp_264_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     783  temp_266_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_265_ret_of_getint_87_0
              #                    store to temp_265_ret_of_getint_87_0 in mem offset legal
    sw      a0,680(sp)
              #                    release a0 with temp_265_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     785  temp_267_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_266_ret_of_getint_87_0
              #                    store to temp_266_ret_of_getint_87_0 in mem offset legal
    sw      a0,676(sp)
              #                    release a0 with temp_266_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     787  temp_268_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_267_ret_of_getint_87_0
              #                    store to temp_267_ret_of_getint_87_0 in mem offset legal
    sw      a0,672(sp)
              #                    release a0 with temp_267_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     789  temp_269_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_268_ret_of_getint_87_0
              #                    store to temp_268_ret_of_getint_87_0 in mem offset legal
    sw      a0,668(sp)
              #                    release a0 with temp_268_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     791  temp_270_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_269_ret_of_getint_87_0
              #                    store to temp_269_ret_of_getint_87_0 in mem offset legal
    sw      a0,664(sp)
              #                    release a0 with temp_269_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     793  temp_271_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_270_ret_of_getint_87_0
              #                    store to temp_270_ret_of_getint_87_0 in mem offset legal
    sw      a0,660(sp)
              #                    release a0 with temp_270_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     795  temp_272_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_271_ret_of_getint_87_0
              #                    store to temp_271_ret_of_getint_87_0 in mem offset legal
    sw      a0,656(sp)
              #                    release a0 with temp_271_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     797  temp_273_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_272_ret_of_getint_87_0
              #                    store to temp_272_ret_of_getint_87_0 in mem offset legal
    sw      a0,652(sp)
              #                    release a0 with temp_272_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     799  temp_274_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_273_ret_of_getint_87_0
              #                    store to temp_273_ret_of_getint_87_0 in mem offset legal
    sw      a0,648(sp)
              #                    release a0 with temp_273_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     801  temp_275_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_274_ret_of_getint_87_0
              #                    store to temp_274_ret_of_getint_87_0 in mem offset legal
    sw      a0,644(sp)
              #                    release a0 with temp_274_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     803  temp_276_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_275_ret_of_getint_87_0
              #                    store to temp_275_ret_of_getint_87_0 in mem offset legal
    sw      a0,640(sp)
              #                    release a0 with temp_275_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     805  temp_277_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_276_ret_of_getint_87_0
              #                    store to temp_276_ret_of_getint_87_0 in mem offset legal
    sw      a0,636(sp)
              #                    release a0 with temp_276_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     807  temp_278_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_277_ret_of_getint_87_0
              #                    store to temp_277_ret_of_getint_87_0 in mem offset legal
    sw      a0,632(sp)
              #                    release a0 with temp_277_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     809  temp_279_ret_of_getint_87_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_278_ret_of_getint_87_0
              #                    store to temp_278_ret_of_getint_87_0 in mem offset legal
    sw      a0,628(sp)
              #                    release a0 with temp_278_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     811  temp_280_ret_of_param16_87_0 =  Call i32 param16_0(temp_264_ret_of_getint_87_0, temp_265_ret_of_getint_87_0, temp_266_ret_of_getint_87_0, temp_267_ret_of_getint_87_0, temp_268_ret_of_getint_87_0, temp_269_ret_of_getint_87_0, temp_270_ret_of_getint_87_0, temp_271_ret_of_getint_87_0, temp_272_ret_of_getint_87_0, temp_273_ret_of_getint_87_0, temp_274_ret_of_getint_87_0, temp_275_ret_of_getint_87_0, temp_276_ret_of_getint_87_0, temp_277_ret_of_getint_87_0, temp_278_ret_of_getint_87_0, temp_279_ret_of_getint_87_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_272_ret_of_getint_87_0
              #                    load from temp_272_ret_of_getint_87_0 in mem


    lw      a1,652(sp)
              #                    store to a9_80_0 in mem offset legal
    sw      a1,-4(sp)
              #                    free a1
              #                    occupy a2 with temp_273_ret_of_getint_87_0
              #                    load from temp_273_ret_of_getint_87_0 in mem


    lw      a2,648(sp)
              #                    store to a10_80_0 in mem offset legal
    sw      a2,-8(sp)
              #                    free a2
              #                    occupy a3 with temp_274_ret_of_getint_87_0
              #                    load from temp_274_ret_of_getint_87_0 in mem


    lw      a3,644(sp)
              #                    store to a11_80_0 in mem offset legal
    sw      a3,-12(sp)
              #                    free a3
              #                    occupy a4 with temp_275_ret_of_getint_87_0
              #                    load from temp_275_ret_of_getint_87_0 in mem


    lw      a4,640(sp)
              #                    store to a12_80_0 in mem offset legal
    sw      a4,-16(sp)
              #                    free a4
              #                    occupy a5 with temp_276_ret_of_getint_87_0
              #                    load from temp_276_ret_of_getint_87_0 in mem


    lw      a5,636(sp)
              #                    store to a13_80_0 in mem offset legal
    sw      a5,-20(sp)
              #                    free a5
              #                    occupy a6 with temp_277_ret_of_getint_87_0
              #                    load from temp_277_ret_of_getint_87_0 in mem


    lw      a6,632(sp)
              #                    store to a14_80_0 in mem offset legal
    sw      a6,-24(sp)
              #                    free a6
              #                    occupy a7 with temp_278_ret_of_getint_87_0
              #                    load from temp_278_ret_of_getint_87_0 in mem


    lw      a7,628(sp)
              #                    store to a15_80_0 in mem offset legal
    sw      a7,-28(sp)
              #                    free a7
              #                    occupy a0 with temp_279_ret_of_getint_87_0
              #                    store to a16_80_0 in mem offset legal
    sw      a0,-32(sp)
              #                    free a0
              #                    occupy a0 with temp_279_ret_of_getint_87_0
              #                    store to temp_279_ret_of_getint_87_0 in mem offset legal
    sw      a0,624(sp)
              #                    release a0 with temp_279_ret_of_getint_87_0
              #                    occupy a1 with temp_272_ret_of_getint_87_0
              #                    store to temp_272_ret_of_getint_87_0 in mem offset legal
    sw      a1,652(sp)
              #                    release a1 with temp_272_ret_of_getint_87_0
              #                    occupy a2 with temp_273_ret_of_getint_87_0
              #                    store to temp_273_ret_of_getint_87_0 in mem offset legal
    sw      a2,648(sp)
              #                    release a2 with temp_273_ret_of_getint_87_0
              #                    occupy a3 with temp_274_ret_of_getint_87_0
              #                    store to temp_274_ret_of_getint_87_0 in mem offset legal
    sw      a3,644(sp)
              #                    release a3 with temp_274_ret_of_getint_87_0
              #                    occupy a4 with temp_275_ret_of_getint_87_0
              #                    store to temp_275_ret_of_getint_87_0 in mem offset legal
    sw      a4,640(sp)
              #                    release a4 with temp_275_ret_of_getint_87_0
              #                    occupy a5 with temp_276_ret_of_getint_87_0
              #                    store to temp_276_ret_of_getint_87_0 in mem offset legal
    sw      a5,636(sp)
              #                    release a5 with temp_276_ret_of_getint_87_0
              #                    occupy a6 with temp_277_ret_of_getint_87_0
              #                    store to temp_277_ret_of_getint_87_0 in mem offset legal
    sw      a6,632(sp)
              #                    release a6 with temp_277_ret_of_getint_87_0
              #                    occupy a7 with temp_278_ret_of_getint_87_0
              #                    store to temp_278_ret_of_getint_87_0 in mem offset legal
    sw      a7,628(sp)
              #                    release a7 with temp_278_ret_of_getint_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_264_ret_of_getint_87_0_0
              #                    load from temp_264_ret_of_getint_87_0 in mem


    lw      a0,684(sp)
              #                    occupy a1 with _anonymous_of_temp_265_ret_of_getint_87_0_0
              #                    load from temp_265_ret_of_getint_87_0 in mem


    lw      a1,680(sp)
              #                    occupy a2 with _anonymous_of_temp_266_ret_of_getint_87_0_0
              #                    load from temp_266_ret_of_getint_87_0 in mem


    lw      a2,676(sp)
              #                    occupy a3 with _anonymous_of_temp_267_ret_of_getint_87_0_0
              #                    load from temp_267_ret_of_getint_87_0 in mem


    lw      a3,672(sp)
              #                    occupy a4 with _anonymous_of_temp_268_ret_of_getint_87_0_0
              #                    load from temp_268_ret_of_getint_87_0 in mem


    lw      a4,668(sp)
              #                    occupy a5 with _anonymous_of_temp_269_ret_of_getint_87_0_0
              #                    load from temp_269_ret_of_getint_87_0 in mem


    lw      a5,664(sp)
              #                    occupy a6 with _anonymous_of_temp_270_ret_of_getint_87_0_0
              #                    load from temp_270_ret_of_getint_87_0 in mem


    lw      a6,660(sp)
              #                    occupy a7 with _anonymous_of_temp_271_ret_of_getint_87_0_0
              #                    load from temp_271_ret_of_getint_87_0 in mem


    lw      a7,656(sp)
              #                    arg load ended


    call    param16
              #                     1329 untrack temp_276_ret_of_getint_87_0 
              #                     1327 untrack temp_267_ret_of_getint_87_0 
              #                     1326 untrack temp_264_ret_of_getint_87_0 
              #                     1325 untrack temp_266_ret_of_getint_87_0 
              #                     1324 untrack temp_274_ret_of_getint_87_0 
              #                     1322 untrack temp_275_ret_of_getint_87_0 
              #                     1321 untrack temp_273_ret_of_getint_87_0 
              #                     1320 untrack temp_279_ret_of_getint_87_0 
              #                     1319 untrack temp_270_ret_of_getint_87_0 
              #                     1318 untrack temp_271_ret_of_getint_87_0 
              #                     1317 untrack temp_272_ret_of_getint_87_0 
              #                     1315 untrack temp_265_ret_of_getint_87_0 
              #                     1313 untrack temp_268_ret_of_getint_87_0 
              #                     1312 untrack temp_277_ret_of_getint_87_0 
              #                     1311 untrack temp_269_ret_of_getint_87_0 
              #                     1310 untrack temp_278_ret_of_getint_87_0 
              #                     813  temp_281_array_init_ptr_87 = GEP arr_87_0:Array:i32:[Some(32_0), Some(2_0)] [] 
              #                    occupy a1 with temp_281_array_init_ptr_87
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,336
              #                    free a1
              #                     814   Call void memset_0(temp_281_array_init_ptr_87, 0_0, 256_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_280_ret_of_param16_87_0
              #                    store to temp_280_ret_of_param16_87_0 in mem offset legal
    sw      a0,620(sp)
              #                    release a0 with temp_280_ret_of_param16_87_0
              #                    occupy a1 with temp_281_array_init_ptr_87
              #                    store to temp_281_array_init_ptr_87 in mem offset legal
    sd      a1,608(sp)
              #                    release a1 with temp_281_array_init_ptr_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_281_array_init_ptr_87_0
              #                    load from temp_281_array_init_ptr_87 in mem
    ld      a0,608(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_256_0_0
    li      a2, 256
              #                    arg load ended


    call    memset
              #                     1314 untrack temp_281_array_init_ptr_87 
              #                     938  mu arr_87_0:814 
              #                     939  arr_87_1 = chi arr_87_0:814 
              #                     816  temp_282_array_init_ptr_87 = GEP arr_87_1:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_282_array_init_ptr_87
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 1
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,336
              #                    free a0
              #                     817  store 8848_0:i32 temp_282_array_init_ptr_87:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_282_array_init_ptr_87
              #                    occupy a3 with 8848_0
    li      a3, 8848
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     1323 untrack temp_282_array_init_ptr_87 
              #                    occupy a0 with temp_282_array_init_ptr_87
              #                    release a0 with temp_282_array_init_ptr_87
              #                     818  arr_87_2 = chi arr_87_1:817 
              #                     820  temp_283_array_init_ptr_87 = GEP arr_87_2:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_283_array_init_ptr_87
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,336
              #                    free a0
              #                     821  store temp_280_ret_of_param16_87_0:i32 temp_283_array_init_ptr_87:ptr->Array:i32:[Some(2_0)] 
              #                    occupy a0 with temp_283_array_init_ptr_87
              #                    occupy a6 with temp_280_ret_of_param16_87_0
              #                    load from temp_280_ret_of_param16_87_0 in mem


    lw      a6,620(sp)
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     1328 untrack temp_280_ret_of_param16_87_0 
              #                    occupy a6 with temp_280_ret_of_param16_87_0
              #                    release a6 with temp_280_ret_of_param16_87_0
              #                     1316 untrack temp_283_array_init_ptr_87 
              #                    occupy a0 with temp_283_array_init_ptr_87
              #                    release a0 with temp_283_array_init_ptr_87
              #                     822  arr_87_3 = chi arr_87_2:821 
              #                     824  (nop) 
              #                     953  i_87_1 = i32 1_0 
              #                    occupy a0 with i_87_1
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_90 
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: i_87_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     927  label while.head_90: 
.while.head_90:
              #                     926  temp_328_cmp_89_0 = icmp i32 Slt i_87_1, 32_0 
              #                    occupy a0 with i_87_1
              #                    occupy a1 with 32_0
    li      a1, 32
              #                    occupy a2 with temp_328_cmp_89_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     930  br i1 temp_328_cmp_89_0, label while.body_90, label while.exit_90 
              #                    occupy a2 with temp_328_cmp_89_0
              #                    free a2
              #                    occupy a2 with temp_328_cmp_89_0
    bnez    a2, .while.body_90
              #                    free a2
    j       .while.exit_90
              #                    regtab     a0:Freed { symidx: i_87_1, tracked: true } |     a2:Freed { symidx: temp_328_cmp_89_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     928  label while.body_90: 
.while.body_90:
              #                     897  temp_317_ptr_of_arr_87_91 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(i_87_1), Some(0_0)] 
              #                    occupy a1 with temp_317_ptr_of_arr_87_91
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_87_1
    slli a3,a0,1
              #                    free a0
    add     a1,a1,a3
              #                    free a3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,336
              #                    free a1
              #                     899  temp_318_arithop_91_0 = Sub i32 i_87_1, 1_0 
              #                    occupy a0 with i_87_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_318_arithop_91_0
              #                    regtab:    a0:Occupied { symidx: i_87_1, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_317_ptr_of_arr_87_91, tracked: true } |     a2:Freed { symidx: temp_328_cmp_89_0, tracked: true } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_318_arithop_91_0, tracked: true, occupy_count: 1 } |  released_gpr_count:6,released_fpr_count:24


    subw    a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                     901  temp_319_ptr_of_arr_87_91 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(temp_318_arithop_91_0), Some(1_0)] 
              #                    occupy a7 with temp_319_ptr_of_arr_87_91
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_318_arithop_91_0
    slli s1,a6,1
              #                    free a6
              #                    occupy a6 with temp_318_arithop_91_0
              #                    store to temp_318_arithop_91_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_318_arithop_91_0
    add     a7,a7,s1
              #                    free s1
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 1
    add     a7,a7,a6
              #                    free a6
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,336
              #                    free a7
              #                     903  temp_320_ele_of_arr_87_91_0 = load temp_319_ptr_of_arr_87_91:ptr->i32 
              #                    occupy a7 with temp_319_ptr_of_arr_87_91
              #                    occupy a6 with temp_320_ele_of_arr_87_91_0
    lw      a6,0(a7)
              #                    free a6
              #                    occupy a6 with temp_320_ele_of_arr_87_91_0
              #                    store to temp_320_ele_of_arr_87_91_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_320_ele_of_arr_87_91_0
              #                    free a7
              #                     904  mu arr_87_4:903 
              #                     906  temp_321_arithop_91_0 = Sub i32 temp_320_ele_of_arr_87_91_0, 1_0 
              #                    occupy a6 with temp_320_ele_of_arr_87_91_0
              #                    load from temp_320_ele_of_arr_87_91_0 in mem


    lw      a6,36(sp)
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_321_arithop_91_0
              #                    regtab:    a0:Freed { symidx: i_87_1, tracked: true } |     a1:Freed { symidx: temp_317_ptr_of_arr_87_91, tracked: true } |     a2:Freed { symidx: temp_328_cmp_89_0, tracked: true } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a6:Occupied { symidx: temp_320_ele_of_arr_87_91_0, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_319_ptr_of_arr_87_91, tracked: true } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Occupied { symidx: temp_321_arithop_91_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s2,a6,a5
              #                    free a6
              #                    occupy a6 with temp_320_ele_of_arr_87_91_0
              #                    store to temp_320_ele_of_arr_87_91_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_320_ele_of_arr_87_91_0
              #                    free a5
              #                    free s2
              #                     907  store temp_321_arithop_91_0:i32 temp_317_ptr_of_arr_87_91:ptr->i32 
              #                    occupy a1 with temp_317_ptr_of_arr_87_91
              #                    occupy s2 with temp_321_arithop_91_0
    sw      s2,0(a1)
              #                    free s2
              #                    free a1
              #                     908  arr_87_5 = chi arr_87_4:907 
              #                     910  temp_322_ptr_of_arr_87_91 = GEP arr_87_5:Array:i32:[Some(32_0), Some(2_0)] [Some(i_87_1), Some(1_0)] 
              #                    occupy a5 with temp_322_ptr_of_arr_87_91
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_87_1
    slli a6,a0,1
              #                    free a0
              #                    occupy a0 with i_87_1
              #                    store to i_87_1 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with i_87_1
    add     a5,a5,a6
              #                    free a6
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a0, 1
    add     a5,a5,a0
              #                    free a0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,336
              #                    free a5
              #                     912  (nop) 
              #                     914  temp_324_ptr_of_arr_87_91 = GEP arr_87_5:Array:i32:[Some(32_0), Some(2_0)] [Some(temp_318_arithop_91_0), Some(0_0)] 
              #                    occupy a0 with temp_324_ptr_of_arr_87_91
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_318_arithop_91_0
              #                    load from temp_318_arithop_91_0 in mem


    lw      s3,52(sp)
    slli a6,s3,1
              #                    free s3
              #                    occupy s3 with temp_318_arithop_91_0
              #                    store to temp_318_arithop_91_0 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with temp_318_arithop_91_0
    add     a0,a0,a6
              #                    free a6
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 0
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,336
              #                    free a0
              #                    occupy a0 with temp_324_ptr_of_arr_87_91
              #                    store to temp_324_ptr_of_arr_87_91 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_324_ptr_of_arr_87_91
              #                     916  temp_325_ele_of_arr_87_91_0 = load temp_324_ptr_of_arr_87_91:ptr->i32 
              #                    occupy a0 with temp_324_ptr_of_arr_87_91
              #                    load from temp_324_ptr_of_arr_87_91 in mem
    ld      a0,16(sp)
              #                    occupy a6 with temp_325_ele_of_arr_87_91_0
    lw      a6,0(a0)
              #                    free a6
              #                    occupy a6 with temp_325_ele_of_arr_87_91_0
              #                    store to temp_325_ele_of_arr_87_91_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_325_ele_of_arr_87_91_0
              #                    free a0
              #                    occupy a0 with temp_324_ptr_of_arr_87_91
              #                    store to temp_324_ptr_of_arr_87_91 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_324_ptr_of_arr_87_91
              #                     917  mu arr_87_5:916 
              #                     919  temp_326_arithop_91_0 = Sub i32 temp_325_ele_of_arr_87_91_0, 2_0 
              #                    occupy a0 with temp_325_ele_of_arr_87_91_0
              #                    load from temp_325_ele_of_arr_87_91_0 in mem


    lw      a0,12(sp)
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy s3 with temp_326_arithop_91_0
              #                    regtab:    a0:Occupied { symidx: temp_325_ele_of_arr_87_91_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_317_ptr_of_arr_87_91, tracked: true } |     a2:Freed { symidx: temp_328_cmp_89_0, tracked: true } |     a3:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Freed { symidx: temp_322_ptr_of_arr_87_91, tracked: true } |     a6:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a7:Freed { symidx: temp_319_ptr_of_arr_87_91, tracked: true } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Freed { symidx: temp_321_arithop_91_0, tracked: true } |     s3:Occupied { symidx: temp_326_arithop_91_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s3,a0,a6
              #                    free a0
              #                    occupy a0 with temp_325_ele_of_arr_87_91_0
              #                    store to temp_325_ele_of_arr_87_91_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_325_ele_of_arr_87_91_0
              #                    free a6
              #                    free s3
              #                    occupy s3 with temp_326_arithop_91_0
              #                    store to temp_326_arithop_91_0 in mem offset legal
    sw      s3,8(sp)
              #                    release s3 with temp_326_arithop_91_0
              #                     920  store temp_326_arithop_91_0:i32 temp_322_ptr_of_arr_87_91:ptr->i32 
              #                    occupy a5 with temp_322_ptr_of_arr_87_91
              #                    occupy a0 with temp_326_arithop_91_0
              #                    load from temp_326_arithop_91_0 in mem


    lw      a0,8(sp)
    sw      a0,0(a5)
              #                    free a0
              #                    occupy a0 with temp_326_arithop_91_0
              #                    store to temp_326_arithop_91_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_326_arithop_91_0
              #                    free a5
              #                     921  arr_87_6 = chi arr_87_5:920 
              #                     923  temp_327_arithop_91_0 = Add i32 i_87_1, 1_0 
              #                    occupy a0 with i_87_1
              #                    load from i_87_1 in mem


    lw      a0,332(sp)
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s3 with temp_327_arithop_91_0
    ADDW    s3,a0,a6
              #                    free a0
              #                    occupy a0 with i_87_1
              #                    store to i_87_1 in mem offset legal
    sw      a0,332(sp)
              #                    release a0 with i_87_1
              #                    free a6
              #                    free s3
              #                    occupy s3 with temp_327_arithop_91_0
              #                    store to temp_327_arithop_91_0 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_327_arithop_91_0
              #                     924  (nop) 
              #                     954  i_87_1 = i32 temp_327_arithop_91_0 
              #                    occupy a0 with temp_327_arithop_91_0
              #                    load from temp_327_arithop_91_0 in mem


    lw      a0,4(sp)
              #                    occupy a6 with i_87_1
    mv      a6, a0
              #                    free a0
              #                    occupy a0 with temp_327_arithop_91_0
              #                    store to temp_327_arithop_91_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_327_arithop_91_0
              #                    free a6
              #                    occupy a6 with i_87_1
              #                    store to i_87_1 in mem offset legal
    sw      a6,332(sp)
              #                    release a6 with i_87_1
              #                          jump label: while.head_90 
              #                    occupy a5 with temp_322_ptr_of_arr_87_91
              #                    store to temp_322_ptr_of_arr_87_91 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_322_ptr_of_arr_87_91
              #                    occupy a0 with i_87_1
              #                    load from i_87_1 in mem


    lw      a0,332(sp)
              #                    occupy s2 with temp_321_arithop_91_0
              #                    store to temp_321_arithop_91_0 in mem offset legal
    sw      s2,32(sp)
              #                    release s2 with temp_321_arithop_91_0
              #                    occupy a2 with temp_328_cmp_89_0
              #                    store to temp_328_cmp_89_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_328_cmp_89_0
              #                    occupy a7 with temp_319_ptr_of_arr_87_91
              #                    store to temp_319_ptr_of_arr_87_91 in mem offset legal
    sd      a7,40(sp)
              #                    release a7 with temp_319_ptr_of_arr_87_91
              #                    occupy a1 with temp_317_ptr_of_arr_87_91
              #                    store to temp_317_ptr_of_arr_87_91 in mem offset legal
    sd      a1,56(sp)
              #                    release a1 with temp_317_ptr_of_arr_87_91
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: i_87_1, tracked: true } |     a2:Freed { symidx: temp_328_cmp_89_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     929  label while.exit_90: 
.while.exit_90:
              #                     1330 untrack i_87_1 
              #                    occupy a0 with i_87_1
              #                    release a0 with i_87_1
              #                     827  temp_284_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_284_ptr_of_arr_87_87
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,336
              #                    free a0
              #                     829  temp_285_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(1_0)] 
              #                    occupy a3 with temp_285_ptr_of_arr_87_87
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 2
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,336
              #                    free a3
              #                     831  temp_286_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(2_0)] 
              #                    occupy a5 with temp_286_ptr_of_arr_87_87
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,336
              #                    free a5
              #                     833  temp_287_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(3_0)] 
              #                    occupy a7 with temp_287_ptr_of_arr_87_87
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,336
              #                    free a7
              #                     835  temp_288_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(4_0)] 
              #                    occupy s1 with temp_288_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 8
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_288_ptr_of_arr_87_87
              #                    store to temp_288_ptr_of_arr_87_87 in mem offset legal
    sd      s1,288(sp)
              #                    release s1 with temp_288_ptr_of_arr_87_87
              #                     837  temp_289_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(5_0)] 
              #                    occupy s1 with temp_289_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 10
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_289_ptr_of_arr_87_87
              #                    store to temp_289_ptr_of_arr_87_87 in mem offset legal
    sd      s1,280(sp)
              #                    release s1 with temp_289_ptr_of_arr_87_87
              #                     839  temp_290_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(6_0)] 
              #                    occupy s1 with temp_290_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 12
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_290_ptr_of_arr_87_87
              #                    store to temp_290_ptr_of_arr_87_87 in mem offset legal
    sd      s1,272(sp)
              #                    release s1 with temp_290_ptr_of_arr_87_87
              #                     841  temp_291_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(7_0)] 
              #                    occupy s1 with temp_291_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 14
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_291_ptr_of_arr_87_87
              #                    store to temp_291_ptr_of_arr_87_87 in mem offset legal
    sd      s1,264(sp)
              #                    release s1 with temp_291_ptr_of_arr_87_87
              #                     843  temp_292_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(8_0)] 
              #                    occupy s1 with temp_292_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 16
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_292_ptr_of_arr_87_87
              #                    store to temp_292_ptr_of_arr_87_87 in mem offset legal
    sd      s1,256(sp)
              #                    release s1 with temp_292_ptr_of_arr_87_87
              #                     845  temp_293_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(9_0)] 
              #                    occupy s1 with temp_293_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 18
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_293_ptr_of_arr_87_87
              #                    store to temp_293_ptr_of_arr_87_87 in mem offset legal
    sd      s1,248(sp)
              #                    release s1 with temp_293_ptr_of_arr_87_87
              #                     847  temp_294_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(10_0)] 
              #                    occupy s1 with temp_294_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 20
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_294_ptr_of_arr_87_87
              #                    store to temp_294_ptr_of_arr_87_87 in mem offset legal
    sd      s1,240(sp)
              #                    release s1 with temp_294_ptr_of_arr_87_87
              #                     849  temp_295_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(11_0)] 
              #                    occupy s1 with temp_295_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 22
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_295_ptr_of_arr_87_87
              #                    store to temp_295_ptr_of_arr_87_87 in mem offset legal
    sd      s1,232(sp)
              #                    release s1 with temp_295_ptr_of_arr_87_87
              #                     851  temp_296_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(12_0)] 
              #                    occupy s1 with temp_296_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 24
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_296_ptr_of_arr_87_87
              #                    store to temp_296_ptr_of_arr_87_87 in mem offset legal
    sd      s1,224(sp)
              #                    release s1 with temp_296_ptr_of_arr_87_87
              #                     853  temp_297_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(13_0)] 
              #                    occupy s1 with temp_297_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 26
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_297_ptr_of_arr_87_87
              #                    store to temp_297_ptr_of_arr_87_87 in mem offset legal
    sd      s1,216(sp)
              #                    release s1 with temp_297_ptr_of_arr_87_87
              #                     855  temp_298_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(14_0)] 
              #                    occupy s1 with temp_298_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 28
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_298_ptr_of_arr_87_87
              #                    store to temp_298_ptr_of_arr_87_87 in mem offset legal
    sd      s1,208(sp)
              #                    release s1 with temp_298_ptr_of_arr_87_87
              #                     857  temp_299_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(15_0)] 
              #                    occupy s1 with temp_299_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 30
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_299_ptr_of_arr_87_87
              #                    store to temp_299_ptr_of_arr_87_87 in mem offset legal
    sd      s1,200(sp)
              #                    release s1 with temp_299_ptr_of_arr_87_87
              #                     859  temp_300_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(16_0)] 
              #                    occupy s1 with temp_300_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 32
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_300_ptr_of_arr_87_87
              #                    store to temp_300_ptr_of_arr_87_87 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_300_ptr_of_arr_87_87
              #                     861  temp_301_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(17_0)] 
              #                    occupy s1 with temp_301_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 34
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_301_ptr_of_arr_87_87
              #                    store to temp_301_ptr_of_arr_87_87 in mem offset legal
    sd      s1,184(sp)
              #                    release s1 with temp_301_ptr_of_arr_87_87
              #                     863  temp_302_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(18_0)] 
              #                    occupy s1 with temp_302_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 36
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_302_ptr_of_arr_87_87
              #                    store to temp_302_ptr_of_arr_87_87 in mem offset legal
    sd      s1,176(sp)
              #                    release s1 with temp_302_ptr_of_arr_87_87
              #                     865  temp_303_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(19_0)] 
              #                    occupy s1 with temp_303_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 38
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_303_ptr_of_arr_87_87
              #                    store to temp_303_ptr_of_arr_87_87 in mem offset legal
    sd      s1,168(sp)
              #                    release s1 with temp_303_ptr_of_arr_87_87
              #                     867  temp_304_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(20_0)] 
              #                    occupy s1 with temp_304_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 40
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_304_ptr_of_arr_87_87
              #                    store to temp_304_ptr_of_arr_87_87 in mem offset legal
    sd      s1,160(sp)
              #                    release s1 with temp_304_ptr_of_arr_87_87
              #                     869  temp_305_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(21_0)] 
              #                    occupy s1 with temp_305_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 42
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_305_ptr_of_arr_87_87
              #                    store to temp_305_ptr_of_arr_87_87 in mem offset legal
    sd      s1,152(sp)
              #                    release s1 with temp_305_ptr_of_arr_87_87
              #                     871  temp_306_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(22_0)] 
              #                    occupy s1 with temp_306_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 44
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_306_ptr_of_arr_87_87
              #                    store to temp_306_ptr_of_arr_87_87 in mem offset legal
    sd      s1,144(sp)
              #                    release s1 with temp_306_ptr_of_arr_87_87
              #                     873  temp_307_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(23_0)] 
              #                    occupy s1 with temp_307_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 46
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_307_ptr_of_arr_87_87
              #                    store to temp_307_ptr_of_arr_87_87 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_307_ptr_of_arr_87_87
              #                     875  temp_308_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(24_0)] 
              #                    occupy s1 with temp_308_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 48
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_308_ptr_of_arr_87_87
              #                    store to temp_308_ptr_of_arr_87_87 in mem offset legal
    sd      s1,128(sp)
              #                    release s1 with temp_308_ptr_of_arr_87_87
              #                     877  temp_309_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(25_0)] 
              #                    occupy s1 with temp_309_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 50
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_309_ptr_of_arr_87_87
              #                    store to temp_309_ptr_of_arr_87_87 in mem offset legal
    sd      s1,120(sp)
              #                    release s1 with temp_309_ptr_of_arr_87_87
              #                     879  temp_310_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(26_0)] 
              #                    occupy s1 with temp_310_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 52
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_310_ptr_of_arr_87_87
              #                    store to temp_310_ptr_of_arr_87_87 in mem offset legal
    sd      s1,112(sp)
              #                    release s1 with temp_310_ptr_of_arr_87_87
              #                     881  temp_311_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(27_0)] 
              #                    occupy s1 with temp_311_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 54
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_311_ptr_of_arr_87_87
              #                    store to temp_311_ptr_of_arr_87_87 in mem offset legal
    sd      s1,104(sp)
              #                    release s1 with temp_311_ptr_of_arr_87_87
              #                     883  temp_312_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(28_0)] 
              #                    occupy s1 with temp_312_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 56
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_312_ptr_of_arr_87_87
              #                    store to temp_312_ptr_of_arr_87_87 in mem offset legal
    sd      s1,96(sp)
              #                    release s1 with temp_312_ptr_of_arr_87_87
              #                     885  temp_313_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(29_0)] 
              #                    occupy s1 with temp_313_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 58
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_313_ptr_of_arr_87_87
              #                    store to temp_313_ptr_of_arr_87_87 in mem offset legal
    sd      s1,88(sp)
              #                    release s1 with temp_313_ptr_of_arr_87_87
              #                     887  temp_314_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(30_0)] 
              #                    occupy s1 with temp_314_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 60
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_314_ptr_of_arr_87_87
              #                    store to temp_314_ptr_of_arr_87_87 in mem offset legal
    sd      s1,80(sp)
              #                    release s1 with temp_314_ptr_of_arr_87_87
              #                     889  temp_315_ptr_of_arr_87_87 = GEP arr_87_4:Array:i32:[Some(32_0), Some(2_0)] [Some(31_0)] 
              #                    occupy s1 with temp_315_ptr_of_arr_87_87
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 62
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,336
              #                    free s1
              #                    occupy s1 with temp_315_ptr_of_arr_87_87
              #                    store to temp_315_ptr_of_arr_87_87 in mem offset legal
    sd      s1,72(sp)
              #                    release s1 with temp_315_ptr_of_arr_87_87
              #                     891  temp_316_ret_of_param32_arr_87_0 =  Call i32 param32_arr_0(temp_284_ptr_of_arr_87_87, temp_285_ptr_of_arr_87_87, temp_286_ptr_of_arr_87_87, temp_287_ptr_of_arr_87_87, temp_288_ptr_of_arr_87_87, temp_289_ptr_of_arr_87_87, temp_290_ptr_of_arr_87_87, temp_291_ptr_of_arr_87_87, temp_292_ptr_of_arr_87_87, temp_293_ptr_of_arr_87_87, temp_294_ptr_of_arr_87_87, temp_295_ptr_of_arr_87_87, temp_296_ptr_of_arr_87_87, temp_297_ptr_of_arr_87_87, temp_298_ptr_of_arr_87_87, temp_299_ptr_of_arr_87_87, temp_300_ptr_of_arr_87_87, temp_301_ptr_of_arr_87_87, temp_302_ptr_of_arr_87_87, temp_303_ptr_of_arr_87_87, temp_304_ptr_of_arr_87_87, temp_305_ptr_of_arr_87_87, temp_306_ptr_of_arr_87_87, temp_307_ptr_of_arr_87_87, temp_308_ptr_of_arr_87_87, temp_309_ptr_of_arr_87_87, temp_310_ptr_of_arr_87_87, temp_311_ptr_of_arr_87_87, temp_312_ptr_of_arr_87_87, temp_313_ptr_of_arr_87_87, temp_314_ptr_of_arr_87_87, temp_315_ptr_of_arr_87_87) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_292_ptr_of_arr_87_87
              #                    load from temp_292_ptr_of_arr_87_87 in mem
    ld      s1,256(sp)
              #                    store to a9_44 in mem offset legal
    sd      s1,-16(sp)
              #                    free s1
              #                    occupy s1 with temp_292_ptr_of_arr_87_87
              #                    store to temp_292_ptr_of_arr_87_87 in mem offset legal
    sd      s1,256(sp)
              #                    release s1 with temp_292_ptr_of_arr_87_87
              #                    occupy s1 with temp_293_ptr_of_arr_87_87
              #                    load from temp_293_ptr_of_arr_87_87 in mem
    ld      s1,248(sp)
              #                    store to a10_44 in mem offset legal
    sd      s1,-32(sp)
              #                    free s1
              #                    occupy s1 with temp_293_ptr_of_arr_87_87
              #                    store to temp_293_ptr_of_arr_87_87 in mem offset legal
    sd      s1,248(sp)
              #                    release s1 with temp_293_ptr_of_arr_87_87
              #                    occupy s1 with temp_294_ptr_of_arr_87_87
              #                    load from temp_294_ptr_of_arr_87_87 in mem
    ld      s1,240(sp)
              #                    store to a11_44 in mem offset legal
    sd      s1,-48(sp)
              #                    free s1
              #                    occupy s1 with temp_294_ptr_of_arr_87_87
              #                    store to temp_294_ptr_of_arr_87_87 in mem offset legal
    sd      s1,240(sp)
              #                    release s1 with temp_294_ptr_of_arr_87_87
              #                    occupy s1 with temp_295_ptr_of_arr_87_87
              #                    load from temp_295_ptr_of_arr_87_87 in mem
    ld      s1,232(sp)
              #                    store to a12_44 in mem offset legal
    sd      s1,-64(sp)
              #                    free s1
              #                    occupy s1 with temp_295_ptr_of_arr_87_87
              #                    store to temp_295_ptr_of_arr_87_87 in mem offset legal
    sd      s1,232(sp)
              #                    release s1 with temp_295_ptr_of_arr_87_87
              #                    occupy s1 with temp_296_ptr_of_arr_87_87
              #                    load from temp_296_ptr_of_arr_87_87 in mem
    ld      s1,224(sp)
              #                    store to a13_44 in mem offset legal
    sd      s1,-80(sp)
              #                    free s1
              #                    occupy s1 with temp_296_ptr_of_arr_87_87
              #                    store to temp_296_ptr_of_arr_87_87 in mem offset legal
    sd      s1,224(sp)
              #                    release s1 with temp_296_ptr_of_arr_87_87
              #                    occupy s1 with temp_297_ptr_of_arr_87_87
              #                    load from temp_297_ptr_of_arr_87_87 in mem
    ld      s1,216(sp)
              #                    store to a14_44 in mem offset legal
    sd      s1,-96(sp)
              #                    free s1
              #                    occupy s1 with temp_297_ptr_of_arr_87_87
              #                    store to temp_297_ptr_of_arr_87_87 in mem offset legal
    sd      s1,216(sp)
              #                    release s1 with temp_297_ptr_of_arr_87_87
              #                    occupy s1 with temp_298_ptr_of_arr_87_87
              #                    load from temp_298_ptr_of_arr_87_87 in mem
    ld      s1,208(sp)
              #                    store to a15_44 in mem offset legal
    sd      s1,-112(sp)
              #                    free s1
              #                    occupy s1 with temp_298_ptr_of_arr_87_87
              #                    store to temp_298_ptr_of_arr_87_87 in mem offset legal
    sd      s1,208(sp)
              #                    release s1 with temp_298_ptr_of_arr_87_87
              #                    occupy s1 with temp_299_ptr_of_arr_87_87
              #                    load from temp_299_ptr_of_arr_87_87 in mem
    ld      s1,200(sp)
              #                    store to a16_44 in mem offset legal
    sd      s1,-128(sp)
              #                    free s1
              #                    occupy s1 with temp_299_ptr_of_arr_87_87
              #                    store to temp_299_ptr_of_arr_87_87 in mem offset legal
    sd      s1,200(sp)
              #                    release s1 with temp_299_ptr_of_arr_87_87
              #                    occupy s1 with temp_300_ptr_of_arr_87_87
              #                    load from temp_300_ptr_of_arr_87_87 in mem
    ld      s1,192(sp)
              #                    store to a17_44 in mem offset legal
    sd      s1,-144(sp)
              #                    free s1
              #                    occupy s1 with temp_300_ptr_of_arr_87_87
              #                    store to temp_300_ptr_of_arr_87_87 in mem offset legal
    sd      s1,192(sp)
              #                    release s1 with temp_300_ptr_of_arr_87_87
              #                    occupy s1 with temp_301_ptr_of_arr_87_87
              #                    load from temp_301_ptr_of_arr_87_87 in mem
    ld      s1,184(sp)
              #                    store to a18_44 in mem offset legal
    sd      s1,-160(sp)
              #                    free s1
              #                    occupy s1 with temp_301_ptr_of_arr_87_87
              #                    store to temp_301_ptr_of_arr_87_87 in mem offset legal
    sd      s1,184(sp)
              #                    release s1 with temp_301_ptr_of_arr_87_87
              #                    occupy s1 with temp_302_ptr_of_arr_87_87
              #                    load from temp_302_ptr_of_arr_87_87 in mem
    ld      s1,176(sp)
              #                    store to a19_44 in mem offset legal
    sd      s1,-176(sp)
              #                    free s1
              #                    occupy s1 with temp_302_ptr_of_arr_87_87
              #                    store to temp_302_ptr_of_arr_87_87 in mem offset legal
    sd      s1,176(sp)
              #                    release s1 with temp_302_ptr_of_arr_87_87
              #                    occupy s1 with temp_303_ptr_of_arr_87_87
              #                    load from temp_303_ptr_of_arr_87_87 in mem
    ld      s1,168(sp)
              #                    store to a20_44 in mem offset legal
    sd      s1,-192(sp)
              #                    free s1
              #                    occupy s1 with temp_303_ptr_of_arr_87_87
              #                    store to temp_303_ptr_of_arr_87_87 in mem offset legal
    sd      s1,168(sp)
              #                    release s1 with temp_303_ptr_of_arr_87_87
              #                    occupy s1 with temp_304_ptr_of_arr_87_87
              #                    load from temp_304_ptr_of_arr_87_87 in mem
    ld      s1,160(sp)
              #                    store to a21_44 in mem offset legal
    sd      s1,-208(sp)
              #                    free s1
              #                    occupy s1 with temp_304_ptr_of_arr_87_87
              #                    store to temp_304_ptr_of_arr_87_87 in mem offset legal
    sd      s1,160(sp)
              #                    release s1 with temp_304_ptr_of_arr_87_87
              #                    occupy s1 with temp_305_ptr_of_arr_87_87
              #                    load from temp_305_ptr_of_arr_87_87 in mem
    ld      s1,152(sp)
              #                    store to a22_44 in mem offset legal
    sd      s1,-224(sp)
              #                    free s1
              #                    occupy s1 with temp_305_ptr_of_arr_87_87
              #                    store to temp_305_ptr_of_arr_87_87 in mem offset legal
    sd      s1,152(sp)
              #                    release s1 with temp_305_ptr_of_arr_87_87
              #                    occupy s1 with temp_306_ptr_of_arr_87_87
              #                    load from temp_306_ptr_of_arr_87_87 in mem
    ld      s1,144(sp)
              #                    store to a23_44 in mem offset legal
    sd      s1,-240(sp)
              #                    free s1
              #                    occupy s1 with temp_306_ptr_of_arr_87_87
              #                    store to temp_306_ptr_of_arr_87_87 in mem offset legal
    sd      s1,144(sp)
              #                    release s1 with temp_306_ptr_of_arr_87_87
              #                    occupy s1 with temp_307_ptr_of_arr_87_87
              #                    load from temp_307_ptr_of_arr_87_87 in mem
    ld      s1,136(sp)
              #                    store to a24_44 in mem offset legal
    sd      s1,-256(sp)
              #                    free s1
              #                    occupy s1 with temp_307_ptr_of_arr_87_87
              #                    store to temp_307_ptr_of_arr_87_87 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_307_ptr_of_arr_87_87
              #                    occupy s1 with temp_308_ptr_of_arr_87_87
              #                    load from temp_308_ptr_of_arr_87_87 in mem
    ld      s1,128(sp)
              #                    store to a25_44 in mem offset legal
    sd      s1,-272(sp)
              #                    free s1
              #                    occupy s1 with temp_308_ptr_of_arr_87_87
              #                    store to temp_308_ptr_of_arr_87_87 in mem offset legal
    sd      s1,128(sp)
              #                    release s1 with temp_308_ptr_of_arr_87_87
              #                    occupy s1 with temp_309_ptr_of_arr_87_87
              #                    load from temp_309_ptr_of_arr_87_87 in mem
    ld      s1,120(sp)
              #                    store to a26_44 in mem offset legal
    sd      s1,-288(sp)
              #                    free s1
              #                    occupy s1 with temp_309_ptr_of_arr_87_87
              #                    store to temp_309_ptr_of_arr_87_87 in mem offset legal
    sd      s1,120(sp)
              #                    release s1 with temp_309_ptr_of_arr_87_87
              #                    occupy s1 with temp_310_ptr_of_arr_87_87
              #                    load from temp_310_ptr_of_arr_87_87 in mem
    ld      s1,112(sp)
              #                    store to a27_44 in mem offset legal
    sd      s1,-304(sp)
              #                    free s1
              #                    occupy s1 with temp_310_ptr_of_arr_87_87
              #                    store to temp_310_ptr_of_arr_87_87 in mem offset legal
    sd      s1,112(sp)
              #                    release s1 with temp_310_ptr_of_arr_87_87
              #                    occupy s1 with temp_311_ptr_of_arr_87_87
              #                    load from temp_311_ptr_of_arr_87_87 in mem
    ld      s1,104(sp)
              #                    store to a28_44 in mem offset legal
    sd      s1,-320(sp)
              #                    free s1
              #                    occupy s1 with temp_311_ptr_of_arr_87_87
              #                    store to temp_311_ptr_of_arr_87_87 in mem offset legal
    sd      s1,104(sp)
              #                    release s1 with temp_311_ptr_of_arr_87_87
              #                    occupy s1 with temp_312_ptr_of_arr_87_87
              #                    load from temp_312_ptr_of_arr_87_87 in mem
    ld      s1,96(sp)
              #                    store to a29_44 in mem offset legal
    sd      s1,-336(sp)
              #                    free s1
              #                    occupy s1 with temp_312_ptr_of_arr_87_87
              #                    store to temp_312_ptr_of_arr_87_87 in mem offset legal
    sd      s1,96(sp)
              #                    release s1 with temp_312_ptr_of_arr_87_87
              #                    occupy s1 with temp_313_ptr_of_arr_87_87
              #                    load from temp_313_ptr_of_arr_87_87 in mem
    ld      s1,88(sp)
              #                    store to a30_44 in mem offset legal
    sd      s1,-352(sp)
              #                    free s1
              #                    occupy s1 with temp_313_ptr_of_arr_87_87
              #                    store to temp_313_ptr_of_arr_87_87 in mem offset legal
    sd      s1,88(sp)
              #                    release s1 with temp_313_ptr_of_arr_87_87
              #                    occupy s1 with temp_314_ptr_of_arr_87_87
              #                    load from temp_314_ptr_of_arr_87_87 in mem
    ld      s1,80(sp)
              #                    store to a31_44 in mem offset legal
    sd      s1,-368(sp)
              #                    free s1
              #                    occupy s1 with temp_314_ptr_of_arr_87_87
              #                    store to temp_314_ptr_of_arr_87_87 in mem offset legal
    sd      s1,80(sp)
              #                    release s1 with temp_314_ptr_of_arr_87_87
              #                    occupy s1 with temp_315_ptr_of_arr_87_87
              #                    load from temp_315_ptr_of_arr_87_87 in mem
    ld      s1,72(sp)
              #                    store to a32_44 in mem offset legal
    sd      s1,-384(sp)
              #                    free s1
              #                    occupy s1 with temp_315_ptr_of_arr_87_87
              #                    store to temp_315_ptr_of_arr_87_87 in mem offset legal
    sd      s1,72(sp)
              #                    release s1 with temp_315_ptr_of_arr_87_87
              #                    occupy a0 with temp_284_ptr_of_arr_87_87
              #                    store to temp_284_ptr_of_arr_87_87 in mem offset legal
    sd      a0,320(sp)
              #                    release a0 with temp_284_ptr_of_arr_87_87
              #                    occupy a2 with temp_328_cmp_89_0
              #                    store to temp_328_cmp_89_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_328_cmp_89_0
              #                    occupy a3 with temp_285_ptr_of_arr_87_87
              #                    store to temp_285_ptr_of_arr_87_87 in mem offset legal
    sd      a3,312(sp)
              #                    release a3 with temp_285_ptr_of_arr_87_87
              #                    occupy a5 with temp_286_ptr_of_arr_87_87
              #                    store to temp_286_ptr_of_arr_87_87 in mem offset legal
    sd      a5,304(sp)
              #                    release a5 with temp_286_ptr_of_arr_87_87
              #                    occupy a7 with temp_287_ptr_of_arr_87_87
              #                    store to temp_287_ptr_of_arr_87_87 in mem offset legal
    sd      a7,296(sp)
              #                    release a7 with temp_287_ptr_of_arr_87_87
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_284_ptr_of_arr_87_87_0
              #                    load from temp_284_ptr_of_arr_87_87 in mem
    ld      a0,320(sp)
              #                    occupy a1 with _anonymous_of_temp_285_ptr_of_arr_87_87_0
              #                    load from temp_285_ptr_of_arr_87_87 in mem
    ld      a1,312(sp)
              #                    occupy a2 with _anonymous_of_temp_286_ptr_of_arr_87_87_0
              #                    load from temp_286_ptr_of_arr_87_87 in mem
    ld      a2,304(sp)
              #                    occupy a3 with _anonymous_of_temp_287_ptr_of_arr_87_87_0
              #                    load from temp_287_ptr_of_arr_87_87 in mem
    ld      a3,296(sp)
              #                    occupy a4 with _anonymous_of_temp_288_ptr_of_arr_87_87_0
              #                    load from temp_288_ptr_of_arr_87_87 in mem
    ld      a4,288(sp)
              #                    occupy a5 with _anonymous_of_temp_289_ptr_of_arr_87_87_0
              #                    load from temp_289_ptr_of_arr_87_87 in mem
    ld      a5,280(sp)
              #                    occupy a6 with _anonymous_of_temp_290_ptr_of_arr_87_87_0
              #                    load from temp_290_ptr_of_arr_87_87 in mem
    ld      a6,272(sp)
              #                    occupy a7 with _anonymous_of_temp_291_ptr_of_arr_87_87_0
              #                    load from temp_291_ptr_of_arr_87_87 in mem
    ld      a7,264(sp)
              #                    arg load ended


    call    param32_arr
              #                     1363 untrack temp_304_ptr_of_arr_87_87 
              #                     1362 untrack temp_315_ptr_of_arr_87_87 
              #                     1361 untrack temp_285_ptr_of_arr_87_87 
              #                     1360 untrack temp_295_ptr_of_arr_87_87 
              #                     1359 untrack temp_312_ptr_of_arr_87_87 
              #                     1358 untrack temp_308_ptr_of_arr_87_87 
              #                     1357 untrack temp_290_ptr_of_arr_87_87 
              #                     1356 untrack temp_305_ptr_of_arr_87_87 
              #                     1355 untrack temp_298_ptr_of_arr_87_87 
              #                     1354 untrack temp_302_ptr_of_arr_87_87 
              #                     1353 untrack temp_296_ptr_of_arr_87_87 
              #                     1352 untrack temp_288_ptr_of_arr_87_87 
              #                     1351 untrack temp_294_ptr_of_arr_87_87 
              #                     1350 untrack temp_286_ptr_of_arr_87_87 
              #                     1349 untrack temp_311_ptr_of_arr_87_87 
              #                     1348 untrack temp_293_ptr_of_arr_87_87 
              #                     1347 untrack temp_306_ptr_of_arr_87_87 
              #                     1346 untrack temp_314_ptr_of_arr_87_87 
              #                     1345 untrack temp_301_ptr_of_arr_87_87 
              #                     1344 untrack temp_297_ptr_of_arr_87_87 
              #                     1343 untrack temp_292_ptr_of_arr_87_87 
              #                     1342 untrack temp_310_ptr_of_arr_87_87 
              #                     1341 untrack temp_309_ptr_of_arr_87_87 
              #                     1340 untrack temp_300_ptr_of_arr_87_87 
              #                     1339 untrack temp_307_ptr_of_arr_87_87 
              #                     1338 untrack temp_289_ptr_of_arr_87_87 
              #                     1337 untrack temp_291_ptr_of_arr_87_87 
              #                     1336 untrack temp_303_ptr_of_arr_87_87 
              #                     1335 untrack temp_299_ptr_of_arr_87_87 
              #                     1334 untrack temp_287_ptr_of_arr_87_87 
              #                     1333 untrack temp_284_ptr_of_arr_87_87 
              #                     1331 untrack temp_313_ptr_of_arr_87_87 
              #                     940  mu arr_87_4:891 
              #                     941  arr_87_7 = chi arr_87_4:891 
              #                     892   Call void putint_0(temp_316_ret_of_param32_arr_87_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_316_ret_of_param32_arr_87_0
              #                    store to temp_316_ret_of_param32_arr_87_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_316_ret_of_param32_arr_87_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_316_ret_of_param32_arr_87_0_0
              #                    load from temp_316_ret_of_param32_arr_87_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    putint
              #                     1332 untrack temp_316_ret_of_param32_arr_87_0 
              #                     893   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     895  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,696(sp)
              #                    load from s0_main_0 in mem
    ld      s0,688(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,704
              #                    free a0
    ret
