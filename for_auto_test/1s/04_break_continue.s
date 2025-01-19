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
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|sum _s17 _i1:4 at 76|sum _s17 _i2:4 at 72|sum _s17 _i3:4 at 68|sum _s17 _i4:4 at 64|i _s17 _i1:4 at 60|j _s22 _i1:4 at 56|temp_0_arithop _s22 _i0:4 at 52|k _s26 _i1:4 at 48|temp_1_arithop _s26 _i0:4 at 44|m _s30 _i1:4 at 40|temp_3_arithop _s30 _i0:4 at 36|n _s34 _i1:4 at 32|temp_5_arithop _s34 _i0:4 at 28|temp_6_arithop _s54 _i0:4 at 24|temp_8_cmp _s20 _i0:1 at 23|temp_9_cmp _s24 _i0:1 at 22|temp_10_cmp _s28 _i0:1 at 21|temp_11_cmp _s32 _i0:1 at 20|temp_14_arithop _s35 _i0:4 at 16|temp_15_cmp _s35 _i0:1 at 15|temp_16_cmp _s52 _i0:1 at 14|temp_17_ _s757 _i0:1 at 13|temp_19_logicnot _s39 _i0:1 at 12|temp_21_arithop _s41 _i0:4 at 8|temp_22_cmp _s41 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     18   alloc i32 [sum_17] 
              #                     20   alloc i32 [i_17] 
              #                     24   alloc i32 [j_22] 
              #                     25   alloc i32 [temp_0_arithop_22] 
              #                     29   alloc i32 [k_26] 
              #                     30   alloc i32 [temp_1_arithop_26] 
              #                     33   alloc i32 [temp_2_arithop_26] 
              #                     37   alloc i32 [m_30] 
              #                     38   alloc i32 [temp_3_arithop_30] 
              #                     42   alloc i32 [n_34] 
              #                     43   alloc i32 [temp_4_arithop_34] 
              #                     46   alloc i32 [temp_5_arithop_34] 
              #                     49   alloc i32 [temp_6_arithop_54] 
              #                     52   alloc i32 [temp_7_arithop_54] 
              #                     55   alloc i1 [temp_8_cmp_20] 
              #                     63   alloc i1 [temp_9_cmp_24] 
              #                     69   alloc i1 [temp_10_cmp_28] 
              #                     75   alloc i1 [temp_11_cmp_32] 
              #                     81   alloc i1 [temp_12__1139] 
              #                     86   alloc i1 [temp_13__1168] 
              #                     91   alloc i32 [temp_14_arithop_35] 
              #                     93   alloc i1 [temp_15_cmp_35] 
              #                     98   alloc i1 [temp_16_cmp_52] 
              #                     104  alloc i1 [temp_17__757] 
              #                     109  alloc i1 [temp_18_booltrans_39] 
              #                     111  alloc i1 [temp_19_logicnot_39] 
              #                     113  alloc i1 [temp_20_i32_to_bool_39] 
              #                     121  alloc i32 [temp_21_arithop_41] 
              #                     123  alloc i1 [temp_22_cmp_41] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
              #                     19   (nop) 
              #                     137  i_17_1 = i32 0_0 
              #                    occupy a0 with i_17_1
    li      a0, 0
              #                    free a0
              #                     138  sum_17_1 = i32 0_0 
              #                    occupy a1 with sum_17_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     57   label while.head_21: 
.while.head_21:
              #                     56   temp_8_cmp_20_0 = icmp i32 Slt i_17_1, 20_0 
              #                    occupy a0 with i_17_1
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a3 with temp_8_cmp_20_0
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     60   br i1 temp_8_cmp_20_0, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_8_cmp_20_0
              #                    free a3
              #                    occupy a3 with temp_8_cmp_20_0
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     58   label while.body_21: 
.while.body_21:
              #                     23   (nop) 
              #                     139  sum_17_2 = i32 sum_17_1 
              #                    occupy a1 with sum_17_1
              #                    occupy a2 with sum_17_2
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                     140  j_22_1 = i32 0_0 
              #                    occupy a4 with j_22_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     65   label while.head_25: 
.while.head_25:
              #                     64   temp_9_cmp_24_0 = icmp i32 Slt j_22_1, 10_0 
              #                    occupy a4 with j_22_1
              #                    occupy a5 with 10_0
    li      a5, 10
              #                    occupy a6 with temp_9_cmp_24_0
    slt     a6,a4,a5
              #                    free a4
              #                    free a5
              #                    free a6
              #                     68   br i1 temp_9_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a6 with temp_9_cmp_24_0
              #                    free a6
              #                    occupy a6 with temp_9_cmp_24_0
    bnez    a6, .while.body_25
              #                    free a6
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     66   label while.body_25: 
.while.body_25:
              #                     28   (nop) 
              #                     141  sum_17_3 = i32 sum_17_2 
              #                    occupy a2 with sum_17_2
              #                    occupy a5 with sum_17_3
    mv      a5, a2
              #                    free a2
              #                    free a5
              #                     142  k_26_1 = i32 0_0 
              #                    occupy a7 with k_26_1
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     71   label while.head_29: 
.while.head_29:
              #                     70   temp_10_cmp_28_0 = icmp i32 Slt k_26_1, 5_0 
              #                    occupy a7 with k_26_1
              #                    occupy s1 with 5_0
    li      s1, 5
              #                    occupy s2 with temp_10_cmp_28_0
    slt     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                     74   br i1 temp_10_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy s2 with temp_10_cmp_28_0
              #                    free s2
              #                    occupy s2 with temp_10_cmp_28_0
    bnez    s2, .while.body_29
              #                    free s2
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     72   label while.body_29: 
.while.body_29:
              #                     36   (nop) 
              #                     143  sum_17_4 = i32 sum_17_3 
              #                    occupy a5 with sum_17_3
              #                    occupy s1 with sum_17_4
    mv      s1, a5
              #                    free a5
              #                    free s1
              #                     144  m_30_1 = i32 0_0 
              #                    occupy s3 with m_30_1
    li      s3, 0
              #                    free s3
              #                          jump label: while.head_33 
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s3:Freed { symidx: m_30_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     77   label while.head_33: 
.while.head_33:
              #                     76   temp_11_cmp_32_0 = icmp i32 Slt m_30_1, 3_0 
              #                    occupy s3 with m_30_1
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with temp_11_cmp_32_0
    slt     s5,s3,s4
              #                    free s3
              #                    occupy s3 with m_30_1
              #                    store to m_30_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_30_1
              #                    free s4
              #                    free s5
              #                     80   br i1 temp_11_cmp_32_0, label while.body_33, label while.exit_33 
              #                    occupy s5 with temp_11_cmp_32_0
              #                    free s5
              #                    occupy s5 with temp_11_cmp_32_0
    bnez    s5, .while.body_33
              #                    free s5
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     78   label while.body_33: 
.while.body_33:
              #                     92   temp_14_arithop_35_0 = Add i32 m_30_1, 1_0 
              #                    occupy s3 with m_30_1
              #                    load from m_30_1 in mem


    lw      s3,40(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_14_arithop_35_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with m_30_1
              #                    store to m_30_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_30_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_14_arithop_35_0
              #                    store to temp_14_arithop_35_0 in mem offset legal
    sw      s6,16(sp)
              #                    release s6 with temp_14_arithop_35_0
              #                     94   temp_15_cmp_35_0 = icmp i32 Sge temp_14_arithop_35_0, 3_0 
              #                    occupy s3 with temp_14_arithop_35_0
              #                    load from temp_14_arithop_35_0 in mem


    lw      s3,16(sp)
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s6 with temp_15_cmp_35_0
    slt     s6,s3,s4
    xori    s6,s6,1
              #                    free s3
              #                    occupy s3 with temp_14_arithop_35_0
              #                    store to temp_14_arithop_35_0 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_14_arithop_35_0
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_15_cmp_35_0
              #                    store to temp_15_cmp_35_0 in mem offset legal
    sb      s6,15(sp)
              #                    release s6 with temp_15_cmp_35_0
              #                     97   br i1 temp_15_cmp_35_0, label branch_true_36, label branch_false_36 
              #                    occupy s3 with temp_15_cmp_35_0
              #                    load from temp_15_cmp_35_0 in mem


    lb      s3,15(sp)
              #                    free s3
              #                    occupy s3 with temp_15_cmp_35_0
              #                    store to temp_15_cmp_35_0 in mem offset legal
    sb      s3,15(sp)
              #                    release s3 with temp_15_cmp_35_0
              #                    occupy s3 with temp_15_cmp_35_0
              #                    load from temp_15_cmp_35_0 in mem


    lb      s3,15(sp)
    bnez    s3, .branch_true_36
              #                    free s3
              #                    occupy s3 with temp_15_cmp_35_0
              #                    store to temp_15_cmp_35_0 in mem offset legal
    sb      s3,15(sp)
              #                    release s3 with temp_15_cmp_35_0
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     95   label branch_true_36: 
.branch_true_36:
              #                     157  untrack temp_11_cmp_32_0 
              #                    occupy s5 with temp_11_cmp_32_0
              #                    release s5 with temp_11_cmp_32_0
              #                     156  untrack temp_15_cmp_35_0 
              #                     105  temp_17__757_0 = icmp i32 Ne m_30_1, 0_0 
              #                    occupy s3 with m_30_1
              #                    load from m_30_1 in mem


    lw      s3,40(sp)
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with temp_17__757_0
    xor     s5,s3,s4
    snez    s5, s5
              #                    free s3
              #                    occupy s3 with m_30_1
              #                    store to m_30_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_30_1
              #                    free s4
              #                    free s5
              #                     108  br i1 temp_17__757_0, label branch_true_38, label branch_false_38 
              #                    occupy s5 with temp_17__757_0
              #                    free s5
              #                    occupy s5 with temp_17__757_0
    bnez    s5, .branch_true_38
              #                    free s5
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_17__757_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     106  label branch_true_38: 
.branch_true_38:
              #                     114  (nop) 
              #                     120  br i1 temp_17__757_0, label branch_short_circuit_c_true_218, label branch_short_circuit_p_false_218 
              #                    occupy s5 with temp_17__757_0
              #                    free s5
              #                    occupy s5 with temp_17__757_0
    bnez    s5, .branch_short_circuit_c_true_218
              #                    free s5
    j       .branch_short_circuit_p_false_218
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_17__757_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     115  label branch_short_circuit_c_true_218: 
.branch_short_circuit_c_true_218:
              #                     174  untrack temp_14_arithop_35_0 
              #                     173  untrack temp_5_arithop_34_0 
              #                     172  untrack temp_19_logicnot_39_0 
              #                     171  untrack n_34_1 
              #                     166  untrack temp_5_arithop_34_0 
              #                     165  untrack temp_17__757_0 
              #                    occupy s5 with temp_17__757_0
              #                    release s5 with temp_17__757_0
              #                     164  untrack temp_14_arithop_35_0 
              #                     163  untrack temp_19_logicnot_39_0 
              #                     162  untrack n_34_1 
              #                     122  temp_21_arithop_41_0 = Sub i32 m_30_1, -1_0 
              #                    occupy s3 with m_30_1
              #                    load from m_30_1 in mem


    lw      s3,40(sp)
              #                    occupy s4 with -1_0
    li      s4, -1
              #                    occupy s5 with temp_21_arithop_41_0
              #                    regtab:    a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s3:Occupied { symidx: m_30_1, tracked: true, occupy_count: 1 } |     s4:Occupied { symidx: -1_0, tracked: false, occupy_count: 1 } |     s5:Occupied { symidx: temp_21_arithop_41_0, tracked: true, occupy_count: 1 } |  released_gpr_count:3,released_fpr_count:24


    subw    s5,s3,s4
              #                    free s3
              #                    occupy s3 with m_30_1
              #                    store to m_30_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_30_1
              #                    free s4
              #                    free s5
              #                     124  temp_22_cmp_41_0 = icmp i32 Sge temp_21_arithop_41_0, 3_0 
              #                    occupy s5 with temp_21_arithop_41_0
              #                    occupy s3 with 3_0
    li      s3, 3
              #                    occupy s4 with temp_22_cmp_41_0
    slt     s4,s5,s3
    xori    s4,s4,1
              #                    free s5
              #                    occupy s5 with temp_21_arithop_41_0
              #                    store to temp_21_arithop_41_0 in mem offset legal
    sw      s5,8(sp)
              #                    release s5 with temp_21_arithop_41_0
              #                    free s3
              #                    free s4
              #                     167  untrack temp_21_arithop_41_0 
              #                     127  br i1 temp_22_cmp_41_0, label branch_true_42, label branch_false_42 
              #                    occupy s4 with temp_22_cmp_41_0
              #                    free s4
              #                    occupy s4 with temp_22_cmp_41_0
    bnez    s4, .branch_true_42
              #                    free s4
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s4:Freed { symidx: temp_22_cmp_41_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     125  label branch_true_42: 
.branch_true_42:
              #                     168  untrack temp_22_cmp_41_0 
              #                    occupy s4 with temp_22_cmp_41_0
              #                    release s4 with temp_22_cmp_41_0
              #                          jump label: while.exit_33 
              #                    occupy s5 with temp_11_cmp_32_0
              #                    load from temp_11_cmp_32_0 in mem


    lb      s5,20(sp)
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     79   label while.exit_33: 
.while.exit_33:
              #                     82   (nop) 
              #                          jump label: while.body_62 
    j       .while.body_62
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     83   label while.body_62: 
.while.body_62:
              #                     87   (nop) 
              #                          jump label: while.body_65 
    j       .while.body_65
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     88   label while.body_65: 
.while.body_65:
              #                          jump label: while.exit_65 
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     89   label while.exit_65: 
.while.exit_65:
              #                          jump label: while.exit_62 
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     84   label while.exit_62: 
.while.exit_62:
              #                     39   temp_3_arithop_30_0 = Add i32 k_26_1, 1_0 
              #                    occupy a7 with k_26_1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_3_arithop_30_0
    ADDW    s4,a7,s3
              #                    free a7
              #                    occupy a7 with k_26_1
              #                    store to k_26_1 in mem offset legal
    sw      a7,48(sp)
              #                    release a7 with k_26_1
              #                    free s3
              #                    free s4
              #                     40   (nop) 
              #                     145  k_26_1 = i32 temp_3_arithop_30_0 
              #                    occupy s4 with temp_3_arithop_30_0
              #                    occupy a7 with k_26_1
    mv      a7, s4
              #                    free s4
              #                    occupy s4 with temp_3_arithop_30_0
              #                    store to temp_3_arithop_30_0 in mem offset legal
    sw      s4,36(sp)
              #                    release s4 with temp_3_arithop_30_0
              #                    free a7
              #                     146  sum_17_3 = i32 sum_17_4 
              #                    occupy s1 with sum_17_4
              #                    occupy a5 with sum_17_3
    mv      a5, s1
              #                    free s1
              #                    free a5
              #                          jump label: while.head_29 
              #                    occupy s2 with temp_10_cmp_28_0
              #                    store to temp_10_cmp_28_0 in mem offset legal
    sb      s2,21(sp)
              #                    release s2 with temp_10_cmp_28_0
              #                    occupy s5 with temp_11_cmp_32_0
              #                    store to temp_11_cmp_32_0 in mem offset legal
    sb      s5,20(sp)
              #                    release s5 with temp_11_cmp_32_0
              #                    occupy s1 with sum_17_4
              #                    store to sum_17_4 in mem offset legal
    sw      s1,64(sp)
              #                    release s1 with sum_17_4
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s4:Freed { symidx: temp_22_cmp_41_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     126  label branch_false_42: 
.branch_false_42:
              #                     169  untrack temp_22_cmp_41_0 
              #                    occupy s4 with temp_22_cmp_41_0
              #                    release s4 with temp_22_cmp_41_0
              #                          jump label: branch_short_circuit_c_false_218 
    j       .branch_short_circuit_c_false_218
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     116  label branch_short_circuit_c_false_218: 
.branch_short_circuit_c_false_218:
              #                     177  untrack temp_21_arithop_41_0 
              #                     176  untrack temp_19_logicnot_39_0 
              #                     175  untrack temp_22_cmp_41_0 
              #                          jump label: branch_false_38 
              #                    occupy s5 with temp_17__757_0
              #                    load from temp_17__757_0 in mem


    lb      s5,13(sp)
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_17__757_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     107  label branch_false_38: 
.branch_false_38:
              #                     161  untrack temp_17__757_0 
              #                    occupy s5 with temp_17__757_0
              #                    release s5 with temp_17__757_0
              #                     160  untrack temp_21_arithop_41_0 
              #                     159  untrack temp_19_logicnot_39_0 
              #                     158  untrack temp_22_cmp_41_0 
              #                          jump label: branch_false_36 
              #                    occupy s5 with temp_11_cmp_32_0
              #                    load from temp_11_cmp_32_0 in mem


    lb      s5,20(sp)
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     96   label branch_false_36: 
.branch_false_36:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     41   (nop) 
              #                     147  n_34_1 = i32 0_0 
              #                    occupy s3 with n_34_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with n_34_1
              #                    store to n_34_1 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with n_34_1
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     100  label while.head_53: 
.while.head_53:
              #                     99   temp_16_cmp_52_0 = icmp i32 Slt n_34_1, 2_0 
              #                    occupy s3 with n_34_1
              #                    load from n_34_1 in mem


    lw      s3,32(sp)
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s6 with temp_16_cmp_52_0
    slt     s6,s3,s4
              #                    free s3
              #                    occupy s3 with n_34_1
              #                    store to n_34_1 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with n_34_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_16_cmp_52_0
              #                    store to temp_16_cmp_52_0 in mem offset legal
    sb      s6,14(sp)
              #                    release s6 with temp_16_cmp_52_0
              #                     103  br i1 temp_16_cmp_52_0, label while.body_53, label while.exit_53 
              #                    occupy s3 with temp_16_cmp_52_0
              #                    load from temp_16_cmp_52_0 in mem


    lb      s3,14(sp)
              #                    free s3
              #                    occupy s3 with temp_16_cmp_52_0
              #                    store to temp_16_cmp_52_0 in mem offset legal
    sb      s3,14(sp)
              #                    release s3 with temp_16_cmp_52_0
              #                    occupy s3 with temp_16_cmp_52_0
              #                    load from temp_16_cmp_52_0 in mem


    lb      s3,14(sp)
    bnez    s3, .while.body_53
              #                    free s3
              #                    occupy s3 with temp_16_cmp_52_0
              #                    store to temp_16_cmp_52_0 in mem offset legal
    sb      s3,14(sp)
              #                    release s3 with temp_16_cmp_52_0
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     101  label while.body_53: 
.while.body_53:
              #                     50   temp_6_arithop_54_0 = Add i32 n_34_1, 1_0 
              #                    occupy s3 with n_34_1
              #                    load from n_34_1 in mem


    lw      s3,32(sp)
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_6_arithop_54_0
    ADDW    s6,s3,s4
              #                    free s3
              #                    occupy s3 with n_34_1
              #                    store to n_34_1 in mem offset legal
    sw      s3,32(sp)
              #                    release s3 with n_34_1
              #                    free s4
              #                    free s6
              #                    occupy s6 with temp_6_arithop_54_0
              #                    store to temp_6_arithop_54_0 in mem offset legal
    sw      s6,24(sp)
              #                    release s6 with temp_6_arithop_54_0
              #                     51   (nop) 
              #                     148  n_34_1 = i32 temp_6_arithop_54_0 
              #                    occupy s3 with temp_6_arithop_54_0
              #                    load from temp_6_arithop_54_0 in mem


    lw      s3,24(sp)
              #                    occupy s4 with n_34_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with temp_6_arithop_54_0
              #                    store to temp_6_arithop_54_0 in mem offset legal
    sw      s3,24(sp)
              #                    release s3 with temp_6_arithop_54_0
              #                    free s4
              #                    occupy s4 with n_34_1
              #                    store to n_34_1 in mem offset legal
    sw      s4,32(sp)
              #                    release s4 with n_34_1
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_11_cmp_32_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     102  label while.exit_53: 
.while.exit_53:
              #                     44   (nop) 
              #                     45   (nop) 
              #                     47   temp_5_arithop_34_0 = Add i32 sum_17_4, 1_0 
              #                    occupy s1 with sum_17_4
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_5_arithop_34_0
    ADDW    s4,s1,s3
              #                    free s1
              #                    occupy s1 with sum_17_4
              #                    store to sum_17_4 in mem offset legal
    sw      s1,64(sp)
              #                    release s1 with sum_17_4
              #                    free s3
              #                    free s4
              #                     48   (nop) 
              #                     149  m_30_1 = i32 temp_14_arithop_35_0 
              #                    occupy s1 with temp_14_arithop_35_0
              #                    load from temp_14_arithop_35_0 in mem


    lw      s1,16(sp)
              #                    occupy s3 with m_30_1
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with temp_14_arithop_35_0
              #                    store to temp_14_arithop_35_0 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_14_arithop_35_0
              #                    free s3
              #                    occupy s3 with m_30_1
              #                    store to m_30_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with m_30_1
              #                     150  sum_17_4 = i32 temp_5_arithop_34_0 
              #                    occupy s4 with temp_5_arithop_34_0
              #                    occupy s1 with sum_17_4
    mv      s1, s4
              #                    free s4
              #                    occupy s4 with temp_5_arithop_34_0
              #                    store to temp_5_arithop_34_0 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_5_arithop_34_0
              #                    free s1
              #                          jump label: while.head_33 
              #                    occupy s3 with m_30_1
              #                    load from m_30_1 in mem


    lw      s3,40(sp)
              #                    occupy s5 with temp_11_cmp_32_0
              #                    store to temp_11_cmp_32_0 in mem offset legal
    sb      s5,20(sp)
              #                    release s5 with temp_11_cmp_32_0
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s1:Freed { symidx: sum_17_4, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |     s5:Freed { symidx: temp_17__757_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     117  label branch_short_circuit_p_false_218: 
.branch_short_circuit_p_false_218:
              #                     110  (nop) 
              #                     112  temp_19_logicnot_39_0 = xor i1 temp_17__757_0, true 
              #                    occupy s5 with temp_17__757_0
              #                    occupy s3 with temp_19_logicnot_39_0
    seqz    s3, s5
              #                    free s5
              #                    occupy s5 with temp_17__757_0
              #                    store to temp_17__757_0 in mem offset legal
    sb      s5,13(sp)
              #                    release s5 with temp_17__757_0
              #                    free s3
              #                     170  untrack temp_17__757_0 
              #                     119  br i1 temp_19_logicnot_39_0, label branch_short_circuit_c_true_218, label branch_short_circuit_c_false_218 
              #                    occupy s3 with temp_19_logicnot_39_0
              #                    free s3
              #                    occupy s3 with temp_19_logicnot_39_0
              #                    store to temp_19_logicnot_39_0 in mem offset legal
    sb      s3,12(sp)
              #                    release s3 with temp_19_logicnot_39_0
              #                    occupy s5 with temp_17__757_0
              #                    load from temp_17__757_0 in mem


    lb      s5,13(sp)
              #                    occupy s3 with temp_19_logicnot_39_0
              #                    load from temp_19_logicnot_39_0 in mem


    lb      s3,12(sp)
    bnez    s3, .branch_short_circuit_c_true_218
              #                    free s3
              #                    occupy s3 with temp_19_logicnot_39_0
              #                    store to temp_19_logicnot_39_0 in mem offset legal
    sb      s3,12(sp)
              #                    release s3 with temp_19_logicnot_39_0
              #                    occupy s5 with temp_17__757_0
              #                    store to temp_17__757_0 in mem offset legal
    sb      s5,13(sp)
              #                    release s5 with temp_17__757_0
    j       .branch_short_circuit_c_false_218
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a5:Freed { symidx: sum_17_3, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |     a7:Freed { symidx: k_26_1, tracked: true } |     s2:Freed { symidx: temp_10_cmp_28_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     73   label while.exit_29: 
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
              #                     151  sum_17_2 = i32 sum_17_3 
              #                    occupy a5 with sum_17_3
              #                    occupy a2 with sum_17_2
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                     152  j_22_1 = i32 temp_1_arithop_26_0 
              #                    occupy s3 with temp_1_arithop_26_0
              #                    occupy a4 with j_22_1
    mv      a4, s3
              #                    free s3
              #                    free a4
              #                          jump label: while.head_25 
              #                    occupy s3 with temp_1_arithop_26_0
              #                    store to temp_1_arithop_26_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_1_arithop_26_0
              #                    occupy s2 with temp_10_cmp_28_0
              #                    store to temp_10_cmp_28_0 in mem offset legal
    sb      s2,21(sp)
              #                    release s2 with temp_10_cmp_28_0
              #                    occupy a6 with temp_9_cmp_24_0
              #                    store to temp_9_cmp_24_0 in mem offset legal
    sb      a6,22(sp)
              #                    release a6 with temp_9_cmp_24_0
              #                    occupy a5 with sum_17_3
              #                    store to sum_17_3 in mem offset legal
    sw      a5,68(sp)
              #                    release a5 with sum_17_3
              #                    occupy a7 with k_26_1
              #                    store to k_26_1 in mem offset legal
    sw      a7,48(sp)
              #                    release a7 with k_26_1
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a2:Freed { symidx: sum_17_2, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |     a4:Freed { symidx: j_22_1, tracked: true } |     a6:Freed { symidx: temp_9_cmp_24_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     67   label while.exit_25: 
.while.exit_25:
              #                     26   temp_0_arithop_22_0 = Add i32 i_17_1, 1_0 
              #                    occupy a0 with i_17_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a7 with temp_0_arithop_22_0
    ADDW    a7,a0,a5
              #                    free a0
              #                    free a5
              #                    free a7
              #                     27   (nop) 
              #                     153  i_17_1 = i32 temp_0_arithop_22_0 
              #                    occupy a7 with temp_0_arithop_22_0
              #                    occupy a0 with i_17_1
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                     154  sum_17_1 = i32 sum_17_2 
              #                    occupy a2 with sum_17_2
              #                    occupy a1 with sum_17_1
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          jump label: while.head_21 
              #                    occupy a6 with temp_9_cmp_24_0
              #                    store to temp_9_cmp_24_0 in mem offset legal
    sb      a6,22(sp)
              #                    release a6 with temp_9_cmp_24_0
              #                    occupy a4 with j_22_1
              #                    store to j_22_1 in mem offset legal
    sw      a4,56(sp)
              #                    release a4 with j_22_1
              #                    occupy a2 with sum_17_2
              #                    store to sum_17_2 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with sum_17_2
              #                    occupy a7 with temp_0_arithop_22_0
              #                    store to temp_0_arithop_22_0 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with temp_0_arithop_22_0
              #                    occupy a3 with temp_8_cmp_20_0
              #                    store to temp_8_cmp_20_0 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_8_cmp_20_0
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: i_17_1, tracked: true } |     a1:Freed { symidx: sum_17_1, tracked: true } |     a3:Freed { symidx: temp_8_cmp_20_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     59   label while.exit_21: 
.while.exit_21:
              #                     155  untrack i_17_1 
              #                    occupy a0 with i_17_1
              #                    release a0 with i_17_1
              #                     22   ret sum_17_1 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    occupy a1 with sum_17_1
              #                    store to sum_17_1 in mem offset legal
    sw      a1,76(sp)
              #                    release a1 with sum_17_1
              #                    occupy a0 with sum_17_1
              #                    load from sum_17_1 in mem


    lw      a0,76(sp)
    addi    sp,sp,96
              #                    free a0
    ret
