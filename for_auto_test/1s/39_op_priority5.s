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
              #                     31   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|flag _s22 _i2:4 at 76|temp_0_value_from_ptr _s24 _i0:4 at 72|temp_1_value_from_ptr _s24 _i0:4 at 68|temp_2_arithop _s24 _i0:4 at 64|temp_3_value_from_ptr _s24 _i0:4 at 60|temp_4_value_from_ptr _s24 _i0:4 at 56|temp_5_arithop _s24 _i0:4 at 52|temp_6_value_from_ptr _s24 _i0:4 at 48|temp_7_arithop _s24 _i0:4 at 44|temp_8_cmp _s24 _i0:1 at 43|none:3 at 40|temp_15_arithop _s24 _i0:4 at 36|temp_16_arithop _s24 _i0:4 at 32|temp_18_arithop _s24 _i0:4 at 28|temp_19_cmp _s24 _i0:1 at 27|none:3 at 24|temp_23_arithop _s24 _i0:4 at 20|temp_24_arithop _s24 _i0:4 at 16|temp_28_arithop _s24 _i0:4 at 12|temp_29_arithop _s24 _i0:4 at 8|temp_30_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     33   alloc i32 [flag_22] 
              #                     38   alloc i32 [temp_0_value_from_ptr_24] 
              #                     41   alloc i32 [temp_1_value_from_ptr_24] 
              #                     44   alloc i32 [temp_2_arithop_24] 
              #                     46   alloc i32 [temp_3_value_from_ptr_24] 
              #                     49   alloc i32 [temp_4_value_from_ptr_24] 
              #                     52   alloc i32 [temp_5_arithop_24] 
              #                     54   alloc i32 [temp_6_value_from_ptr_24] 
              #                     57   alloc i32 [temp_7_arithop_24] 
              #                     59   alloc i1 [temp_8_cmp_24] 
              #                     61   alloc i32 [temp_9_value_from_ptr_24] 
              #                     64   alloc i32 [temp_10_value_from_ptr_24] 
              #                     67   alloc i32 [temp_11_arithop_24] 
              #                     69   alloc i32 [temp_12_value_from_ptr_24] 
              #                     72   alloc i32 [temp_13_value_from_ptr_24] 
              #                     75   alloc i32 [temp_14_value_from_ptr_24] 
              #                     78   alloc i32 [temp_15_arithop_24] 
              #                     80   alloc i32 [temp_16_arithop_24] 
              #                     82   alloc i32 [temp_17_value_from_ptr_24] 
              #                     85   alloc i32 [temp_18_arithop_24] 
              #                     87   alloc i1 [temp_19_cmp_24] 
              #                     94   alloc i32 [temp_20_value_from_ptr_24] 
              #                     97   alloc i32 [temp_21_value_from_ptr_24] 
              #                     100  alloc i32 [temp_22_value_from_ptr_24] 
              #                     103  alloc i32 [temp_23_arithop_24] 
              #                     105  alloc i32 [temp_24_arithop_24] 
              #                     107  alloc i32 [temp_25_value_from_ptr_24] 
              #                     110  alloc i32 [temp_26_value_from_ptr_24] 
              #                     113  alloc i32 [temp_27_value_from_ptr_24] 
              #                     116  alloc i32 [temp_28_arithop_24] 
              #                     118  alloc i32 [temp_29_arithop_24] 
              #                     120  alloc i1 [temp_30_cmp_24] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     32   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     39   temp_0_value_from_ptr_24_0 = load *e_0:ptr->i32 
              #                    occupy a0 with *e_0
              #                       load label e as ptr to reg
    la      a0, e
              #                    occupy reg a0 with *e_0
              #                    occupy a1 with temp_0_value_from_ptr_24_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     40   mu e_0_0:39 
              #                     42   temp_1_value_from_ptr_24_0 = load *d_0:ptr->i32 
              #                    occupy a2 with *d_0
              #                       load label d as ptr to reg
    la      a2, d
              #                    occupy reg a2 with *d_0
              #                    occupy a3 with temp_1_value_from_ptr_24_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     43   mu d_0_0:42 
              #                     45   temp_2_arithop_24_0 = Add i32 temp_0_value_from_ptr_24_0, temp_1_value_from_ptr_24_0 
              #                    occupy a1 with temp_0_value_from_ptr_24_0
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    occupy a4 with temp_2_arithop_24_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     132  untrack temp_0_value_from_ptr_24_0 
              #                    occupy a1 with temp_0_value_from_ptr_24_0
              #                    release a1 with temp_0_value_from_ptr_24_0
              #                     47   temp_3_value_from_ptr_24_0 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     48   mu a_0_0:47 
              #                     50   temp_4_value_from_ptr_24_0 = load *b_0:ptr->i32 
              #                    occupy a6 with *b_0
              #                       load label b as ptr to reg
    la      a6, b
              #                    occupy reg a6 with *b_0
              #                    occupy a7 with temp_4_value_from_ptr_24_0
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                     51   mu b_0_0:50 
              #                     53   temp_5_arithop_24_0 = Mul i32 temp_3_value_from_ptr_24_0, temp_4_value_from_ptr_24_0 
              #                    occupy s1 with temp_5_arithop_24_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    occupy a7 with temp_4_value_from_ptr_24_0
    mulw    s1,a5,a7
              #                    free a5
              #                    free a7
              #                    free s1
              #                     55   temp_6_value_from_ptr_24_0 = load *c_0:ptr->i32 
              #                    occupy s2 with *c_0
              #                       load label c as ptr to reg
    la      s2, c
              #                    occupy reg s2 with *c_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                     56   mu c_0_0:55 
              #                     58   temp_7_arithop_24_0 = Div i32 temp_5_arithop_24_0, temp_6_value_from_ptr_24_0 
              #                    occupy s1 with temp_5_arithop_24_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    occupy s4 with temp_7_arithop_24_0
    divw    s4,s1,s3
              #                    free s1
              #                    free s3
              #                    free s4
              #                     134  untrack temp_5_arithop_24_0 
              #                    occupy s1 with temp_5_arithop_24_0
              #                    release s1 with temp_5_arithop_24_0
              #                     60   temp_8_cmp_24_0 = icmp i32 Eq temp_7_arithop_24_0, temp_2_arithop_24_0 
              #                    occupy s4 with temp_7_arithop_24_0
              #                    occupy a4 with temp_2_arithop_24_0
              #                    occupy s1 with temp_8_cmp_24_0
    xor     s1,s4,a4
    seqz    s1, s1
              #                    free s4
              #                    free a4
              #                    free s1
              #                     133  untrack temp_7_arithop_24_0 
              #                    occupy s4 with temp_7_arithop_24_0
              #                    release s4 with temp_7_arithop_24_0
              #                     125  br i1 temp_8_cmp_24_0, label branch_short_circuit_p_true_103, label branch_short_circuit_c_false_103 
              #                    occupy s1 with temp_8_cmp_24_0
              #                    free s1
              #                    occupy s1 with temp_8_cmp_24_0
    bnez    s1, .branch_short_circuit_p_true_103
              #                    free s1
    j       .branch_short_circuit_c_false_103
              #                    regtab     a3:Freed { symidx: temp_1_value_from_ptr_24_0, tracked: true } |     a4:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     a5:Freed { symidx: temp_3_value_from_ptr_24_0, tracked: true } |     a7:Freed { symidx: temp_4_value_from_ptr_24_0, tracked: true } |     s1:Freed { symidx: temp_8_cmp_24_0, tracked: true } |     s3:Freed { symidx: temp_6_value_from_ptr_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     91   label branch_short_circuit_p_true_103: 
.branch_short_circuit_p_true_103:
              #                     141  untrack temp_8_cmp_24_0 
              #                    occupy s1 with temp_8_cmp_24_0
              #                    release s1 with temp_8_cmp_24_0
              #                     62   (nop) 
              #                     63   mu d_0_0:62 
              #                     65   (nop) 
              #                     66   mu e_0_0:65 
              #                     68   (nop) 
              #                     70   (nop) 
              #                     71   mu a_0_0:70 
              #                     73   (nop) 
              #                     74   mu a_0_0:73 
              #                     76   (nop) 
              #                     77   mu b_0_0:76 
              #                     79   temp_15_arithop_24_0 = Add i32 temp_3_value_from_ptr_24_0, temp_4_value_from_ptr_24_0 
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    occupy a0 with temp_15_arithop_24_0
    ADDW    a0,a5,a7
              #                    free a5
              #                    free a7
              #                    free a0
              #                     81   temp_16_arithop_24_0 = Mul i32 temp_3_value_from_ptr_24_0, temp_15_arithop_24_0 
              #                    occupy a1 with temp_16_arithop_24_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    occupy a0 with temp_15_arithop_24_0
    mulw    a1,a5,a0
              #                    free a5
              #                    free a0
              #                    free a1
              #                     154  untrack temp_15_arithop_24_0 
              #                    occupy a0 with temp_15_arithop_24_0
              #                    release a0 with temp_15_arithop_24_0
              #                     83   (nop) 
              #                     84   mu c_0_0:83 
              #                     86   temp_18_arithop_24_0 = Add i32 temp_16_arithop_24_0, temp_6_value_from_ptr_24_0 
              #                    occupy a1 with temp_16_arithop_24_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    occupy a0 with temp_18_arithop_24_0
    ADDW    a0,a1,s3
              #                    free a1
              #                    free s3
              #                    free a0
              #                     153  untrack temp_16_arithop_24_0 
              #                    occupy a1 with temp_16_arithop_24_0
              #                    release a1 with temp_16_arithop_24_0
              #                     88   temp_19_cmp_24_0 = icmp i32 Sle temp_18_arithop_24_0, temp_2_arithop_24_0 
              #                    occupy a0 with temp_18_arithop_24_0
              #                    occupy a4 with temp_2_arithop_24_0
              #                    occupy a1 with temp_19_cmp_24_0
    slt     a1,a4,a0
    xori    a1,a1,1
              #                    free a0
              #                    free a4
              #                    free a1
              #                     155  untrack temp_18_arithop_24_0 
              #                    occupy a0 with temp_18_arithop_24_0
              #                    release a0 with temp_18_arithop_24_0
              #                     152  untrack temp_2_arithop_24_0 
              #                    occupy a4 with temp_2_arithop_24_0
              #                    release a4 with temp_2_arithop_24_0
              #                     93   br i1 temp_19_cmp_24_0, label branch_short_circuit_c_true_103, label branch_short_circuit_c_false_103 
              #                    occupy a1 with temp_19_cmp_24_0
              #                    free a1
              #                    occupy a1 with temp_19_cmp_24_0
    bnez    a1, .branch_short_circuit_c_true_103
              #                    free a1
              #                    occupy s1 with temp_8_cmp_24_0
              #                    load from temp_8_cmp_24_0 in mem


    lb      s1,43(sp)
              #                    occupy a1 with temp_19_cmp_24_0
              #                    store to temp_19_cmp_24_0 in mem offset legal
    sb      a1,27(sp)
              #                    release a1 with temp_19_cmp_24_0
              #                    occupy a4 with temp_2_arithop_24_0
              #                    load from temp_2_arithop_24_0 in mem


    lw      a4,64(sp)
    j       .branch_short_circuit_c_false_103
              #                    regtab     a1:Freed { symidx: temp_19_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_1_value_from_ptr_24_0, tracked: true } |     a5:Freed { symidx: temp_3_value_from_ptr_24_0, tracked: true } |     a7:Freed { symidx: temp_4_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: temp_6_value_from_ptr_24_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     89   label branch_short_circuit_c_true_103: 
.branch_short_circuit_c_true_103:
              #                     165  untrack temp_28_arithop_24_0 
              #                     164  untrack temp_1_value_from_ptr_24_0 
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    release a3 with temp_1_value_from_ptr_24_0
              #                     163  untrack temp_29_arithop_24_0 
              #                     162  untrack temp_3_value_from_ptr_24_0 
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    release a5 with temp_3_value_from_ptr_24_0
              #                     161  untrack temp_23_arithop_24_0 
              #                     160  untrack temp_6_value_from_ptr_24_0 
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    release s3 with temp_6_value_from_ptr_24_0
              #                     159  untrack temp_4_value_from_ptr_24_0 
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    release a7 with temp_4_value_from_ptr_24_0
              #                     158  untrack temp_24_arithop_24_0 
              #                     157  untrack temp_19_cmp_24_0 
              #                    occupy a1 with temp_19_cmp_24_0
              #                    release a1 with temp_19_cmp_24_0
              #                     156  untrack temp_30_cmp_24_0 
              #                     150  untrack temp_30_cmp_24_0 
              #                     37   (nop) 
              #                     130  flag_22_2 = i32 1_0 
              #                    occupy a0 with flag_22_2
    li      a0, 1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_101 
    j       .branch_short_circuit_c_false_101
              #                    regtab     a0:Freed { symidx: flag_22_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     122  label branch_short_circuit_c_false_101: 
.branch_short_circuit_c_false_101:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: flag_22_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     34    Call void putint_0(flag_22_2) 
              #                    saved register dumping to mem
              #                    occupy a0 with flag_22_2
              #                    store to flag_22_2 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with flag_22_2
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_flag_22_2_0
              #                    load from flag_22_2 in mem


    lw      a0,76(sp)
              #                    arg load ended


    call    putint
              #                     36   ret flag_22_2 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with flag_22_2
              #                    load from flag_22_2 in mem


    lw      a0,76(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_1_value_from_ptr_24_0, tracked: true } |     a4:Freed { symidx: temp_2_arithop_24_0, tracked: true } |     a5:Freed { symidx: temp_3_value_from_ptr_24_0, tracked: true } |     a7:Freed { symidx: temp_4_value_from_ptr_24_0, tracked: true } |     s1:Freed { symidx: temp_8_cmp_24_0, tracked: true } |     s3:Freed { symidx: temp_6_value_from_ptr_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     90   label branch_short_circuit_c_false_103: 
.branch_short_circuit_c_false_103:
              #                     166  untrack temp_19_cmp_24_0 
              #                     140  untrack temp_18_arithop_24_0 
              #                     139  untrack temp_8_cmp_24_0 
              #                    occupy s1 with temp_8_cmp_24_0
              #                    release s1 with temp_8_cmp_24_0
              #                     138  untrack temp_15_arithop_24_0 
              #                     137  untrack temp_19_cmp_24_0 
              #                     136  untrack temp_16_arithop_24_0 
              #                     135  untrack temp_2_arithop_24_0 
              #                    occupy a4 with temp_2_arithop_24_0
              #                    release a4 with temp_2_arithop_24_0
              #                     95   (nop) 
              #                     96   mu d_0_0:95 
              #                     98   (nop) 
              #                     99   mu a_0_0:98 
              #                     101  (nop) 
              #                     102  mu c_0_0:101 
              #                     104  temp_23_arithop_24_0 = Div i32 temp_3_value_from_ptr_24_0, temp_6_value_from_ptr_24_0 
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    occupy a0 with temp_23_arithop_24_0
    divw    a0,a5,s3
              #                    free a5
              #                    free s3
              #                    free a0
              #                     106  temp_24_arithop_24_0 = Sub i32 temp_1_value_from_ptr_24_0, temp_23_arithop_24_0 
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    occupy a0 with temp_23_arithop_24_0
              #                    occupy a1 with temp_24_arithop_24_0
              #                    regtab:    a0:Occupied { symidx: temp_23_arithop_24_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_24_arithop_24_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: temp_1_value_from_ptr_24_0, tracked: true, occupy_count: 1 } |     a5:Freed { symidx: temp_3_value_from_ptr_24_0, tracked: true } |     a7:Freed { symidx: temp_4_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: temp_6_value_from_ptr_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24


    subw    a1,a3,a0
              #                    free a3
              #                    free a0
              #                    free a1
              #                     147  untrack temp_23_arithop_24_0 
              #                    occupy a0 with temp_23_arithop_24_0
              #                    release a0 with temp_23_arithop_24_0
              #                     144  untrack temp_1_value_from_ptr_24_0 
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    release a3 with temp_1_value_from_ptr_24_0
              #                     108  (nop) 
              #                     109  mu a_0_0:108 
              #                     111  (nop) 
              #                     112  mu b_0_0:111 
              #                     114  (nop) 
              #                     115  mu c_0_0:114 
              #                     117  temp_28_arithop_24_0 = Mul i32 temp_4_value_from_ptr_24_0, temp_6_value_from_ptr_24_0 
              #                    occupy a0 with temp_28_arithop_24_0
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
    mulw    a0,a7,s3
              #                    free a7
              #                    free s3
              #                    free a0
              #                     148  untrack temp_6_value_from_ptr_24_0 
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    release s3 with temp_6_value_from_ptr_24_0
              #                     145  untrack temp_4_value_from_ptr_24_0 
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    release a7 with temp_4_value_from_ptr_24_0
              #                     119  temp_29_arithop_24_0 = Sub i32 temp_3_value_from_ptr_24_0, temp_28_arithop_24_0 
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    occupy a0 with temp_28_arithop_24_0
              #                    occupy a2 with temp_29_arithop_24_0
              #                    regtab:    a0:Occupied { symidx: temp_28_arithop_24_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: temp_24_arithop_24_0, tracked: true } |     a2:Occupied { symidx: temp_29_arithop_24_0, tracked: true, occupy_count: 1 } |     a5:Occupied { symidx: temp_3_value_from_ptr_24_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:24


    subw    a2,a5,a0
              #                    free a5
              #                    free a0
              #                    free a2
              #                     146  untrack temp_28_arithop_24_0 
              #                    occupy a0 with temp_28_arithop_24_0
              #                    release a0 with temp_28_arithop_24_0
              #                     142  untrack temp_3_value_from_ptr_24_0 
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    release a5 with temp_3_value_from_ptr_24_0
              #                     121  temp_30_cmp_24_0 = icmp i32 Eq temp_29_arithop_24_0, temp_24_arithop_24_0 
              #                    occupy a2 with temp_29_arithop_24_0
              #                    occupy a1 with temp_24_arithop_24_0
              #                    occupy a0 with temp_30_cmp_24_0
    xor     a0,a2,a1
    seqz    a0, a0
              #                    free a2
              #                    free a1
              #                    free a0
              #                     149  untrack temp_29_arithop_24_0 
              #                    occupy a2 with temp_29_arithop_24_0
              #                    release a2 with temp_29_arithop_24_0
              #                     143  untrack temp_24_arithop_24_0 
              #                    occupy a1 with temp_24_arithop_24_0
              #                    release a1 with temp_24_arithop_24_0
              #                     124  br i1 temp_30_cmp_24_0, label branch_short_circuit_c_true_103, label UP_2_0 
              #                    occupy a0 with temp_30_cmp_24_0
              #                    free a0
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    load from temp_4_value_from_ptr_24_0 in mem


    lw      a7,56(sp)
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    load from temp_6_value_from_ptr_24_0 in mem


    lw      s3,48(sp)
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    load from temp_1_value_from_ptr_24_0 in mem


    lw      a3,68(sp)
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    load from temp_3_value_from_ptr_24_0 in mem


    lw      a5,60(sp)
              #                    occupy a1 with temp_19_cmp_24_0
              #                    load from temp_19_cmp_24_0 in mem


    lb      a1,27(sp)
              #                    occupy a0 with temp_30_cmp_24_0
              #                    store to temp_30_cmp_24_0 in mem offset legal
    sb      a0,7(sp)
              #                    release a0 with temp_30_cmp_24_0
              #                    occupy a0 with temp_30_cmp_24_0
              #                    load from temp_30_cmp_24_0 in mem


    lb      a0,7(sp)
    bnez    a0, .branch_short_circuit_c_true_103
              #                    free a0
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: temp_30_cmp_24_0, tracked: true } |     a1:Freed { symidx: temp_19_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_1_value_from_ptr_24_0, tracked: true } |     a5:Freed { symidx: temp_3_value_from_ptr_24_0, tracked: true } |     a7:Freed { symidx: temp_4_value_from_ptr_24_0, tracked: true } |     s3:Freed { symidx: temp_6_value_from_ptr_24_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     129  label UP_2_0: 
.UP_2_0:
              #                     151  untrack temp_30_cmp_24_0 
              #                    occupy a0 with temp_30_cmp_24_0
              #                    release a0 with temp_30_cmp_24_0
              #                     131  flag_22_2 = i32 0_0 
              #                    occupy a0 with flag_22_2
    li      a0, 0
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_101 
              #                    occupy a7 with temp_4_value_from_ptr_24_0
              #                    store to temp_4_value_from_ptr_24_0 in mem offset legal
    sw      a7,56(sp)
              #                    release a7 with temp_4_value_from_ptr_24_0
              #                    occupy s3 with temp_6_value_from_ptr_24_0
              #                    store to temp_6_value_from_ptr_24_0 in mem offset legal
    sw      s3,48(sp)
              #                    release s3 with temp_6_value_from_ptr_24_0
              #                    occupy a3 with temp_1_value_from_ptr_24_0
              #                    store to temp_1_value_from_ptr_24_0 in mem offset legal
    sw      a3,68(sp)
              #                    release a3 with temp_1_value_from_ptr_24_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    store to temp_3_value_from_ptr_24_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_3_value_from_ptr_24_0
              #                    occupy a1 with temp_19_cmp_24_0
              #                    store to temp_19_cmp_24_0 in mem offset legal
    sb      a1,27(sp)
              #                    release a1 with temp_19_cmp_24_0
    j       .branch_short_circuit_c_false_101
.section ___var
    .data
    .align 4
    .globl e
              #                     29   global i32 e_0 
    .type e,@object
e:
    .word 4
    .align 4
    .globl d
              #                     26   global i32 d_0 
    .type d,@object
d:
    .word 2
    .align 4
    .globl c
              #                     23   global i32 c_0 
    .type c,@object
c:
    .word 1
    .align 4
    .globl b
              #                     20   global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                     17   global i32 a_0 
    .type a,@object
a:
    .word 1
