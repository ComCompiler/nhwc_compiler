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
              #                     20   alloc i32 [i_19] 
              #                     22   alloc i32 [j_19] 
              #                     28   alloc i32 [temp_0_arithop_25] 
              #                     31   alloc i32 [temp_1_arithop_29] 
              #                     34   alloc i32 [tmp_32] 
              #                     36   alloc i32 [temp_2_arithop_32] 
              #                     38   alloc ptr->i32 [temp_3_ptr_of_arr_17_32] 
              #                     40   alloc i32 [temp_4_ele_of_arr_17_32] 
              #                     44   alloc i32 [temp_5_arithop_32] 
              #                     46   alloc ptr->i32 [temp_6_ptr_of_arr_17_32] 
              #                     48   alloc ptr->i32 [temp_7_ptr_of_arr_17_32] 
              #                     50   alloc i32 [temp_8_ele_of_arr_17_32] 
              #                     55   alloc ptr->i32 [temp_9_ptr_of_arr_17_32] 
              #                     59   alloc i32 [temp_10_value_from_ptr_23] 
              #                     62   alloc i32 [temp_11_arithop_23] 
              #                     64   alloc i1 [temp_12_cmp_23] 
              #                     72   alloc i32 [temp_13_value_from_ptr_27] 
              #                     75   alloc i32 [temp_14_arithop_27] 
              #                     77   alloc i32 [temp_15_arithop_27] 
              #                     79   alloc i1 [temp_16_cmp_27] 
              #                     85   alloc i32 [temp_17_arithop_30] 
              #                     87   alloc ptr->i32 [temp_18_ptr_of_arr_17_30] 
              #                     89   alloc i32 [temp_19_ele_of_arr_17_30] 
              #                     92   alloc ptr->i32 [temp_20_ptr_of_arr_17_30] 
              #                     94   alloc i32 [temp_21_ele_of_arr_17_30] 
              #                     97   alloc i1 [temp_22_cmp_30] 
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     17    
              #                     21    
              #                     23    
              #                     24   (nop) 
              #                     60   temp_10_value_from_ptr_23_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_10_value_from_ptr_23_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     61   mu n_0_0:60 
              #                     73   (nop) 
              #                     74   mu n_0_0:73 
              #                     193  i_19_2 = i32 0_0 
              #                    occupy a3 with i_19_2
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     66   label while.head_24: 
.while.head_24:
              #                     63   temp_11_arithop_23_0 = Sub i32 temp_10_value_from_ptr_23_0, 1_0 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_11_arithop_23_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_10_value_from_ptr_23_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Occupied { symidx: temp_11_arithop_23_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:24


    subw    a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     65   temp_12_cmp_23_0 = icmp i32 Slt i_19_2, temp_11_arithop_23_0 
              #                    occupy a3 with i_19_2
              #                    occupy a4 with temp_11_arithop_23_0
              #                    occupy a5 with temp_12_cmp_23_0
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     69   br i1 temp_12_cmp_23_0, label while.body_24, label while.exit_24 
              #                    occupy a5 with temp_12_cmp_23_0
              #                    free a5
              #                    occupy a5 with temp_12_cmp_23_0
    bnez    a5, .while.body_24
              #                    free a5
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     67   label while.body_24: 
.while.body_24:
              #                     27   (nop) 
              #                     76   temp_14_arithop_27_0 = Sub i32 temp_10_value_from_ptr_23_0, i_19_2 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    occupy a3 with i_19_2
              #                    occupy a1 with temp_14_arithop_27_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: temp_14_arithop_27_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_10_value_from_ptr_23_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: i_19_2, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24


    subw    a1,a2,a3
              #                    free a2
              #                    free a3
              #                    free a1
              #                     194  j_19_3 = i32 0_0 
              #                    occupy a6 with j_19_3
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_28 
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     81   label while.head_28: 
.while.head_28:
              #                     78   temp_15_arithop_27_0 = Sub i32 temp_14_arithop_27_0, 1_0 
              #                    occupy a1 with temp_14_arithop_27_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_15_arithop_27_0
              #                    regtab:    a0:Freed { symidx: arr_17, tracked: true } |     a1:Occupied { symidx: temp_14_arithop_27_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     a7:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s1:Occupied { symidx: temp_15_arithop_27_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                     80   temp_16_cmp_27_0 = icmp i32 Slt j_19_3, temp_15_arithop_27_0 
              #                    occupy a6 with j_19_3
              #                    occupy s1 with temp_15_arithop_27_0
              #                    occupy s2 with temp_16_cmp_27_0
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                     84   br i1 temp_16_cmp_27_0, label while.body_28, label while.exit_28 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    free s2
              #                    occupy s2 with temp_16_cmp_27_0
    bnez    s2, .while.body_28
              #                    free s2
    j       .while.exit_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     82   label while.body_28: 
.while.body_28:
              #                     86   temp_17_arithop_30_0 = Add i32 j_19_3, 1_0 
              #                    occupy a6 with j_19_3
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_17_arithop_30_0
    ADDW    s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                     88   temp_18_ptr_of_arr_17_30 = GEP arr_17:Array:i32:[None] [Some(temp_17_arithop_30_0)] 
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
              #                     90   temp_19_ele_of_arr_17_30_0 = load temp_18_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    occupy s3 with temp_19_ele_of_arr_17_30_0
    lw      s3,0(s4)
              #                    free s3
              #                    occupy s3 with temp_19_ele_of_arr_17_30_0
              #                    store to temp_19_ele_of_arr_17_30_0 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_19_ele_of_arr_17_30_0
              #                    free s4
              #                     91   mu arr_17:90 
              #                     93   temp_20_ptr_of_arr_17_30 = GEP arr_17:Array:i32:[None] [Some(j_19_3)] 
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
              #                     95   temp_21_ele_of_arr_17_30_0 = load temp_20_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
    lw      a6,0(s3)
              #                    free a6
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    store to temp_21_ele_of_arr_17_30_0 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_21_ele_of_arr_17_30_0
              #                    free s3
              #                     96   mu arr_17:95 
              #                     98   temp_22_cmp_30_0 = icmp i32 Sgt temp_21_ele_of_arr_17_30_0, temp_19_ele_of_arr_17_30_0 
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
              #                     101  br i1 temp_22_cmp_30_0, label branch_true_31, label branch_false_31 
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
              #                     99   label branch_true_31: 
.branch_true_31:
              #                     204  untrack temp_15_arithop_27_0 
              #                    occupy s1 with temp_15_arithop_27_0
              #                    release s1 with temp_15_arithop_27_0
              #                     203  untrack temp_22_cmp_30_0 
              #                     202  untrack temp_20_ptr_of_arr_17_30 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    release s3 with temp_20_ptr_of_arr_17_30
              #                     201  untrack temp_16_cmp_27_0 
              #                    occupy s2 with temp_16_cmp_27_0
              #                    release s2 with temp_16_cmp_27_0
              #                     35    
              #                     37   (nop) 
              #                     39   (nop) 
              #                     41   (nop) 
              #                     42   mu arr_17:41 
              #                     43   (nop) 
              #                     45   (nop) 
              #                     47   (nop) 
              #                     49   (nop) 
              #                     51   (nop) 
              #                     52   mu arr_17:51 
              #                     53   store temp_21_ele_of_arr_17_30_0:i32 temp_18_ptr_of_arr_17_30:ptr->i32 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    load from temp_21_ele_of_arr_17_30_0 in mem


    lw      a6,4(sp)
    sw      a6,0(s4)
              #                    free a6
              #                    free s4
              #                     208  untrack temp_21_ele_of_arr_17_30_0 
              #                    occupy a6 with temp_21_ele_of_arr_17_30_0
              #                    release a6 with temp_21_ele_of_arr_17_30_0
              #                     205  untrack temp_18_ptr_of_arr_17_30 
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    release s4 with temp_18_ptr_of_arr_17_30
              #                     54   arr_17 = chi arr_17:53 
              #                     56   temp_9_ptr_of_arr_17_32 = GEP arr_17:ptr->i32 [Some(j_19_3)] 
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
              #                     57   store temp_19_ele_of_arr_17_30_0:i32 temp_9_ptr_of_arr_17_32:ptr->i32 
              #                    occupy a6 with temp_9_ptr_of_arr_17_32
              #                    occupy s2 with temp_19_ele_of_arr_17_30_0
              #                    load from temp_19_ele_of_arr_17_30_0 in mem


    lw      s2,20(sp)
    sw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                     207  untrack temp_9_ptr_of_arr_17_32 
              #                    occupy a6 with temp_9_ptr_of_arr_17_32
              #                    release a6 with temp_9_ptr_of_arr_17_32
              #                     206  untrack temp_19_ele_of_arr_17_30_0 
              #                    occupy s2 with temp_19_ele_of_arr_17_30_0
              #                    release s2 with temp_19_ele_of_arr_17_30_0
              #                     58   arr_17 = chi arr_17:57 
              #                          jump label: branch_false_31 
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    load from temp_20_ptr_of_arr_17_30 in mem
    ld      s3,8(sp)
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    load from temp_18_ptr_of_arr_17_30 in mem
    ld      s4,24(sp)
              #                    occupy s2 with temp_16_cmp_27_0
              #                    load from temp_16_cmp_27_0 in mem


    lb      s2,43(sp)
              #                    occupy s1 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with j_19_3
              #                    occupy s1 with temp_15_arithop_27_0
              #                    load from temp_15_arithop_27_0 in mem


    lw      s1,44(sp)
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |     s3:Freed { symidx: temp_20_ptr_of_arr_17_30, tracked: true } |     s4:Freed { symidx: temp_18_ptr_of_arr_17_30, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     100  label branch_false_31: 
.branch_false_31:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |     s3:Freed { symidx: temp_20_ptr_of_arr_17_30, tracked: true } |     s4:Freed { symidx: temp_18_ptr_of_arr_17_30, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     32   (nop) 
              #                     33   (nop) 
              #                     195  j_19_3 = i32 temp_17_arithop_30_0 
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
              #                    occupy a6 with j_19_3
              #                    load from j_19_3 in mem


    lw      a6,108(sp)
              #                    occupy s3 with temp_20_ptr_of_arr_17_30
              #                    store to temp_20_ptr_of_arr_17_30 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_20_ptr_of_arr_17_30
              #                    occupy s4 with temp_18_ptr_of_arr_17_30
              #                    store to temp_18_ptr_of_arr_17_30 in mem offset legal
    sd      s4,24(sp)
              #                    release s4 with temp_18_ptr_of_arr_17_30
              #                    occupy s2 with temp_16_cmp_27_0
              #                    store to temp_16_cmp_27_0 in mem offset legal
    sb      s2,43(sp)
              #                    release s2 with temp_16_cmp_27_0
              #                    occupy s1 with temp_15_arithop_27_0
              #                    store to temp_15_arithop_27_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_15_arithop_27_0
    j       .while.head_28
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a1:Freed { symidx: temp_14_arithop_27_0, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |     a6:Freed { symidx: j_19_3, tracked: true } |     s1:Freed { symidx: temp_15_arithop_27_0, tracked: true } |     s2:Freed { symidx: temp_16_cmp_27_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     83   label while.exit_28: 
.while.exit_28:
              #                     29   temp_0_arithop_25_0 = Add i32 i_19_2, 1_0 
              #                    occupy a3 with i_19_2
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_0_arithop_25_0
    ADDW    s3,a3,a7
              #                    free a3
              #                    free a7
              #                    free s3
              #                     30   (nop) 
              #                     196  i_19_2 = i32 temp_0_arithop_25_0 
              #                    occupy s3 with temp_0_arithop_25_0
              #                    occupy a3 with i_19_2
    mv      a3, s3
              #                    free s3
              #                    free a3
              #                          jump label: while.head_24 
              #                    occupy a5 with temp_12_cmp_23_0
              #                    store to temp_12_cmp_23_0 in mem offset legal
    sb      a5,55(sp)
              #                    release a5 with temp_12_cmp_23_0
              #                    occupy a6 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with j_19_3
              #                    occupy a4 with temp_11_arithop_23_0
              #                    store to temp_11_arithop_23_0 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with temp_11_arithop_23_0
              #                    occupy s3 with temp_0_arithop_25_0
              #                    store to temp_0_arithop_25_0 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_0_arithop_25_0
              #                    occupy s2 with temp_16_cmp_27_0
              #                    store to temp_16_cmp_27_0 in mem offset legal
    sb      s2,43(sp)
              #                    release s2 with temp_16_cmp_27_0
              #                    occupy a1 with temp_14_arithop_27_0
              #                    store to temp_14_arithop_27_0 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with temp_14_arithop_27_0
              #                    occupy s1 with temp_15_arithop_27_0
              #                    store to temp_15_arithop_27_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_15_arithop_27_0
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: arr_17, tracked: true } |     a2:Freed { symidx: temp_10_value_from_ptr_23_0, tracked: true } |     a3:Freed { symidx: i_19_2, tracked: true } |     a4:Freed { symidx: temp_11_arithop_23_0, tracked: true } |     a5:Freed { symidx: temp_12_cmp_23_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     68   label while.exit_24: 
.while.exit_24:
              #                     200  untrack temp_10_value_from_ptr_23_0 
              #                    occupy a2 with temp_10_value_from_ptr_23_0
              #                    release a2 with temp_10_value_from_ptr_23_0
              #                     199  untrack i_19_2 
              #                    occupy a3 with i_19_2
              #                    release a3 with i_19_2
              #                     180  mu arr_17:26 
              #                     209  untrack arr_17 
              #                    occupy a0 with arr_17
              #                    release a0 with arr_17
              #                     26   ret 0_0 
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
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 176|s0_main:8 at 168|a:40 at 128|temp_23_ptr_of_a_41:8 at 120|temp_24_ptr_of_a_41:8 at 112|temp_25_ptr_of_a_41:8 at 104|temp_26_ptr_of_a_41:8 at 96|temp_27_ptr_of_a_41:8 at 88|temp_28_ptr_of_a_41:8 at 80|temp_29_ptr_of_a_41:8 at 72|temp_30_ptr_of_a_41:8 at 64|temp_31_ptr_of_a_41:8 at 56|temp_32_ptr_of_a_41:8 at 48|i _s41 _i0:4 at 44|i _s41 _i2:4 at 40|temp_33_ele_ptr_of_a_41:8 at 32|temp_34_ret_of_bubblesort _s41 _i0:4 at 28|tmp _s58 _i0:4 at 24|temp_35_ptr_of_a_41:8 at 16|temp_36_ele_of_a_41 _s58 _i0:4 at 12|temp_37_arithop _s58 _i0:4 at 8|temp_38_value_from_ptr _s56 _i0:4 at 4|temp_39_cmp _s56 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-184
              #                    store to ra_main_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                     181  n_0_1 = chi n_0_0:19 
              #                     105  alloc Array:i32:[Some(10_0)] [a_41] 
              #                     106  alloc ptr->i32 [temp_23_ptr_of_a_41_41] 
              #                     110  alloc ptr->i32 [temp_24_ptr_of_a_41_41] 
              #                     114  alloc ptr->i32 [temp_25_ptr_of_a_41_41] 
              #                     118  alloc ptr->i32 [temp_26_ptr_of_a_41_41] 
              #                     122  alloc ptr->i32 [temp_27_ptr_of_a_41_41] 
              #                     126  alloc ptr->i32 [temp_28_ptr_of_a_41_41] 
              #                     130  alloc ptr->i32 [temp_29_ptr_of_a_41_41] 
              #                     134  alloc ptr->i32 [temp_30_ptr_of_a_41_41] 
              #                     138  alloc ptr->i32 [temp_31_ptr_of_a_41_41] 
              #                     142  alloc ptr->i32 [temp_32_ptr_of_a_41_41] 
              #                     146  alloc i32 [i_41] 
              #                     148  alloc ptr->i32 [temp_33_ele_ptr_of_a_41_41] 
              #                     150  alloc i32 [temp_34_ret_of_bubblesort_41] 
              #                     155  alloc i32 [tmp_58] 
              #                     157  alloc ptr->i32 [temp_35_ptr_of_a_41_58] 
              #                     159  alloc i32 [temp_36_ele_of_a_41_58] 
              #                     166  alloc i32 [temp_37_arithop_58] 
              #                     169  alloc i32 [temp_38_value_from_ptr_56] 
              #                     172  alloc i1 [temp_39_cmp_56] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     102  store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     103  n_0_2 = chi n_0_1:102 
              #                     104   
              #                     107  temp_23_ptr_of_a_41_41 = GEP a_41_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_23_ptr_of_a_41_41
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     108  store 4_0:i32 temp_23_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_23_ptr_of_a_41_41
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     219  untrack temp_23_ptr_of_a_41_41 
              #                    occupy a2 with temp_23_ptr_of_a_41_41
              #                    release a2 with temp_23_ptr_of_a_41_41
              #                     109  a_41_1 = chi a_41_0:108 
              #                     111  temp_24_ptr_of_a_41_41 = GEP a_41_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_24_ptr_of_a_41_41
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     112  store 3_0:i32 temp_24_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_24_ptr_of_a_41_41
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     210  untrack temp_24_ptr_of_a_41_41 
              #                    occupy a2 with temp_24_ptr_of_a_41_41
              #                    release a2 with temp_24_ptr_of_a_41_41
              #                     113  a_41_2 = chi a_41_1:112 
              #                     115  temp_25_ptr_of_a_41_41 = GEP a_41_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_25_ptr_of_a_41_41
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     116  store 9_0:i32 temp_25_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_25_ptr_of_a_41_41
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     216  untrack temp_25_ptr_of_a_41_41 
              #                    occupy a2 with temp_25_ptr_of_a_41_41
              #                    release a2 with temp_25_ptr_of_a_41_41
              #                     117  a_41_3 = chi a_41_2:116 
              #                     119  temp_26_ptr_of_a_41_41 = GEP a_41_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_26_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     120  store 2_0:i32 temp_26_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_26_ptr_of_a_41_41
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     215  untrack temp_26_ptr_of_a_41_41 
              #                    occupy a2 with temp_26_ptr_of_a_41_41
              #                    release a2 with temp_26_ptr_of_a_41_41
              #                     121  a_41_4 = chi a_41_3:120 
              #                     123  temp_27_ptr_of_a_41_41 = GEP a_41_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_27_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     124  store 0_0:i32 temp_27_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_27_ptr_of_a_41_41
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     214  untrack temp_27_ptr_of_a_41_41 
              #                    occupy a2 with temp_27_ptr_of_a_41_41
              #                    release a2 with temp_27_ptr_of_a_41_41
              #                     125  a_41_5 = chi a_41_4:124 
              #                     127  temp_28_ptr_of_a_41_41 = GEP a_41_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_28_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     128  store 1_0:i32 temp_28_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_28_ptr_of_a_41_41
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     213  untrack temp_28_ptr_of_a_41_41 
              #                    occupy a2 with temp_28_ptr_of_a_41_41
              #                    release a2 with temp_28_ptr_of_a_41_41
              #                     129  a_41_6 = chi a_41_5:128 
              #                     131  temp_29_ptr_of_a_41_41 = GEP a_41_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_29_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     132  store 6_0:i32 temp_29_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_29_ptr_of_a_41_41
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     212  untrack temp_29_ptr_of_a_41_41 
              #                    occupy a2 with temp_29_ptr_of_a_41_41
              #                    release a2 with temp_29_ptr_of_a_41_41
              #                     133  a_41_7 = chi a_41_6:132 
              #                     135  temp_30_ptr_of_a_41_41 = GEP a_41_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_30_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     136  store 5_0:i32 temp_30_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_30_ptr_of_a_41_41
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     220  untrack temp_30_ptr_of_a_41_41 
              #                    occupy a2 with temp_30_ptr_of_a_41_41
              #                    release a2 with temp_30_ptr_of_a_41_41
              #                     137  a_41_8 = chi a_41_7:136 
              #                     139  temp_31_ptr_of_a_41_41 = GEP a_41_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_31_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     140  store 7_0:i32 temp_31_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_31_ptr_of_a_41_41
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     211  untrack temp_31_ptr_of_a_41_41 
              #                    occupy a2 with temp_31_ptr_of_a_41_41
              #                    release a2 with temp_31_ptr_of_a_41_41
              #                     141  a_41_9 = chi a_41_8:140 
              #                     143  temp_32_ptr_of_a_41_41 = GEP a_41_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_32_ptr_of_a_41_41
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     144  store 8_0:i32 temp_32_ptr_of_a_41_41:ptr->i32 
              #                    occupy a2 with temp_32_ptr_of_a_41_41
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     221  untrack temp_32_ptr_of_a_41_41 
              #                    occupy a2 with temp_32_ptr_of_a_41_41
              #                    release a2 with temp_32_ptr_of_a_41_41
              #                     145  a_41_10 = chi a_41_9:144 
              #                     147   
              #                     149  temp_33_ele_ptr_of_a_41_41 = GEP a_41_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_33_ele_ptr_of_a_41_41
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     151  temp_34_ret_of_bubblesort_41_0 =  Call i32 bubblesort_0(temp_33_ele_ptr_of_a_41_41) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_33_ele_ptr_of_a_41_41
              #                    store to temp_33_ele_ptr_of_a_41_41 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_33_ele_ptr_of_a_41_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_ele_ptr_of_a_41_41_0
              #                    load from temp_33_ele_ptr_of_a_41_41 in mem
    ld      a0,32(sp)
              #                    arg load ended


    call    bubblesort
              #                     218  untrack temp_33_ele_ptr_of_a_41_41 
              #                     182  mu n_0_2:151 
              #                     183  mu a_41_10:151 
              #                     184  a_41_11 = chi a_41_10:151 
              #                     152  (nop) 
              #                     197  i_41_2 = i32 temp_34_ret_of_bubblesort_41_0 
              #                    occupy a0 with temp_34_ret_of_bubblesort_41_0
              #                    occupy a1 with i_41_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     217  untrack temp_34_ret_of_bubblesort_41_0 
              #                    occupy a0 with temp_34_ret_of_bubblesort_41_0
              #                    release a0 with temp_34_ret_of_bubblesort_41_0
              #                          jump label: while.head_57 
    j       .while.head_57
              #                    regtab     a1:Freed { symidx: i_41_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     174  label while.head_57: 
.while.head_57:
              #                     170  temp_38_value_from_ptr_56_0 = load *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a2 with temp_38_value_from_ptr_56_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     171  mu n_0_2:170 
              #                     173  temp_39_cmp_56_0 = icmp i32 Slt i_41_2, temp_38_value_from_ptr_56_0 
              #                    occupy a1 with i_41_2
              #                    occupy a2 with temp_38_value_from_ptr_56_0
              #                    occupy a3 with temp_39_cmp_56_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     177  br i1 temp_39_cmp_56_0, label while.body_57, label while.exit_57 
              #                    occupy a3 with temp_39_cmp_56_0
              #                    free a3
              #                    occupy a3 with temp_39_cmp_56_0
    bnez    a3, .while.body_57
              #                    free a3
    j       .while.exit_57
              #                    regtab     a1:Freed { symidx: i_41_2, tracked: true } |     a2:Freed { symidx: temp_38_value_from_ptr_56_0, tracked: true } |     a3:Freed { symidx: temp_39_cmp_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     175  label while.body_57: 
.while.body_57:
              #                     156   
              #                     158  temp_35_ptr_of_a_41_58 = GEP a_41_11:Array:i32:[Some(10_0)] [Some(i_41_2)] 
              #                    occupy a0 with temp_35_ptr_of_a_41_58
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_41_2
    mv      a4, a1
              #                    free a1
    add     a0,a0,a4
              #                    free a4
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,128
              #                    free a0
              #                     160  temp_36_ele_of_a_41_58_0 = load temp_35_ptr_of_a_41_58:ptr->i32 
              #                    occupy a0 with temp_35_ptr_of_a_41_58
              #                    occupy a5 with temp_36_ele_of_a_41_58_0
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                     161  mu a_41_11:160 
              #                     162  (nop) 
              #                     163   Call void putint_0(temp_36_ele_of_a_41_58_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_35_ptr_of_a_41_58
              #                    store to temp_35_ptr_of_a_41_58 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_35_ptr_of_a_41_58
              #                    occupy a1 with i_41_2
              #                    store to i_41_2 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with i_41_2
              #                    occupy a2 with temp_38_value_from_ptr_56_0
              #                    store to temp_38_value_from_ptr_56_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_38_value_from_ptr_56_0
              #                    occupy a3 with temp_39_cmp_56_0
              #                    store to temp_39_cmp_56_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_39_cmp_56_0
              #                    occupy a5 with temp_36_ele_of_a_41_58_0
              #                    store to temp_36_ele_of_a_41_58_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_36_ele_of_a_41_58_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ele_of_a_41_58_0_0
              #                    load from temp_36_ele_of_a_41_58_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     164  (nop) 
              #                     165   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     167  temp_37_arithop_58_0 = Add i32 i_41_2, 1_0 
              #                    occupy a0 with i_41_2
              #                    load from i_41_2 in mem


    lw      a0,40(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_37_arithop_58_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     168  (nop) 
              #                     198  i_41_2 = i32 temp_37_arithop_58_0 
              #                    occupy a2 with temp_37_arithop_58_0
              #                    occupy a0 with i_41_2
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_57 
              #                    occupy a0 with i_41_2
              #                    store to i_41_2 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with i_41_2
              #                    occupy a1 with i_41_2
              #                    load from i_41_2 in mem


    lw      a1,40(sp)
              #                    occupy a2 with temp_37_arithop_58_0
              #                    store to temp_37_arithop_58_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_37_arithop_58_0
    j       .while.head_57
              #                    regtab     a1:Freed { symidx: i_41_2, tracked: true } |     a2:Freed { symidx: temp_38_value_from_ptr_56_0, tracked: true } |     a3:Freed { symidx: temp_39_cmp_56_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     176  label while.exit_57: 
.while.exit_57:
              #                     222  untrack i_41_2 
              #                    occupy a1 with i_41_2
              #                    release a1 with i_41_2
              #                     185  mu n_0_2:154 
              #                     154  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,176(sp)
              #                    load from s0_main_0 in mem
    ld      s0,168(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,184
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
