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
              #                     18   Define bubblesort_0 "arr_17," -> bubblesort_ret_0 
    .globl bubblesort
    .type bubblesort,@function
bubblesort:
              #                    mem layout:|ra_bubblesort:8 at 192|s0_bubblesort:8 at 184|arr:8 at 176|arr:8 at 168|arr:8 at 160|arr:8 at 152|arr:8 at 144|arr:8 at 136|arr _s17 _i6:8 at 128|i _s19 _i0:4 at 124|i _s19 _i2:4 at 120|j _s19 _i0:4 at 116|j _s19 _i1:4 at 112|j _s19 _i3:4 at 108|temp_0_arithop _s25 _i0:4 at 104|tmp _s32 _i0:4 at 100|none:4 at 96|temp_3_ptr_of_arr_17:8 at 88|temp_6_ptr_of_arr_17:8 at 80|temp_7_ptr_of_arr_17:8 at 72|temp_9_ptr_of_arr_17:8 at 64|temp_10_value_from_ptr _s23 _i0:4 at 60|temp_11_arithop _s23 _i0:4 at 56|temp_12_cmp _s23 _i0:1 at 55|none:3 at 52|temp_14_arithop _s27 _i0:4 at 48|temp_15_arithop _s27 _i0:4 at 44|temp_16_cmp _s27 _i0:1 at 43|none:3 at 40|temp_17_arithop _s30 _i0:4 at 36|none:4 at 32|temp_18_ptr_of_arr_17:8 at 24|temp_19_ele_of_arr_17 _s30 _i0:4 at 20|none:4 at 16|temp_20_ptr_of_arr_17:8 at 8|temp_21_ele_of_arr_17 _s30 _i0:4 at 4|temp_22_cmp _s30 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-200
              #                    store to ra_bubblesort_0 in mem offset legal
    sd      ra,192(sp)
              #                    store to s0_bubblesort_0 in mem offset legal
    sd      s0,184(sp)
    addi    s0,sp,200
              #                     37   alloc i32 [i_19] 
              #                     39   alloc i32 [j_19] 
              #                     45   alloc i32 [temp_0_arithop_25] 
              #                     48   alloc i32 [temp_1_arithop_29] 
              #                     51   alloc i32 [tmp_32] 
              #                     53   alloc i32 [temp_2_arithop_32] 
              #                     55   alloc ptr->i32 [temp_3_ptr_of_arr_17_32] 
              #                     57   alloc i32 [temp_4_ele_of_arr_17_32] 
              #                     61   alloc i32 [temp_5_arithop_32] 
              #                     63   alloc ptr->i32 [temp_6_ptr_of_arr_17_32] 
              #                     65   alloc ptr->i32 [temp_7_ptr_of_arr_17_32] 
              #                     67   alloc i32 [temp_8_ele_of_arr_17_32] 
              #                     72   alloc ptr->i32 [temp_9_ptr_of_arr_17_32] 
              #                     76   alloc i32 [temp_10_value_from_ptr_23] 
              #                     79   alloc i32 [temp_11_arithop_23] 
              #                     81   alloc i1 [temp_12_cmp_23] 
              #                     89   alloc i32 [temp_13_value_from_ptr_27] 
              #                     92   alloc i32 [temp_14_arithop_27] 
              #                     94   alloc i32 [temp_15_arithop_27] 
              #                     96   alloc i1 [temp_16_cmp_27] 
              #                     102  alloc i32 [temp_17_arithop_30] 
              #                     104  alloc ptr->i32 [temp_18_ptr_of_arr_17_30] 
              #                     106  alloc i32 [temp_19_ele_of_arr_17_30] 
              #                     109  alloc ptr->i32 [temp_20_ptr_of_arr_17_30] 
              #                     111  alloc i32 [temp_21_ele_of_arr_17_30] 
              #                     114  alloc i1 [temp_22_cmp_30] 
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L16_0: 
.L16_0:
              #                     17    
              #                     38    
              #                     40    
              #                     41   (nop) 
              #                     77   temp_10_value_from_ptr_23_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_10_value_from_ptr_23_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     78   mu n_0_0:77 
              #                     90   (nop) 
              #                     91   mu n_0_0:90 
              #                     1149 i_19_2 = i32 0_0 
              #                    occupy a3 with i_19_2
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     83   label while.head_24: 
.while.head_24:
              #                     80   temp_11_arithop_23_0 = Sub i32 temp_10_value_from_ptr_23_0, 1_0 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_11_arithop_23_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_10_value_from_ptr_23_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Occupied { symidx: temp_11_arithop_23_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     82   temp_12_cmp_23_0 = icmp i32 Slt i_19_2, temp_11_arithop_23_0 
              #                    occupy a3 with i_19_2
              #                    occupy a4 with temp_11_arithop_23_0
              #                    occupy a5 with temp_12_cmp_23_0
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     86   br i1 temp_12_cmp_23_0, label while.body_24, label while.exit_24 
              #                    occupy a5 with temp_12_cmp_23_0
              #                    free a5
              #                    occupy a5 with temp_12_cmp_23_0
    bnez    a5, .while.body_24
              #                    free a5
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     84   label while.body_24: 
.while.body_24:
              #                     44   (nop) 
              #                     93   temp_14_arithop_27_0 = Sub i32 temp_10_value_from_ptr_23_0, i_19_2 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    occupy a3 with i_19_2
              #                    occupy a1 with temp_14_arithop_27_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: temp_14_arithop_27_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_10_value_from_ptr_23_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: i_19_2, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24


    subw    a1,a2,a3
              #                    free a2
              #                    free a3
              #                    free a1
              #                     1150 j_19_3 = i32 0_0 
              #                    occupy a6 with j_19_3
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     98   label while.head_28: 
.while.head_28:
              #                     95   temp_15_arithop_27_0 = Sub i32 temp_14_arithop_27_0, 1_0 
              #                    occupy a1 with temp_14_arithop_27_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_15_arithop_27_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: temp_14_arithop_27_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_15_arithop_27_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                     97   temp_16_cmp_27_0 = icmp i32 Slt j_19_3, temp_15_arithop_27_0 
              #                    occupy a6 with j_19_3
              #                    occupy s1 with temp_15_arithop_27_0
              #                    occupy s2 with temp_16_cmp_27_0
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     101  br i1 temp_16_cmp_27_0, label while.body_28, label while.exit_28 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    free s2
              #                    occupy s2 with temp_16_cmp_27_0
    bnez    s2, .while.body_28
              #                    free s2
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     99   label while.body_28: 
.while.body_28:
              #                     103  temp_17_arithop_30_0 = Add i32 j_19_3, 1_0 
              #                    occupy a6 with j_19_3
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_17_arithop_30_0
    ADDW    s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                     105  temp_18_ptr_of_arr_17_30 = GEP arr_17:Array:i32:[None] [Some(temp_17_arithop_30_0)] 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_17_arithop_30_0
    mv      s5, s3
              #                    free s3
              #                    occupy s3 with temp_17_arithop_30_0
              #                    store to temp_17_arithop_30_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_17_arithop_30_0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy a0 with arr_17
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                     107  temp_19_ele_of_arr_17_30_0 = load temp_18_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    occupy s3 with temp_19_ele_of_arr_17_30_0
    lw      s3,0(s4)
              #                    free s3
              #                    occupy s3 with temp_19_ele_of_arr_17_30_0
              #                    store to temp_19_ele_of_arr_17_30_0 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_19_ele_of_arr_17_30_0
              #                    free s4
              #                     108  mu arr_17:107 
              #                     110  temp_20_ptr_of_arr_17_30 = GEP arr_17:Array:i32:[None] [Some(j_19_3)] 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
    li      s3, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_19_3
    mv      s5, a6
              #                    free a6
              #                    occupy a6 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with j_19_3
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
              #                    occupy a0 with arr_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     112  temp_21_ele_of_arr_17_30_0 = load temp_20_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
    lw      a6,0(s3)
              #                    free a6
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    store to temp_21_ele_of_arr_17_30_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_21_ele_of_arr_17_30_0
              #                    free s3
              #                     113  mu arr_17:112 
              #                     115  temp_22_cmp_30_0 = icmp i32 Sgt temp_21_ele_of_arr_17_30_0, temp_19_ele_of_arr_17_30_0 
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    load from temp_21_ele_of_arr_17_30_0 in mem


    lw      a6,4(sp)
              #                    occupy s5 with temp_19_ele_of_arr_17_30_0
              #                    load from temp_19_ele_of_arr_17_30_0 in mem


    lw      s5,20(sp)
              #                    occupy s6 with temp_22_cmp_30_0
    slt     s6,s5,a6
              #                    free a6
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    store to temp_21_ele_of_arr_17_30_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_21_ele_of_arr_17_30_0
              #                    free s5
              #                    occupy s5 with temp_19_ele_of_arr_17_30_0
              #                    store to temp_19_ele_of_arr_17_30_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_19_ele_of_arr_17_30_0
              #                    free s6
              #                    occupy s6 with temp_22_cmp_30_0
              #                    store to temp_22_cmp_30_0 in mem offset legal
    sb      s6,3(sp)
              #                    release s6 with temp_22_cmp_30_0
              #                     118  br i1 temp_22_cmp_30_0, label branch_true_31, label branch_false_31 
              #                    occupy a6 with temp_22_cmp_30_0
              #                    load from temp_22_cmp_30_0 in mem


    lb      a6,3(sp)
              #                    free a6
              #                    occupy a6 with temp_22_cmp_30_0
              #                    store to temp_22_cmp_30_0 in mem offset legal
    sb      a6,3(sp)
              #                    release a6 with temp_22_cmp_30_0
              #                    occupy a6 with temp_22_cmp_30_0
              #                    load from temp_22_cmp_30_0 in mem


    lb      a6,3(sp)
    bnez    a6, .branch_true_31
              #                    free a6
              #                    occupy a6 with temp_22_cmp_30_0
              #                    store to temp_22_cmp_30_0 in mem offset legal
    sb      a6,3(sp)
              #                    release a6 with temp_22_cmp_30_0
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |     s3:Freed { symidx: temp_20_ptr_of_arr_17_30, tracked: true } |     s4:Freed { symidx: temp_18_ptr_of_arr_17_30, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     116  label branch_true_31: 
.branch_true_31:
              #                     1232 untrack temp_16_cmp_27_0 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    release s2 with temp_16_cmp_27_0
              #                     1231 untrack temp_15_arithop_27_0 
              #                    occupy s1 with temp_15_arithop_27_0
              #                    release s1 with temp_15_arithop_27_0
              #                     1230 untrack temp_20_ptr_of_arr_17_30 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    release s3 with temp_20_ptr_of_arr_17_30
              #                     1229 untrack temp_22_cmp_30_0 
              #                     52    
              #                     54   (nop) 
              #                     56   (nop) 
              #                     58   (nop) 
              #                     59   mu arr_17:58 
              #                     60   (nop) 
              #                     62   (nop) 
              #                     64   (nop) 
              #                     66   (nop) 
              #                     68   (nop) 
              #                     69   mu arr_17:68 
              #                     70   store temp_21_ele_of_arr_17_30_0:i32 temp_18_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    load from temp_21_ele_of_arr_17_30_0 in mem


    lw      a6,4(sp)
    sw      a6,0(s4)
              #                    free a6
              #                    free s4
              #                     1235 untrack temp_21_ele_of_arr_17_30_0 
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    release a6 with temp_21_ele_of_arr_17_30_0
              #                     1234 untrack temp_18_ptr_of_arr_17_30 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    release s4 with temp_18_ptr_of_arr_17_30
              #                     71   arr_17 = chi arr_17:70 
              #                     73   temp_9_ptr_of_arr_17_32 = GEP arr_17:ptr->i32 [Some(j_19_3)] 
              #                    occupy a6 with temp_9_ptr_of_arr_17_32
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_19_3
              #                    load from j_19_3 in mem


    lw      s1,108(sp)
    mv      a7, s1
              #                    free s1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a0 with arr_17
    add     a6,a6,a0
              #                    free a0
              #                    free a6
              #                     74   store temp_19_ele_of_arr_17_30_0:i32 temp_9_ptr_of_arr_17_32:ptr->i32 
              #                    occupy a6 with temp_9_ptr_of_arr_17_32
              #                    occupy s2 with temp_19_ele_of_arr_17_30_0
              #                    load from temp_19_ele_of_arr_17_30_0 in mem


    lw      s2,20(sp)
    sw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     1236 untrack temp_9_ptr_of_arr_17_32 
              #                    occupy a6 with temp_9_ptr_of_arr_17_32
              #                    release a6 with temp_9_ptr_of_arr_17_32
              #                     1233 untrack temp_19_ele_of_arr_17_30_0 
              #                    occupy s2 with temp_19_ele_of_arr_17_30_0
              #                    release s2 with temp_19_ele_of_arr_17_30_0
              #                     75   arr_17 = chi arr_17:74 
              #                          jump label: branch_false_31 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    load from temp_16_cmp_27_0 in mem


    lb      s2,43(sp)
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    load from temp_18_ptr_of_arr_17_30 in mem
    ld      s4,24(sp)
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    load from temp_20_ptr_of_arr_17_30 in mem
    ld      s3,8(sp)
              #                    occupy s1 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with j_19_3
              #                    occupy s1 with temp_15_arithop_27_0
              #                    load from temp_15_arithop_27_0 in mem


    lw      s1,44(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |     s3:Freed { symidx: temp_20_ptr_of_arr_17_30, tracked: true } |     s4:Freed { symidx: temp_18_ptr_of_arr_17_30, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     117  label branch_false_31: 
.branch_false_31:
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |     s3:Freed { symidx: temp_20_ptr_of_arr_17_30, tracked: true } |     s4:Freed { symidx: temp_18_ptr_of_arr_17_30, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     49   (nop) 
              #                     50   (nop) 
              #                     1151 j_19_3 = i32 temp_17_arithop_30_0 
              #                    occupy a6 with temp_17_arithop_30_0
              #                    load from temp_17_arithop_30_0 in mem


    lw      a6,36(sp)
              #                    occupy a7 with j_19_3
    mv      a7, a6
              #                    free a6
              #                    occupy a6 with temp_17_arithop_30_0
              #                    store to temp_17_arithop_30_0 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_17_arithop_30_0
              #                    free a7
              #                    occupy a7 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      a7,108(sp)
              #                    release a7 with j_19_3
              #                          jump label: while.head_28 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    store to temp_16_cmp_27_0 in mem offset legal
    sb      s2,43(sp)
              #                    release s2 with temp_16_cmp_27_0
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    store to temp_18_ptr_of_arr_17_30 in mem offset legal
    sd      s4,24(sp)
              #                    release s4 with temp_18_ptr_of_arr_17_30
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    store to temp_20_ptr_of_arr_17_30 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_20_ptr_of_arr_17_30
              #                    occupy s1 with temp_15_arithop_27_0
              #                    store to temp_15_arithop_27_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_15_arithop_27_0
              #                    occupy a6 with j_19_3
              #                    load from j_19_3 in mem


    lw      a6,108(sp)
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     100  label while.exit_28: 
.while.exit_28:
              #                     46   temp_0_arithop_25_0 = Add i32 i_19_2, 1_0 
              #                    occupy a3 with i_19_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_0_arithop_25_0
    ADDW    s3,a3,a7
              #                    free a3
              #                    free a7
              #                    free s3
              #                     47   (nop) 
              #                     1152 i_19_2 = i32 temp_0_arithop_25_0 
              #                    occupy s3 with temp_0_arithop_25_0
              #                    occupy a3 with i_19_2
    mv      a3, s3
              #                    free s3
              #                    free a3
              #                          jump label: while.head_24 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    store to temp_16_cmp_27_0 in mem offset legal
    sb      s2,43(sp)
              #                    release s2 with temp_16_cmp_27_0
              #                    occupy s3 with temp_0_arithop_25_0
              #                    store to temp_0_arithop_25_0 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_0_arithop_25_0
              #                    occupy s1 with temp_15_arithop_27_0
              #                    store to temp_15_arithop_27_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_15_arithop_27_0
              #                    occupy a1 with temp_14_arithop_27_0
              #                    store to temp_14_arithop_27_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_14_arithop_27_0
              #                    occupy a6 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with j_19_3
              #                    occupy a5 with temp_12_cmp_23_0
              #                    store to temp_12_cmp_23_0 in mem offset legal
    sb      a5,55(sp)
              #                    release a5 with temp_12_cmp_23_0
              #                    occupy a4 with temp_11_arithop_23_0
              #                    store to temp_11_arithop_23_0 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with temp_11_arithop_23_0
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     85   label while.exit_24: 
.while.exit_24:
              #                     1228 untrack i_19_2 
              #                    occupy a3 with i_19_2
              #                    release a3 with i_19_2
              #                     1227 untrack temp_10_value_from_ptr_23_0 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    release a2 with temp_10_value_from_ptr_23_0
              #                     1020 mu arr_17:43 
              #                     1237 untrack arr_17 
              #                    occupy a0 with arr_17
              #                    release a0 with arr_17
              #                     43   ret 0_0 
              #                    load from ra_bubblesort_0 in mem
    ld      ra,192(sp)
              #                    load from s0_bubblesort_0 in mem
    ld      s0,184(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,200
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define insertsort_0 "a_40," -> insertsort_ret_0 
    .globl insertsort
    .type insertsort,@function
insertsort:
              #                    mem layout:|ra_insertsort:8 at 168|s0_insertsort:8 at 160|a:8 at 152|a:8 at 144|a:8 at 136|a:8 at 128|a:8 at 120|a:8 at 112|i _s42 _i0:4 at 108|i _s42 _i2:4 at 104|temp _s47 _i0:4 at 100|none:4 at 96|temp_23_ptr_of_a_40:8 at 88|temp_24_ele_of_a_40 _s47 _i0:4 at 84|j _s47 _i0:4 at 80|j _s47 _i2:4 at 76|temp_25_arithop _s47 _i0:4 at 72|temp_26_arithop _s47 _i0:4 at 68|none:4 at 64|temp_27_ptr_of_a_40:8 at 56|temp_28_arithop _s47 _i0:4 at 52|temp_29_arithop _s54 _i0:4 at 48|temp_30_ptr_of_a_40:8 at 40|temp_31_ptr_of_a_40:8 at 32|temp_33_arithop _s54 _i0:4 at 28|temp_34_value_from_ptr _s45 _i0:4 at 24|temp_35_cmp _s45 _i0:1 at 23|temp_36_cmp _s52 _i0:1 at 22|none:6 at 16|temp_37_ptr_of_a_40:8 at 8|temp_38_ele_of_a_40 _s52 _i0:4 at 4|temp_39_cmp _s52 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-176
              #                    store to ra_insertsort_0 in mem offset legal
    sd      ra,168(sp)
              #                    store to s0_insertsort_0 in mem offset legal
    sd      s0,160(sp)
    addi    s0,sp,176
              #                     119  alloc i32 [i_42] 
              #                     124  alloc i32 [temp_47] 
              #                     126  alloc ptr->i32 [temp_23_ptr_of_a_40_47] 
              #                     128  alloc i32 [temp_24_ele_of_a_40_47] 
              #                     132  alloc i32 [j_47] 
              #                     134  alloc i32 [temp_25_arithop_47] 
              #                     137  alloc i32 [temp_26_arithop_47] 
              #                     139  alloc ptr->i32 [temp_27_ptr_of_a_40_47] 
              #                     143  alloc i32 [temp_28_arithop_47] 
              #                     146  alloc i32 [temp_29_arithop_54] 
              #                     148  alloc ptr->i32 [temp_30_ptr_of_a_40_54] 
              #                     150  alloc ptr->i32 [temp_31_ptr_of_a_40_54] 
              #                     152  alloc i32 [temp_32_ele_of_a_40_54] 
              #                     157  alloc i32 [temp_33_arithop_54] 
              #                     160  alloc i32 [temp_34_value_from_ptr_45] 
              #                     163  alloc i1 [temp_35_cmp_45] 
              #                     171  alloc i1 [temp_36_cmp_52] 
              #                     173  alloc ptr->i32 [temp_37_ptr_of_a_40_52] 
              #                     175  alloc i32 [temp_38_ele_of_a_40_52] 
              #                     178  alloc i1 [temp_39_cmp_52] 
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L15_0: 
.L15_0:
              #                     19    
              #                     120   
              #                     121  (nop) 
              #                     161  temp_34_value_from_ptr_45_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_34_value_from_ptr_45_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     162  mu n_0_0:161 
              #                     1153 i_42_2 = i32 1_0 
              #                    occupy a3 with i_42_2
    li      a3, 1
              #                    free a3
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     165  label while.head_46: 
.while.head_46:
              #                     164  temp_35_cmp_45_0 = icmp i32 Slt i_42_2, temp_34_value_from_ptr_45_0 
              #                    occupy a3 with i_42_2
              #                    occupy a2 with temp_34_value_from_ptr_45_0
              #                    occupy a1 with temp_35_cmp_45_0
    slt     a1,a3,a2
              #                    free a3
              #                    free a2
              #                    free a1
              #                     168  br i1 temp_35_cmp_45_0, label while.body_46, label while.exit_46 
              #                    occupy a1 with temp_35_cmp_45_0
              #                    free a1
              #                    occupy a1 with temp_35_cmp_45_0
    bnez    a1, .while.body_46
              #                    free a1
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     166  label while.body_46: 
.while.body_46:
              #                     125   
              #                     127  temp_23_ptr_of_a_40_47 = GEP a_40:Array:i32:[None] [Some(i_42_2)] 
              #                    occupy a4 with temp_23_ptr_of_a_40_47
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_42_2
    mv      a5, a3
              #                    free a3
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a0 with a_40
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     129  temp_24_ele_of_a_40_47_0 = load temp_23_ptr_of_a_40_47:ptr->i32 
              #                    occupy a4 with temp_23_ptr_of_a_40_47
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     130  mu a_40:129 
              #                     131  (nop) 
              #                     133   
              #                     135  temp_25_arithop_47_0 = Sub i32 i_42_2, 1_0 
              #                    occupy a3 with i_42_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_25_arithop_47_0
              #                    regtab:    a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Occupied { symidx: i_42_2, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: temp_24_ele_of_a_40_47_0, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_25_arithop_47_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a3,a7
              #                    free a3
              #                    free a7
              #                    free s1
              #                     136  (nop) 
              #                     1154 j_47_2 = i32 temp_25_arithop_47_0 
              #                    occupy s1 with temp_25_arithop_47_0
              #                    occupy s2 with j_47_2
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a6:Freed { symidx: temp_24_ele_of_a_40_47_0, tracked: true } |     s1:Freed { symidx: temp_25_arithop_47_0, tracked: true } |     s2:Freed { symidx: j_47_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     185  label while.head_53: 
.while.head_53:
              #                     172  temp_36_cmp_52_0 = icmp i32 Sgt j_47_2, -1_0 
              #                    occupy s2 with j_47_2
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a7 with temp_36_cmp_52_0
    slt     a7,a5,s2
              #                    free s2
              #                    free a5
              #                    free a7
              #                     186  br i1 temp_36_cmp_52_0, label branch_short_circuit_p_true_384, label branch_short_circuit_c_false_384 
              #                    occupy a7 with temp_36_cmp_52_0
              #                    free a7
              #                    occupy a7 with temp_36_cmp_52_0
    bnez    a7, .branch_short_circuit_p_true_384
              #                    free a7
    j       .branch_short_circuit_c_false_384
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a6:Freed { symidx: temp_24_ele_of_a_40_47_0, tracked: true } |     a7:Freed { symidx: temp_36_cmp_52_0, tracked: true } |     s1:Freed { symidx: temp_25_arithop_47_0, tracked: true } |     s2:Freed { symidx: j_47_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     182  label branch_short_circuit_p_true_384: 
.branch_short_circuit_p_true_384:
              #                     174  temp_37_ptr_of_a_40_52 = GEP a_40:Array:i32:[None] [Some(j_47_2)] 
              #                    occupy a5 with temp_37_ptr_of_a_40_52
    li      a5, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with j_47_2
    mv      s3, s2
              #                    free s2
              #                    occupy s2 with j_47_2
              #                    store to j_47_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_47_2
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
              #                    occupy a0 with a_40
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     176  temp_38_ele_of_a_40_52_0 = load temp_37_ptr_of_a_40_52:ptr->i32 
              #                    occupy a5 with temp_37_ptr_of_a_40_52
              #                    occupy s2 with temp_38_ele_of_a_40_52_0
    lw      s2,0(a5)
              #                    free s2
              #                    occupy s2 with temp_38_ele_of_a_40_52_0
              #                    store to temp_38_ele_of_a_40_52_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_38_ele_of_a_40_52_0
              #                    free a5
              #                     177  mu a_40:176 
              #                     179  temp_39_cmp_52_0 = icmp i32 Slt temp_24_ele_of_a_40_47_0, temp_38_ele_of_a_40_52_0 
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
              #                    occupy s2 with temp_38_ele_of_a_40_52_0
              #                    load from temp_38_ele_of_a_40_52_0 in mem


    lw      s2,4(sp)
              #                    occupy s4 with temp_39_cmp_52_0
    slt     s4,a6,s2
              #                    free a6
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
              #                    store to temp_24_ele_of_a_40_47_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_24_ele_of_a_40_47_0
              #                    free s2
              #                    occupy s2 with temp_38_ele_of_a_40_52_0
              #                    store to temp_38_ele_of_a_40_52_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_38_ele_of_a_40_52_0
              #                    free s4
              #                     184  br i1 temp_39_cmp_52_0, label branch_short_circuit_c_true_384, label branch_short_circuit_c_false_384 
              #                    occupy s4 with temp_39_cmp_52_0
              #                    free s4
              #                    occupy s4 with temp_39_cmp_52_0
    bnez    s4, .branch_short_circuit_c_true_384
              #                    free s4
              #                    occupy a5 with temp_37_ptr_of_a_40_52
              #                    store to temp_37_ptr_of_a_40_52 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_37_ptr_of_a_40_52
              #                    occupy s4 with temp_39_cmp_52_0
              #                    store to temp_39_cmp_52_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_39_cmp_52_0
              #                    occupy s2 with j_47_2
              #                    load from j_47_2 in mem


    lw      s2,76(sp)
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
              #                    load from temp_24_ele_of_a_40_47_0 in mem


    lw      a6,84(sp)
    j       .branch_short_circuit_c_false_384
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a5:Freed { symidx: temp_37_ptr_of_a_40_52, tracked: true } |     a7:Freed { symidx: temp_36_cmp_52_0, tracked: true } |     s1:Freed { symidx: temp_25_arithop_47_0, tracked: true } |     s4:Freed { symidx: temp_39_cmp_52_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     180  label branch_short_circuit_c_true_384: 
.branch_short_circuit_c_true_384:
              #                     147  temp_29_arithop_54_0 = Add i32 j_47_2, 1_0 
              #                    occupy a6 with j_47_2
              #                    load from j_47_2 in mem


    lw      a6,76(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_29_arithop_54_0
    ADDW    s3,a6,s2
              #                    free a6
              #                    occupy a6 with j_47_2
              #                    store to j_47_2 in mem offset legal
    sw      a6,76(sp)
              #                    release a6 with j_47_2
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_29_arithop_54_0
              #                    store to temp_29_arithop_54_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_29_arithop_54_0
              #                     149  temp_30_ptr_of_a_40_54 = GEP a_40:ptr->i32 [Some(temp_29_arithop_54_0)] 
              #                    occupy a6 with temp_30_ptr_of_a_40_54
    li      a6, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_29_arithop_54_0
              #                    load from temp_29_arithop_54_0 in mem


    lw      s3,48(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_29_arithop_54_0
              #                    store to temp_29_arithop_54_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_29_arithop_54_0
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
              #                    occupy a0 with a_40
    add     a6,a6,a0
              #                    free a0
              #                    occupy a0 with a_40
              #                    store to a_40 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with a_40
              #                    free a6
              #                     151  (nop) 
              #                     153  (nop) 
              #                     154  mu a_40:153 
              #                     155  store temp_38_ele_of_a_40_52_0:i32 temp_30_ptr_of_a_40_54:ptr->i32 
              #                    occupy a6 with temp_30_ptr_of_a_40_54
              #                    occupy a0 with temp_38_ele_of_a_40_52_0
              #                    load from temp_38_ele_of_a_40_52_0 in mem


    lw      a0,4(sp)
    sw      a0,0(a6)
              #                    free a0
              #                    occupy a0 with temp_38_ele_of_a_40_52_0
              #                    store to temp_38_ele_of_a_40_52_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_38_ele_of_a_40_52_0
              #                    free a6
              #                     156  a_40 = chi a_40:155 
              #                     158  temp_33_arithop_54_0 = Sub i32 j_47_2, 1_0 
              #                    occupy a0 with j_47_2
              #                    load from j_47_2 in mem


    lw      a0,76(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_33_arithop_54_0
              #                    regtab:    a0:Occupied { symidx: j_47_2, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a5:Freed { symidx: temp_37_ptr_of_a_40_52, tracked: true } |     a6:Freed { symidx: temp_30_ptr_of_a_40_54, tracked: true } |     a7:Freed { symidx: temp_36_cmp_52_0, tracked: true } |     s1:Freed { symidx: temp_25_arithop_47_0, tracked: true } |     s2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s3:Occupied { symidx: temp_33_arithop_54_0, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_39_cmp_52_0, tracked: true } |  released_gpr_count:2,released_fpr_count:24


    subw    s3,a0,s2
              #                    free a0
              #                    occupy a0 with j_47_2
              #                    store to j_47_2 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with j_47_2
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_33_arithop_54_0
              #                    store to temp_33_arithop_54_0 in mem offset legal
    sw      s3,28(sp)
              #                    release s3 with temp_33_arithop_54_0
              #                     159  (nop) 
              #                     1156 j_47_2 = i32 temp_33_arithop_54_0 
              #                    occupy a0 with temp_33_arithop_54_0
              #                    load from temp_33_arithop_54_0 in mem


    lw      a0,28(sp)
              #                    occupy s2 with j_47_2
    mv      s2, a0
              #                    free a0
              #                    occupy a0 with temp_33_arithop_54_0
              #                    store to temp_33_arithop_54_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_33_arithop_54_0
              #                    free s2
              #                    occupy s2 with j_47_2
              #                    store to j_47_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_47_2
              #                          jump label: while.head_53 
              #                    occupy a5 with temp_37_ptr_of_a_40_52
              #                    store to temp_37_ptr_of_a_40_52 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_37_ptr_of_a_40_52
              #                    occupy a7 with temp_36_cmp_52_0
              #                    store to temp_36_cmp_52_0 in mem offset legal
    sb      a7,22(sp)
              #                    release a7 with temp_36_cmp_52_0
              #                    occupy s4 with temp_39_cmp_52_0
              #                    store to temp_39_cmp_52_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_39_cmp_52_0
              #                    occupy s2 with j_47_2
              #                    load from j_47_2 in mem


    lw      s2,76(sp)
              #                    occupy a6 with temp_30_ptr_of_a_40_54
              #                    store to temp_30_ptr_of_a_40_54 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with temp_30_ptr_of_a_40_54
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
              #                    load from temp_24_ele_of_a_40_47_0 in mem


    lw      a6,84(sp)
              #                    occupy a0 with a_40
              #                    load from a_40 in mem
    ld      a0,112(sp)
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |     a4:Freed { symidx: temp_23_ptr_of_a_40_47, tracked: true } |     a6:Freed { symidx: temp_24_ele_of_a_40_47_0, tracked: true } |     a7:Freed { symidx: temp_36_cmp_52_0, tracked: true } |     s1:Freed { symidx: temp_25_arithop_47_0, tracked: true } |     s2:Freed { symidx: j_47_2, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     181  label branch_short_circuit_c_false_384: 
.branch_short_circuit_c_false_384:
              #                     138  temp_26_arithop_47_0 = Add i32 j_47_2, 1_0 
              #                    occupy s2 with j_47_2
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s3 with temp_26_arithop_47_0
    ADDW    s3,s2,a5
              #                    free s2
              #                    occupy s2 with j_47_2
              #                    store to j_47_2 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with j_47_2
              #                    free a5
              #                    free s3
              #                     140  temp_27_ptr_of_a_40_47 = GEP a_40:ptr->i32 [Some(temp_26_arithop_47_0)] 
              #                    occupy s2 with temp_27_ptr_of_a_40_47
    li      s2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_26_arithop_47_0
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_26_arithop_47_0
              #                    store to temp_26_arithop_47_0 in mem offset legal
    sw      s3,68(sp)
              #                    release s3 with temp_26_arithop_47_0
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
              #                    occupy a0 with a_40
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     141  store temp_24_ele_of_a_40_47_0:i32 temp_27_ptr_of_a_40_47:ptr->i32 
              #                    occupy s2 with temp_27_ptr_of_a_40_47
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
    sw      a6,0(s2)
              #                    free a6
              #                    free s2
              #                     142  a_40 = chi a_40:141 
              #                     144  temp_28_arithop_47_0 = Add i32 i_42_2, 1_0 
              #                    occupy a3 with i_42_2
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s3 with temp_28_arithop_47_0
    ADDW    s3,a3,a5
              #                    free a3
              #                    occupy a3 with i_42_2
              #                    store to i_42_2 in mem offset legal
    sw      a3,104(sp)
              #                    release a3 with i_42_2
              #                    free a5
              #                    free s3
              #                     145  (nop) 
              #                     1155 i_42_2 = i32 temp_28_arithop_47_0 
              #                    occupy s3 with temp_28_arithop_47_0
              #                    occupy a3 with i_42_2
    mv      a3, s3
              #                    free s3
              #                    occupy s3 with temp_28_arithop_47_0
              #                    store to temp_28_arithop_47_0 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with temp_28_arithop_47_0
              #                    free a3
              #                          jump label: while.head_46 
              #                    occupy a1 with temp_35_cmp_45_0
              #                    store to temp_35_cmp_45_0 in mem offset legal
    sb      a1,23(sp)
              #                    release a1 with temp_35_cmp_45_0
              #                    occupy a7 with temp_36_cmp_52_0
              #                    store to temp_36_cmp_52_0 in mem offset legal
    sb      a7,22(sp)
              #                    release a7 with temp_36_cmp_52_0
              #                    occupy s1 with temp_25_arithop_47_0
              #                    store to temp_25_arithop_47_0 in mem offset legal
    sw      s1,72(sp)
              #                    release s1 with temp_25_arithop_47_0
              #                    occupy a4 with temp_23_ptr_of_a_40_47
              #                    store to temp_23_ptr_of_a_40_47 in mem offset legal
    sd      a4,88(sp)
              #                    release a4 with temp_23_ptr_of_a_40_47
              #                    occupy s2 with temp_27_ptr_of_a_40_47
              #                    store to temp_27_ptr_of_a_40_47 in mem offset legal
    sd      s2,56(sp)
              #                    release s2 with temp_27_ptr_of_a_40_47
              #                    occupy a6 with temp_24_ele_of_a_40_47_0
              #                    store to temp_24_ele_of_a_40_47_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_24_ele_of_a_40_47_0
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_40, tracked: true } |     a1:Freed { symidx: temp_35_cmp_45_0, tracked: true } |     a2:Freed { symidx: temp_34_value_from_ptr_45_0, tracked: true } |     a3:Freed { symidx: i_42_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     167  label while.exit_46: 
.while.exit_46:
              #                     1239 untrack temp_34_value_from_ptr_45_0 
              #                    occupy a2 with temp_34_value_from_ptr_45_0
              #                    release a2 with temp_34_value_from_ptr_45_0
              #                     1238 untrack i_42_2 
              #                    occupy a3 with i_42_2
              #                    release a3 with i_42_2
              #                     1021 mu a_40:123 
              #                     1240 untrack a_40 
              #                    occupy a0 with a_40
              #                    release a0 with a_40
              #                     123  ret 0_0 
              #                    load from ra_insertsort_0 in mem
    ld      ra,168(sp)
              #                    load from s0_insertsort_0 in mem
    ld      s0,160(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,176
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define QuickSort_0 "arr_60,low_60_0,high_60_0," -> QuickSort_ret_0 
    .globl QuickSort
    .type QuickSort,@function
QuickSort:
              #                    mem layout:|ra_QuickSort:8 at 288|s0_QuickSort:8 at 280|arr:8 at 272|arr:8 at 264|arr:8 at 256|arr:8 at 248|arr:8 at 240|arr:8 at 232|arr _s60 _i6:8 at 224|arr:8 at 216|arr:8 at 208|low _s60 _i0:4 at 204|high _s60 _i0:4 at 200|i _s65 _i0:4 at 196|i _s65 _i1:4 at 192|i _s65 _i2:4 at 188|i _s65 _i4:4 at 184|i _s65 _i5:4 at 180|j _s65 _i0:4 at 176|j _s65 _i1:4 at 172|j _s65 _i2:4 at 168|j _s65 _i3:4 at 164|j _s65 _i5:4 at 160|k _s65 _i0:4 at 156|none:4 at 152|temp_40_ptr_of_arr_60:8 at 144|temp_41_ele_of_arr_60 _s65 _i0:4 at 140|none:4 at 136|temp_42_ptr_of_arr_60:8 at 128|tmp _s65 _i0:4 at 124|temp_43_arithop _s65 _i0:4 at 120|temp_44_ret_of_QuickSort _s65 _i0:4 at 116|temp_45_arithop _s65 _i0:4 at 112|temp_46_ret_of_QuickSort _s65 _i0:4 at 108|none:4 at 104|temp_47_ptr_of_arr_60:8 at 96|temp_48_ptr_of_arr_60:8 at 88|temp_49_ele_of_arr_60 _s90 _i0:4 at 84|temp_50_arithop _s90 _i0:4 at 80|temp_51_arithop _s86 _i0:4 at 76|none:4 at 72|temp_52_ptr_of_arr_60:8 at 64|temp_53_ptr_of_arr_60:8 at 56|temp_54_ele_of_arr_60 _s81 _i0:4 at 52|temp_55_arithop _s81 _i0:4 at 48|temp_56_arithop _s77 _i0:4 at 44|temp_57_cmp _s63 _i0:1 at 43|temp_58_cmp _s72 _i0:1 at 42|temp_59_cmp _s75 _i0:1 at 41|none:1 at 40|temp_60_arithop _s75 _i0:4 at 36|none:4 at 32|temp_61_ptr_of_arr_60:8 at 24|temp_62_ele_of_arr_60 _s75 _i0:4 at 20|temp_63_cmp _s75 _i0:1 at 19|temp_65_cmp _s84 _i0:1 at 18|none:2 at 16|temp_66_ptr_of_arr_60:8 at 8|temp_67_ele_of_arr_60 _s84 _i0:4 at 4|temp_68_cmp _s84 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-296
              #                    store to ra_QuickSort_0 in mem offset legal
    sd      ra,288(sp)
              #                    store to s0_QuickSort_0 in mem offset legal
    sd      s0,280(sp)
    addi    s0,sp,296
              #                     189  alloc i32 [i_65] 
              #                     192  alloc i32 [j_65] 
              #                     195  alloc i32 [k_65] 
              #                     197  alloc ptr->i32 [temp_40_ptr_of_arr_60_65] 
              #                     199  alloc i32 [temp_41_ele_of_arr_60_65] 
              #                     203  alloc ptr->i32 [temp_42_ptr_of_arr_60_65] 
              #                     207  alloc i32 [tmp_65] 
              #                     209  alloc i32 [temp_43_arithop_65] 
              #                     212  alloc i32 [temp_44_ret_of_QuickSort_65] 
              #                     215  alloc i32 [temp_45_arithop_65] 
              #                     218  alloc i32 [temp_46_ret_of_QuickSort_65] 
              #                     221  alloc ptr->i32 [temp_47_ptr_of_arr_60_90] 
              #                     223  alloc ptr->i32 [temp_48_ptr_of_arr_60_90] 
              #                     225  alloc i32 [temp_49_ele_of_arr_60_90] 
              #                     230  alloc i32 [temp_50_arithop_90] 
              #                     233  alloc i32 [temp_51_arithop_86] 
              #                     236  alloc ptr->i32 [temp_52_ptr_of_arr_60_81] 
              #                     238  alloc ptr->i32 [temp_53_ptr_of_arr_60_81] 
              #                     240  alloc i32 [temp_54_ele_of_arr_60_81] 
              #                     245  alloc i32 [temp_55_arithop_81] 
              #                     248  alloc i32 [temp_56_arithop_77] 
              #                     251  alloc i1 [temp_57_cmp_63] 
              #                     258  alloc i1 [temp_58_cmp_72] 
              #                     264  alloc i1 [temp_59_cmp_75] 
              #                     266  alloc i32 [temp_60_arithop_75] 
              #                     268  alloc ptr->i32 [temp_61_ptr_of_arr_60_75] 
              #                     270  alloc i32 [temp_62_ele_of_arr_60_75] 
              #                     273  alloc i1 [temp_63_cmp_75] 
              #                     281  alloc i1 [temp_64_cmp_79] 
              #                     286  alloc i1 [temp_65_cmp_84] 
              #                     288  alloc ptr->i32 [temp_66_ptr_of_arr_60_84] 
              #                     290  alloc i32 [temp_67_ele_of_arr_60_84] 
              #                     293  alloc i1 [temp_68_cmp_84] 
              #                     302  alloc i1 [temp_69_cmp_88] 
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L13_0: 
.L13_0:
              #                     21    
              #                     252  temp_57_cmp_63_0 = icmp i32 Slt low_60_0, high_60_0 
              #                    occupy a1 with low_60_0
              #                    occupy a2 with high_60_0
              #                    occupy a3 with temp_57_cmp_63_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     255  br i1 temp_57_cmp_63_0, label branch_true_64, label branch_false_64 
              #                    occupy a3 with temp_57_cmp_63_0
              #                    free a3
              #                    occupy a3 with temp_57_cmp_63_0
    bnez    a3, .branch_true_64
              #                    free a3
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: temp_57_cmp_63_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     253  label branch_true_64: 
.branch_true_64:
              #                     1241 untrack temp_57_cmp_63_0 
              #                    occupy a3 with temp_57_cmp_63_0
              #                    release a3 with temp_57_cmp_63_0
              #                     190   
              #                     191  i_65_1 = i32 low_60_0 
              #                    occupy a1 with low_60_0
              #                    occupy a3 with i_65_1
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                     193   
              #                     194  j_65_1 = i32 high_60_0 
              #                    occupy a2 with high_60_0
              #                    occupy a4 with j_65_1
    mv      a4, a2
              #                    free a2
              #                    free a4
              #                     196   
              #                     198  temp_40_ptr_of_arr_60_65 = GEP arr_60:Array:i32:[None] [Some(low_60_0)] 
              #                    occupy a5 with temp_40_ptr_of_arr_60_65
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with low_60_0
    mv      a6, a1
              #                    free a1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with arr_60
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     200  temp_41_ele_of_arr_60_65_0 = load temp_40_ptr_of_arr_60_65:ptr->i32 
              #                    occupy a5 with temp_40_ptr_of_arr_60_65
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     1256 untrack temp_40_ptr_of_arr_60_65 
              #                    occupy a5 with temp_40_ptr_of_arr_60_65
              #                    release a5 with temp_40_ptr_of_arr_60_65
              #                     201  mu arr_60:200 
              #                     202  (nop) 
              #                     1160 i_65_2 = i32 i_65_1 
              #                    occupy a3 with i_65_1
              #                    occupy a5 with i_65_2
    mv      a5, a3
              #                    free a3
              #                    free a5
              #                     1255 untrack i_65_1 
              #                    occupy a3 with i_65_1
              #                    release a3 with i_65_1
              #                     1161 j_65_2 = i32 j_65_1 
              #                    occupy a4 with j_65_1
              #                    occupy a3 with j_65_2
    mv      a3, a4
              #                    free a4
              #                    free a3
              #                     1254 untrack j_65_1 
              #                    occupy a4 with j_65_1
              #                    release a4 with j_65_1
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     260  label while.head_73: 
.while.head_73:
              #                     259  temp_58_cmp_72_0 = icmp i32 Slt i_65_2, j_65_2 
              #                    occupy a5 with i_65_2
              #                    occupy a3 with j_65_2
              #                    occupy a4 with temp_58_cmp_72_0
    slt     a4,a5,a3
              #                    free a5
              #                    free a3
              #                    free a4
              #                     267  temp_60_arithop_75_0 = Sub i32 temp_41_ele_of_arr_60_65_0, 1_0 
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_60_arithop_75_0
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a7:Occupied { symidx: temp_41_ele_of_arr_60_65_0, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: temp_60_arithop_75_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    s1,a7,a6
              #                    free a7
              #                    free a6
              #                    free s1
              #                     263  br i1 temp_58_cmp_72_0, label UP_100_0, label while.exit_73 
              #                    occupy a4 with temp_58_cmp_72_0
              #                    free a4
              #                    occupy a4 with temp_58_cmp_72_0
    bnez    a4, .UP_100_0
              #                    free a4
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1157 label UP_100_0: 
.UP_100_0:
              #                     1162 j_65_3 = i32 j_65_2 
              #                    occupy a3 with j_65_2
              #                    occupy a6 with j_65_3
    mv      a6, a3
              #                    free a3
              #                    free a6
              #                          jump label: while.body_73 
    j       .while.body_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     261  label while.body_73: 
.while.body_73:
              #                     265  temp_59_cmp_75_0 = icmp i32 Slt i_65_2, j_65_3 
              #                    occupy a5 with i_65_2
              #                    occupy a6 with j_65_3
              #                    occupy s2 with temp_59_cmp_75_0
    slt     s2,a5,a6
              #                    free a5
              #                    free a6
              #                    free s2
              #                     280  br i1 temp_59_cmp_75_0, label branch_short_circuit_p_true_525, label branch_short_circuit_c_false_525 
              #                    occupy s2 with temp_59_cmp_75_0
              #                    free s2
              #                    occupy s2 with temp_59_cmp_75_0
    bnez    s2, .branch_short_circuit_p_true_525
              #                    free s2
    j       .branch_short_circuit_c_false_525
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     277  label branch_short_circuit_p_true_525: 
.branch_short_circuit_p_true_525:
              #                     269  temp_61_ptr_of_arr_60_75 = GEP arr_60:Array:i32:[None] [Some(j_65_3)] 
              #                    occupy s3 with temp_61_ptr_of_arr_60_75
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_65_3
    mv      s4, a6
              #                    free a6
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_60
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     271  temp_62_ele_of_arr_60_75_0 = load temp_61_ptr_of_arr_60_75:ptr->i32 
              #                    occupy s3 with temp_61_ptr_of_arr_60_75
              #                    occupy s5 with temp_62_ele_of_arr_60_75_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_62_ele_of_arr_60_75_0
              #                    store to temp_62_ele_of_arr_60_75_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_62_ele_of_arr_60_75_0
              #                    free s3
              #                     272  mu arr_60:271 
              #                     274  temp_63_cmp_75_0 = icmp i32 Sgt temp_62_ele_of_arr_60_75_0, temp_60_arithop_75_0 
              #                    occupy s5 with temp_62_ele_of_arr_60_75_0
              #                    load from temp_62_ele_of_arr_60_75_0 in mem


    lw      s5,20(sp)
              #                    occupy s1 with temp_60_arithop_75_0
              #                    occupy s6 with temp_63_cmp_75_0
    slt     s6,s1,s5
              #                    free s5
              #                    occupy s5 with temp_62_ele_of_arr_60_75_0
              #                    store to temp_62_ele_of_arr_60_75_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_62_ele_of_arr_60_75_0
              #                    free s1
              #                    occupy s1 with temp_60_arithop_75_0
              #                    store to temp_60_arithop_75_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_60_arithop_75_0
              #                    free s6
              #                     279  br i1 temp_63_cmp_75_0, label branch_short_circuit_c_true_525, label branch_short_circuit_c_false_525 
              #                    occupy s6 with temp_63_cmp_75_0
              #                    free s6
              #                    occupy s6 with temp_63_cmp_75_0
    bnez    s6, .branch_short_circuit_c_true_525
              #                    free s6
              #                    occupy s3 with temp_61_ptr_of_arr_60_75
              #                    store to temp_61_ptr_of_arr_60_75 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_61_ptr_of_arr_60_75
              #                    occupy s6 with temp_63_cmp_75_0
              #                    store to temp_63_cmp_75_0 in mem offset legal
    sb      s6,19(sp)
              #                    release s6 with temp_63_cmp_75_0
              #                    occupy s1 with temp_60_arithop_75_0
              #                    load from temp_60_arithop_75_0 in mem


    lw      s1,36(sp)
    j       .branch_short_circuit_c_false_525
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |     s3:Freed { symidx: temp_61_ptr_of_arr_60_75, tracked: true } |     s6:Freed { symidx: temp_63_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     275  label branch_short_circuit_c_true_525: 
.branch_short_circuit_c_true_525:
              #                     249  temp_56_arithop_77_0 = Sub i32 j_65_3, 1_0 
              #                    occupy a6 with j_65_3
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s4 with temp_56_arithop_77_0
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Occupied { symidx: j_65_3, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |     s3:Freed { symidx: temp_61_ptr_of_arr_60_75, tracked: true } |     s4:Occupied { symidx: temp_56_arithop_77_0, tracked: true, occupy_count: 1 } |     s6:Freed { symidx: temp_63_cmp_75_0, tracked: true } |  released_gpr_count:3,released_fpr_count:24


    subw    s4,a6,s1
              #                    free a6
              #                    occupy a6 with j_65_3
              #                    store to j_65_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_65_3
              #                    free s1
              #                    free s4
              #                     250  (nop) 
              #                     1171 j_65_3 = i32 temp_56_arithop_77_0 
              #                    occupy s4 with temp_56_arithop_77_0
              #                    occupy a6 with j_65_3
    mv      a6, s4
              #                    free s4
              #                    occupy s4 with temp_56_arithop_77_0
              #                    store to temp_56_arithop_77_0 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with temp_56_arithop_77_0
              #                    free a6
              #                          jump label: while.body_73 
              #                    occupy s3 with temp_61_ptr_of_arr_60_75
              #                    store to temp_61_ptr_of_arr_60_75 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_61_ptr_of_arr_60_75
              #                    occupy s6 with temp_63_cmp_75_0
              #                    store to temp_63_cmp_75_0 in mem offset legal
    sb      s6,19(sp)
              #                    release s6 with temp_63_cmp_75_0
              #                    occupy s2 with temp_59_cmp_75_0
              #                    store to temp_59_cmp_75_0 in mem offset legal
    sb      s2,41(sp)
              #                    release s2 with temp_59_cmp_75_0
              #                    occupy s1 with temp_60_arithop_75_0
              #                    load from temp_60_arithop_75_0 in mem


    lw      s1,36(sp)
    j       .while.body_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     276  label branch_short_circuit_c_false_525: 
.branch_short_circuit_c_false_525:
              #                     282  (nop) 
              #                     285  br i1 temp_59_cmp_75_0, label branch_true_80, label UP_84_0 
              #                    occupy s2 with temp_59_cmp_75_0
              #                    free s2
              #                    occupy s2 with temp_59_cmp_75_0
    bnez    s2, .branch_true_80
              #                    free s2
    j       .UP_84_0
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     283  label branch_true_80: 
.branch_true_80:
              #                     1267 untrack temp_60_arithop_75_0 
              #                    occupy s1 with temp_60_arithop_75_0
              #                    release s1 with temp_60_arithop_75_0
              #                     1266 untrack temp_58_cmp_72_0 
              #                    occupy a4 with temp_58_cmp_72_0
              #                    release a4 with temp_58_cmp_72_0
              #                     237  temp_52_ptr_of_arr_60_81 = GEP arr_60:ptr->i32 [Some(i_65_2)] 
              #                    occupy a4 with temp_52_ptr_of_arr_60_81
    li      a4, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_65_2
    mv      s1, a5
              #                    free a5
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a0 with arr_60
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     239  temp_53_ptr_of_arr_60_81 = GEP arr_60:Array:i32:[None] [Some(j_65_3)] 
              #                    occupy s3 with temp_53_ptr_of_arr_60_81
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_65_3
    mv      s4, a6
              #                    free a6
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_60
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     241  temp_54_ele_of_arr_60_81_0 = load temp_53_ptr_of_arr_60_81:ptr->i32 
              #                    occupy s3 with temp_53_ptr_of_arr_60_81
              #                    occupy s5 with temp_54_ele_of_arr_60_81_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_54_ele_of_arr_60_81_0
              #                    store to temp_54_ele_of_arr_60_81_0 in mem offset legal
    sw      s5,52(sp)
              #                    release s5 with temp_54_ele_of_arr_60_81_0
              #                    free s3
              #                     1268 untrack temp_53_ptr_of_arr_60_81 
              #                    occupy s3 with temp_53_ptr_of_arr_60_81
              #                    release s3 with temp_53_ptr_of_arr_60_81
              #                     242  mu arr_60:241 
              #                     243  store temp_54_ele_of_arr_60_81_0:i32 temp_52_ptr_of_arr_60_81:ptr->i32 
              #                    occupy a4 with temp_52_ptr_of_arr_60_81
              #                    occupy s3 with temp_54_ele_of_arr_60_81_0
              #                    load from temp_54_ele_of_arr_60_81_0 in mem


    lw      s3,52(sp)
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                     1271 untrack temp_54_ele_of_arr_60_81_0 
              #                    occupy s3 with temp_54_ele_of_arr_60_81_0
              #                    release s3 with temp_54_ele_of_arr_60_81_0
              #                     1270 untrack temp_52_ptr_of_arr_60_81 
              #                    occupy a4 with temp_52_ptr_of_arr_60_81
              #                    release a4 with temp_52_ptr_of_arr_60_81
              #                     244  arr_60 = chi arr_60:243 
              #                     246  temp_55_arithop_81_0 = Add i32 i_65_2, 1_0 
              #                    occupy a5 with i_65_2
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_55_arithop_81_0
    ADDW    s3,a5,a4
              #                    free a5
              #                    free a4
              #                    free s3
              #                     247  (nop) 
              #                     1163 i_65_4 = i32 temp_55_arithop_81_0 
              #                    occupy s3 with temp_55_arithop_81_0
              #                    occupy s5 with i_65_4
    mv      s5, s3
              #                    free s3
              #                    occupy s3 with temp_55_arithop_81_0
              #                    store to temp_55_arithop_81_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_55_arithop_81_0
              #                    free s5
              #                     1269 untrack temp_55_arithop_81_0 
              #                          jump label: branch_false_80 
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |     s5:Freed { symidx: i_65_4, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     284  label branch_false_80: 
.branch_false_80:
              #                     1164 i_65_5 = i32 i_65_4 
              #                    occupy s5 with i_65_4
              #                    occupy a4 with i_65_5
    mv      a4, s5
              #                    free s5
              #                    occupy s5 with i_65_4
              #                    store to i_65_4 in mem offset legal
    sw      s5,184(sp)
              #                    release s5 with i_65_4
              #                    free a4
              #                          jump label: while.head_85 
    j       .while.head_85
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: i_65_5, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     300  label while.head_85: 
.while.head_85:
              #                     287  temp_65_cmp_84_0 = icmp i32 Slt i_65_5, j_65_3 
              #                    occupy a4 with i_65_5
              #                    occupy a6 with j_65_3
              #                    occupy s1 with temp_65_cmp_84_0
    slt     s1,a4,a6
              #                    free a4
              #                    occupy a4 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      a4,180(sp)
              #                    release a4 with i_65_5
              #                    free a6
              #                    free s1
              #                     301  br i1 temp_65_cmp_84_0, label branch_short_circuit_p_true_551, label branch_short_circuit_c_false_551 
              #                    occupy s1 with temp_65_cmp_84_0
              #                    free s1
              #                    occupy s1 with temp_65_cmp_84_0
    bnez    s1, .branch_short_circuit_p_true_551
              #                    free s1
    j       .branch_short_circuit_c_false_551
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     297  label branch_short_circuit_p_true_551: 
.branch_short_circuit_p_true_551:
              #                     289  temp_66_ptr_of_arr_60_84 = GEP arr_60:Array:i32:[None] [Some(i_65_5)] 
              #                    occupy a4 with temp_66_ptr_of_arr_60_84
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_65_5
              #                    load from i_65_5 in mem


    lw      s4,180(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with i_65_5
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
              #                    occupy a0 with arr_60
    add     a4,a4,a0
              #                    free a0
              #                    occupy a0 with arr_60
              #                    store to arr_60 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_60
              #                    free a4
              #                     291  temp_67_ele_of_arr_60_84_0 = load temp_66_ptr_of_arr_60_84:ptr->i32 
              #                    occupy a4 with temp_66_ptr_of_arr_60_84
              #                    occupy a0 with temp_67_ele_of_arr_60_84_0
    lw      a0,0(a4)
              #                    free a0
              #                    occupy a0 with temp_67_ele_of_arr_60_84_0
              #                    store to temp_67_ele_of_arr_60_84_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_67_ele_of_arr_60_84_0
              #                    free a4
              #                     292  mu arr_60:291 
              #                     294  temp_68_cmp_84_0 = icmp i32 Slt temp_67_ele_of_arr_60_84_0, temp_41_ele_of_arr_60_65_0 
              #                    occupy a0 with temp_67_ele_of_arr_60_84_0
              #                    load from temp_67_ele_of_arr_60_84_0 in mem


    lw      a0,4(sp)
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    occupy s3 with temp_68_cmp_84_0
    slt     s3,a0,a7
              #                    free a0
              #                    occupy a0 with temp_67_ele_of_arr_60_84_0
              #                    store to temp_67_ele_of_arr_60_84_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_67_ele_of_arr_60_84_0
              #                    free a7
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    store to temp_41_ele_of_arr_60_65_0 in mem offset legal
    sw      a7,140(sp)
              #                    release a7 with temp_41_ele_of_arr_60_65_0
              #                    free s3
              #                     299  br i1 temp_68_cmp_84_0, label branch_short_circuit_c_true_551, label branch_short_circuit_c_false_551 
              #                    occupy s3 with temp_68_cmp_84_0
              #                    free s3
              #                    occupy s3 with temp_68_cmp_84_0
    bnez    s3, .branch_short_circuit_c_true_551
              #                    free s3
              #                    occupy s3 with temp_68_cmp_84_0
              #                    store to temp_68_cmp_84_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_68_cmp_84_0
              #                    occupy a4 with temp_66_ptr_of_arr_60_84
              #                    store to temp_66_ptr_of_arr_60_84 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_66_ptr_of_arr_60_84
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    load from temp_41_ele_of_arr_60_65_0 in mem


    lw      a7,140(sp)
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,208(sp)
    j       .branch_short_circuit_c_false_551
              #                    regtab     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_66_ptr_of_arr_60_84, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |     s3:Freed { symidx: temp_68_cmp_84_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     295  label branch_short_circuit_c_true_551: 
.branch_short_circuit_c_true_551:
              #                     1276 untrack temp_56_arithop_77_0 
              #                     1275 untrack temp_59_cmp_75_0 
              #                    occupy s2 with temp_59_cmp_75_0
              #                    release s2 with temp_59_cmp_75_0
              #                     1274 untrack temp_62_ele_of_arr_60_75_0 
              #                     1273 untrack temp_61_ptr_of_arr_60_75 
              #                     1272 untrack temp_63_cmp_75_0 
              #                     234  temp_51_arithop_86_0 = Add i32 i_65_5, 1_0 
              #                    occupy a0 with i_65_5
              #                    load from i_65_5 in mem


    lw      a0,180(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_51_arithop_86_0
    ADDW    s2,a0,a7
              #                    free a0
              #                    occupy a0 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_65_5
              #                    free a7
              #                    free s2
              #                     235  (nop) 
              #                     1169 i_65_5 = i32 temp_51_arithop_86_0 
              #                    occupy s2 with temp_51_arithop_86_0
              #                    occupy a0 with i_65_5
    mv      a0, s2
              #                    free s2
              #                    occupy s2 with temp_51_arithop_86_0
              #                    store to temp_51_arithop_86_0 in mem offset legal
    sw      s2,76(sp)
              #                    release s2 with temp_51_arithop_86_0
              #                    free a0
              #                          jump label: while.head_85 
              #                    occupy s3 with temp_68_cmp_84_0
              #                    store to temp_68_cmp_84_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_68_cmp_84_0
              #                    occupy s2 with temp_59_cmp_75_0
              #                    load from temp_59_cmp_75_0 in mem


    lb      s2,41(sp)
              #                    occupy s1 with temp_65_cmp_84_0
              #                    store to temp_65_cmp_84_0 in mem offset legal
    sb      s1,18(sp)
              #                    release s1 with temp_65_cmp_84_0
              #                    occupy a4 with temp_66_ptr_of_arr_60_84
              #                    store to temp_66_ptr_of_arr_60_84 in mem offset legal
    sd      a4,8(sp)
              #                    release a4 with temp_66_ptr_of_arr_60_84
              #                    occupy a0 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_65_5
              #                    occupy a4 with i_65_5
              #                    load from i_65_5 in mem


    lw      a4,180(sp)
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    load from temp_41_ele_of_arr_60_65_0 in mem


    lw      a7,140(sp)
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,208(sp)
    j       .while.head_85
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     296  label branch_short_circuit_c_false_551: 
.branch_short_circuit_c_false_551:
              #                     303  (nop) 
              #                     306  br i1 temp_65_cmp_84_0, label branch_true_89, label UP_73_0 
              #                    occupy s1 with temp_65_cmp_84_0
              #                    free s1
              #                    occupy s1 with temp_65_cmp_84_0
    bnez    s1, .branch_true_89
              #                    free s1
    j       .UP_73_0
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     304  label branch_true_89: 
.branch_true_89:
              #                     222  temp_47_ptr_of_arr_60_90 = GEP arr_60:ptr->i32 [Some(j_65_3)] 
              #                    occupy a4 with temp_47_ptr_of_arr_60_90
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with j_65_3
    mv      s3, a6
              #                    free a6
              #                    occupy a6 with j_65_3
              #                    store to j_65_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_65_3
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
              #                    occupy a0 with arr_60
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     224  temp_48_ptr_of_arr_60_90 = GEP arr_60:Array:i32:[None] [Some(i_65_5)] 
              #                    occupy a6 with temp_48_ptr_of_arr_60_90
    li      a6, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_65_5
              #                    load from i_65_5 in mem


    lw      s4,180(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      s4,180(sp)
              #                    release s4 with i_65_5
    add     a6,a6,s3
              #                    free s3
    slli a6,a6,2
              #                    occupy a0 with arr_60
    add     a6,a6,a0
              #                    free a0
              #                    occupy a0 with arr_60
              #                    store to arr_60 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_60
              #                    free a6
              #                     226  temp_49_ele_of_arr_60_90_0 = load temp_48_ptr_of_arr_60_90:ptr->i32 
              #                    occupy a6 with temp_48_ptr_of_arr_60_90
              #                    occupy a0 with temp_49_ele_of_arr_60_90_0
    lw      a0,0(a6)
              #                    free a0
              #                    occupy a0 with temp_49_ele_of_arr_60_90_0
              #                    store to temp_49_ele_of_arr_60_90_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_49_ele_of_arr_60_90_0
              #                    free a6
              #                     227  mu arr_60:226 
              #                     228  store temp_49_ele_of_arr_60_90_0:i32 temp_47_ptr_of_arr_60_90:ptr->i32 
              #                    occupy a4 with temp_47_ptr_of_arr_60_90
              #                    occupy a0 with temp_49_ele_of_arr_60_90_0
              #                    load from temp_49_ele_of_arr_60_90_0 in mem


    lw      a0,84(sp)
    sw      a0,0(a4)
              #                    free a0
              #                    occupy a0 with temp_49_ele_of_arr_60_90_0
              #                    store to temp_49_ele_of_arr_60_90_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_49_ele_of_arr_60_90_0
              #                    free a4
              #                     229  arr_60 = chi arr_60:228 
              #                     231  temp_50_arithop_90_0 = Sub i32 j_65_3, 1_0 
              #                    occupy a0 with j_65_3
              #                    load from j_65_3 in mem


    lw      a0,164(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_50_arithop_90_0
              #                    regtab:    a0:Occupied { symidx: j_65_3, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_47_ptr_of_arr_60_90, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: temp_48_ptr_of_arr_60_90, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |     s3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s4:Occupied { symidx: temp_50_arithop_90_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s4,a0,s3
              #                    free a0
              #                    occupy a0 with j_65_3
              #                    store to j_65_3 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with j_65_3
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_50_arithop_90_0
              #                    store to temp_50_arithop_90_0 in mem offset legal
    sw      s4,80(sp)
              #                    release s4 with temp_50_arithop_90_0
              #                     232  (nop) 
              #                     1165 j_65_5 = i32 temp_50_arithop_90_0 
              #                    occupy a0 with temp_50_arithop_90_0
              #                    load from temp_50_arithop_90_0 in mem


    lw      a0,80(sp)
              #                    occupy s3 with j_65_5
    mv      s3, a0
              #                    free a0
              #                    occupy a0 with temp_50_arithop_90_0
              #                    store to temp_50_arithop_90_0 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_50_arithop_90_0
              #                    free s3
              #                    occupy s3 with j_65_5
              #                    store to j_65_5 in mem offset legal
    sw      s3,160(sp)
              #                    release s3 with j_65_5
              #                          jump label: branch_false_89 
    j       .branch_false_89
              #                    regtab     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_47_ptr_of_arr_60_90, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: temp_48_ptr_of_arr_60_90, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     305  label branch_false_89: 
.branch_false_89:
              #                     1166 j_65_2 = i32 j_65_5 
              #                    occupy a0 with j_65_5
              #                    load from j_65_5 in mem


    lw      a0,160(sp)
              #                    occupy a3 with j_65_2
    mv      a3, a0
              #                    free a0
              #                    occupy a0 with j_65_5
              #                    store to j_65_5 in mem offset legal
    sw      a0,160(sp)
              #                    release a0 with j_65_5
              #                    free a3
              #                     1167 i_65_2 = i32 i_65_5 
              #                    occupy a0 with i_65_5
              #                    load from i_65_5 in mem


    lw      a0,180(sp)
              #                    occupy a5 with i_65_2
    mv      a5, a0
              #                    free a0
              #                    occupy a0 with i_65_5
              #                    store to i_65_5 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_65_5
              #                    free a5
              #                          jump label: while.head_73 
              #                    occupy s2 with temp_59_cmp_75_0
              #                    store to temp_59_cmp_75_0 in mem offset legal
    sb      s2,41(sp)
              #                    release s2 with temp_59_cmp_75_0
              #                    occupy s1 with temp_65_cmp_84_0
              #                    store to temp_65_cmp_84_0 in mem offset legal
    sb      s1,18(sp)
              #                    release s1 with temp_65_cmp_84_0
              #                    occupy a4 with temp_47_ptr_of_arr_60_90
              #                    store to temp_47_ptr_of_arr_60_90 in mem offset legal
    sd      a4,96(sp)
              #                    release a4 with temp_47_ptr_of_arr_60_90
              #                    occupy a6 with temp_48_ptr_of_arr_60_90
              #                    store to temp_48_ptr_of_arr_60_90 in mem offset legal
    sd      a6,88(sp)
              #                    release a6 with temp_48_ptr_of_arr_60_90
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,208(sp)
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_65_cmp_84_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1159 label UP_73_0: 
.UP_73_0:
              #                     1168 j_65_5 = i32 j_65_3 
              #                    occupy a6 with j_65_3
              #                    occupy a4 with j_65_5
    mv      a4, a6
              #                    free a6
              #                    occupy a6 with j_65_3
              #                    store to j_65_3 in mem offset legal
    sw      a6,164(sp)
              #                    release a6 with j_65_3
              #                    free a4
              #                          jump label: branch_false_89 
              #                    occupy a4 with j_65_5
              #                    store to j_65_5 in mem offset legal
    sw      a4,160(sp)
              #                    release a4 with j_65_5
              #                    occupy a4 with temp_47_ptr_of_arr_60_90
              #                    load from temp_47_ptr_of_arr_60_90 in mem
    ld      a4,96(sp)
              #                    occupy a6 with temp_48_ptr_of_arr_60_90
              #                    load from temp_48_ptr_of_arr_60_90 in mem
    ld      a6,88(sp)
              #                    occupy a0 with arr_60
              #                    store to arr_60 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_60
    j       .branch_false_89
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a6:Freed { symidx: j_65_3, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |     s2:Freed { symidx: temp_59_cmp_75_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     1158 label UP_84_0: 
.UP_84_0:
              #                     1170 i_65_4 = i32 i_65_2 
              #                    occupy a5 with i_65_2
              #                    occupy s3 with i_65_4
    mv      s3, a5
              #                    free a5
              #                    free s3
              #                          jump label: branch_false_80 
              #                    occupy s3 with i_65_4
              #                    store to i_65_4 in mem offset legal
    sw      s3,184(sp)
              #                    release s3 with i_65_4
              #                    occupy s1 with temp_60_arithop_75_0
              #                    store to temp_60_arithop_75_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_60_arithop_75_0
              #                    occupy a4 with temp_58_cmp_72_0
              #                    store to temp_58_cmp_72_0 in mem offset legal
    sb      a4,42(sp)
              #                    release a4 with temp_58_cmp_72_0
              #                    occupy s5 with i_65_4
              #                    load from i_65_4 in mem


    lw      s5,184(sp)
    j       .branch_false_80
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: j_65_2, tracked: true } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Freed { symidx: i_65_2, tracked: true } |     a7:Freed { symidx: temp_41_ele_of_arr_60_65_0, tracked: true } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     262  label while.exit_73: 
.while.exit_73:
              #                     1257 untrack j_65_2 
              #                    occupy a3 with j_65_2
              #                    release a3 with j_65_2
              #                     204  temp_42_ptr_of_arr_60_65 = GEP arr_60:ptr->i32 [Some(i_65_2)] 
              #                    occupy a3 with temp_42_ptr_of_arr_60_65
    li      a3, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_65_2
    mv      a6, a5
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
              #                    occupy a0 with arr_60
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     205  store temp_41_ele_of_arr_60_65_0:i32 temp_42_ptr_of_arr_60_65:ptr->i32 
              #                    occupy a3 with temp_42_ptr_of_arr_60_65
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
    sw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                     1263 untrack temp_41_ele_of_arr_60_65_0 
              #                    occupy a7 with temp_41_ele_of_arr_60_65_0
              #                    release a7 with temp_41_ele_of_arr_60_65_0
              #                     1261 untrack temp_42_ptr_of_arr_60_65 
              #                    occupy a3 with temp_42_ptr_of_arr_60_65
              #                    release a3 with temp_42_ptr_of_arr_60_65
              #                     206  arr_60 = chi arr_60:205 
              #                     208   
              #                     210  temp_43_arithop_65_0 = Sub i32 i_65_2, 1_0 
              #                    occupy a5 with i_65_2
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a7 with temp_43_arithop_65_0
              #                    regtab:    a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Freed { symidx: temp_58_cmp_72_0, tracked: true } |     a5:Occupied { symidx: i_65_2, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a7:Occupied { symidx: temp_43_arithop_65_0, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: temp_60_arithop_75_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a7,a5,a3
              #                    free a5
              #                    free a3
              #                    free a7
              #                     211  (nop) 
              #                     213  temp_44_ret_of_QuickSort_65_0 =  Call i32 QuickSort_0(arr_60, low_60_0, temp_43_arithop_65_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_60_arithop_75_0
              #                    store to temp_60_arithop_75_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_60_arithop_75_0
              #                    occupy a0 with arr_60
              #                    store to arr_60 in mem offset legal
    sd      a0,208(sp)
              #                    release a0 with arr_60
              #                    occupy a1 with low_60_0
              #                    store to low_60_0 in mem offset legal
    sw      a1,204(sp)
              #                    release a1 with low_60_0
              #                    occupy a2 with high_60_0
              #                    store to high_60_0 in mem offset legal
    sw      a2,200(sp)
              #                    release a2 with high_60_0
              #                    occupy a4 with temp_58_cmp_72_0
              #                    store to temp_58_cmp_72_0 in mem offset legal
    sb      a4,42(sp)
              #                    release a4 with temp_58_cmp_72_0
              #                    occupy a5 with i_65_2
              #                    store to i_65_2 in mem offset legal
    sw      a5,188(sp)
              #                    release a5 with i_65_2
              #                    occupy a7 with temp_43_arithop_65_0
              #                    store to temp_43_arithop_65_0 in mem offset legal
    sw      a7,120(sp)
              #                    release a7 with temp_43_arithop_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_low_60_0_0
              #                    load from low_60_0 in mem


    lw      a1,204(sp)
              #                    occupy a2 with _anonymous_of_temp_43_arithop_65_0_0
              #                    load from temp_43_arithop_65_0 in mem


    lw      a2,120(sp)
              #                    arg load ended


    call    QuickSort
              #                     1260 untrack temp_43_arithop_65_0 
              #                     1259 untrack low_60_0 
              #                     214  (nop) 
              #                     216  temp_45_arithop_65_0 = Add i32 i_65_2, 1_0 
              #                    occupy a1 with i_65_2
              #                    load from i_65_2 in mem


    lw      a1,188(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_45_arithop_65_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1262 untrack i_65_2 
              #                    occupy a1 with i_65_2
              #                    release a1 with i_65_2
              #                     217  (nop) 
              #                     219  temp_46_ret_of_QuickSort_65_0 =  Call i32 QuickSort_0(arr_60, temp_45_arithop_65_0, high_60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_44_ret_of_QuickSort_65_0
              #                    store to temp_44_ret_of_QuickSort_65_0 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_44_ret_of_QuickSort_65_0
              #                    occupy a3 with temp_45_arithop_65_0
              #                    store to temp_45_arithop_65_0 in mem offset legal
    sw      a3,112(sp)
              #                    release a3 with temp_45_arithop_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_arr_60_0
              #                    load from arr_60 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_temp_45_arithop_65_0_0
              #                    load from temp_45_arithop_65_0 in mem


    lw      a1,112(sp)
              #                    occupy a2 with _anonymous_of_high_60_0_0
              #                    load from high_60_0 in mem


    lw      a2,200(sp)
              #                    arg load ended


    call    QuickSort
              #                     1264 untrack temp_45_arithop_65_0 
              #                     1258 untrack high_60_0 
              #                     220  (nop) 
              #                          jump label: branch_false_64 
              #                    occupy a2 with high_60_0
              #                    load from high_60_0 in mem


    lw      a2,200(sp)
              #                    occupy a1 with low_60_0
              #                    load from low_60_0 in mem


    lw      a1,204(sp)
              #                    occupy a0 with temp_46_ret_of_QuickSort_65_0
              #                    store to temp_46_ret_of_QuickSort_65_0 in mem offset legal
    sw      a0,108(sp)
              #                    release a0 with temp_46_ret_of_QuickSort_65_0
              #                    occupy a0 with arr_60
              #                    load from arr_60 in mem
    ld      a0,208(sp)
              #                    occupy a3 with temp_57_cmp_63_0
              #                    load from temp_57_cmp_63_0 in mem


    lb      a3,43(sp)
    j       .branch_false_64
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |     a1:Freed { symidx: low_60_0, tracked: true } |     a2:Freed { symidx: high_60_0, tracked: true } |     a3:Freed { symidx: temp_57_cmp_63_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     254  label branch_false_64: 
.branch_false_64:
              #                     1253 untrack temp_45_arithop_65_0 
              #                     1252 untrack j_65_2 
              #                     1251 untrack j_65_1 
              #                     1250 untrack temp_42_ptr_of_arr_60_65 
              #                     1249 untrack temp_41_ele_of_arr_60_65_0 
              #                     1248 untrack high_60_0 
              #                    occupy a2 with high_60_0
              #                    release a2 with high_60_0
              #                     1247 untrack i_65_2 
              #                     1246 untrack i_65_1 
              #                     1245 untrack temp_57_cmp_63_0 
              #                    occupy a3 with temp_57_cmp_63_0
              #                    release a3 with temp_57_cmp_63_0
              #                     1244 untrack temp_40_ptr_of_arr_60_65 
              #                     1243 untrack temp_43_arithop_65_0 
              #                     1242 untrack low_60_0 
              #                    occupy a1 with low_60_0
              #                    release a1 with low_60_0
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab     a0:Freed { symidx: arr_60, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L14_0: 
.L14_0:
              #                     1022 mu arr_60:188 
              #                     1265 untrack arr_60 
              #                    occupy a0 with arr_60
              #                    release a0 with arr_60
              #                     188  ret 0_0 
              #                    load from ra_QuickSort_0 in mem
    ld      ra,288(sp)
              #                    load from s0_QuickSort_0 in mem
    ld      s0,280(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,296
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define getMid_0 "arr_100," -> getMid_ret_0 
    .globl getMid
    .type getMid,@function
getMid:
              #                    mem layout:|ra_getMid:8 at 96|s0_getMid:8 at 88|arr:8 at 80|arr:8 at 72|mid _s102 _i0:4 at 68|temp_71_arithop _s109 _i0:4 at 64|temp_72_ptr_of_arr_100:8 at 56|temp_73_ele_of_arr_100 _s109 _i0:4 at 52|temp_75_arithop _s106 _i0:4 at 48|temp_76_ptr_of_arr_100:8 at 40|temp_77_ele_of_arr_100 _s106 _i0:4 at 36|temp_78_arithop _s106 _i0:4 at 32|temp_79_ptr_of_arr_100:8 at 24|temp_80_ele_of_arr_100 _s106 _i0:4 at 20|temp_81_arithop _s106 _i0:4 at 16|temp_82_arithop _s106 _i0:4 at 12|temp_83_value_from_ptr _s104 _i0:4 at 8|temp_84_arithop _s104 _i0:4 at 4|temp_85_cmp _s104 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-104
              #                    store to ra_getMid_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_getMid_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     307  alloc i32 [mid_102] 
              #                     309  alloc i32 [temp_70_value_from_ptr_109] 
              #                     312  alloc i32 [temp_71_arithop_109] 
              #                     316  alloc ptr->i32 [temp_72_ptr_of_arr_100_109] 
              #                     318  alloc i32 [temp_73_ele_of_arr_100_109] 
              #                     322  alloc i32 [temp_74_value_from_ptr_106] 
              #                     325  alloc i32 [temp_75_arithop_106] 
              #                     329  alloc ptr->i32 [temp_76_ptr_of_arr_100_106] 
              #                     331  alloc i32 [temp_77_ele_of_arr_100_106] 
              #                     334  alloc i32 [temp_78_arithop_106] 
              #                     336  alloc ptr->i32 [temp_79_ptr_of_arr_100_106] 
              #                     338  alloc i32 [temp_80_ele_of_arr_100_106] 
              #                     341  alloc i32 [temp_81_arithop_106] 
              #                     343  alloc i32 [temp_82_arithop_106] 
              #                     346  alloc i32 [temp_83_value_from_ptr_104] 
              #                     349  alloc i32 [temp_84_arithop_104] 
              #                     351  alloc i1 [temp_85_cmp_104] 
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     23    
              #                     308   
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L12_0: 
.L12_0:
              #                     347  temp_83_value_from_ptr_104_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_83_value_from_ptr_104_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     348  mu n_0_0:347 
              #                     350  temp_84_arithop_104_0 = Mod i32 temp_83_value_from_ptr_104_0, 2_0 
              #                    occupy a2 with temp_83_value_from_ptr_104_0
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy a4 with temp_84_arithop_104_0
    rem     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     352  temp_85_cmp_104_0 = icmp i32 Eq temp_84_arithop_104_0, 0_0 
              #                    occupy a4 with temp_84_arithop_104_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_85_cmp_104_0
    xor     a6,a4,a5
    seqz    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                     1277 untrack temp_84_arithop_104_0 
              #                    occupy a4 with temp_84_arithop_104_0
              #                    release a4 with temp_84_arithop_104_0
              #                     355  br i1 temp_85_cmp_104_0, label branch_true_105, label branch_false_105 
              #                    occupy a6 with temp_85_cmp_104_0
              #                    free a6
              #                    occupy a6 with temp_85_cmp_104_0
    bnez    a6, .branch_true_105
              #                    free a6
    j       .branch_false_105
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |     a2:Freed { symidx: temp_83_value_from_ptr_104_0, tracked: true } |     a6:Freed { symidx: temp_85_cmp_104_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     353  label branch_true_105: 
.branch_true_105:
              #                     1281 untrack temp_72_ptr_of_arr_100_109 
              #                     1280 untrack temp_73_ele_of_arr_100_109_0 
              #                     1279 untrack temp_71_arithop_109_0 
              #                     1278 untrack temp_85_cmp_104_0 
              #                    occupy a6 with temp_85_cmp_104_0
              #                    release a6 with temp_85_cmp_104_0
              #                     323  (nop) 
              #                     324  mu n_0_0:323 
              #                     326  temp_75_arithop_106_0 = Div i32 temp_83_value_from_ptr_104_0, 2_0 
              #                    occupy a2 with temp_83_value_from_ptr_104_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a3 with temp_75_arithop_106_0
    divw    a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     1296 untrack temp_83_value_from_ptr_104_0 
              #                    occupy a2 with temp_83_value_from_ptr_104_0
              #                    release a2 with temp_83_value_from_ptr_104_0
              #                     327  (nop) 
              #                     330  temp_76_ptr_of_arr_100_106 = GEP arr_100:Array:i32:[None] [Some(temp_75_arithop_106_0)] 
              #                    occupy a2 with temp_76_ptr_of_arr_100_106
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_75_arithop_106_0
    mv      a4, a3
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with arr_100
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     332  temp_77_ele_of_arr_100_106_0 = load temp_76_ptr_of_arr_100_106:ptr->i32 
              #                    occupy a2 with temp_76_ptr_of_arr_100_106
              #                    occupy a5 with temp_77_ele_of_arr_100_106_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     1298 untrack temp_76_ptr_of_arr_100_106 
              #                    occupy a2 with temp_76_ptr_of_arr_100_106
              #                    release a2 with temp_76_ptr_of_arr_100_106
              #                     333  mu arr_100:332 
              #                     335  temp_78_arithop_106_0 = Sub i32 temp_75_arithop_106_0, 1_0 
              #                    occupy a3 with temp_75_arithop_106_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a6 with temp_78_arithop_106_0
              #                    regtab:    a0:Freed { symidx: arr_100, tracked: true } |     a1:Freed { symidx: 2_0, tracked: false } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_75_arithop_106_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a5:Freed { symidx: temp_77_ele_of_arr_100_106_0, tracked: true } |     a6:Occupied { symidx: temp_78_arithop_106_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:24


    subw    a6,a3,a2
              #                    free a3
              #                    free a2
              #                    free a6
              #                     1299 untrack temp_75_arithop_106_0 
              #                    occupy a3 with temp_75_arithop_106_0
              #                    release a3 with temp_75_arithop_106_0
              #                     337  temp_79_ptr_of_arr_100_106 = GEP arr_100:Array:i32:[None] [Some(temp_78_arithop_106_0)] 
              #                    occupy a3 with temp_79_ptr_of_arr_100_106
    li      a3, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with temp_78_arithop_106_0
    mv      a7, a6
              #                    free a6
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with arr_100
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     1294 untrack temp_78_arithop_106_0 
              #                    occupy a6 with temp_78_arithop_106_0
              #                    release a6 with temp_78_arithop_106_0
              #                     339  temp_80_ele_of_arr_100_106_0 = load temp_79_ptr_of_arr_100_106:ptr->i32 
              #                    occupy a3 with temp_79_ptr_of_arr_100_106
              #                    occupy a6 with temp_80_ele_of_arr_100_106_0
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                     1291 untrack temp_79_ptr_of_arr_100_106 
              #                    occupy a3 with temp_79_ptr_of_arr_100_106
              #                    release a3 with temp_79_ptr_of_arr_100_106
              #                     340  mu arr_100:339 
              #                     1292 untrack arr_100 
              #                    occupy a0 with arr_100
              #                    release a0 with arr_100
              #                     342  temp_81_arithop_106_0 = Add i32 temp_77_ele_of_arr_100_106_0, temp_80_ele_of_arr_100_106_0 
              #                    occupy a5 with temp_77_ele_of_arr_100_106_0
              #                    occupy a6 with temp_80_ele_of_arr_100_106_0
              #                    occupy a0 with temp_81_arithop_106_0
    ADDW    a0,a5,a6
              #                    free a5
              #                    free a6
              #                    free a0
              #                     1295 untrack temp_80_ele_of_arr_100_106_0 
              #                    occupy a6 with temp_80_ele_of_arr_100_106_0
              #                    release a6 with temp_80_ele_of_arr_100_106_0
              #                     1293 untrack temp_77_ele_of_arr_100_106_0 
              #                    occupy a5 with temp_77_ele_of_arr_100_106_0
              #                    release a5 with temp_77_ele_of_arr_100_106_0
              #                     344  temp_82_arithop_106_0 = Div i32 temp_81_arithop_106_0, 2_0 
              #                    occupy a0 with temp_81_arithop_106_0
              #                    found literal reg Some(a1) already exist with 2_0
              #                    occupy a1 with 2_0
              #                    occupy a3 with temp_82_arithop_106_0
    divw    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     1297 untrack temp_81_arithop_106_0 
              #                    occupy a0 with temp_81_arithop_106_0
              #                    release a0 with temp_81_arithop_106_0
              #                     345  ret temp_82_arithop_106_0 
              #                    load from ra_getMid_0 in mem
    ld      ra,96(sp)
              #                    load from s0_getMid_0 in mem
    ld      s0,88(sp)
              #                    occupy a3 with temp_82_arithop_106_0
              #                    store to temp_82_arithop_106_0 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_82_arithop_106_0
              #                    occupy a0 with temp_82_arithop_106_0
              #                    load from temp_82_arithop_106_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: arr_100, tracked: true } |     a2:Freed { symidx: temp_83_value_from_ptr_104_0, tracked: true } |     a6:Freed { symidx: temp_85_cmp_104_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     354  label branch_false_105: 
.branch_false_105:
              #                     1290 untrack temp_79_ptr_of_arr_100_106 
              #                     1289 untrack temp_76_ptr_of_arr_100_106 
              #                     1288 untrack temp_82_arithop_106_0 
              #                     1287 untrack temp_78_arithop_106_0 
              #                     1286 untrack temp_80_ele_of_arr_100_106_0 
              #                     1285 untrack temp_75_arithop_106_0 
              #                     1284 untrack temp_81_arithop_106_0 
              #                     1283 untrack temp_77_ele_of_arr_100_106_0 
              #                     1282 untrack temp_85_cmp_104_0 
              #                    occupy a6 with temp_85_cmp_104_0
              #                    release a6 with temp_85_cmp_104_0
              #                     310  (nop) 
              #                     311  mu n_0_0:310 
              #                     313  temp_71_arithop_109_0 = Div i32 temp_83_value_from_ptr_104_0, 2_0 
              #                    occupy a2 with temp_83_value_from_ptr_104_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a3 with temp_71_arithop_109_0
    divw    a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                     1303 untrack temp_83_value_from_ptr_104_0 
              #                    occupy a2 with temp_83_value_from_ptr_104_0
              #                    release a2 with temp_83_value_from_ptr_104_0
              #                     314  (nop) 
              #                     317  temp_72_ptr_of_arr_100_109 = GEP arr_100:Array:i32:[None] [Some(temp_71_arithop_109_0)] 
              #                    occupy a2 with temp_72_ptr_of_arr_100_109
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with temp_71_arithop_109_0
    mv      a4, a3
              #                    free a3
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with arr_100
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     1301 untrack temp_71_arithop_109_0 
              #                    occupy a3 with temp_71_arithop_109_0
              #                    release a3 with temp_71_arithop_109_0
              #                     319  temp_73_ele_of_arr_100_109_0 = load temp_72_ptr_of_arr_100_109:ptr->i32 
              #                    occupy a2 with temp_72_ptr_of_arr_100_109
              #                    occupy a3 with temp_73_ele_of_arr_100_109_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     1300 untrack temp_72_ptr_of_arr_100_109 
              #                    occupy a2 with temp_72_ptr_of_arr_100_109
              #                    release a2 with temp_72_ptr_of_arr_100_109
              #                     320  mu arr_100:319 
              #                     1302 untrack arr_100 
              #                    occupy a0 with arr_100
              #                    release a0 with arr_100
              #                     321  ret temp_73_ele_of_arr_100_109_0 
              #                    load from ra_getMid_0 in mem
    ld      ra,96(sp)
              #                    load from s0_getMid_0 in mem
    ld      s0,88(sp)
              #                    occupy a3 with temp_73_ele_of_arr_100_109_0
              #                    store to temp_73_ele_of_arr_100_109_0 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with temp_73_ele_of_arr_100_109_0
              #                    occupy a0 with temp_73_ele_of_arr_100_109_0
              #                    load from temp_73_ele_of_arr_100_109_0 in mem


    lw      a0,52(sp)
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     26   Define getMost_0 "arr_112," -> getMost_ret_0 
    .globl getMost
    .type getMost,@function
getMost:
              #                    mem layout:|ra_getMost:8 at 4160|s0_getMost:8 at 4152|arr:8 at 4144|arr:8 at 4136|count:4000 at 136|i _s114 _i0:4 at 132|i _s114 _i2:4 at 128|i _s114 _i5:4 at 124|max _s114 _i0:4 at 120|max _s114 _i2:4 at 116|max _s114 _i4:4 at 112|number _s114 _i0:4 at 108|number _s114 _i1:4 at 104|number _s114 _i3:4 at 100|num _s129 _i0:4 at 96|temp_86_ptr_of_arr_112:8 at 88|temp_87_ele_of_arr_112 _s129 _i0:4 at 84|none:4 at 80|temp_88_ptr_of_count_114:8 at 72|temp_89_ptr_of_count_114:8 at 64|temp_90_ele_of_count_114 _s129 _i0:4 at 60|temp_91_arithop _s129 _i0:4 at 56|temp_92_arithop _s129 _i0:4 at 52|none:4 at 48|temp_93_ptr_of_count_114:8 at 40|temp_95_ptr_of_count_114:8 at 32|temp_96_arithop _s120 _i0:4 at 28|temp_97_cmp _s118 _i0:1 at 27|none:3 at 24|temp_98_value_from_ptr _s127 _i0:4 at 20|temp_99_cmp _s127 _i0:1 at 19|none:3 at 16|temp_100_ptr_of_count_114:8 at 8|temp_101_ele_of_count_114 _s133 _i0:4 at 4|temp_102_cmp _s133 _i0:1 at 3|none:3 at 0
              #                    occupy a1 with -4168_0
    li      a1, -4168
    li      a1, -4168
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_getMost_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_4160_0_0
    li      a2, 4160
    li      a2, 4160
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_getMost_0 in mem offset_illegal
              #                    occupy a3 with _anonymous_of_4152_0_0
    li      a3, 4152
    li      a3, 4152
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 4168_0
    li      a4, 4168
    li      a4, 4168
    add     s0,a4,sp
              #                    free a4
              #                     360  alloc Array:i32:[Some(1000_0)] [count_114] 
              #                     361  alloc i32 [i_114] 
              #                     365  alloc i32 [max_114] 
              #                     367  alloc i32 [number_114] 
              #                     372  alloc i32 [num_129] 
              #                     374  alloc ptr->i32 [temp_86_ptr_of_arr_112_129] 
              #                     376  alloc i32 [temp_87_ele_of_arr_112_129] 
              #                     380  alloc ptr->i32 [temp_88_ptr_of_count_114_129] 
              #                     382  alloc ptr->i32 [temp_89_ptr_of_count_114_129] 
              #                     384  alloc i32 [temp_90_ele_of_count_114_129] 
              #                     387  alloc i32 [temp_91_arithop_129] 
              #                     391  alloc i32 [temp_92_arithop_129] 
              #                     394  alloc ptr->i32 [temp_93_ptr_of_count_114_135] 
              #                     396  alloc i32 [temp_94_ele_of_count_114_135] 
              #                     401  alloc ptr->i32 [temp_95_ptr_of_count_114_120] 
              #                     405  alloc i32 [temp_96_arithop_120] 
              #                     408  alloc i1 [temp_97_cmp_118] 
              #                     414  alloc i32 [temp_98_value_from_ptr_127] 
              #                     417  alloc i1 [temp_99_cmp_127] 
              #                     425  alloc ptr->i32 [temp_100_ptr_of_count_114_133] 
              #                     427  alloc i32 [temp_101_ele_of_count_114_133] 
              #                     430  alloc i1 [temp_102_cmp_133] 
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     25    
              #                     359   
              #                     362   
              #                     363  (nop) 
              #                     1173 i_114_2 = i32 0_0 
              #                    occupy a1 with i_114_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_119 
    j       .while.head_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     410  label while.head_119: 
.while.head_119:
              #                     409  temp_97_cmp_118_0 = icmp i32 Slt i_114_2, 1000_0 
              #                    occupy a1 with i_114_2
              #                    occupy a2 with 1000_0
    li      a2, 1000
              #                    occupy a3 with temp_97_cmp_118_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     413  br i1 temp_97_cmp_118_0, label while.body_119, label while.exit_119 
              #                    occupy a3 with temp_97_cmp_118_0
              #                    free a3
              #                    occupy a3 with temp_97_cmp_118_0
    bnez    a3, .while.body_119
              #                    free a3
    j       .while.exit_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114_2, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     411  label while.body_119: 
.while.body_119:
              #                     402  temp_95_ptr_of_count_114_120 = GEP count_114_1:Array:i32:[Some(1000_0)] [Some(i_114_2)] 
              #                    occupy a2 with temp_95_ptr_of_count_114_120
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_114_2
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     403  store 0_0:i32 temp_95_ptr_of_count_114_120:ptr->i32 
              #                    occupy a2 with temp_95_ptr_of_count_114_120
              #                    occupy a5 with 0_0
    li      a5, 0
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     404  count_114_2 = chi count_114_1:403 
              #                     406  temp_96_arithop_120_0 = Add i32 i_114_2, 1_0 
              #                    occupy a1 with i_114_2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_96_arithop_120_0
    ADDW    a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                     407  (nop) 
              #                     1174 i_114_2 = i32 temp_96_arithop_120_0 
              #                    occupy a7 with temp_96_arithop_120_0
              #                    occupy a1 with i_114_2
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_119 
              #                    occupy a2 with temp_95_ptr_of_count_114_120
              #                    store to temp_95_ptr_of_count_114_120 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_95_ptr_of_count_114_120
              #                    occupy a3 with temp_97_cmp_118_0
              #                    store to temp_97_cmp_118_0 in mem offset legal
    sb      a3,27(sp)
              #                    release a3 with temp_97_cmp_118_0
              #                    occupy a7 with temp_96_arithop_120_0
              #                    store to temp_96_arithop_120_0 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_96_arithop_120_0
    j       .while.head_119
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: i_114_2, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     412  label while.exit_119: 
.while.exit_119:
              #                     1304 untrack i_114_2 
              #                    occupy a1 with i_114_2
              #                    release a1 with i_114_2
              #                     364  (nop) 
              #                     366   
              #                     368   
              #                     369  (nop) 
              #                     415  temp_98_value_from_ptr_127_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_98_value_from_ptr_127_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     416  mu n_0_0:415 
              #                     1175 number_114_1 = i32 number_114_0 
              #                    occupy a4 with number_114_0
              #                    load from number_114_0 in mem


    lw      a4,108(sp)
              #                    occupy a5 with number_114_1
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                     1305 untrack number_114_0 
              #                    occupy a4 with number_114_0
              #                    release a4 with number_114_0
              #                     1176 max_114_2 = i32 0_0 
              #                    occupy a4 with max_114_2
    li      a4, 0
              #                    free a4
              #                     1177 i_114_5 = i32 0_0 
              #                    occupy a6 with i_114_5
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_128 
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_2, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a6:Freed { symidx: i_114_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     419  label while.head_128: 
.while.head_128:
              #                     418  temp_99_cmp_127_0 = icmp i32 Slt i_114_5, temp_98_value_from_ptr_127_0 
              #                    occupy a6 with i_114_5
              #                    occupy a2 with temp_98_value_from_ptr_127_0
              #                    occupy a1 with temp_99_cmp_127_0
    slt     a1,a6,a2
              #                    free a6
              #                    free a2
              #                    free a1
              #                     422  br i1 temp_99_cmp_127_0, label while.body_128, label while.exit_128 
              #                    occupy a1 with temp_99_cmp_127_0
              #                    free a1
              #                    occupy a1 with temp_99_cmp_127_0
    bnez    a1, .while.body_128
              #                    free a1
    j       .while.exit_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: temp_99_cmp_127_0, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_2, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a6:Freed { symidx: i_114_5, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     420  label while.body_128: 
.while.body_128:
              #                     373   
              #                     375  temp_86_ptr_of_arr_112_129 = GEP arr_112:Array:i32:[None] [Some(i_114_5)] 
              #                    occupy a7 with temp_86_ptr_of_arr_112_129
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a6 with i_114_5
    mv      s1, a6
              #                    free a6
              #                    occupy a6 with i_114_5
              #                    store to i_114_5 in mem offset legal
    sw      a6,124(sp)
              #                    release a6 with i_114_5
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with arr_112
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     377  temp_87_ele_of_arr_112_129_0 = load temp_86_ptr_of_arr_112_129:ptr->i32 
              #                    occupy a7 with temp_86_ptr_of_arr_112_129
              #                    occupy a6 with temp_87_ele_of_arr_112_129_0
    lw      a6,0(a7)
              #                    free a6
              #                    occupy a6 with temp_87_ele_of_arr_112_129_0
              #                    store to temp_87_ele_of_arr_112_129_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_87_ele_of_arr_112_129_0
              #                    free a7
              #                     378  mu arr_112:377 
              #                     379  (nop) 
              #                     381  temp_88_ptr_of_count_114_129 = GEP count_114_3:Array:i32:[Some(1000_0)] [Some(temp_87_ele_of_arr_112_129_0)] 
              #                    occupy a6 with temp_88_ptr_of_count_114_129
    li      a6, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_87_ele_of_arr_112_129_0
              #                    load from temp_87_ele_of_arr_112_129_0 in mem


    lw      s3,84(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_87_ele_of_arr_112_129_0
              #                    store to temp_87_ele_of_arr_112_129_0 in mem offset legal
    sw      s3,84(sp)
              #                    release s3 with temp_87_ele_of_arr_112_129_0
    add     a6,a6,s2
              #                    free s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,136
              #                    free a6
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    store to temp_88_ptr_of_count_114_129 in mem offset legal
    sd      a6,72(sp)
              #                    release a6 with temp_88_ptr_of_count_114_129
              #                     383  (nop) 
              #                     385  temp_90_ele_of_count_114_129_0 = load temp_88_ptr_of_count_114_129:ptr->i32 
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    load from temp_88_ptr_of_count_114_129 in mem
    ld      a6,72(sp)
              #                    occupy s2 with temp_90_ele_of_count_114_129_0
    lw      s2,0(a6)
              #                    free s2
              #                    occupy s2 with temp_90_ele_of_count_114_129_0
              #                    store to temp_90_ele_of_count_114_129_0 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with temp_90_ele_of_count_114_129_0
              #                    free a6
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    store to temp_88_ptr_of_count_114_129 in mem offset legal
    sd      a6,72(sp)
              #                    release a6 with temp_88_ptr_of_count_114_129
              #                     386  mu count_114_3:385 
              #                     388  temp_91_arithop_129_0 = Add i32 temp_90_ele_of_count_114_129_0, 1_0 
              #                    occupy a6 with temp_90_ele_of_count_114_129_0
              #                    load from temp_90_ele_of_count_114_129_0 in mem


    lw      a6,60(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_91_arithop_129_0
    ADDW    s3,a6,s2
              #                    free a6
              #                    occupy a6 with temp_90_ele_of_count_114_129_0
              #                    store to temp_90_ele_of_count_114_129_0 in mem offset legal
    sw      a6,60(sp)
              #                    release a6 with temp_90_ele_of_count_114_129_0
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_91_arithop_129_0
              #                    store to temp_91_arithop_129_0 in mem offset legal
    sw      s3,56(sp)
              #                    release s3 with temp_91_arithop_129_0
              #                     389  store temp_91_arithop_129_0:i32 temp_88_ptr_of_count_114_129:ptr->i32 
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    load from temp_88_ptr_of_count_114_129 in mem
    ld      a6,72(sp)
              #                    occupy s2 with temp_91_arithop_129_0
              #                    load from temp_91_arithop_129_0 in mem


    lw      s2,56(sp)
    sw      s2,0(a6)
              #                    free s2
              #                    occupy s2 with temp_91_arithop_129_0
              #                    store to temp_91_arithop_129_0 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with temp_91_arithop_129_0
              #                    free a6
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    store to temp_88_ptr_of_count_114_129 in mem offset legal
    sd      a6,72(sp)
              #                    release a6 with temp_88_ptr_of_count_114_129
              #                     390  count_114_4 = chi count_114_3:389 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: temp_99_cmp_127_0, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_2, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a7:Freed { symidx: temp_86_ptr_of_arr_112_129, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     426  (nop) 
              #                     428  temp_101_ele_of_count_114_133_0 = load temp_88_ptr_of_count_114_129:ptr->i32 
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    load from temp_88_ptr_of_count_114_129 in mem
    ld      a6,72(sp)
              #                    occupy s1 with temp_101_ele_of_count_114_133_0
    lw      s1,0(a6)
              #                    free s1
              #                    occupy s1 with temp_101_ele_of_count_114_133_0
              #                    store to temp_101_ele_of_count_114_133_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_101_ele_of_count_114_133_0
              #                    free a6
              #                    occupy a6 with temp_88_ptr_of_count_114_129
              #                    store to temp_88_ptr_of_count_114_129 in mem offset legal
    sd      a6,72(sp)
              #                    release a6 with temp_88_ptr_of_count_114_129
              #                     429  mu count_114_4:428 
              #                     431  temp_102_cmp_133_0 = icmp i32 Sgt temp_101_ele_of_count_114_133_0, max_114_2 
              #                    occupy a6 with temp_101_ele_of_count_114_133_0
              #                    load from temp_101_ele_of_count_114_133_0 in mem


    lw      a6,4(sp)
              #                    occupy a4 with max_114_2
              #                    occupy s1 with temp_102_cmp_133_0
    slt     s1,a4,a6
              #                    free a6
              #                    occupy a6 with temp_101_ele_of_count_114_133_0
              #                    store to temp_101_ele_of_count_114_133_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_101_ele_of_count_114_133_0
              #                    free a4
              #                    occupy a4 with max_114_2
              #                    store to max_114_2 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with max_114_2
              #                    free s1
              #                     434  br i1 temp_102_cmp_133_0, label branch_true_134, label UP_67_0 
              #                    occupy s1 with temp_102_cmp_133_0
              #                    free s1
              #                    occupy s1 with temp_102_cmp_133_0
    bnez    s1, .branch_true_134
              #                    free s1
    j       .UP_67_0
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: temp_99_cmp_127_0, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a7:Freed { symidx: temp_86_ptr_of_arr_112_129, tracked: true } |     s1:Freed { symidx: temp_102_cmp_133_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     432  label branch_true_134: 
.branch_true_134:
              #                     1315 untrack temp_99_cmp_127_0 
              #                    occupy a1 with temp_99_cmp_127_0
              #                    release a1 with temp_99_cmp_127_0
              #                     1314 untrack temp_90_ele_of_count_114_129_0 
              #                     1313 untrack temp_88_ptr_of_count_114_129 
              #                     1312 untrack temp_91_arithop_129_0 
              #                     1311 untrack temp_102_cmp_133_0 
              #                    occupy s1 with temp_102_cmp_133_0
              #                    release s1 with temp_102_cmp_133_0
              #                     1310 untrack temp_86_ptr_of_arr_112_129 
              #                    occupy a7 with temp_86_ptr_of_arr_112_129
              #                    release a7 with temp_86_ptr_of_arr_112_129
              #                     395  (nop) 
              #                     397  (nop) 
              #                     398  mu count_114_4:397 
              #                     399  (nop) 
              #                     400  (nop) 
              #                     1178 max_114_4 = i32 temp_101_ele_of_count_114_133_0 
              #                    occupy a1 with temp_101_ele_of_count_114_133_0
              #                    load from temp_101_ele_of_count_114_133_0 in mem


    lw      a1,4(sp)
              #                    occupy a4 with max_114_4
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                     1317 untrack temp_101_ele_of_count_114_133_0 
              #                    occupy a1 with temp_101_ele_of_count_114_133_0
              #                    release a1 with temp_101_ele_of_count_114_133_0
              #                     1179 number_114_3 = i32 temp_87_ele_of_arr_112_129_0 
              #                    occupy a1 with temp_87_ele_of_arr_112_129_0
              #                    load from temp_87_ele_of_arr_112_129_0 in mem


    lw      a1,84(sp)
              #                    occupy a6 with number_114_3
    mv      a6, a1
              #                    free a1
              #                    free a6
              #                     1316 untrack temp_87_ele_of_arr_112_129_0 
              #                    occupy a1 with temp_87_ele_of_arr_112_129_0
              #                    release a1 with temp_87_ele_of_arr_112_129_0
              #                          jump label: branch_false_134 
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_4, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a6:Freed { symidx: number_114_3, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     433  label branch_false_134: 
.branch_false_134:
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_4, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a6:Freed { symidx: number_114_3, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     392  temp_92_arithop_129_0 = Add i32 i_114_5, 1_0 
              #                    occupy a1 with i_114_5
              #                    load from i_114_5 in mem


    lw      a1,124(sp)
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_92_arithop_129_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    occupy a1 with i_114_5
              #                    store to i_114_5 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with i_114_5
              #                    free a7
              #                    free s1
              #                     393  (nop) 
              #                     1180 max_114_2 = i32 max_114_4 
              #                    occupy a4 with max_114_4
              #                    occupy a1 with max_114_2
    mv      a1, a4
              #                    free a4
              #                    occupy a4 with max_114_4
              #                    store to max_114_4 in mem offset legal
    sw      a4,112(sp)
              #                    release a4 with max_114_4
              #                    free a1
              #                     1181 i_114_5 = i32 temp_92_arithop_129_0 
              #                    occupy s1 with temp_92_arithop_129_0
              #                    occupy a4 with i_114_5
    mv      a4, s1
              #                    free s1
              #                    occupy s1 with temp_92_arithop_129_0
              #                    store to temp_92_arithop_129_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_92_arithop_129_0
              #                    free a4
              #                     1182 number_114_1 = i32 number_114_3 
              #                    occupy a6 with number_114_3
              #                    occupy a5 with number_114_1
    mv      a5, a6
              #                    free a6
              #                    free a5
              #                          jump label: while.head_128 
              #                    occupy a6 with number_114_3
              #                    store to number_114_3 in mem offset legal
    sw      a6,100(sp)
              #                    release a6 with number_114_3
              #                    occupy a4 with i_114_5
              #                    store to i_114_5 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with i_114_5
              #                    occupy a6 with i_114_5
              #                    load from i_114_5 in mem


    lw      a6,124(sp)
              #                    occupy a1 with max_114_2
              #                    store to max_114_2 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with max_114_2
              #                    occupy a4 with max_114_2
              #                    load from max_114_2 in mem


    lw      a4,116(sp)
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: temp_99_cmp_127_0, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a7:Freed { symidx: temp_86_ptr_of_arr_112_129, tracked: true } |     s1:Freed { symidx: temp_102_cmp_133_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     1172 label UP_67_0: 
.UP_67_0:
              #                     1183 max_114_4 = i32 max_114_2 
              #                    occupy a4 with max_114_2
              #                    load from max_114_2 in mem


    lw      a4,116(sp)
              #                    occupy a6 with max_114_4
    mv      a6, a4
              #                    free a4
              #                    occupy a4 with max_114_2
              #                    store to max_114_2 in mem offset legal
    sw      a4,116(sp)
              #                    release a4 with max_114_2
              #                    free a6
              #                    occupy a6 with max_114_4
              #                    store to max_114_4 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with max_114_4
              #                     1184 number_114_3 = i32 number_114_1 
              #                    occupy a5 with number_114_1
              #                    occupy a4 with number_114_3
    mv      a4, a5
              #                    free a5
              #                    occupy a5 with number_114_1
              #                    store to number_114_1 in mem offset legal
    sw      a5,104(sp)
              #                    release a5 with number_114_1
              #                    free a4
              #                          jump label: branch_false_134 
              #                    occupy a4 with number_114_3
              #                    store to number_114_3 in mem offset legal
    sw      a4,100(sp)
              #                    release a4 with number_114_3
              #                    occupy a6 with number_114_3
              #                    load from number_114_3 in mem


    lw      a6,100(sp)
              #                    occupy a1 with temp_99_cmp_127_0
              #                    store to temp_99_cmp_127_0 in mem offset legal
    sb      a1,19(sp)
              #                    release a1 with temp_99_cmp_127_0
              #                    occupy s1 with temp_102_cmp_133_0
              #                    store to temp_102_cmp_133_0 in mem offset legal
    sb      s1,3(sp)
              #                    release s1 with temp_102_cmp_133_0
              #                    occupy a5 with number_114_1
              #                    load from number_114_1 in mem


    lw      a5,104(sp)
              #                    occupy a4 with max_114_4
              #                    load from max_114_4 in mem


    lw      a4,112(sp)
              #                    occupy a7 with temp_86_ptr_of_arr_112_129
              #                    store to temp_86_ptr_of_arr_112_129 in mem offset legal
    sd      a7,88(sp)
              #                    release a7 with temp_86_ptr_of_arr_112_129
    j       .branch_false_134
              #                    regtab     a0:Freed { symidx: arr_112, tracked: true } |     a1:Freed { symidx: temp_99_cmp_127_0, tracked: true } |     a2:Freed { symidx: temp_98_value_from_ptr_127_0, tracked: true } |     a3:Freed { symidx: temp_97_cmp_118_0, tracked: true } |     a4:Freed { symidx: max_114_2, tracked: true } |     a5:Freed { symidx: number_114_1, tracked: true } |     a6:Freed { symidx: i_114_5, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     421  label while.exit_128: 
.while.exit_128:
              #                     1309 untrack max_114_2 
              #                    occupy a4 with max_114_2
              #                    release a4 with max_114_2
              #                     1308 untrack arr_112 
              #                    occupy a0 with arr_112
              #                    release a0 with arr_112
              #                     1307 untrack temp_98_value_from_ptr_127_0 
              #                    occupy a2 with temp_98_value_from_ptr_127_0
              #                    release a2 with temp_98_value_from_ptr_127_0
              #                     1306 untrack i_114_5 
              #                    occupy a6 with i_114_5
              #                    release a6 with i_114_5
              #                     371  ret number_114_1 
              #                    load from ra_getMost_0 in mem
              #                    occupy a0 with _anonymous_of_4160_0_0
    li      a0, 4160
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_getMost_0 in mem
              #                    occupy a2 with _anonymous_of_4152_0_0
    li      a2, 4152
    add     a2,sp,a2
    ld      s0,0(a2)
              #                    free a2
              #                    occupy a5 with number_114_1
              #                    store to number_114_1 in mem offset legal
    sw      a5,104(sp)
              #                    release a5 with number_114_1
              #                    occupy a0 with number_114_1
              #                    load from number_114_1 in mem


    lw      a0,104(sp)
              #                    occupy a4 with 4168_0
    li      a4, 4168
    li      a4, 4168
    add     sp,a4,sp
              #                    free a4
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     28   Define revert_0 "arr_140," -> revert_ret_0 
    .globl revert
    .type revert,@function
revert:
              #                    mem layout:|ra_revert:8 at 136|s0_revert:8 at 128|arr:8 at 120|arr:8 at 112|arr:8 at 104|arr:8 at 96|arr:8 at 88|temp _s142 _i0:4 at 84|temp _s142 _i1:4 at 80|i _s142 _i0:4 at 76|i _s142 _i2:4 at 72|j _s142 _i0:4 at 68|j _s142 _i2:4 at 64|temp_103_ptr_of_arr_140:8 at 56|temp_104_ele_of_arr_140 _s150 _i0:4 at 52|none:4 at 48|temp_105_ptr_of_arr_140:8 at 40|temp_106_ptr_of_arr_140:8 at 32|temp_107_ele_of_arr_140 _s150 _i0:4 at 28|none:4 at 24|temp_108_ptr_of_arr_140:8 at 16|temp_109_arithop _s150 _i0:4 at 12|temp_110_arithop _s150 _i0:4 at 8|temp_111_cmp _s148 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-144
              #                    store to ra_revert_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_revert_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                     435  alloc i32 [temp_142] 
              #                     437  alloc i32 [i_142] 
              #                     439  alloc i32 [j_142] 
              #                     445  alloc ptr->i32 [temp_103_ptr_of_arr_140_150] 
              #                     447  alloc i32 [temp_104_ele_of_arr_140_150] 
              #                     451  alloc ptr->i32 [temp_105_ptr_of_arr_140_150] 
              #                     453  alloc ptr->i32 [temp_106_ptr_of_arr_140_150] 
              #                     455  alloc i32 [temp_107_ele_of_arr_140_150] 
              #                     460  alloc ptr->i32 [temp_108_ptr_of_arr_140_150] 
              #                     464  alloc i32 [temp_109_arithop_150] 
              #                     467  alloc i32 [temp_110_arithop_150] 
              #                     470  alloc i1 [temp_111_cmp_148] 
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     27    
              #                     436   
              #                     438   
              #                     440   
              #                     441  (nop) 
              #                     442  (nop) 
              #                     1185 i_142_2 = i32 0_0 
              #                    occupy a1 with i_142_2
    li      a1, 0
              #                    free a1
              #                     1186 j_142_2 = i32 0_0 
              #                    occupy a2 with j_142_2
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_149 
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142_2, tracked: true } |     a2:Freed { symidx: j_142_2, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     472  label while.head_149: 
.while.head_149:
              #                     471  temp_111_cmp_148_0 = icmp i32 Slt i_142_2, j_142_2 
              #                    occupy a1 with i_142_2
              #                    occupy a2 with j_142_2
              #                    occupy a3 with temp_111_cmp_148_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     475  br i1 temp_111_cmp_148_0, label while.body_149, label while.exit_149 
              #                    occupy a3 with temp_111_cmp_148_0
              #                    free a3
              #                    occupy a3 with temp_111_cmp_148_0
    bnez    a3, .while.body_149
              #                    free a3
    j       .while.exit_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142_2, tracked: true } |     a2:Freed { symidx: j_142_2, tracked: true } |     a3:Freed { symidx: temp_111_cmp_148_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     473  label while.body_149: 
.while.body_149:
              #                     446  temp_103_ptr_of_arr_140_150 = GEP arr_140:Array:i32:[None] [Some(i_142_2)] 
              #                    occupy a4 with temp_103_ptr_of_arr_140_150
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_142_2
    mv      a5, a1
              #                    free a1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a0 with arr_140
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     448  temp_104_ele_of_arr_140_150_0 = load temp_103_ptr_of_arr_140_150:ptr->i32 
              #                    occupy a4 with temp_103_ptr_of_arr_140_150
              #                    occupy a6 with temp_104_ele_of_arr_140_150_0
    lw      a6,0(a4)
              #                    free a6
              #                    free a4
              #                     449  mu arr_140:448 
              #                     450  (nop) 
              #                     452  (nop) 
              #                     454  temp_106_ptr_of_arr_140_150 = GEP arr_140:Array:i32:[None] [Some(j_142_2)] 
              #                    occupy a7 with temp_106_ptr_of_arr_140_150
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_142_2
    mv      s1, a2
              #                    free a2
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with arr_140
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     456  temp_107_ele_of_arr_140_150_0 = load temp_106_ptr_of_arr_140_150:ptr->i32 
              #                    occupy a7 with temp_106_ptr_of_arr_140_150
              #                    occupy s2 with temp_107_ele_of_arr_140_150_0
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     457  mu arr_140:456 
              #                     458  store temp_107_ele_of_arr_140_150_0:i32 temp_103_ptr_of_arr_140_150:ptr->i32 
              #                    occupy a4 with temp_103_ptr_of_arr_140_150
              #                    occupy s2 with temp_107_ele_of_arr_140_150_0
    sw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                     459  arr_140 = chi arr_140:458 
              #                     461  temp_108_ptr_of_arr_140_150 = GEP arr_140:ptr->i32 [Some(j_142_2)] 
              #                    occupy s3 with temp_108_ptr_of_arr_140_150
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with j_142_2
    mv      s4, a2
              #                    free a2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_140
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     462  store temp_104_ele_of_arr_140_150_0:i32 temp_108_ptr_of_arr_140_150:ptr->i32 
              #                    occupy s3 with temp_108_ptr_of_arr_140_150
              #                    occupy a6 with temp_104_ele_of_arr_140_150_0
    sw      a6,0(s3)
              #                    free a6
              #                    free s3
              #                     463  arr_140 = chi arr_140:462 
              #                     465  temp_109_arithop_150_0 = Add i32 i_142_2, 1_0 
              #                    occupy a1 with i_142_2
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_109_arithop_150_0
    ADDW    s6,a1,s5
              #                    free a1
              #                    free s5
              #                    free s6
              #                     466  (nop) 
              #                     468  temp_110_arithop_150_0 = Sub i32 j_142_2, 1_0 
              #                    occupy a2 with j_142_2
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s7 with temp_110_arithop_150_0
              #                    regtab:    a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142_2, tracked: true } |     a2:Occupied { symidx: j_142_2, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_111_cmp_148_0, tracked: true } |     a4:Freed { symidx: temp_103_ptr_of_arr_140_150, tracked: true } |     a5:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     a6:Freed { symidx: temp_104_ele_of_arr_140_150_0, tracked: true } |     a7:Freed { symidx: temp_106_ptr_of_arr_140_150, tracked: true } |     s1:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s2:Freed { symidx: temp_107_ele_of_arr_140_150_0, tracked: true } |     s3:Freed { symidx: temp_108_ptr_of_arr_140_150, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s5:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s6:Freed { symidx: temp_109_arithop_150_0, tracked: true } |     s7:Occupied { symidx: temp_110_arithop_150_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s7,a2,s5
              #                    free a2
              #                    occupy a2 with j_142_2
              #                    store to j_142_2 in mem offset legal
    sw      a2,64(sp)
              #                    release a2 with j_142_2
              #                    free s5
              #                    free s7
              #                     469  (nop) 
              #                     1187 j_142_2 = i32 temp_110_arithop_150_0 
              #                    occupy s7 with temp_110_arithop_150_0
              #                    occupy a2 with j_142_2
    mv      a2, s7
              #                    free s7
              #                    occupy s7 with temp_110_arithop_150_0
              #                    store to temp_110_arithop_150_0 in mem offset legal
    sw      s7,8(sp)
              #                    release s7 with temp_110_arithop_150_0
              #                    free a2
              #                     1188 i_142_2 = i32 temp_109_arithop_150_0 
              #                    occupy s6 with temp_109_arithop_150_0
              #                    occupy a1 with i_142_2
    mv      a1, s6
              #                    free s6
              #                    free a1
              #                          jump label: while.head_149 
              #                    occupy a6 with temp_104_ele_of_arr_140_150_0
              #                    store to temp_104_ele_of_arr_140_150_0 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with temp_104_ele_of_arr_140_150_0
              #                    occupy s2 with temp_107_ele_of_arr_140_150_0
              #                    store to temp_107_ele_of_arr_140_150_0 in mem offset legal
    sw      s2,28(sp)
              #                    release s2 with temp_107_ele_of_arr_140_150_0
              #                    occupy a3 with temp_111_cmp_148_0
              #                    store to temp_111_cmp_148_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_111_cmp_148_0
              #                    occupy s3 with temp_108_ptr_of_arr_140_150
              #                    store to temp_108_ptr_of_arr_140_150 in mem offset legal
    sd      s3,16(sp)
              #                    release s3 with temp_108_ptr_of_arr_140_150
              #                    occupy s6 with temp_109_arithop_150_0
              #                    store to temp_109_arithop_150_0 in mem offset legal
    sw      s6,12(sp)
              #                    release s6 with temp_109_arithop_150_0
              #                    occupy a4 with temp_103_ptr_of_arr_140_150
              #                    store to temp_103_ptr_of_arr_140_150 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_103_ptr_of_arr_140_150
              #                    occupy a7 with temp_106_ptr_of_arr_140_150
              #                    store to temp_106_ptr_of_arr_140_150 in mem offset legal
    sd      a7,32(sp)
              #                    release a7 with temp_106_ptr_of_arr_140_150
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: arr_140, tracked: true } |     a1:Freed { symidx: i_142_2, tracked: true } |     a2:Freed { symidx: j_142_2, tracked: true } |     a3:Freed { symidx: temp_111_cmp_148_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     474  label while.exit_149: 
.while.exit_149:
              #                     1319 untrack j_142_2 
              #                    occupy a2 with j_142_2
              #                    release a2 with j_142_2
              #                     1318 untrack i_142_2 
              #                    occupy a1 with i_142_2
              #                    release a1 with i_142_2
              #                     1023 mu arr_140:444 
              #                     1320 untrack arr_140 
              #                    occupy a0 with arr_140
              #                    release a0 with arr_140
              #                     444  ret 0_0 
              #                    load from ra_revert_0 in mem
    ld      ra,136(sp)
              #                    load from s0_revert_0 in mem
    ld      s0,128(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define arrCopy_0 "src_157,target_157," -> arrCopy_ret_0 
    .globl arrCopy
    .type arrCopy,@function
arrCopy:
              #                    mem layout:|ra_arrCopy:8 at 96|s0_arrCopy:8 at 88|src:8 at 80|src:8 at 72|target:8 at 64|target:8 at 56|target:8 at 48|target:8 at 40|i _s159 _i0:4 at 36|i _s159 _i2:4 at 32|temp_112_ptr_of_target_157:8 at 24|temp_113_ptr_of_src_157:8 at 16|temp_114_ele_of_src_157 _s164 _i0:4 at 12|temp_115_arithop _s164 _i0:4 at 8|temp_116_value_from_ptr _s162 _i0:4 at 4|temp_117_cmp _s162 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-104
              #                    store to ra_arrCopy_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_arrCopy_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     478  alloc i32 [i_159] 
              #                     483  alloc ptr->i32 [temp_112_ptr_of_target_157_164] 
              #                     485  alloc ptr->i32 [temp_113_ptr_of_src_157_164] 
              #                     487  alloc i32 [temp_114_ele_of_src_157_164] 
              #                     492  alloc i32 [temp_115_arithop_164] 
              #                     495  alloc i32 [temp_116_value_from_ptr_162] 
              #                     498  alloc i1 [temp_117_cmp_162] 
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     29    
              #                     30    
              #                     479   
              #                     480  (nop) 
              #                     496  temp_116_value_from_ptr_162_0 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_116_value_from_ptr_162_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     497  mu n_0_0:496 
              #                     1189 i_159_2 = i32 0_0 
              #                    occupy a4 with i_159_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_163 
    j       .while.head_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a3:Freed { symidx: temp_116_value_from_ptr_162_0, tracked: true } |     a4:Freed { symidx: i_159_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     500  label while.head_163: 
.while.head_163:
              #                     499  temp_117_cmp_162_0 = icmp i32 Slt i_159_2, temp_116_value_from_ptr_162_0 
              #                    occupy a4 with i_159_2
              #                    occupy a3 with temp_116_value_from_ptr_162_0
              #                    occupy a2 with temp_117_cmp_162_0
    slt     a2,a4,a3
              #                    free a4
              #                    free a3
              #                    free a2
              #                     503  br i1 temp_117_cmp_162_0, label while.body_163, label while.exit_163 
              #                    occupy a2 with temp_117_cmp_162_0
              #                    free a2
              #                    occupy a2 with temp_117_cmp_162_0
    bnez    a2, .while.body_163
              #                    free a2
    j       .while.exit_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: temp_117_cmp_162_0, tracked: true } |     a3:Freed { symidx: temp_116_value_from_ptr_162_0, tracked: true } |     a4:Freed { symidx: i_159_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     501  label while.body_163: 
.while.body_163:
              #                     484  temp_112_ptr_of_target_157_164 = GEP target_157:ptr->i32 [Some(i_159_2)] 
              #                    occupy a5 with temp_112_ptr_of_target_157_164
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_159_2
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a1 with target_157
    add     a5,a5,a1
              #                    free a1
              #                    free a5
              #                     486  temp_113_ptr_of_src_157_164 = GEP src_157:Array:i32:[None] [Some(i_159_2)] 
              #                    occupy a7 with temp_113_ptr_of_src_157_164
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_159_2
    mv      s1, a4
              #                    free a4
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a0 with src_157
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                     488  temp_114_ele_of_src_157_164_0 = load temp_113_ptr_of_src_157_164:ptr->i32 
              #                    occupy a7 with temp_113_ptr_of_src_157_164
              #                    occupy s2 with temp_114_ele_of_src_157_164_0
    lw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                     489  mu src_157:488 
              #                     490  store temp_114_ele_of_src_157_164_0:i32 temp_112_ptr_of_target_157_164:ptr->i32 
              #                    occupy a5 with temp_112_ptr_of_target_157_164
              #                    occupy s2 with temp_114_ele_of_src_157_164_0
    sw      s2,0(a5)
              #                    free s2
              #                    free a5
              #                     491  target_157 = chi target_157:490 
              #                     493  temp_115_arithop_164_0 = Add i32 i_159_2, 1_0 
              #                    occupy a4 with i_159_2
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_115_arithop_164_0
    ADDW    s4,a4,s3
              #                    free a4
              #                    free s3
              #                    free s4
              #                     494  (nop) 
              #                     1190 i_159_2 = i32 temp_115_arithop_164_0 
              #                    occupy s4 with temp_115_arithop_164_0
              #                    occupy a4 with i_159_2
    mv      a4, s4
              #                    free s4
              #                    free a4
              #                          jump label: while.head_163 
              #                    occupy a7 with temp_113_ptr_of_src_157_164
              #                    store to temp_113_ptr_of_src_157_164 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_113_ptr_of_src_157_164
              #                    occupy a5 with temp_112_ptr_of_target_157_164
              #                    store to temp_112_ptr_of_target_157_164 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_112_ptr_of_target_157_164
              #                    occupy a2 with temp_117_cmp_162_0
              #                    store to temp_117_cmp_162_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_117_cmp_162_0
              #                    occupy s2 with temp_114_ele_of_src_157_164_0
              #                    store to temp_114_ele_of_src_157_164_0 in mem offset legal
    sw      s2,12(sp)
              #                    release s2 with temp_114_ele_of_src_157_164_0
              #                    occupy s4 with temp_115_arithop_164_0
              #                    store to temp_115_arithop_164_0 in mem offset legal
    sw      s4,8(sp)
              #                    release s4 with temp_115_arithop_164_0
    j       .while.head_163
              #                    regtab     a0:Freed { symidx: src_157, tracked: true } |     a1:Freed { symidx: target_157, tracked: true } |     a2:Freed { symidx: temp_117_cmp_162_0, tracked: true } |     a3:Freed { symidx: temp_116_value_from_ptr_162_0, tracked: true } |     a4:Freed { symidx: i_159_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     502  label while.exit_163: 
.while.exit_163:
              #                     1323 untrack i_159_2 
              #                    occupy a4 with i_159_2
              #                    release a4 with i_159_2
              #                     1322 untrack src_157 
              #                    occupy a0 with src_157
              #                    release a0 with src_157
              #                     1321 untrack temp_116_value_from_ptr_162_0 
              #                    occupy a3 with temp_116_value_from_ptr_162_0
              #                    release a3 with temp_116_value_from_ptr_162_0
              #                     1024 mu target_157:482 
              #                     1324 untrack target_157 
              #                    occupy a1 with target_157
              #                    release a1 with target_157
              #                     482  ret 0_0 
              #                    load from ra_arrCopy_0 in mem
    ld      ra,96(sp)
              #                    load from s0_arrCopy_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define calSum_0 "arr_168,stride_168_0," -> calSum_ret_0 
    .globl calSum
    .type calSum,@function
calSum:
              #                    mem layout:|ra_calSum:8 at 144|s0_calSum:8 at 136|arr:8 at 128|arr:8 at 120|arr:8 at 112|arr:8 at 104|arr _s168 _i4:8 at 96|arr:8 at 88|stride _s168 _i0:4 at 84|sum _s170 _i0:4 at 80|sum _s170 _i2:4 at 76|sum _s170 _i4:4 at 72|i _s170 _i0:4 at 68|i _s170 _i2:4 at 64|temp_118_ptr_of_arr_168:8 at 56|temp_119_ele_of_arr_168 _s177 _i0:4 at 52|temp_120_arithop _s177 _i0:4 at 48|temp_121_ptr_of_arr_168:8 at 40|temp_122_arithop _s177 _i0:4 at 36|none:4 at 32|temp_123_ptr_of_arr_168:8 at 24|temp_124_value_from_ptr _s175 _i0:4 at 20|temp_125_cmp _s175 _i0:1 at 19|none:3 at 16|temp_126_arithop _s179 _i0:4 at 12|temp_127_arithop _s179 _i0:4 at 8|temp_128_cmp _s179 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-152
              #                    store to ra_calSum_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_calSum_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                     506  alloc i32 [sum_170] 
              #                     509  alloc i32 [i_170] 
              #                     514  alloc ptr->i32 [temp_118_ptr_of_arr_168_177] 
              #                     516  alloc i32 [temp_119_ele_of_arr_168_177] 
              #                     519  alloc i32 [temp_120_arithop_177] 
              #                     522  alloc ptr->i32 [temp_121_ptr_of_arr_168_183] 
              #                     527  alloc i32 [temp_122_arithop_177] 
              #                     530  alloc ptr->i32 [temp_123_ptr_of_arr_168_181] 
              #                     534  alloc i32 [temp_124_value_from_ptr_175] 
              #                     537  alloc i1 [temp_125_cmp_175] 
              #                     545  alloc i32 [temp_126_arithop_179] 
              #                     547  alloc i32 [temp_127_arithop_179] 
              #                     549  alloc i1 [temp_128_cmp_179] 
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     32    
              #                     507   
              #                     508  (nop) 
              #                     510   
              #                     511  (nop) 
              #                     535  temp_124_value_from_ptr_175_0 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_124_value_from_ptr_175_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     536  mu n_0_0:535 
              #                     546  temp_126_arithop_179_0 = Sub i32 stride_168_0, 1_0 
              #                    occupy a1 with stride_168_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_126_arithop_179_0
              #                    regtab:    a0:Freed { symidx: arr_168, tracked: true } |     a1:Occupied { symidx: stride_168_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: *n_0, tracked: false } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_126_arithop_179_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     1191 sum_170_2 = i32 0_0 
              #                    occupy a6 with sum_170_2
    li      a6, 0
              #                    free a6
              #                     1192 i_170_2 = i32 0_0 
              #                    occupy a7 with i_170_2
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_176 
    j       .while.head_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     539  label while.head_176: 
.while.head_176:
              #                     538  temp_125_cmp_175_0 = icmp i32 Slt i_170_2, temp_124_value_from_ptr_175_0 
              #                    occupy a7 with i_170_2
              #                    occupy a3 with temp_124_value_from_ptr_175_0
              #                    occupy a2 with temp_125_cmp_175_0
    slt     a2,a7,a3
              #                    free a7
              #                    free a3
              #                    free a2
              #                     542  br i1 temp_125_cmp_175_0, label while.body_176, label while.exit_176 
              #                    occupy a2 with temp_125_cmp_175_0
              #                    free a2
              #                    occupy a2 with temp_125_cmp_175_0
    bnez    a2, .while.body_176
              #                    free a2
    j       .while.exit_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a2:Freed { symidx: temp_125_cmp_175_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     540  label while.body_176: 
.while.body_176:
              #                     515  temp_118_ptr_of_arr_168_177 = GEP arr_168:Array:i32:[None] [Some(i_170_2)] 
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
    li      a4, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with i_170_2
    mv      s1, a7
              #                    free a7
    add     a4,a4,s1
              #                    free s1
    slli a4,a4,2
              #                    occupy a0 with arr_168
    add     a4,a4,a0
              #                    free a0
              #                    free a4
              #                     517  temp_119_ele_of_arr_168_177_0 = load temp_118_ptr_of_arr_168_177:ptr->i32 
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
              #                    occupy s2 with temp_119_ele_of_arr_168_177_0
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                     518  mu arr_168:517 
              #                     520  temp_120_arithop_177_0 = Add i32 sum_170_2, temp_119_ele_of_arr_168_177_0 
              #                    occupy a6 with sum_170_2
              #                    occupy s2 with temp_119_ele_of_arr_168_177_0
              #                    occupy s3 with temp_120_arithop_177_0
    ADDW    s3,a6,s2
              #                    free a6
              #                    free s2
              #                    free s3
              #                     521  (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a2:Freed { symidx: temp_125_cmp_175_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Freed { symidx: temp_118_ptr_of_arr_168_177, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |     s2:Freed { symidx: temp_119_ele_of_arr_168_177_0, tracked: true } |     s3:Freed { symidx: temp_120_arithop_177_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     548  temp_127_arithop_179_0 = Mod i32 i_170_2, stride_168_0 
              #                    occupy a7 with i_170_2
              #                    occupy a1 with stride_168_0
              #                    occupy s1 with temp_127_arithop_179_0
    rem     s1,a7,a1
              #                    free a7
              #                    free a1
              #                    free s1
              #                     550  temp_128_cmp_179_0 = icmp i32 Ne temp_127_arithop_179_0, temp_126_arithop_179_0 
              #                    occupy s1 with temp_127_arithop_179_0
              #                    occupy a5 with temp_126_arithop_179_0
              #                    occupy s4 with temp_128_cmp_179_0
    xor     s4,s1,a5
    snez    s4, s4
              #                    free s1
              #                    occupy s1 with temp_127_arithop_179_0
              #                    store to temp_127_arithop_179_0 in mem offset legal
    sw      s1,8(sp)
              #                    release s1 with temp_127_arithop_179_0
              #                    free a5
              #                    free s4
              #                     553  br i1 temp_128_cmp_179_0, label branch_true_180, label branch_false_180 
              #                    occupy s4 with temp_128_cmp_179_0
              #                    free s4
              #                    occupy s4 with temp_128_cmp_179_0
    bnez    s4, .branch_true_180
              #                    free s4
    j       .branch_false_180
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a2:Freed { symidx: temp_125_cmp_175_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Freed { symidx: temp_118_ptr_of_arr_168_177, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |     s2:Freed { symidx: temp_119_ele_of_arr_168_177_0, tracked: true } |     s3:Freed { symidx: temp_120_arithop_177_0, tracked: true } |     s4:Freed { symidx: temp_128_cmp_179_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     551  label branch_true_180: 
.branch_true_180:
              #                     1333 untrack temp_128_cmp_179_0 
              #                    occupy s4 with temp_128_cmp_179_0
              #                    release s4 with temp_128_cmp_179_0
              #                     1332 untrack temp_127_arithop_179_0 
              #                     1331 untrack temp_119_ele_of_arr_168_177_0 
              #                    occupy s2 with temp_119_ele_of_arr_168_177_0
              #                    release s2 with temp_119_ele_of_arr_168_177_0
              #                     1330 untrack temp_125_cmp_175_0 
              #                    occupy a2 with temp_125_cmp_175_0
              #                    release a2 with temp_125_cmp_175_0
              #                     531  (nop) 
              #                     532  store 0_0:i32 temp_118_ptr_of_arr_168_177:ptr->i32 
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
              #                    occupy a2 with 0_0
    li      a2, 0
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                     1334 untrack temp_118_ptr_of_arr_168_177 
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
              #                    release a4 with temp_118_ptr_of_arr_168_177
              #                     533  arr_168 = chi arr_168:532 
              #                     1193 sum_170_4 = i32 temp_120_arithop_177_0 
              #                    occupy s3 with temp_120_arithop_177_0
              #                    occupy a4 with sum_170_4
    mv      a4, s3
              #                    free s3
              #                    free a4
              #                     1335 untrack temp_120_arithop_177_0 
              #                    occupy s3 with temp_120_arithop_177_0
              #                    release s3 with temp_120_arithop_177_0
              #                          jump label: gather_79 
    j       .gather_79
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Freed { symidx: sum_170_4, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     554  label gather_79: 
.gather_79:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Freed { symidx: sum_170_4, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     528  temp_122_arithop_177_0 = Add i32 i_170_2, 1_0 
              #                    occupy a7 with i_170_2
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s1 with temp_122_arithop_177_0
    ADDW    s1,a7,a2
              #                    free a7
              #                    free a2
              #                    free s1
              #                     529  (nop) 
              #                     1194 i_170_2 = i32 temp_122_arithop_177_0 
              #                    occupy s1 with temp_122_arithop_177_0
              #                    occupy a7 with i_170_2
    mv      a7, s1
              #                    free s1
              #                    free a7
              #                     1195 sum_170_2 = i32 sum_170_4 
              #                    occupy a4 with sum_170_4
              #                    occupy a6 with sum_170_2
    mv      a6, a4
              #                    free a4
              #                    free a6
              #                          jump label: while.head_176 
              #                    occupy s1 with temp_122_arithop_177_0
              #                    store to temp_122_arithop_177_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_122_arithop_177_0
              #                    occupy a4 with sum_170_4
              #                    store to sum_170_4 in mem offset legal
    sw      a4,72(sp)
              #                    release a4 with sum_170_4
    j       .while.head_176
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a2:Freed { symidx: temp_125_cmp_175_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a4:Freed { symidx: temp_118_ptr_of_arr_168_177, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |     s2:Freed { symidx: temp_119_ele_of_arr_168_177_0, tracked: true } |     s3:Freed { symidx: temp_120_arithop_177_0, tracked: true } |     s4:Freed { symidx: temp_128_cmp_179_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     552  label branch_false_180: 
.branch_false_180:
              #                     523  (nop) 
              #                     524  store temp_120_arithop_177_0:i32 temp_118_ptr_of_arr_168_177:ptr->i32 
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
              #                    occupy s3 with temp_120_arithop_177_0
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                     525  arr_168 = chi arr_168:524 
              #                     526  (nop) 
              #                     1196 sum_170_4 = i32 0_0 
              #                    occupy s1 with sum_170_4
    li      s1, 0
              #                    free s1
              #                    occupy s1 with sum_170_4
              #                    store to sum_170_4 in mem offset legal
    sw      s1,72(sp)
              #                    release s1 with sum_170_4
              #                          jump label: gather_79 
              #                    occupy s4 with temp_128_cmp_179_0
              #                    store to temp_128_cmp_179_0 in mem offset legal
    sb      s4,7(sp)
              #                    release s4 with temp_128_cmp_179_0
              #                    occupy s3 with temp_120_arithop_177_0
              #                    store to temp_120_arithop_177_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_120_arithop_177_0
              #                    occupy a2 with temp_125_cmp_175_0
              #                    store to temp_125_cmp_175_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_125_cmp_175_0
              #                    occupy a4 with temp_118_ptr_of_arr_168_177
              #                    store to temp_118_ptr_of_arr_168_177 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_118_ptr_of_arr_168_177
              #                    occupy a4 with sum_170_4
              #                    load from sum_170_4 in mem


    lw      a4,72(sp)
              #                    occupy s2 with temp_119_ele_of_arr_168_177_0
              #                    store to temp_119_ele_of_arr_168_177_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_119_ele_of_arr_168_177_0
    j       .gather_79
              #                    regtab     a0:Freed { symidx: arr_168, tracked: true } |     a1:Freed { symidx: stride_168_0, tracked: true } |     a2:Freed { symidx: temp_125_cmp_175_0, tracked: true } |     a3:Freed { symidx: temp_124_value_from_ptr_175_0, tracked: true } |     a5:Freed { symidx: temp_126_arithop_179_0, tracked: true } |     a6:Freed { symidx: sum_170_2, tracked: true } |     a7:Freed { symidx: i_170_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     541  label while.exit_176: 
.while.exit_176:
              #                     1329 untrack temp_124_value_from_ptr_175_0 
              #                    occupy a3 with temp_124_value_from_ptr_175_0
              #                    release a3 with temp_124_value_from_ptr_175_0
              #                     1328 untrack temp_126_arithop_179_0 
              #                    occupy a5 with temp_126_arithop_179_0
              #                    release a5 with temp_126_arithop_179_0
              #                     1327 untrack sum_170_2 
              #                    occupy a6 with sum_170_2
              #                    release a6 with sum_170_2
              #                     1326 untrack stride_168_0 
              #                    occupy a1 with stride_168_0
              #                    release a1 with stride_168_0
              #                     1325 untrack i_170_2 
              #                    occupy a7 with i_170_2
              #                    release a7 with i_170_2
              #                     1025 mu arr_168:513 
              #                     1336 untrack arr_168 
              #                    occupy a0 with arr_168
              #                    release a0 with arr_168
              #                     513  ret 0_0 
              #                    load from ra_calSum_0 in mem
    ld      ra,144(sp)
              #                    load from s0_calSum_0 in mem
    ld      s0,136(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,152
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     35   Define avgPooling_0 "arr_188,stride_188_0," -> avgPooling_ret_0 
    .globl avgPooling
    .type avgPooling,@function
avgPooling:
              #                    mem layout:|ra_avgPooling:8 at 280|s0_avgPooling:8 at 272|arr:8 at 264|arr:8 at 256|arr:8 at 248|arr _s188 _i3:8 at 240|arr:8 at 232|arr _s188 _i5:8 at 224|arr:8 at 216|arr:8 at 208|arr:8 at 200|stride _s188 _i0:4 at 196|sum _s190 _i0:4 at 192|sum _s190 _i2:4 at 188|sum _s190 _i4:4 at 184|sum _s190 _i5:4 at 180|i _s190 _i0:4 at 176|i _s190 _i2:4 at 172|i _s190 _i5:4 at 168|lastnum _s190 _i0:4 at 164|lastnum _s190 _i1:4 at 160|lastnum _s190 _i2:4 at 156|lastnum _s190 _i4:4 at 152|temp_130_arithop _s190 _i0:4 at 148|temp_131_arithop _s190 _i0:4 at 144|temp_132_ptr_of_arr_188:8 at 136|temp_133_arithop _s216 _i0:4 at 132|none:4 at 128|temp_134_ptr_of_arr_188:8 at 120|temp_135_ele_of_arr_188 _s208 _i0:4 at 116|temp_136_arithop _s208 _i0:4 at 112|temp_137_arithop _s208 _i0:4 at 108|temp_138_arithop _s208 _i0:4 at 104|temp_139_arithop _s208 _i0:4 at 100|none:4 at 96|temp_140_ptr_of_arr_188:8 at 88|temp_141_ele_of_arr_188 _s208 _i0:4 at 84|none:4 at 80|temp_144_ptr_of_arr_188:8 at 72|temp_145_arithop _s208 _i0:4 at 68|temp_146_arithop _s198 _i0:4 at 64|temp_147_ptr_of_arr_188:8 at 56|temp_148_ele_of_arr_188 _s205 _i0:4 at 52|none:4 at 48|temp_149_ptr_of_arr_188:8 at 40|temp_150_arithop _s205 _i0:4 at 36|none:4 at 32|temp_151_ptr_of_arr_188:8 at 24|temp_152_ele_of_arr_188 _s201 _i0:4 at 20|temp_153_arithop _s201 _i0:4 at 16|temp_154_value_from_ptr _s196 _i0:4 at 12|temp_155_cmp _s196 _i0:1 at 11|temp_157_cmp _s214 _i0:1 at 10|none:2 at 8|temp_158_arithop _s199 _i0:4 at 4|temp_159_cmp _s199 _i0:1 at 3|temp_161_cmp _s203 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-288
              #                    store to ra_avgPooling_0 in mem offset legal
    sd      ra,280(sp)
              #                    store to s0_avgPooling_0 in mem offset legal
    sd      s0,272(sp)
    addi    s0,sp,288
              #                     555  alloc i32 [sum_190] 
              #                     557  alloc i32 [i_190] 
              #                     561  alloc i32 [lastnum_190] 
              #                     563  alloc i32 [temp_129_value_from_ptr_190] 
              #                     566  alloc i32 [temp_130_arithop_190] 
              #                     568  alloc i32 [temp_131_arithop_190] 
              #                     573  alloc ptr->i32 [temp_132_ptr_of_arr_188_216] 
              #                     577  alloc i32 [temp_133_arithop_216] 
              #                     580  alloc ptr->i32 [temp_134_ptr_of_arr_188_208] 
              #                     582  alloc i32 [temp_135_ele_of_arr_188_208] 
              #                     585  alloc i32 [temp_136_arithop_208] 
              #                     587  alloc i32 [temp_137_arithop_208] 
              #                     590  alloc i32 [temp_138_arithop_208] 
              #                     592  alloc i32 [temp_139_arithop_208] 
              #                     594  alloc ptr->i32 [temp_140_ptr_of_arr_188_208] 
              #                     596  alloc i32 [temp_141_ele_of_arr_188_208] 
              #                     600  alloc i32 [temp_142_arithop_208] 
              #                     602  alloc i32 [temp_143_arithop_208] 
              #                     604  alloc ptr->i32 [temp_144_ptr_of_arr_188_208] 
              #                     606  alloc i32 [temp_145_arithop_208] 
              #                     610  alloc i32 [temp_146_arithop_198] 
              #                     613  alloc ptr->i32 [temp_147_ptr_of_arr_188_205] 
              #                     615  alloc i32 [temp_148_ele_of_arr_188_205] 
              #                     619  alloc ptr->i32 [temp_149_ptr_of_arr_188_205] 
              #                     621  alloc i32 [temp_150_arithop_205] 
              #                     625  alloc ptr->i32 [temp_151_ptr_of_arr_188_201] 
              #                     627  alloc i32 [temp_152_ele_of_arr_188_201] 
              #                     630  alloc i32 [temp_153_arithop_201] 
              #                     633  alloc i32 [temp_154_value_from_ptr_196] 
              #                     636  alloc i1 [temp_155_cmp_196] 
              #                     642  alloc i32 [temp_156_value_from_ptr_214] 
              #                     645  alloc i1 [temp_157_cmp_214] 
              #                     653  alloc i32 [temp_158_arithop_199] 
              #                     655  alloc i1 [temp_159_cmp_199] 
              #                     660  alloc i32 [temp_160_arithop_203] 
              #                     662  alloc i1 [temp_161_cmp_203] 
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     34    
              #                     556   
              #                     558   
              #                     559  (nop) 
              #                     560  (nop) 
              #                     562   
              #                     634  temp_154_value_from_ptr_196_0 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_154_value_from_ptr_196_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     635  mu n_0_0:634 
              #                     654  temp_158_arithop_199_0 = Sub i32 stride_188_0, 1_0 
              #                    occupy a1 with stride_188_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_158_arithop_199_0
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: *n_0, tracked: false } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_158_arithop_199_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     661  (nop) 
              #                     1197 lastnum_190_1 = i32 lastnum_190_0 
              #                    occupy a6 with lastnum_190_0
              #                    load from lastnum_190_0 in mem


    lw      a6,164(sp)
              #                    occupy a7 with lastnum_190_1
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                     1337 untrack lastnum_190_0 
              #                    occupy a6 with lastnum_190_0
              #                    release a6 with lastnum_190_0
              #                     1198 sum_190_2 = i32 0_0 
              #                    occupy a6 with sum_190_2
    li      a6, 0
              #                    free a6
              #                     1199 i_190_2 = i32 0_0 
              #                    occupy s1 with i_190_2
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_197 
    j       .while.head_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     638  label while.head_197: 
.while.head_197:
              #                     637  temp_155_cmp_196_0 = icmp i32 Slt i_190_2, temp_154_value_from_ptr_196_0 
              #                    occupy s1 with i_190_2
              #                    occupy a3 with temp_154_value_from_ptr_196_0
              #                    occupy a2 with temp_155_cmp_196_0
    slt     a2,s1,a3
              #                    free s1
              #                    free a3
              #                    free a2
              #                     641  br i1 temp_155_cmp_196_0, label while.body_197, label while.exit_197 
              #                    occupy a2 with temp_155_cmp_196_0
              #                    free a2
              #                    occupy a2 with temp_155_cmp_196_0
    bnez    a2, .while.body_197
              #                    free a2
    j       .while.exit_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     639  label while.body_197: 
.while.body_197:
              #                     656  temp_159_cmp_199_0 = icmp i32 Slt i_190_2, temp_158_arithop_199_0 
              #                    occupy s1 with i_190_2
              #                    occupy a5 with temp_158_arithop_199_0
              #                    occupy a4 with temp_159_cmp_199_0
    slt     a4,s1,a5
              #                    free s1
              #                    free a5
              #                    free a4
              #                     659  br i1 temp_159_cmp_199_0, label branch_true_200, label branch_false_200 
              #                    occupy a4 with temp_159_cmp_199_0
              #                    free a4
              #                    occupy a4 with temp_159_cmp_199_0
    bnez    a4, .branch_true_200
              #                    free a4
    j       .branch_false_200
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     657  label branch_true_200: 
.branch_true_200:
              #                     1361 untrack temp_140_ptr_of_arr_188_208 
              #                     1360 untrack temp_161_cmp_203_0 
              #                     1359 untrack temp_147_ptr_of_arr_188_205 
              #                     1358 untrack sum_190_5 
              #                     1357 untrack temp_148_ele_of_arr_188_205_0 
              #                     1356 untrack temp_159_cmp_199_0 
              #                    occupy a4 with temp_159_cmp_199_0
              #                    release a4 with temp_159_cmp_199_0
              #                     1355 untrack temp_135_ele_of_arr_188_208_0 
              #                     1354 untrack temp_150_arithop_205_0 
              #                     1353 untrack temp_133_arithop_216_0 
              #                     1352 untrack temp_137_arithop_208_0 
              #                     1351 untrack temp_145_arithop_208_0 
              #                     1350 untrack temp_141_ele_of_arr_188_208_0 
              #                     1349 untrack temp_155_cmp_196_0 
              #                    occupy a2 with temp_155_cmp_196_0
              #                    release a2 with temp_155_cmp_196_0
              #                     1348 untrack temp_136_arithop_208_0 
              #                     1347 untrack temp_139_arithop_208_0 
              #                     1346 untrack lastnum_190_4 
              #                     1345 untrack temp_138_arithop_208_0 
              #                     1344 untrack temp_134_ptr_of_arr_188_208 
              #                     1343 untrack temp_132_ptr_of_arr_188_216 
              #                     1342 untrack temp_157_cmp_214_0 
              #                     626  temp_151_ptr_of_arr_188_201 = GEP arr_188:Array:i32:[None] [Some(i_190_2)] 
              #                    occupy a2 with temp_151_ptr_of_arr_188_201
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_190_2
    mv      a4, s1
              #                    free s1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with arr_188
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     628  temp_152_ele_of_arr_188_201_0 = load temp_151_ptr_of_arr_188_201:ptr->i32 
              #                    occupy a2 with temp_151_ptr_of_arr_188_201
              #                    occupy s2 with temp_152_ele_of_arr_188_201_0
    lw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                     1364 untrack temp_151_ptr_of_arr_188_201 
              #                    occupy a2 with temp_151_ptr_of_arr_188_201
              #                    release a2 with temp_151_ptr_of_arr_188_201
              #                     629  mu arr_188:628 
              #                     631  temp_153_arithop_201_0 = Add i32 sum_190_2, temp_152_ele_of_arr_188_201_0 
              #                    occupy a6 with sum_190_2
              #                    occupy s2 with temp_152_ele_of_arr_188_201_0
              #                    occupy a2 with temp_153_arithop_201_0
    ADDW    a2,a6,s2
              #                    free a6
              #                    free s2
              #                    free a2
              #                     1362 untrack temp_152_ele_of_arr_188_201_0 
              #                    occupy s2 with temp_152_ele_of_arr_188_201_0
              #                    release s2 with temp_152_ele_of_arr_188_201_0
              #                     632  (nop) 
              #                     1200 sum_190_4 = i32 temp_153_arithop_201_0 
              #                    occupy a2 with temp_153_arithop_201_0
              #                    occupy s2 with sum_190_4
    mv      s2, a2
              #                    free a2
              #                    free s2
              #                     1363 untrack temp_153_arithop_201_0 
              #                    occupy a2 with temp_153_arithop_201_0
              #                    release a2 with temp_153_arithop_201_0
              #                     1201 lastnum_190_2 = i32 lastnum_190_1 
              #                    occupy a7 with lastnum_190_1
              #                    occupy a2 with lastnum_190_2
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: gather_92 
    j       .gather_92
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: lastnum_190_2, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |     s2:Freed { symidx: sum_190_4, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     668  label gather_92: 
.gather_92:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: lastnum_190_2, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |     s2:Freed { symidx: sum_190_4, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     611  temp_146_arithop_198_0 = Add i32 i_190_2, 1_0 
              #                    occupy s1 with i_190_2
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s3 with temp_146_arithop_198_0
    ADDW    s3,s1,a4
              #                    free s1
              #                    free a4
              #                    free s3
              #                     612  (nop) 
              #                     1202 lastnum_190_1 = i32 lastnum_190_2 
              #                    occupy a2 with lastnum_190_2
              #                    occupy a7 with lastnum_190_1
    mv      a7, a2
              #                    free a2
              #                    free a7
              #                     1203 sum_190_2 = i32 sum_190_4 
              #                    occupy s2 with sum_190_4
              #                    occupy a6 with sum_190_2
    mv      a6, s2
              #                    free s2
              #                    free a6
              #                     1204 i_190_2 = i32 temp_146_arithop_198_0 
              #                    occupy s3 with temp_146_arithop_198_0
              #                    occupy s1 with i_190_2
    mv      s1, s3
              #                    free s3
              #                    free s1
              #                          jump label: while.head_197 
              #                    occupy s2 with sum_190_4
              #                    store to sum_190_4 in mem offset legal
    sw      s2,184(sp)
              #                    release s2 with sum_190_4
              #                    occupy a2 with lastnum_190_2
              #                    store to lastnum_190_2 in mem offset legal
    sw      a2,156(sp)
              #                    release a2 with lastnum_190_2
              #                    occupy s3 with temp_146_arithop_198_0
              #                    store to temp_146_arithop_198_0 in mem offset legal
    sw      s3,64(sp)
              #                    release s3 with temp_146_arithop_198_0
    j       .while.head_197
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     658  label branch_false_200: 
.branch_false_200:
              #                     663  temp_161_cmp_203_0 = icmp i32 Eq i_190_2, temp_158_arithop_199_0 
              #                    occupy s1 with i_190_2
              #                    occupy a5 with temp_158_arithop_199_0
              #                    occupy s2 with temp_161_cmp_203_0
    xor     s2,s1,a5
    seqz    s2, s2
              #                    free s1
              #                    free a5
              #                    free s2
              #                     666  br i1 temp_161_cmp_203_0, label branch_true_204, label branch_false_204 
              #                    occupy s2 with temp_161_cmp_203_0
              #                    free s2
              #                    occupy s2 with temp_161_cmp_203_0
    bnez    s2, .branch_true_204
              #                    free s2
    j       .branch_false_204
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |     s2:Freed { symidx: temp_161_cmp_203_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     664  label branch_true_204: 
.branch_true_204:
              #                     1382 untrack temp_133_arithop_216_0 
              #                     1381 untrack temp_155_cmp_196_0 
              #                    occupy a2 with temp_155_cmp_196_0
              #                    release a2 with temp_155_cmp_196_0
              #                     1380 untrack temp_153_arithop_201_0 
              #                     1379 untrack temp_140_ptr_of_arr_188_208 
              #                     1378 untrack temp_134_ptr_of_arr_188_208 
              #                     1377 untrack temp_157_cmp_214_0 
              #                     1376 untrack temp_138_arithop_208_0 
              #                     1375 untrack temp_151_ptr_of_arr_188_201 
              #                     1374 untrack temp_137_arithop_208_0 
              #                     1373 untrack temp_135_ele_of_arr_188_208_0 
              #                     1372 untrack temp_161_cmp_203_0 
              #                    occupy s2 with temp_161_cmp_203_0
              #                    release s2 with temp_161_cmp_203_0
              #                     1371 untrack temp_159_cmp_199_0 
              #                    occupy a4 with temp_159_cmp_199_0
              #                    release a4 with temp_159_cmp_199_0
              #                     1370 untrack temp_136_arithop_208_0 
              #                     1369 untrack temp_145_arithop_208_0 
              #                     1368 untrack temp_132_ptr_of_arr_188_216 
              #                     1367 untrack temp_152_ele_of_arr_188_201_0 
              #                     1366 untrack temp_139_arithop_208_0 
              #                     1365 untrack temp_141_ele_of_arr_188_208_0 
              #                     614  temp_147_ptr_of_arr_188_205 = GEP arr_188:Array:i32:[None] [Some(0_0)] 
              #                    occupy a2 with temp_147_ptr_of_arr_188_205
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 0
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with arr_188
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     616  temp_148_ele_of_arr_188_205_0 = load temp_147_ptr_of_arr_188_205:ptr->i32 
              #                    occupy a2 with temp_147_ptr_of_arr_188_205
              #                    occupy s2 with temp_148_ele_of_arr_188_205_0
    lw      s2,0(a2)
              #                    free s2
              #                    free a2
              #                     617  mu arr_188:616 
              #                     618  (nop) 
              #                     620  (nop) 
              #                     622  temp_150_arithop_205_0 = Div i32 sum_190_2, stride_188_0 
              #                    occupy a6 with sum_190_2
              #                    occupy a1 with stride_188_0
              #                    occupy s3 with temp_150_arithop_205_0
    divw    s3,a6,a1
              #                    free a6
              #                    free a1
              #                    free s3
              #                     623  store temp_150_arithop_205_0:i32 temp_147_ptr_of_arr_188_205:ptr->i32 
              #                    occupy a2 with temp_147_ptr_of_arr_188_205
              #                    occupy s3 with temp_150_arithop_205_0
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     1385 untrack temp_150_arithop_205_0 
              #                    occupy s3 with temp_150_arithop_205_0
              #                    release s3 with temp_150_arithop_205_0
              #                     1384 untrack temp_147_ptr_of_arr_188_205 
              #                    occupy a2 with temp_147_ptr_of_arr_188_205
              #                    release a2 with temp_147_ptr_of_arr_188_205
              #                     624  arr_188 = chi arr_188:623 
              #                     1205 sum_190_5 = i32 sum_190_2 
              #                    occupy a6 with sum_190_2
              #                    occupy a2 with sum_190_5
    mv      a2, a6
              #                    free a6
              #                    free a2
              #                     1206 lastnum_190_4 = i32 temp_148_ele_of_arr_188_205_0 
              #                    occupy s2 with temp_148_ele_of_arr_188_205_0
              #                    occupy s3 with lastnum_190_4
    mv      s3, s2
              #                    free s2
              #                    free s3
              #                     1383 untrack temp_148_ele_of_arr_188_205_0 
              #                    occupy s2 with temp_148_ele_of_arr_188_205_0
              #                    release s2 with temp_148_ele_of_arr_188_205_0
              #                          jump label: gather_90 
    j       .gather_90
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: sum_190_5, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |     s3:Freed { symidx: lastnum_190_4, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     667  label gather_90: 
.gather_90:
              #                     1207 sum_190_4 = i32 sum_190_5 
              #                    occupy a2 with sum_190_5
              #                    occupy a4 with sum_190_4
    mv      a4, a2
              #                    free a2
              #                    free a4
              #                     1208 lastnum_190_2 = i32 lastnum_190_4 
              #                    occupy s3 with lastnum_190_4
              #                    occupy s2 with lastnum_190_2
    mv      s2, s3
              #                    free s3
              #                    free s2
              #                          jump label: gather_92 
              #                    occupy s2 with lastnum_190_2
              #                    store to lastnum_190_2 in mem offset legal
    sw      s2,156(sp)
              #                    release s2 with lastnum_190_2
              #                    occupy a4 with sum_190_4
              #                    store to sum_190_4 in mem offset legal
    sw      a4,184(sp)
              #                    release a4 with sum_190_4
              #                    occupy s2 with sum_190_4
              #                    load from sum_190_4 in mem


    lw      s2,184(sp)
              #                    occupy a2 with sum_190_5
              #                    store to sum_190_5 in mem offset legal
    sw      a2,180(sp)
              #                    release a2 with sum_190_5
              #                    occupy a2 with lastnum_190_2
              #                    load from lastnum_190_2 in mem


    lw      a2,156(sp)
              #                    occupy s3 with lastnum_190_4
              #                    store to lastnum_190_4 in mem offset legal
    sw      s3,152(sp)
              #                    release s3 with lastnum_190_4
    j       .gather_92
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |     s2:Freed { symidx: temp_161_cmp_203_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     665  label branch_false_204: 
.branch_false_204:
              #                     581  temp_134_ptr_of_arr_188_208 = GEP arr_188:Array:i32:[None] [Some(i_190_2)] 
              #                    occupy s3 with temp_134_ptr_of_arr_188_208
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_190_2
    mv      s4, s1
              #                    free s1
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with arr_188
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     583  temp_135_ele_of_arr_188_208_0 = load temp_134_ptr_of_arr_188_208:ptr->i32 
              #                    occupy s3 with temp_134_ptr_of_arr_188_208
              #                    occupy s5 with temp_135_ele_of_arr_188_208_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_135_ele_of_arr_188_208_0
              #                    store to temp_135_ele_of_arr_188_208_0 in mem offset legal
    sw      s5,116(sp)
              #                    release s5 with temp_135_ele_of_arr_188_208_0
              #                    free s3
              #                     584  mu arr_188:583 
              #                     586  temp_136_arithop_208_0 = Add i32 sum_190_2, temp_135_ele_of_arr_188_208_0 
              #                    occupy a6 with sum_190_2
              #                    occupy s5 with temp_135_ele_of_arr_188_208_0
              #                    load from temp_135_ele_of_arr_188_208_0 in mem


    lw      s5,116(sp)
              #                    occupy s6 with temp_136_arithop_208_0
    ADDW    s6,a6,s5
              #                    free a6
              #                    occupy a6 with sum_190_2
              #                    store to sum_190_2 in mem offset legal
    sw      a6,188(sp)
              #                    release a6 with sum_190_2
              #                    free s5
              #                    occupy s5 with temp_135_ele_of_arr_188_208_0
              #                    store to temp_135_ele_of_arr_188_208_0 in mem offset legal
    sw      s5,116(sp)
              #                    release s5 with temp_135_ele_of_arr_188_208_0
              #                    free s6
              #                     588  temp_137_arithop_208_0 = Sub i32 temp_136_arithop_208_0, lastnum_190_1 
              #                    occupy s6 with temp_136_arithop_208_0
              #                    occupy a7 with lastnum_190_1
              #                    occupy a6 with temp_137_arithop_208_0
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Occupied { symidx: temp_137_arithop_208_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: lastnum_190_1, tracked: true, occupy_count: 1 } |     s1:Freed { symidx: i_190_2, tracked: true } |     s2:Freed { symidx: temp_161_cmp_203_0, tracked: true } |     s3:Freed { symidx: temp_134_ptr_of_arr_188_208, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s6:Occupied { symidx: temp_136_arithop_208_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    a6,s6,a7
              #                    free s6
              #                    occupy s6 with temp_136_arithop_208_0
              #                    store to temp_136_arithop_208_0 in mem offset legal
    sw      s6,112(sp)
              #                    release s6 with temp_136_arithop_208_0
              #                    free a7
              #                    free a6
              #                     589  (nop) 
              #                     591  temp_138_arithop_208_0 = Sub i32 i_190_2, stride_188_0 
              #                    occupy s1 with i_190_2
              #                    occupy a1 with stride_188_0
              #                    occupy s5 with temp_138_arithop_208_0
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: temp_159_cmp_199_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: temp_137_arithop_208_0, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Occupied { symidx: i_190_2, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: temp_161_cmp_203_0, tracked: true } |     s3:Freed { symidx: temp_134_ptr_of_arr_188_208, tracked: true } |     s4:Freed { symidx: _anonymous_of_temp_idx_mul_weight_reg_0_0, tracked: false } |     s5:Occupied { symidx: temp_138_arithop_208_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s5,s1,a1
              #                    free s1
              #                    occupy s1 with i_190_2
              #                    store to i_190_2 in mem offset legal
    sw      s1,172(sp)
              #                    release s1 with i_190_2
              #                    free a1
              #                    free s5
              #                     593  temp_139_arithop_208_0 = Add i32 temp_138_arithop_208_0, 1_0 
              #                    occupy s5 with temp_138_arithop_208_0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s6 with temp_139_arithop_208_0
    ADDW    s6,s5,s1
              #                    free s5
              #                    occupy s5 with temp_138_arithop_208_0
              #                    store to temp_138_arithop_208_0 in mem offset legal
    sw      s5,104(sp)
              #                    release s5 with temp_138_arithop_208_0
              #                    free s1
              #                    free s6
              #                     595  temp_140_ptr_of_arr_188_208 = GEP arr_188:Array:i32:[None] [Some(temp_139_arithop_208_0)] 
              #                    occupy s1 with temp_140_ptr_of_arr_188_208
    li      s1, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with temp_139_arithop_208_0
    mv      s5, s6
              #                    free s6
              #                    occupy s6 with temp_139_arithop_208_0
              #                    store to temp_139_arithop_208_0 in mem offset legal
    sw      s6,100(sp)
              #                    release s6 with temp_139_arithop_208_0
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy a0 with arr_188
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     597  temp_141_ele_of_arr_188_208_0 = load temp_140_ptr_of_arr_188_208:ptr->i32 
              #                    occupy s1 with temp_140_ptr_of_arr_188_208
              #                    occupy s5 with temp_141_ele_of_arr_188_208_0
    lw      s5,0(s1)
              #                    free s5
              #                    occupy s5 with temp_141_ele_of_arr_188_208_0
              #                    store to temp_141_ele_of_arr_188_208_0 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_141_ele_of_arr_188_208_0
              #                    free s1
              #                     598  mu arr_188:597 
              #                     599  (nop) 
              #                     601  (nop) 
              #                     603  (nop) 
              #                     605  (nop) 
              #                     607  temp_145_arithop_208_0 = Div i32 temp_137_arithop_208_0, stride_188_0 
              #                    occupy a6 with temp_137_arithop_208_0
              #                    occupy a1 with stride_188_0
              #                    occupy s5 with temp_145_arithop_208_0
    divw    s5,a6,a1
              #                    free a6
              #                    occupy a6 with temp_137_arithop_208_0
              #                    store to temp_137_arithop_208_0 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with temp_137_arithop_208_0
              #                    free a1
              #                    free s5
              #                     608  store temp_145_arithop_208_0:i32 temp_140_ptr_of_arr_188_208:ptr->i32 
              #                    occupy s1 with temp_140_ptr_of_arr_188_208
              #                    occupy s5 with temp_145_arithop_208_0
    sw      s5,0(s1)
              #                    free s5
              #                    free s1
              #                     609  arr_188 = chi arr_188:608 
              #                     1209 sum_190_5 = i32 temp_137_arithop_208_0 
              #                    occupy a6 with temp_137_arithop_208_0
              #                    load from temp_137_arithop_208_0 in mem


    lw      a6,108(sp)
              #                    occupy s6 with sum_190_5
    mv      s6, a6
              #                    free a6
              #                    occupy a6 with temp_137_arithop_208_0
              #                    store to temp_137_arithop_208_0 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with temp_137_arithop_208_0
              #                    free s6
              #                    occupy s6 with sum_190_5
              #                    store to sum_190_5 in mem offset legal
    sw      s6,180(sp)
              #                    release s6 with sum_190_5
              #                     1210 lastnum_190_4 = i32 temp_141_ele_of_arr_188_208_0 
              #                    occupy a6 with temp_141_ele_of_arr_188_208_0
              #                    load from temp_141_ele_of_arr_188_208_0 in mem


    lw      a6,84(sp)
              #                    occupy s6 with lastnum_190_4
    mv      s6, a6
              #                    free a6
              #                    occupy a6 with temp_141_ele_of_arr_188_208_0
              #                    store to temp_141_ele_of_arr_188_208_0 in mem offset legal
    sw      a6,84(sp)
              #                    release a6 with temp_141_ele_of_arr_188_208_0
              #                    free s6
              #                    occupy s6 with lastnum_190_4
              #                    store to lastnum_190_4 in mem offset legal
    sw      s6,152(sp)
              #                    release s6 with lastnum_190_4
              #                          jump label: gather_90 
              #                    occupy a6 with sum_190_2
              #                    load from sum_190_2 in mem


    lw      a6,188(sp)
              #                    occupy s2 with temp_161_cmp_203_0
              #                    store to temp_161_cmp_203_0 in mem offset legal
    sb      s2,2(sp)
              #                    release s2 with temp_161_cmp_203_0
              #                    occupy s5 with temp_145_arithop_208_0
              #                    store to temp_145_arithop_208_0 in mem offset legal
    sw      s5,68(sp)
              #                    release s5 with temp_145_arithop_208_0
              #                    occupy a2 with temp_155_cmp_196_0
              #                    store to temp_155_cmp_196_0 in mem offset legal
    sb      a2,11(sp)
              #                    release a2 with temp_155_cmp_196_0
              #                    occupy a2 with sum_190_5
              #                    load from sum_190_5 in mem


    lw      a2,180(sp)
              #                    occupy s1 with temp_140_ptr_of_arr_188_208
              #                    store to temp_140_ptr_of_arr_188_208 in mem offset legal
    sd      s1,88(sp)
              #                    release s1 with temp_140_ptr_of_arr_188_208
              #                    occupy s1 with i_190_2
              #                    load from i_190_2 in mem


    lw      s1,172(sp)
              #                    occupy a4 with temp_159_cmp_199_0
              #                    store to temp_159_cmp_199_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_159_cmp_199_0
              #                    occupy s3 with temp_134_ptr_of_arr_188_208
              #                    store to temp_134_ptr_of_arr_188_208 in mem offset legal
    sd      s3,120(sp)
              #                    release s3 with temp_134_ptr_of_arr_188_208
              #                    occupy s3 with lastnum_190_4
              #                    load from lastnum_190_4 in mem


    lw      s3,152(sp)
    j       .gather_90
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: stride_188_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a5:Freed { symidx: temp_158_arithop_199_0, tracked: true } |     a6:Freed { symidx: sum_190_2, tracked: true } |     a7:Freed { symidx: lastnum_190_1, tracked: true } |     s1:Freed { symidx: i_190_2, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     640  label while.exit_197: 
.while.exit_197:
              #                     1341 untrack temp_158_arithop_199_0 
              #                    occupy a5 with temp_158_arithop_199_0
              #                    release a5 with temp_158_arithop_199_0
              #                     1340 untrack i_190_2 
              #                    occupy s1 with i_190_2
              #                    release s1 with i_190_2
              #                     1339 untrack sum_190_2 
              #                    occupy a6 with sum_190_2
              #                    release a6 with sum_190_2
              #                     1338 untrack lastnum_190_1 
              #                    occupy a7 with lastnum_190_1
              #                    release a7 with lastnum_190_1
              #                     564  (nop) 
              #                     565  mu n_0_0:564 
              #                     567  temp_130_arithop_190_0 = Sub i32 temp_154_value_from_ptr_196_0, stride_188_0 
              #                    occupy a3 with temp_154_value_from_ptr_196_0
              #                    occupy a1 with stride_188_0
              #                    occupy a4 with temp_130_arithop_190_0
              #                    regtab:    a0:Freed { symidx: arr_188, tracked: true } |     a1:Occupied { symidx: stride_188_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Occupied { symidx: temp_154_value_from_ptr_196_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_130_arithop_190_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     1387 untrack stride_188_0 
              #                    occupy a1 with stride_188_0
              #                    release a1 with stride_188_0
              #                     569  temp_131_arithop_190_0 = Add i32 temp_130_arithop_190_0, 1_0 
              #                    occupy a4 with temp_130_arithop_190_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with temp_131_arithop_190_0
    ADDW    a5,a4,a1
              #                    free a4
              #                    free a1
              #                    free a5
              #                     1388 untrack temp_130_arithop_190_0 
              #                    occupy a4 with temp_130_arithop_190_0
              #                    release a4 with temp_130_arithop_190_0
              #                     570  (nop) 
              #                     643  (nop) 
              #                     644  mu n_0_0:643 
              #                     1211 i_190_5 = i32 temp_131_arithop_190_0 
              #                    occupy a5 with temp_131_arithop_190_0
              #                    occupy a4 with i_190_5
    mv      a4, a5
              #                    free a5
              #                    free a4
              #                     1386 untrack temp_131_arithop_190_0 
              #                    occupy a5 with temp_131_arithop_190_0
              #                    release a5 with temp_131_arithop_190_0
              #                          jump label: while.head_215 
    j       .while.head_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: i_190_5, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     647  label while.head_215: 
.while.head_215:
              #                     646  temp_157_cmp_214_0 = icmp i32 Slt i_190_5, temp_154_value_from_ptr_196_0 
              #                    occupy a4 with i_190_5
              #                    occupy a3 with temp_154_value_from_ptr_196_0
              #                    occupy a1 with temp_157_cmp_214_0
    slt     a1,a4,a3
              #                    free a4
              #                    free a3
              #                    free a1
              #                     650  br i1 temp_157_cmp_214_0, label while.body_215, label while.exit_215 
              #                    occupy a1 with temp_157_cmp_214_0
              #                    free a1
              #                    occupy a1 with temp_157_cmp_214_0
    bnez    a1, .while.body_215
              #                    free a1
    j       .while.exit_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: temp_157_cmp_214_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: i_190_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     648  label while.body_215: 
.while.body_215:
              #                     574  temp_132_ptr_of_arr_188_216 = GEP arr_188:ptr->i32 [Some(i_190_5)] 
              #                    occupy a5 with temp_132_ptr_of_arr_188_216
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_190_5
    mv      a6, a4
              #                    free a4
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a0 with arr_188
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     575  store 0_0:i32 temp_132_ptr_of_arr_188_216:ptr->i32 
              #                    occupy a5 with temp_132_ptr_of_arr_188_216
              #                    occupy a7 with 0_0
    li      a7, 0
    sw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                     576  arr_188 = chi arr_188:575 
              #                     578  temp_133_arithop_216_0 = Add i32 i_190_5, 1_0 
              #                    occupy a4 with i_190_5
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_133_arithop_216_0
    ADDW    s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                     579  (nop) 
              #                     1212 i_190_5 = i32 temp_133_arithop_216_0 
              #                    occupy s2 with temp_133_arithop_216_0
              #                    occupy a4 with i_190_5
    mv      a4, s2
              #                    free s2
              #                    free a4
              #                          jump label: while.head_215 
              #                    occupy s2 with temp_133_arithop_216_0
              #                    store to temp_133_arithop_216_0 in mem offset legal
    sw      s2,132(sp)
              #                    release s2 with temp_133_arithop_216_0
              #                    occupy a5 with temp_132_ptr_of_arr_188_216
              #                    store to temp_132_ptr_of_arr_188_216 in mem offset legal
    sd      a5,136(sp)
              #                    release a5 with temp_132_ptr_of_arr_188_216
              #                    occupy a1 with temp_157_cmp_214_0
              #                    store to temp_157_cmp_214_0 in mem offset legal
    sb      a1,10(sp)
              #                    release a1 with temp_157_cmp_214_0
    j       .while.head_215
              #                    regtab     a0:Freed { symidx: arr_188, tracked: true } |     a1:Freed { symidx: temp_157_cmp_214_0, tracked: true } |     a2:Freed { symidx: temp_155_cmp_196_0, tracked: true } |     a3:Freed { symidx: temp_154_value_from_ptr_196_0, tracked: true } |     a4:Freed { symidx: i_190_5, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     649  label while.exit_215: 
.while.exit_215:
              #                     1390 untrack temp_154_value_from_ptr_196_0 
              #                    occupy a3 with temp_154_value_from_ptr_196_0
              #                    release a3 with temp_154_value_from_ptr_196_0
              #                     1389 untrack i_190_5 
              #                    occupy a4 with i_190_5
              #                    release a4 with i_190_5
              #                     1026 mu arr_188:572 
              #                     1391 untrack arr_188 
              #                    occupy a0 with arr_188
              #                    release a0 with arr_188
              #                     572  ret 0_0 
              #                    load from ra_avgPooling_0 in mem
    ld      ra,280(sp)
              #                    load from s0_avgPooling_0 in mem
    ld      s0,272(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,288
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 992|s0_main:8 at 984|arr:128 at 856|result:128 at 728|temp_162_ptr_of_arr_221:8 at 720|temp_163_ptr_of_arr_221:8 at 712|temp_164_ptr_of_arr_221:8 at 704|temp_165_ptr_of_arr_221:8 at 696|temp_166_ptr_of_arr_221:8 at 688|temp_167_ptr_of_arr_221:8 at 680|temp_168_ptr_of_arr_221:8 at 672|temp_169_ptr_of_arr_221:8 at 664|temp_170_ptr_of_arr_221:8 at 656|temp_171_ptr_of_arr_221:8 at 648|temp_172_ptr_of_arr_221:8 at 640|temp_173_ptr_of_arr_221:8 at 632|temp_174_ptr_of_arr_221:8 at 624|temp_175_ptr_of_arr_221:8 at 616|temp_176_ptr_of_arr_221:8 at 608|temp_177_ptr_of_arr_221:8 at 600|temp_178_ptr_of_arr_221:8 at 592|temp_179_ptr_of_arr_221:8 at 584|temp_180_ptr_of_arr_221:8 at 576|temp_181_ptr_of_arr_221:8 at 568|temp_182_ptr_of_arr_221:8 at 560|temp_183_ptr_of_arr_221:8 at 552|temp_184_ptr_of_arr_221:8 at 544|temp_185_ptr_of_arr_221:8 at 536|temp_186_ptr_of_arr_221:8 at 528|temp_187_ptr_of_arr_221:8 at 520|temp_188_ptr_of_arr_221:8 at 512|temp_189_ptr_of_arr_221:8 at 504|temp_190_ptr_of_arr_221:8 at 496|temp_191_ptr_of_arr_221:8 at 488|temp_192_ptr_of_arr_221:8 at 480|temp_193_ptr_of_arr_221:8 at 472|t _s221 _i0:4 at 468|t _s221 _i3:4 at 464|t _s221 _i6:4 at 460|t _s221 _i12:4 at 456|t _s221 _i16:4 at 452|t _s221 _i21:4 at 448|t _s221 _i25:4 at 444|t _s221 _i29:4 at 440|temp_194_ele_ptr_of_arr_221:8 at 432|temp_195_ele_ptr_of_result_221:8 at 424|temp_196_ret_of_arrCopy _s221 _i0:4 at 420|none:4 at 416|temp_197_ele_ptr_of_result_221:8 at 408|temp_198_ret_of_revert _s221 _i0:4 at 404|i _s221 _i0:4 at 400|i _s221 _i2:4 at 396|i _s221 _i5:4 at 392|i _s221 _i8:4 at 388|i _s221 _i11:4 at 384|i _s221 _i14:4 at 380|i _s221 _i17:4 at 376|i _s221 _i20:4 at 372|none:4 at 368|temp_199_ele_ptr_of_result_221:8 at 360|temp_200_ret_of_bubblesort _s221 _i0:4 at 356|none:4 at 352|temp_201_ele_ptr_of_result_221:8 at 344|temp_202_ret_of_getMid _s221 _i0:4 at 340|none:4 at 336|temp_203_ele_ptr_of_result_221:8 at 328|temp_204_ret_of_getMost _s221 _i0:4 at 324|none:4 at 320|temp_205_ele_ptr_of_arr_221:8 at 312|temp_206_ele_ptr_of_result_221:8 at 304|temp_207_ret_of_arrCopy _s221 _i0:4 at 300|none:4 at 296|temp_208_ele_ptr_of_result_221:8 at 288|temp_209_ret_of_bubblesort _s221 _i0:4 at 284|none:4 at 280|temp_210_ele_ptr_of_arr_221:8 at 272|temp_211_ele_ptr_of_result_221:8 at 264|temp_212_ret_of_arrCopy _s221 _i0:4 at 260|none:4 at 256|temp_213_ele_ptr_of_result_221:8 at 248|temp_214_ret_of_insertsort _s221 _i0:4 at 244|none:4 at 240|temp_215_ele_ptr_of_arr_221:8 at 232|temp_216_ele_ptr_of_result_221:8 at 224|temp_217_ret_of_arrCopy _s221 _i0:4 at 220|none:4 at 216|temp_218_ele_ptr_of_result_221:8 at 208|temp_219_ret_of_QuickSort _s221 _i0:4 at 204|none:4 at 200|temp_220_ele_ptr_of_arr_221:8 at 192|temp_221_ele_ptr_of_result_221:8 at 184|temp_222_ret_of_arrCopy _s221 _i0:4 at 180|none:4 at 176|temp_223_ele_ptr_of_result_221:8 at 168|temp_224_ret_of_calSum _s221 _i0:4 at 164|none:4 at 160|temp_225_ele_ptr_of_arr_221:8 at 152|temp_226_ele_ptr_of_result_221:8 at 144|temp_227_ret_of_arrCopy _s221 _i0:4 at 140|none:4 at 136|temp_228_ele_ptr_of_result_221:8 at 128|temp_229_ret_of_avgPooling _s221 _i0:4 at 124|none:4 at 120|temp_230_ptr_of_result_221:8 at 112|temp_231_ele_of_result_221 _s322 _i0:4 at 108|temp_232_arithop _s322 _i0:4 at 104|temp_233_ptr_of_result_221:8 at 96|temp_234_ele_of_result_221 _s313 _i0:4 at 92|temp_235_arithop _s313 _i0:4 at 88|temp_236_ptr_of_result_221:8 at 80|temp_237_ele_of_result_221 _s304 _i0:4 at 76|temp_238_arithop _s304 _i0:4 at 72|temp_239_ptr_of_result_221:8 at 64|temp_240_ele_of_result_221 _s294 _i0:4 at 60|temp_241_arithop _s294 _i0:4 at 56|temp_242_ptr_of_result_221:8 at 48|temp_243_ele_of_result_221 _s285 _i0:4 at 44|temp_244_arithop _s285 _i0:4 at 40|temp_245_ptr_of_result_221:8 at 32|temp_246_ele_of_result_221 _s272 _i0:4 at 28|temp_247_arithop _s272 _i0:4 at 24|temp_248_ptr_of_result_221:8 at 16|temp_249_ele_of_result_221 _s264 _i0:4 at 12|temp_250_arithop _s264 _i0:4 at 8|temp_251_cmp _s262 _i0:1 at 7|temp_252_cmp _s270 _i0:1 at 6|temp_253_cmp _s283 _i0:1 at 5|temp_254_cmp _s292 _i0:1 at 4|temp_255_cmp _s302 _i0:1 at 3|temp_256_cmp _s311 _i0:1 at 2|temp_257_cmp _s320 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-1000
              #                    store to ra_main_0 in mem offset legal
    sd      ra,992(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,984(sp)
    addi    s0,sp,1000
              #                     1027 n_0_1 = chi n_0_0:36 
              #                     672  alloc Array:i32:[Some(32_0)] [arr_221] 
              #                     674  alloc Array:i32:[Some(32_0)] [result_221] 
              #                     675  alloc ptr->i32 [temp_162_ptr_of_arr_221_221] 
              #                     679  alloc ptr->i32 [temp_163_ptr_of_arr_221_221] 
              #                     683  alloc ptr->i32 [temp_164_ptr_of_arr_221_221] 
              #                     687  alloc ptr->i32 [temp_165_ptr_of_arr_221_221] 
              #                     691  alloc ptr->i32 [temp_166_ptr_of_arr_221_221] 
              #                     695  alloc ptr->i32 [temp_167_ptr_of_arr_221_221] 
              #                     699  alloc ptr->i32 [temp_168_ptr_of_arr_221_221] 
              #                     703  alloc ptr->i32 [temp_169_ptr_of_arr_221_221] 
              #                     707  alloc ptr->i32 [temp_170_ptr_of_arr_221_221] 
              #                     711  alloc ptr->i32 [temp_171_ptr_of_arr_221_221] 
              #                     715  alloc ptr->i32 [temp_172_ptr_of_arr_221_221] 
              #                     719  alloc ptr->i32 [temp_173_ptr_of_arr_221_221] 
              #                     723  alloc ptr->i32 [temp_174_ptr_of_arr_221_221] 
              #                     727  alloc ptr->i32 [temp_175_ptr_of_arr_221_221] 
              #                     731  alloc ptr->i32 [temp_176_ptr_of_arr_221_221] 
              #                     735  alloc ptr->i32 [temp_177_ptr_of_arr_221_221] 
              #                     739  alloc ptr->i32 [temp_178_ptr_of_arr_221_221] 
              #                     743  alloc ptr->i32 [temp_179_ptr_of_arr_221_221] 
              #                     747  alloc ptr->i32 [temp_180_ptr_of_arr_221_221] 
              #                     751  alloc ptr->i32 [temp_181_ptr_of_arr_221_221] 
              #                     755  alloc ptr->i32 [temp_182_ptr_of_arr_221_221] 
              #                     759  alloc ptr->i32 [temp_183_ptr_of_arr_221_221] 
              #                     763  alloc ptr->i32 [temp_184_ptr_of_arr_221_221] 
              #                     767  alloc ptr->i32 [temp_185_ptr_of_arr_221_221] 
              #                     771  alloc ptr->i32 [temp_186_ptr_of_arr_221_221] 
              #                     775  alloc ptr->i32 [temp_187_ptr_of_arr_221_221] 
              #                     779  alloc ptr->i32 [temp_188_ptr_of_arr_221_221] 
              #                     783  alloc ptr->i32 [temp_189_ptr_of_arr_221_221] 
              #                     787  alloc ptr->i32 [temp_190_ptr_of_arr_221_221] 
              #                     791  alloc ptr->i32 [temp_191_ptr_of_arr_221_221] 
              #                     795  alloc ptr->i32 [temp_192_ptr_of_arr_221_221] 
              #                     799  alloc ptr->i32 [temp_193_ptr_of_arr_221_221] 
              #                     803  alloc i32 [t_221] 
              #                     805  alloc ptr->i32 [temp_194_ele_ptr_of_arr_221_221] 
              #                     807  alloc ptr->i32 [temp_195_ele_ptr_of_result_221_221] 
              #                     809  alloc i32 [temp_196_ret_of_arrCopy_221] 
              #                     812  alloc ptr->i32 [temp_197_ele_ptr_of_result_221_221] 
              #                     814  alloc i32 [temp_198_ret_of_revert_221] 
              #                     817  alloc i32 [i_221] 
              #                     820  alloc ptr->i32 [temp_199_ele_ptr_of_result_221_221] 
              #                     822  alloc i32 [temp_200_ret_of_bubblesort_221] 
              #                     826  alloc ptr->i32 [temp_201_ele_ptr_of_result_221_221] 
              #                     828  alloc i32 [temp_202_ret_of_getMid_221] 
              #                     832  alloc ptr->i32 [temp_203_ele_ptr_of_result_221_221] 
              #                     834  alloc i32 [temp_204_ret_of_getMost_221] 
              #                     838  alloc ptr->i32 [temp_205_ele_ptr_of_arr_221_221] 
              #                     840  alloc ptr->i32 [temp_206_ele_ptr_of_result_221_221] 
              #                     842  alloc i32 [temp_207_ret_of_arrCopy_221] 
              #                     845  alloc ptr->i32 [temp_208_ele_ptr_of_result_221_221] 
              #                     847  alloc i32 [temp_209_ret_of_bubblesort_221] 
              #                     851  alloc ptr->i32 [temp_210_ele_ptr_of_arr_221_221] 
              #                     853  alloc ptr->i32 [temp_211_ele_ptr_of_result_221_221] 
              #                     855  alloc i32 [temp_212_ret_of_arrCopy_221] 
              #                     858  alloc ptr->i32 [temp_213_ele_ptr_of_result_221_221] 
              #                     860  alloc i32 [temp_214_ret_of_insertsort_221] 
              #                     864  alloc ptr->i32 [temp_215_ele_ptr_of_arr_221_221] 
              #                     866  alloc ptr->i32 [temp_216_ele_ptr_of_result_221_221] 
              #                     868  alloc i32 [temp_217_ret_of_arrCopy_221] 
              #                     873  alloc ptr->i32 [temp_218_ele_ptr_of_result_221_221] 
              #                     875  alloc i32 [temp_219_ret_of_QuickSort_221] 
              #                     878  alloc ptr->i32 [temp_220_ele_ptr_of_arr_221_221] 
              #                     880  alloc ptr->i32 [temp_221_ele_ptr_of_result_221_221] 
              #                     882  alloc i32 [temp_222_ret_of_arrCopy_221] 
              #                     885  alloc ptr->i32 [temp_223_ele_ptr_of_result_221_221] 
              #                     887  alloc i32 [temp_224_ret_of_calSum_221] 
              #                     891  alloc ptr->i32 [temp_225_ele_ptr_of_arr_221_221] 
              #                     893  alloc ptr->i32 [temp_226_ele_ptr_of_result_221_221] 
              #                     895  alloc i32 [temp_227_ret_of_arrCopy_221] 
              #                     898  alloc ptr->i32 [temp_228_ele_ptr_of_result_221_221] 
              #                     900  alloc i32 [temp_229_ret_of_avgPooling_221] 
              #                     906  alloc ptr->i32 [temp_230_ptr_of_result_221_322] 
              #                     908  alloc i32 [temp_231_ele_of_result_221_322] 
              #                     913  alloc i32 [temp_232_arithop_322] 
              #                     916  alloc ptr->i32 [temp_233_ptr_of_result_221_313] 
              #                     918  alloc i32 [temp_234_ele_of_result_221_313] 
              #                     923  alloc i32 [temp_235_arithop_313] 
              #                     926  alloc ptr->i32 [temp_236_ptr_of_result_221_304] 
              #                     928  alloc i32 [temp_237_ele_of_result_221_304] 
              #                     933  alloc i32 [temp_238_arithop_304] 
              #                     936  alloc ptr->i32 [temp_239_ptr_of_result_221_294] 
              #                     938  alloc i32 [temp_240_ele_of_result_221_294] 
              #                     943  alloc i32 [temp_241_arithop_294] 
              #                     946  alloc ptr->i32 [temp_242_ptr_of_result_221_285] 
              #                     948  alloc i32 [temp_243_ele_of_result_221_285] 
              #                     953  alloc i32 [temp_244_arithop_285] 
              #                     956  alloc ptr->i32 [temp_245_ptr_of_result_221_272] 
              #                     958  alloc i32 [temp_246_ele_of_result_221_272] 
              #                     963  alloc i32 [temp_247_arithop_272] 
              #                     966  alloc ptr->i32 [temp_248_ptr_of_result_221_264] 
              #                     968  alloc i32 [temp_249_ele_of_result_221_264] 
              #                     973  alloc i32 [temp_250_arithop_264] 
              #                     976  alloc i1 [temp_251_cmp_262] 
              #                     982  alloc i1 [temp_252_cmp_270] 
              #                     988  alloc i1 [temp_253_cmp_283] 
              #                     994  alloc i1 [temp_254_cmp_292] 
              #                     1000 alloc i1 [temp_255_cmp_302] 
              #                     1006 alloc i1 [temp_256_cmp_311] 
              #                     1012 alloc i1 [temp_257_cmp_320] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     669  store 32_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 32_0
    li      a1, 32
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     670  n_0_2 = chi n_0_1:669 
              #                     671   
              #                     673   
              #                     676  temp_162_ptr_of_arr_221_221 = GEP arr_221_0:Array:i32:[Some(32_0)] [Some(0_0)] 
              #                    occupy a2 with temp_162_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     677  store 7_0:i32 temp_162_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_162_ptr_of_arr_221_221
              #                    occupy a4 with 7_0
    li      a4, 7
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     1394 untrack temp_162_ptr_of_arr_221_221 
              #                    occupy a2 with temp_162_ptr_of_arr_221_221
              #                    release a2 with temp_162_ptr_of_arr_221_221
              #                     678  arr_221_1 = chi arr_221_0:677 
              #                     680  temp_163_ptr_of_arr_221_221 = GEP arr_221_1:Array:i32:[Some(32_0)] [Some(1_0)] 
              #                    occupy a2 with temp_163_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     681  store 23_0:i32 temp_163_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_163_ptr_of_arr_221_221
              #                    occupy a6 with 23_0
    li      a6, 23
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     1410 untrack temp_163_ptr_of_arr_221_221 
              #                    occupy a2 with temp_163_ptr_of_arr_221_221
              #                    release a2 with temp_163_ptr_of_arr_221_221
              #                     682  arr_221_2 = chi arr_221_1:681 
              #                     684  temp_164_ptr_of_arr_221_221 = GEP arr_221_2:Array:i32:[Some(32_0)] [Some(2_0)] 
              #                    occupy a2 with temp_164_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     685  store 89_0:i32 temp_164_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_164_ptr_of_arr_221_221
              #                    occupy s1 with 89_0
    li      s1, 89
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     1416 untrack temp_164_ptr_of_arr_221_221 
              #                    occupy a2 with temp_164_ptr_of_arr_221_221
              #                    release a2 with temp_164_ptr_of_arr_221_221
              #                     686  arr_221_3 = chi arr_221_2:685 
              #                     688  temp_165_ptr_of_arr_221_221 = GEP arr_221_3:Array:i32:[Some(32_0)] [Some(3_0)] 
              #                    occupy a2 with temp_165_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     689  store 26_0:i32 temp_165_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_165_ptr_of_arr_221_221
              #                    occupy s3 with 26_0
    li      s3, 26
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     1393 untrack temp_165_ptr_of_arr_221_221 
              #                    occupy a2 with temp_165_ptr_of_arr_221_221
              #                    release a2 with temp_165_ptr_of_arr_221_221
              #                     690  arr_221_4 = chi arr_221_3:689 
              #                     692  temp_166_ptr_of_arr_221_221 = GEP arr_221_4:Array:i32:[Some(32_0)] [Some(4_0)] 
              #                    occupy a2 with temp_166_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     693  store 282_0:i32 temp_166_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_166_ptr_of_arr_221_221
              #                    occupy s5 with 282_0
    li      s5, 282
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     1404 untrack temp_166_ptr_of_arr_221_221 
              #                    occupy a2 with temp_166_ptr_of_arr_221_221
              #                    release a2 with temp_166_ptr_of_arr_221_221
              #                     694  arr_221_5 = chi arr_221_4:693 
              #                     696  temp_167_ptr_of_arr_221_221 = GEP arr_221_5:Array:i32:[Some(32_0)] [Some(5_0)] 
              #                    occupy a2 with temp_167_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     697  store 254_0:i32 temp_167_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_167_ptr_of_arr_221_221
              #                    occupy s7 with 254_0
    li      s7, 254
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1403 untrack temp_167_ptr_of_arr_221_221 
              #                    occupy a2 with temp_167_ptr_of_arr_221_221
              #                    release a2 with temp_167_ptr_of_arr_221_221
              #                     698  arr_221_6 = chi arr_221_5:697 
              #                     700  temp_168_ptr_of_arr_221_221 = GEP arr_221_6:Array:i32:[Some(32_0)] [Some(6_0)] 
              #                    occupy a2 with temp_168_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     701  store 27_0:i32 temp_168_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_168_ptr_of_arr_221_221
              #                    occupy s7 with 27_0
    li      s7, 27
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1400 untrack temp_168_ptr_of_arr_221_221 
              #                    occupy a2 with temp_168_ptr_of_arr_221_221
              #                    release a2 with temp_168_ptr_of_arr_221_221
              #                     702  arr_221_7 = chi arr_221_6:701 
              #                     704  temp_169_ptr_of_arr_221_221 = GEP arr_221_7:Array:i32:[Some(32_0)] [Some(7_0)] 
              #                    occupy a2 with temp_169_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     705  store 5_0:i32 temp_169_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_169_ptr_of_arr_221_221
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1412 untrack temp_169_ptr_of_arr_221_221 
              #                    occupy a2 with temp_169_ptr_of_arr_221_221
              #                    release a2 with temp_169_ptr_of_arr_221_221
              #                     706  arr_221_8 = chi arr_221_7:705 
              #                     708  temp_170_ptr_of_arr_221_221 = GEP arr_221_8:Array:i32:[Some(32_0)] [Some(8_0)] 
              #                    occupy a2 with temp_170_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     709  store 83_0:i32 temp_170_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_170_ptr_of_arr_221_221
              #                    occupy s7 with 83_0
    li      s7, 83
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1392 untrack temp_170_ptr_of_arr_221_221 
              #                    occupy a2 with temp_170_ptr_of_arr_221_221
              #                    release a2 with temp_170_ptr_of_arr_221_221
              #                     710  arr_221_9 = chi arr_221_8:709 
              #                     712  temp_171_ptr_of_arr_221_221 = GEP arr_221_9:Array:i32:[Some(32_0)] [Some(9_0)] 
              #                    occupy a2 with temp_171_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     713  store 273_0:i32 temp_171_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_171_ptr_of_arr_221_221
              #                    occupy s7 with 273_0
    li      s7, 273
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1401 untrack temp_171_ptr_of_arr_221_221 
              #                    occupy a2 with temp_171_ptr_of_arr_221_221
              #                    release a2 with temp_171_ptr_of_arr_221_221
              #                     714  arr_221_10 = chi arr_221_9:713 
              #                     716  temp_172_ptr_of_arr_221_221 = GEP arr_221_10:Array:i32:[Some(32_0)] [Some(10_0)] 
              #                    occupy a2 with temp_172_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 10
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     717  store 574_0:i32 temp_172_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_172_ptr_of_arr_221_221
              #                    occupy s7 with 574_0
    li      s7, 574
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1402 untrack temp_172_ptr_of_arr_221_221 
              #                    occupy a2 with temp_172_ptr_of_arr_221_221
              #                    release a2 with temp_172_ptr_of_arr_221_221
              #                     718  arr_221_11 = chi arr_221_10:717 
              #                     720  temp_173_ptr_of_arr_221_221 = GEP arr_221_11:Array:i32:[Some(32_0)] [Some(11_0)] 
              #                    occupy a2 with temp_173_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 11
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     721  store 905_0:i32 temp_173_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_173_ptr_of_arr_221_221
              #                    occupy s7 with 905_0
    li      s7, 905
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1423 untrack temp_173_ptr_of_arr_221_221 
              #                    occupy a2 with temp_173_ptr_of_arr_221_221
              #                    release a2 with temp_173_ptr_of_arr_221_221
              #                     722  arr_221_12 = chi arr_221_11:721 
              #                     724  temp_174_ptr_of_arr_221_221 = GEP arr_221_12:Array:i32:[Some(32_0)] [Some(12_0)] 
              #                    occupy a2 with temp_174_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 12
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     725  store 354_0:i32 temp_174_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_174_ptr_of_arr_221_221
              #                    occupy s7 with 354_0
    li      s7, 354
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1399 untrack temp_174_ptr_of_arr_221_221 
              #                    occupy a2 with temp_174_ptr_of_arr_221_221
              #                    release a2 with temp_174_ptr_of_arr_221_221
              #                     726  arr_221_13 = chi arr_221_12:725 
              #                     728  temp_175_ptr_of_arr_221_221 = GEP arr_221_13:Array:i32:[Some(32_0)] [Some(13_0)] 
              #                    occupy a2 with temp_175_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 13
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     729  store 657_0:i32 temp_175_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_175_ptr_of_arr_221_221
              #                    occupy s7 with 657_0
    li      s7, 657
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1417 untrack temp_175_ptr_of_arr_221_221 
              #                    occupy a2 with temp_175_ptr_of_arr_221_221
              #                    release a2 with temp_175_ptr_of_arr_221_221
              #                     730  arr_221_14 = chi arr_221_13:729 
              #                     732  temp_176_ptr_of_arr_221_221 = GEP arr_221_14:Array:i32:[Some(32_0)] [Some(14_0)] 
              #                    occupy a2 with temp_176_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 14
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     733  store 935_0:i32 temp_176_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_176_ptr_of_arr_221_221
              #                    occupy s7 with 935_0
    li      s7, 935
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1407 untrack temp_176_ptr_of_arr_221_221 
              #                    occupy a2 with temp_176_ptr_of_arr_221_221
              #                    release a2 with temp_176_ptr_of_arr_221_221
              #                     734  arr_221_15 = chi arr_221_14:733 
              #                     736  temp_177_ptr_of_arr_221_221 = GEP arr_221_15:Array:i32:[Some(32_0)] [Some(15_0)] 
              #                    occupy a2 with temp_177_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 15
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     737  store 264_0:i32 temp_177_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_177_ptr_of_arr_221_221
              #                    occupy s7 with 264_0
    li      s7, 264
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1414 untrack temp_177_ptr_of_arr_221_221 
              #                    occupy a2 with temp_177_ptr_of_arr_221_221
              #                    release a2 with temp_177_ptr_of_arr_221_221
              #                     738  arr_221_16 = chi arr_221_15:737 
              #                     740  temp_178_ptr_of_arr_221_221 = GEP arr_221_16:Array:i32:[Some(32_0)] [Some(16_0)] 
              #                    occupy a2 with temp_178_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 16
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     741  store 639_0:i32 temp_178_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_178_ptr_of_arr_221_221
              #                    occupy s7 with 639_0
    li      s7, 639
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1408 untrack temp_178_ptr_of_arr_221_221 
              #                    occupy a2 with temp_178_ptr_of_arr_221_221
              #                    release a2 with temp_178_ptr_of_arr_221_221
              #                     742  arr_221_17 = chi arr_221_16:741 
              #                     744  temp_179_ptr_of_arr_221_221 = GEP arr_221_17:Array:i32:[Some(32_0)] [Some(17_0)] 
              #                    occupy a2 with temp_179_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 17
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     745  store 459_0:i32 temp_179_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_179_ptr_of_arr_221_221
              #                    occupy s7 with 459_0
    li      s7, 459
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1426 untrack temp_179_ptr_of_arr_221_221 
              #                    occupy a2 with temp_179_ptr_of_arr_221_221
              #                    release a2 with temp_179_ptr_of_arr_221_221
              #                     746  arr_221_18 = chi arr_221_17:745 
              #                     748  temp_180_ptr_of_arr_221_221 = GEP arr_221_18:Array:i32:[Some(32_0)] [Some(18_0)] 
              #                    occupy a2 with temp_180_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 18
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     749  store 29_0:i32 temp_180_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_180_ptr_of_arr_221_221
              #                    occupy s7 with 29_0
    li      s7, 29
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1409 untrack temp_180_ptr_of_arr_221_221 
              #                    occupy a2 with temp_180_ptr_of_arr_221_221
              #                    release a2 with temp_180_ptr_of_arr_221_221
              #                     750  arr_221_19 = chi arr_221_18:749 
              #                     752  temp_181_ptr_of_arr_221_221 = GEP arr_221_19:Array:i32:[Some(32_0)] [Some(19_0)] 
              #                    occupy a2 with temp_181_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 19
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     753  store 68_0:i32 temp_181_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_181_ptr_of_arr_221_221
              #                    occupy s7 with 68_0
    li      s7, 68
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1424 untrack temp_181_ptr_of_arr_221_221 
              #                    occupy a2 with temp_181_ptr_of_arr_221_221
              #                    release a2 with temp_181_ptr_of_arr_221_221
              #                     754  arr_221_20 = chi arr_221_19:753 
              #                     756  temp_182_ptr_of_arr_221_221 = GEP arr_221_20:Array:i32:[Some(32_0)] [Some(20_0)] 
              #                    occupy a2 with temp_182_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 20
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     757  store 929_0:i32 temp_182_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_182_ptr_of_arr_221_221
              #                    occupy s7 with 929_0
    li      s7, 929
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1398 untrack temp_182_ptr_of_arr_221_221 
              #                    occupy a2 with temp_182_ptr_of_arr_221_221
              #                    release a2 with temp_182_ptr_of_arr_221_221
              #                     758  arr_221_21 = chi arr_221_20:757 
              #                     760  temp_183_ptr_of_arr_221_221 = GEP arr_221_21:Array:i32:[Some(32_0)] [Some(21_0)] 
              #                    occupy a2 with temp_183_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 21
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     761  store 756_0:i32 temp_183_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_183_ptr_of_arr_221_221
              #                    occupy s7 with 756_0
    li      s7, 756
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1418 untrack temp_183_ptr_of_arr_221_221 
              #                    occupy a2 with temp_183_ptr_of_arr_221_221
              #                    release a2 with temp_183_ptr_of_arr_221_221
              #                     762  arr_221_22 = chi arr_221_21:761 
              #                     764  temp_184_ptr_of_arr_221_221 = GEP arr_221_22:Array:i32:[Some(32_0)] [Some(22_0)] 
              #                    occupy a2 with temp_184_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 22
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     765  store 452_0:i32 temp_184_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_184_ptr_of_arr_221_221
              #                    occupy s7 with 452_0
    li      s7, 452
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1396 untrack temp_184_ptr_of_arr_221_221 
              #                    occupy a2 with temp_184_ptr_of_arr_221_221
              #                    release a2 with temp_184_ptr_of_arr_221_221
              #                     766  arr_221_23 = chi arr_221_22:765 
              #                     768  temp_185_ptr_of_arr_221_221 = GEP arr_221_23:Array:i32:[Some(32_0)] [Some(23_0)] 
              #                    occupy a2 with temp_185_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 23
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     769  store 279_0:i32 temp_185_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_185_ptr_of_arr_221_221
              #                    occupy s7 with 279_0
    li      s7, 279
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1405 untrack temp_185_ptr_of_arr_221_221 
              #                    occupy a2 with temp_185_ptr_of_arr_221_221
              #                    release a2 with temp_185_ptr_of_arr_221_221
              #                     770  arr_221_24 = chi arr_221_23:769 
              #                     772  temp_186_ptr_of_arr_221_221 = GEP arr_221_24:Array:i32:[Some(32_0)] [Some(24_0)] 
              #                    occupy a2 with temp_186_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 24
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     773  store 58_0:i32 temp_186_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_186_ptr_of_arr_221_221
              #                    occupy s7 with 58_0
    li      s7, 58
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1421 untrack temp_186_ptr_of_arr_221_221 
              #                    occupy a2 with temp_186_ptr_of_arr_221_221
              #                    release a2 with temp_186_ptr_of_arr_221_221
              #                     774  arr_221_25 = chi arr_221_24:773 
              #                     776  temp_187_ptr_of_arr_221_221 = GEP arr_221_25:Array:i32:[Some(32_0)] [Some(25_0)] 
              #                    occupy a2 with temp_187_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 25
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     777  store 87_0:i32 temp_187_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_187_ptr_of_arr_221_221
              #                    occupy s7 with 87_0
    li      s7, 87
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1406 untrack temp_187_ptr_of_arr_221_221 
              #                    occupy a2 with temp_187_ptr_of_arr_221_221
              #                    release a2 with temp_187_ptr_of_arr_221_221
              #                     778  arr_221_26 = chi arr_221_25:777 
              #                     780  temp_188_ptr_of_arr_221_221 = GEP arr_221_26:Array:i32:[Some(32_0)] [Some(26_0)] 
              #                    occupy a2 with temp_188_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 26
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     781  store 96_0:i32 temp_188_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_188_ptr_of_arr_221_221
              #                    occupy s7 with 96_0
    li      s7, 96
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1395 untrack temp_188_ptr_of_arr_221_221 
              #                    occupy a2 with temp_188_ptr_of_arr_221_221
              #                    release a2 with temp_188_ptr_of_arr_221_221
              #                     782  arr_221_27 = chi arr_221_26:781 
              #                     784  temp_189_ptr_of_arr_221_221 = GEP arr_221_27:Array:i32:[Some(32_0)] [Some(27_0)] 
              #                    occupy a2 with temp_189_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 27
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     785  store 36_0:i32 temp_189_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_189_ptr_of_arr_221_221
              #                    occupy s7 with 36_0
    li      s7, 36
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1422 untrack temp_189_ptr_of_arr_221_221 
              #                    occupy a2 with temp_189_ptr_of_arr_221_221
              #                    release a2 with temp_189_ptr_of_arr_221_221
              #                     786  arr_221_28 = chi arr_221_27:785 
              #                     788  temp_190_ptr_of_arr_221_221 = GEP arr_221_28:Array:i32:[Some(32_0)] [Some(28_0)] 
              #                    occupy a2 with temp_190_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 28
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     789  store 39_0:i32 temp_190_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_190_ptr_of_arr_221_221
              #                    occupy s7 with 39_0
    li      s7, 39
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1420 untrack temp_190_ptr_of_arr_221_221 
              #                    occupy a2 with temp_190_ptr_of_arr_221_221
              #                    release a2 with temp_190_ptr_of_arr_221_221
              #                     790  arr_221_29 = chi arr_221_28:789 
              #                     792  temp_191_ptr_of_arr_221_221 = GEP arr_221_29:Array:i32:[Some(32_0)] [Some(29_0)] 
              #                    occupy a2 with temp_191_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 29
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     793  store 28_0:i32 temp_191_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_191_ptr_of_arr_221_221
              #                    occupy s7 with 28_0
    li      s7, 28
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1397 untrack temp_191_ptr_of_arr_221_221 
              #                    occupy a2 with temp_191_ptr_of_arr_221_221
              #                    release a2 with temp_191_ptr_of_arr_221_221
              #                     794  arr_221_30 = chi arr_221_29:793 
              #                     796  temp_192_ptr_of_arr_221_221 = GEP arr_221_30:Array:i32:[Some(32_0)] [Some(30_0)] 
              #                    occupy a2 with temp_192_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 30
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     797  store 1_0:i32 temp_192_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_192_ptr_of_arr_221_221
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1413 untrack temp_192_ptr_of_arr_221_221 
              #                    occupy a2 with temp_192_ptr_of_arr_221_221
              #                    release a2 with temp_192_ptr_of_arr_221_221
              #                     798  arr_221_31 = chi arr_221_30:797 
              #                     800  temp_193_ptr_of_arr_221_221 = GEP arr_221_31:Array:i32:[Some(32_0)] [Some(31_0)] 
              #                    occupy a2 with temp_193_ptr_of_arr_221_221
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 31
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     801  store 290_0:i32 temp_193_ptr_of_arr_221_221:ptr->i32 
              #                    occupy a2 with temp_193_ptr_of_arr_221_221
              #                    occupy s7 with 290_0
    li      s7, 290
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     1425 untrack temp_193_ptr_of_arr_221_221 
              #                    occupy a2 with temp_193_ptr_of_arr_221_221
              #                    release a2 with temp_193_ptr_of_arr_221_221
              #                     802  arr_221_32 = chi arr_221_31:801 
              #                     804   
              #                     806  temp_194_ele_ptr_of_arr_221_221 = GEP arr_221_32:Array:i32:[Some(32_0)] [] 
              #                    occupy a2 with temp_194_ele_ptr_of_arr_221_221
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,856
              #                    free a2
              #                     808  temp_195_ele_ptr_of_result_221_221 = GEP result_221_0:Array:i32:[Some(32_0)] [] 
              #                    occupy s7 with temp_195_ele_ptr_of_result_221_221
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,728
              #                    free s7
              #                    occupy s7 with temp_195_ele_ptr_of_result_221_221
              #                    store to temp_195_ele_ptr_of_result_221_221 in mem offset legal
    sd      s7,424(sp)
              #                    release s7 with temp_195_ele_ptr_of_result_221_221
              #                     810  temp_196_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_194_ele_ptr_of_arr_221_221, temp_195_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_194_ele_ptr_of_arr_221_221
              #                    store to temp_194_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a2,432(sp)
              #                    release a2 with temp_194_ele_ptr_of_arr_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_194_ele_ptr_of_arr_221_221_0
              #                    load from temp_194_ele_ptr_of_arr_221_221 in mem
    ld      a0,432(sp)
              #                    occupy a1 with _anonymous_of_temp_195_ele_ptr_of_result_221_221_0
              #                    load from temp_195_ele_ptr_of_result_221_221 in mem
    ld      a1,424(sp)
              #                    arg load ended


    call    arrCopy
              #                     1419 untrack temp_194_ele_ptr_of_arr_221_221 
              #                     1411 untrack temp_195_ele_ptr_of_result_221_221 
              #                     1028 mu n_0_2:810 
              #                     1029 mu arr_221_32:810 
              #                     1030 mu result_221_0:810 
              #                     1031 arr_221_33 = chi arr_221_32:810 
              #                     1032 result_221_1 = chi result_221_0:810 
              #                     811  (nop) 
              #                     813  temp_197_ele_ptr_of_result_221_221 = GEP result_221_1:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_197_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     815  temp_198_ret_of_revert_221_0 =  Call i32 revert_0(temp_197_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_196_ret_of_arrCopy_221_0
              #                    store to temp_196_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,420(sp)
              #                    release a0 with temp_196_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_197_ele_ptr_of_result_221_221
              #                    store to temp_197_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,408(sp)
              #                    release a1 with temp_197_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_197_ele_ptr_of_result_221_221_0
              #                    load from temp_197_ele_ptr_of_result_221_221 in mem
    ld      a0,408(sp)
              #                    arg load ended


    call    revert
              #                     1415 untrack temp_197_ele_ptr_of_result_221_221 
              #                     1033 mu result_221_1:815 
              #                     1034 result_221_2 = chi result_221_1:815 
              #                     816  (nop) 
              #                     818   
              #                     819  (nop) 
              #                     1213 i_221_2 = i32 0_0 
              #                    occupy a1 with i_221_2
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_263 
    j       .while.head_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221_0, tracked: true } |     a1:Freed { symidx: i_221_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     978  label while.head_263: 
.while.head_263:
              #                     977  temp_251_cmp_262_0 = icmp i32 Slt i_221_2, 32_0 
              #                    occupy a1 with i_221_2
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_251_cmp_262_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     981  br i1 temp_251_cmp_262_0, label while.body_263, label while.exit_263 
              #                    occupy a3 with temp_251_cmp_262_0
              #                    free a3
              #                    occupy a3 with temp_251_cmp_262_0
    bnez    a3, .while.body_263
              #                    free a3
    j       .while.exit_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221_0, tracked: true } |     a1:Freed { symidx: i_221_2, tracked: true } |     a3:Freed { symidx: temp_251_cmp_262_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     979  label while.body_263: 
.while.body_263:
              #                     967  temp_248_ptr_of_result_221_264 = GEP result_221_2:Array:i32:[Some(32_0)] [Some(i_221_2)] 
              #                    occupy a2 with temp_248_ptr_of_result_221_264
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_2
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     969  temp_249_ele_of_result_221_264_0 = load temp_248_ptr_of_result_221_264:ptr->i32 
              #                    occupy a2 with temp_248_ptr_of_result_221_264
              #                    occupy a5 with temp_249_ele_of_result_221_264_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     970  mu result_221_2:969 
              #                     971  (nop) 
              #                     972   Call void putint_0(temp_249_ele_of_result_221_264_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_198_ret_of_revert_221_0
              #                    store to temp_198_ret_of_revert_221_0 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_198_ret_of_revert_221_0
              #                    occupy a1 with i_221_2
              #                    store to i_221_2 in mem offset legal
    sw      a1,396(sp)
              #                    release a1 with i_221_2
              #                    occupy a2 with temp_248_ptr_of_result_221_264
              #                    store to temp_248_ptr_of_result_221_264 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_248_ptr_of_result_221_264
              #                    occupy a3 with temp_251_cmp_262_0
              #                    store to temp_251_cmp_262_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_251_cmp_262_0
              #                    occupy a5 with temp_249_ele_of_result_221_264_0
              #                    store to temp_249_ele_of_result_221_264_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_249_ele_of_result_221_264_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_249_ele_of_result_221_264_0_0
              #                    load from temp_249_ele_of_result_221_264_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     974  temp_250_arithop_264_0 = Add i32 i_221_2, 1_0 
              #                    occupy a0 with i_221_2
              #                    load from i_221_2 in mem


    lw      a0,396(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_250_arithop_264_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     975  (nop) 
              #                     1214 i_221_2 = i32 temp_250_arithop_264_0 
              #                    occupy a2 with temp_250_arithop_264_0
              #                    occupy a0 with i_221_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_263 
              #                    occupy a0 with i_221_2
              #                    store to i_221_2 in mem offset legal
    sw      a0,396(sp)
              #                    release a0 with i_221_2
              #                    occupy a0 with temp_198_ret_of_revert_221_0
              #                    load from temp_198_ret_of_revert_221_0 in mem


    lw      a0,404(sp)
              #                    occupy a1 with i_221_2
              #                    load from i_221_2 in mem


    lw      a1,396(sp)
              #                    occupy a2 with temp_250_arithop_264_0
              #                    store to temp_250_arithop_264_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_250_arithop_264_0
    j       .while.head_263
              #                    regtab     a0:Freed { symidx: temp_198_ret_of_revert_221_0, tracked: true } |     a1:Freed { symidx: i_221_2, tracked: true } |     a3:Freed { symidx: temp_251_cmp_262_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     980  label while.exit_263: 
.while.exit_263:
              #                     1427 untrack i_221_2 
              #                    occupy a1 with i_221_2
              #                    release a1 with i_221_2
              #                     821  temp_199_ele_ptr_of_result_221_221 = GEP result_221_2:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_199_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     823  temp_200_ret_of_bubblesort_221_0 =  Call i32 bubblesort_0(temp_199_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_198_ret_of_revert_221_0
              #                    store to temp_198_ret_of_revert_221_0 in mem offset legal
    sw      a0,404(sp)
              #                    release a0 with temp_198_ret_of_revert_221_0
              #                    occupy a1 with temp_199_ele_ptr_of_result_221_221
              #                    store to temp_199_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,360(sp)
              #                    release a1 with temp_199_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_251_cmp_262_0
              #                    store to temp_251_cmp_262_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_251_cmp_262_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_199_ele_ptr_of_result_221_221_0
              #                    load from temp_199_ele_ptr_of_result_221_221 in mem
    ld      a0,360(sp)
              #                    arg load ended


    call    bubblesort
              #                     1428 untrack temp_199_ele_ptr_of_result_221_221 
              #                     1035 mu n_0_2:823 
              #                     1036 mu result_221_2:823 
              #                     1037 result_221_3 = chi result_221_2:823 
              #                     824  (nop) 
              #                     825  (nop) 
              #                     1215 i_221_5 = i32 0_0 
              #                    occupy a1 with i_221_5
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_271 
    j       .while.head_271
              #                    regtab     a0:Freed { symidx: temp_200_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_5, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     984  label while.head_271: 
.while.head_271:
              #                     983  temp_252_cmp_270_0 = icmp i32 Slt i_221_5, 32_0 
              #                    occupy a1 with i_221_5
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_252_cmp_270_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     987  br i1 temp_252_cmp_270_0, label while.body_271, label while.exit_271 
              #                    occupy a3 with temp_252_cmp_270_0
              #                    free a3
              #                    occupy a3 with temp_252_cmp_270_0
    bnez    a3, .while.body_271
              #                    free a3
    j       .while.exit_271
              #                    regtab     a0:Freed { symidx: temp_200_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_5, tracked: true } |     a3:Freed { symidx: temp_252_cmp_270_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     985  label while.body_271: 
.while.body_271:
              #                     957  temp_245_ptr_of_result_221_272 = GEP result_221_3:Array:i32:[Some(32_0)] [Some(i_221_5)] 
              #                    occupy a2 with temp_245_ptr_of_result_221_272
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_5
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     959  temp_246_ele_of_result_221_272_0 = load temp_245_ptr_of_result_221_272:ptr->i32 
              #                    occupy a2 with temp_245_ptr_of_result_221_272
              #                    occupy a5 with temp_246_ele_of_result_221_272_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     960  mu result_221_3:959 
              #                     961  (nop) 
              #                     962   Call void putint_0(temp_246_ele_of_result_221_272_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_200_ret_of_bubblesort_221_0
              #                    store to temp_200_ret_of_bubblesort_221_0 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with temp_200_ret_of_bubblesort_221_0
              #                    occupy a1 with i_221_5
              #                    store to i_221_5 in mem offset legal
    sw      a1,392(sp)
              #                    release a1 with i_221_5
              #                    occupy a2 with temp_245_ptr_of_result_221_272
              #                    store to temp_245_ptr_of_result_221_272 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_245_ptr_of_result_221_272
              #                    occupy a3 with temp_252_cmp_270_0
              #                    store to temp_252_cmp_270_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_252_cmp_270_0
              #                    occupy a5 with temp_246_ele_of_result_221_272_0
              #                    store to temp_246_ele_of_result_221_272_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_246_ele_of_result_221_272_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_246_ele_of_result_221_272_0_0
              #                    load from temp_246_ele_of_result_221_272_0 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                     964  temp_247_arithop_272_0 = Add i32 i_221_5, 1_0 
              #                    occupy a0 with i_221_5
              #                    load from i_221_5 in mem


    lw      a0,392(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_247_arithop_272_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     965  (nop) 
              #                     1216 i_221_5 = i32 temp_247_arithop_272_0 
              #                    occupy a2 with temp_247_arithop_272_0
              #                    occupy a0 with i_221_5
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_271 
              #                    occupy a0 with i_221_5
              #                    store to i_221_5 in mem offset legal
    sw      a0,392(sp)
              #                    release a0 with i_221_5
              #                    occupy a0 with temp_200_ret_of_bubblesort_221_0
              #                    load from temp_200_ret_of_bubblesort_221_0 in mem


    lw      a0,356(sp)
              #                    occupy a1 with i_221_5
              #                    load from i_221_5 in mem


    lw      a1,392(sp)
              #                    occupy a2 with temp_247_arithop_272_0
              #                    store to temp_247_arithop_272_0 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_247_arithop_272_0
    j       .while.head_271
              #                    regtab     a0:Freed { symidx: temp_200_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_5, tracked: true } |     a3:Freed { symidx: temp_252_cmp_270_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     986  label while.exit_271: 
.while.exit_271:
              #                     1429 untrack i_221_5 
              #                    occupy a1 with i_221_5
              #                    release a1 with i_221_5
              #                     827  temp_201_ele_ptr_of_result_221_221 = GEP result_221_3:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_201_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     829  temp_202_ret_of_getMid_221_0 =  Call i32 getMid_0(temp_201_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_200_ret_of_bubblesort_221_0
              #                    store to temp_200_ret_of_bubblesort_221_0 in mem offset legal
    sw      a0,356(sp)
              #                    release a0 with temp_200_ret_of_bubblesort_221_0
              #                    occupy a1 with temp_201_ele_ptr_of_result_221_221
              #                    store to temp_201_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,344(sp)
              #                    release a1 with temp_201_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_252_cmp_270_0
              #                    store to temp_252_cmp_270_0 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_252_cmp_270_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_201_ele_ptr_of_result_221_221_0
              #                    load from temp_201_ele_ptr_of_result_221_221 in mem
    ld      a0,344(sp)
              #                    arg load ended


    call    getMid
              #                     1434 untrack temp_201_ele_ptr_of_result_221_221 
              #                     1038 mu n_0_2:829 
              #                     1039 mu result_221_3:829 
              #                     1040 result_221_4 = chi result_221_3:829 
              #                     830  (nop) 
              #                     831   Call void putint_0(temp_202_ret_of_getMid_221_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_202_ret_of_getMid_221_0
              #                    store to temp_202_ret_of_getMid_221_0 in mem offset legal
    sw      a0,340(sp)
              #                    release a0 with temp_202_ret_of_getMid_221_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_202_ret_of_getMid_221_0_0
              #                    load from temp_202_ret_of_getMid_221_0 in mem


    lw      a0,340(sp)
              #                    arg load ended


    call    putint
              #                     1433 untrack temp_202_ret_of_getMid_221_0 
              #                     833  temp_203_ele_ptr_of_result_221_221 = GEP result_221_4:Array:i32:[Some(32_0)] [] 
              #                    occupy a0 with temp_203_ele_ptr_of_result_221_221
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,728
              #                    free a0
              #                     835  temp_204_ret_of_getMost_221_0 =  Call i32 getMost_0(temp_203_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_203_ele_ptr_of_result_221_221
              #                    store to temp_203_ele_ptr_of_result_221_221 in mem offset legal
    sd      a0,328(sp)
              #                    release a0 with temp_203_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_203_ele_ptr_of_result_221_221_0
              #                    load from temp_203_ele_ptr_of_result_221_221 in mem
    ld      a0,328(sp)
              #                    arg load ended


    call    getMost
              #                     1431 untrack temp_203_ele_ptr_of_result_221_221 
              #                     1041 mu n_0_2:835 
              #                     1042 mu result_221_4:835 
              #                     1043 result_221_5 = chi result_221_4:835 
              #                     836  (nop) 
              #                     837   Call void putint_0(temp_204_ret_of_getMost_221_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_204_ret_of_getMost_221_0
              #                    store to temp_204_ret_of_getMost_221_0 in mem offset legal
    sw      a0,324(sp)
              #                    release a0 with temp_204_ret_of_getMost_221_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_204_ret_of_getMost_221_0_0
              #                    load from temp_204_ret_of_getMost_221_0 in mem


    lw      a0,324(sp)
              #                    arg load ended


    call    putint
              #                     1435 untrack temp_204_ret_of_getMost_221_0 
              #                     839  temp_205_ele_ptr_of_arr_221_221 = GEP arr_221_33:Array:i32:[Some(32_0)] [] 
              #                    occupy a0 with temp_205_ele_ptr_of_arr_221_221
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,856
              #                    free a0
              #                     841  temp_206_ele_ptr_of_result_221_221 = GEP result_221_5:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_206_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     843  temp_207_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_205_ele_ptr_of_arr_221_221, temp_206_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_205_ele_ptr_of_arr_221_221
              #                    store to temp_205_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a0,312(sp)
              #                    release a0 with temp_205_ele_ptr_of_arr_221_221
              #                    occupy a1 with temp_206_ele_ptr_of_result_221_221
              #                    store to temp_206_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,304(sp)
              #                    release a1 with temp_206_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_205_ele_ptr_of_arr_221_221_0
              #                    load from temp_205_ele_ptr_of_arr_221_221 in mem
    ld      a0,312(sp)
              #                    occupy a1 with _anonymous_of_temp_206_ele_ptr_of_result_221_221_0
              #                    load from temp_206_ele_ptr_of_result_221_221 in mem
    ld      a1,304(sp)
              #                    arg load ended


    call    arrCopy
              #                     1436 untrack temp_205_ele_ptr_of_arr_221_221 
              #                     1430 untrack temp_206_ele_ptr_of_result_221_221 
              #                     1044 mu n_0_2:843 
              #                     1045 mu arr_221_33:843 
              #                     1046 mu result_221_5:843 
              #                     1047 arr_221_34 = chi arr_221_33:843 
              #                     1048 result_221_6 = chi result_221_5:843 
              #                     844  (nop) 
              #                     846  temp_208_ele_ptr_of_result_221_221 = GEP result_221_6:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_208_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     848  temp_209_ret_of_bubblesort_221_0 =  Call i32 bubblesort_0(temp_208_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_207_ret_of_arrCopy_221_0
              #                    store to temp_207_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with temp_207_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_208_ele_ptr_of_result_221_221
              #                    store to temp_208_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,288(sp)
              #                    release a1 with temp_208_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_208_ele_ptr_of_result_221_221_0
              #                    load from temp_208_ele_ptr_of_result_221_221 in mem
    ld      a0,288(sp)
              #                    arg load ended


    call    bubblesort
              #                     1432 untrack temp_208_ele_ptr_of_result_221_221 
              #                     1049 mu n_0_2:848 
              #                     1050 mu result_221_6:848 
              #                     1051 result_221_7 = chi result_221_6:848 
              #                     849  (nop) 
              #                     850  (nop) 
              #                     1217 i_221_8 = i32 0_0 
              #                    occupy a1 with i_221_8
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_284 
    j       .while.head_284
              #                    regtab     a0:Freed { symidx: temp_209_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_8, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     990  label while.head_284: 
.while.head_284:
              #                     989  temp_253_cmp_283_0 = icmp i32 Slt i_221_8, 32_0 
              #                    occupy a1 with i_221_8
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_253_cmp_283_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     993  br i1 temp_253_cmp_283_0, label while.body_284, label while.exit_284 
              #                    occupy a3 with temp_253_cmp_283_0
              #                    free a3
              #                    occupy a3 with temp_253_cmp_283_0
    bnez    a3, .while.body_284
              #                    free a3
    j       .while.exit_284
              #                    regtab     a0:Freed { symidx: temp_209_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_8, tracked: true } |     a3:Freed { symidx: temp_253_cmp_283_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     991  label while.body_284: 
.while.body_284:
              #                     947  temp_242_ptr_of_result_221_285 = GEP result_221_7:Array:i32:[Some(32_0)] [Some(i_221_8)] 
              #                    occupy a2 with temp_242_ptr_of_result_221_285
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_8
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     949  temp_243_ele_of_result_221_285_0 = load temp_242_ptr_of_result_221_285:ptr->i32 
              #                    occupy a2 with temp_242_ptr_of_result_221_285
              #                    occupy a5 with temp_243_ele_of_result_221_285_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     950  mu result_221_7:949 
              #                     951  (nop) 
              #                     952   Call void putint_0(temp_243_ele_of_result_221_285_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_209_ret_of_bubblesort_221_0
              #                    store to temp_209_ret_of_bubblesort_221_0 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_209_ret_of_bubblesort_221_0
              #                    occupy a1 with i_221_8
              #                    store to i_221_8 in mem offset legal
    sw      a1,388(sp)
              #                    release a1 with i_221_8
              #                    occupy a2 with temp_242_ptr_of_result_221_285
              #                    store to temp_242_ptr_of_result_221_285 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_242_ptr_of_result_221_285
              #                    occupy a3 with temp_253_cmp_283_0
              #                    store to temp_253_cmp_283_0 in mem offset legal
    sb      a3,5(sp)
              #                    release a3 with temp_253_cmp_283_0
              #                    occupy a5 with temp_243_ele_of_result_221_285_0
              #                    store to temp_243_ele_of_result_221_285_0 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_243_ele_of_result_221_285_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_243_ele_of_result_221_285_0_0
              #                    load from temp_243_ele_of_result_221_285_0 in mem


    lw      a0,44(sp)
              #                    arg load ended


    call    putint
              #                     954  temp_244_arithop_285_0 = Add i32 i_221_8, 1_0 
              #                    occupy a0 with i_221_8
              #                    load from i_221_8 in mem


    lw      a0,388(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_244_arithop_285_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     955  (nop) 
              #                     1218 i_221_8 = i32 temp_244_arithop_285_0 
              #                    occupy a2 with temp_244_arithop_285_0
              #                    occupy a0 with i_221_8
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_284 
              #                    occupy a0 with i_221_8
              #                    store to i_221_8 in mem offset legal
    sw      a0,388(sp)
              #                    release a0 with i_221_8
              #                    occupy a0 with temp_209_ret_of_bubblesort_221_0
              #                    load from temp_209_ret_of_bubblesort_221_0 in mem


    lw      a0,284(sp)
              #                    occupy a1 with i_221_8
              #                    load from i_221_8 in mem


    lw      a1,388(sp)
              #                    occupy a2 with temp_244_arithop_285_0
              #                    store to temp_244_arithop_285_0 in mem offset legal
    sw      a2,40(sp)
              #                    release a2 with temp_244_arithop_285_0
    j       .while.head_284
              #                    regtab     a0:Freed { symidx: temp_209_ret_of_bubblesort_221_0, tracked: true } |     a1:Freed { symidx: i_221_8, tracked: true } |     a3:Freed { symidx: temp_253_cmp_283_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     992  label while.exit_284: 
.while.exit_284:
              #                     1437 untrack i_221_8 
              #                    occupy a1 with i_221_8
              #                    release a1 with i_221_8
              #                     852  temp_210_ele_ptr_of_arr_221_221 = GEP arr_221_34:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_210_ele_ptr_of_arr_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,856
              #                    free a1
              #                     854  temp_211_ele_ptr_of_result_221_221 = GEP result_221_7:Array:i32:[Some(32_0)] [] 
              #                    occupy a2 with temp_211_ele_ptr_of_result_221_221
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     856  temp_212_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_210_ele_ptr_of_arr_221_221, temp_211_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_209_ret_of_bubblesort_221_0
              #                    store to temp_209_ret_of_bubblesort_221_0 in mem offset legal
    sw      a0,284(sp)
              #                    release a0 with temp_209_ret_of_bubblesort_221_0
              #                    occupy a1 with temp_210_ele_ptr_of_arr_221_221
              #                    store to temp_210_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a1,272(sp)
              #                    release a1 with temp_210_ele_ptr_of_arr_221_221
              #                    occupy a2 with temp_211_ele_ptr_of_result_221_221
              #                    store to temp_211_ele_ptr_of_result_221_221 in mem offset legal
    sd      a2,264(sp)
              #                    release a2 with temp_211_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_253_cmp_283_0
              #                    store to temp_253_cmp_283_0 in mem offset legal
    sb      a3,5(sp)
              #                    release a3 with temp_253_cmp_283_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_210_ele_ptr_of_arr_221_221_0
              #                    load from temp_210_ele_ptr_of_arr_221_221 in mem
    ld      a0,272(sp)
              #                    occupy a1 with _anonymous_of_temp_211_ele_ptr_of_result_221_221_0
              #                    load from temp_211_ele_ptr_of_result_221_221 in mem
    ld      a1,264(sp)
              #                    arg load ended


    call    arrCopy
              #                     1440 untrack temp_211_ele_ptr_of_result_221_221 
              #                     1438 untrack temp_210_ele_ptr_of_arr_221_221 
              #                     1052 mu n_0_2:856 
              #                     1053 mu arr_221_34:856 
              #                     1054 mu result_221_7:856 
              #                     1055 arr_221_35 = chi arr_221_34:856 
              #                     1056 result_221_8 = chi result_221_7:856 
              #                     857  (nop) 
              #                     859  temp_213_ele_ptr_of_result_221_221 = GEP result_221_8:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_213_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     861  temp_214_ret_of_insertsort_221_0 =  Call i32 insertsort_0(temp_213_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_212_ret_of_arrCopy_221_0
              #                    store to temp_212_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_212_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_213_ele_ptr_of_result_221_221
              #                    store to temp_213_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,248(sp)
              #                    release a1 with temp_213_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_213_ele_ptr_of_result_221_221_0
              #                    load from temp_213_ele_ptr_of_result_221_221 in mem
    ld      a0,248(sp)
              #                    arg load ended


    call    insertsort
              #                     1439 untrack temp_213_ele_ptr_of_result_221_221 
              #                     1057 mu result_221_8:861 
              #                     1058 mu n_0_2:861 
              #                     1059 result_221_9 = chi result_221_8:861 
              #                     862  (nop) 
              #                     863  (nop) 
              #                     1219 i_221_11 = i32 0_0 
              #                    occupy a1 with i_221_11
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_293 
    j       .while.head_293
              #                    regtab     a0:Freed { symidx: temp_214_ret_of_insertsort_221_0, tracked: true } |     a1:Freed { symidx: i_221_11, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     996  label while.head_293: 
.while.head_293:
              #                     995  temp_254_cmp_292_0 = icmp i32 Slt i_221_11, 32_0 
              #                    occupy a1 with i_221_11
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_254_cmp_292_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     999  br i1 temp_254_cmp_292_0, label while.body_293, label while.exit_293 
              #                    occupy a3 with temp_254_cmp_292_0
              #                    free a3
              #                    occupy a3 with temp_254_cmp_292_0
    bnez    a3, .while.body_293
              #                    free a3
    j       .while.exit_293
              #                    regtab     a0:Freed { symidx: temp_214_ret_of_insertsort_221_0, tracked: true } |     a1:Freed { symidx: i_221_11, tracked: true } |     a3:Freed { symidx: temp_254_cmp_292_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     997  label while.body_293: 
.while.body_293:
              #                     937  temp_239_ptr_of_result_221_294 = GEP result_221_9:Array:i32:[Some(32_0)] [Some(i_221_11)] 
              #                    occupy a2 with temp_239_ptr_of_result_221_294
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_11
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     939  temp_240_ele_of_result_221_294_0 = load temp_239_ptr_of_result_221_294:ptr->i32 
              #                    occupy a2 with temp_239_ptr_of_result_221_294
              #                    occupy a5 with temp_240_ele_of_result_221_294_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     940  mu result_221_9:939 
              #                     941  (nop) 
              #                     942   Call void putint_0(temp_240_ele_of_result_221_294_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_214_ret_of_insertsort_221_0
              #                    store to temp_214_ret_of_insertsort_221_0 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_214_ret_of_insertsort_221_0
              #                    occupy a1 with i_221_11
              #                    store to i_221_11 in mem offset legal
    sw      a1,384(sp)
              #                    release a1 with i_221_11
              #                    occupy a2 with temp_239_ptr_of_result_221_294
              #                    store to temp_239_ptr_of_result_221_294 in mem offset legal
    sd      a2,64(sp)
              #                    release a2 with temp_239_ptr_of_result_221_294
              #                    occupy a3 with temp_254_cmp_292_0
              #                    store to temp_254_cmp_292_0 in mem offset legal
    sb      a3,4(sp)
              #                    release a3 with temp_254_cmp_292_0
              #                    occupy a5 with temp_240_ele_of_result_221_294_0
              #                    store to temp_240_ele_of_result_221_294_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_240_ele_of_result_221_294_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_240_ele_of_result_221_294_0_0
              #                    load from temp_240_ele_of_result_221_294_0 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                     944  temp_241_arithop_294_0 = Add i32 i_221_11, 1_0 
              #                    occupy a0 with i_221_11
              #                    load from i_221_11 in mem


    lw      a0,384(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_241_arithop_294_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     945  (nop) 
              #                     1220 i_221_11 = i32 temp_241_arithop_294_0 
              #                    occupy a2 with temp_241_arithop_294_0
              #                    occupy a0 with i_221_11
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_293 
              #                    occupy a0 with i_221_11
              #                    store to i_221_11 in mem offset legal
    sw      a0,384(sp)
              #                    release a0 with i_221_11
              #                    occupy a0 with temp_214_ret_of_insertsort_221_0
              #                    load from temp_214_ret_of_insertsort_221_0 in mem


    lw      a0,244(sp)
              #                    occupy a1 with i_221_11
              #                    load from i_221_11 in mem


    lw      a1,384(sp)
              #                    occupy a2 with temp_241_arithop_294_0
              #                    store to temp_241_arithop_294_0 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with temp_241_arithop_294_0
    j       .while.head_293
              #                    regtab     a0:Freed { symidx: temp_214_ret_of_insertsort_221_0, tracked: true } |     a1:Freed { symidx: i_221_11, tracked: true } |     a3:Freed { symidx: temp_254_cmp_292_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     998  label while.exit_293: 
.while.exit_293:
              #                     1441 untrack i_221_11 
              #                    occupy a1 with i_221_11
              #                    release a1 with i_221_11
              #                     865  temp_215_ele_ptr_of_arr_221_221 = GEP arr_221_35:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_215_ele_ptr_of_arr_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,856
              #                    free a1
              #                     867  temp_216_ele_ptr_of_result_221_221 = GEP result_221_9:Array:i32:[Some(32_0)] [] 
              #                    occupy a2 with temp_216_ele_ptr_of_result_221_221
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     869  temp_217_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_215_ele_ptr_of_arr_221_221, temp_216_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_214_ret_of_insertsort_221_0
              #                    store to temp_214_ret_of_insertsort_221_0 in mem offset legal
    sw      a0,244(sp)
              #                    release a0 with temp_214_ret_of_insertsort_221_0
              #                    occupy a1 with temp_215_ele_ptr_of_arr_221_221
              #                    store to temp_215_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a1,232(sp)
              #                    release a1 with temp_215_ele_ptr_of_arr_221_221
              #                    occupy a2 with temp_216_ele_ptr_of_result_221_221
              #                    store to temp_216_ele_ptr_of_result_221_221 in mem offset legal
    sd      a2,224(sp)
              #                    release a2 with temp_216_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_254_cmp_292_0
              #                    store to temp_254_cmp_292_0 in mem offset legal
    sb      a3,4(sp)
              #                    release a3 with temp_254_cmp_292_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_215_ele_ptr_of_arr_221_221_0
              #                    load from temp_215_ele_ptr_of_arr_221_221 in mem
    ld      a0,232(sp)
              #                    occupy a1 with _anonymous_of_temp_216_ele_ptr_of_result_221_221_0
              #                    load from temp_216_ele_ptr_of_result_221_221 in mem
    ld      a1,224(sp)
              #                    arg load ended


    call    arrCopy
              #                     1444 untrack temp_215_ele_ptr_of_arr_221_221 
              #                     1442 untrack temp_216_ele_ptr_of_result_221_221 
              #                     1060 mu n_0_2:869 
              #                     1061 mu arr_221_35:869 
              #                     1062 mu result_221_9:869 
              #                     1063 arr_221_36 = chi arr_221_35:869 
              #                     1064 result_221_10 = chi result_221_9:869 
              #                     870  (nop) 
              #                     871  (nop) 
              #                     872  (nop) 
              #                     874  temp_218_ele_ptr_of_result_221_221 = GEP result_221_10:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_218_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     876  temp_219_ret_of_QuickSort_221_0 =  Call i32 QuickSort_0(temp_218_ele_ptr_of_result_221_221, 0_0, 31_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_217_ret_of_arrCopy_221_0
              #                    store to temp_217_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,220(sp)
              #                    release a0 with temp_217_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_218_ele_ptr_of_result_221_221
              #                    store to temp_218_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,208(sp)
              #                    release a1 with temp_218_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_218_ele_ptr_of_result_221_221_0
              #                    load from temp_218_ele_ptr_of_result_221_221 in mem
    ld      a0,208(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_31_0_0
    li      a2, 31
              #                    arg load ended


    call    QuickSort
              #                     1443 untrack temp_218_ele_ptr_of_result_221_221 
              #                     1065 mu result_221_10:876 
              #                     1066 result_221_11 = chi result_221_10:876 
              #                     877  (nop) 
              #                     1221 i_221_14 = i32 0_0 
              #                    occupy a1 with i_221_14
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_303 
    j       .while.head_303
              #                    regtab     a0:Freed { symidx: temp_219_ret_of_QuickSort_221_0, tracked: true } |     a1:Freed { symidx: i_221_14, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     1002 label while.head_303: 
.while.head_303:
              #                     1001 temp_255_cmp_302_0 = icmp i32 Slt i_221_14, 32_0 
              #                    occupy a1 with i_221_14
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_255_cmp_302_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1005 br i1 temp_255_cmp_302_0, label while.body_303, label while.exit_303 
              #                    occupy a3 with temp_255_cmp_302_0
              #                    free a3
              #                    occupy a3 with temp_255_cmp_302_0
    bnez    a3, .while.body_303
              #                    free a3
    j       .while.exit_303
              #                    regtab     a0:Freed { symidx: temp_219_ret_of_QuickSort_221_0, tracked: true } |     a1:Freed { symidx: i_221_14, tracked: true } |     a3:Freed { symidx: temp_255_cmp_302_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1003 label while.body_303: 
.while.body_303:
              #                     927  temp_236_ptr_of_result_221_304 = GEP result_221_11:Array:i32:[Some(32_0)] [Some(i_221_14)] 
              #                    occupy a2 with temp_236_ptr_of_result_221_304
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_14
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     929  temp_237_ele_of_result_221_304_0 = load temp_236_ptr_of_result_221_304:ptr->i32 
              #                    occupy a2 with temp_236_ptr_of_result_221_304
              #                    occupy a5 with temp_237_ele_of_result_221_304_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     930  mu result_221_11:929 
              #                     931  (nop) 
              #                     932   Call void putint_0(temp_237_ele_of_result_221_304_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_219_ret_of_QuickSort_221_0
              #                    store to temp_219_ret_of_QuickSort_221_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_219_ret_of_QuickSort_221_0
              #                    occupy a1 with i_221_14
              #                    store to i_221_14 in mem offset legal
    sw      a1,380(sp)
              #                    release a1 with i_221_14
              #                    occupy a2 with temp_236_ptr_of_result_221_304
              #                    store to temp_236_ptr_of_result_221_304 in mem offset legal
    sd      a2,80(sp)
              #                    release a2 with temp_236_ptr_of_result_221_304
              #                    occupy a3 with temp_255_cmp_302_0
              #                    store to temp_255_cmp_302_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_255_cmp_302_0
              #                    occupy a5 with temp_237_ele_of_result_221_304_0
              #                    store to temp_237_ele_of_result_221_304_0 in mem offset legal
    sw      a5,76(sp)
              #                    release a5 with temp_237_ele_of_result_221_304_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_237_ele_of_result_221_304_0_0
              #                    load from temp_237_ele_of_result_221_304_0 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    putint
              #                     934  temp_238_arithop_304_0 = Add i32 i_221_14, 1_0 
              #                    occupy a0 with i_221_14
              #                    load from i_221_14 in mem


    lw      a0,380(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_238_arithop_304_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     935  (nop) 
              #                     1222 i_221_14 = i32 temp_238_arithop_304_0 
              #                    occupy a2 with temp_238_arithop_304_0
              #                    occupy a0 with i_221_14
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_303 
              #                    occupy a0 with i_221_14
              #                    store to i_221_14 in mem offset legal
    sw      a0,380(sp)
              #                    release a0 with i_221_14
              #                    occupy a0 with temp_219_ret_of_QuickSort_221_0
              #                    load from temp_219_ret_of_QuickSort_221_0 in mem


    lw      a0,204(sp)
              #                    occupy a1 with i_221_14
              #                    load from i_221_14 in mem


    lw      a1,380(sp)
              #                    occupy a2 with temp_238_arithop_304_0
              #                    store to temp_238_arithop_304_0 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with temp_238_arithop_304_0
    j       .while.head_303
              #                    regtab     a0:Freed { symidx: temp_219_ret_of_QuickSort_221_0, tracked: true } |     a1:Freed { symidx: i_221_14, tracked: true } |     a3:Freed { symidx: temp_255_cmp_302_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1004 label while.exit_303: 
.while.exit_303:
              #                     1445 untrack i_221_14 
              #                    occupy a1 with i_221_14
              #                    release a1 with i_221_14
              #                     879  temp_220_ele_ptr_of_arr_221_221 = GEP arr_221_36:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_220_ele_ptr_of_arr_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,856
              #                    free a1
              #                     881  temp_221_ele_ptr_of_result_221_221 = GEP result_221_11:Array:i32:[Some(32_0)] [] 
              #                    occupy a2 with temp_221_ele_ptr_of_result_221_221
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     883  temp_222_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_220_ele_ptr_of_arr_221_221, temp_221_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_219_ret_of_QuickSort_221_0
              #                    store to temp_219_ret_of_QuickSort_221_0 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with temp_219_ret_of_QuickSort_221_0
              #                    occupy a1 with temp_220_ele_ptr_of_arr_221_221
              #                    store to temp_220_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a1,192(sp)
              #                    release a1 with temp_220_ele_ptr_of_arr_221_221
              #                    occupy a2 with temp_221_ele_ptr_of_result_221_221
              #                    store to temp_221_ele_ptr_of_result_221_221 in mem offset legal
    sd      a2,184(sp)
              #                    release a2 with temp_221_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_255_cmp_302_0
              #                    store to temp_255_cmp_302_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_255_cmp_302_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_220_ele_ptr_of_arr_221_221_0
              #                    load from temp_220_ele_ptr_of_arr_221_221 in mem
    ld      a0,192(sp)
              #                    occupy a1 with _anonymous_of_temp_221_ele_ptr_of_result_221_221_0
              #                    load from temp_221_ele_ptr_of_result_221_221 in mem
    ld      a1,184(sp)
              #                    arg load ended


    call    arrCopy
              #                     1448 untrack temp_221_ele_ptr_of_result_221_221 
              #                     1447 untrack temp_220_ele_ptr_of_arr_221_221 
              #                     1067 mu n_0_2:883 
              #                     1068 mu arr_221_36:883 
              #                     1069 mu result_221_11:883 
              #                     1070 arr_221_37 = chi arr_221_36:883 
              #                     1071 result_221_12 = chi result_221_11:883 
              #                     884  (nop) 
              #                     886  temp_223_ele_ptr_of_result_221_221 = GEP result_221_12:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_223_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     888  temp_224_ret_of_calSum_221_0 =  Call i32 calSum_0(temp_223_ele_ptr_of_result_221_221, 4_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_222_ret_of_arrCopy_221_0
              #                    store to temp_222_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_222_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_223_ele_ptr_of_result_221_221
              #                    store to temp_223_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with temp_223_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_223_ele_ptr_of_result_221_221_0
              #                    load from temp_223_ele_ptr_of_result_221_221 in mem
    ld      a0,168(sp)
              #                    occupy a1 with _anonymous_of_4_0_0
    li      a1, 4
              #                    arg load ended


    call    calSum
              #                     1446 untrack temp_223_ele_ptr_of_result_221_221 
              #                     1072 mu n_0_2:888 
              #                     1073 mu result_221_12:888 
              #                     1074 result_221_13 = chi result_221_12:888 
              #                     889  (nop) 
              #                     890  (nop) 
              #                     1223 i_221_17 = i32 0_0 
              #                    occupy a1 with i_221_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_312 
    j       .while.head_312
              #                    regtab     a0:Freed { symidx: temp_224_ret_of_calSum_221_0, tracked: true } |     a1:Freed { symidx: i_221_17, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     1008 label while.head_312: 
.while.head_312:
              #                     1007 temp_256_cmp_311_0 = icmp i32 Slt i_221_17, 32_0 
              #                    occupy a1 with i_221_17
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_256_cmp_311_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1011 br i1 temp_256_cmp_311_0, label while.body_312, label while.exit_312 
              #                    occupy a3 with temp_256_cmp_311_0
              #                    free a3
              #                    occupy a3 with temp_256_cmp_311_0
    bnez    a3, .while.body_312
              #                    free a3
    j       .while.exit_312
              #                    regtab     a0:Freed { symidx: temp_224_ret_of_calSum_221_0, tracked: true } |     a1:Freed { symidx: i_221_17, tracked: true } |     a3:Freed { symidx: temp_256_cmp_311_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1009 label while.body_312: 
.while.body_312:
              #                     917  temp_233_ptr_of_result_221_313 = GEP result_221_13:Array:i32:[Some(32_0)] [Some(i_221_17)] 
              #                    occupy a2 with temp_233_ptr_of_result_221_313
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_17
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     919  temp_234_ele_of_result_221_313_0 = load temp_233_ptr_of_result_221_313:ptr->i32 
              #                    occupy a2 with temp_233_ptr_of_result_221_313
              #                    occupy a5 with temp_234_ele_of_result_221_313_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     920  mu result_221_13:919 
              #                     921  (nop) 
              #                     922   Call void putint_0(temp_234_ele_of_result_221_313_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_224_ret_of_calSum_221_0
              #                    store to temp_224_ret_of_calSum_221_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_224_ret_of_calSum_221_0
              #                    occupy a1 with i_221_17
              #                    store to i_221_17 in mem offset legal
    sw      a1,376(sp)
              #                    release a1 with i_221_17
              #                    occupy a2 with temp_233_ptr_of_result_221_313
              #                    store to temp_233_ptr_of_result_221_313 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_233_ptr_of_result_221_313
              #                    occupy a3 with temp_256_cmp_311_0
              #                    store to temp_256_cmp_311_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_256_cmp_311_0
              #                    occupy a5 with temp_234_ele_of_result_221_313_0
              #                    store to temp_234_ele_of_result_221_313_0 in mem offset legal
    sw      a5,92(sp)
              #                    release a5 with temp_234_ele_of_result_221_313_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_234_ele_of_result_221_313_0_0
              #                    load from temp_234_ele_of_result_221_313_0 in mem


    lw      a0,92(sp)
              #                    arg load ended


    call    putint
              #                     924  temp_235_arithop_313_0 = Add i32 i_221_17, 1_0 
              #                    occupy a0 with i_221_17
              #                    load from i_221_17 in mem


    lw      a0,376(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_235_arithop_313_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     925  (nop) 
              #                     1224 i_221_17 = i32 temp_235_arithop_313_0 
              #                    occupy a2 with temp_235_arithop_313_0
              #                    occupy a0 with i_221_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_312 
              #                    occupy a0 with i_221_17
              #                    store to i_221_17 in mem offset legal
    sw      a0,376(sp)
              #                    release a0 with i_221_17
              #                    occupy a0 with temp_224_ret_of_calSum_221_0
              #                    load from temp_224_ret_of_calSum_221_0 in mem


    lw      a0,164(sp)
              #                    occupy a1 with i_221_17
              #                    load from i_221_17 in mem


    lw      a1,376(sp)
              #                    occupy a2 with temp_235_arithop_313_0
              #                    store to temp_235_arithop_313_0 in mem offset legal
    sw      a2,88(sp)
              #                    release a2 with temp_235_arithop_313_0
    j       .while.head_312
              #                    regtab     a0:Freed { symidx: temp_224_ret_of_calSum_221_0, tracked: true } |     a1:Freed { symidx: i_221_17, tracked: true } |     a3:Freed { symidx: temp_256_cmp_311_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     1010 label while.exit_312: 
.while.exit_312:
              #                     1449 untrack i_221_17 
              #                    occupy a1 with i_221_17
              #                    release a1 with i_221_17
              #                     892  temp_225_ele_ptr_of_arr_221_221 = GEP arr_221_37:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_225_ele_ptr_of_arr_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,856
              #                    free a1
              #                     894  temp_226_ele_ptr_of_result_221_221 = GEP result_221_13:Array:i32:[Some(32_0)] [] 
              #                    occupy a2 with temp_226_ele_ptr_of_result_221_221
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     896  temp_227_ret_of_arrCopy_221_0 =  Call i32 arrCopy_0(temp_225_ele_ptr_of_arr_221_221, temp_226_ele_ptr_of_result_221_221) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_224_ret_of_calSum_221_0
              #                    store to temp_224_ret_of_calSum_221_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_224_ret_of_calSum_221_0
              #                    occupy a1 with temp_225_ele_ptr_of_arr_221_221
              #                    store to temp_225_ele_ptr_of_arr_221_221 in mem offset legal
    sd      a1,152(sp)
              #                    release a1 with temp_225_ele_ptr_of_arr_221_221
              #                    occupy a2 with temp_226_ele_ptr_of_result_221_221
              #                    store to temp_226_ele_ptr_of_result_221_221 in mem offset legal
    sd      a2,144(sp)
              #                    release a2 with temp_226_ele_ptr_of_result_221_221
              #                    occupy a3 with temp_256_cmp_311_0
              #                    store to temp_256_cmp_311_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_256_cmp_311_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_225_ele_ptr_of_arr_221_221_0
              #                    load from temp_225_ele_ptr_of_arr_221_221 in mem
    ld      a0,152(sp)
              #                    occupy a1 with _anonymous_of_temp_226_ele_ptr_of_result_221_221_0
              #                    load from temp_226_ele_ptr_of_result_221_221 in mem
    ld      a1,144(sp)
              #                    arg load ended


    call    arrCopy
              #                     1451 untrack temp_226_ele_ptr_of_result_221_221 
              #                     1450 untrack temp_225_ele_ptr_of_arr_221_221 
              #                     1075 mu n_0_2:896 
              #                     1076 mu arr_221_37:896 
              #                     1077 mu result_221_13:896 
              #                     1078 arr_221_38 = chi arr_221_37:896 
              #                     1079 result_221_14 = chi result_221_13:896 
              #                     897  (nop) 
              #                     899  temp_228_ele_ptr_of_result_221_221 = GEP result_221_14:Array:i32:[Some(32_0)] [] 
              #                    occupy a1 with temp_228_ele_ptr_of_result_221_221
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,728
              #                    free a1
              #                     901  temp_229_ret_of_avgPooling_221_0 =  Call i32 avgPooling_0(temp_228_ele_ptr_of_result_221_221, 3_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_227_ret_of_arrCopy_221_0
              #                    store to temp_227_ret_of_arrCopy_221_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_227_ret_of_arrCopy_221_0
              #                    occupy a1 with temp_228_ele_ptr_of_result_221_221
              #                    store to temp_228_ele_ptr_of_result_221_221 in mem offset legal
    sd      a1,128(sp)
              #                    release a1 with temp_228_ele_ptr_of_result_221_221
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_228_ele_ptr_of_result_221_221_0
              #                    load from temp_228_ele_ptr_of_result_221_221 in mem
    ld      a0,128(sp)
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    arg load ended


    call    avgPooling
              #                     1452 untrack temp_228_ele_ptr_of_result_221_221 
              #                     1080 mu result_221_14:901 
              #                     1081 mu n_0_2:901 
              #                     1082 result_221_15 = chi result_221_14:901 
              #                     902  (nop) 
              #                     903  (nop) 
              #                     1225 i_221_20 = i32 0_0 
              #                    occupy a1 with i_221_20
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_321 
    j       .while.head_321
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_avgPooling_221_0, tracked: true } |     a1:Freed { symidx: i_221_20, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     1014 label while.head_321: 
.while.head_321:
              #                     1013 temp_257_cmp_320_0 = icmp i32 Slt i_221_20, 32_0 
              #                    occupy a1 with i_221_20
              #                    occupy a2 with 32_0
    li      a2, 32
              #                    occupy a3 with temp_257_cmp_320_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     1017 br i1 temp_257_cmp_320_0, label while.body_321, label while.exit_321 
              #                    occupy a3 with temp_257_cmp_320_0
              #                    free a3
              #                    occupy a3 with temp_257_cmp_320_0
    bnez    a3, .while.body_321
              #                    free a3
    j       .while.exit_321
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_avgPooling_221_0, tracked: true } |     a1:Freed { symidx: i_221_20, tracked: true } |     a3:Freed { symidx: temp_257_cmp_320_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1015 label while.body_321: 
.while.body_321:
              #                     907  temp_230_ptr_of_result_221_322 = GEP result_221_15:Array:i32:[Some(32_0)] [Some(i_221_20)] 
              #                    occupy a2 with temp_230_ptr_of_result_221_322
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_221_20
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,728
              #                    free a2
              #                     909  temp_231_ele_of_result_221_322_0 = load temp_230_ptr_of_result_221_322:ptr->i32 
              #                    occupy a2 with temp_230_ptr_of_result_221_322
              #                    occupy a5 with temp_231_ele_of_result_221_322_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     910  mu result_221_15:909 
              #                     911  (nop) 
              #                     912   Call void putint_0(temp_231_ele_of_result_221_322_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_229_ret_of_avgPooling_221_0
              #                    store to temp_229_ret_of_avgPooling_221_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_229_ret_of_avgPooling_221_0
              #                    occupy a1 with i_221_20
              #                    store to i_221_20 in mem offset legal
    sw      a1,372(sp)
              #                    release a1 with i_221_20
              #                    occupy a2 with temp_230_ptr_of_result_221_322
              #                    store to temp_230_ptr_of_result_221_322 in mem offset legal
    sd      a2,112(sp)
              #                    release a2 with temp_230_ptr_of_result_221_322
              #                    occupy a3 with temp_257_cmp_320_0
              #                    store to temp_257_cmp_320_0 in mem offset legal
    sb      a3,1(sp)
              #                    release a3 with temp_257_cmp_320_0
              #                    occupy a5 with temp_231_ele_of_result_221_322_0
              #                    store to temp_231_ele_of_result_221_322_0 in mem offset legal
    sw      a5,108(sp)
              #                    release a5 with temp_231_ele_of_result_221_322_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_231_ele_of_result_221_322_0_0
              #                    load from temp_231_ele_of_result_221_322_0 in mem


    lw      a0,108(sp)
              #                    arg load ended


    call    putint
              #                     914  temp_232_arithop_322_0 = Add i32 i_221_20, 1_0 
              #                    occupy a0 with i_221_20
              #                    load from i_221_20 in mem


    lw      a0,372(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_232_arithop_322_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     915  (nop) 
              #                     1226 i_221_20 = i32 temp_232_arithop_322_0 
              #                    occupy a2 with temp_232_arithop_322_0
              #                    occupy a0 with i_221_20
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_321 
              #                    occupy a0 with i_221_20
              #                    store to i_221_20 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with i_221_20
              #                    occupy a0 with temp_229_ret_of_avgPooling_221_0
              #                    load from temp_229_ret_of_avgPooling_221_0 in mem


    lw      a0,124(sp)
              #                    occupy a1 with i_221_20
              #                    load from i_221_20 in mem


    lw      a1,372(sp)
              #                    occupy a2 with temp_232_arithop_322_0
              #                    store to temp_232_arithop_322_0 in mem offset legal
    sw      a2,104(sp)
              #                    release a2 with temp_232_arithop_322_0
    j       .while.head_321
              #                    regtab     a0:Freed { symidx: temp_229_ret_of_avgPooling_221_0, tracked: true } |     a1:Freed { symidx: i_221_20, tracked: true } |     a3:Freed { symidx: temp_257_cmp_320_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     1016 label while.exit_321: 
.while.exit_321:
              #                     1453 untrack i_221_20 
              #                    occupy a1 with i_221_20
              #                    release a1 with i_221_20
              #                     1083 mu n_0_2:905 
              #                     905  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,992(sp)
              #                    load from s0_main_0 in mem
    ld      s0,984(sp)
              #                    occupy a0 with temp_229_ret_of_avgPooling_221_0
              #                    store to temp_229_ret_of_avgPooling_221_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_229_ret_of_avgPooling_221_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,1000
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     15   global i32 n_0 
    .type n,@object
n:
    .word 0
