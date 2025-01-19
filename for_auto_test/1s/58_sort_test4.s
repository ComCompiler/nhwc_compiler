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
              #                     18   Define select_sort_0 "A_17,n_17_0," -> select_sort_ret_0 
    .globl select_sort
    .type select_sort,@function
select_sort:
              #                    mem layout:|ra_select_sort:8 at 208|s0_select_sort:8 at 200|A:8 at 192|A:8 at 184|A:8 at 176|A:8 at 168|A:8 at 160|A _s17 _i5:8 at 152|n _s17 _i0:4 at 148|i _s19 _i0:4 at 144|i _s19 _i2:4 at 140|j _s19 _i0:4 at 136|j _s19 _i1:4 at 132|j _s19 _i3:4 at 128|min _s19 _i0:4 at 124|min _s19 _i1:4 at 120|min _s19 _i2:4 at 116|min _s19 _i3:4 at 112|min _s19 _i4:4 at 108|min _s19 _i5:4 at 104|temp_0_arithop _s26 _i0:4 at 100|tmp _s39 _i0:4 at 96|temp_2_ptr_of_A_17:8 at 88|temp_3_ele_of_A_17 _s39 _i0:4 at 84|none:4 at 80|temp_4_ptr_of_A_17:8 at 72|temp_5_ptr_of_A_17:8 at 64|temp_6_ele_of_A_17 _s39 _i0:4 at 60|none:4 at 56|temp_7_ptr_of_A_17:8 at 48|temp_8_arithop _s31 _i0:4 at 44|temp_9_arithop _s24 _i0:4 at 40|temp_10_cmp _s24 _i0:1 at 39|temp_11_cmp _s29 _i0:1 at 38|temp_12_cmp _s37 _i0:1 at 37|none:5 at 32|temp_13_ptr_of_A_17:8 at 24|temp_14_ele_of_A_17 _s32 _i0:4 at 20|none:4 at 16|temp_15_ptr_of_A_17:8 at 8|temp_16_ele_of_A_17 _s32 _i0:4 at 4|temp_17_cmp _s32 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-216
              #                    store to ra_select_sort_0 in mem offset legal
    sd      ra,208(sp)
              #                    store to s0_select_sort_0 in mem offset legal
    sd      s0,200(sp)
    addi    s0,sp,216
              #                     20   alloc i32 [i_19] 
              #                     22   alloc i32 [j_19] 
              #                     24   alloc i32 [min_19] 
              #                     30   alloc i32 [temp_0_arithop_26] 
              #                     33   alloc i32 [temp_1_arithop_26] 
              #                     36   alloc i32 [tmp_39] 
              #                     38   alloc ptr->i32 [temp_2_ptr_of_A_17_39] 
              #                     40   alloc i32 [temp_3_ele_of_A_17_39] 
              #                     44   alloc ptr->i32 [temp_4_ptr_of_A_17_39] 
              #                     46   alloc ptr->i32 [temp_5_ptr_of_A_17_39] 
              #                     48   alloc i32 [temp_6_ele_of_A_17_39] 
              #                     53   alloc ptr->i32 [temp_7_ptr_of_A_17_39] 
              #                     57   alloc i32 [temp_8_arithop_31] 
              #                     61   alloc i32 [temp_9_arithop_24] 
              #                     63   alloc i1 [temp_10_cmp_24] 
              #                     71   alloc i1 [temp_11_cmp_29] 
              #                     77   alloc i1 [temp_12_cmp_37] 
              #                     82   alloc ptr->i32 [temp_13_ptr_of_A_17_32] 
              #                     84   alloc i32 [temp_14_ele_of_A_17_32] 
              #                     87   alloc ptr->i32 [temp_15_ptr_of_A_17_32] 
              #                     89   alloc i32 [temp_16_ele_of_A_17_32] 
              #                     92   alloc i1 [temp_17_cmp_32] 
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     17    
              #                     21    
              #                     23    
              #                     25    
              #                     26   (nop) 
              #                     62   temp_9_arithop_24_0 = Sub i32 n_17_0, 1_0 
              #                    occupy a1 with n_17_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_9_arithop_24_0
              #                    regtab:    a0:Freed { symidx: A_17, tracked: true } |     a1:Occupied { symidx: n_17_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_9_arithop_24_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     194  i_19_2 = i32 0_0 
              #                    occupy a4 with i_19_2
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     65   label while.head_25: 
.while.head_25:
              #                     64   temp_10_cmp_24_0 = icmp i32 Slt i_19_2, temp_9_arithop_24_0 
              #                    occupy a4 with i_19_2
              #                    occupy a3 with temp_9_arithop_24_0
              #                    occupy a2 with temp_10_cmp_24_0
    slt     a2,a4,a3
              #                    free a4
              #                    free a3
              #                    free a2
              #                     68   br i1 temp_10_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a2 with temp_10_cmp_24_0
              #                    free a2
              #                    occupy a2 with temp_10_cmp_24_0
    bnez    a2, .while.body_25
              #                    free a2
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     66   label while.body_25: 
.while.body_25:
              #                     29   min_19_2 = i32 i_19_2 
              #                    occupy a4 with i_19_2
              #                    occupy a5 with min_19_2
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                     31   temp_0_arithop_26_0 = Add i32 i_19_2, 1_0 
              #                    occupy a4 with i_19_2
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_0_arithop_26_0
    ADDW    a7,a4,a6
              #                    free a4
              #                    free a6
              #                    free a7
              #                     32   (nop) 
              #                     195  j_19_3 = i32 temp_0_arithop_26_0 
              #                    occupy a7 with temp_0_arithop_26_0
              #                    occupy s1 with j_19_3
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                     196  min_19_3 = i32 min_19_2 
              #                    occupy a5 with min_19_2
              #                    occupy s2 with min_19_3
    mv      s2, a5
              #                    free a5
              #                    free s2
              #                          jump label: while.head_30 
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     73   label while.head_30: 
.while.head_30:
              #                     72   temp_11_cmp_29_0 = icmp i32 Slt j_19_3, n_17_0 
              #                    occupy s1 with j_19_3
              #                    occupy a1 with n_17_0
              #                    occupy a6 with temp_11_cmp_29_0
    slt     a6,s1,a1
              #                    free s1
              #                    free a1
              #                    free a6
              #                     76   br i1 temp_11_cmp_29_0, label while.body_30, label while.exit_30 
              #                    occupy a6 with temp_11_cmp_29_0
              #                    free a6
              #                    occupy a6 with temp_11_cmp_29_0
    bnez    a6, .while.body_30
              #                    free a6
    j       .while.exit_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     74   label while.body_30: 
.while.body_30:
              #                     83   temp_13_ptr_of_A_17_32 = GEP A_17:Array:i32:[None] [Some(j_19_3)] 
              #                    occupy s3 with temp_13_ptr_of_A_17_32
    li      s3, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_19_3
    mv      s4, s1
              #                    free s1
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy a0 with A_17
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                     85   temp_14_ele_of_A_17_32_0 = load temp_13_ptr_of_A_17_32:ptr->i32 
              #                    occupy s3 with temp_13_ptr_of_A_17_32
              #                    occupy s5 with temp_14_ele_of_A_17_32_0
    lw      s5,0(s3)
              #                    free s5
              #                    occupy s5 with temp_14_ele_of_A_17_32_0
              #                    store to temp_14_ele_of_A_17_32_0 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_14_ele_of_A_17_32_0
              #                    free s3
              #                     86   mu A_17:85 
              #                     88   temp_15_ptr_of_A_17_32 = GEP A_17:Array:i32:[None] [Some(min_19_3)] 
              #                    occupy s5 with temp_15_ptr_of_A_17_32
    li      s5, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with min_19_3
    mv      s6, s2
              #                    free s2
              #                    occupy s2 with min_19_3
              #                    store to min_19_3 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with min_19_3
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with A_17
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                     90   temp_16_ele_of_A_17_32_0 = load temp_15_ptr_of_A_17_32:ptr->i32 
              #                    occupy s5 with temp_15_ptr_of_A_17_32
              #                    occupy s2 with temp_16_ele_of_A_17_32_0
    lw      s2,0(s5)
              #                    free s2
              #                    occupy s2 with temp_16_ele_of_A_17_32_0
              #                    store to temp_16_ele_of_A_17_32_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_16_ele_of_A_17_32_0
              #                    free s5
              #                     91   mu A_17:90 
              #                     93   temp_17_cmp_32_0 = icmp i32 Sgt temp_16_ele_of_A_17_32_0, temp_14_ele_of_A_17_32_0 
              #                    occupy s2 with temp_16_ele_of_A_17_32_0
              #                    load from temp_16_ele_of_A_17_32_0 in mem


    lw      s2,4(sp)
              #                    occupy s6 with temp_14_ele_of_A_17_32_0
              #                    load from temp_14_ele_of_A_17_32_0 in mem


    lw      s6,20(sp)
              #                    occupy s7 with temp_17_cmp_32_0
    slt     s7,s6,s2
              #                    free s2
              #                    occupy s2 with temp_16_ele_of_A_17_32_0
              #                    store to temp_16_ele_of_A_17_32_0 in mem offset legal
    sw      s2,4(sp)
              #                    release s2 with temp_16_ele_of_A_17_32_0
              #                    free s6
              #                    occupy s6 with temp_14_ele_of_A_17_32_0
              #                    store to temp_14_ele_of_A_17_32_0 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_14_ele_of_A_17_32_0
              #                    free s7
              #                    occupy s7 with temp_17_cmp_32_0
              #                    store to temp_17_cmp_32_0 in mem offset legal
    sb      s7,3(sp)
              #                    release s7 with temp_17_cmp_32_0
              #                     96   br i1 temp_17_cmp_32_0, label branch_true_33, label UP_17_0 
              #                    occupy s2 with temp_17_cmp_32_0
              #                    load from temp_17_cmp_32_0 in mem


    lb      s2,3(sp)
              #                    free s2
              #                    occupy s2 with temp_17_cmp_32_0
              #                    store to temp_17_cmp_32_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_17_cmp_32_0
              #                    occupy s2 with temp_17_cmp_32_0
              #                    load from temp_17_cmp_32_0 in mem


    lb      s2,3(sp)
    bnez    s2, .branch_true_33
              #                    free s2
              #                    occupy s2 with temp_17_cmp_32_0
              #                    store to temp_17_cmp_32_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_17_cmp_32_0
    j       .UP_17_0
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s3:Freed { symidx: temp_13_ptr_of_A_17_32, tracked: true } |     s5:Freed { symidx: temp_15_ptr_of_A_17_32, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     94   label branch_true_33: 
.branch_true_33:
              #                     212  untrack temp_14_ele_of_A_17_32_0 
              #                     211  untrack temp_17_cmp_32_0 
              #                     210  untrack temp_11_cmp_29_0 
              #                    occupy a6 with temp_11_cmp_29_0
              #                    release a6 with temp_11_cmp_29_0
              #                     209  untrack temp_13_ptr_of_A_17_32 
              #                    occupy s3 with temp_13_ptr_of_A_17_32
              #                    release s3 with temp_13_ptr_of_A_17_32
              #                     208  untrack temp_15_ptr_of_A_17_32 
              #                    occupy s5 with temp_15_ptr_of_A_17_32
              #                    release s5 with temp_15_ptr_of_A_17_32
              #                     207  untrack temp_16_ele_of_A_17_32_0 
              #                     60   min_19_4 = i32 j_19_3 
              #                    occupy s1 with j_19_3
              #                    occupy a6 with min_19_4
    mv      a6, s1
              #                    free s1
              #                    free a6
              #                     197  min_19_5 = i32 min_19_4 
              #                    occupy a6 with min_19_4
              #                    occupy s2 with min_19_5
    mv      s2, a6
              #                    free a6
              #                    free s2
              #                     213  untrack min_19_4 
              #                    occupy a6 with min_19_4
              #                    release a6 with min_19_4
              #                          jump label: branch_false_33 
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     95   label branch_false_33: 
.branch_false_33:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_5, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     58   temp_8_arithop_31_0 = Add i32 j_19_3, 1_0 
              #                    occupy s1 with j_19_3
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s3 with temp_8_arithop_31_0
    ADDW    s3,s1,a6
              #                    free s1
              #                    free a6
              #                    free s3
              #                     59   (nop) 
              #                     198  min_19_3 = i32 min_19_5 
              #                    occupy s2 with min_19_5
              #                    occupy s4 with min_19_3
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with min_19_5
              #                    store to min_19_5 in mem offset legal
    sw      s2,104(sp)
              #                    release s2 with min_19_5
              #                    free s4
              #                     199  j_19_3 = i32 temp_8_arithop_31_0 
              #                    occupy s3 with temp_8_arithop_31_0
              #                    occupy s1 with j_19_3
    mv      s1, s3
              #                    free s3
              #                    free s1
              #                          jump label: while.head_30 
              #                    occupy s4 with min_19_3
              #                    store to min_19_3 in mem offset legal
    sw      s4,112(sp)
              #                    release s4 with min_19_3
              #                    occupy s3 with temp_8_arithop_31_0
              #                    store to temp_8_arithop_31_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_8_arithop_31_0
              #                    occupy s2 with min_19_3
              #                    load from min_19_3 in mem


    lw      s2,112(sp)
    j       .while.head_30
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s3:Freed { symidx: temp_13_ptr_of_A_17_32, tracked: true } |     s5:Freed { symidx: temp_15_ptr_of_A_17_32, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     193  label UP_17_0: 
.UP_17_0:
              #                     200  min_19_5 = i32 min_19_3 
              #                    occupy s2 with min_19_3
              #                    load from min_19_3 in mem


    lw      s2,112(sp)
              #                    occupy s4 with min_19_5
    mv      s4, s2
              #                    free s2
              #                    occupy s2 with min_19_3
              #                    store to min_19_3 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with min_19_3
              #                    free s4
              #                    occupy s4 with min_19_5
              #                    store to min_19_5 in mem offset legal
    sw      s4,104(sp)
              #                    release s4 with min_19_5
              #                          jump label: branch_false_33 
              #                    occupy a6 with temp_11_cmp_29_0
              #                    store to temp_11_cmp_29_0 in mem offset legal
    sb      a6,38(sp)
              #                    release a6 with temp_11_cmp_29_0
              #                    occupy s3 with temp_13_ptr_of_A_17_32
              #                    store to temp_13_ptr_of_A_17_32 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_13_ptr_of_A_17_32
              #                    occupy s2 with min_19_5
              #                    load from min_19_5 in mem


    lw      s2,104(sp)
              #                    occupy s5 with temp_15_ptr_of_A_17_32
              #                    store to temp_15_ptr_of_A_17_32 in mem offset legal
    sd      s5,8(sp)
              #                    release s5 with temp_15_ptr_of_A_17_32
    j       .branch_false_33
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     75   label while.exit_30: 
.while.exit_30:
              #                     78   temp_12_cmp_37_0 = icmp i32 Ne min_19_3, i_19_2 
              #                    occupy s2 with min_19_3
              #                    occupy a4 with i_19_2
              #                    occupy s3 with temp_12_cmp_37_0
    xor     s3,s2,a4
    snez    s3, s3
              #                    free s2
              #                    free a4
              #                    free s3
              #                     81   br i1 temp_12_cmp_37_0, label branch_true_38, label branch_false_38 
              #                    occupy s3 with temp_12_cmp_37_0
              #                    free s3
              #                    occupy s3 with temp_12_cmp_37_0
    bnez    s3, .branch_true_38
              #                    free s3
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |     s3:Freed { symidx: temp_12_cmp_37_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     79   label branch_true_38: 
.branch_true_38:
              #                     217  untrack temp_10_cmp_24_0 
              #                    occupy a2 with temp_10_cmp_24_0
              #                    release a2 with temp_10_cmp_24_0
              #                     216  untrack j_19_3 
              #                    occupy s1 with j_19_3
              #                    release s1 with j_19_3
              #                     215  untrack temp_12_cmp_37_0 
              #                    occupy s3 with temp_12_cmp_37_0
              #                    release s3 with temp_12_cmp_37_0
              #                     214  untrack min_19_2 
              #                    occupy a5 with min_19_2
              #                    release a5 with min_19_2
              #                     37    
              #                     39   temp_2_ptr_of_A_17_39 = GEP A_17:Array:i32:[None] [Some(min_19_3)] 
              #                    occupy a2 with temp_2_ptr_of_A_17_39
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with min_19_3
    mv      a5, s2
              #                    free s2
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a0 with A_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     220  untrack min_19_3 
              #                    occupy s2 with min_19_3
              #                    release s2 with min_19_3
              #                     41   temp_3_ele_of_A_17_39_0 = load temp_2_ptr_of_A_17_39:ptr->i32 
              #                    occupy a2 with temp_2_ptr_of_A_17_39
              #                    occupy s1 with temp_3_ele_of_A_17_39_0
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     42   mu A_17:41 
              #                     43   (nop) 
              #                     45   (nop) 
              #                     47   temp_5_ptr_of_A_17_39 = GEP A_17:Array:i32:[None] [Some(i_19_2)] 
              #                    occupy s2 with temp_5_ptr_of_A_17_39
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_19_2
    mv      s3, a4
              #                    free a4
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy a0 with A_17
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                     49   temp_6_ele_of_A_17_39_0 = load temp_5_ptr_of_A_17_39:ptr->i32 
              #                    occupy s2 with temp_5_ptr_of_A_17_39
              #                    occupy s4 with temp_6_ele_of_A_17_39_0
    lw      s4,0(s2)
              #                    free s4
              #                    free s2
              #                     223  untrack temp_5_ptr_of_A_17_39 
              #                    occupy s2 with temp_5_ptr_of_A_17_39
              #                    release s2 with temp_5_ptr_of_A_17_39
              #                     50   mu A_17:49 
              #                     51   store temp_6_ele_of_A_17_39_0:i32 temp_2_ptr_of_A_17_39:ptr->i32 
              #                    occupy a2 with temp_2_ptr_of_A_17_39
              #                    occupy s4 with temp_6_ele_of_A_17_39_0
    sw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                     221  untrack temp_6_ele_of_A_17_39_0 
              #                    occupy s4 with temp_6_ele_of_A_17_39_0
              #                    release s4 with temp_6_ele_of_A_17_39_0
              #                     219  untrack temp_2_ptr_of_A_17_39 
              #                    occupy a2 with temp_2_ptr_of_A_17_39
              #                    release a2 with temp_2_ptr_of_A_17_39
              #                     52   A_17 = chi A_17:51 
              #                     54   temp_7_ptr_of_A_17_39 = GEP A_17:ptr->i32 [Some(i_19_2)] 
              #                    occupy a2 with temp_7_ptr_of_A_17_39
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_19_2
    mv      s2, a4
              #                    free a4
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
              #                    occupy a0 with A_17
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     55   store temp_3_ele_of_A_17_39_0:i32 temp_7_ptr_of_A_17_39:ptr->i32 
              #                    occupy a2 with temp_7_ptr_of_A_17_39
              #                    occupy s1 with temp_3_ele_of_A_17_39_0
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     222  untrack temp_3_ele_of_A_17_39_0 
              #                    occupy s1 with temp_3_ele_of_A_17_39_0
              #                    release s1 with temp_3_ele_of_A_17_39_0
              #                     218  untrack temp_7_ptr_of_A_17_39 
              #                    occupy a2 with temp_7_ptr_of_A_17_39
              #                    release a2 with temp_7_ptr_of_A_17_39
              #                     56   A_17 = chi A_17:55 
              #                          jump label: branch_false_38 
              #                    occupy s3 with temp_12_cmp_37_0
              #                    load from temp_12_cmp_37_0 in mem


    lb      s3,37(sp)
              #                    occupy s2 with min_19_3
              #                    load from min_19_3 in mem


    lw      s2,112(sp)
              #                    occupy s1 with j_19_3
              #                    load from j_19_3 in mem


    lw      s1,128(sp)
              #                    occupy a2 with temp_10_cmp_24_0
              #                    load from temp_10_cmp_24_0 in mem


    lb      a2,39(sp)
              #                    occupy a5 with min_19_2
              #                    load from min_19_2 in mem


    lw      a5,116(sp)
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |     s3:Freed { symidx: temp_12_cmp_37_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     80   label branch_false_38: 
.branch_false_38:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |     a5:Freed { symidx: min_19_2, tracked: true } |     a6:Freed { symidx: temp_11_cmp_29_0, tracked: true } |     a7:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     s1:Freed { symidx: j_19_3, tracked: true } |     s2:Freed { symidx: min_19_3, tracked: true } |     s3:Freed { symidx: temp_12_cmp_37_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     34   (nop) 
              #                     35   (nop) 
              #                     201  i_19_2 = i32 temp_0_arithop_26_0 
              #                    occupy a7 with temp_0_arithop_26_0
              #                    occupy a4 with i_19_2
    mv      a4, a7
              #                    free a7
              #                    free a4
              #                          jump label: while.head_25 
              #                    occupy a6 with temp_11_cmp_29_0
              #                    store to temp_11_cmp_29_0 in mem offset legal
    sb      a6,38(sp)
              #                    release a6 with temp_11_cmp_29_0
              #                    occupy s3 with temp_12_cmp_37_0
              #                    store to temp_12_cmp_37_0 in mem offset legal
    sb      s3,37(sp)
              #                    release s3 with temp_12_cmp_37_0
              #                    occupy s2 with min_19_3
              #                    store to min_19_3 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with min_19_3
              #                    occupy a7 with temp_0_arithop_26_0
              #                    store to temp_0_arithop_26_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_0_arithop_26_0
              #                    occupy s1 with j_19_3
              #                    store to j_19_3 in mem offset legal
    sw      s1,128(sp)
              #                    release s1 with j_19_3
              #                    occupy a2 with temp_10_cmp_24_0
              #                    store to temp_10_cmp_24_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_10_cmp_24_0
              #                    occupy a5 with min_19_2
              #                    store to min_19_2 in mem offset legal
    sw      a5,116(sp)
              #                    release a5 with min_19_2
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: A_17, tracked: true } |     a1:Freed { symidx: n_17_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_9_arithop_24_0, tracked: true } |     a4:Freed { symidx: i_19_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     67   label while.exit_25: 
.while.exit_25:
              #                     206  untrack temp_9_arithop_24_0 
              #                    occupy a3 with temp_9_arithop_24_0
              #                    release a3 with temp_9_arithop_24_0
              #                     205  untrack i_19_2 
              #                    occupy a4 with i_19_2
              #                    release a4 with i_19_2
              #                     204  untrack n_17_0 
              #                    occupy a1 with n_17_0
              #                    release a1 with n_17_0
              #                     179  mu A_17:28 
              #                     224  untrack A_17 
              #                    occupy a0 with A_17
              #                    release a0 with A_17
              #                     28   ret 0_0 
              #                    load from ra_select_sort_0 in mem
    ld      ra,208(sp)
              #                    load from s0_select_sort_0 in mem
    ld      s0,200(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,216
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 184|s0_main:8 at 176|a:40 at 136|temp_18_ptr_of_a_47:8 at 128|temp_19_ptr_of_a_47:8 at 120|temp_20_ptr_of_a_47:8 at 112|temp_21_ptr_of_a_47:8 at 104|temp_22_ptr_of_a_47:8 at 96|temp_23_ptr_of_a_47:8 at 88|temp_24_ptr_of_a_47:8 at 80|temp_25_ptr_of_a_47:8 at 72|temp_26_ptr_of_a_47:8 at 64|temp_27_ptr_of_a_47:8 at 56|i _s47 _i0:4 at 52|i _s47 _i3:4 at 48|temp_28_ele_ptr_of_a_47:8 at 40|temp_29_value_from_ptr _s47 _i0:4 at 36|temp_30_ret_of_select_sort _s47 _i0:4 at 32|tmp _s65 _i0:4 at 28|none:4 at 24|temp_31_ptr_of_a_47:8 at 16|temp_32_ele_of_a_47 _s65 _i0:4 at 12|temp_33_arithop _s65 _i0:4 at 8|temp_35_cmp _s63 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-192
              #                    store to ra_main_0 in mem offset legal
    sd      ra,184(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,176(sp)
    addi    s0,sp,192
              #                     180  n_0_1 = chi n_0_0:19 
              #                     100  alloc Array:i32:[Some(10_0)] [a_47] 
              #                     101  alloc ptr->i32 [temp_18_ptr_of_a_47_47] 
              #                     105  alloc ptr->i32 [temp_19_ptr_of_a_47_47] 
              #                     109  alloc ptr->i32 [temp_20_ptr_of_a_47_47] 
              #                     113  alloc ptr->i32 [temp_21_ptr_of_a_47_47] 
              #                     117  alloc ptr->i32 [temp_22_ptr_of_a_47_47] 
              #                     121  alloc ptr->i32 [temp_23_ptr_of_a_47_47] 
              #                     125  alloc ptr->i32 [temp_24_ptr_of_a_47_47] 
              #                     129  alloc ptr->i32 [temp_25_ptr_of_a_47_47] 
              #                     133  alloc ptr->i32 [temp_26_ptr_of_a_47_47] 
              #                     137  alloc ptr->i32 [temp_27_ptr_of_a_47_47] 
              #                     141  alloc i32 [i_47] 
              #                     144  alloc ptr->i32 [temp_28_ele_ptr_of_a_47_47] 
              #                     146  alloc i32 [temp_29_value_from_ptr_47] 
              #                     149  alloc i32 [temp_30_ret_of_select_sort_47] 
              #                     154  alloc i32 [tmp_65] 
              #                     156  alloc ptr->i32 [temp_31_ptr_of_a_47_65] 
              #                     158  alloc i32 [temp_32_ele_of_a_47_65] 
              #                     165  alloc i32 [temp_33_arithop_65] 
              #                     168  alloc i32 [temp_34_value_from_ptr_63] 
              #                     171  alloc i1 [temp_35_cmp_63] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     97   store 10_0:i32 *n_0:ptr->i32 
              #                    occupy a0 with *n_0
              #                       load label n as ptr to reg
    la      a0, n
              #                    occupy reg a0 with *n_0
              #                    occupy a1 with 10_0
    li      a1, 10
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     98   n_0_2 = chi n_0_1:97 
              #                     99    
              #                     102  temp_18_ptr_of_a_47_47 = GEP a_47_0:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a2 with temp_18_ptr_of_a_47_47
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     103  store 4_0:i32 temp_18_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_18_ptr_of_a_47_47
              #                    occupy a4 with 4_0
    li      a4, 4
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     231  untrack temp_18_ptr_of_a_47_47 
              #                    occupy a2 with temp_18_ptr_of_a_47_47
              #                    release a2 with temp_18_ptr_of_a_47_47
              #                     104  a_47_1 = chi a_47_0:103 
              #                     106  temp_19_ptr_of_a_47_47 = GEP a_47_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a2 with temp_19_ptr_of_a_47_47
    li      a2, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     107  store 3_0:i32 temp_19_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_19_ptr_of_a_47_47
              #                    occupy a6 with 3_0
    li      a6, 3
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                     229  untrack temp_19_ptr_of_a_47_47 
              #                    occupy a2 with temp_19_ptr_of_a_47_47
              #                    release a2 with temp_19_ptr_of_a_47_47
              #                     108  a_47_2 = chi a_47_1:107 
              #                     110  temp_20_ptr_of_a_47_47 = GEP a_47_2:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a2 with temp_20_ptr_of_a_47_47
    li      a2, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 2
    add     a2,a2,a7
              #                    free a7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     111  store 9_0:i32 temp_20_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_20_ptr_of_a_47_47
              #                    occupy s1 with 9_0
    li      s1, 9
    sw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                     228  untrack temp_20_ptr_of_a_47_47 
              #                    occupy a2 with temp_20_ptr_of_a_47_47
              #                    release a2 with temp_20_ptr_of_a_47_47
              #                     112  a_47_3 = chi a_47_2:111 
              #                     114  temp_21_ptr_of_a_47_47 = GEP a_47_3:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a2 with temp_21_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 3
    add     a2,a2,s2
              #                    free s2
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     115  store 2_0:i32 temp_21_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_21_ptr_of_a_47_47
              #                    occupy s3 with 2_0
    li      s3, 2
    sw      s3,0(a2)
              #                    free s3
              #                    free a2
              #                     235  untrack temp_21_ptr_of_a_47_47 
              #                    occupy a2 with temp_21_ptr_of_a_47_47
              #                    release a2 with temp_21_ptr_of_a_47_47
              #                     116  a_47_4 = chi a_47_3:115 
              #                     118  temp_22_ptr_of_a_47_47 = GEP a_47_4:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a2 with temp_22_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 4
    add     a2,a2,s4
              #                    free s4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     119  store 0_0:i32 temp_22_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_22_ptr_of_a_47_47
              #                    occupy s5 with 0_0
    li      s5, 0
    sw      s5,0(a2)
              #                    free s5
              #                    free a2
              #                     232  untrack temp_22_ptr_of_a_47_47 
              #                    occupy a2 with temp_22_ptr_of_a_47_47
              #                    release a2 with temp_22_ptr_of_a_47_47
              #                     120  a_47_5 = chi a_47_4:119 
              #                     122  temp_23_ptr_of_a_47_47 = GEP a_47_5:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a2 with temp_23_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 5
    add     a2,a2,s6
              #                    free s6
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     123  store 1_0:i32 temp_23_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_23_ptr_of_a_47_47
              #                    occupy s7 with 1_0
    li      s7, 1
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     236  untrack temp_23_ptr_of_a_47_47 
              #                    occupy a2 with temp_23_ptr_of_a_47_47
              #                    release a2 with temp_23_ptr_of_a_47_47
              #                     124  a_47_6 = chi a_47_5:123 
              #                     126  temp_24_ptr_of_a_47_47 = GEP a_47_6:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a2 with temp_24_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 6
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     127  store 6_0:i32 temp_24_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_24_ptr_of_a_47_47
              #                    occupy s7 with 6_0
    li      s7, 6
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     234  untrack temp_24_ptr_of_a_47_47 
              #                    occupy a2 with temp_24_ptr_of_a_47_47
              #                    release a2 with temp_24_ptr_of_a_47_47
              #                     128  a_47_7 = chi a_47_6:127 
              #                     130  temp_25_ptr_of_a_47_47 = GEP a_47_7:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a2 with temp_25_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 7
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     131  store 5_0:i32 temp_25_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_25_ptr_of_a_47_47
              #                    occupy s7 with 5_0
    li      s7, 5
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     233  untrack temp_25_ptr_of_a_47_47 
              #                    occupy a2 with temp_25_ptr_of_a_47_47
              #                    release a2 with temp_25_ptr_of_a_47_47
              #                     132  a_47_8 = chi a_47_7:131 
              #                     134  temp_26_ptr_of_a_47_47 = GEP a_47_8:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a2 with temp_26_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     135  store 7_0:i32 temp_26_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_26_ptr_of_a_47_47
              #                    occupy s7 with 7_0
    li      s7, 7
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     230  untrack temp_26_ptr_of_a_47_47 
              #                    occupy a2 with temp_26_ptr_of_a_47_47
              #                    release a2 with temp_26_ptr_of_a_47_47
              #                     136  a_47_9 = chi a_47_8:135 
              #                     138  temp_27_ptr_of_a_47_47 = GEP a_47_9:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a2 with temp_27_ptr_of_a_47_47
    li      a2, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 9
    add     a2,a2,s7
              #                    free s7
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     139  store 8_0:i32 temp_27_ptr_of_a_47_47:ptr->i32 
              #                    occupy a2 with temp_27_ptr_of_a_47_47
              #                    occupy s7 with 8_0
    li      s7, 8
    sw      s7,0(a2)
              #                    free s7
              #                    free a2
              #                     225  untrack temp_27_ptr_of_a_47_47 
              #                    occupy a2 with temp_27_ptr_of_a_47_47
              #                    release a2 with temp_27_ptr_of_a_47_47
              #                     140  a_47_10 = chi a_47_9:139 
              #                     142   
              #                     143  (nop) 
              #                     145  temp_28_ele_ptr_of_a_47_47 = GEP a_47_10:Array:i32:[Some(10_0)] [] 
              #                    occupy a2 with temp_28_ele_ptr_of_a_47_47
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,136
              #                    free a2
              #                     147  temp_29_value_from_ptr_47_0 = load *n_0:ptr->i32 
              #                    occupy s7 with *n_0
              #                       load label n as ptr to reg
    la      s7, n
              #                    occupy reg s7 with *n_0
              #                    occupy s8 with temp_29_value_from_ptr_47_0
    lw      s8,0(s7)
              #                    free s8
              #                    occupy s8 with temp_29_value_from_ptr_47_0
              #                    store to temp_29_value_from_ptr_47_0 in mem offset legal
    sw      s8,36(sp)
              #                    release s8 with temp_29_value_from_ptr_47_0
              #                    free s7
              #                     148  mu n_0_2:147 
              #                     150  temp_30_ret_of_select_sort_47_0 =  Call i32 select_sort_0(temp_28_ele_ptr_of_a_47_47, temp_29_value_from_ptr_47_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_28_ele_ptr_of_a_47_47
              #                    store to temp_28_ele_ptr_of_a_47_47 in mem offset legal
    sd      a2,40(sp)
              #                    release a2 with temp_28_ele_ptr_of_a_47_47
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_ele_ptr_of_a_47_47_0
              #                    load from temp_28_ele_ptr_of_a_47_47 in mem
    ld      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_29_value_from_ptr_47_0_0
              #                    load from temp_29_value_from_ptr_47_0 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    select_sort
              #                     226  untrack temp_28_ele_ptr_of_a_47_47 
              #                     181  mu a_47_10:150 
              #                     182  a_47_11 = chi a_47_10:150 
              #                     151  (nop) 
              #                     202  i_47_3 = i32 temp_30_ret_of_select_sort_47_0 
              #                    occupy a0 with temp_30_ret_of_select_sort_47_0
              #                    occupy a1 with i_47_3
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     227  untrack temp_30_ret_of_select_sort_47_0 
              #                    occupy a0 with temp_30_ret_of_select_sort_47_0
              #                    release a0 with temp_30_ret_of_select_sort_47_0
              #                          jump label: while.head_64 
    j       .while.head_64
              #                    regtab     a1:Freed { symidx: i_47_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     173  label while.head_64: 
.while.head_64:
              #                     169  (nop) 
              #                     170  mu n_0_2:169 
              #                     172  temp_35_cmp_63_0 = icmp i32 Slt i_47_3, temp_29_value_from_ptr_47_0 
              #                    occupy a1 with i_47_3
              #                    occupy a0 with temp_29_value_from_ptr_47_0
              #                    load from temp_29_value_from_ptr_47_0 in mem


    lw      a0,36(sp)
              #                    occupy a2 with temp_35_cmp_63_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     176  br i1 temp_35_cmp_63_0, label while.body_64, label while.exit_64 
              #                    occupy a2 with temp_35_cmp_63_0
              #                    free a2
              #                    occupy a2 with temp_35_cmp_63_0
    bnez    a2, .while.body_64
              #                    free a2
    j       .while.exit_64
              #                    regtab     a0:Freed { symidx: temp_29_value_from_ptr_47_0, tracked: true } |     a1:Freed { symidx: i_47_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_63_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     174  label while.body_64: 
.while.body_64:
              #                     155   
              #                     157  temp_31_ptr_of_a_47_65 = GEP a_47_11:Array:i32:[Some(10_0)] [Some(i_47_3)] 
              #                    occupy a3 with temp_31_ptr_of_a_47_65
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_47_3
    mv      a4, a1
              #                    free a1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,136
              #                    free a3
              #                     159  temp_32_ele_of_a_47_65_0 = load temp_31_ptr_of_a_47_65:ptr->i32 
              #                    occupy a3 with temp_31_ptr_of_a_47_65
              #                    occupy a5 with temp_32_ele_of_a_47_65_0
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                     160  mu a_47_11:159 
              #                     161  (nop) 
              #                     162   Call void putint_0(temp_32_ele_of_a_47_65_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_value_from_ptr_47_0
              #                    store to temp_29_value_from_ptr_47_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_29_value_from_ptr_47_0
              #                    occupy a1 with i_47_3
              #                    store to i_47_3 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i_47_3
              #                    occupy a2 with temp_35_cmp_63_0
              #                    store to temp_35_cmp_63_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_35_cmp_63_0
              #                    occupy a3 with temp_31_ptr_of_a_47_65
              #                    store to temp_31_ptr_of_a_47_65 in mem offset legal
    sd      a3,16(sp)
              #                    release a3 with temp_31_ptr_of_a_47_65
              #                    occupy a5 with temp_32_ele_of_a_47_65_0
              #                    store to temp_32_ele_of_a_47_65_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_32_ele_of_a_47_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32_ele_of_a_47_65_0_0
              #                    load from temp_32_ele_of_a_47_65_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     163  (nop) 
              #                     164   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     166  temp_33_arithop_65_0 = Add i32 i_47_3, 1_0 
              #                    occupy a0 with i_47_3
              #                    load from i_47_3 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_33_arithop_65_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     167  (nop) 
              #                     203  i_47_3 = i32 temp_33_arithop_65_0 
              #                    occupy a2 with temp_33_arithop_65_0
              #                    occupy a0 with i_47_3
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_64 
              #                    occupy a2 with temp_33_arithop_65_0
              #                    store to temp_33_arithop_65_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_33_arithop_65_0
              #                    occupy a0 with i_47_3
              #                    store to i_47_3 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with i_47_3
              #                    occupy a1 with i_47_3
              #                    load from i_47_3 in mem


    lw      a1,48(sp)
    j       .while.head_64
              #                    regtab     a0:Freed { symidx: temp_29_value_from_ptr_47_0, tracked: true } |     a1:Freed { symidx: i_47_3, tracked: true } |     a2:Freed { symidx: temp_35_cmp_63_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     175  label while.exit_64: 
.while.exit_64:
              #                     238  untrack temp_29_value_from_ptr_47_0 
              #                    occupy a0 with temp_29_value_from_ptr_47_0
              #                    release a0 with temp_29_value_from_ptr_47_0
              #                     237  untrack i_47_3 
              #                    occupy a1 with i_47_3
              #                    release a1 with i_47_3
              #                     183  mu n_0_2:153 
              #                     153  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,184(sp)
              #                    load from s0_main_0 in mem
    ld      s0,176(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,192
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
