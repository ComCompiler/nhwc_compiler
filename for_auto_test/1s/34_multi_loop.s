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
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 216|s0_main:8 at 208|a _s17 _i1:4 at 204|a _s17 _i2:4 at 200|a _s17 _i3:4 at 196|a _s17 _i4:4 at 192|a _s17 _i5:4 at 188|a _s17 _i6:4 at 184|a _s17 _i7:4 at 180|a _s17 _i8:4 at 176|a _s17 _i9:4 at 172|a _s17 _i10:4 at 168|a _s17 _i11:4 at 164|a _s17 _i12:4 at 160|a _s17 _i13:4 at 156|a _s17 _i14:4 at 152|a _s17 _i15:4 at 148|i _s17 _i1:4 at 144|j _s22 _i1:4 at 140|temp_0_arithop _s22 _i0:4 at 136|k _s26 _i1:4 at 132|temp_1_arithop _s26 _i0:4 at 128|ii _s30 _i1:4 at 124|temp_2_arithop _s30 _i0:4 at 120|jj _s34 _i1:4 at 116|temp_3_arithop _s34 _i0:4 at 112|kk _s38 _i1:4 at 108|temp_4_arithop _s38 _i0:4 at 104|iii _s42 _i1:4 at 100|temp_5_arithop _s42 _i0:4 at 96|jjj _s46 _i1:4 at 92|temp_6_arithop _s46 _i0:4 at 88|kkk _s50 _i1:4 at 84|temp_7_arithop _s50 _i0:4 at 80|iiii _s54 _i1:4 at 76|temp_8_arithop _s54 _i0:4 at 72|jjjj _s58 _i1:4 at 68|temp_9_arithop _s58 _i0:4 at 64|kkkk _s62 _i1:4 at 60|temp_10_arithop _s62 _i0:4 at 56|iiiii _s66 _i1:4 at 52|temp_11_arithop _s66 _i0:4 at 48|jjjjj _s70 _i1:4 at 44|temp_12_arithop _s70 _i0:4 at 40|kkkkk _s74 _i1:4 at 36|temp_13_arithop _s74 _i0:4 at 32|temp_14_arithop _s78 _i0:4 at 28|temp_15_arithop _s78 _i0:4 at 24|temp_16_arithop _s78 _i0:4 at 20|temp_17_cmp _s20 _i0:1 at 19|temp_18_cmp _s24 _i0:1 at 18|temp_19_cmp _s28 _i0:1 at 17|temp_20_cmp _s32 _i0:1 at 16|temp_21_cmp _s36 _i0:1 at 15|temp_22_cmp _s40 _i0:1 at 14|temp_23_cmp _s44 _i0:1 at 13|temp_24_cmp _s48 _i0:1 at 12|temp_25_cmp _s52 _i0:1 at 11|temp_26_cmp _s56 _i0:1 at 10|temp_27_cmp _s60 _i0:1 at 9|temp_28_cmp _s64 _i0:1 at 8|temp_29_cmp _s68 _i0:1 at 7|temp_30_cmp _s72 _i0:1 at 6|temp_31_cmp _s76 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-224
              #                    store to ra_main_0 in mem offset legal
    sd      ra,216(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,208(sp)
    addi    s0,sp,224
              #                     18   alloc i32 [a_17] 
              #                     20   alloc i32 [i_17] 
              #                     24   alloc i32 [j_22] 
              #                     25   alloc i32 [temp_0_arithop_22] 
              #                     29   alloc i32 [k_26] 
              #                     30   alloc i32 [temp_1_arithop_26] 
              #                     34   alloc i32 [ii_30] 
              #                     35   alloc i32 [temp_2_arithop_30] 
              #                     39   alloc i32 [jj_34] 
              #                     40   alloc i32 [temp_3_arithop_34] 
              #                     44   alloc i32 [kk_38] 
              #                     45   alloc i32 [temp_4_arithop_38] 
              #                     49   alloc i32 [iii_42] 
              #                     50   alloc i32 [temp_5_arithop_42] 
              #                     54   alloc i32 [jjj_46] 
              #                     55   alloc i32 [temp_6_arithop_46] 
              #                     59   alloc i32 [kkk_50] 
              #                     60   alloc i32 [temp_7_arithop_50] 
              #                     64   alloc i32 [iiii_54] 
              #                     65   alloc i32 [temp_8_arithop_54] 
              #                     69   alloc i32 [jjjj_58] 
              #                     70   alloc i32 [temp_9_arithop_58] 
              #                     74   alloc i32 [kkkk_62] 
              #                     75   alloc i32 [temp_10_arithop_62] 
              #                     79   alloc i32 [iiiii_66] 
              #                     80   alloc i32 [temp_11_arithop_66] 
              #                     84   alloc i32 [jjjjj_70] 
              #                     85   alloc i32 [temp_12_arithop_70] 
              #                     89   alloc i32 [kkkkk_74] 
              #                     90   alloc i32 [temp_13_arithop_74] 
              #                     93   alloc i32 [temp_14_arithop_78] 
              #                     95   alloc i32 [temp_15_arithop_78] 
              #                     98   alloc i32 [temp_16_arithop_78] 
              #                     101  alloc i1 [temp_17_cmp_20] 
              #                     109  alloc i1 [temp_18_cmp_24] 
              #                     115  alloc i1 [temp_19_cmp_28] 
              #                     121  alloc i1 [temp_20_cmp_32] 
              #                     127  alloc i1 [temp_21_cmp_36] 
              #                     133  alloc i1 [temp_22_cmp_40] 
              #                     139  alloc i1 [temp_23_cmp_44] 
              #                     145  alloc i1 [temp_24_cmp_48] 
              #                     151  alloc i1 [temp_25_cmp_52] 
              #                     157  alloc i1 [temp_26_cmp_56] 
              #                     163  alloc i1 [temp_27_cmp_60] 
              #                     169  alloc i1 [temp_28_cmp_64] 
              #                     175  alloc i1 [temp_29_cmp_68] 
              #                     181  alloc i1 [temp_30_cmp_72] 
              #                     187  alloc i1 [temp_31_cmp_76] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
              #                     19   (nop) 
              #                     223  a_17_1 = i32 0_0 
              #                    occupy a0 with a_17_1
    li      a0, 0
              #                    free a0
              #                     224  i_17_1 = i32 0_0 
              #                    occupy a1 with i_17_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     103  label while.head_21: 
.while.head_21:
              #                     102  temp_17_cmp_20_0 = icmp i32 Slt i_17_1, 3_0 
              #                    occupy a1 with i_17_1
              #                    occupy a2 with 3_0
    li      a2, 3
              #                    occupy a3 with temp_17_cmp_20_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     106  br i1 temp_17_cmp_20_0, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_17_cmp_20_0
              #                    free a3
              #                    occupy a3 with temp_17_cmp_20_0
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     104  label while.body_21: 
.while.body_21:
              #                     23   (nop) 
              #                     225  a_17_2 = i32 a_17_1 
              #                    occupy a0 with a_17_1
              #                    occupy a2 with a_17_2
    mv      a2, a0
              #                    free a0
              #                    free a2
              #                     226  j_22_1 = i32 0_0 
              #                    occupy a4 with j_22_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     111  label while.head_25: 
.while.head_25:
              #                     110  temp_18_cmp_24_0 = icmp i32 Slt j_22_1, 4_0 
              #                    occupy a4 with j_22_1
              #                    occupy a5 with 4_0
    li      a5, 4
              #                    occupy a6 with temp_18_cmp_24_0
    slt     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                     114  br i1 temp_18_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a6 with temp_18_cmp_24_0
              #                    free a6
              #                    occupy a6 with temp_18_cmp_24_0
    bnez    a6, .while.body_25
              #                    free a6
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     112  label while.body_25: 
.while.body_25:
              #                     28   (nop) 
              #                     227  a_17_3 = i32 a_17_2 
              #                    occupy a2 with a_17_2
              #                    occupy a5 with a_17_3
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                     228  k_26_1 = i32 0_0 
              #                    occupy a7 with k_26_1
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     117  label while.head_29: 
.while.head_29:
              #                     116  temp_19_cmp_28_0 = icmp i32 Slt k_26_1, 5_0 
              #                    occupy a7 with k_26_1
              #                    occupy s1 with 5_0
    li      s1, 5
              #                    occupy s2 with temp_19_cmp_28_0
    slt     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                     120  br i1 temp_19_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy s2 with temp_19_cmp_28_0
              #                    free s2
              #                    occupy s2 with temp_19_cmp_28_0
    bnez    s2, .while.body_29
              #                    free s2
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     118  label while.body_29: 
.while.body_29:
              #                     33   (nop) 
              #                     229  a_17_4 = i32 a_17_3 
              #                    occupy a5 with a_17_3
              #                    occupy s1 with a_17_4
    mv      s1, a5
              #                    free a5
              #                    free s1
              #                     230  ii_30_1 = i32 0_0 
              #                    occupy s3 with ii_30_1
    li      s3, 0
              #                    free s3
              #                          jump label: while.head_33 
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_4, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: ii_30_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     123  label while.head_33: 
.while.head_33:
              #                     122  temp_20_cmp_32_0 = icmp i32 Slt ii_30_1, 3_0 
              #                    occupy s3 with ii_30_1
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with temp_20_cmp_32_0
    slt     s5,s3,s4
              #                    free s3
              #                    occupy s3 with ii_30_1
              #                    store to ii_30_1 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with ii_30_1
              #                    free s4
              #                    free s5
              #                     126  br i1 temp_20_cmp_32_0, label while.body_33, label while.exit_33 
              #                    occupy s5 with temp_20_cmp_32_0
              #                    free s5
              #                    occupy s5 with temp_20_cmp_32_0
    bnez    s5, .while.body_33
              #                    free s5
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_4, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     124  label while.body_33: 
.while.body_33:
              #                     38   (nop) 
              #                     231  a_17_5 = i32 a_17_4 
              #                    occupy s1 with a_17_4
              #                    occupy s3 with a_17_5
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      s1,192(sp)
              #                    release s1 with a_17_4
              #                    free s3
              #                     232  jj_34_1 = i32 0_0 
              #                    occupy s1 with jj_34_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with jj_34_1
              #                    store to jj_34_1 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with jj_34_1
              #                          jump label: while.head_37 
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_5, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     129  label while.head_37: 
.while.head_37:
              #                     128  temp_21_cmp_36_0 = icmp i32 Slt jj_34_1, 5_0 
              #                    occupy s1 with jj_34_1
              #                    load from jj_34_1 in mem


    lw      s1,116(sp)
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s6 with temp_21_cmp_36_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with jj_34_1
              #                    store to jj_34_1 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with jj_34_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_21_cmp_36_0
              #                    store to temp_21_cmp_36_0 in mem offset legal
    sb      s6,15(sp)
              #                    release s6 with temp_21_cmp_36_0
              #                     132  br i1 temp_21_cmp_36_0, label while.body_37, label while.exit_37 
              #                    occupy s1 with temp_21_cmp_36_0
              #                    load from temp_21_cmp_36_0 in mem


    lb      s1,15(sp)
              #                    free s1
              #                    occupy s1 with temp_21_cmp_36_0
              #                    store to temp_21_cmp_36_0 in mem offset legal
    sb      s1,15(sp)
              #                    release s1 with temp_21_cmp_36_0
              #                    occupy s1 with temp_21_cmp_36_0
              #                    load from temp_21_cmp_36_0 in mem


    lb      s1,15(sp)
    bnez    s1, .while.body_37
              #                    free s1
              #                    occupy s1 with temp_21_cmp_36_0
              #                    store to temp_21_cmp_36_0 in mem offset legal
    sb      s1,15(sp)
              #                    release s1 with temp_21_cmp_36_0
    j       .while.exit_37
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_5, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     130  label while.body_37: 
.while.body_37:
              #                     43   (nop) 
              #                     233  a_17_6 = i32 a_17_5 
              #                    occupy s3 with a_17_5
              #                    occupy s1 with a_17_6
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      s3,188(sp)
              #                    release s3 with a_17_5
              #                    free s1
              #                     234  kk_38_1 = i32 0_0 
              #                    occupy s3 with kk_38_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with kk_38_1
              #                    store to kk_38_1 in mem offset legal
    sw      s3,108(sp)
              #                    release s3 with kk_38_1
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_6, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     135  label while.head_41: 
.while.head_41:
              #                     134  temp_22_cmp_40_0 = icmp i32 Slt kk_38_1, 4_0 
              #                    occupy s3 with kk_38_1
              #                    load from kk_38_1 in mem


    lw      s3,108(sp)
              #                    occupy s4 with 4_0
    li      s4, 4
              #                    occupy s6 with temp_22_cmp_40_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with kk_38_1
              #                    store to kk_38_1 in mem offset legal
    sw      s3,108(sp)
              #                    release s3 with kk_38_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_22_cmp_40_0
              #                    store to temp_22_cmp_40_0 in mem offset legal
    sb      s6,14(sp)
              #                    release s6 with temp_22_cmp_40_0
              #                     138  br i1 temp_22_cmp_40_0, label while.body_41, label while.exit_41 
              #                    occupy s3 with temp_22_cmp_40_0
              #                    load from temp_22_cmp_40_0 in mem


    lb      s3,14(sp)
              #                    free s3
              #                    occupy s3 with temp_22_cmp_40_0
              #                    store to temp_22_cmp_40_0 in mem offset legal
    sb      s3,14(sp)
              #                    release s3 with temp_22_cmp_40_0
              #                    occupy s3 with temp_22_cmp_40_0
              #                    load from temp_22_cmp_40_0 in mem


    lb      s3,14(sp)
    bnez    s3, .while.body_41
              #                    free s3
              #                    occupy s3 with temp_22_cmp_40_0
              #                    store to temp_22_cmp_40_0 in mem offset legal
    sb      s3,14(sp)
              #                    release s3 with temp_22_cmp_40_0
    j       .while.exit_41
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_6, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     136  label while.body_41: 
.while.body_41:
              #                     48   (nop) 
              #                     235  a_17_7 = i32 a_17_6 
              #                    occupy s1 with a_17_6
              #                    occupy s3 with a_17_7
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_6
              #                    store to a_17_6 in mem offset legal
    sw      s1,184(sp)
              #                    release s1 with a_17_6
              #                    free s3
              #                     236  iii_42_1 = i32 0_0 
              #                    occupy s1 with iii_42_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with iii_42_1
              #                    store to iii_42_1 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with iii_42_1
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_7, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     141  label while.head_45: 
.while.head_45:
              #                     140  temp_23_cmp_44_0 = icmp i32 Slt iii_42_1, 6_0 
              #                    occupy s1 with iii_42_1
              #                    load from iii_42_1 in mem


    lw      s1,100(sp)
              #                    occupy s4 with 6_0
    li      s4, 6
              #                    occupy s6 with temp_23_cmp_44_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with iii_42_1
              #                    store to iii_42_1 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with iii_42_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_23_cmp_44_0
              #                    store to temp_23_cmp_44_0 in mem offset legal
    sb      s6,13(sp)
              #                    release s6 with temp_23_cmp_44_0
              #                     144  br i1 temp_23_cmp_44_0, label while.body_45, label while.exit_45 
              #                    occupy s1 with temp_23_cmp_44_0
              #                    load from temp_23_cmp_44_0 in mem


    lb      s1,13(sp)
              #                    free s1
              #                    occupy s1 with temp_23_cmp_44_0
              #                    store to temp_23_cmp_44_0 in mem offset legal
    sb      s1,13(sp)
              #                    release s1 with temp_23_cmp_44_0
              #                    occupy s1 with temp_23_cmp_44_0
              #                    load from temp_23_cmp_44_0 in mem


    lb      s1,13(sp)
    bnez    s1, .while.body_45
              #                    free s1
              #                    occupy s1 with temp_23_cmp_44_0
              #                    store to temp_23_cmp_44_0 in mem offset legal
    sb      s1,13(sp)
              #                    release s1 with temp_23_cmp_44_0
    j       .while.exit_45
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_7, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     142  label while.body_45: 
.while.body_45:
              #                     53   (nop) 
              #                     237  a_17_8 = i32 a_17_7 
              #                    occupy s3 with a_17_7
              #                    occupy s1 with a_17_8
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_7
              #                    store to a_17_7 in mem offset legal
    sw      s3,180(sp)
              #                    release s3 with a_17_7
              #                    free s1
              #                     238  jjj_46_1 = i32 0_0 
              #                    occupy s3 with jjj_46_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with jjj_46_1
              #                    store to jjj_46_1 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with jjj_46_1
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_8, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     147  label while.head_49: 
.while.head_49:
              #                     146  temp_24_cmp_48_0 = icmp i32 Slt jjj_46_1, 5_0 
              #                    occupy s3 with jjj_46_1
              #                    load from jjj_46_1 in mem


    lw      s3,92(sp)
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s6 with temp_24_cmp_48_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with jjj_46_1
              #                    store to jjj_46_1 in mem offset legal
    sw      s3,92(sp)
              #                    release s3 with jjj_46_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_24_cmp_48_0
              #                    store to temp_24_cmp_48_0 in mem offset legal
    sb      s6,12(sp)
              #                    release s6 with temp_24_cmp_48_0
              #                     150  br i1 temp_24_cmp_48_0, label while.body_49, label while.exit_49 
              #                    occupy s3 with temp_24_cmp_48_0
              #                    load from temp_24_cmp_48_0 in mem


    lb      s3,12(sp)
              #                    free s3
              #                    occupy s3 with temp_24_cmp_48_0
              #                    store to temp_24_cmp_48_0 in mem offset legal
    sb      s3,12(sp)
              #                    release s3 with temp_24_cmp_48_0
              #                    occupy s3 with temp_24_cmp_48_0
              #                    load from temp_24_cmp_48_0 in mem


    lb      s3,12(sp)
    bnez    s3, .while.body_49
              #                    free s3
              #                    occupy s3 with temp_24_cmp_48_0
              #                    store to temp_24_cmp_48_0 in mem offset legal
    sb      s3,12(sp)
              #                    release s3 with temp_24_cmp_48_0
    j       .while.exit_49
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_8, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     148  label while.body_49: 
.while.body_49:
              #                     58   (nop) 
              #                     239  a_17_9 = i32 a_17_8 
              #                    occupy s1 with a_17_8
              #                    occupy s3 with a_17_9
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_8
              #                    store to a_17_8 in mem offset legal
    sw      s1,176(sp)
              #                    release s1 with a_17_8
              #                    free s3
              #                     240  kkk_50_1 = i32 0_0 
              #                    occupy s1 with kkk_50_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with kkk_50_1
              #                    store to kkk_50_1 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with kkk_50_1
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_9, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     153  label while.head_53: 
.while.head_53:
              #                     152  temp_25_cmp_52_0 = icmp i32 Slt kkk_50_1, 5_0 
              #                    occupy s1 with kkk_50_1
              #                    load from kkk_50_1 in mem


    lw      s1,84(sp)
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s6 with temp_25_cmp_52_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with kkk_50_1
              #                    store to kkk_50_1 in mem offset legal
    sw      s1,84(sp)
              #                    release s1 with kkk_50_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_25_cmp_52_0
              #                    store to temp_25_cmp_52_0 in mem offset legal
    sb      s6,11(sp)
              #                    release s6 with temp_25_cmp_52_0
              #                     156  br i1 temp_25_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy s1 with temp_25_cmp_52_0
              #                    load from temp_25_cmp_52_0 in mem


    lb      s1,11(sp)
              #                    free s1
              #                    occupy s1 with temp_25_cmp_52_0
              #                    store to temp_25_cmp_52_0 in mem offset legal
    sb      s1,11(sp)
              #                    release s1 with temp_25_cmp_52_0
              #                    occupy s1 with temp_25_cmp_52_0
              #                    load from temp_25_cmp_52_0 in mem


    lb      s1,11(sp)
    bnez    s1, .while.body_53
              #                    free s1
              #                    occupy s1 with temp_25_cmp_52_0
              #                    store to temp_25_cmp_52_0 in mem offset legal
    sb      s1,11(sp)
              #                    release s1 with temp_25_cmp_52_0
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_9, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     154  label while.body_53: 
.while.body_53:
              #                     63   (nop) 
              #                     241  a_17_10 = i32 a_17_9 
              #                    occupy s3 with a_17_9
              #                    occupy s1 with a_17_10
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_9
              #                    store to a_17_9 in mem offset legal
    sw      s3,172(sp)
              #                    release s3 with a_17_9
              #                    free s1
              #                     242  iiii_54_1 = i32 0_0 
              #                    occupy s3 with iiii_54_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with iiii_54_1
              #                    store to iiii_54_1 in mem offset legal
    sw      s3,76(sp)
              #                    release s3 with iiii_54_1
              #                          jump label: while.head_57 
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_10, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     159  label while.head_57: 
.while.head_57:
              #                     158  temp_26_cmp_56_0 = icmp i32 Slt iiii_54_1, 3_0 
              #                    occupy s3 with iiii_54_1
              #                    load from iiii_54_1 in mem


    lw      s3,76(sp)
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s6 with temp_26_cmp_56_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with iiii_54_1
              #                    store to iiii_54_1 in mem offset legal
    sw      s3,76(sp)
              #                    release s3 with iiii_54_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_26_cmp_56_0
              #                    store to temp_26_cmp_56_0 in mem offset legal
    sb      s6,10(sp)
              #                    release s6 with temp_26_cmp_56_0
              #                     162  br i1 temp_26_cmp_56_0, label while.body_57, label while.exit_57 
              #                    occupy s3 with temp_26_cmp_56_0
              #                    load from temp_26_cmp_56_0 in mem


    lb      s3,10(sp)
              #                    free s3
              #                    occupy s3 with temp_26_cmp_56_0
              #                    store to temp_26_cmp_56_0 in mem offset legal
    sb      s3,10(sp)
              #                    release s3 with temp_26_cmp_56_0
              #                    occupy s3 with temp_26_cmp_56_0
              #                    load from temp_26_cmp_56_0 in mem


    lb      s3,10(sp)
    bnez    s3, .while.body_57
              #                    free s3
              #                    occupy s3 with temp_26_cmp_56_0
              #                    store to temp_26_cmp_56_0 in mem offset legal
    sb      s3,10(sp)
              #                    release s3 with temp_26_cmp_56_0
    j       .while.exit_57
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_10, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     160  label while.body_57: 
.while.body_57:
              #                     68   (nop) 
              #                     243  a_17_11 = i32 a_17_10 
              #                    occupy s1 with a_17_10
              #                    occupy s3 with a_17_11
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_10
              #                    store to a_17_10 in mem offset legal
    sw      s1,168(sp)
              #                    release s1 with a_17_10
              #                    free s3
              #                     244  jjjj_58_1 = i32 0_0 
              #                    occupy s1 with jjjj_58_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with jjjj_58_1
              #                    store to jjjj_58_1 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with jjjj_58_1
              #                          jump label: while.head_61 
    j       .while.head_61
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_11, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     165  label while.head_61: 
.while.head_61:
              #                     164  temp_27_cmp_60_0 = icmp i32 Slt jjjj_58_1, 6_0 
              #                    occupy s1 with jjjj_58_1
              #                    load from jjjj_58_1 in mem


    lw      s1,68(sp)
              #                    occupy s4 with 6_0
    li      s4, 6
              #                    occupy s6 with temp_27_cmp_60_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with jjjj_58_1
              #                    store to jjjj_58_1 in mem offset legal
    sw      s1,68(sp)
              #                    release s1 with jjjj_58_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_27_cmp_60_0
              #                    store to temp_27_cmp_60_0 in mem offset legal
    sb      s6,9(sp)
              #                    release s6 with temp_27_cmp_60_0
              #                     168  br i1 temp_27_cmp_60_0, label while.body_61, label while.exit_61 
              #                    occupy s1 with temp_27_cmp_60_0
              #                    load from temp_27_cmp_60_0 in mem


    lb      s1,9(sp)
              #                    free s1
              #                    occupy s1 with temp_27_cmp_60_0
              #                    store to temp_27_cmp_60_0 in mem offset legal
    sb      s1,9(sp)
              #                    release s1 with temp_27_cmp_60_0
              #                    occupy s1 with temp_27_cmp_60_0
              #                    load from temp_27_cmp_60_0 in mem


    lb      s1,9(sp)
    bnez    s1, .while.body_61
              #                    free s1
              #                    occupy s1 with temp_27_cmp_60_0
              #                    store to temp_27_cmp_60_0 in mem offset legal
    sb      s1,9(sp)
              #                    release s1 with temp_27_cmp_60_0
    j       .while.exit_61
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_11, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     166  label while.body_61: 
.while.body_61:
              #                     73   (nop) 
              #                     245  a_17_12 = i32 a_17_11 
              #                    occupy s3 with a_17_11
              #                    occupy s1 with a_17_12
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_11
              #                    store to a_17_11 in mem offset legal
    sw      s3,164(sp)
              #                    release s3 with a_17_11
              #                    free s1
              #                     246  kkkk_62_1 = i32 0_0 
              #                    occupy s3 with kkkk_62_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with kkkk_62_1
              #                    store to kkkk_62_1 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with kkkk_62_1
              #                          jump label: while.head_65 
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_12, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     171  label while.head_65: 
.while.head_65:
              #                     170  temp_28_cmp_64_0 = icmp i32 Slt kkkk_62_1, 7_0 
              #                    occupy s3 with kkkk_62_1
              #                    load from kkkk_62_1 in mem


    lw      s3,60(sp)
              #                    occupy s4 with 7_0
    li      s4, 7
              #                    occupy s6 with temp_28_cmp_64_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with kkkk_62_1
              #                    store to kkkk_62_1 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with kkkk_62_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_28_cmp_64_0
              #                    store to temp_28_cmp_64_0 in mem offset legal
    sb      s6,8(sp)
              #                    release s6 with temp_28_cmp_64_0
              #                     174  br i1 temp_28_cmp_64_0, label while.body_65, label while.exit_65 
              #                    occupy s3 with temp_28_cmp_64_0
              #                    load from temp_28_cmp_64_0 in mem


    lb      s3,8(sp)
              #                    free s3
              #                    occupy s3 with temp_28_cmp_64_0
              #                    store to temp_28_cmp_64_0 in mem offset legal
    sb      s3,8(sp)
              #                    release s3 with temp_28_cmp_64_0
              #                    occupy s3 with temp_28_cmp_64_0
              #                    load from temp_28_cmp_64_0 in mem


    lb      s3,8(sp)
    bnez    s3, .while.body_65
              #                    free s3
              #                    occupy s3 with temp_28_cmp_64_0
              #                    store to temp_28_cmp_64_0 in mem offset legal
    sb      s3,8(sp)
              #                    release s3 with temp_28_cmp_64_0
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_12, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     172  label while.body_65: 
.while.body_65:
              #                     78   (nop) 
              #                     247  a_17_13 = i32 a_17_12 
              #                    occupy s1 with a_17_12
              #                    occupy s3 with a_17_13
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_12
              #                    store to a_17_12 in mem offset legal
    sw      s1,160(sp)
              #                    release s1 with a_17_12
              #                    free s3
              #                     248  iiiii_66_1 = i32 0_0 
              #                    occupy s1 with iiiii_66_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with iiiii_66_1
              #                    store to iiiii_66_1 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with iiiii_66_1
              #                          jump label: while.head_69 
    j       .while.head_69
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_13, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     177  label while.head_69: 
.while.head_69:
              #                     176  temp_29_cmp_68_0 = icmp i32 Slt iiiii_66_1, 5_0 
              #                    occupy s1 with iiiii_66_1
              #                    load from iiiii_66_1 in mem


    lw      s1,52(sp)
              #                    occupy s4 with 5_0
    li      s4, 5
              #                    occupy s6 with temp_29_cmp_68_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with iiiii_66_1
              #                    store to iiiii_66_1 in mem offset legal
    sw      s1,52(sp)
              #                    release s1 with iiiii_66_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_29_cmp_68_0
              #                    store to temp_29_cmp_68_0 in mem offset legal
    sb      s6,7(sp)
              #                    release s6 with temp_29_cmp_68_0
              #                     180  br i1 temp_29_cmp_68_0, label while.body_69, label while.exit_69 
              #                    occupy s1 with temp_29_cmp_68_0
              #                    load from temp_29_cmp_68_0 in mem


    lb      s1,7(sp)
              #                    free s1
              #                    occupy s1 with temp_29_cmp_68_0
              #                    store to temp_29_cmp_68_0 in mem offset legal
    sb      s1,7(sp)
              #                    release s1 with temp_29_cmp_68_0
              #                    occupy s1 with temp_29_cmp_68_0
              #                    load from temp_29_cmp_68_0 in mem


    lb      s1,7(sp)
    bnez    s1, .while.body_69
              #                    free s1
              #                    occupy s1 with temp_29_cmp_68_0
              #                    store to temp_29_cmp_68_0 in mem offset legal
    sb      s1,7(sp)
              #                    release s1 with temp_29_cmp_68_0
    j       .while.exit_69
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_13, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     178  label while.body_69: 
.while.body_69:
              #                     83   (nop) 
              #                     249  a_17_14 = i32 a_17_13 
              #                    occupy s3 with a_17_13
              #                    occupy s1 with a_17_14
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_13
              #                    store to a_17_13 in mem offset legal
    sw      s3,156(sp)
              #                    release s3 with a_17_13
              #                    free s1
              #                     250  jjjjj_70_1 = i32 0_0 
              #                    occupy s3 with jjjjj_70_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with jjjjj_70_1
              #                    store to jjjjj_70_1 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with jjjjj_70_1
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_14, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     183  label while.head_73: 
.while.head_73:
              #                     182  temp_30_cmp_72_0 = icmp i32 Slt jjjjj_70_1, 3_0 
              #                    occupy s3 with jjjjj_70_1
              #                    load from jjjjj_70_1 in mem


    lw      s3,44(sp)
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s6 with temp_30_cmp_72_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with jjjjj_70_1
              #                    store to jjjjj_70_1 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with jjjjj_70_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_30_cmp_72_0
              #                    store to temp_30_cmp_72_0 in mem offset legal
    sb      s6,6(sp)
              #                    release s6 with temp_30_cmp_72_0
              #                     186  br i1 temp_30_cmp_72_0, label while.body_73, label while.exit_73 
              #                    occupy s3 with temp_30_cmp_72_0
              #                    load from temp_30_cmp_72_0 in mem


    lb      s3,6(sp)
              #                    free s3
              #                    occupy s3 with temp_30_cmp_72_0
              #                    store to temp_30_cmp_72_0 in mem offset legal
    sb      s3,6(sp)
              #                    release s3 with temp_30_cmp_72_0
              #                    occupy s3 with temp_30_cmp_72_0
              #                    load from temp_30_cmp_72_0 in mem


    lb      s3,6(sp)
    bnez    s3, .while.body_73
              #                    free s3
              #                    occupy s3 with temp_30_cmp_72_0
              #                    store to temp_30_cmp_72_0 in mem offset legal
    sb      s3,6(sp)
              #                    release s3 with temp_30_cmp_72_0
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_14, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     184  label while.body_73: 
.while.body_73:
              #                     88   (nop) 
              #                     251  a_17_15 = i32 a_17_14 
              #                    occupy s1 with a_17_14
              #                    occupy s3 with a_17_15
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_14
              #                    store to a_17_14 in mem offset legal
    sw      s1,152(sp)
              #                    release s1 with a_17_14
              #                    free s3
              #                     252  kkkkk_74_1 = i32 0_0 
              #                    occupy s1 with kkkkk_74_1
    li      s1, 0
              #                    free s1
              #                    occupy s1 with kkkkk_74_1
              #                    store to kkkkk_74_1 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with kkkkk_74_1
              #                          jump label: while.head_77 
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_15, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     189  label while.head_77: 
.while.head_77:
              #                     188  temp_31_cmp_76_0 = icmp i32 Slt kkkkk_74_1, 6_0 
              #                    occupy s1 with kkkkk_74_1
              #                    load from kkkkk_74_1 in mem


    lw      s1,36(sp)
              #                    occupy s4 with 6_0
    li      s4, 6
              #                    occupy s6 with temp_31_cmp_76_0
    slt     s6,s1,s4
              #                    free s1
              #                    occupy s1 with kkkkk_74_1
              #                    store to kkkkk_74_1 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with kkkkk_74_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_31_cmp_76_0
              #                    store to temp_31_cmp_76_0 in mem offset legal
    sb      s6,5(sp)
              #                    release s6 with temp_31_cmp_76_0
              #                     192  br i1 temp_31_cmp_76_0, label while.body_77, label while.exit_77 
              #                    occupy s1 with temp_31_cmp_76_0
              #                    load from temp_31_cmp_76_0 in mem


    lb      s1,5(sp)
              #                    free s1
              #                    occupy s1 with temp_31_cmp_76_0
              #                    store to temp_31_cmp_76_0 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_31_cmp_76_0
              #                    occupy s1 with temp_31_cmp_76_0
              #                    load from temp_31_cmp_76_0 in mem


    lb      s1,5(sp)
    bnez    s1, .while.body_77
              #                    free s1
              #                    occupy s1 with temp_31_cmp_76_0
              #                    store to temp_31_cmp_76_0 in mem offset legal
    sb      s1,5(sp)
              #                    release s1 with temp_31_cmp_76_0
    j       .while.exit_77
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_15, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     190  label while.body_77: 
.while.body_77:
              #                     94   temp_14_arithop_78_0 = Add i32 a_17_15, 3_0 
              #                    occupy s3 with a_17_15
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s4 with temp_14_arithop_78_0
    ADDW    s4,s3,s1
              #                    free s3
              #                    occupy s3 with a_17_15
              #                    store to a_17_15 in mem offset legal
    sw      s3,148(sp)
              #                    release s3 with a_17_15
              #                    free s1
              #                    free s4
              #                     96   temp_15_arithop_78_0 = Mod i32 temp_14_arithop_78_0, 999_0 
              #                    occupy s4 with temp_14_arithop_78_0
              #                    occupy s1 with 999_0
    li      s1, 999
              #                    occupy s3 with temp_15_arithop_78_0
    rem     s3,s4,s1
              #                    free s4
              #                    occupy s4 with temp_14_arithop_78_0
              #                    store to temp_14_arithop_78_0 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_14_arithop_78_0
              #                    free s1
              #                    free s3
              #                     97   (nop) 
              #                     99   temp_16_arithop_78_0 = Add i32 kkkkk_74_1, 3_0 
              #                    occupy s1 with kkkkk_74_1
              #                    load from kkkkk_74_1 in mem


    lw      s1,36(sp)
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s6 with temp_16_arithop_78_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with kkkkk_74_1
              #                    store to kkkkk_74_1 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with kkkkk_74_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_16_arithop_78_0
              #                    store to temp_16_arithop_78_0 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_16_arithop_78_0
              #                     100  (nop) 
              #                     253  a_17_15 = i32 temp_15_arithop_78_0 
              #                    occupy s3 with temp_15_arithop_78_0
              #                    occupy s1 with a_17_15
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with temp_15_arithop_78_0
              #                    store to temp_15_arithop_78_0 in mem offset legal
    sw      s3,24(sp)
              #                    release s3 with temp_15_arithop_78_0
              #                    free s1
              #                     254  kkkkk_74_1 = i32 temp_16_arithop_78_0 
              #                    occupy s3 with temp_16_arithop_78_0
              #                    load from temp_16_arithop_78_0 in mem


    lw      s3,20(sp)
              #                    occupy s4 with kkkkk_74_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_16_arithop_78_0
              #                    store to temp_16_arithop_78_0 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_16_arithop_78_0
              #                    free s4
              #                    occupy s4 with kkkkk_74_1
              #                    store to kkkkk_74_1 in mem offset legal
    sw      s4,36(sp)
              #                    release s4 with kkkkk_74_1
              #                          jump label: while.head_77 
              #                    occupy s1 with a_17_15
              #                    store to a_17_15 in mem offset legal
    sw      s1,148(sp)
              #                    release s1 with a_17_15
              #                    occupy s3 with a_17_15
              #                    load from a_17_15 in mem


    lw      s3,148(sp)
    j       .while.head_77
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_15, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     191  label while.exit_77: 
.while.exit_77:
              #                     91   temp_13_arithop_74_0 = Add i32 jjjjj_70_1, 1_0 
              #                    occupy s1 with jjjjj_70_1
              #                    load from jjjjj_70_1 in mem


    lw      s1,44(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_13_arithop_74_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with jjjjj_70_1
              #                    store to jjjjj_70_1 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with jjjjj_70_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_13_arithop_74_0
              #                    store to temp_13_arithop_74_0 in mem offset legal
    sw      s6,32(sp)
              #                    release s6 with temp_13_arithop_74_0
              #                     92   (nop) 
              #                     255  jjjjj_70_1 = i32 temp_13_arithop_74_0 
              #                    occupy s1 with temp_13_arithop_74_0
              #                    load from temp_13_arithop_74_0 in mem


    lw      s1,32(sp)
              #                    occupy s4 with jjjjj_70_1
    mv      s4, s1
              #                    free s1
              #                    occupy s1 with temp_13_arithop_74_0
              #                    store to temp_13_arithop_74_0 in mem offset legal
    sw      s1,32(sp)
              #                    release s1 with temp_13_arithop_74_0
              #                    free s4
              #                    occupy s4 with jjjjj_70_1
              #                    store to jjjjj_70_1 in mem offset legal
    sw      s4,44(sp)
              #                    release s4 with jjjjj_70_1
              #                     256  a_17_14 = i32 a_17_15 
              #                    occupy s3 with a_17_15
              #                    occupy s1 with a_17_14
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_15
              #                    store to a_17_15 in mem offset legal
    sw      s3,148(sp)
              #                    release s3 with a_17_15
              #                    free s1
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_14, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     185  label while.exit_73: 
.while.exit_73:
              #                     86   temp_12_arithop_70_0 = Add i32 iiiii_66_1, 2_0 
              #                    occupy s3 with iiiii_66_1
              #                    load from iiiii_66_1 in mem


    lw      s3,52(sp)
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s6 with temp_12_arithop_70_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with iiiii_66_1
              #                    store to iiiii_66_1 in mem offset legal
    sw      s3,52(sp)
              #                    release s3 with iiiii_66_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_12_arithop_70_0
              #                    store to temp_12_arithop_70_0 in mem offset legal
    sw      s6,40(sp)
              #                    release s6 with temp_12_arithop_70_0
              #                     87   (nop) 
              #                     257  iiiii_66_1 = i32 temp_12_arithop_70_0 
              #                    occupy s3 with temp_12_arithop_70_0
              #                    load from temp_12_arithop_70_0 in mem


    lw      s3,40(sp)
              #                    occupy s4 with iiiii_66_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_12_arithop_70_0
              #                    store to temp_12_arithop_70_0 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with temp_12_arithop_70_0
              #                    free s4
              #                    occupy s4 with iiiii_66_1
              #                    store to iiiii_66_1 in mem offset legal
    sw      s4,52(sp)
              #                    release s4 with iiiii_66_1
              #                     258  a_17_13 = i32 a_17_14 
              #                    occupy s1 with a_17_14
              #                    occupy s3 with a_17_13
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_14
              #                    store to a_17_14 in mem offset legal
    sw      s1,152(sp)
              #                    release s1 with a_17_14
              #                    free s3
              #                          jump label: while.head_69 
    j       .while.head_69
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_13, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     179  label while.exit_69: 
.while.exit_69:
              #                     81   temp_11_arithop_66_0 = Add i32 kkkk_62_1, 2_0 
              #                    occupy s1 with kkkk_62_1
              #                    load from kkkk_62_1 in mem


    lw      s1,60(sp)
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s6 with temp_11_arithop_66_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with kkkk_62_1
              #                    store to kkkk_62_1 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with kkkk_62_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_11_arithop_66_0
              #                    store to temp_11_arithop_66_0 in mem offset legal
    sw      s6,48(sp)
              #                    release s6 with temp_11_arithop_66_0
              #                     82   (nop) 
              #                     259  a_17_12 = i32 a_17_13 
              #                    occupy s3 with a_17_13
              #                    occupy s1 with a_17_12
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_13
              #                    store to a_17_13 in mem offset legal
    sw      s3,156(sp)
              #                    release s3 with a_17_13
              #                    free s1
              #                     260  kkkk_62_1 = i32 temp_11_arithop_66_0 
              #                    occupy s3 with temp_11_arithop_66_0
              #                    load from temp_11_arithop_66_0 in mem


    lw      s3,48(sp)
              #                    occupy s4 with kkkk_62_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_11_arithop_66_0
              #                    store to temp_11_arithop_66_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_11_arithop_66_0
              #                    free s4
              #                    occupy s4 with kkkk_62_1
              #                    store to kkkk_62_1 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with kkkk_62_1
              #                          jump label: while.head_65 
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_12, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     173  label while.exit_65: 
.while.exit_65:
              #                     76   temp_10_arithop_62_0 = Add i32 jjjj_58_1, 2_0 
              #                    occupy s3 with jjjj_58_1
              #                    load from jjjj_58_1 in mem


    lw      s3,68(sp)
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s6 with temp_10_arithop_62_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with jjjj_58_1
              #                    store to jjjj_58_1 in mem offset legal
    sw      s3,68(sp)
              #                    release s3 with jjjj_58_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_10_arithop_62_0
              #                    store to temp_10_arithop_62_0 in mem offset legal
    sw      s6,56(sp)
              #                    release s6 with temp_10_arithop_62_0
              #                     77   (nop) 
              #                     261  jjjj_58_1 = i32 temp_10_arithop_62_0 
              #                    occupy s3 with temp_10_arithop_62_0
              #                    load from temp_10_arithop_62_0 in mem


    lw      s3,56(sp)
              #                    occupy s4 with jjjj_58_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_10_arithop_62_0
              #                    store to temp_10_arithop_62_0 in mem offset legal
    sw      s3,56(sp)
              #                    release s3 with temp_10_arithop_62_0
              #                    free s4
              #                    occupy s4 with jjjj_58_1
              #                    store to jjjj_58_1 in mem offset legal
    sw      s4,68(sp)
              #                    release s4 with jjjj_58_1
              #                     262  a_17_11 = i32 a_17_12 
              #                    occupy s1 with a_17_12
              #                    occupy s3 with a_17_11
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_12
              #                    store to a_17_12 in mem offset legal
    sw      s1,160(sp)
              #                    release s1 with a_17_12
              #                    free s3
              #                          jump label: while.head_61 
    j       .while.head_61
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_11, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     167  label while.exit_61: 
.while.exit_61:
              #                     71   temp_9_arithop_58_0 = Add i32 iiii_54_1, 1_0 
              #                    occupy s1 with iiii_54_1
              #                    load from iiii_54_1 in mem


    lw      s1,76(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_9_arithop_58_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with iiii_54_1
              #                    store to iiii_54_1 in mem offset legal
    sw      s1,76(sp)
              #                    release s1 with iiii_54_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_9_arithop_58_0
              #                    store to temp_9_arithop_58_0 in mem offset legal
    sw      s6,64(sp)
              #                    release s6 with temp_9_arithop_58_0
              #                     72   (nop) 
              #                     263  iiii_54_1 = i32 temp_9_arithop_58_0 
              #                    occupy s1 with temp_9_arithop_58_0
              #                    load from temp_9_arithop_58_0 in mem


    lw      s1,64(sp)
              #                    occupy s4 with iiii_54_1
    mv      s4, s1
              #                    free s1
              #                    occupy s1 with temp_9_arithop_58_0
              #                    store to temp_9_arithop_58_0 in mem offset legal
    sw      s1,64(sp)
              #                    release s1 with temp_9_arithop_58_0
              #                    free s4
              #                    occupy s4 with iiii_54_1
              #                    store to iiii_54_1 in mem offset legal
    sw      s4,76(sp)
              #                    release s4 with iiii_54_1
              #                     264  a_17_10 = i32 a_17_11 
              #                    occupy s3 with a_17_11
              #                    occupy s1 with a_17_10
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_11
              #                    store to a_17_11 in mem offset legal
    sw      s3,164(sp)
              #                    release s3 with a_17_11
              #                    free s1
              #                          jump label: while.head_57 
    j       .while.head_57
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_10, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     161  label while.exit_57: 
.while.exit_57:
              #                     66   temp_8_arithop_54_0 = Add i32 kkk_50_1, 1_0 
              #                    occupy s3 with kkk_50_1
              #                    load from kkk_50_1 in mem


    lw      s3,84(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_8_arithop_54_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with kkk_50_1
              #                    store to kkk_50_1 in mem offset legal
    sw      s3,84(sp)
              #                    release s3 with kkk_50_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_8_arithop_54_0
              #                    store to temp_8_arithop_54_0 in mem offset legal
    sw      s6,72(sp)
              #                    release s6 with temp_8_arithop_54_0
              #                     67   (nop) 
              #                     265  kkk_50_1 = i32 temp_8_arithop_54_0 
              #                    occupy s3 with temp_8_arithop_54_0
              #                    load from temp_8_arithop_54_0 in mem


    lw      s3,72(sp)
              #                    occupy s4 with kkk_50_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_8_arithop_54_0
              #                    store to temp_8_arithop_54_0 in mem offset legal
    sw      s3,72(sp)
              #                    release s3 with temp_8_arithop_54_0
              #                    free s4
              #                    occupy s4 with kkk_50_1
              #                    store to kkk_50_1 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with kkk_50_1
              #                     266  a_17_9 = i32 a_17_10 
              #                    occupy s1 with a_17_10
              #                    occupy s3 with a_17_9
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_10
              #                    store to a_17_10 in mem offset legal
    sw      s1,168(sp)
              #                    release s1 with a_17_10
              #                    free s3
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_9, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     155  label while.exit_53: 
.while.exit_53:
              #                     61   temp_7_arithop_50_0 = Add i32 jjj_46_1, 1_0 
              #                    occupy s1 with jjj_46_1
              #                    load from jjj_46_1 in mem


    lw      s1,92(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_7_arithop_50_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with jjj_46_1
              #                    store to jjj_46_1 in mem offset legal
    sw      s1,92(sp)
              #                    release s1 with jjj_46_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_7_arithop_50_0
              #                    store to temp_7_arithop_50_0 in mem offset legal
    sw      s6,80(sp)
              #                    release s6 with temp_7_arithop_50_0
              #                     62   (nop) 
              #                     267  jjj_46_1 = i32 temp_7_arithop_50_0 
              #                    occupy s1 with temp_7_arithop_50_0
              #                    load from temp_7_arithop_50_0 in mem


    lw      s1,80(sp)
              #                    occupy s4 with jjj_46_1
    mv      s4, s1
              #                    free s1
              #                    occupy s1 with temp_7_arithop_50_0
              #                    store to temp_7_arithop_50_0 in mem offset legal
    sw      s1,80(sp)
              #                    release s1 with temp_7_arithop_50_0
              #                    free s4
              #                    occupy s4 with jjj_46_1
              #                    store to jjj_46_1 in mem offset legal
    sw      s4,92(sp)
              #                    release s4 with jjj_46_1
              #                     268  a_17_8 = i32 a_17_9 
              #                    occupy s3 with a_17_9
              #                    occupy s1 with a_17_8
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_9
              #                    store to a_17_9 in mem offset legal
    sw      s3,172(sp)
              #                    release s3 with a_17_9
              #                    free s1
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_8, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     149  label while.exit_49: 
.while.exit_49:
              #                     56   temp_6_arithop_46_0 = Add i32 iii_42_1, 1_0 
              #                    occupy s3 with iii_42_1
              #                    load from iii_42_1 in mem


    lw      s3,100(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_6_arithop_46_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with iii_42_1
              #                    store to iii_42_1 in mem offset legal
    sw      s3,100(sp)
              #                    release s3 with iii_42_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_6_arithop_46_0
              #                    store to temp_6_arithop_46_0 in mem offset legal
    sw      s6,88(sp)
              #                    release s6 with temp_6_arithop_46_0
              #                     57   (nop) 
              #                     269  iii_42_1 = i32 temp_6_arithop_46_0 
              #                    occupy s3 with temp_6_arithop_46_0
              #                    load from temp_6_arithop_46_0 in mem


    lw      s3,88(sp)
              #                    occupy s4 with iii_42_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_6_arithop_46_0
              #                    store to temp_6_arithop_46_0 in mem offset legal
    sw      s3,88(sp)
              #                    release s3 with temp_6_arithop_46_0
              #                    free s4
              #                    occupy s4 with iii_42_1
              #                    store to iii_42_1 in mem offset legal
    sw      s4,100(sp)
              #                    release s4 with iii_42_1
              #                     270  a_17_7 = i32 a_17_8 
              #                    occupy s1 with a_17_8
              #                    occupy s3 with a_17_7
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_8
              #                    store to a_17_8 in mem offset legal
    sw      s1,176(sp)
              #                    release s1 with a_17_8
              #                    free s3
              #                          jump label: while.head_45 
    j       .while.head_45
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_7, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     143  label while.exit_45: 
.while.exit_45:
              #                     51   temp_5_arithop_42_0 = Add i32 kk_38_1, 1_0 
              #                    occupy s1 with kk_38_1
              #                    load from kk_38_1 in mem


    lw      s1,108(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_5_arithop_42_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with kk_38_1
              #                    store to kk_38_1 in mem offset legal
    sw      s1,108(sp)
              #                    release s1 with kk_38_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_5_arithop_42_0
              #                    store to temp_5_arithop_42_0 in mem offset legal
    sw      s6,96(sp)
              #                    release s6 with temp_5_arithop_42_0
              #                     52   (nop) 
              #                     271  kk_38_1 = i32 temp_5_arithop_42_0 
              #                    occupy s1 with temp_5_arithop_42_0
              #                    load from temp_5_arithop_42_0 in mem


    lw      s1,96(sp)
              #                    occupy s4 with kk_38_1
    mv      s4, s1
              #                    free s1
              #                    occupy s1 with temp_5_arithop_42_0
              #                    store to temp_5_arithop_42_0 in mem offset legal
    sw      s1,96(sp)
              #                    release s1 with temp_5_arithop_42_0
              #                    free s4
              #                    occupy s4 with kk_38_1
              #                    store to kk_38_1 in mem offset legal
    sw      s4,108(sp)
              #                    release s4 with kk_38_1
              #                     272  a_17_6 = i32 a_17_7 
              #                    occupy s3 with a_17_7
              #                    occupy s1 with a_17_6
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_7
              #                    store to a_17_7 in mem offset legal
    sw      s3,180(sp)
              #                    release s3 with a_17_7
              #                    free s1
              #                          jump label: while.head_41 
    j       .while.head_41
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_6, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     137  label while.exit_41: 
.while.exit_41:
              #                     46   temp_4_arithop_38_0 = Add i32 jj_34_1, 1_0 
              #                    occupy s3 with jj_34_1
              #                    load from jj_34_1 in mem


    lw      s3,116(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_4_arithop_38_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with jj_34_1
              #                    store to jj_34_1 in mem offset legal
    sw      s3,116(sp)
              #                    release s3 with jj_34_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_4_arithop_38_0
              #                    store to temp_4_arithop_38_0 in mem offset legal
    sw      s6,104(sp)
              #                    release s6 with temp_4_arithop_38_0
              #                     47   (nop) 
              #                     273  jj_34_1 = i32 temp_4_arithop_38_0 
              #                    occupy s3 with temp_4_arithop_38_0
              #                    load from temp_4_arithop_38_0 in mem


    lw      s3,104(sp)
              #                    occupy s4 with jj_34_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_4_arithop_38_0
              #                    store to temp_4_arithop_38_0 in mem offset legal
    sw      s3,104(sp)
              #                    release s3 with temp_4_arithop_38_0
              #                    free s4
              #                    occupy s4 with jj_34_1
              #                    store to jj_34_1 in mem offset legal
    sw      s4,116(sp)
              #                    release s4 with jj_34_1
              #                     274  a_17_5 = i32 a_17_6 
              #                    occupy s1 with a_17_6
              #                    occupy s3 with a_17_5
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with a_17_6
              #                    store to a_17_6 in mem offset legal
    sw      s1,184(sp)
              #                    release s1 with a_17_6
              #                    free s3
              #                          jump label: while.head_37 
    j       .while.head_37
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s3:Freed { symidx: a_17_5, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     131  label while.exit_37: 
.while.exit_37:
              #                     41   temp_3_arithop_34_0 = Add i32 ii_30_1, 1_0 
              #                    occupy s1 with ii_30_1
              #                    load from ii_30_1 in mem


    lw      s1,124(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_3_arithop_34_0
    ADDW    s6,s1,s4
              #                    free s1
              #                    occupy s1 with ii_30_1
              #                    store to ii_30_1 in mem offset legal
    sw      s1,124(sp)
              #                    release s1 with ii_30_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_3_arithop_34_0
              #                    store to temp_3_arithop_34_0 in mem offset legal
    sw      s6,112(sp)
              #                    release s6 with temp_3_arithop_34_0
              #                     42   (nop) 
              #                     275  ii_30_1 = i32 temp_3_arithop_34_0 
              #                    occupy s1 with temp_3_arithop_34_0
              #                    load from temp_3_arithop_34_0 in mem


    lw      s1,112(sp)
              #                    occupy s4 with ii_30_1
    mv      s4, s1
              #                    free s1
              #                    occupy s1 with temp_3_arithop_34_0
              #                    store to temp_3_arithop_34_0 in mem offset legal
    sw      s1,112(sp)
              #                    release s1 with temp_3_arithop_34_0
              #                    free s4
              #                    occupy s4 with ii_30_1
              #                    store to ii_30_1 in mem offset legal
    sw      s4,124(sp)
              #                    release s4 with ii_30_1
              #                     276  a_17_4 = i32 a_17_5 
              #                    occupy s3 with a_17_5
              #                    occupy s1 with a_17_4
    mv      s1, s3
              #                    free s3
              #                    occupy s3 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      s3,188(sp)
              #                    release s3 with a_17_5
              #                    free s1
              #                          jump label: while.head_33 
              #                    occupy s5 with temp_20_cmp_32_0
              #                    store to temp_20_cmp_32_0 in mem offset legal
    sb      s5,16(sp)
              #                    release s5 with temp_20_cmp_32_0
              #                    occupy s3 with ii_30_1
              #                    load from ii_30_1 in mem


    lw      s3,124(sp)
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: a_17_4, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_20_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     125  label while.exit_33: 
.while.exit_33:
              #                     36   temp_2_arithop_30_0 = Add i32 k_26_1, 1_0 
              #                    occupy a7 with k_26_1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_2_arithop_30_0
    ADDW    s4,a7,s3
              #                    free a7
              #                    occupy a7 with k_26_1
              #                    store to k_26_1 in mem offset legal
    sw      a7,132(sp)
              #                    release a7 with k_26_1
              #                    free s3
              #                    free s4
              #                     37   (nop) 
              #                     277  a_17_3 = i32 a_17_4 
              #                    occupy s1 with a_17_4
              #                    occupy a5 with a_17_3
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                     278  k_26_1 = i32 temp_2_arithop_30_0 
              #                    occupy s4 with temp_2_arithop_30_0
              #                    occupy a7 with k_26_1
    mv      a7, s4
              #                    free s4
              #                    occupy s4 with temp_2_arithop_30_0
              #                    store to temp_2_arithop_30_0 in mem offset legal
    sw      s4,120(sp)
              #                    release s4 with temp_2_arithop_30_0
              #                    free a7
              #                          jump label: while.head_29 
              #                    occupy s5 with temp_20_cmp_32_0
              #                    store to temp_20_cmp_32_0 in mem offset legal
    sb      s5,16(sp)
              #                    release s5 with temp_20_cmp_32_0
              #                    occupy s1 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      s1,192(sp)
              #                    release s1 with a_17_4
              #                    occupy s2 with temp_19_cmp_28_0
              #                    store to temp_19_cmp_28_0 in mem offset legal
    sb      s2,17(sp)
              #                    release s2 with temp_19_cmp_28_0
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: a_17_3, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_19_cmp_28_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     119  label while.exit_29: 
.while.exit_29:
              #                     31   temp_1_arithop_26_0 = Add i32 j_22_1, 1_0 
              #                    occupy a4 with j_22_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_1_arithop_26_0
    ADDW    s3,a4,s1
              #                    free a4
              #                    free s1
              #                    free s3
              #                     32   (nop) 
              #                     279  a_17_2 = i32 a_17_3 
              #                    occupy a5 with a_17_3
              #                    occupy a2 with a_17_2
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                     280  j_22_1 = i32 temp_1_arithop_26_0 
              #                    occupy s3 with temp_1_arithop_26_0
              #                    occupy a4 with j_22_1
    mv      a4, s3
              #                    free s3
              #                    free a4
              #                          jump label: while.head_25 
              #                    occupy a7 with k_26_1
              #                    store to k_26_1 in mem offset legal
    sw      a7,132(sp)
              #                    release a7 with k_26_1
              #                    occupy s3 with temp_1_arithop_26_0
              #                    store to temp_1_arithop_26_0 in mem offset legal
    sw      s3,128(sp)
              #                    release s3 with temp_1_arithop_26_0
              #                    occupy a5 with a_17_3
              #                    store to a_17_3 in mem offset legal
    sw      a5,196(sp)
              #                    release a5 with a_17_3
              #                    occupy s2 with temp_19_cmp_28_0
              #                    store to temp_19_cmp_28_0 in mem offset legal
    sb      s2,17(sp)
              #                    release s2 with temp_19_cmp_28_0
              #                    occupy a6 with temp_18_cmp_24_0
              #                    store to temp_18_cmp_24_0 in mem offset legal
    sb      a6,18(sp)
              #                    release a6 with temp_18_cmp_24_0
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a2:Freed { symidx: a_17_2, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a6:Freed { symidx: temp_18_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     113  label while.exit_25: 
.while.exit_25:
              #                     26   temp_0_arithop_22_0 = Add i32 i_17_1, 1_0 
              #                    occupy a1 with i_17_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_0_arithop_22_0
    ADDW    a7,a1,a5
              #                    free a1
              #                    free a5
              #                    free a7
              #                     27   (nop) 
              #                     281  a_17_1 = i32 a_17_2 
              #                    occupy a2 with a_17_2
              #                    occupy a0 with a_17_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     282  i_17_1 = i32 temp_0_arithop_22_0 
              #                    occupy a7 with temp_0_arithop_22_0
              #                    occupy a1 with i_17_1
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_21 
              #                    occupy a3 with temp_17_cmp_20_0
              #                    store to temp_17_cmp_20_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_17_cmp_20_0
              #                    occupy a7 with temp_0_arithop_22_0
              #                    store to temp_0_arithop_22_0 in mem offset legal
    sw      a7,136(sp)
              #                    release a7 with temp_0_arithop_22_0
              #                    occupy a2 with a_17_2
              #                    store to a_17_2 in mem offset legal
    sw      a2,200(sp)
              #                    release a2 with a_17_2
              #                    occupy a4 with j_22_1
              #                    store to j_22_1 in mem offset legal
    sw      a4,140(sp)
              #                    release a4 with j_22_1
              #                    occupy a6 with temp_18_cmp_24_0
              #                    store to temp_18_cmp_24_0 in mem offset legal
    sb      a6,18(sp)
              #                    release a6 with temp_18_cmp_24_0
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: a_17_1, tracked: true } |     a1:Freed { symidx: i_17_1, tracked: true } |     a3:Freed { symidx: temp_17_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     105  label while.exit_21: 
.while.exit_21:
              #                     283  untrack i_17_1 
              #                    occupy a1 with i_17_1
              #                    release a1 with i_17_1
              #                     22   ret a_17_1 
              #                    load from ra_main_0 in mem
    ld      ra,216(sp)
              #                    load from s0_main_0 in mem
    ld      s0,208(sp)
              #                    occupy a0 with a_17_1
              #                    store to a_17_1 in mem offset legal
    sw      a0,204(sp)
              #                    release a0 with a_17_1
              #                    occupy a0 with a_17_1
              #                    load from a_17_1 in mem


    lw      a0,204(sp)
    addi    sp,sp,224
              #                    free a0
    ret
