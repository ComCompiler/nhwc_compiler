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
              #                     20   Define EightWhile_0 "" -> EightWhile_ret_0 
    .globl EightWhile
    .type EightWhile,@function
EightWhile:
              #                    mem layout:|ra_EightWhile:8 at 200|s0_EightWhile:8 at 192|a _s21 _i0:4 at 188|a _s21 _i2:4 at 184|b _s21 _i0:4 at 180|b _s21 _i2:4 at 176|b _s21 _i3:4 at 172|c _s21 _i0:4 at 168|c _s21 _i2:4 at 164|c _s21 _i3:4 at 160|c _s21 _i4:4 at 156|d _s21 _i0:4 at 152|d _s21 _i2:4 at 148|d _s21 _i3:4 at 144|d _s21 _i4:4 at 140|d _s21 _i5:4 at 136|temp_0_arithop _s21 _i0:4 at 132|temp_1_arithop _s21 _i0:4 at 128|temp_2_arithop _s21 _i0:4 at 124|temp_3_value_from_ptr _s21 _i0:4 at 120|temp_4_arithop _s21 _i0:4 at 116|temp_5_value_from_ptr _s21 _i0:4 at 112|temp_6_arithop _s21 _i0:4 at 108|temp_7_value_from_ptr _s21 _i0:4 at 104|temp_8_arithop _s21 _i0:4 at 100|temp_9_arithop _s21 _i0:4 at 96|temp_10_arithop _s32 _i0:4 at 92|temp_11_arithop _s32 _i0:4 at 88|temp_12_arithop _s36 _i0:4 at 84|temp_13_arithop _s36 _i0:4 at 80|temp_14_arithop _s40 _i0:4 at 76|temp_15_arithop _s40 _i0:4 at 72|temp_16_arithop _s44 _i0:4 at 68|temp_18_arithop _s44 _i0:4 at 64|temp_20_arithop _s48 _i0:4 at 60|temp_22_arithop _s48 _i0:4 at 56|temp_24_arithop _s52 _i0:4 at 52|temp_26_arithop _s52 _i0:4 at 48|temp_28_arithop _s56 _i0:4 at 44|temp_30_arithop _s56 _i0:4 at 40|temp_32_arithop _s60 _i0:4 at 36|temp_33_cmp _s30 _i0:1 at 35|temp_34_cmp _s34 _i0:1 at 34|temp_35_cmp _s38 _i0:1 at 33|temp_36_cmp _s42 _i0:1 at 32|temp_37_value_from_ptr _s46 _i0:4 at 28|temp_38_cmp _s46 _i0:1 at 27|none:3 at 24|temp_39_value_from_ptr _s50 _i0:4 at 20|temp_40_cmp _s50 _i0:1 at 19|none:3 at 16|temp_41_value_from_ptr _s54 _i0:4 at 12|temp_42_cmp _s54 _i0:1 at 11|none:3 at 8|temp_43_value_from_ptr _s58 _i0:4 at 4|temp_44_cmp _s58 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-208
              #                    store to ra_EightWhile_0 in mem offset legal
    sd      ra,200(sp)
              #                    store to s0_EightWhile_0 in mem offset legal
    sd      s0,192(sp)
    addi    s0,sp,208
              #                     212  h_0_1 = chi h_0_0:20 
              #                     213  e_0_1 = chi e_0_0:20 
              #                     214  g_0_1 = chi g_0_0:20 
              #                     215  f_0_1 = chi f_0_0:20 
              #                     22   alloc i32 [a_21] 
              #                     25   alloc i32 [b_21] 
              #                     27   alloc i32 [c_21] 
              #                     31   alloc i32 [d_21] 
              #                     35   alloc i32 [temp_0_arithop_21] 
              #                     37   alloc i32 [temp_1_arithop_21] 
              #                     39   alloc i32 [temp_2_arithop_21] 
              #                     41   alloc i32 [temp_3_value_from_ptr_21] 
              #                     44   alloc i32 [temp_4_arithop_21] 
              #                     46   alloc i32 [temp_5_value_from_ptr_21] 
              #                     49   alloc i32 [temp_6_arithop_21] 
              #                     51   alloc i32 [temp_7_value_from_ptr_21] 
              #                     54   alloc i32 [temp_8_arithop_21] 
              #                     56   alloc i32 [temp_9_arithop_21] 
              #                     59   alloc i32 [temp_10_arithop_32] 
              #                     62   alloc i32 [temp_11_arithop_32] 
              #                     65   alloc i32 [temp_12_arithop_36] 
              #                     68   alloc i32 [temp_13_arithop_36] 
              #                     71   alloc i32 [temp_14_arithop_40] 
              #                     74   alloc i32 [temp_15_arithop_40] 
              #                     77   alloc i32 [temp_16_arithop_44] 
              #                     80   alloc i32 [temp_17_value_from_ptr_44] 
              #                     83   alloc i32 [temp_18_arithop_44] 
              #                     87   alloc i32 [temp_19_value_from_ptr_48] 
              #                     90   alloc i32 [temp_20_arithop_48] 
              #                     94   alloc i32 [temp_21_value_from_ptr_48] 
              #                     97   alloc i32 [temp_22_arithop_48] 
              #                     101  alloc i32 [temp_23_value_from_ptr_52] 
              #                     104  alloc i32 [temp_24_arithop_52] 
              #                     108  alloc i32 [temp_25_value_from_ptr_52] 
              #                     111  alloc i32 [temp_26_arithop_52] 
              #                     115  alloc i32 [temp_27_value_from_ptr_56] 
              #                     118  alloc i32 [temp_28_arithop_56] 
              #                     122  alloc i32 [temp_29_value_from_ptr_56] 
              #                     125  alloc i32 [temp_30_arithop_56] 
              #                     129  alloc i32 [temp_31_value_from_ptr_60] 
              #                     132  alloc i32 [temp_32_arithop_60] 
              #                     136  alloc i1 [temp_33_cmp_30] 
              #                     144  alloc i1 [temp_34_cmp_34] 
              #                     150  alloc i1 [temp_35_cmp_38] 
              #                     156  alloc i1 [temp_36_cmp_42] 
              #                     162  alloc i32 [temp_37_value_from_ptr_46] 
              #                     165  alloc i1 [temp_38_cmp_46] 
              #                     171  alloc i32 [temp_39_value_from_ptr_50] 
              #                     174  alloc i1 [temp_40_cmp_50] 
              #                     180  alloc i32 [temp_41_value_from_ptr_54] 
              #                     183  alloc i1 [temp_42_cmp_54] 
              #                     189  alloc i32 [temp_43_value_from_ptr_58] 
              #                     192  alloc i1 [temp_44_cmp_58] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     23    
              #                     24   (nop) 
              #                     26    
              #                     28    
              #                     29   (nop) 
              #                     30   (nop) 
              #                     32    
              #                     33   (nop) 
              #                     272  a_21_2 = i32 5_0 
              #                    occupy a0 with a_21_2
    li      a0, 5
              #                    free a0
              #                     273  d_21_2 = i32 10_0 
              #                    occupy a1 with d_21_2
    li      a1, 10
              #                    free a1
              #                     274  b_21_2 = i32 6_0 
              #                    occupy a2 with b_21_2
    li      a2, 6
              #                    free a2
              #                     275  c_21_2 = i32 7_0 
              #                    occupy a3 with c_21_2
    li      a3, 7
              #                    free a3
              #                          jump label: while.head_31 
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     138  label while.head_31: 
.while.head_31:
              #                     137  temp_33_cmp_30_0 = icmp i32 Slt a_21_2, 20_0 
              #                    occupy a0 with a_21_2
              #                    occupy a4 with 20_0
    li      a4, 20
              #                    occupy a5 with temp_33_cmp_30_0
    slt     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                     141  br i1 temp_33_cmp_30_0, label while.body_31, label while.exit_31 
              #                    occupy a5 with temp_33_cmp_30_0
              #                    free a5
              #                    occupy a5 with temp_33_cmp_30_0
    bnez    a5, .while.body_31
              #                    free a5
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     139  label while.body_31: 
.while.body_31:
              #                     60   temp_10_arithop_32_0 = Add i32 a_21_2, 3_0 
              #                    occupy a0 with a_21_2
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a6 with temp_10_arithop_32_0
    ADDW    a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                     61   (nop) 
              #                     276  d_21_3 = i32 d_21_2 
              #                    occupy a1 with d_21_2
              #                    occupy a7 with d_21_3
    mv      a7, a1
              #                    free a1
              #                    free a7
              #                     277  b_21_3 = i32 b_21_2 
              #                    occupy a2 with b_21_2
              #                    occupy s1 with b_21_3
    mv      s1, a2
              #                    free a2
              #                    free s1
              #                     278  c_21_3 = i32 c_21_2 
              #                    occupy a3 with c_21_2
              #                    occupy s2 with c_21_3
    mv      s2, a3
              #                    free a3
              #                    free s2
              #                          jump label: while.head_35 
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: d_21_3, tracked: true } |     s1:Freed { symidx: b_21_3, tracked: true } |     s2:Freed { symidx: c_21_3, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     146  label while.head_35: 
.while.head_35:
              #                     145  temp_34_cmp_34_0 = icmp i32 Slt b_21_3, 10_0 
              #                    occupy s1 with b_21_3
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s3 with temp_34_cmp_34_0
    slt     s3,s1,a4
              #                    free s1
              #                    free a4
              #                    free s3
              #                     149  br i1 temp_34_cmp_34_0, label while.body_35, label while.exit_35 
              #                    occupy s3 with temp_34_cmp_34_0
              #                    free s3
              #                    occupy s3 with temp_34_cmp_34_0
    bnez    s3, .while.body_35
              #                    free s3
    j       .while.exit_35
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: d_21_3, tracked: true } |     s1:Freed { symidx: b_21_3, tracked: true } |     s2:Freed { symidx: c_21_3, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     147  label while.body_35: 
.while.body_35:
              #                     66   temp_12_arithop_36_0 = Add i32 b_21_3, 1_0 
              #                    occupy s1 with b_21_3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s4 with temp_12_arithop_36_0
    ADDW    s4,s1,a4
              #                    free s1
              #                    occupy s1 with b_21_3
              #                    store to b_21_3 in mem offset legal
    sw      s1,172(sp)
              #                    release s1 with b_21_3
              #                    free a4
              #                    free s4
              #                     67   (nop) 
              #                     279  c_21_4 = i32 c_21_3 
              #                    occupy s2 with c_21_3
              #                    occupy s1 with c_21_4
    mv      s1, s2
              #                    free s2
              #                    occupy s2 with c_21_3
              #                    store to c_21_3 in mem offset legal
    sw      s2,160(sp)
              #                    release s2 with c_21_3
              #                    free s1
              #                     280  d_21_4 = i32 d_21_3 
              #                    occupy a7 with d_21_3
              #                    occupy s2 with d_21_4
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with d_21_3
              #                    store to d_21_3 in mem offset legal
    sw      a7,144(sp)
              #                    release a7 with d_21_3
              #                    free s2
              #                          jump label: while.head_39 
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     s1:Freed { symidx: c_21_4, tracked: true } |     s2:Freed { symidx: d_21_4, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     152  label while.head_39: 
.while.head_39:
              #                     151  temp_35_cmp_38_0 = icmp i32 Eq c_21_4, 7_0 
              #                    occupy s1 with c_21_4
              #                    occupy a4 with 7_0
    li      a4, 7
              #                    occupy a7 with temp_35_cmp_38_0
    xor     a7,s1,a4
    seqz    a7, a7
              #                    free s1
              #                    occupy s1 with c_21_4
              #                    store to c_21_4 in mem offset legal
    sw      s1,156(sp)
              #                    release s1 with c_21_4
              #                    free a4
              #                    free a7
              #                     155  br i1 temp_35_cmp_38_0, label while.body_39, label while.exit_39 
              #                    occupy a7 with temp_35_cmp_38_0
              #                    free a7
              #                    occupy a7 with temp_35_cmp_38_0
    bnez    a7, .while.body_39
              #                    free a7
    j       .while.exit_39
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: d_21_4, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     153  label while.body_39: 
.while.body_39:
              #                     72   temp_14_arithop_40_0 = Sub i32 c_21_4, 1_0 
              #                    occupy a4 with c_21_4
              #                    load from c_21_4 in mem


    lw      a4,156(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_14_arithop_40_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: c_21_4, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: d_21_4, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_14_arithop_40_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with c_21_4
              #                    store to c_21_4 in mem offset legal
    sw      a4,156(sp)
              #                    release a4 with c_21_4
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_14_arithop_40_0
              #                    store to temp_14_arithop_40_0 in mem offset legal
    sw      s5,76(sp)
              #                    release s5 with temp_14_arithop_40_0
              #                     73   (nop) 
              #                     281  d_21_5 = i32 d_21_4 
              #                    occupy s2 with d_21_4
              #                    occupy a4 with d_21_5
    mv      a4, s2
              #                    free s2
              #                    occupy s2 with d_21_4
              #                    store to d_21_4 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with d_21_4
              #                    free a4
              #                          jump label: while.head_43 
    j       .while.head_43
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Freed { symidx: d_21_5, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     158  label while.head_43: 
.while.head_43:
              #                     157  temp_36_cmp_42_0 = icmp i32 Slt d_21_5, 20_0 
              #                    occupy a4 with d_21_5
              #                    occupy s1 with 20_0
    li      s1, 20
              #                    occupy s2 with temp_36_cmp_42_0
    slt     s2,a4,s1
              #                    free a4
              #                    occupy a4 with d_21_5
              #                    store to d_21_5 in mem offset legal
    sw      a4,136(sp)
              #                    release a4 with d_21_5
              #                    free s1
              #                    free s2
              #                     161  br i1 temp_36_cmp_42_0, label while.body_43, label while.exit_43 
              #                    occupy s2 with temp_36_cmp_42_0
              #                    free s2
              #                    occupy s2 with temp_36_cmp_42_0
    bnez    s2, .while.body_43
              #                    free s2
    j       .while.exit_43
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     159  label while.body_43: 
.while.body_43:
              #                     78   temp_16_arithop_44_0 = Add i32 d_21_5, 3_0 
              #                    occupy a4 with d_21_5
              #                    load from d_21_5 in mem


    lw      a4,136(sp)
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s5 with temp_16_arithop_44_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with d_21_5
              #                    store to d_21_5 in mem offset legal
    sw      a4,136(sp)
              #                    release a4 with d_21_5
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_16_arithop_44_0
              #                    store to temp_16_arithop_44_0 in mem offset legal
    sw      s5,68(sp)
              #                    release s5 with temp_16_arithop_44_0
              #                     79   (nop) 
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     167  label while.head_47: 
.while.head_47:
              #                     163  temp_37_value_from_ptr_46_0 = load *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s1 with temp_37_value_from_ptr_46_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_37_value_from_ptr_46_0
              #                    store to temp_37_value_from_ptr_46_0 in mem offset legal
    sw      s1,28(sp)
              #                    release s1 with temp_37_value_from_ptr_46_0
              #                    free a4
              #                     164  mu e_0_6:163 
              #                     166  temp_38_cmp_46_0 = icmp i32 Sgt temp_37_value_from_ptr_46_0, 1_0 
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    load from temp_37_value_from_ptr_46_0 in mem


    lw      a4,28(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_38_cmp_46_0
    slt     s5,s1,a4
              #                    free a4
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    store to temp_37_value_from_ptr_46_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_37_value_from_ptr_46_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_38_cmp_46_0
              #                    store to temp_38_cmp_46_0 in mem offset legal
    sb      s5,27(sp)
              #                    release s5 with temp_38_cmp_46_0
              #                     170  br i1 temp_38_cmp_46_0, label while.body_47, label while.exit_47 
              #                    occupy a4 with temp_38_cmp_46_0
              #                    load from temp_38_cmp_46_0 in mem


    lb      a4,27(sp)
              #                    free a4
              #                    occupy a4 with temp_38_cmp_46_0
              #                    store to temp_38_cmp_46_0 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_38_cmp_46_0
              #                    occupy a4 with temp_38_cmp_46_0
              #                    load from temp_38_cmp_46_0 in mem


    lb      a4,27(sp)
    bnez    a4, .while.body_47
              #                    free a4
              #                    occupy a4 with temp_38_cmp_46_0
              #                    store to temp_38_cmp_46_0 in mem offset legal
    sb      a4,27(sp)
              #                    release a4 with temp_38_cmp_46_0
    j       .while.exit_47
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     168  label while.body_47: 
.while.body_47:
              #                     88   (nop) 
              #                     89   mu e_0_6:88 
              #                     91   temp_20_arithop_48_0 = Sub i32 temp_37_value_from_ptr_46_0, 1_0 
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    load from temp_37_value_from_ptr_46_0 in mem


    lw      a4,28(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_20_arithop_48_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: temp_37_value_from_ptr_46_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_20_arithop_48_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    store to temp_37_value_from_ptr_46_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_37_value_from_ptr_46_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_20_arithop_48_0
              #                    store to temp_20_arithop_48_0 in mem offset legal
    sw      s5,60(sp)
              #                    release s5 with temp_20_arithop_48_0
              #                     92   store temp_20_arithop_48_0:i32 *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s1 with temp_20_arithop_48_0
              #                    load from temp_20_arithop_48_0 in mem


    lw      s1,60(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_20_arithop_48_0
              #                    store to temp_20_arithop_48_0 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_20_arithop_48_0
              #                    free a4
              #                     93   e_0_7 = chi e_0_6:92 
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     176  label while.head_51: 
.while.head_51:
              #                     172  temp_39_value_from_ptr_50_0 = load *f_0:ptr->i32 
              #                    occupy a4 with *f_0
              #                       load label f as ptr to reg
    la      a4, f
              #                    occupy reg a4 with *f_0
              #                    occupy s1 with temp_39_value_from_ptr_50_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_39_value_from_ptr_50_0
              #                    free a4
              #                     173  mu f_0_7:172 
              #                     175  temp_40_cmp_50_0 = icmp i32 Sgt temp_39_value_from_ptr_50_0, 2_0 
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    load from temp_39_value_from_ptr_50_0 in mem


    lw      a4,20(sp)
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s5 with temp_40_cmp_50_0
    slt     s5,s1,a4
              #                    free a4
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_39_value_from_ptr_50_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_40_cmp_50_0
              #                    store to temp_40_cmp_50_0 in mem offset legal
    sb      s5,19(sp)
              #                    release s5 with temp_40_cmp_50_0
              #                     179  br i1 temp_40_cmp_50_0, label while.body_51, label while.exit_51 
              #                    occupy a4 with temp_40_cmp_50_0
              #                    load from temp_40_cmp_50_0 in mem


    lb      a4,19(sp)
              #                    free a4
              #                    occupy a4 with temp_40_cmp_50_0
              #                    store to temp_40_cmp_50_0 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_40_cmp_50_0
              #                    occupy a4 with temp_40_cmp_50_0
              #                    load from temp_40_cmp_50_0 in mem


    lb      a4,19(sp)
    bnez    a4, .while.body_51
              #                    free a4
              #                    occupy a4 with temp_40_cmp_50_0
              #                    store to temp_40_cmp_50_0 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_40_cmp_50_0
    j       .while.exit_51
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     177  label while.body_51: 
.while.body_51:
              #                     102  (nop) 
              #                     103  mu f_0_7:102 
              #                     105  temp_24_arithop_52_0 = Sub i32 temp_39_value_from_ptr_50_0, 2_0 
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    load from temp_39_value_from_ptr_50_0 in mem


    lw      a4,20(sp)
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s5 with temp_24_arithop_52_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: temp_39_value_from_ptr_50_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_24_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_39_value_from_ptr_50_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_24_arithop_52_0
              #                    store to temp_24_arithop_52_0 in mem offset legal
    sw      s5,52(sp)
              #                    release s5 with temp_24_arithop_52_0
              #                     106  store temp_24_arithop_52_0:i32 *f_0:ptr->i32 
              #                    occupy a4 with *f_0
              #                       load label f as ptr to reg
    la      a4, f
              #                    occupy reg a4 with *f_0
              #                    occupy s1 with temp_24_arithop_52_0
              #                    load from temp_24_arithop_52_0 in mem


    lw      s1,52(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_24_arithop_52_0
              #                    store to temp_24_arithop_52_0 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with temp_24_arithop_52_0
              #                    free a4
              #                     107  f_0_8 = chi f_0_7:106 
              #                          jump label: while.head_55 
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     185  label while.head_55: 
.while.head_55:
              #                     181  temp_41_value_from_ptr_54_0 = load *g_0:ptr->i32 
              #                    occupy a4 with *g_0
              #                       load label g as ptr to reg
    la      a4, g
              #                    occupy reg a4 with *g_0
              #                    occupy s1 with temp_41_value_from_ptr_54_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_41_value_from_ptr_54_0
              #                    store to temp_41_value_from_ptr_54_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_41_value_from_ptr_54_0
              #                    free a4
              #                     182  mu g_0_8:181 
              #                     184  temp_42_cmp_54_0 = icmp i32 Slt temp_41_value_from_ptr_54_0, 3_0 
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    load from temp_41_value_from_ptr_54_0 in mem


    lw      a4,12(sp)
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s5 with temp_42_cmp_54_0
    slt     s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    store to temp_41_value_from_ptr_54_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_41_value_from_ptr_54_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_42_cmp_54_0
              #                    store to temp_42_cmp_54_0 in mem offset legal
    sb      s5,11(sp)
              #                    release s5 with temp_42_cmp_54_0
              #                     188  br i1 temp_42_cmp_54_0, label while.body_55, label while.exit_55 
              #                    occupy a4 with temp_42_cmp_54_0
              #                    load from temp_42_cmp_54_0 in mem


    lb      a4,11(sp)
              #                    free a4
              #                    occupy a4 with temp_42_cmp_54_0
              #                    store to temp_42_cmp_54_0 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_42_cmp_54_0
              #                    occupy a4 with temp_42_cmp_54_0
              #                    load from temp_42_cmp_54_0 in mem


    lb      a4,11(sp)
    bnez    a4, .while.body_55
              #                    free a4
              #                    occupy a4 with temp_42_cmp_54_0
              #                    store to temp_42_cmp_54_0 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_42_cmp_54_0
    j       .while.exit_55
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     186  label while.body_55: 
.while.body_55:
              #                     116  (nop) 
              #                     117  mu g_0_8:116 
              #                     119  temp_28_arithop_56_0 = Add i32 temp_41_value_from_ptr_54_0, 10_0 
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    load from temp_41_value_from_ptr_54_0 in mem


    lw      a4,12(sp)
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s5 with temp_28_arithop_56_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    store to temp_41_value_from_ptr_54_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_41_value_from_ptr_54_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_28_arithop_56_0
              #                    store to temp_28_arithop_56_0 in mem offset legal
    sw      s5,44(sp)
              #                    release s5 with temp_28_arithop_56_0
              #                     120  store temp_28_arithop_56_0:i32 *g_0:ptr->i32 
              #                    occupy a4 with *g_0
              #                       load label g as ptr to reg
    la      a4, g
              #                    occupy reg a4 with *g_0
              #                    occupy s1 with temp_28_arithop_56_0
              #                    load from temp_28_arithop_56_0 in mem


    lw      s1,44(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_28_arithop_56_0
              #                    store to temp_28_arithop_56_0 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with temp_28_arithop_56_0
              #                    free a4
              #                     121  g_0_9 = chi g_0_8:120 
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     194  label while.head_59: 
.while.head_59:
              #                     190  temp_43_value_from_ptr_58_0 = load *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy s1 with temp_43_value_from_ptr_58_0
    lw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_43_value_from_ptr_58_0
              #                    store to temp_43_value_from_ptr_58_0 in mem offset legal
    sw      s1,4(sp)
              #                    release s1 with temp_43_value_from_ptr_58_0
              #                    free a4
              #                     191  mu h_0_9:190 
              #                     193  temp_44_cmp_58_0 = icmp i32 Slt temp_43_value_from_ptr_58_0, 10_0 
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    load from temp_43_value_from_ptr_58_0 in mem


    lw      a4,4(sp)
              #                    occupy s1 with 10_0
    li      s1, 10
              #                    occupy s5 with temp_44_cmp_58_0
    slt     s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    store to temp_43_value_from_ptr_58_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_43_value_from_ptr_58_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_44_cmp_58_0
              #                    store to temp_44_cmp_58_0 in mem offset legal
    sb      s5,3(sp)
              #                    release s5 with temp_44_cmp_58_0
              #                     197  br i1 temp_44_cmp_58_0, label while.body_59, label while.exit_59 
              #                    occupy a4 with temp_44_cmp_58_0
              #                    load from temp_44_cmp_58_0 in mem


    lb      a4,3(sp)
              #                    free a4
              #                    occupy a4 with temp_44_cmp_58_0
              #                    store to temp_44_cmp_58_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_44_cmp_58_0
              #                    occupy a4 with temp_44_cmp_58_0
              #                    load from temp_44_cmp_58_0 in mem


    lb      a4,3(sp)
    bnez    a4, .while.body_59
              #                    free a4
              #                    occupy a4 with temp_44_cmp_58_0
              #                    store to temp_44_cmp_58_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_44_cmp_58_0
    j       .while.exit_59
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     195  label while.body_59: 
.while.body_59:
              #                     130  (nop) 
              #                     131  mu h_0_9:130 
              #                     133  temp_32_arithop_60_0 = Add i32 temp_43_value_from_ptr_58_0, 8_0 
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    load from temp_43_value_from_ptr_58_0 in mem


    lw      a4,4(sp)
              #                    occupy s1 with 8_0
    li      s1, 8
              #                    occupy s5 with temp_32_arithop_60_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    store to temp_43_value_from_ptr_58_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_43_value_from_ptr_58_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_32_arithop_60_0
              #                    store to temp_32_arithop_60_0 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_32_arithop_60_0
              #                     134  store temp_32_arithop_60_0:i32 *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy s1 with temp_32_arithop_60_0
              #                    load from temp_32_arithop_60_0 in mem


    lw      s1,36(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_32_arithop_60_0
              #                    store to temp_32_arithop_60_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_32_arithop_60_0
              #                    free a4
              #                     135  h_0_10 = chi h_0_9:134 
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     196  label while.exit_59: 
.while.exit_59:
              #                     123  (nop) 
              #                     124  mu h_0_9:123 
              #                     126  temp_30_arithop_56_0 = Sub i32 temp_43_value_from_ptr_58_0, 1_0 
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    load from temp_43_value_from_ptr_58_0 in mem


    lw      a4,4(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_30_arithop_56_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: temp_43_value_from_ptr_58_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_30_arithop_56_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_43_value_from_ptr_58_0
              #                    store to temp_43_value_from_ptr_58_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_43_value_from_ptr_58_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_30_arithop_56_0
              #                    store to temp_30_arithop_56_0 in mem offset legal
    sw      s5,40(sp)
              #                    release s5 with temp_30_arithop_56_0
              #                     127  store temp_30_arithop_56_0:i32 *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy s1 with temp_30_arithop_56_0
              #                    load from temp_30_arithop_56_0 in mem


    lw      s1,40(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_30_arithop_56_0
              #                    store to temp_30_arithop_56_0 in mem offset legal
    sw      s1,40(sp)
              #                    release s1 with temp_30_arithop_56_0
              #                    free a4
              #                     128  h_0_11 = chi h_0_9:127 
              #                          jump label: while.head_55 
    j       .while.head_55
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     187  label while.exit_55: 
.while.exit_55:
              #                     109  (nop) 
              #                     110  mu g_0_8:109 
              #                     112  temp_26_arithop_52_0 = Sub i32 temp_41_value_from_ptr_54_0, 8_0 
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    load from temp_41_value_from_ptr_54_0 in mem


    lw      a4,12(sp)
              #                    occupy s1 with 8_0
    li      s1, 8
              #                    occupy s5 with temp_26_arithop_52_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: temp_41_value_from_ptr_54_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 8_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_26_arithop_52_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_41_value_from_ptr_54_0
              #                    store to temp_41_value_from_ptr_54_0 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_41_value_from_ptr_54_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_26_arithop_52_0
              #                    store to temp_26_arithop_52_0 in mem offset legal
    sw      s5,48(sp)
              #                    release s5 with temp_26_arithop_52_0
              #                     113  store temp_26_arithop_52_0:i32 *g_0:ptr->i32 
              #                    occupy a4 with *g_0
              #                       load label g as ptr to reg
    la      a4, g
              #                    occupy reg a4 with *g_0
              #                    occupy s1 with temp_26_arithop_52_0
              #                    load from temp_26_arithop_52_0 in mem


    lw      s1,48(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_26_arithop_52_0
              #                    store to temp_26_arithop_52_0 in mem offset legal
    sw      s1,48(sp)
              #                    release s1 with temp_26_arithop_52_0
              #                    free a4
              #                     114  g_0_10 = chi g_0_8:113 
              #                          jump label: while.head_51 
    j       .while.head_51
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     178  label while.exit_51: 
.while.exit_51:
              #                     95   (nop) 
              #                     96   mu f_0_7:95 
              #                     98   temp_22_arithop_48_0 = Add i32 temp_39_value_from_ptr_50_0, 1_0 
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    load from temp_39_value_from_ptr_50_0 in mem


    lw      a4,20(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_22_arithop_48_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_39_value_from_ptr_50_0
              #                    store to temp_39_value_from_ptr_50_0 in mem offset legal
    sw      a4,20(sp)
              #                    release a4 with temp_39_value_from_ptr_50_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_22_arithop_48_0
              #                    store to temp_22_arithop_48_0 in mem offset legal
    sw      s5,56(sp)
              #                    release s5 with temp_22_arithop_48_0
              #                     99   store temp_22_arithop_48_0:i32 *f_0:ptr->i32 
              #                    occupy a4 with *f_0
              #                       load label f as ptr to reg
    la      a4, f
              #                    occupy reg a4 with *f_0
              #                    occupy s1 with temp_22_arithop_48_0
              #                    load from temp_22_arithop_48_0 in mem


    lw      s1,56(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_22_arithop_48_0
              #                    store to temp_22_arithop_48_0 in mem offset legal
    sw      s1,56(sp)
              #                    release s1 with temp_22_arithop_48_0
              #                    free a4
              #                     100  f_0_9 = chi f_0_7:99 
              #                          jump label: while.head_47 
    j       .while.head_47
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     169  label while.exit_47: 
.while.exit_47:
              #                     81   (nop) 
              #                     82   mu e_0_6:81 
              #                     84   temp_18_arithop_44_0 = Add i32 temp_37_value_from_ptr_46_0, 1_0 
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    load from temp_37_value_from_ptr_46_0 in mem


    lw      a4,28(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_18_arithop_44_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with temp_37_value_from_ptr_46_0
              #                    store to temp_37_value_from_ptr_46_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_37_value_from_ptr_46_0
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_18_arithop_44_0
              #                    store to temp_18_arithop_44_0 in mem offset legal
    sw      s5,64(sp)
              #                    release s5 with temp_18_arithop_44_0
              #                     85   store temp_18_arithop_44_0:i32 *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy s1 with temp_18_arithop_44_0
              #                    load from temp_18_arithop_44_0 in mem


    lw      s1,64(sp)
    sw      s1,0(a4)
              #                    free s1
              #                    occupy s1 with temp_18_arithop_44_0
              #                    store to temp_18_arithop_44_0 in mem offset legal
    sw      s1,64(sp)
              #                    release s1 with temp_18_arithop_44_0
              #                    free a4
              #                     86   e_0_8 = chi e_0_6:85 
              #                     282  d_21_5 = i32 temp_16_arithop_44_0 
              #                    occupy a4 with temp_16_arithop_44_0
              #                    load from temp_16_arithop_44_0 in mem


    lw      a4,68(sp)
              #                    occupy s1 with d_21_5
    mv      s1, a4
              #                    free a4
              #                    occupy a4 with temp_16_arithop_44_0
              #                    store to temp_16_arithop_44_0 in mem offset legal
    sw      a4,68(sp)
              #                    release a4 with temp_16_arithop_44_0
              #                    free s1
              #                    occupy s1 with d_21_5
              #                    store to d_21_5 in mem offset legal
    sw      s1,136(sp)
              #                    release s1 with d_21_5
              #                          jump label: while.head_43 
              #                    occupy a4 with d_21_5
              #                    load from d_21_5 in mem


    lw      a4,136(sp)
              #                    occupy s2 with temp_36_cmp_42_0
              #                    store to temp_36_cmp_42_0 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_36_cmp_42_0
    j       .while.head_43
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     160  label while.exit_43: 
.while.exit_43:
              #                     75   temp_15_arithop_40_0 = Sub i32 d_21_5, 1_0 
              #                    occupy a4 with d_21_5
              #                    load from d_21_5 in mem


    lw      a4,136(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_15_arithop_40_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: d_21_5, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_36_cmp_42_0, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |     s5:Occupied { symidx: temp_15_arithop_40_0, tracked: true, occupy_count: 1 } |  released_gpr_count:2,released_fpr_count:24


    subw    s5,a4,s1
              #                    free a4
              #                    occupy a4 with d_21_5
              #                    store to d_21_5 in mem offset legal
    sw      a4,136(sp)
              #                    release a4 with d_21_5
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_15_arithop_40_0
              #                    store to temp_15_arithop_40_0 in mem offset legal
    sw      s5,72(sp)
              #                    release s5 with temp_15_arithop_40_0
              #                     76   (nop) 
              #                     283  d_21_4 = i32 temp_15_arithop_40_0 
              #                    occupy a4 with temp_15_arithop_40_0
              #                    load from temp_15_arithop_40_0 in mem


    lw      a4,72(sp)
              #                    occupy s1 with d_21_4
    mv      s1, a4
              #                    free a4
              #                    occupy a4 with temp_15_arithop_40_0
              #                    store to temp_15_arithop_40_0 in mem offset legal
    sw      a4,72(sp)
              #                    release a4 with temp_15_arithop_40_0
              #                    free s1
              #                    occupy s1 with d_21_4
              #                    store to d_21_4 in mem offset legal
    sw      s1,140(sp)
              #                    release s1 with d_21_4
              #                     284  c_21_4 = i32 temp_14_arithop_40_0 
              #                    occupy a4 with temp_14_arithop_40_0
              #                    load from temp_14_arithop_40_0 in mem


    lw      a4,76(sp)
              #                    occupy s1 with c_21_4
    mv      s1, a4
              #                    free a4
              #                    occupy a4 with temp_14_arithop_40_0
              #                    store to temp_14_arithop_40_0 in mem offset legal
    sw      a4,76(sp)
              #                    release a4 with temp_14_arithop_40_0
              #                    free s1
              #                    occupy s1 with c_21_4
              #                    store to c_21_4 in mem offset legal
    sw      s1,156(sp)
              #                    release s1 with c_21_4
              #                          jump label: while.head_39 
              #                    occupy s2 with temp_36_cmp_42_0
              #                    store to temp_36_cmp_42_0 in mem offset legal
    sb      s2,32(sp)
              #                    release s2 with temp_36_cmp_42_0
              #                    occupy s2 with d_21_4
              #                    load from d_21_4 in mem


    lw      s2,140(sp)
              #                    occupy a7 with temp_35_cmp_38_0
              #                    store to temp_35_cmp_38_0 in mem offset legal
    sb      a7,33(sp)
              #                    release a7 with temp_35_cmp_38_0
              #                    occupy s1 with c_21_4
              #                    load from c_21_4 in mem


    lw      s1,156(sp)
    j       .while.head_39
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: temp_35_cmp_38_0, tracked: true } |     s2:Freed { symidx: d_21_4, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Freed { symidx: temp_12_arithop_36_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     154  label while.exit_39: 
.while.exit_39:
              #                     69   temp_13_arithop_36_0 = Add i32 c_21_4, 1_0 
              #                    occupy a4 with c_21_4
              #                    load from c_21_4 in mem


    lw      a4,156(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with temp_13_arithop_36_0
    ADDW    s5,a4,s1
              #                    free a4
              #                    occupy a4 with c_21_4
              #                    store to c_21_4 in mem offset legal
    sw      a4,156(sp)
              #                    release a4 with c_21_4
              #                    free s1
              #                    free s5
              #                    occupy s5 with temp_13_arithop_36_0
              #                    store to temp_13_arithop_36_0 in mem offset legal
    sw      s5,80(sp)
              #                    release s5 with temp_13_arithop_36_0
              #                     70   (nop) 
              #                     285  d_21_3 = i32 d_21_4 
              #                    occupy s2 with d_21_4
              #                    occupy a4 with d_21_3
    mv      a4, s2
              #                    free s2
              #                    occupy s2 with d_21_4
              #                    store to d_21_4 in mem offset legal
    sw      s2,140(sp)
              #                    release s2 with d_21_4
              #                    free a4
              #                     286  c_21_3 = i32 temp_13_arithop_36_0 
              #                    occupy s1 with temp_13_arithop_36_0
              #                    load from temp_13_arithop_36_0 in mem


    lw      s1,80(sp)
              #                    occupy s2 with c_21_3
    mv      s2, s1
              #                    free s1
              #                    occupy s1 with temp_13_arithop_36_0
              #                    store to temp_13_arithop_36_0 in mem offset legal
    sw      s1,80(sp)
              #                    release s1 with temp_13_arithop_36_0
              #                    free s2
              #                    occupy s2 with c_21_3
              #                    store to c_21_3 in mem offset legal
    sw      s2,160(sp)
              #                    release s2 with c_21_3
              #                     287  b_21_3 = i32 temp_12_arithop_36_0 
              #                    occupy s4 with temp_12_arithop_36_0
              #                    occupy s1 with b_21_3
    mv      s1, s4
              #                    free s4
              #                    occupy s4 with temp_12_arithop_36_0
              #                    store to temp_12_arithop_36_0 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with temp_12_arithop_36_0
              #                    free s1
              #                          jump label: while.head_35 
              #                    occupy a4 with d_21_3
              #                    store to d_21_3 in mem offset legal
    sw      a4,144(sp)
              #                    release a4 with d_21_3
              #                    occupy s2 with c_21_3
              #                    load from c_21_3 in mem


    lw      s2,160(sp)
              #                    occupy s3 with temp_34_cmp_34_0
              #                    store to temp_34_cmp_34_0 in mem offset legal
    sb      s3,34(sp)
              #                    release s3 with temp_34_cmp_34_0
              #                    occupy a7 with temp_35_cmp_38_0
              #                    store to temp_35_cmp_38_0 in mem offset legal
    sb      a7,33(sp)
              #                    release a7 with temp_35_cmp_38_0
              #                    occupy a7 with d_21_3
              #                    load from d_21_3 in mem


    lw      a7,144(sp)
    j       .while.head_35
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: d_21_3, tracked: true } |     s1:Freed { symidx: b_21_3, tracked: true } |     s2:Freed { symidx: c_21_3, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     148  label while.exit_35: 
.while.exit_35:
              #                     63   temp_11_arithop_32_0 = Sub i32 b_21_3, 2_0 
              #                    occupy s1 with b_21_3
              #                    occupy a4 with 2_0
    li      a4, 2
              #                    occupy s4 with temp_11_arithop_32_0
              #                    regtab:    a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a4:Occupied { symidx: 2_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Freed { symidx: temp_10_arithop_32_0, tracked: true } |     a7:Freed { symidx: d_21_3, tracked: true } |     s1:Occupied { symidx: b_21_3, tracked: true, occupy_count: 1 } |     s2:Freed { symidx: c_21_3, tracked: true } |     s3:Freed { symidx: temp_34_cmp_34_0, tracked: true } |     s4:Occupied { symidx: temp_11_arithop_32_0, tracked: true, occupy_count: 1 } |  released_gpr_count:4,released_fpr_count:24


    subw    s4,s1,a4
              #                    free s1
              #                    occupy s1 with b_21_3
              #                    store to b_21_3 in mem offset legal
    sw      s1,172(sp)
              #                    release s1 with b_21_3
              #                    free a4
              #                    free s4
              #                     64   (nop) 
              #                     288  a_21_2 = i32 temp_10_arithop_32_0 
              #                    occupy a6 with temp_10_arithop_32_0
              #                    occupy a0 with a_21_2
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                     289  b_21_2 = i32 temp_11_arithop_32_0 
              #                    occupy s4 with temp_11_arithop_32_0
              #                    occupy a2 with b_21_2
    mv      a2, s4
              #                    free s4
              #                    free a2
              #                     290  c_21_2 = i32 c_21_3 
              #                    occupy s2 with c_21_3
              #                    occupy a3 with c_21_2
    mv      a3, s2
              #                    free s2
              #                    free a3
              #                     291  d_21_2 = i32 d_21_3 
              #                    occupy a7 with d_21_3
              #                    occupy a1 with d_21_2
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_31 
              #                    occupy s2 with c_21_3
              #                    store to c_21_3 in mem offset legal
    sw      s2,160(sp)
              #                    release s2 with c_21_3
              #                    occupy a6 with temp_10_arithop_32_0
              #                    store to temp_10_arithop_32_0 in mem offset legal
    sw      a6,92(sp)
              #                    release a6 with temp_10_arithop_32_0
              #                    occupy s3 with temp_34_cmp_34_0
              #                    store to temp_34_cmp_34_0 in mem offset legal
    sb      s3,34(sp)
              #                    release s3 with temp_34_cmp_34_0
              #                    occupy a7 with d_21_3
              #                    store to d_21_3 in mem offset legal
    sw      a7,144(sp)
              #                    release a7 with d_21_3
              #                    occupy s4 with temp_11_arithop_32_0
              #                    store to temp_11_arithop_32_0 in mem offset legal
    sw      s4,88(sp)
              #                    release s4 with temp_11_arithop_32_0
              #                    occupy a5 with temp_33_cmp_30_0
              #                    store to temp_33_cmp_30_0 in mem offset legal
    sb      a5,35(sp)
              #                    release a5 with temp_33_cmp_30_0
    j       .while.head_31
              #                    regtab     a0:Freed { symidx: a_21_2, tracked: true } |     a1:Freed { symidx: d_21_2, tracked: true } |     a2:Freed { symidx: b_21_2, tracked: true } |     a3:Freed { symidx: c_21_2, tracked: true } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     140  label while.exit_31: 
.while.exit_31:
              #                     36   temp_0_arithop_21_0 = Add i32 b_21_2, d_21_2 
              #                    occupy a2 with b_21_2
              #                    occupy a1 with d_21_2
              #                    occupy a4 with temp_0_arithop_21_0
    ADDW    a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     301  untrack b_21_2 
              #                    occupy a2 with b_21_2
              #                    release a2 with b_21_2
              #                     38   temp_1_arithop_21_0 = Add i32 a_21_2, temp_0_arithop_21_0 
              #                    occupy a0 with a_21_2
              #                    occupy a4 with temp_0_arithop_21_0
              #                    occupy a2 with temp_1_arithop_21_0
    ADDW    a2,a0,a4
              #                    free a0
              #                    free a4
              #                    free a2
              #                     304  untrack temp_0_arithop_21_0 
              #                    occupy a4 with temp_0_arithop_21_0
              #                    release a4 with temp_0_arithop_21_0
              #                     298  untrack a_21_2 
              #                    occupy a0 with a_21_2
              #                    release a0 with a_21_2
              #                     40   temp_2_arithop_21_0 = Add i32 temp_1_arithop_21_0, c_21_2 
              #                    occupy a2 with temp_1_arithop_21_0
              #                    occupy a3 with c_21_2
              #                    occupy a0 with temp_2_arithop_21_0
    ADDW    a0,a2,a3
              #                    free a2
              #                    free a3
              #                    free a0
              #                     297  untrack temp_1_arithop_21_0 
              #                    occupy a2 with temp_1_arithop_21_0
              #                    release a2 with temp_1_arithop_21_0
              #                     292  untrack c_21_2 
              #                    occupy a3 with c_21_2
              #                    release a3 with c_21_2
              #                     42   temp_3_value_from_ptr_21_0 = load *e_0:ptr->i32 
              #                    occupy a2 with *e_0
              #                       load label e as ptr to reg
    la      a2, e
              #                    occupy reg a2 with *e_0
              #                    occupy a3 with temp_3_value_from_ptr_21_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     43   mu e_0_2:42 
              #                     45   temp_4_arithop_21_0 = Add i32 temp_3_value_from_ptr_21_0, d_21_2 
              #                    occupy a3 with temp_3_value_from_ptr_21_0
              #                    occupy a1 with d_21_2
              #                    occupy a4 with temp_4_arithop_21_0
    ADDW    a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     300  untrack d_21_2 
              #                    occupy a1 with d_21_2
              #                    release a1 with d_21_2
              #                     296  untrack temp_3_value_from_ptr_21_0 
              #                    occupy a3 with temp_3_value_from_ptr_21_0
              #                    release a3 with temp_3_value_from_ptr_21_0
              #                     47   temp_5_value_from_ptr_21_0 = load *g_0:ptr->i32 
              #                    occupy a1 with *g_0
              #                       load label g as ptr to reg
    la      a1, g
              #                    occupy reg a1 with *g_0
              #                    occupy a3 with temp_5_value_from_ptr_21_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     48   mu g_0_2:47 
              #                     50   temp_6_arithop_21_0 = Sub i32 temp_4_arithop_21_0, temp_5_value_from_ptr_21_0 
              #                    occupy a4 with temp_4_arithop_21_0
              #                    occupy a3 with temp_5_value_from_ptr_21_0
              #                    occupy a6 with temp_6_arithop_21_0
              #                    regtab:    a0:Freed { symidx: temp_2_arithop_21_0, tracked: true } |     a1:Freed { symidx: *g_0, tracked: false } |     a2:Freed { symidx: *e_0, tracked: false } |     a3:Occupied { symidx: temp_5_value_from_ptr_21_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_4_arithop_21_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a6:Occupied { symidx: temp_6_arithop_21_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a6,a4,a3
              #                    free a4
              #                    free a3
              #                    free a6
              #                     302  untrack temp_5_value_from_ptr_21_0 
              #                    occupy a3 with temp_5_value_from_ptr_21_0
              #                    release a3 with temp_5_value_from_ptr_21_0
              #                     293  untrack temp_4_arithop_21_0 
              #                    occupy a4 with temp_4_arithop_21_0
              #                    release a4 with temp_4_arithop_21_0
              #                     52   temp_7_value_from_ptr_21_0 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a4 with temp_7_value_from_ptr_21_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     53   mu h_0_2:52 
              #                     55   temp_8_arithop_21_0 = Add i32 temp_6_arithop_21_0, temp_7_value_from_ptr_21_0 
              #                    occupy a6 with temp_6_arithop_21_0
              #                    occupy a4 with temp_7_value_from_ptr_21_0
              #                    occupy a7 with temp_8_arithop_21_0
    ADDW    a7,a6,a4
              #                    free a6
              #                    free a4
              #                    free a7
              #                     303  untrack temp_7_value_from_ptr_21_0 
              #                    occupy a4 with temp_7_value_from_ptr_21_0
              #                    release a4 with temp_7_value_from_ptr_21_0
              #                     295  untrack temp_6_arithop_21_0 
              #                    occupy a6 with temp_6_arithop_21_0
              #                    release a6 with temp_6_arithop_21_0
              #                     57   temp_9_arithop_21_0 = Sub i32 temp_2_arithop_21_0, temp_8_arithop_21_0 
              #                    occupy a0 with temp_2_arithop_21_0
              #                    occupy a7 with temp_8_arithop_21_0
              #                    occupy a4 with temp_9_arithop_21_0
              #                    regtab:    a0:Occupied { symidx: temp_2_arithop_21_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: *g_0, tracked: false } |     a2:Freed { symidx: *e_0, tracked: false } |     a3:Freed { symidx: *h_0, tracked: false } |     a4:Occupied { symidx: temp_9_arithop_21_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_33_cmp_30_0, tracked: true } |     a7:Occupied { symidx: temp_8_arithop_21_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a4,a0,a7
              #                    free a0
              #                    free a7
              #                    free a4
              #                     299  untrack temp_8_arithop_21_0 
              #                    occupy a7 with temp_8_arithop_21_0
              #                    release a7 with temp_8_arithop_21_0
              #                     294  untrack temp_2_arithop_21_0 
              #                    occupy a0 with temp_2_arithop_21_0
              #                    release a0 with temp_2_arithop_21_0
              #                     216  mu h_0_2:58 
              #                     217  mu e_0_2:58 
              #                     218  mu g_0_2:58 
              #                     219  mu f_0_2:58 
              #                     58   ret temp_9_arithop_21_0 
              #                    load from ra_EightWhile_0 in mem
    ld      ra,200(sp)
              #                    load from s0_EightWhile_0 in mem
    ld      s0,192(sp)
              #                    occupy a4 with temp_9_arithop_21_0
              #                    store to temp_9_arithop_21_0 in mem offset legal
    sw      a4,96(sp)
              #                    release a4 with temp_9_arithop_21_0
              #                    occupy a0 with temp_9_arithop_21_0
              #                    load from temp_9_arithop_21_0 in mem


    lw      a0,96(sp)
    addi    sp,sp,208
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_45_ret_of_EightWhile _s71 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     220  h_0_12 = chi h_0_0:21 
              #                     221  g_0_11 = chi g_0_0:21 
              #                     222  f_0_10 = chi f_0_0:21 
              #                     223  e_0_9 = chi e_0_0:21 
              #                     207  alloc i32 [temp_45_ret_of_EightWhile_71] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     198  store 1_0:i32 *g_0:ptr->i32 
              #                    occupy a0 with *g_0
              #                       load label g as ptr to reg
    la      a0, g
              #                    occupy reg a0 with *g_0
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     199  g_0_12 = chi g_0_11:198 
              #                     200  store 2_0:i32 *h_0:ptr->i32 
              #                    occupy a2 with *h_0
              #                       load label h as ptr to reg
    la      a2, h
              #                    occupy reg a2 with *h_0
              #                    occupy a3 with 2_0
    li      a3, 2
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     201  h_0_13 = chi h_0_12:200 
              #                     202  store 4_0:i32 *e_0:ptr->i32 
              #                    occupy a4 with *e_0
              #                       load label e as ptr to reg
    la      a4, e
              #                    occupy reg a4 with *e_0
              #                    occupy a5 with 4_0
    li      a5, 4
    sw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     203  e_0_10 = chi e_0_9:202 
              #                     204  store 6_0:i32 *f_0:ptr->i32 
              #                    occupy a6 with *f_0
              #                       load label f as ptr to reg
    la      a6, f
              #                    occupy reg a6 with *f_0
              #                    occupy a7 with 6_0
    li      a7, 6
    sw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     205  f_0_11 = chi f_0_10:204 
              #                     208  temp_45_ret_of_EightWhile_71_0 =  Call i32 EightWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    EightWhile
              #                     224  mu e_0_10:208 
              #                     225  mu g_0_12:208 
              #                     226  mu f_0_11:208 
              #                     227  mu h_0_13:208 
              #                     228  h_0_14 = chi h_0_13:208 
              #                     229  e_0_11 = chi e_0_10:208 
              #                     230  g_0_13 = chi g_0_12:208 
              #                     231  f_0_12 = chi f_0_11:208 
              #                     232  mu h_0_14:209 
              #                     233  mu g_0_13:209 
              #                     234  mu f_0_12:209 
              #                     235  mu e_0_11:209 
              #                     209  ret temp_45_ret_of_EightWhile_71_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_45_ret_of_EightWhile_71_0
              #                    store to temp_45_ret_of_EightWhile_71_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_45_ret_of_EightWhile_71_0
              #                    occupy a0 with temp_45_ret_of_EightWhile_71_0
              #                    load from temp_45_ret_of_EightWhile_71_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl e
              #                     18   global i32 e_0 
    .type e,@object
e:
    .word 0
    .align 4
    .globl f
              #                     17   global i32 f_0 
    .type f,@object
f:
    .word 0
    .align 4
    .globl h
              #                     16   global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl g
              #                     15   global i32 g_0 
    .type g,@object
g:
    .word 0
