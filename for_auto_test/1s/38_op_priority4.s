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
              #                     21   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|temp_0_ret_of_getint _s22 _i0:4 at 92|temp_1_ret_of_getint _s22 _i0:4 at 88|temp_2_ret_of_getint _s22 _i0:4 at 84|temp_3_ret_of_getint _s22 _i0:4 at 80|temp_4_ret_of_getint _s22 _i0:4 at 76|flag _s22 _i2:4 at 72|temp_5_value_from_ptr _s29 _i0:4 at 68|temp_6_value_from_ptr _s29 _i0:4 at 64|temp_7_value_from_ptr _s29 _i0:4 at 60|temp_8_arithop _s29 _i0:4 at 56|temp_9_arithop _s29 _i0:4 at 52|temp_11_value_from_ptr _s29 _i0:4 at 48|temp_13_arithop _s29 _i0:4 at 44|temp_14_arithop _s29 _i0:4 at 40|temp_15_cmp _s29 _i0:1 at 39|none:3 at 36|temp_16_value_from_ptr _s29 _i0:4 at 32|temp_18_arithop _s29 _i0:4 at 28|temp_21_arithop _s29 _i0:4 at 24|temp_23_arithop _s29 _i0:4 at 20|temp_24_cmp _s29 _i0:1 at 19|none:3 at 16|temp_30_arithop _s29 _i0:4 at 12|temp_32_arithop _s29 _i0:4 at 8|temp_33_cmp _s29 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     132  b_0_1 = chi b_0_0:21 
              #                     133  d_0_1 = chi d_0_0:21 
              #                     134  c_0_1 = chi c_0_0:21 
              #                     135  a_0_1 = chi a_0_0:21 
              #                     136  e_0_1 = chi e_0_0:21 
              #                     22   alloc i32 [temp_0_ret_of_getint_22] 
              #                     26   alloc i32 [temp_1_ret_of_getint_22] 
              #                     30   alloc i32 [temp_2_ret_of_getint_22] 
              #                     34   alloc i32 [temp_3_ret_of_getint_22] 
              #                     38   alloc i32 [temp_4_ret_of_getint_22] 
              #                     43   alloc i32 [flag_22] 
              #                     47   alloc i32 [temp_5_value_from_ptr_29] 
              #                     50   alloc i32 [temp_6_value_from_ptr_29] 
              #                     53   alloc i32 [temp_7_value_from_ptr_29] 
              #                     56   alloc i32 [temp_8_arithop_29] 
              #                     58   alloc i32 [temp_9_arithop_29] 
              #                     60   alloc i32 [temp_10_value_from_ptr_29] 
              #                     63   alloc i32 [temp_11_value_from_ptr_29] 
              #                     66   alloc i32 [temp_12_value_from_ptr_29] 
              #                     69   alloc i32 [temp_13_arithop_29] 
              #                     71   alloc i32 [temp_14_arithop_29] 
              #                     73   alloc i1 [temp_15_cmp_29] 
              #                     75   alloc i32 [temp_16_value_from_ptr_29] 
              #                     78   alloc i32 [temp_17_value_from_ptr_29] 
              #                     81   alloc i32 [temp_18_arithop_29] 
              #                     83   alloc i32 [temp_19_value_from_ptr_29] 
              #                     86   alloc i32 [temp_20_value_from_ptr_29] 
              #                     89   alloc i32 [temp_21_arithop_29] 
              #                     91   alloc i32 [temp_22_value_from_ptr_29] 
              #                     94   alloc i32 [temp_23_arithop_29] 
              #                     96   alloc i1 [temp_24_cmp_29] 
              #                     98   alloc i32 [temp_25_value_from_ptr_29] 
              #                     101  alloc i32 [temp_26_value_from_ptr_29] 
              #                     104  alloc i32 [temp_27_arithop_29] 
              #                     106  alloc i32 [temp_28_value_from_ptr_29] 
              #                     109  alloc i32 [temp_29_value_from_ptr_29] 
              #                     112  alloc i32 [temp_30_arithop_29] 
              #                     114  alloc i32 [temp_31_value_from_ptr_29] 
              #                     117  alloc i32 [temp_32_arithop_29] 
              #                     119  alloc i1 [temp_33_cmp_29] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     23   temp_0_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     24   store temp_0_ret_of_getint_22_0:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_0_ret_of_getint_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     150  untrack temp_0_ret_of_getint_22_0 
              #                    occupy a0 with temp_0_ret_of_getint_22_0
              #                    release a0 with temp_0_ret_of_getint_22_0
              #                     25   a_0_2 = chi a_0_1:24 
              #                     27   temp_1_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     28   store temp_1_ret_of_getint_22_0:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with temp_1_ret_of_getint_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     146  untrack temp_1_ret_of_getint_22_0 
              #                    occupy a0 with temp_1_ret_of_getint_22_0
              #                    release a0 with temp_1_ret_of_getint_22_0
              #                     29   b_0_2 = chi b_0_1:28 
              #                     31   temp_2_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     32   store temp_2_ret_of_getint_22_0:i32 *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a0 with temp_2_ret_of_getint_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     149  untrack temp_2_ret_of_getint_22_0 
              #                    occupy a0 with temp_2_ret_of_getint_22_0
              #                    release a0 with temp_2_ret_of_getint_22_0
              #                     33   c_0_2 = chi c_0_1:32 
              #                     35   temp_3_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     36   store temp_3_ret_of_getint_22_0:i32 *d_0:ptr->i32 
              #                    occupy a1 with *d_0
              #                       load label d as ptr to reg
    la      a1, d
              #                    occupy reg a1 with *d_0
              #                    occupy a0 with temp_3_ret_of_getint_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     147  untrack temp_3_ret_of_getint_22_0 
              #                    occupy a0 with temp_3_ret_of_getint_22_0
              #                    release a0 with temp_3_ret_of_getint_22_0
              #                     37   d_0_2 = chi d_0_1:36 
              #                     39   temp_4_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     40   store temp_4_ret_of_getint_22_0:i32 *e_0:ptr->i32 
              #                    occupy a1 with *e_0
              #                       load label e as ptr to reg
    la      a1, e
              #                    occupy reg a1 with *e_0
              #                    occupy a0 with temp_4_ret_of_getint_22_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     148  untrack temp_4_ret_of_getint_22_0 
              #                    occupy a0 with temp_4_ret_of_getint_22_0
              #                    release a0 with temp_4_ret_of_getint_22_0
              #                     41   e_0_2 = chi e_0_1:40 
              #                     42   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     48   temp_5_value_from_ptr_29_0 = load *d_0:ptr->i32 
              #                    occupy a0 with *d_0
              #                       load label d as ptr to reg
    la      a0, d
              #                    occupy reg a0 with *d_0
              #                    occupy a1 with temp_5_value_from_ptr_29_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     49   mu d_0_2:48 
              #                     51   temp_6_value_from_ptr_29_0 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_6_value_from_ptr_29_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     52   mu a_0_2:51 
              #                     54   temp_7_value_from_ptr_29_0 = load *c_0:ptr->i32 
              #                    occupy a4 with *c_0
              #                       load label c as ptr to reg
    la      a4, c
              #                    occupy reg a4 with *c_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     55   mu c_0_2:54 
              #                     57   temp_8_arithop_29_0 = Div i32 temp_6_value_from_ptr_29_0, temp_7_value_from_ptr_29_0 
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    occupy a6 with temp_8_arithop_29_0
    divw    a6,a3,a5
              #                    free a3
              #                    free a5
              #                    free a6
              #                     59   temp_9_arithop_29_0 = Sub i32 temp_5_value_from_ptr_29_0, temp_8_arithop_29_0 
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    occupy a6 with temp_8_arithop_29_0
              #                    occupy a7 with temp_9_arithop_29_0
              #                    regtab:    a0:Freed { symidx: *d_0, tracked: false } |     a1:Occupied { symidx: temp_5_value_from_ptr_29_0, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: *a_0, tracked: false } |     a3:Freed { symidx: temp_6_value_from_ptr_29_0, tracked: true } |     a4:Freed { symidx: *c_0, tracked: false } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     a6:Occupied { symidx: temp_8_arithop_29_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: temp_9_arithop_29_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:24


    subw    a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                     152  untrack temp_8_arithop_29_0 
              #                    occupy a6 with temp_8_arithop_29_0
              #                    release a6 with temp_8_arithop_29_0
              #                     61   (nop) 
              #                     62   mu a_0_2:61 
              #                     64   temp_11_value_from_ptr_29_0 = load *b_0:ptr->i32 
              #                    occupy a6 with *b_0
              #                       load label b as ptr to reg
    la      a6, b
              #                    occupy reg a6 with *b_0
              #                    occupy s1 with temp_11_value_from_ptr_29_0
    lw      s1,0(a6)
              #                    free s1
              #                    free a6
              #                     65   mu b_0_2:64 
              #                     67   (nop) 
              #                     68   mu c_0_2:67 
              #                     70   temp_13_arithop_29_0 = Mul i32 temp_11_value_from_ptr_29_0, temp_7_value_from_ptr_29_0 
              #                    occupy s2 with temp_13_arithop_29_0
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
    mulw    s2,s1,a5
              #                    free s1
              #                    free a5
              #                    free s2
              #                     72   temp_14_arithop_29_0 = Sub i32 temp_6_value_from_ptr_29_0, temp_13_arithop_29_0 
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    occupy s2 with temp_13_arithop_29_0
              #                    occupy s3 with temp_14_arithop_29_0
              #                    regtab:    a0:Freed { symidx: *d_0, tracked: false } |     a1:Freed { symidx: temp_5_value_from_ptr_29_0, tracked: true } |     a2:Freed { symidx: *a_0, tracked: false } |     a3:Occupied { symidx: temp_6_value_from_ptr_29_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *c_0, tracked: false } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     a6:Freed { symidx: *b_0, tracked: false } |     a7:Freed { symidx: temp_9_arithop_29_0, tracked: true } |     s1:Freed { symidx: temp_11_value_from_ptr_29_0, tracked: true } |     s2:Occupied { symidx: temp_13_arithop_29_0, tracked: true, occupy_count: 1 } |     s3:Occupied { symidx: temp_14_arithop_29_0, tracked: true, occupy_count: 1 } |  released_gpr_count:7,released_fpr_count:24


    subw    s3,a3,s2
              #                    free a3
              #                    free s2
              #                    free s3
              #                     153  untrack temp_13_arithop_29_0 
              #                    occupy s2 with temp_13_arithop_29_0
              #                    release s2 with temp_13_arithop_29_0
              #                     74   temp_15_cmp_29_0 = icmp i32 Ne temp_14_arithop_29_0, temp_9_arithop_29_0 
              #                    occupy s3 with temp_14_arithop_29_0
              #                    occupy a7 with temp_9_arithop_29_0
              #                    occupy s2 with temp_15_cmp_29_0
    xor     s2,s3,a7
    snez    s2, s2
              #                    free s3
              #                    free a7
              #                    free s2
              #                     154  untrack temp_14_arithop_29_0 
              #                    occupy s3 with temp_14_arithop_29_0
              #                    release s3 with temp_14_arithop_29_0
              #                     151  untrack temp_9_arithop_29_0 
              #                    occupy a7 with temp_9_arithop_29_0
              #                    release a7 with temp_9_arithop_29_0
              #                     129  br i1 temp_15_cmp_29_0, label branch_short_circuit_c_true_130, label branch_short_circuit_p_false_117 
              #                    occupy s2 with temp_15_cmp_29_0
              #                    free s2
              #                    occupy s2 with temp_15_cmp_29_0
    bnez    s2, .branch_short_circuit_c_true_130
              #                    free s2
    j       .branch_short_circuit_p_false_117
              #                    regtab     a1:Freed { symidx: temp_5_value_from_ptr_29_0, tracked: true } |     a3:Freed { symidx: temp_6_value_from_ptr_29_0, tracked: true } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     s1:Freed { symidx: temp_11_value_from_ptr_29_0, tracked: true } |     s2:Freed { symidx: temp_15_cmp_29_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     121  label branch_short_circuit_c_true_130: 
.branch_short_circuit_c_true_130:
              #                     188  untrack temp_33_cmp_29_0 
              #                     180  untrack temp_24_cmp_29_0 
              #                     179  untrack temp_30_arithop_29_0 
              #                     178  untrack temp_18_arithop_29_0 
              #                     177  untrack temp_7_value_from_ptr_29_0 
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    release a5 with temp_7_value_from_ptr_29_0
              #                     176  untrack temp_33_cmp_29_0 
              #                     175  untrack temp_32_arithop_29_0 
              #                     174  untrack temp_11_value_from_ptr_29_0 
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    release s1 with temp_11_value_from_ptr_29_0
              #                     173  untrack temp_6_value_from_ptr_29_0 
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    release a3 with temp_6_value_from_ptr_29_0
              #                     167  untrack temp_18_arithop_29_0 
              #                     166  untrack temp_16_value_from_ptr_29_0 
              #                     165  untrack temp_23_arithop_29_0 
              #                     164  untrack temp_11_value_from_ptr_29_0 
              #                     163  untrack temp_33_cmp_29_0 
              #                     162  untrack temp_5_value_from_ptr_29_0 
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    release a1 with temp_5_value_from_ptr_29_0
              #                     161  untrack temp_21_arithop_29_0 
              #                     160  untrack temp_7_value_from_ptr_29_0 
              #                     159  untrack temp_24_cmp_29_0 
              #                     158  untrack temp_6_value_from_ptr_29_0 
              #                     157  untrack temp_15_cmp_29_0 
              #                    occupy s2 with temp_15_cmp_29_0
              #                    release s2 with temp_15_cmp_29_0
              #                     156  untrack temp_32_arithop_29_0 
              #                     155  untrack temp_30_arithop_29_0 
              #                     46   (nop) 
              #                     144  flag_22_2 = i32 1_0 
              #                    occupy a0 with flag_22_2
    li      a0, 1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_130 
    j       .branch_short_circuit_c_false_130
              #                    regtab     a0:Freed { symidx: flag_22_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     122  label branch_short_circuit_c_false_130: 
.branch_short_circuit_c_false_130:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: flag_22_2, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     137  mu b_0_2:45 
              #                     138  mu d_0_2:45 
              #                     139  mu c_0_2:45 
              #                     140  mu a_0_2:45 
              #                     141  mu e_0_2:45 
              #                     45   ret flag_22_2 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with flag_22_2
              #                    store to flag_22_2 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with flag_22_2
              #                    occupy a0 with flag_22_2
              #                    load from flag_22_2 in mem


    lw      a0,72(sp)
    addi    sp,sp,112
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_5_value_from_ptr_29_0, tracked: true } |     a3:Freed { symidx: temp_6_value_from_ptr_29_0, tracked: true } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     s1:Freed { symidx: temp_11_value_from_ptr_29_0, tracked: true } |     s2:Freed { symidx: temp_15_cmp_29_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     126  label branch_short_circuit_p_false_117: 
.branch_short_circuit_p_false_117:
              #                     168  untrack temp_15_cmp_29_0 
              #                    occupy s2 with temp_15_cmp_29_0
              #                    release s2 with temp_15_cmp_29_0
              #                     76   temp_16_value_from_ptr_29_0 = load *e_0:ptr->i32 
              #                    occupy a0 with *e_0
              #                       load label e as ptr to reg
    la      a0, e
              #                    occupy reg a0 with *e_0
              #                    occupy a2 with temp_16_value_from_ptr_29_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     77   mu e_0_2:76 
              #                     79   (nop) 
              #                     80   mu d_0_2:79 
              #                     82   temp_18_arithop_29_0 = Add i32 temp_16_value_from_ptr_29_0, temp_5_value_from_ptr_29_0 
              #                    occupy a2 with temp_16_value_from_ptr_29_0
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    occupy a4 with temp_18_arithop_29_0
    ADDW    a4,a2,a1
              #                    free a2
              #                    free a1
              #                    free a4
              #                     172  untrack temp_16_value_from_ptr_29_0 
              #                    occupy a2 with temp_16_value_from_ptr_29_0
              #                    release a2 with temp_16_value_from_ptr_29_0
              #                     170  untrack temp_5_value_from_ptr_29_0 
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    release a1 with temp_5_value_from_ptr_29_0
              #                     84   (nop) 
              #                     85   mu a_0_2:84 
              #                     87   (nop) 
              #                     88   mu b_0_2:87 
              #                     90   temp_21_arithop_29_0 = Mul i32 temp_6_value_from_ptr_29_0, temp_11_value_from_ptr_29_0 
              #                    occupy a1 with temp_21_arithop_29_0
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    occupy s1 with temp_11_value_from_ptr_29_0
    mulw    a1,a3,s1
              #                    free a3
              #                    free s1
              #                    free a1
              #                     92   (nop) 
              #                     93   mu c_0_2:92 
              #                     95   temp_23_arithop_29_0 = Div i32 temp_21_arithop_29_0, temp_7_value_from_ptr_29_0 
              #                    occupy a1 with temp_21_arithop_29_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    occupy a2 with temp_23_arithop_29_0
    divw    a2,a1,a5
              #                    free a1
              #                    free a5
              #                    free a2
              #                     171  untrack temp_21_arithop_29_0 
              #                    occupy a1 with temp_21_arithop_29_0
              #                    release a1 with temp_21_arithop_29_0
              #                     97   temp_24_cmp_29_0 = icmp i32 Eq temp_23_arithop_29_0, temp_18_arithop_29_0 
              #                    occupy a2 with temp_23_arithop_29_0
              #                    occupy a4 with temp_18_arithop_29_0
              #                    occupy a1 with temp_24_cmp_29_0
    xor     a1,a2,a4
    seqz    a1, a1
              #                    free a2
              #                    free a4
              #                    free a1
              #                     169  untrack temp_23_arithop_29_0 
              #                    occupy a2 with temp_23_arithop_29_0
              #                    release a2 with temp_23_arithop_29_0
              #                     128  br i1 temp_24_cmp_29_0, label branch_short_circuit_c_true_130, label branch_short_circuit_p_false_130 
              #                    occupy a1 with temp_24_cmp_29_0
              #                    free a1
              #                    occupy a1 with temp_24_cmp_29_0
              #                    store to temp_24_cmp_29_0 in mem offset legal
    sb      a1,19(sp)
              #                    release a1 with temp_24_cmp_29_0
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    load from temp_5_value_from_ptr_29_0 in mem


    lw      a1,68(sp)
              #                    occupy s2 with temp_15_cmp_29_0
              #                    load from temp_15_cmp_29_0 in mem


    lb      s2,39(sp)
              #                    occupy a4 with temp_18_arithop_29_0
              #                    store to temp_18_arithop_29_0 in mem offset legal
    sw      a4,28(sp)
              #                    release a4 with temp_18_arithop_29_0
              #                    occupy a0 with temp_24_cmp_29_0
              #                    load from temp_24_cmp_29_0 in mem


    lb      a0,19(sp)
    bnez    a0, .branch_short_circuit_c_true_130
              #                    free a0
    j       .branch_short_circuit_p_false_130
              #                    regtab     a0:Freed { symidx: temp_24_cmp_29_0, tracked: true } |     a1:Freed { symidx: temp_5_value_from_ptr_29_0, tracked: true } |     a3:Freed { symidx: temp_6_value_from_ptr_29_0, tracked: true } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     s1:Freed { symidx: temp_11_value_from_ptr_29_0, tracked: true } |     s2:Freed { symidx: temp_15_cmp_29_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     123  label branch_short_circuit_p_false_130: 
.branch_short_circuit_p_false_130:
              #                     181  untrack temp_24_cmp_29_0 
              #                    occupy a0 with temp_24_cmp_29_0
              #                    release a0 with temp_24_cmp_29_0
              #                     99   (nop) 
              #                     100  mu d_0_2:99 
              #                     102  (nop) 
              #                     103  mu e_0_2:102 
              #                     105  (nop) 
              #                     107  (nop) 
              #                     108  mu a_0_2:107 
              #                     110  (nop) 
              #                     111  mu b_0_2:110 
              #                     113  temp_30_arithop_29_0 = Add i32 temp_6_value_from_ptr_29_0, temp_11_value_from_ptr_29_0 
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    occupy a0 with temp_30_arithop_29_0
    ADDW    a0,a3,s1
              #                    free a3
              #                    free s1
              #                    free a0
              #                     186  untrack temp_6_value_from_ptr_29_0 
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    release a3 with temp_6_value_from_ptr_29_0
              #                     183  untrack temp_11_value_from_ptr_29_0 
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    release s1 with temp_11_value_from_ptr_29_0
              #                     115  (nop) 
              #                     116  mu c_0_2:115 
              #                     118  temp_32_arithop_29_0 = Add i32 temp_30_arithop_29_0, temp_7_value_from_ptr_29_0 
              #                    occupy a0 with temp_30_arithop_29_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    occupy a2 with temp_32_arithop_29_0
    ADDW    a2,a0,a5
              #                    free a0
              #                    free a5
              #                    free a2
              #                     187  untrack temp_7_value_from_ptr_29_0 
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    release a5 with temp_7_value_from_ptr_29_0
              #                     182  untrack temp_30_arithop_29_0 
              #                    occupy a0 with temp_30_arithop_29_0
              #                    release a0 with temp_30_arithop_29_0
              #                     120  temp_33_cmp_29_0 = icmp i32 Eq temp_32_arithop_29_0, temp_18_arithop_29_0 
              #                    occupy a2 with temp_32_arithop_29_0
              #                    occupy a0 with temp_18_arithop_29_0
              #                    load from temp_18_arithop_29_0 in mem


    lw      a0,28(sp)
              #                    occupy a3 with temp_33_cmp_29_0
    xor     a3,a2,a0
    seqz    a3, a3
              #                    free a2
              #                    free a0
              #                    free a3
              #                     185  untrack temp_18_arithop_29_0 
              #                    occupy a0 with temp_18_arithop_29_0
              #                    release a0 with temp_18_arithop_29_0
              #                     184  untrack temp_32_arithop_29_0 
              #                    occupy a2 with temp_32_arithop_29_0
              #                    release a2 with temp_32_arithop_29_0
              #                     125  br i1 temp_33_cmp_29_0, label branch_short_circuit_c_true_130, label UP_2_0 
              #                    occupy a3 with temp_33_cmp_29_0
              #                    free a3
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    load from temp_7_value_from_ptr_29_0 in mem


    lw      a5,60(sp)
              #                    occupy a3 with temp_33_cmp_29_0
              #                    store to temp_33_cmp_29_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_33_cmp_29_0
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    load from temp_6_value_from_ptr_29_0 in mem


    lw      a3,64(sp)
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    load from temp_11_value_from_ptr_29_0 in mem


    lw      s1,48(sp)
              #                    occupy a0 with temp_33_cmp_29_0
              #                    load from temp_33_cmp_29_0 in mem


    lb      a0,7(sp)
    bnez    a0, .branch_short_circuit_c_true_130
              #                    free a0
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: temp_33_cmp_29_0, tracked: true } |     a1:Freed { symidx: temp_5_value_from_ptr_29_0, tracked: true } |     a3:Freed { symidx: temp_6_value_from_ptr_29_0, tracked: true } |     a5:Freed { symidx: temp_7_value_from_ptr_29_0, tracked: true } |     s1:Freed { symidx: temp_11_value_from_ptr_29_0, tracked: true } |     s2:Freed { symidx: temp_15_cmp_29_0, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     143  label UP_2_0: 
.UP_2_0:
              #                     189  untrack temp_33_cmp_29_0 
              #                    occupy a0 with temp_33_cmp_29_0
              #                    release a0 with temp_33_cmp_29_0
              #                     145  flag_22_2 = i32 0_0 
              #                    occupy a0 with flag_22_2
    li      a0, 0
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_130 
              #                    occupy a1 with temp_5_value_from_ptr_29_0
              #                    store to temp_5_value_from_ptr_29_0 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_5_value_from_ptr_29_0
              #                    occupy s2 with temp_15_cmp_29_0
              #                    store to temp_15_cmp_29_0 in mem offset legal
    sb      s2,39(sp)
              #                    release s2 with temp_15_cmp_29_0
              #                    occupy a5 with temp_7_value_from_ptr_29_0
              #                    store to temp_7_value_from_ptr_29_0 in mem offset legal
    sw      a5,60(sp)
              #                    release a5 with temp_7_value_from_ptr_29_0
              #                    occupy a3 with temp_6_value_from_ptr_29_0
              #                    store to temp_6_value_from_ptr_29_0 in mem offset legal
    sw      a3,64(sp)
              #                    release a3 with temp_6_value_from_ptr_29_0
              #                    occupy s1 with temp_11_value_from_ptr_29_0
              #                    store to temp_11_value_from_ptr_29_0 in mem offset legal
    sw      s1,48(sp)
              #                    release s1 with temp_11_value_from_ptr_29_0
    j       .branch_short_circuit_c_false_130
.section ___var
    .data
    .align 4
    .globl e
              #                     19   global i32 e_0 
    .type e,@object
e:
    .word 0
    .align 4
    .globl d
              #                     18   global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl c
              #                     17   global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl b
              #                     16   global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                     15   global i32 a_0 
    .type a,@object
a:
    .word 0
