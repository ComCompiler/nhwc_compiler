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
              #                     21   Define getA_0 "" -> getA_ret_0 
    .globl getA
    .type getA,@function
getA:
              #                    mem layout:|ra_getA:8 at 24|s0_getA:8 at 16|temp_0_value_from_ptr _s20 _i0:4 at 12|temp_1_arithop _s20 _i0:4 at 8|temp_2_value_from_ptr _s20 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_getA_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_getA_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     277  count_0_1 = chi count_0_0:21 
              #                     26   alloc i32 [temp_0_value_from_ptr_20] 
              #                     29   alloc i32 [temp_1_arithop_20] 
              #                     34   alloc i32 [temp_2_value_from_ptr_20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     27   temp_0_value_from_ptr_20_0 = load *count_0:ptr->i32 
              #                    occupy a0 with *count_0
              #                       load label count as ptr to reg
    la      a0, count
              #                    occupy reg a0 with *count_0
              #                    occupy a1 with temp_0_value_from_ptr_20_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     28   mu count_0_1:27 
              #                     30   temp_1_arithop_20_0 = Add i32 temp_0_value_from_ptr_20_0, 1_0 
              #                    occupy a1 with temp_0_value_from_ptr_20_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_20_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     474  untrack temp_0_value_from_ptr_20_0 
              #                    occupy a1 with temp_0_value_from_ptr_20_0
              #                    release a1 with temp_0_value_from_ptr_20_0
              #                     31   store temp_1_arithop_20_0:i32 *count_0:ptr->i32 
              #                    occupy a1 with *count_0
              #                       load label count as ptr to reg
    la      a1, count
              #                    occupy reg a1 with *count_0
              #                    occupy a3 with temp_1_arithop_20_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     475  untrack temp_1_arithop_20_0 
              #                    occupy a3 with temp_1_arithop_20_0
              #                    release a3 with temp_1_arithop_20_0
              #                     32   count_0_2 = chi count_0_1:31 
              #                     35   temp_2_value_from_ptr_20_0 = load *count_0:ptr->i32 
              #                    occupy a3 with *count_0
              #                       load label count as ptr to reg
    la      a3, count
              #                    occupy reg a3 with *count_0
              #                    occupy a4 with temp_2_value_from_ptr_20_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     36   mu count_0_2:35 
              #                     278  mu count_0_2:37 
              #                     37   ret temp_2_value_from_ptr_20_0 
              #                    load from ra_getA_0 in mem
    ld      ra,24(sp)
              #                    load from s0_getA_0 in mem
    ld      s0,16(sp)
              #                    occupy a4 with temp_2_value_from_ptr_20_0
              #                    store to temp_2_value_from_ptr_20_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_2_value_from_ptr_20_0
              #                    occupy a0 with temp_2_value_from_ptr_20_0
              #                    load from temp_2_value_from_ptr_20_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define f1_0 "a_23_0," -> f1_ret_0 
    .globl f1
    .type f1,@function
f1:
              #                    mem layout:|ra_f1:8 at 64|s0_f1:8 at 56|a _s23 _i0:4 at 52|temp_3_value_from_ptr _s25 _i0:4 at 48|temp_4_arithop _s25 _i0:4 at 44|temp_5_ret_of_getA _s25 _i0:4 at 40|temp_6_value_from_ptr _s25 _i0:4 at 36|temp_7_arithop _s25 _i0:4 at 32|temp_8_value_from_ptr _s29 _i0:4 at 28|temp_9_arithop _s29 _i0:4 at 24|temp_10_value_from_ptr _s25 _i0:4 at 20|temp_11_arithop _s25 _i0:4 at 16|temp_12_ret_of_getA _s32 _i0:4 at 12|temp_13_value_from_ptr _s32 _i0:4 at 8|temp_14_arithop _s32 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_f1_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_f1_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     279  sum_0_1 = chi sum_0_0:22 
              #                     280  count_0_3 = chi count_0_0:22 
              #                     40   alloc i32 [temp_3_value_from_ptr_25] 
              #                     43   alloc i32 [temp_4_arithop_25] 
              #                     47   alloc i32 [temp_5_ret_of_getA_25] 
              #                     50   alloc i32 [temp_6_value_from_ptr_25] 
              #                     53   alloc i32 [temp_7_arithop_25] 
              #                     57   alloc i32 [temp_8_value_from_ptr_29] 
              #                     60   alloc i32 [temp_9_arithop_29] 
              #                     64   alloc i32 [temp_10_value_from_ptr_25] 
              #                     67   alloc i32 [temp_11_arithop_25] 
              #                     71   alloc i32 [temp_12_ret_of_getA_32] 
              #                     74   alloc i32 [a_32] 
              #                     75   alloc i32 [temp_13_value_from_ptr_32] 
              #                     78   alloc i32 [temp_14_arithop_32] 
              #                     82   alloc i1 [temp_15__661] 
              #                    regtab     a0:Freed { symidx: a_23_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     41   temp_3_value_from_ptr_25_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_3_value_from_ptr_25_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     42   mu sum_0_1:41 
              #                     44   temp_4_arithop_25_0 = Add i32 temp_3_value_from_ptr_25_0, a_23_0 
              #                    occupy a2 with temp_3_value_from_ptr_25_0
              #                    occupy a0 with a_23_0
              #                    occupy a3 with temp_4_arithop_25_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     480  untrack a_23_0 
              #                    occupy a0 with a_23_0
              #                    release a0 with a_23_0
              #                     477  untrack temp_3_value_from_ptr_25_0 
              #                    occupy a2 with temp_3_value_from_ptr_25_0
              #                    release a2 with temp_3_value_from_ptr_25_0
              #                     45   store temp_4_arithop_25_0:i32 *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a3 with temp_4_arithop_25_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     476  untrack temp_4_arithop_25_0 
              #                    occupy a3 with temp_4_arithop_25_0
              #                    release a3 with temp_4_arithop_25_0
              #                     46   sum_0_2 = chi sum_0_1:45 
              #                     48   temp_5_ret_of_getA_25_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     281  mu count_0_3:48 
              #                     282  count_0_4 = chi count_0_3:48 
              #                     49   (nop) 
              #                     51   temp_6_value_from_ptr_25_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_6_value_from_ptr_25_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     52   mu sum_0_2:51 
              #                     54   temp_7_arithop_25_0 = Add i32 temp_6_value_from_ptr_25_0, temp_5_ret_of_getA_25_0 
              #                    occupy a2 with temp_6_value_from_ptr_25_0
              #                    occupy a0 with temp_5_ret_of_getA_25_0
              #                    occupy a3 with temp_7_arithop_25_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     479  untrack temp_6_value_from_ptr_25_0 
              #                    occupy a2 with temp_6_value_from_ptr_25_0
              #                    release a2 with temp_6_value_from_ptr_25_0
              #                     55   store temp_7_arithop_25_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_7_arithop_25_0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     478  untrack temp_7_arithop_25_0 
              #                    occupy a3 with temp_7_arithop_25_0
              #                    release a3 with temp_7_arithop_25_0
              #                     56   sum_0_3 = chi sum_0_2:55 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     83   (nop) 
              #                          jump label: branch_true_31 
    j       .branch_true_31
              #                    regtab     a0:Freed { symidx: temp_5_ret_of_getA_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     84   label branch_true_31: 
.branch_true_31:
              #                     72   temp_12_ret_of_getA_32_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_5_ret_of_getA_25_0
              #                    store to temp_5_ret_of_getA_25_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_5_ret_of_getA_25_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     283  mu count_0_4:72 
              #                     284  count_0_5 = chi count_0_4:72 
              #                     73   (nop) 
              #                     76   temp_13_value_from_ptr_32_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_13_value_from_ptr_32_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     77   mu sum_0_3:76 
              #                     79   temp_14_arithop_32_0 = Add i32 temp_13_value_from_ptr_32_0, temp_12_ret_of_getA_32_0 
              #                    occupy a2 with temp_13_value_from_ptr_32_0
              #                    occupy a0 with temp_12_ret_of_getA_32_0
              #                    occupy a3 with temp_14_arithop_32_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     485  untrack temp_12_ret_of_getA_32_0 
              #                    occupy a0 with temp_12_ret_of_getA_32_0
              #                    release a0 with temp_12_ret_of_getA_32_0
              #                     484  untrack temp_13_value_from_ptr_32_0 
              #                    occupy a2 with temp_13_value_from_ptr_32_0
              #                    release a2 with temp_13_value_from_ptr_32_0
              #                     80   store temp_14_arithop_32_0:i32 *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a3 with temp_14_arithop_32_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     486  untrack temp_14_arithop_32_0 
              #                    occupy a3 with temp_14_arithop_32_0
              #                    release a3 with temp_14_arithop_32_0
              #                     81   sum_0_4 = chi sum_0_3:80 
              #                          jump label: branch_false_31 
    j       .branch_false_31
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     85   label branch_false_31: 
.branch_false_31:
              #                     483  untrack temp_13_value_from_ptr_32_0 
              #                     482  untrack temp_14_arithop_32_0 
              #                     481  untrack temp_12_ret_of_getA_32_0 
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     58   temp_8_value_from_ptr_29_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_8_value_from_ptr_29_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     59   mu sum_0_5:58 
              #                     61   temp_9_arithop_29_0 = Add i32 temp_8_value_from_ptr_29_0, temp_5_ret_of_getA_25_0 
              #                    occupy a1 with temp_8_value_from_ptr_29_0
              #                    occupy a2 with temp_5_ret_of_getA_25_0
              #                    load from temp_5_ret_of_getA_25_0 in mem


    lw      a2,40(sp)
              #                    occupy a3 with temp_9_arithop_29_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     489  untrack temp_8_value_from_ptr_29_0 
              #                    occupy a1 with temp_8_value_from_ptr_29_0
              #                    release a1 with temp_8_value_from_ptr_29_0
              #                     62   store temp_9_arithop_29_0:i32 *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a3 with temp_9_arithop_29_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     488  untrack temp_9_arithop_29_0 
              #                    occupy a3 with temp_9_arithop_29_0
              #                    release a3 with temp_9_arithop_29_0
              #                     63   sum_0_6 = chi sum_0_5:62 
              #                     65   temp_10_value_from_ptr_25_0 = load *sum_0:ptr->i32 
              #                    occupy a3 with *sum_0
              #                       load label sum as ptr to reg
    la      a3, sum
              #                    occupy reg a3 with *sum_0
              #                    occupy a4 with temp_10_value_from_ptr_25_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     66   mu sum_0_6:65 
              #                     68   temp_11_arithop_25_0 = Add i32 temp_10_value_from_ptr_25_0, temp_5_ret_of_getA_25_0 
              #                    occupy a4 with temp_10_value_from_ptr_25_0
              #                    occupy a2 with temp_5_ret_of_getA_25_0
              #                    occupy a5 with temp_11_arithop_25_0
    ADDW    a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     491  untrack temp_10_value_from_ptr_25_0 
              #                    occupy a4 with temp_10_value_from_ptr_25_0
              #                    release a4 with temp_10_value_from_ptr_25_0
              #                     487  untrack temp_5_ret_of_getA_25_0 
              #                    occupy a2 with temp_5_ret_of_getA_25_0
              #                    release a2 with temp_5_ret_of_getA_25_0
              #                     69   store temp_11_arithop_25_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a5 with temp_11_arithop_25_0
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     490  untrack temp_11_arithop_25_0 
              #                    occupy a5 with temp_11_arithop_25_0
              #                    release a5 with temp_11_arithop_25_0
              #                     70   sum_0_7 = chi sum_0_6:69 
              #                          jump label: exit_5 
    j       .exit_5
              #                    regtab  released_gpr_count:11,released_fpr_count:24
              #                     88   label exit_5: 
.exit_5:
              #                     285  mu sum_0_7:87 
              #                     286  mu count_0_6:87 
              #                     87   ret 
              #                    load from ra_f1_0 in mem
    ld      ra,64(sp)
              #                    load from s0_f1_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define f2_0 "" -> f2_ret_0 
    .globl f2
    .type f2,@function
f2:
              #                    mem layout:|ra_f2:8 at 32|s0_f2:8 at 24|temp_16_value_from_ptr _s38 _i0:4 at 20|temp_17_value_from_ptr _s38 _i0:4 at 16|temp_18_arithop _s38 _i0:4 at 12|temp_19_ret_of_getA _s42 _i0:4 at 8|temp_20_value_from_ptr _s40 _i0:4 at 4|temp_22_arithop _s40 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_f2_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_f2_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     287  sum_0_8 = chi sum_0_0:23 
              #                     288  count_0_7 = chi count_0_0:23 
              #                     89   alloc i32 [temp_16_value_from_ptr_38] 
              #                     92   alloc i32 [temp_17_value_from_ptr_38] 
              #                     95   alloc i32 [temp_18_arithop_38] 
              #                     99   alloc i32 [temp_19_ret_of_getA_42] 
              #                     102  alloc i32 [a_42] 
              #                     103  alloc i32 [temp_20_value_from_ptr_40] 
              #                     106  alloc i32 [temp_21_value_from_ptr_40] 
              #                     109  alloc i32 [temp_22_arithop_40] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     90   temp_16_value_from_ptr_38_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_16_value_from_ptr_38_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     91   mu sum_0_8:90 
              #                     93   temp_17_value_from_ptr_38_0 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_17_value_from_ptr_38_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     94   mu a_0_0:93 
              #                     96   temp_18_arithop_38_0 = Add i32 temp_16_value_from_ptr_38_0, temp_17_value_from_ptr_38_0 
              #                    occupy a1 with temp_16_value_from_ptr_38_0
              #                    occupy a3 with temp_17_value_from_ptr_38_0
              #                    occupy a4 with temp_18_arithop_38_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     493  untrack temp_16_value_from_ptr_38_0 
              #                    occupy a1 with temp_16_value_from_ptr_38_0
              #                    release a1 with temp_16_value_from_ptr_38_0
              #                     97   store temp_18_arithop_38_0:i32 *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a4 with temp_18_arithop_38_0
    sw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                     492  untrack temp_18_arithop_38_0 
              #                    occupy a4 with temp_18_arithop_38_0
              #                    release a4 with temp_18_arithop_38_0
              #                     98   sum_0_9 = chi sum_0_8:97 
              #                     100  temp_19_ret_of_getA_42_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_17_value_from_ptr_38_0
              #                    store to temp_17_value_from_ptr_38_0 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_17_value_from_ptr_38_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     289  mu count_0_7:100 
              #                     290  count_0_8 = chi count_0_7:100 
              #                     101  (nop) 
              #                     104  temp_20_value_from_ptr_40_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_20_value_from_ptr_40_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     105  mu sum_0_9:104 
              #                     107  (nop) 
              #                     108  mu a_0_0:107 
              #                     110  temp_22_arithop_40_0 = Add i32 temp_20_value_from_ptr_40_0, temp_17_value_from_ptr_38_0 
              #                    occupy a2 with temp_20_value_from_ptr_40_0
              #                    occupy a3 with temp_17_value_from_ptr_38_0
              #                    load from temp_17_value_from_ptr_38_0 in mem


    lw      a3,16(sp)
              #                    occupy a4 with temp_22_arithop_40_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     496  untrack temp_20_value_from_ptr_40_0 
              #                    occupy a2 with temp_20_value_from_ptr_40_0
              #                    release a2 with temp_20_value_from_ptr_40_0
              #                     494  untrack temp_17_value_from_ptr_38_0 
              #                    occupy a3 with temp_17_value_from_ptr_38_0
              #                    release a3 with temp_17_value_from_ptr_38_0
              #                     111  store temp_22_arithop_40_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a4 with temp_22_arithop_40_0
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     495  untrack temp_22_arithop_40_0 
              #                    occupy a4 with temp_22_arithop_40_0
              #                    release a4 with temp_22_arithop_40_0
              #                     112  sum_0_10 = chi sum_0_9:111 
              #                          jump label: exit_12 
    j       .exit_12
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_getA_42_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     114  label exit_12: 
.exit_12:
              #                     291  mu sum_0_10:113 
              #                     292  mu count_0_8:113 
              #                     113  ret 
              #                    load from ra_f2_0 in mem
    ld      ra,32(sp)
              #                    load from s0_f2_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define f3_0 "" -> f3_ret_0 
    .globl f3
    .type f3,@function
f3:
              #                    mem layout:|ra_f3:8 at 48|s0_f3:8 at 40|temp_23_ret_of_getA _s46 _i0:4 at 36|temp_24_value_from_ptr _s46 _i0:4 at 32|temp_25_arithop _s46 _i0:4 at 28|temp_26_ret_of_getA _s51 _i0:4 at 24|temp_27_value_from_ptr _s50 _i0:4 at 20|temp_28_arithop _s50 _i0:4 at 16|temp_29_ret_of_getA _s50 _i0:4 at 12|temp_30_value_from_ptr _s49 _i0:4 at 8|temp_31_arithop _s49 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_f3_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_f3_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     293  sum_0_11 = chi sum_0_0:24 
              #                     294  count_0_9 = chi count_0_0:24 
              #                     115  alloc i32 [temp_23_ret_of_getA_46] 
              #                     118  alloc i32 [a_46] 
              #                     119  alloc i32 [temp_24_value_from_ptr_46] 
              #                     122  alloc i32 [temp_25_arithop_46] 
              #                     126  alloc i32 [temp_26_ret_of_getA_51] 
              #                     129  alloc i32 [temp_27_value_from_ptr_50] 
              #                     132  alloc i32 [temp_28_arithop_50] 
              #                     136  alloc i32 [temp_29_ret_of_getA_50] 
              #                     139  alloc i32 [a_50] 
              #                     140  alloc i32 [temp_30_value_from_ptr_49] 
              #                     143  alloc i32 [temp_31_arithop_49] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     116  temp_23_ret_of_getA_46_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     295  mu count_0_9:116 
              #                     296  count_0_10 = chi count_0_9:116 
              #                     117  (nop) 
              #                     120  temp_24_value_from_ptr_46_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_24_value_from_ptr_46_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     121  mu sum_0_11:120 
              #                     123  temp_25_arithop_46_0 = Add i32 temp_24_value_from_ptr_46_0, temp_23_ret_of_getA_46_0 
              #                    occupy a2 with temp_24_value_from_ptr_46_0
              #                    occupy a0 with temp_23_ret_of_getA_46_0
              #                    occupy a3 with temp_25_arithop_46_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     502  untrack temp_23_ret_of_getA_46_0 
              #                    occupy a0 with temp_23_ret_of_getA_46_0
              #                    release a0 with temp_23_ret_of_getA_46_0
              #                     498  untrack temp_24_value_from_ptr_46_0 
              #                    occupy a2 with temp_24_value_from_ptr_46_0
              #                    release a2 with temp_24_value_from_ptr_46_0
              #                     124  store temp_25_arithop_46_0:i32 *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a3 with temp_25_arithop_46_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     501  untrack temp_25_arithop_46_0 
              #                    occupy a3 with temp_25_arithop_46_0
              #                    release a3 with temp_25_arithop_46_0
              #                     125  sum_0_12 = chi sum_0_11:124 
              #                     127  temp_26_ret_of_getA_51_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     297  mu count_0_10:127 
              #                     298  count_0_11 = chi count_0_10:127 
              #                     128  (nop) 
              #                     130  temp_27_value_from_ptr_50_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_27_value_from_ptr_50_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     131  mu sum_0_12:130 
              #                     133  temp_28_arithop_50_0 = Add i32 temp_27_value_from_ptr_50_0, temp_26_ret_of_getA_51_0 
              #                    occupy a2 with temp_27_value_from_ptr_50_0
              #                    occupy a0 with temp_26_ret_of_getA_51_0
              #                    occupy a3 with temp_28_arithop_50_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     503  untrack temp_27_value_from_ptr_50_0 
              #                    occupy a2 with temp_27_value_from_ptr_50_0
              #                    release a2 with temp_27_value_from_ptr_50_0
              #                     134  store temp_28_arithop_50_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a3 with temp_28_arithop_50_0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     504  untrack temp_28_arithop_50_0 
              #                    occupy a3 with temp_28_arithop_50_0
              #                    release a3 with temp_28_arithop_50_0
              #                     135  sum_0_13 = chi sum_0_12:134 
              #                     137  temp_29_ret_of_getA_50_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_26_ret_of_getA_51_0
              #                    store to temp_26_ret_of_getA_51_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_26_ret_of_getA_51_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     299  mu count_0_11:137 
              #                     300  count_0_12 = chi count_0_11:137 
              #                     138  (nop) 
              #                     141  temp_30_value_from_ptr_49_0 = load *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a2 with temp_30_value_from_ptr_49_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     142  mu sum_0_13:141 
              #                     144  temp_31_arithop_49_0 = Add i32 temp_30_value_from_ptr_49_0, temp_26_ret_of_getA_51_0 
              #                    occupy a2 with temp_30_value_from_ptr_49_0
              #                    occupy a3 with temp_26_ret_of_getA_51_0
              #                    load from temp_26_ret_of_getA_51_0 in mem


    lw      a3,24(sp)
              #                    occupy a4 with temp_31_arithop_49_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     500  untrack temp_26_ret_of_getA_51_0 
              #                    occupy a3 with temp_26_ret_of_getA_51_0
              #                    release a3 with temp_26_ret_of_getA_51_0
              #                     497  untrack temp_30_value_from_ptr_49_0 
              #                    occupy a2 with temp_30_value_from_ptr_49_0
              #                    release a2 with temp_30_value_from_ptr_49_0
              #                     145  store temp_31_arithop_49_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a4 with temp_31_arithop_49_0
    sw      a4,0(a2)
              #                    free a4
              #                    free a2
              #                     499  untrack temp_31_arithop_49_0 
              #                    occupy a4 with temp_31_arithop_49_0
              #                    release a4 with temp_31_arithop_49_0
              #                     146  sum_0_14 = chi sum_0_13:145 
              #                          jump label: exit_15 
    j       .exit_15
              #                    regtab     a0:Freed { symidx: temp_29_ret_of_getA_50_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     148  label exit_15: 
.exit_15:
              #                     301  mu sum_0_14:147 
              #                     302  mu count_0_12:147 
              #                     147  ret 
              #                    load from ra_f3_0 in mem
    ld      ra,48(sp)
              #                    load from s0_f3_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     25   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 96|s0_main:8 at 88|temp_32_ret_of_getA _s57 _i0:4 at 84|temp_33_value_from_ptr _s57 _i0:4 at 80|temp_34_value_from_ptr _s57 _i0:4 at 76|temp_35_arithop _s57 _i0:4 at 72|temp_36_ret_of_getA _s57 _i0:4 at 68|a _s57 _i1:4 at 64|a _s57 _i2:4 at 60|a _s57 _i5:4 at 56|a _s57 _i6:4 at 52|temp_37_ret_of_getA _s66 _i0:4 at 48|temp_38_ret_of_getA _s74 _i0:4 at 44|temp_39_ret_of_getA _s76 _i0:4 at 40|temp_40_ret_of_getA _s78 _i0:4 at 36|temp_41_ret_of_getA _s86 _i0:4 at 32|temp_42_value_from_ptr _s57 _i0:4 at 28|i _s99 _i1:4 at 24|temp_43_ret_of_getA _s115 _i0:4 at 20|temp_44_arithop _s103 _i0:4 at 16|temp_45_ret_of_getA _s118 _i0:4 at 12|temp_46_arithop _s118 _i0:4 at 8|temp_47_ret_of_getA _s106 _i0:4 at 4|temp_50_cmp _s101 _i0:1 at 3|temp_52_cmp _s116 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-104
              #                    store to ra_main_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     303  sum_0_15 = chi sum_0_0:25 
              #                     304  a_0_1 = chi a_0_0:25 
              #                     305  count_0_13 = chi count_0_0:25 
              #                     151  alloc i32 [temp_32_ret_of_getA_57] 
              #                     155  alloc i32 [temp_33_value_from_ptr_57] 
              #                     158  alloc i32 [temp_34_value_from_ptr_57] 
              #                     161  alloc i32 [temp_35_arithop_57] 
              #                     165  alloc i32 [temp_36_ret_of_getA_57] 
              #                     168  alloc i32 [a_57] 
              #                     175  alloc i32 [temp_37_ret_of_getA_66] 
              #                     178  alloc i32 [a_66] 
              #                     182  alloc i32 [temp_38_ret_of_getA_74] 
              #                     185  alloc i32 [a_74] 
              #                     186  alloc i32 [temp_39_ret_of_getA_76] 
              #                     189  alloc i32 [a_76] 
              #                     193  alloc i32 [temp_40_ret_of_getA_78] 
              #                     196  alloc i32 [a_78] 
              #                     200  alloc i32 [temp_41_ret_of_getA_86] 
              #                     209  alloc i32 [temp_42_value_from_ptr_57] 
              #                     216  alloc i32 [i_99] 
              #                     220  alloc i32 [temp_43_ret_of_getA_115] 
              #                     223  alloc i32 [temp_44_arithop_103] 
              #                     226  alloc i32 [temp_45_ret_of_getA_118] 
              #                     229  alloc i32 [a_118] 
              #                     233  alloc i32 [temp_46_arithop_118] 
              #                     236  alloc i32 [temp_47_ret_of_getA_106] 
              #                     242  alloc i1 [temp_48__2244] 
              #                     250  alloc i1 [temp_49__2273] 
              #                     255  alloc i1 [temp_50_cmp_101] 
              #                     261  alloc i1 [temp_51__2371] 
              #                     266  alloc i1 [temp_52_cmp_116] 
              #                     272  alloc i1 [temp_53__2400] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     149  store 0_0:i32 *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     150  sum_0_16 = chi sum_0_15:149 
              #                     152  temp_32_ret_of_getA_57_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     306  mu count_0_13:152 
              #                     307  count_0_14 = chi count_0_13:152 
              #                     153  store temp_32_ret_of_getA_57_0:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_32_ret_of_getA_57_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     506  untrack temp_32_ret_of_getA_57_0 
              #                    occupy a0 with temp_32_ret_of_getA_57_0
              #                    release a0 with temp_32_ret_of_getA_57_0
              #                     154  a_0_2 = chi a_0_1:153 
              #                     156  temp_33_value_from_ptr_57_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a2 with temp_33_value_from_ptr_57_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     157  mu sum_0_16:156 
              #                     159  temp_34_value_from_ptr_57_0 = load *a_0:ptr->i32 
              #                    occupy a3 with *a_0
              #                       load label a as ptr to reg
    la      a3, a
              #                    occupy reg a3 with *a_0
              #                    occupy a4 with temp_34_value_from_ptr_57_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     160  mu a_0_2:159 
              #                     162  temp_35_arithop_57_0 = Add i32 temp_33_value_from_ptr_57_0, temp_34_value_from_ptr_57_0 
              #                    occupy a2 with temp_33_value_from_ptr_57_0
              #                    occupy a4 with temp_34_value_from_ptr_57_0
              #                    occupy a5 with temp_35_arithop_57_0
    ADDW    a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                     511  untrack temp_33_value_from_ptr_57_0 
              #                    occupy a2 with temp_33_value_from_ptr_57_0
              #                    release a2 with temp_33_value_from_ptr_57_0
              #                     507  untrack temp_34_value_from_ptr_57_0 
              #                    occupy a4 with temp_34_value_from_ptr_57_0
              #                    release a4 with temp_34_value_from_ptr_57_0
              #                     163  store temp_35_arithop_57_0:i32 *sum_0:ptr->i32 
              #                    occupy a2 with *sum_0
              #                       load label sum as ptr to reg
    la      a2, sum
              #                    occupy reg a2 with *sum_0
              #                    occupy a5 with temp_35_arithop_57_0
    sw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     509  untrack temp_35_arithop_57_0 
              #                    occupy a5 with temp_35_arithop_57_0
              #                    release a5 with temp_35_arithop_57_0
              #                     164  sum_0_17 = chi sum_0_16:163 
              #                     166  temp_36_ret_of_getA_57_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     308  mu count_0_14:166 
              #                     309  count_0_15 = chi count_0_14:166 
              #                     167  (nop) 
              #                     169   Call void f1_0(temp_36_ret_of_getA_57_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    store to temp_36_ret_of_getA_57_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_36_ret_of_getA_57_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ret_of_getA_57_0_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    f1
              #                     310  mu sum_0_17:169 
              #                     311  mu count_0_15:169 
              #                     312  sum_0_18 = chi sum_0_17:169 
              #                     313  count_0_16 = chi count_0_15:169 
              #                     170   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     314  mu sum_0_18:170 
              #                     315  mu count_0_16:170 
              #                     316  sum_0_19 = chi sum_0_18:170 
              #                     317  count_0_17 = chi count_0_16:170 
              #                     171   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     318  mu sum_0_19:171 
              #                     319  mu count_0_17:171 
              #                     320  sum_0_20 = chi sum_0_19:171 
              #                     321  count_0_18 = chi count_0_17:171 
              #                     172   Call void f1_0(temp_36_ret_of_getA_57_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ret_of_getA_57_0_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    f1
              #                     322  mu sum_0_20:172 
              #                     323  mu count_0_18:172 
              #                     324  sum_0_21 = chi sum_0_20:172 
              #                     325  count_0_19 = chi count_0_18:172 
              #                     173   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     326  mu sum_0_21:173 
              #                     327  mu count_0_19:173 
              #                     328  sum_0_22 = chi sum_0_21:173 
              #                     329  count_0_20 = chi count_0_19:173 
              #                     174   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     330  mu sum_0_22:174 
              #                     331  mu count_0_20:174 
              #                     332  sum_0_23 = chi sum_0_22:174 
              #                     333  count_0_21 = chi count_0_20:174 
              #                     176  temp_37_ret_of_getA_66_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     334  mu count_0_21:176 
              #                     335  count_0_22 = chi count_0_21:176 
              #                     177  (nop) 
              #                     179   Call void f1_0(temp_36_ret_of_getA_57_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_37_ret_of_getA_66_0
              #                    store to temp_37_ret_of_getA_66_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_37_ret_of_getA_66_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ret_of_getA_57_0_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    f1
              #                     336  mu sum_0_23:179 
              #                     337  mu count_0_22:179 
              #                     338  sum_0_24 = chi sum_0_23:179 
              #                     339  count_0_23 = chi count_0_22:179 
              #                     180   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     340  mu sum_0_24:180 
              #                     341  mu count_0_23:180 
              #                     342  sum_0_25 = chi sum_0_24:180 
              #                     343  count_0_24 = chi count_0_23:180 
              #                     181   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     344  mu sum_0_25:181 
              #                     345  mu count_0_24:181 
              #                     346  sum_0_26 = chi sum_0_25:181 
              #                     347  count_0_25 = chi count_0_24:181 
              #                     183  temp_38_ret_of_getA_74_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     348  mu count_0_25:183 
              #                     349  count_0_26 = chi count_0_25:183 
              #                     184  (nop) 
              #                     187  temp_39_ret_of_getA_76_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_38_ret_of_getA_74_0
              #                    store to temp_38_ret_of_getA_74_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_38_ret_of_getA_74_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     350  mu count_0_26:187 
              #                     351  count_0_27 = chi count_0_26:187 
              #                     188  (nop) 
              #                     190   Call void f1_0(temp_39_ret_of_getA_76_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_39_ret_of_getA_76_0
              #                    store to temp_39_ret_of_getA_76_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_39_ret_of_getA_76_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39_ret_of_getA_76_0_0
              #                    load from temp_39_ret_of_getA_76_0 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    f1
              #                     508  untrack temp_39_ret_of_getA_76_0 
              #                     352  mu sum_0_26:190 
              #                     353  mu count_0_27:190 
              #                     354  sum_0_27 = chi sum_0_26:190 
              #                     355  count_0_28 = chi count_0_27:190 
              #                     191   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     356  mu sum_0_27:191 
              #                     357  mu count_0_28:191 
              #                     358  sum_0_28 = chi sum_0_27:191 
              #                     359  count_0_29 = chi count_0_28:191 
              #                     192   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     360  mu sum_0_28:192 
              #                     361  mu count_0_29:192 
              #                     362  sum_0_29 = chi sum_0_28:192 
              #                     363  count_0_30 = chi count_0_29:192 
              #                     194  temp_40_ret_of_getA_78_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     364  mu count_0_30:194 
              #                     365  count_0_31 = chi count_0_30:194 
              #                     195  (nop) 
              #                     197   Call void f1_0(temp_40_ret_of_getA_78_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_40_ret_of_getA_78_0
              #                    store to temp_40_ret_of_getA_78_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_40_ret_of_getA_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_40_ret_of_getA_78_0_0
              #                    load from temp_40_ret_of_getA_78_0 in mem


    lw      a0,36(sp)
              #                    arg load ended


    call    f1
              #                     510  untrack temp_40_ret_of_getA_78_0 
              #                     366  mu sum_0_29:197 
              #                     367  mu count_0_31:197 
              #                     368  sum_0_30 = chi sum_0_29:197 
              #                     369  count_0_32 = chi count_0_31:197 
              #                     198   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     370  mu sum_0_30:198 
              #                     371  mu count_0_32:198 
              #                     372  sum_0_31 = chi sum_0_30:198 
              #                     373  count_0_33 = chi count_0_32:198 
              #                     199   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     374  mu sum_0_31:199 
              #                     375  mu count_0_33:199 
              #                     376  sum_0_32 = chi sum_0_31:199 
              #                     377  count_0_34 = chi count_0_33:199 
              #                     201  temp_41_ret_of_getA_86_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     378  mu count_0_34:201 
              #                     379  count_0_35 = chi count_0_34:201 
              #                     202  (nop) 
              #                     203   Call void f1_0(temp_41_ret_of_getA_86_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_41_ret_of_getA_86_0
              #                    store to temp_41_ret_of_getA_86_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_41_ret_of_getA_86_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_41_ret_of_getA_86_0_0
              #                    load from temp_41_ret_of_getA_86_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    f1
              #                     505  untrack temp_41_ret_of_getA_86_0 
              #                     380  mu sum_0_32:203 
              #                     381  mu count_0_35:203 
              #                     382  sum_0_33 = chi sum_0_32:203 
              #                     383  count_0_36 = chi count_0_35:203 
              #                     204   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     384  mu sum_0_33:204 
              #                     385  mu count_0_36:204 
              #                     386  sum_0_34 = chi sum_0_33:204 
              #                     387  count_0_37 = chi count_0_36:204 
              #                     205   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     388  mu sum_0_34:205 
              #                     389  mu count_0_37:205 
              #                     390  sum_0_35 = chi sum_0_34:205 
              #                     391  count_0_38 = chi count_0_37:205 
              #                     206   Call void f1_0(temp_36_ret_of_getA_57_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_36_ret_of_getA_57_0_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    f1
              #                     392  mu sum_0_35:206 
              #                     393  mu count_0_38:206 
              #                     394  sum_0_36 = chi sum_0_35:206 
              #                     395  count_0_39 = chi count_0_38:206 
              #                     207   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     396  mu sum_0_36:207 
              #                     397  mu count_0_39:207 
              #                     398  sum_0_37 = chi sum_0_36:207 
              #                     399  count_0_40 = chi count_0_39:207 
              #                     208   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     400  mu sum_0_37:208 
              #                     401  mu count_0_40:208 
              #                     402  sum_0_38 = chi sum_0_37:208 
              #                     403  count_0_41 = chi count_0_40:208 
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     244  label while.head_95: 
.while.head_95:
              #                     243  (nop) 
              #                          jump label: while.body_95 
    j       .while.body_95
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     245  label while.body_95: 
.while.body_95:
              #                     251  (nop) 
              #                          jump label: while.body_98 
    j       .while.body_98
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     252  label while.body_98: 
.while.body_98:
              #                     215  (nop) 
              #                     466  a_57_1 = i32 temp_36_ret_of_getA_57_0 
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
              #                    occupy a1 with a_57_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     467  i_99_1 = i32 0_0 
              #                    occupy a2 with i_99_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_102 
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     257  label while.head_102: 
.while.head_102:
              #                     256  temp_50_cmp_101_0 = icmp i32 Slt i_99_1, 3_0 
              #                    occupy a2 with i_99_1
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with temp_50_cmp_101_0
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     260  br i1 temp_50_cmp_101_0, label UP_33_0, label while.exit_102 
              #                    occupy a4 with temp_50_cmp_101_0
              #                    free a4
              #                    occupy a4 with temp_50_cmp_101_0
    bnez    a4, .UP_33_0
              #                    free a4
    j       .while.exit_102
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     465  label UP_33_0: 
.UP_33_0:
              #                     468  a_57_2 = i32 a_57_1 
              #                    occupy a1 with a_57_1
              #                    occupy a3 with a_57_2
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: while.body_102 
    j       .while.body_102
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |     a3:Freed { symidx: a_57_2, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     258  label while.body_102: 
.while.body_102:
              #                     262  (nop) 
              #                          jump label: while.body_105 
    j       .while.body_105
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |     a3:Freed { symidx: a_57_2, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     263  label while.body_105: 
.while.body_105:
              #                     273  (nop) 
              #                          jump label: branch_true_108 
    j       .branch_true_108
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |     a3:Freed { symidx: a_57_2, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     274  label branch_true_108: 
.branch_true_108:
              #                     516  untrack temp_47_ret_of_getA_106_0 
              #                     239   Call void f1_0(a_57_2) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    store to temp_36_ret_of_getA_57_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_36_ret_of_getA_57_0
              #                    occupy a1 with a_57_1
              #                    store to a_57_1 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with a_57_1
              #                    occupy a2 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with i_99_1
              #                    occupy a3 with a_57_2
              #                    store to a_57_2 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with a_57_2
              #                    occupy a4 with temp_50_cmp_101_0
              #                    store to temp_50_cmp_101_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_50_cmp_101_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_2_0
              #                    load from a_57_2 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    f1
              #                     404  mu sum_0_39:239 
              #                     405  mu count_0_43:239 
              #                     406  sum_0_40 = chi sum_0_39:239 
              #                     407  count_0_44 = chi count_0_43:239 
              #                     240   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     408  mu sum_0_40:240 
              #                     409  mu count_0_44:240 
              #                     410  sum_0_41 = chi sum_0_40:240 
              #                     411  count_0_45 = chi count_0_44:240 
              #                     241   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     412  mu sum_0_41:241 
              #                     413  mu count_0_45:241 
              #                     414  sum_0_42 = chi sum_0_41:241 
              #                     415  count_0_46 = chi count_0_45:241 
              #                          jump label: while.exit_105 
    j       .while.exit_105
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     264  label while.exit_105: 
.while.exit_105:
              #                     267  temp_52_cmp_116_0 = icmp i32 Eq i_99_1, 1_0 
              #                    occupy a0 with i_99_1
              #                    load from i_99_1 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_52_cmp_116_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     270  br i1 temp_52_cmp_116_0, label branch_true_117, label branch_false_117 
              #                    occupy a2 with temp_52_cmp_116_0
              #                    free a2
              #                    occupy a2 with temp_52_cmp_116_0
    bnez    a2, .branch_true_117
              #                    free a2
    j       .branch_false_117
              #                    regtab     a0:Freed { symidx: i_99_1, tracked: true } |     a2:Freed { symidx: temp_52_cmp_116_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     268  label branch_true_117: 
.branch_true_117:
              #                     227  temp_45_ret_of_getA_118_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with i_99_1
              #                    occupy a2 with temp_52_cmp_116_0
              #                    store to temp_52_cmp_116_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_52_cmp_116_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     416  mu count_0_48:227 
              #                     417  count_0_49 = chi count_0_48:227 
              #                     228  (nop) 
              #                     230   Call void f1_0(temp_45_ret_of_getA_118_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_45_ret_of_getA_118_0
              #                    store to temp_45_ret_of_getA_118_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_45_ret_of_getA_118_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_45_ret_of_getA_118_0_0
              #                    load from temp_45_ret_of_getA_118_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    f1
              #                     418  mu sum_0_43:230 
              #                     419  mu count_0_49:230 
              #                     420  sum_0_44 = chi sum_0_43:230 
              #                     421  count_0_50 = chi count_0_49:230 
              #                     231   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     422  mu sum_0_44:231 
              #                     423  mu count_0_50:231 
              #                     424  sum_0_45 = chi sum_0_44:231 
              #                     425  count_0_51 = chi count_0_50:231 
              #                     232   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     426  mu sum_0_45:232 
              #                     427  mu count_0_51:232 
              #                     428  sum_0_46 = chi sum_0_45:232 
              #                     429  count_0_52 = chi count_0_51:232 
              #                     234  temp_46_arithop_118_0 = Add i32 i_99_1, 1_0 
              #                    occupy a0 with i_99_1
              #                    load from i_99_1 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_46_arithop_118_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     235  (nop) 
              #                     469  i_99_1 = i32 temp_46_arithop_118_0 
              #                    occupy a2 with temp_46_arithop_118_0
              #                    occupy a0 with i_99_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     470  a_57_1 = i32 a_57_2 
              #                    occupy a3 with a_57_2
              #                    load from a_57_2 in mem


    lw      a3,60(sp)
              #                    occupy a4 with a_57_1
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                          jump label: while.head_102 
              #                    occupy a3 with a_57_2
              #                    store to a_57_2 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with a_57_2
              #                    occupy a4 with a_57_1
              #                    store to a_57_1 in mem offset legal
    sw      a4,64(sp)
              #                    release a4 with a_57_1
              #                    occupy a1 with a_57_1
              #                    load from a_57_1 in mem


    lw      a1,64(sp)
              #                    occupy a2 with temp_46_arithop_118_0
              #                    store to temp_46_arithop_118_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_46_arithop_118_0
              #                    occupy a0 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with i_99_1
              #                    occupy a2 with i_99_1
              #                    load from i_99_1 in mem


    lw      a2,24(sp)
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: i_99_1, tracked: true } |     a2:Freed { symidx: temp_52_cmp_116_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     269  label branch_false_117: 
.branch_false_117:
              #                     217   Call void f1_0(a_57_2) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with i_99_1
              #                    occupy a2 with temp_52_cmp_116_0
              #                    store to temp_52_cmp_116_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_52_cmp_116_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_57_2_0
              #                    load from a_57_2 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    f1
              #                     430  mu sum_0_43:217 
              #                     431  mu count_0_48:217 
              #                     432  sum_0_47 = chi sum_0_43:217 
              #                     433  count_0_53 = chi count_0_48:217 
              #                     218   Call void f2_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f2
              #                     434  mu sum_0_47:218 
              #                     435  mu count_0_53:218 
              #                     436  sum_0_48 = chi sum_0_47:218 
              #                     437  count_0_54 = chi count_0_53:218 
              #                     219   Call void f3_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    f3
              #                     438  mu sum_0_48:219 
              #                     439  mu count_0_54:219 
              #                     440  sum_0_49 = chi sum_0_48:219 
              #                     441  count_0_55 = chi count_0_54:219 
              #                          jump label: gather_29 
    j       .gather_29
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     271  label gather_29: 
.gather_29:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     221  temp_43_ret_of_getA_115_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     442  mu count_0_55:221 
              #                     443  count_0_56 = chi count_0_55:221 
              #                     222  (nop) 
              #                     224  temp_44_arithop_103_0 = Add i32 i_99_1, 1_0 
              #                    occupy a1 with i_99_1
              #                    load from i_99_1 in mem


    lw      a1,24(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_44_arithop_103_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     225  (nop) 
              #                     471  i_99_1 = i32 temp_44_arithop_103_0 
              #                    occupy a3 with temp_44_arithop_103_0
              #                    occupy a1 with i_99_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                     472  a_57_1 = i32 temp_43_ret_of_getA_115_0 
              #                    occupy a0 with temp_43_ret_of_getA_115_0
              #                    occupy a4 with a_57_1
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_102 
              #                    occupy a3 with temp_44_arithop_103_0
              #                    store to temp_44_arithop_103_0 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_44_arithop_103_0
              #                    occupy a4 with a_57_1
              #                    store to a_57_1 in mem offset legal
    sw      a4,64(sp)
              #                    release a4 with a_57_1
              #                    occupy a1 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with i_99_1
              #                    occupy a1 with a_57_1
              #                    load from a_57_1 in mem


    lw      a1,64(sp)
              #                    occupy a2 with i_99_1
              #                    load from i_99_1 in mem


    lw      a2,24(sp)
              #                    occupy a0 with temp_43_ret_of_getA_115_0
              #                    store to temp_43_ret_of_getA_115_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_43_ret_of_getA_115_0
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     275  label branch_false_108: 
.branch_false_108:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     237  temp_47_ret_of_getA_106_0 =  Call i32 getA_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    store to temp_36_ret_of_getA_57_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_36_ret_of_getA_57_0
              #                    occupy a1 with a_57_1
              #                    store to a_57_1 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with a_57_1
              #                    occupy a2 with i_99_1
              #                    store to i_99_1 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with i_99_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getA
              #                     444  mu count_0_43:237 
              #                     445  count_0_47 = chi count_0_43:237 
              #                     238  (nop) 
              #                     473  a_57_2 = i32 temp_47_ret_of_getA_106_0 
              #                    occupy a0 with temp_47_ret_of_getA_106_0
              #                    occupy a1 with a_57_2
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.body_102 
              #                    occupy a1 with a_57_2
              #                    store to a_57_2 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with a_57_2
              #                    occupy a3 with a_57_2
              #                    load from a_57_2 in mem


    lw      a3,60(sp)
              #                    occupy a4 with temp_50_cmp_101_0
              #                    load from temp_50_cmp_101_0 in mem


    lb      a4,3(sp)
              #                    occupy a1 with a_57_1
              #                    load from a_57_1 in mem


    lw      a1,64(sp)
              #                    occupy a2 with i_99_1
              #                    load from i_99_1 in mem


    lw      a2,24(sp)
              #                    occupy a0 with temp_47_ret_of_getA_106_0
              #                    store to temp_47_ret_of_getA_106_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_47_ret_of_getA_106_0
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    load from temp_36_ret_of_getA_57_0 in mem


    lw      a0,68(sp)
    j       .while.body_102
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a1:Freed { symidx: a_57_1, tracked: true } |     a2:Freed { symidx: i_99_1, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     259  label while.exit_102: 
.while.exit_102:
              #                     514  untrack a_57_1 
              #                    occupy a1 with a_57_1
              #                    release a1 with a_57_1
              #                     513  untrack i_99_1 
              #                    occupy a2 with i_99_1
              #                    release a2 with i_99_1
              #                          jump label: while.exit_98 
    j       .while.exit_98
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     253  label while.exit_98: 
.while.exit_98:
              #                          jump label: while.exit_95 
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: temp_36_ret_of_getA_57_0, tracked: true } |     a4:Freed { symidx: temp_50_cmp_101_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     246  label while.exit_95: 
.while.exit_95:
              #                     512  untrack temp_36_ret_of_getA_57_0 
              #                    occupy a0 with temp_36_ret_of_getA_57_0
              #                    release a0 with temp_36_ret_of_getA_57_0
              #                     210  temp_42_value_from_ptr_57_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_42_value_from_ptr_57_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     211  mu sum_0_51:210 
              #                     212   Call void putint_0(temp_42_value_from_ptr_57_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_42_value_from_ptr_57_0
              #                    store to temp_42_value_from_ptr_57_0 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_42_value_from_ptr_57_0
              #                    occupy a4 with temp_50_cmp_101_0
              #                    store to temp_50_cmp_101_0 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_50_cmp_101_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_42_value_from_ptr_57_0_0
              #                    load from temp_42_value_from_ptr_57_0 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                     515  untrack temp_42_value_from_ptr_57_0 
              #                     446  mu sum_0_51:214 
              #                     447  mu a_0_2:214 
              #                     448  mu count_0_58:214 
              #                     214  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,96(sp)
              #                    load from s0_main_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl count
              #                     19   global i32 count_0 
    .type count,@object
count:
    .word 0
    .align 4
    .globl sum
              #                     16   global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl a
              #                     15   global i32 a_0 
    .type a,@object
a:
    .word 0
