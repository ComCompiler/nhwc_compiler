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
              #                     22   Define inc_a_0 "" -> inc_a_ret_0 
    .globl inc_a
    .type inc_a,@function
inc_a:
              #                    mem layout:|ra_inc_a:8 at 24|s0_inc_a:8 at 16|temp_0_value_from_ptr _s18 _i0:4 at 12|temp_1_arithop _s18 _i0:4 at 8|temp_2_value_from_ptr _s18 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_inc_a_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_inc_a_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     142  a_0_1 = chi a_0_0:22 
              #                     24   alloc i32 [temp_0_value_from_ptr_18] 
              #                     28   alloc i32 [b_18] 
              #                     29   alloc i32 [temp_1_arithop_18] 
              #                     35   alloc i32 [temp_2_value_from_ptr_18] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     25   temp_0_value_from_ptr_18_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_0_value_from_ptr_18_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     26   mu a_0_1:25 
              #                     27   (nop) 
              #                     30   temp_1_arithop_18_0 = Add i32 temp_0_value_from_ptr_18_0, 1_0 
              #                    occupy a1 with temp_0_value_from_ptr_18_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_18_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     174  untrack temp_0_value_from_ptr_18_0 
              #                    occupy a1 with temp_0_value_from_ptr_18_0
              #                    release a1 with temp_0_value_from_ptr_18_0
              #                     31   (nop) 
              #                     32   store temp_1_arithop_18_0:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a3 with temp_1_arithop_18_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     175  untrack temp_1_arithop_18_0 
              #                    occupy a3 with temp_1_arithop_18_0
              #                    release a3 with temp_1_arithop_18_0
              #                     33   a_0_2 = chi a_0_1:32 
              #                     36   temp_2_value_from_ptr_18_0 = load *a_0:ptr->i32 
              #                    occupy a3 with *a_0
              #                       load label a as ptr to reg
    la      a3, a
              #                    occupy reg a3 with *a_0
              #                    occupy a4 with temp_2_value_from_ptr_18_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     37   mu a_0_2:36 
              #                     143  mu a_0_2:38 
              #                     38   ret temp_2_value_from_ptr_18_0 
              #                    load from ra_inc_a_0 in mem
    ld      ra,24(sp)
              #                    load from s0_inc_a_0 in mem
    ld      s0,16(sp)
              #                    occupy a4 with temp_2_value_from_ptr_18_0
              #                    store to temp_2_value_from_ptr_18_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_2_value_from_ptr_18_0
              #                    occupy a0 with temp_2_value_from_ptr_18_0
              #                    load from temp_2_value_from_ptr_18_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 104|s0_main:8 at 96|k _s24 _i1:4 at 92|temp_3_value_from_ptr _s24 _i0:4 at 88|temp_4_value_from_ptr _s24 _i0:4 at 84|temp_6_ret_of_inc_a _s42 _i0:4 at 80|temp_7_arithop _s28 _i0:4 at 76|temp_8_value_from_ptr _s38 _i0:4 at 72|temp_9_value_from_ptr _s38 _i0:4 at 68|temp_10_arithop _s38 _i0:4 at 64|temp_11_value_from_ptr _s31 _i0:4 at 60|temp_12_value_from_ptr _s31 _i0:4 at 56|temp_13_cmp _s26 _i0:1 at 55|none:3 at 52|temp_14_ret_of_inc_a _s29 _i0:4 at 48|temp_15_ret_of_inc_a _s29 _i0:4 at 44|temp_16_ret_of_inc_a _s29 _i0:4 at 40|temp_17_i32_to_bool _s29 _i0:1 at 39|temp_18_i32_to_bool _s29 _i0:1 at 38|temp_19_i32_to_bool _s29 _i0:1 at 37|none:1 at 36|temp_20_ret_of_inc_a _s36 _i0:4 at 32|temp_21_cmp _s36 _i0:1 at 31|none:3 at 28|temp_22_ret_of_inc_a _s36 _i0:4 at 24|temp_23_ret_of_inc_a _s36 _i0:4 at 20|temp_24_ret_of_inc_a _s36 _i0:4 at 16|temp_25_arithop _s36 _i0:4 at 12|temp_26_arithop _s36 _i0:4 at 8|temp_27_i32_to_bool _s36 _i0:1 at 7|temp_28_i32_to_bool _s36 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-112
              #                    store to ra_main_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     144  a_0_3 = chi a_0_0:23 
              #                     145  b_0_1 = chi b_0_0:23 
              #                     42   alloc i32 [k_24] 
              #                     43   alloc i32 [temp_3_value_from_ptr_24] 
              #                     48   alloc i32 [temp_4_value_from_ptr_24] 
              #                     54   alloc i32 [temp_5_value_from_ptr_24] 
              #                     58   alloc i32 [temp_6_ret_of_inc_a_42] 
              #                     60   alloc i32 [temp_7_arithop_28] 
              #                     63   alloc i32 [temp_8_value_from_ptr_38] 
              #                     68   alloc i32 [temp_9_value_from_ptr_38] 
              #                     71   alloc i32 [temp_10_arithop_38] 
              #                     75   alloc i32 [temp_11_value_from_ptr_31] 
              #                     80   alloc i32 [temp_12_value_from_ptr_31] 
              #                     85   alloc i1 [temp_13_cmp_26] 
              #                     93   alloc i32 [temp_14_ret_of_inc_a_29] 
              #                     95   alloc i32 [temp_15_ret_of_inc_a_29] 
              #                     97   alloc i32 [temp_16_ret_of_inc_a_29] 
              #                     99   alloc i1 [temp_17_i32_to_bool_29] 
              #                     101  alloc i1 [temp_18_i32_to_bool_29] 
              #                     108  alloc i1 [temp_19_i32_to_bool_29] 
              #                     114  alloc i32 [temp_20_ret_of_inc_a_36] 
              #                     116  alloc i1 [temp_21_cmp_36] 
              #                     118  alloc i32 [temp_22_ret_of_inc_a_36] 
              #                     120  alloc i32 [temp_23_ret_of_inc_a_36] 
              #                     122  alloc i32 [temp_24_ret_of_inc_a_36] 
              #                     124  alloc i32 [temp_25_arithop_36] 
              #                     126  alloc i32 [temp_26_arithop_36] 
              #                     128  alloc i1 [temp_27_i32_to_bool_36] 
              #                     130  alloc i1 [temp_28_i32_to_bool_36] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     41   (nop) 
              #                     172  k_24_1 = i32 5_0 
              #                    occupy a0 with k_24_1
    li      a0, 5
              #                    free a0
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: k_24_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     87   label while.head_27: 
.while.head_27:
              #                     86   temp_13_cmp_26_0 = icmp i32 Sge k_24_1, 0_0 
              #                    occupy a0 with k_24_1
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_13_cmp_26_0
    slt     a2,a0,a1
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     90   br i1 temp_13_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a2 with temp_13_cmp_26_0
              #                    free a2
              #                    occupy a2 with temp_13_cmp_26_0
    bnez    a2, .while.body_27
              #                    free a2
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: k_24_1, tracked: true } |     a2:Freed { symidx: temp_13_cmp_26_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     88   label while.body_27: 
.while.body_27:
              #                     94   temp_14_ret_of_inc_a_29_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with k_24_1
              #                    store to k_24_1 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with k_24_1
              #                    occupy a2 with temp_13_cmp_26_0
              #                    store to temp_13_cmp_26_0 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_13_cmp_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     146  mu a_0_4:94 
              #                     147  a_0_5 = chi a_0_4:94 
              #                     109  temp_19_i32_to_bool_29_0 = icmp i32 Ne temp_14_ret_of_inc_a_29_0, 0_0 
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19_i32_to_bool_29_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     113  br i1 temp_19_i32_to_bool_29_0, label branch_short_circuit_p_true_170, label branch_short_circuit_c_false_174 
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    free a2
              #                    occupy a2 with temp_19_i32_to_bool_29_0
    bnez    a2, .branch_short_circuit_p_true_170
              #                    free a2
    j       .branch_short_circuit_c_false_174
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_inc_a_29_0, tracked: true } |     a2:Freed { symidx: temp_19_i32_to_bool_29_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     110  label branch_short_circuit_p_true_170: 
.branch_short_circuit_p_true_170:
              #                     96   temp_15_ret_of_inc_a_29_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    store to temp_14_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_14_ret_of_inc_a_29_0
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    store to temp_19_i32_to_bool_29_0 in mem offset legal
    sb      a2,37(sp)
              #                    release a2 with temp_19_i32_to_bool_29_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     158  mu a_0_5:96 
              #                     159  a_0_15 = chi a_0_5:96 
              #                     100  temp_17_i32_to_bool_29_0 = icmp i32 Ne temp_15_ret_of_inc_a_29_0, 0_0 
              #                    occupy a0 with temp_15_ret_of_inc_a_29_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_17_i32_to_bool_29_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     112  br i1 temp_17_i32_to_bool_29_0, label branch_short_circuit_p_true_174, label branch_short_circuit_c_false_174 
              #                    occupy a2 with temp_17_i32_to_bool_29_0
              #                    free a2
              #                    occupy a2 with temp_17_i32_to_bool_29_0
    bnez    a2, .branch_short_circuit_p_true_174
              #                    free a2
              #                    occupy a2 with temp_17_i32_to_bool_29_0
              #                    store to temp_17_i32_to_bool_29_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_17_i32_to_bool_29_0
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    load from temp_19_i32_to_bool_29_0 in mem


    lb      a2,37(sp)
              #                    occupy a0 with temp_15_ret_of_inc_a_29_0
              #                    store to temp_15_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_15_ret_of_inc_a_29_0
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    load from temp_14_ret_of_inc_a_29_0 in mem


    lw      a0,48(sp)
    j       .branch_short_circuit_c_false_174
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_inc_a_29_0, tracked: true } |     a2:Freed { symidx: temp_17_i32_to_bool_29_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     105  label branch_short_circuit_p_true_174: 
.branch_short_circuit_p_true_174:
              #                     98   temp_16_ret_of_inc_a_29_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_15_ret_of_inc_a_29_0
              #                    store to temp_15_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_15_ret_of_inc_a_29_0
              #                    occupy a2 with temp_17_i32_to_bool_29_0
              #                    store to temp_17_i32_to_bool_29_0 in mem offset legal
    sb      a2,39(sp)
              #                    release a2 with temp_17_i32_to_bool_29_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     160  mu a_0_15:98 
              #                     161  a_0_16 = chi a_0_15:98 
              #                     102  temp_18_i32_to_bool_29_0 = icmp i32 Ne temp_16_ret_of_inc_a_29_0, 0_0 
              #                    occupy a0 with temp_16_ret_of_inc_a_29_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_18_i32_to_bool_29_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     107  br i1 temp_18_i32_to_bool_29_0, label branch_short_circuit_c_true_174, label branch_short_circuit_c_false_174 
              #                    occupy a2 with temp_18_i32_to_bool_29_0
              #                    free a2
              #                    occupy a2 with temp_18_i32_to_bool_29_0
    bnez    a2, .branch_short_circuit_c_true_174
              #                    free a2
              #                    occupy a2 with temp_18_i32_to_bool_29_0
              #                    store to temp_18_i32_to_bool_29_0 in mem offset legal
    sb      a2,38(sp)
              #                    release a2 with temp_18_i32_to_bool_29_0
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    load from temp_19_i32_to_bool_29_0 in mem


    lb      a2,37(sp)
              #                    occupy a0 with temp_16_ret_of_inc_a_29_0
              #                    store to temp_16_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_16_ret_of_inc_a_29_0
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    load from temp_14_ret_of_inc_a_29_0 in mem


    lw      a0,48(sp)
    j       .branch_short_circuit_c_false_174
              #                    regtab     a0:Freed { symidx: temp_16_ret_of_inc_a_29_0, tracked: true } |     a2:Freed { symidx: temp_18_i32_to_bool_29_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     103  label branch_short_circuit_c_true_174: 
.branch_short_circuit_c_true_174:
              #                     76   temp_11_value_from_ptr_31_0 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a3 with temp_11_value_from_ptr_31_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     77   mu a_0_16:76 
              #                     78    Call void putint_0(temp_11_value_from_ptr_31_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_16_ret_of_inc_a_29_0
              #                    store to temp_16_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_16_ret_of_inc_a_29_0
              #                    occupy a2 with temp_18_i32_to_bool_29_0
              #                    store to temp_18_i32_to_bool_29_0 in mem offset legal
    sb      a2,38(sp)
              #                    release a2 with temp_18_i32_to_bool_29_0
              #                    occupy a3 with temp_11_value_from_ptr_31_0
              #                    store to temp_11_value_from_ptr_31_0 in mem offset legal
    sw      a3,60(sp)
              #                    release a3 with temp_11_value_from_ptr_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_11_value_from_ptr_31_0_0
              #                    load from temp_11_value_from_ptr_31_0 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    putint
              #                     79    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     81   temp_12_value_from_ptr_31_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_12_value_from_ptr_31_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     82   mu b_0_2:81 
              #                     83    Call void putint_0(temp_12_value_from_ptr_31_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_12_value_from_ptr_31_0
              #                    store to temp_12_value_from_ptr_31_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with temp_12_value_from_ptr_31_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_12_value_from_ptr_31_0_0
              #                    load from temp_12_value_from_ptr_31_0 in mem


    lw      a0,56(sp)
              #                    arg load ended


    call    putint
              #                     84    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: branch_short_circuit_c_false_174 
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    load from temp_19_i32_to_bool_29_0 in mem


    lb      a2,37(sp)
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    load from temp_14_ret_of_inc_a_29_0 in mem


    lw      a0,48(sp)
    j       .branch_short_circuit_c_false_174
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_inc_a_29_0, tracked: true } |     a2:Freed { symidx: temp_19_i32_to_bool_29_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     104  label branch_short_circuit_c_false_174: 
.branch_short_circuit_c_false_174:
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_14_ret_of_inc_a_29_0, tracked: true } |     a2:Freed { symidx: temp_19_i32_to_bool_29_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     115  temp_20_ret_of_inc_a_36_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_14_ret_of_inc_a_29_0
              #                    store to temp_14_ret_of_inc_a_29_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_14_ret_of_inc_a_29_0
              #                    occupy a2 with temp_19_i32_to_bool_29_0
              #                    store to temp_19_i32_to_bool_29_0 in mem offset legal
    sb      a2,37(sp)
              #                    release a2 with temp_19_i32_to_bool_29_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     148  mu a_0_6:115 
              #                     149  a_0_7 = chi a_0_6:115 
              #                     117  temp_21_cmp_36_0 = icmp i32 Slt temp_20_ret_of_inc_a_36_0, 14_0 
              #                    occupy a0 with temp_20_ret_of_inc_a_36_0
              #                    occupy a1 with 14_0
    li      a1, 14
              #                    occupy a2 with temp_21_cmp_36_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     140  br i1 temp_21_cmp_36_0, label branch_short_circuit_c_true_194, label branch_short_circuit_p_false_188 
              #                    occupy a2 with temp_21_cmp_36_0
              #                    free a2
              #                    occupy a2 with temp_21_cmp_36_0
    bnez    a2, .branch_short_circuit_c_true_194
              #                    free a2
    j       .branch_short_circuit_p_false_188
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_inc_a_36_0, tracked: true } |     a2:Freed { symidx: temp_21_cmp_36_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     132  label branch_short_circuit_c_true_194: 
.branch_short_circuit_c_true_194:
              #                     215  untrack temp_17_i32_to_bool_29_0 
              #                     214  untrack temp_21_cmp_36_0 
              #                    occupy a2 with temp_21_cmp_36_0
              #                    release a2 with temp_21_cmp_36_0
              #                     213  untrack temp_13_cmp_26_0 
              #                     212  untrack temp_27_i32_to_bool_36_0 
              #                     211  untrack temp_26_arithop_36_0 
              #                     210  untrack temp_19_i32_to_bool_29_0 
              #                     209  untrack temp_20_ret_of_inc_a_36_0 
              #                    occupy a0 with temp_20_ret_of_inc_a_36_0
              #                    release a0 with temp_20_ret_of_inc_a_36_0
              #                     208  untrack temp_23_ret_of_inc_a_36_0 
              #                     207  untrack temp_16_ret_of_inc_a_29_0 
              #                     206  untrack temp_11_value_from_ptr_31_0 
              #                     205  untrack temp_28_i32_to_bool_36_0 
              #                     204  untrack temp_14_ret_of_inc_a_29_0 
              #                     203  untrack temp_24_ret_of_inc_a_36_0 
              #                     202  untrack temp_18_i32_to_bool_29_0 
              #                     201  untrack temp_25_arithop_36_0 
              #                     200  untrack temp_22_ret_of_inc_a_36_0 
              #                     199  untrack temp_12_value_from_ptr_31_0 
              #                     198  untrack temp_15_ret_of_inc_a_29_0 
              #                     194  untrack temp_17_i32_to_bool_29_0 
              #                     193  untrack temp_13_cmp_26_0 
              #                     192  untrack temp_14_ret_of_inc_a_29_0 
              #                     191  untrack temp_21_cmp_36_0 
              #                     190  untrack temp_16_ret_of_inc_a_29_0 
              #                     189  untrack temp_11_value_from_ptr_31_0 
              #                     188  untrack temp_24_ret_of_inc_a_36_0 
              #                     187  untrack temp_15_ret_of_inc_a_29_0 
              #                     186  untrack temp_27_i32_to_bool_36_0 
              #                     185  untrack temp_12_value_from_ptr_31_0 
              #                     184  untrack temp_25_arithop_36_0 
              #                     183  untrack temp_23_ret_of_inc_a_36_0 
              #                     182  untrack temp_18_i32_to_bool_29_0 
              #                     181  untrack temp_19_i32_to_bool_29_0 
              #                     180  untrack temp_22_ret_of_inc_a_36_0 
              #                     179  untrack temp_28_i32_to_bool_36_0 
              #                     178  untrack temp_26_arithop_36_0 
              #                     177  untrack temp_20_ret_of_inc_a_36_0 
              #                     64   temp_8_value_from_ptr_38_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_8_value_from_ptr_38_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     65   mu a_0_8:64 
              #                     66    Call void putint_0(temp_8_value_from_ptr_38_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_8_value_from_ptr_38_0
              #                    store to temp_8_value_from_ptr_38_0 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with temp_8_value_from_ptr_38_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_value_from_ptr_38_0_0
              #                    load from temp_8_value_from_ptr_38_0 in mem


    lw      a0,72(sp)
              #                    arg load ended


    call    putint
              #                     195  untrack temp_8_value_from_ptr_38_0 
              #                     67    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     69   temp_9_value_from_ptr_38_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_9_value_from_ptr_38_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     70   mu b_0_2:69 
              #                     72   temp_10_arithop_38_0 = Mul i32 temp_9_value_from_ptr_38_0, 2_0 
              #                    occupy a2 with temp_10_arithop_38_0
              #                    occupy a1 with temp_9_value_from_ptr_38_0
    slliw a2,a1,1
              #                    free a1
              #                    free a2
              #                     197  untrack temp_9_value_from_ptr_38_0 
              #                    occupy a1 with temp_9_value_from_ptr_38_0
              #                    release a1 with temp_9_value_from_ptr_38_0
              #                     73   store temp_10_arithop_38_0:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a2 with temp_10_arithop_38_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     196  untrack temp_10_arithop_38_0 
              #                    occupy a2 with temp_10_arithop_38_0
              #                    release a2 with temp_10_arithop_38_0
              #                     74   b_0_3 = chi b_0_2:73 
              #                          jump label: gather_13 
    j       .gather_13
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                     141  label gather_13: 
.gather_13:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     61   temp_7_arithop_28_0 = Sub i32 k_24_1, 1_0 
              #                    occupy a0 with k_24_1
              #                    load from k_24_1 in mem


    lw      a0,92(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_7_arithop_28_0
              #                    regtab:    a0:Occupied { symidx: k_24_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_7_arithop_28_0, tracked: true, occupy_count: 1 } |  released_gpr_count:11,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     62   (nop) 
              #                     173  k_24_1 = i32 temp_7_arithop_28_0 
              #                    occupy a2 with temp_7_arithop_28_0
              #                    occupy a0 with k_24_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_27 
              #                    occupy a2 with temp_7_arithop_28_0
              #                    store to temp_7_arithop_28_0 in mem offset legal
    sw      a2,76(sp)
              #                    release a2 with temp_7_arithop_28_0
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_inc_a_36_0, tracked: true } |     a2:Freed { symidx: temp_21_cmp_36_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     137  label branch_short_circuit_p_false_188: 
.branch_short_circuit_p_false_188:
              #                     119  temp_22_ret_of_inc_a_36_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_ret_of_inc_a_36_0
              #                    store to temp_20_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_20_ret_of_inc_a_36_0
              #                    occupy a2 with temp_21_cmp_36_0
              #                    store to temp_21_cmp_36_0 in mem offset legal
    sb      a2,31(sp)
              #                    release a2 with temp_21_cmp_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     150  mu a_0_7:119 
              #                     151  a_0_10 = chi a_0_7:119 
              #                     129  temp_27_i32_to_bool_36_0 = icmp i32 Ne temp_22_ret_of_inc_a_36_0, 0_0 
              #                    occupy a0 with temp_22_ret_of_inc_a_36_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_27_i32_to_bool_36_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     139  br i1 temp_27_i32_to_bool_36_0, label branch_short_circuit_p_true_194, label branch_short_circuit_c_false_194 
              #                    occupy a2 with temp_27_i32_to_bool_36_0
              #                    free a2
              #                    occupy a2 with temp_27_i32_to_bool_36_0
    bnez    a2, .branch_short_circuit_p_true_194
              #                    free a2
    j       .branch_short_circuit_c_false_194
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_inc_a_36_0, tracked: true } |     a2:Freed { symidx: temp_27_i32_to_bool_36_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     134  label branch_short_circuit_p_true_194: 
.branch_short_circuit_p_true_194:
              #                     121  temp_23_ret_of_inc_a_36_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_ret_of_inc_a_36_0
              #                    store to temp_22_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_22_ret_of_inc_a_36_0
              #                    occupy a2 with temp_27_i32_to_bool_36_0
              #                    store to temp_27_i32_to_bool_36_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_27_i32_to_bool_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     154  mu a_0_10:121 
              #                     155  a_0_13 = chi a_0_10:121 
              #                     123  temp_24_ret_of_inc_a_36_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_23_ret_of_inc_a_36_0
              #                    store to temp_23_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_23_ret_of_inc_a_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     156  mu a_0_13:123 
              #                     157  a_0_14 = chi a_0_13:123 
              #                     125  temp_25_arithop_36_0 = Sub i32 temp_23_ret_of_inc_a_36_0, temp_24_ret_of_inc_a_36_0 
              #                    occupy a1 with temp_23_ret_of_inc_a_36_0
              #                    load from temp_23_ret_of_inc_a_36_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_24_ret_of_inc_a_36_0
              #                    occupy a2 with temp_25_arithop_36_0
              #                    regtab:    a0:Occupied { symidx: temp_24_ret_of_inc_a_36_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_23_ret_of_inc_a_36_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: temp_25_arithop_36_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     127  temp_26_arithop_36_0 = Add i32 temp_25_arithop_36_0, 1_0 
              #                    occupy a2 with temp_25_arithop_36_0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_26_arithop_36_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     131  temp_28_i32_to_bool_36_0 = icmp i32 Ne temp_26_arithop_36_0, 0_0 
              #                    occupy a4 with temp_26_arithop_36_0
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_28_i32_to_bool_36_0
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                     136  br i1 temp_28_i32_to_bool_36_0, label branch_short_circuit_c_true_194, label branch_short_circuit_c_false_194 
              #                    occupy a6 with temp_28_i32_to_bool_36_0
              #                    free a6
              #                    occupy a2 with temp_25_arithop_36_0
              #                    store to temp_25_arithop_36_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_25_arithop_36_0
              #                    occupy a2 with temp_21_cmp_36_0
              #                    load from temp_21_cmp_36_0 in mem


    lb      a2,31(sp)
              #                    occupy a4 with temp_26_arithop_36_0
              #                    store to temp_26_arithop_36_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_26_arithop_36_0
              #                    occupy a0 with temp_24_ret_of_inc_a_36_0
              #                    store to temp_24_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_24_ret_of_inc_a_36_0
              #                    occupy a0 with temp_20_ret_of_inc_a_36_0
              #                    load from temp_20_ret_of_inc_a_36_0 in mem


    lw      a0,32(sp)
              #                    occupy a1 with temp_23_ret_of_inc_a_36_0
              #                    store to temp_23_ret_of_inc_a_36_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_23_ret_of_inc_a_36_0
              #                    occupy a6 with temp_28_i32_to_bool_36_0
              #                    store to temp_28_i32_to_bool_36_0 in mem offset legal
    sb      a6,6(sp)
              #                    release a6 with temp_28_i32_to_bool_36_0
              #                    occupy a1 with temp_28_i32_to_bool_36_0
              #                    load from temp_28_i32_to_bool_36_0 in mem


    lb      a1,6(sp)
    bnez    a1, .branch_short_circuit_c_true_194
              #                    free a1
              #                    occupy a2 with temp_21_cmp_36_0
              #                    store to temp_21_cmp_36_0 in mem offset legal
    sb      a2,31(sp)
              #                    release a2 with temp_21_cmp_36_0
              #                    occupy a2 with temp_27_i32_to_bool_36_0
              #                    load from temp_27_i32_to_bool_36_0 in mem


    lb      a2,7(sp)
              #                    occupy a0 with temp_20_ret_of_inc_a_36_0
              #                    store to temp_20_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_20_ret_of_inc_a_36_0
              #                    occupy a0 with temp_22_ret_of_inc_a_36_0
              #                    load from temp_22_ret_of_inc_a_36_0 in mem


    lw      a0,24(sp)
              #                    occupy a1 with temp_28_i32_to_bool_36_0
              #                    store to temp_28_i32_to_bool_36_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_28_i32_to_bool_36_0
    j       .branch_short_circuit_c_false_194
              #                    regtab     a0:Freed { symidx: temp_22_ret_of_inc_a_36_0, tracked: true } |     a2:Freed { symidx: temp_27_i32_to_bool_36_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     133  label branch_short_circuit_c_false_194: 
.branch_short_circuit_c_false_194:
              #                     59   temp_6_ret_of_inc_a_42_0 =  Call i32 inc_a_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_ret_of_inc_a_36_0
              #                    store to temp_22_ret_of_inc_a_36_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_22_ret_of_inc_a_36_0
              #                    occupy a2 with temp_27_i32_to_bool_36_0
              #                    store to temp_27_i32_to_bool_36_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_27_i32_to_bool_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    inc_a
              #                     152  mu a_0_11:59 
              #                     153  a_0_12 = chi a_0_11:59 
              #                          jump label: gather_13 
              #                    occupy a0 with temp_6_ret_of_inc_a_42_0
              #                    store to temp_6_ret_of_inc_a_42_0 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with temp_6_ret_of_inc_a_42_0
    j       .gather_13
              #                    regtab     a0:Freed { symidx: k_24_1, tracked: true } |     a2:Freed { symidx: temp_13_cmp_26_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     89   label while.exit_27: 
.while.exit_27:
              #                     176  untrack k_24_1 
              #                    occupy a0 with k_24_1
              #                    release a0 with k_24_1
              #                     44   temp_3_value_from_ptr_24_0 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_3_value_from_ptr_24_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     45   mu a_0_4:44 
              #                     46    Call void putint_0(temp_3_value_from_ptr_24_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_3_value_from_ptr_24_0
              #                    store to temp_3_value_from_ptr_24_0 in mem offset legal
    sw      a1,88(sp)
              #                    release a1 with temp_3_value_from_ptr_24_0
              #                    occupy a2 with temp_13_cmp_26_0
              #                    store to temp_13_cmp_26_0 in mem offset legal
    sb      a2,55(sp)
              #                    release a2 with temp_13_cmp_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_3_value_from_ptr_24_0_0
              #                    load from temp_3_value_from_ptr_24_0 in mem


    lw      a0,88(sp)
              #                    arg load ended


    call    putint
              #                     47    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     49   temp_4_value_from_ptr_24_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_4_value_from_ptr_24_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     50   mu b_0_2:49 
              #                     51    Call void putint_0(temp_4_value_from_ptr_24_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_4_value_from_ptr_24_0
              #                    store to temp_4_value_from_ptr_24_0 in mem offset legal
    sw      a1,84(sp)
              #                    release a1 with temp_4_value_from_ptr_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_value_from_ptr_24_0_0
              #                    load from temp_4_value_from_ptr_24_0 in mem


    lw      a0,84(sp)
              #                    arg load ended


    call    putint
              #                     216  untrack temp_4_value_from_ptr_24_0 
              #                     52    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     55   (nop) 
              #                     56   mu a_0_4:55 
              #                     162  mu a_0_4:57 
              #                     163  mu b_0_2:57 
              #                     57   ret temp_3_value_from_ptr_24_0 
              #                    load from ra_main_0 in mem
    ld      ra,104(sp)
              #                    load from s0_main_0 in mem
    ld      s0,96(sp)
              #                    occupy a0 with temp_3_value_from_ptr_24_0
              #                    load from temp_3_value_from_ptr_24_0 in mem


    lw      a0,88(sp)
    addi    sp,sp,112
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl b
              #                     20   global i32 b_0 
    .type b,@object
b:
    .word 1
    .align 4
    .globl a
              #                     17   global i32 a_0 
    .type a,@object
a:
    .word -1
