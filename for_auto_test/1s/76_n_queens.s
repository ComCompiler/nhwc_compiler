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
              #                     28   Define printans_0 "" -> printans_ret_0 
    .globl printans
    .type printans,@function
printans:
              #                    mem layout:|ra_printans:8 at 48|s0_printans:8 at 40|temp_0_value_from_ptr _s19 _i0:4 at 36|temp_1_arithop _s19 _i0:4 at 32|i _s19 _i1:4 at 28|none:4 at 24|temp_2_ptr_of_*ans_0:8 at 16|temp_3_ele_of_*ans_0 _s24 _i0:4 at 12|temp_4_arithop _s24 _i0:4 at 8|temp_5_value_from_ptr _s22 _i0:4 at 4|temp_6_cmp _s22 _i0:1 at 3|temp_8_cmp _s26 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-56
              #                    store to ra_printans_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_printans_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     211  sum_0_1 = chi sum_0_0:28 
              #                     31   alloc i32 [temp_0_value_from_ptr_19] 
              #                     34   alloc i32 [temp_1_arithop_19] 
              #                     39   alloc i32 [i_19] 
              #                     40   alloc ptr->i32 [temp_2_ptr_of_*ans_0_24] 
              #                     42   alloc i32 [temp_3_ele_of_*ans_0_24] 
              #                     47   alloc i32 [temp_4_arithop_24] 
              #                     53   alloc i32 [temp_5_value_from_ptr_22] 
              #                     56   alloc i1 [temp_6_cmp_22] 
              #                     63   alloc i32 [temp_7_value_from_ptr_26] 
              #                     66   alloc i1 [temp_8_cmp_26] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     32   temp_0_value_from_ptr_19_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_0_value_from_ptr_19_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     33   mu sum_0_1:32 
              #                     35   temp_1_arithop_19_0 = Add i32 temp_0_value_from_ptr_19_0, 1_0 
              #                    occupy a1 with temp_0_value_from_ptr_19_0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_19_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     285  untrack temp_0_value_from_ptr_19_0 
              #                    occupy a1 with temp_0_value_from_ptr_19_0
              #                    release a1 with temp_0_value_from_ptr_19_0
              #                     36   store temp_1_arithop_19_0:i32 *sum_0:ptr->i32 
              #                    occupy a1 with *sum_0
              #                       load label sum as ptr to reg
    la      a1, sum
              #                    occupy reg a1 with *sum_0
              #                    occupy a3 with temp_1_arithop_19_0
    sw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     284  untrack temp_1_arithop_19_0 
              #                    occupy a3 with temp_1_arithop_19_0
              #                    release a3 with temp_1_arithop_19_0
              #                     37   sum_0_2 = chi sum_0_1:36 
              #                     38   (nop) 
              #                     54   temp_5_value_from_ptr_22_0 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    occupy a4 with temp_5_value_from_ptr_22_0
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                     55   mu n_0_0:54 
              #                     64   (nop) 
              #                     65   mu n_0_0:64 
              #                     278  i_19_1 = i32 1_0 
              #                    occupy a5 with i_19_1
    li      a5, 1
              #                    free a5
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a4:Freed { symidx: temp_5_value_from_ptr_22_0, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     58   label while.head_23: 
.while.head_23:
              #                     57   temp_6_cmp_22_0 = icmp i32 Sle i_19_1, temp_5_value_from_ptr_22_0 
              #                    occupy a5 with i_19_1
              #                    occupy a4 with temp_5_value_from_ptr_22_0
              #                    occupy a0 with temp_6_cmp_22_0
    slt     a0,a4,a5
    xori    a0,a0,1
              #                    free a5
              #                    free a4
              #                    free a0
              #                     61   br i1 temp_6_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a0 with temp_6_cmp_22_0
              #                    free a0
              #                    occupy a0 with temp_6_cmp_22_0
    bnez    a0, .while.body_23
              #                    free a0
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: temp_6_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_5_value_from_ptr_22_0, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     59   label while.body_23: 
.while.body_23:
              #                     41   temp_2_ptr_of_*ans_0_24 = GEP *ans_0:Array:i32:[None] [Some(i_19_1)] 
              #                    occupy a1 with temp_2_ptr_of_*ans_0_24
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with i_19_1
    mv      a2, a5
              #                    free a5
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
              #                    occupy a3 with *ans_0
              #                       load label ans as ptr to reg
    la      a3, ans
              #                    occupy reg a3 with *ans_0
    add     a1,a1,a3
              #                    free a3
              #                    free a1
              #                     43   temp_3_ele_of_*ans_0_24_0 = load temp_2_ptr_of_*ans_0_24:ptr->i32 
              #                    occupy a1 with temp_2_ptr_of_*ans_0_24
              #                    occupy a6 with temp_3_ele_of_*ans_0_24_0
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     44   mu ans_0_0:43 
              #                     45    Call void putint_0(temp_3_ele_of_*ans_0_24_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_6_cmp_22_0
              #                    store to temp_6_cmp_22_0 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_6_cmp_22_0
              #                    occupy a1 with temp_2_ptr_of_*ans_0_24
              #                    store to temp_2_ptr_of_*ans_0_24 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_2_ptr_of_*ans_0_24
              #                    occupy a4 with temp_5_value_from_ptr_22_0
              #                    store to temp_5_value_from_ptr_22_0 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_5_value_from_ptr_22_0
              #                    occupy a5 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with i_19_1
              #                    occupy a6 with temp_3_ele_of_*ans_0_24_0
              #                    store to temp_3_ele_of_*ans_0_24_0 in mem offset legal
    sw      a6,12(sp)
              #                    release a6 with temp_3_ele_of_*ans_0_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_3_ele_of_*ans_0_24_0_0
              #                    load from temp_3_ele_of_*ans_0_24_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     67   temp_8_cmp_26_0 = icmp i32 Eq i_19_1, temp_5_value_from_ptr_22_0 
              #                    occupy a0 with i_19_1
              #                    load from i_19_1 in mem


    lw      a0,28(sp)
              #                    occupy a1 with temp_5_value_from_ptr_22_0
              #                    load from temp_5_value_from_ptr_22_0 in mem


    lw      a1,4(sp)
              #                    occupy a2 with temp_8_cmp_26_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     70   br i1 temp_8_cmp_26_0, label branch_true_27, label branch_false_27 
              #                    occupy a2 with temp_8_cmp_26_0
              #                    free a2
              #                    occupy a2 with temp_8_cmp_26_0
    bnez    a2, .branch_true_27
              #                    free a2
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: i_19_1, tracked: true } |     a1:Freed { symidx: temp_5_value_from_ptr_22_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_26_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     68   label branch_true_27: 
.branch_true_27:
              #                     292  untrack temp_2_ptr_of_*ans_0_24 
              #                     291  untrack temp_4_arithop_24_0 
              #                     290  untrack temp_3_ele_of_*ans_0_24_0 
              #                     289  untrack temp_6_cmp_22_0 
              #                     288  untrack temp_8_cmp_26_0 
              #                    occupy a2 with temp_8_cmp_26_0
              #                    release a2 with temp_8_cmp_26_0
              #                     50    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_19_1
              #                    occupy a1 with temp_5_value_from_ptr_22_0
              #                    store to temp_5_value_from_ptr_22_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_5_value_from_ptr_22_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     212  mu sum_0_2:52 
              #                     52   ret 
              #                    load from ra_printans_0 in mem
    ld      ra,48(sp)
              #                    load from s0_printans_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab     a0:Freed { symidx: i_19_1, tracked: true } |     a1:Freed { symidx: temp_5_value_from_ptr_22_0, tracked: true } |     a2:Freed { symidx: temp_8_cmp_26_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     69   label branch_false_27: 
.branch_false_27:
              #                     46    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_19_1
              #                    occupy a1 with temp_5_value_from_ptr_22_0
              #                    store to temp_5_value_from_ptr_22_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_5_value_from_ptr_22_0
              #                    occupy a2 with temp_8_cmp_26_0
              #                    store to temp_8_cmp_26_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_8_cmp_26_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: gather_8 
    j       .gather_8
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     71   label gather_8: 
.gather_8:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     48   temp_4_arithop_24_0 = Add i32 i_19_1, 1_0 
              #                    occupy a0 with i_19_1
              #                    load from i_19_1 in mem


    lw      a0,28(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_4_arithop_24_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     49   (nop) 
              #                     279  i_19_1 = i32 temp_4_arithop_24_0 
              #                    occupy a2 with temp_4_arithop_24_0
              #                    occupy a0 with i_19_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_23 
              #                    occupy a4 with temp_5_value_from_ptr_22_0
              #                    load from temp_5_value_from_ptr_22_0 in mem


    lw      a4,4(sp)
              #                    occupy a0 with i_19_1
              #                    store to i_19_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_19_1
              #                    occupy a5 with i_19_1
              #                    load from i_19_1 in mem


    lw      a5,28(sp)
              #                    occupy a2 with temp_4_arithop_24_0
              #                    store to temp_4_arithop_24_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_4_arithop_24_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: temp_6_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_5_value_from_ptr_22_0, tracked: true } |     a5:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     60   label while.exit_23: 
.while.exit_23:
              #                     287  untrack temp_5_value_from_ptr_22_0 
              #                    occupy a4 with temp_5_value_from_ptr_22_0
              #                    release a4 with temp_5_value_from_ptr_22_0
              #                     286  untrack i_19_1 
              #                    occupy a5 with i_19_1
              #                    release a5 with i_19_1
              #                     213  mu sum_0_2:62 
              #                     62   ret 
              #                    load from ra_printans_0 in mem
    ld      ra,48(sp)
              #                    load from s0_printans_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define f_0 "step_33_0," -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 160|s0_f:8 at 152|step _s33 _i0:4 at 148|i _s35 _i1:4 at 144|temp_9_arithop _s39 _i0:4 at 140|none:4 at 136|temp_10_ptr_of_*ans_0:8 at 128|temp_11_ptr_of_*row_0:8 at 120|temp_13_ptr_of_*line1_0:8 at 112|temp_17_ptr_of_*line2_0:8 at 104|temp_18_arithop _s42 _i0:4 at 100|none:4 at 96|temp_19_ptr_of_*row_0:8 at 88|temp_21_ptr_of_*line1_0:8 at 80|temp_25_ptr_of_*line2_0:8 at 72|temp_26_value_from_ptr _s37 _i0:4 at 68|temp_27_cmp _s37 _i0:1 at 67|none:3 at 64|temp_28_ptr_of_*row_0:8 at 56|temp_29_ele_of_*row_0 _s40 _i0:4 at 52|temp_30_cmp _s40 _i0:1 at 51|none:3 at 48|temp_31_arithop _s40 _i0:4 at 44|none:4 at 40|temp_32_ptr_of_*line1_0:8 at 32|temp_33_ele_of_*line1_0 _s40 _i0:4 at 28|temp_34_cmp _s40 _i0:1 at 27|none:3 at 24|temp_36_arithop _s40 _i0:4 at 20|temp_37_arithop _s40 _i0:4 at 16|temp_38_ptr_of_*line2_0:8 at 8|temp_39_ele_of_*line2_0 _s40 _i0:4 at 4|temp_40_booltrans _s40 _i0:1 at 3|temp_41_logicnot _s40 _i0:1 at 2|temp_43_cmp _s44 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-168
              #                    store to ra_f_0 in mem offset legal
    sd      ra,160(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,152(sp)
    addi    s0,sp,168
              #                     214  sum_0_3 = chi sum_0_0:29 
              #                     215  ans_0_1 = chi ans_0_0:29 
              #                     216  row_0_1 = chi row_0_0:29 
              #                     217  line2_0_1 = chi line2_0_0:29 
              #                     218  line1_0_1 = chi line1_0_0:29 
              #                     73   alloc i32 [i_35] 
              #                     74   alloc i32 [temp_9_arithop_39] 
              #                     77   alloc ptr->i32 [temp_10_ptr_of_*ans_0_42] 
              #                     81   alloc ptr->i32 [temp_11_ptr_of_*row_0_42] 
              #                     85   alloc i32 [temp_12_arithop_42] 
              #                     87   alloc ptr->i32 [temp_13_ptr_of_*line1_0_42] 
              #                     91   alloc i32 [temp_14_value_from_ptr_42] 
              #                     94   alloc i32 [temp_15_arithop_42] 
              #                     96   alloc i32 [temp_16_arithop_42] 
              #                     98   alloc ptr->i32 [temp_17_ptr_of_*line2_0_42] 
              #                     102  alloc i32 [temp_18_arithop_42] 
              #                     105  alloc ptr->i32 [temp_19_ptr_of_*row_0_42] 
              #                     109  alloc i32 [temp_20_arithop_42] 
              #                     111  alloc ptr->i32 [temp_21_ptr_of_*line1_0_42] 
              #                     115  alloc i32 [temp_22_value_from_ptr_42] 
              #                     118  alloc i32 [temp_23_arithop_42] 
              #                     120  alloc i32 [temp_24_arithop_42] 
              #                     122  alloc ptr->i32 [temp_25_ptr_of_*line2_0_42] 
              #                     127  alloc i32 [temp_26_value_from_ptr_37] 
              #                     130  alloc i1 [temp_27_cmp_37] 
              #                     137  alloc ptr->i32 [temp_28_ptr_of_*row_0_40] 
              #                     139  alloc i32 [temp_29_ele_of_*row_0_40] 
              #                     142  alloc i1 [temp_30_cmp_40] 
              #                     144  alloc i32 [temp_31_arithop_40] 
              #                     146  alloc ptr->i32 [temp_32_ptr_of_*line1_0_40] 
              #                     148  alloc i32 [temp_33_ele_of_*line1_0_40] 
              #                     151  alloc i1 [temp_34_cmp_40] 
              #                     153  alloc i32 [temp_35_value_from_ptr_40] 
              #                     156  alloc i32 [temp_36_arithop_40] 
              #                     158  alloc i32 [temp_37_arithop_40] 
              #                     160  alloc ptr->i32 [temp_38_ptr_of_*line2_0_40] 
              #                     162  alloc i32 [temp_39_ele_of_*line2_0_40] 
              #                     165  alloc i1 [temp_40_booltrans_40] 
              #                     167  alloc i1 [temp_41_logicnot_40] 
              #                     178  alloc i32 [temp_42_value_from_ptr_44] 
              #                     181  alloc i1 [temp_43_cmp_44] 
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     72   (nop) 
              #                     128  temp_26_value_from_ptr_37_0 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a2 with temp_26_value_from_ptr_37_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     129  mu n_0_0:128 
              #                     154  (nop) 
              #                     155  mu n_0_0:154 
              #                     78   temp_10_ptr_of_*ans_0_42 = GEP *ans_0:ptr->i32 [Some(step_33_0)] 
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
    li      a3, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with step_33_0
    mv      a4, a0
              #                    free a0
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a5 with *ans_0
              #                       load label ans as ptr to reg
    la      a5, ans
              #                    occupy reg a5 with *ans_0
    add     a3,a3,a5
              #                    free a5
              #                    free a3
              #                     179  (nop) 
              #                     180  mu n_0_0:179 
              #                     92   (nop) 
              #                     93   mu n_0_0:92 
              #                     103  temp_18_arithop_42_0 = Add i32 step_33_0, 1_0 
              #                    occupy a0 with step_33_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_18_arithop_42_0
    ADDW    a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     116  (nop) 
              #                     117  mu n_0_0:116 
              #                     280  i_35_1 = i32 1_0 
              #                    occupy s1 with i_35_1
    li      s1, 1
              #                    free s1
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     132  label while.head_38: 
.while.head_38:
              #                     131  temp_27_cmp_37_0 = icmp i32 Sle i_35_1, temp_26_value_from_ptr_37_0 
              #                    occupy s1 with i_35_1
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    occupy a1 with temp_27_cmp_37_0
    slt     a1,a2,s1
    xori    a1,a1,1
              #                    free s1
              #                    free a2
              #                    free a1
              #                     135  br i1 temp_27_cmp_37_0, label while.body_38, label while.exit_38 
              #                    occupy a1 with temp_27_cmp_37_0
              #                    free a1
              #                    occupy a1 with temp_27_cmp_37_0
    bnez    a1, .while.body_38
              #                    free a1
    j       .while.exit_38
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     133  label while.body_38: 
.while.body_38:
              #                     138  temp_28_ptr_of_*row_0_40 = GEP *row_0:Array:i32:[None] [Some(i_35_1)] 
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with i_35_1
    mv      a5, s1
              #                    free s1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *row_0
              #                       load label row as ptr to reg
    la      a6, row
              #                    occupy reg a6 with *row_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     140  temp_29_ele_of_*row_0_40_0 = load temp_28_ptr_of_*row_0_40:ptr->i32 
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    occupy s2 with temp_29_ele_of_*row_0_40_0
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                     141  mu row_0_2:140 
              #                     143  temp_30_cmp_40_0 = icmp i32 Ne temp_29_ele_of_*row_0_40_0, 1_0 
              #                    occupy s2 with temp_29_ele_of_*row_0_40_0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_30_cmp_40_0
    xor     s4,s2,s3
    snez    s4, s4
              #                    free s2
              #                    occupy s2 with temp_29_ele_of_*row_0_40_0
              #                    store to temp_29_ele_of_*row_0_40_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_29_ele_of_*row_0_40_0
              #                    free s3
              #                    free s4
              #                     177  br i1 temp_30_cmp_40_0, label branch_short_circuit_p_true_239, label branch_short_circuit_c_false_246 
              #                    occupy s4 with temp_30_cmp_40_0
              #                    free s4
              #                    occupy s4 with temp_30_cmp_40_0
    bnez    s4, .branch_short_circuit_p_true_239
              #                    free s4
    j       .branch_short_circuit_c_false_246
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     174  label branch_short_circuit_p_true_239: 
.branch_short_circuit_p_true_239:
              #                     145  temp_31_arithop_40_0 = Add i32 step_33_0, i_35_1 
              #                    occupy a0 with step_33_0
              #                    occupy s1 with i_35_1
              #                    occupy a5 with temp_31_arithop_40_0
    ADDW    a5,a0,s1
              #                    free a0
              #                    occupy a0 with step_33_0
              #                    store to step_33_0 in mem offset legal
    sw      a0,148(sp)
              #                    release a0 with step_33_0
              #                    free s1
              #                    free a5
              #                     147  temp_32_ptr_of_*line1_0_40 = GEP *line1_0:Array:i32:[None] [Some(temp_31_arithop_40_0)] 
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
    li      a0, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a5 with temp_31_arithop_40_0
    mv      a6, a5
              #                    free a5
              #                    occupy a5 with temp_31_arithop_40_0
              #                    store to temp_31_arithop_40_0 in mem offset legal
    sw      a5,44(sp)
              #                    release a5 with temp_31_arithop_40_0
    add     a0,a0,a6
              #                    free a6
    slli a0,a0,2
              #                    occupy a5 with *line1_0
              #                       load label line1 as ptr to reg
    la      a5, line1
              #                    occupy reg a5 with *line1_0
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     149  temp_33_ele_of_*line1_0_40_0 = load temp_32_ptr_of_*line1_0_40:ptr->i32 
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a5 with temp_33_ele_of_*line1_0_40_0
    lw      a5,0(a0)
              #                    free a5
              #                    occupy a5 with temp_33_ele_of_*line1_0_40_0
              #                    store to temp_33_ele_of_*line1_0_40_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_33_ele_of_*line1_0_40_0
              #                    free a0
              #                     150  mu line1_0_2:149 
              #                     152  temp_34_cmp_40_0 = icmp i32 Eq temp_33_ele_of_*line1_0_40_0, 0_0 
              #                    occupy a5 with temp_33_ele_of_*line1_0_40_0
              #                    load from temp_33_ele_of_*line1_0_40_0 in mem


    lw      a5,28(sp)
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy s2 with temp_34_cmp_40_0
    xor     s2,a5,a6
    seqz    s2, s2
              #                    free a5
              #                    occupy a5 with temp_33_ele_of_*line1_0_40_0
              #                    store to temp_33_ele_of_*line1_0_40_0 in mem offset legal
    sw      a5,28(sp)
              #                    release a5 with temp_33_ele_of_*line1_0_40_0
              #                    free a6
              #                    free s2
              #                    occupy s2 with temp_34_cmp_40_0
              #                    store to temp_34_cmp_40_0 in mem offset legal
    sb      s2,27(sp)
              #                    release s2 with temp_34_cmp_40_0
              #                     176  br i1 temp_34_cmp_40_0, label branch_short_circuit_p_true_246, label branch_short_circuit_c_false_246 
              #                    occupy a5 with temp_34_cmp_40_0
              #                    load from temp_34_cmp_40_0 in mem


    lb      a5,27(sp)
              #                    free a5
              #                    occupy a5 with temp_34_cmp_40_0
              #                    store to temp_34_cmp_40_0 in mem offset legal
    sb      a5,27(sp)
              #                    release a5 with temp_34_cmp_40_0
              #                    occupy a5 with temp_34_cmp_40_0
              #                    load from temp_34_cmp_40_0 in mem


    lb      a5,27(sp)
    bnez    a5, .branch_short_circuit_p_true_246
              #                    free a5
              #                    occupy a5 with temp_34_cmp_40_0
              #                    store to temp_34_cmp_40_0 in mem offset legal
    sb      a5,27(sp)
              #                    release a5 with temp_34_cmp_40_0
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    store to temp_32_ptr_of_*line1_0_40 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a0 with step_33_0
              #                    load from step_33_0 in mem


    lw      a0,148(sp)
    j       .branch_short_circuit_c_false_246
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     171  label branch_short_circuit_p_true_246: 
.branch_short_circuit_p_true_246:
              #                     157  temp_36_arithop_40_0 = Add i32 temp_26_value_from_ptr_37_0, step_33_0 
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    occupy a5 with step_33_0
              #                    load from step_33_0 in mem


    lw      a5,148(sp)
              #                    occupy a6 with temp_36_arithop_40_0
    ADDW    a6,a2,a5
              #                    free a2
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    store to temp_26_value_from_ptr_37_0 in mem offset legal
    sw      a2,68(sp)
              #                    release a2 with temp_26_value_from_ptr_37_0
              #                    free a5
              #                    occupy a5 with step_33_0
              #                    store to step_33_0 in mem offset legal
    sw      a5,148(sp)
              #                    release a5 with step_33_0
              #                    free a6
              #                     159  temp_37_arithop_40_0 = Sub i32 temp_36_arithop_40_0, i_35_1 
              #                    occupy a6 with temp_36_arithop_40_0
              #                    occupy s1 with i_35_1
              #                    occupy a2 with temp_37_arithop_40_0
              #                    regtab:    a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Occupied { symidx: temp_37_arithop_40_0, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a6:Occupied { symidx: temp_36_arithop_40_0, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Occupied { symidx: i_35_1, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:4,released_fpr_count:24


    subw    a2,a6,s1
              #                    free a6
              #                    occupy a6 with temp_36_arithop_40_0
              #                    store to temp_36_arithop_40_0 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_36_arithop_40_0
              #                    free s1
              #                    free a2
              #                     161  temp_38_ptr_of_*line2_0_40 = GEP *line2_0:Array:i32:[None] [Some(temp_37_arithop_40_0)] 
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with temp_37_arithop_40_0
    mv      a6, a2
              #                    free a2
              #                    occupy a2 with temp_37_arithop_40_0
              #                    store to temp_37_arithop_40_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_37_arithop_40_0
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a2 with *line2_0
              #                       load label line2 as ptr to reg
    la      a2, line2
              #                    occupy reg a2 with *line2_0
    add     a5,a5,a2
              #                    free a2
              #                    free a5
              #                     163  temp_39_ele_of_*line2_0_40_0 = load temp_38_ptr_of_*line2_0_40:ptr->i32 
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    occupy a2 with temp_39_ele_of_*line2_0_40_0
    lw      a2,0(a5)
              #                    free a2
              #                    occupy a2 with temp_39_ele_of_*line2_0_40_0
              #                    store to temp_39_ele_of_*line2_0_40_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_39_ele_of_*line2_0_40_0
              #                    free a5
              #                     164  mu line2_0_2:163 
              #                     166  temp_40_booltrans_40_0 = icmp i32 Ne temp_39_ele_of_*line2_0_40_0, 0_0 
              #                    occupy a2 with temp_39_ele_of_*line2_0_40_0
              #                    load from temp_39_ele_of_*line2_0_40_0 in mem


    lw      a2,4(sp)
              #                    occupy a6 with 0_0
    li      a6, 0
              #                    occupy s2 with temp_40_booltrans_40_0
    xor     s2,a2,a6
    snez    s2, s2
              #                    free a2
              #                    occupy a2 with temp_39_ele_of_*line2_0_40_0
              #                    store to temp_39_ele_of_*line2_0_40_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_39_ele_of_*line2_0_40_0
              #                    free a6
              #                    free s2
              #                    occupy s2 with temp_40_booltrans_40_0
              #                    store to temp_40_booltrans_40_0 in mem offset legal
    sb      s2,3(sp)
              #                    release s2 with temp_40_booltrans_40_0
              #                     168  temp_41_logicnot_40_0 = xor i1 temp_40_booltrans_40_0, true 
              #                    occupy a2 with temp_40_booltrans_40_0
              #                    load from temp_40_booltrans_40_0 in mem


    lb      a2,3(sp)
              #                    occupy a6 with temp_41_logicnot_40_0
    seqz    a6, a2
              #                    free a2
              #                    occupy a2 with temp_40_booltrans_40_0
              #                    store to temp_40_booltrans_40_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_40_booltrans_40_0
              #                    free a6
              #                    occupy a6 with temp_41_logicnot_40_0
              #                    store to temp_41_logicnot_40_0 in mem offset legal
    sb      a6,2(sp)
              #                    release a6 with temp_41_logicnot_40_0
              #                     173  br i1 temp_41_logicnot_40_0, label branch_short_circuit_c_true_246, label branch_short_circuit_c_false_246 
              #                    occupy a2 with temp_41_logicnot_40_0
              #                    load from temp_41_logicnot_40_0 in mem


    lb      a2,2(sp)
              #                    free a2
              #                    occupy a2 with temp_41_logicnot_40_0
              #                    store to temp_41_logicnot_40_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_41_logicnot_40_0
              #                    occupy a2 with temp_41_logicnot_40_0
              #                    load from temp_41_logicnot_40_0 in mem


    lb      a2,2(sp)
    bnez    a2, .branch_short_circuit_c_true_246
              #                    free a2
              #                    occupy a2 with temp_41_logicnot_40_0
              #                    store to temp_41_logicnot_40_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_41_logicnot_40_0
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    store to temp_38_ptr_of_*line2_0_40 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_38_ptr_of_*line2_0_40
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    store to temp_32_ptr_of_*line1_0_40 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a0 with step_33_0
              #                    load from step_33_0 in mem


    lw      a0,148(sp)
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    load from temp_26_value_from_ptr_37_0 in mem


    lw      a2,68(sp)
    j       .branch_short_circuit_c_false_246
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a5:Freed { symidx: temp_38_ptr_of_*line2_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     169  label branch_short_circuit_c_true_246: 
.branch_short_circuit_c_true_246:
              #                     79   store i_35_1:i32 temp_10_ptr_of_*ans_0_42:ptr->i32 
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    occupy s1 with i_35_1
    sw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                     80   ans_0_4 = chi ans_0_2:79 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a5:Freed { symidx: temp_38_ptr_of_*line2_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     182  temp_43_cmp_44_0 = icmp i32 Eq step_33_0, temp_26_value_from_ptr_37_0 
              #                    occupy a2 with step_33_0
              #                    load from step_33_0 in mem


    lw      a2,148(sp)
              #                    occupy a6 with temp_26_value_from_ptr_37_0
              #                    load from temp_26_value_from_ptr_37_0 in mem


    lw      a6,68(sp)
              #                    occupy s2 with temp_43_cmp_44_0
    xor     s2,a2,a6
    seqz    s2, s2
              #                    free a2
              #                    occupy a2 with step_33_0
              #                    store to step_33_0 in mem offset legal
    sw      a2,148(sp)
              #                    release a2 with step_33_0
              #                    free a6
              #                    occupy a6 with temp_26_value_from_ptr_37_0
              #                    store to temp_26_value_from_ptr_37_0 in mem offset legal
    sw      a6,68(sp)
              #                    release a6 with temp_26_value_from_ptr_37_0
              #                    free s2
              #                    occupy s2 with temp_43_cmp_44_0
              #                    store to temp_43_cmp_44_0 in mem offset legal
    sb      s2,1(sp)
              #                    release s2 with temp_43_cmp_44_0
              #                     185  br i1 temp_43_cmp_44_0, label branch_true_45, label branch_false_45 
              #                    occupy a2 with temp_43_cmp_44_0
              #                    load from temp_43_cmp_44_0 in mem


    lb      a2,1(sp)
              #                    free a2
              #                    occupy a2 with temp_43_cmp_44_0
              #                    store to temp_43_cmp_44_0 in mem offset legal
    sb      a2,1(sp)
              #                    release a2 with temp_43_cmp_44_0
              #                    occupy a2 with temp_43_cmp_44_0
              #                    load from temp_43_cmp_44_0 in mem


    lb      a2,1(sp)
    bnez    a2, .branch_true_45
              #                    free a2
              #                    occupy a2 with temp_43_cmp_44_0
              #                    store to temp_43_cmp_44_0 in mem offset legal
    sb      a2,1(sp)
              #                    release a2 with temp_43_cmp_44_0
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a5:Freed { symidx: temp_38_ptr_of_*line2_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     183  label branch_true_45: 
.branch_true_45:
              #                     310  untrack temp_27_cmp_37_0 
              #                    occupy a1 with temp_27_cmp_37_0
              #                    release a1 with temp_27_cmp_37_0
              #                     309  untrack temp_33_ele_of_*line1_0_40_0 
              #                     308  untrack temp_34_cmp_40_0 
              #                     307  untrack temp_31_arithop_40_0 
              #                     306  untrack temp_43_cmp_44_0 
              #                     305  untrack temp_9_arithop_39_0 
              #                     304  untrack temp_29_ele_of_*row_0_40_0 
              #                     303  untrack temp_30_cmp_40_0 
              #                    occupy s4 with temp_30_cmp_40_0
              #                    release s4 with temp_30_cmp_40_0
              #                     302  untrack temp_37_arithop_40_0 
              #                     301  untrack temp_40_booltrans_40_0 
              #                     300  untrack temp_36_arithop_40_0 
              #                     299  untrack temp_39_ele_of_*line2_0_40_0 
              #                     298  untrack temp_41_logicnot_40_0 
              #                     126   Call void printans_0() 
              #                    saved register dumping to mem
              #                    occupy s1 with i_35_1
              #                    store to i_35_1 in mem offset legal
    sw      s1,144(sp)
              #                    release s1 with i_35_1
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    store to temp_32_ptr_of_*line1_0_40 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    store to temp_10_ptr_of_*ans_0_42 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_10_ptr_of_*ans_0_42
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    store to temp_28_ptr_of_*row_0_40 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_28_ptr_of_*row_0_40
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    store to temp_38_ptr_of_*line2_0_40 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_38_ptr_of_*line2_0_40
              #                    occupy a7 with temp_18_arithop_42_0
              #                    store to temp_18_arithop_42_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_18_arithop_42_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    printans
              #                     219  mu sum_0_4:126 
              #                     220  sum_0_6 = chi sum_0_4:126 
              #                          jump label: branch_false_45 
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    load from temp_38_ptr_of_*line2_0_40 in mem
    ld      a5,8(sp)
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    load from temp_32_ptr_of_*line1_0_40 in mem
    ld      a0,32(sp)
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    load from temp_28_ptr_of_*row_0_40 in mem
    ld      a4,56(sp)
              #                    occupy s4 with temp_30_cmp_40_0
              #                    load from temp_30_cmp_40_0 in mem


    lb      s4,51(sp)
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    load from temp_10_ptr_of_*ans_0_42 in mem
    ld      a3,128(sp)
              #                    occupy a1 with temp_27_cmp_37_0
              #                    load from temp_27_cmp_37_0 in mem


    lb      a1,67(sp)
              #                    occupy a7 with temp_18_arithop_42_0
              #                    load from temp_18_arithop_42_0 in mem


    lw      a7,100(sp)
              #                    occupy s1 with i_35_1
              #                    load from i_35_1 in mem


    lw      s1,144(sp)
    j       .branch_false_45
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a5:Freed { symidx: temp_38_ptr_of_*line2_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     184  label branch_false_45: 
.branch_false_45:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: temp_32_ptr_of_*line1_0_40, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a5:Freed { symidx: temp_38_ptr_of_*line2_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     82   (nop) 
              #                     83   store 1_0:i32 temp_28_ptr_of_*row_0_40:ptr->i32 
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a4)
              #                    free a2
              #                    free a4
              #                     84   row_0_4 = chi row_0_2:83 
              #                     86   (nop) 
              #                     88   (nop) 
              #                     89   store 1_0:i32 temp_32_ptr_of_*line1_0_40:ptr->i32 
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     90   line1_0_4 = chi line1_0_2:89 
              #                     95   (nop) 
              #                     97   (nop) 
              #                     99   (nop) 
              #                     100  store 1_0:i32 temp_38_ptr_of_*line2_0_40:ptr->i32 
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a5)
              #                    free a2
              #                    free a5
              #                     101  line2_0_4 = chi line2_0_2:100 
              #                     104   Call void f_0(temp_18_arithop_42_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with i_35_1
              #                    store to i_35_1 in mem offset legal
    sw      s1,144(sp)
              #                    release s1 with i_35_1
              #                    occupy s4 with temp_30_cmp_40_0
              #                    store to temp_30_cmp_40_0 in mem offset legal
    sb      s4,51(sp)
              #                    release s4 with temp_30_cmp_40_0
              #                    occupy a0 with temp_32_ptr_of_*line1_0_40
              #                    store to temp_32_ptr_of_*line1_0_40 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_32_ptr_of_*line1_0_40
              #                    occupy a1 with temp_27_cmp_37_0
              #                    store to temp_27_cmp_37_0 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_27_cmp_37_0
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    store to temp_10_ptr_of_*ans_0_42 in mem offset legal
    sd      a3,128(sp)
              #                    release a3 with temp_10_ptr_of_*ans_0_42
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    store to temp_28_ptr_of_*row_0_40 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_28_ptr_of_*row_0_40
              #                    occupy a5 with temp_38_ptr_of_*line2_0_40
              #                    store to temp_38_ptr_of_*line2_0_40 in mem offset legal
    sd      a5,8(sp)
              #                    release a5 with temp_38_ptr_of_*line2_0_40
              #                    occupy a7 with temp_18_arithop_42_0
              #                    store to temp_18_arithop_42_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_18_arithop_42_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_arithop_42_0_0
              #                    load from temp_18_arithop_42_0 in mem


    lw      a0,100(sp)
              #                    arg load ended


    call    f
              #                     221  mu ans_0_4:104 
              #                     222  mu row_0_4:104 
              #                     223  mu line1_0_4:104 
              #                     224  mu sum_0_7:104 
              #                     225  mu line2_0_4:104 
              #                     226  sum_0_8 = chi sum_0_7:104 
              #                     227  ans_0_5 = chi ans_0_4:104 
              #                     228  row_0_5 = chi row_0_4:104 
              #                     229  line2_0_5 = chi line2_0_4:104 
              #                     230  line1_0_5 = chi line1_0_4:104 
              #                     106  (nop) 
              #                     107  store 0_0:i32 temp_28_ptr_of_*row_0_40:ptr->i32 
              #                    occupy a0 with temp_28_ptr_of_*row_0_40
              #                    load from temp_28_ptr_of_*row_0_40 in mem
    ld      a0,56(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     108  row_0_6 = chi row_0_5:107 
              #                     110  (nop) 
              #                     112  (nop) 
              #                     113  store 0_0:i32 temp_32_ptr_of_*line1_0_40:ptr->i32 
              #                    occupy a2 with temp_32_ptr_of_*line1_0_40
              #                    load from temp_32_ptr_of_*line1_0_40 in mem
    ld      a2,32(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
    sw      a1,0(a2)
              #                    free a1
              #                    free a2
              #                     114  line1_0_6 = chi line1_0_5:113 
              #                     119  (nop) 
              #                     121  (nop) 
              #                     123  (nop) 
              #                     124  store 0_0:i32 temp_38_ptr_of_*line2_0_40:ptr->i32 
              #                    occupy a3 with temp_38_ptr_of_*line2_0_40
              #                    load from temp_38_ptr_of_*line2_0_40 in mem
    ld      a3,8(sp)
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                     125  line2_0_6 = chi line2_0_5:124 
              #                          jump label: branch_short_circuit_c_false_246 
              #                    occupy a0 with temp_28_ptr_of_*row_0_40
              #                    store to temp_28_ptr_of_*row_0_40 in mem offset legal
    sd      a0,56(sp)
              #                    release a0 with temp_28_ptr_of_*row_0_40
              #                    occupy a0 with step_33_0
              #                    load from step_33_0 in mem


    lw      a0,148(sp)
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    load from temp_28_ptr_of_*row_0_40 in mem
    ld      a4,56(sp)
              #                    occupy s4 with temp_30_cmp_40_0
              #                    load from temp_30_cmp_40_0 in mem


    lb      s4,51(sp)
              #                    occupy a3 with temp_38_ptr_of_*line2_0_40
              #                    store to temp_38_ptr_of_*line2_0_40 in mem offset legal
    sd      a3,8(sp)
              #                    release a3 with temp_38_ptr_of_*line2_0_40
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    load from temp_10_ptr_of_*ans_0_42 in mem
    ld      a3,128(sp)
              #                    occupy a1 with temp_27_cmp_37_0
              #                    load from temp_27_cmp_37_0 in mem


    lb      a1,67(sp)
              #                    occupy a7 with temp_18_arithop_42_0
              #                    load from temp_18_arithop_42_0 in mem


    lw      a7,100(sp)
              #                    occupy a2 with temp_32_ptr_of_*line1_0_40
              #                    store to temp_32_ptr_of_*line1_0_40 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_32_ptr_of_*line1_0_40
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    load from temp_26_value_from_ptr_37_0 in mem


    lw      a2,68(sp)
              #                    occupy s1 with i_35_1
              #                    load from i_35_1 in mem


    lw      s1,144(sp)
    j       .branch_short_circuit_c_false_246
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     170  label branch_short_circuit_c_false_246: 
.branch_short_circuit_c_false_246:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a4:Freed { symidx: temp_28_ptr_of_*row_0_40, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |     s4:Freed { symidx: temp_30_cmp_40_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     75   temp_9_arithop_39_0 = Add i32 i_35_1, 1_0 
              #                    occupy s1 with i_35_1
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_9_arithop_39_0
    ADDW    a6,s1,a5
              #                    free s1
              #                    occupy s1 with i_35_1
              #                    store to i_35_1 in mem offset legal
    sw      s1,144(sp)
              #                    release s1 with i_35_1
              #                    free a5
              #                    free a6
              #                     76   (nop) 
              #                     281  i_35_1 = i32 temp_9_arithop_39_0 
              #                    occupy a6 with temp_9_arithop_39_0
              #                    occupy a5 with i_35_1
    mv      a5, a6
              #                    free a6
              #                    occupy a6 with temp_9_arithop_39_0
              #                    store to temp_9_arithop_39_0 in mem offset legal
    sw      a6,140(sp)
              #                    release a6 with temp_9_arithop_39_0
              #                    free a5
              #                          jump label: while.head_38 
              #                    occupy a5 with i_35_1
              #                    store to i_35_1 in mem offset legal
    sw      a5,144(sp)
              #                    release a5 with i_35_1
              #                    occupy a4 with temp_28_ptr_of_*row_0_40
              #                    store to temp_28_ptr_of_*row_0_40 in mem offset legal
    sd      a4,56(sp)
              #                    release a4 with temp_28_ptr_of_*row_0_40
              #                    occupy s4 with temp_30_cmp_40_0
              #                    store to temp_30_cmp_40_0 in mem offset legal
    sb      s4,51(sp)
              #                    release s4 with temp_30_cmp_40_0
              #                    occupy a1 with temp_27_cmp_37_0
              #                    store to temp_27_cmp_37_0 in mem offset legal
    sb      a1,67(sp)
              #                    release a1 with temp_27_cmp_37_0
              #                    occupy s1 with i_35_1
              #                    load from i_35_1 in mem


    lw      s1,144(sp)
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: step_33_0, tracked: true } |     a1:Freed { symidx: temp_27_cmp_37_0, tracked: true } |     a2:Freed { symidx: temp_26_value_from_ptr_37_0, tracked: true } |     a3:Freed { symidx: temp_10_ptr_of_*ans_0_42, tracked: true } |     a7:Freed { symidx: temp_18_arithop_42_0, tracked: true } |     s1:Freed { symidx: i_35_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     134  label while.exit_38: 
.while.exit_38:
              #                     297  untrack i_35_1 
              #                    occupy s1 with i_35_1
              #                    release s1 with i_35_1
              #                     296  untrack step_33_0 
              #                    occupy a0 with step_33_0
              #                    release a0 with step_33_0
              #                     295  untrack temp_26_value_from_ptr_37_0 
              #                    occupy a2 with temp_26_value_from_ptr_37_0
              #                    release a2 with temp_26_value_from_ptr_37_0
              #                     294  untrack temp_18_arithop_42_0 
              #                    occupy a7 with temp_18_arithop_42_0
              #                    release a7 with temp_18_arithop_42_0
              #                     293  untrack temp_10_ptr_of_*ans_0_42 
              #                    occupy a3 with temp_10_ptr_of_*ans_0_42
              #                    release a3 with temp_10_ptr_of_*ans_0_42
              #                     231  mu sum_0_4:136 
              #                     232  mu ans_0_2:136 
              #                     233  mu row_0_2:136 
              #                     234  mu line2_0_2:136 
              #                     235  mu line1_0_2:136 
              #                     136  ret 
              #                    load from ra_f_0 in mem
    ld      ra,160(sp)
              #                    load from s0_f_0 in mem
    ld      s0,152(sp)
    addi    sp,sp,168
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_44_ret_of_getint _s56 _i0:4 at 20|N _s56 _i1:4 at 16|temp_45_value_from_ptr _s56 _i0:4 at 12|temp_46_ret_of_getint _s60 _i0:4 at 8|temp_47_arithop _s60 _i0:4 at 4|temp_48_cmp _s58 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     236  n_0_1 = chi n_0_0:30 
              #                     237  row_0_7 = chi row_0_0:30 
              #                     238  line1_0_7 = chi line1_0_0:30 
              #                     239  ans_0_6 = chi ans_0_0:30 
              #                     240  sum_0_9 = chi sum_0_0:30 
              #                     241  line2_0_7 = chi line2_0_0:30 
              #                     186  alloc i32 [temp_44_ret_of_getint_56] 
              #                     189  alloc i32 [N_56] 
              #                     191  alloc i32 [temp_45_value_from_ptr_56] 
              #                     195  alloc i32 [temp_46_ret_of_getint_60] 
              #                     200  alloc i32 [temp_47_arithop_60] 
              #                     203  alloc i1 [temp_48_cmp_58] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     187  temp_44_ret_of_getint_56_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     188  (nop) 
              #                     282  N_56_1 = i32 temp_44_ret_of_getint_56_0 
              #                    occupy a0 with temp_44_ret_of_getint_56_0
              #                    occupy a1 with N_56_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     311  untrack temp_44_ret_of_getint_56_0 
              #                    occupy a0 with temp_44_ret_of_getint_56_0
              #                    release a0 with temp_44_ret_of_getint_56_0
              #                          jump label: while.head_59 
    j       .while.head_59
              #                    regtab     a1:Freed { symidx: N_56_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     205  label while.head_59: 
.while.head_59:
              #                     204  temp_48_cmp_58_0 = icmp i32 Sgt N_56_1, 0_0 
              #                    occupy a1 with N_56_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_48_cmp_58_0
    slt     a2,a0,a1
              #                    free a1
              #                    free a0
              #                    free a2
              #                     208  br i1 temp_48_cmp_58_0, label while.body_59, label while.exit_59 
              #                    occupy a2 with temp_48_cmp_58_0
              #                    free a2
              #                    occupy a2 with temp_48_cmp_58_0
    bnez    a2, .while.body_59
              #                    free a2
    j       .while.exit_59
              #                    regtab     a1:Freed { symidx: N_56_1, tracked: true } |     a2:Freed { symidx: temp_48_cmp_58_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     206  label while.body_59: 
.while.body_59:
              #                     196  temp_46_ret_of_getint_60_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with N_56_1
              #                    store to N_56_1 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with N_56_1
              #                    occupy a2 with temp_48_cmp_58_0
              #                    store to temp_48_cmp_58_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_48_cmp_58_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     197  store temp_46_ret_of_getint_60_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_46_ret_of_getint_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     198  n_0_3 = chi n_0_2:197 
              #                     199   Call void f_0(1_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_46_ret_of_getint_60_0
              #                    store to temp_46_ret_of_getint_60_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_46_ret_of_getint_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    f
              #                     242  mu ans_0_7:199 
              #                     243  mu row_0_8:199 
              #                     244  mu line1_0_8:199 
              #                     245  mu sum_0_10:199 
              #                     246  mu line2_0_8:199 
              #                     247  sum_0_11 = chi sum_0_10:199 
              #                     248  ans_0_8 = chi ans_0_7:199 
              #                     249  row_0_9 = chi row_0_8:199 
              #                     250  line2_0_9 = chi line2_0_8:199 
              #                     251  line1_0_9 = chi line1_0_8:199 
              #                     201  temp_47_arithop_60_0 = Sub i32 N_56_1, 1_0 
              #                    occupy a0 with N_56_1
              #                    load from N_56_1 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_47_arithop_60_0
              #                    regtab:    a0:Occupied { symidx: N_56_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_47_arithop_60_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     202  (nop) 
              #                     283  N_56_1 = i32 temp_47_arithop_60_0 
              #                    occupy a2 with temp_47_arithop_60_0
              #                    occupy a0 with N_56_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_59 
              #                    occupy a2 with temp_47_arithop_60_0
              #                    store to temp_47_arithop_60_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_47_arithop_60_0
              #                    occupy a0 with N_56_1
              #                    store to N_56_1 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with N_56_1
              #                    occupy a1 with N_56_1
              #                    load from N_56_1 in mem


    lw      a1,16(sp)
    j       .while.head_59
              #                    regtab     a1:Freed { symidx: N_56_1, tracked: true } |     a2:Freed { symidx: temp_48_cmp_58_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     207  label while.exit_59: 
.while.exit_59:
              #                     312  untrack N_56_1 
              #                    occupy a1 with N_56_1
              #                    release a1 with N_56_1
              #                     192  temp_45_value_from_ptr_56_0 = load *sum_0:ptr->i32 
              #                    occupy a0 with *sum_0
              #                       load label sum as ptr to reg
    la      a0, sum
              #                    occupy reg a0 with *sum_0
              #                    occupy a1 with temp_45_value_from_ptr_56_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     193  mu sum_0_10:192 
              #                     252  mu n_0_2:194 
              #                     253  mu row_0_8:194 
              #                     254  mu line1_0_8:194 
              #                     255  mu ans_0_7:194 
              #                     256  mu sum_0_10:194 
              #                     257  mu line2_0_8:194 
              #                     194  ret temp_45_value_from_ptr_56_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a1 with temp_45_value_from_ptr_56_0
              #                    store to temp_45_value_from_ptr_56_0 in mem offset legal
    sw      a1,12(sp)
              #                    release a1 with temp_45_value_from_ptr_56_0
              #                    occupy a0 with temp_45_value_from_ptr_56_0
              #                    load from temp_45_value_from_ptr_56_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,40
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl line2
              #                     26   global Array:i32:[Some(100_0)] line2_0 
    .type line2,@object
line2:
    .zero 400
    .align 4
    .globl line1
              #                     24   global Array:i32:[Some(50_0)] line1_0 
    .type line1,@object
line1:
    .zero 200
    .align 4
    .globl row
              #                     22   global Array:i32:[Some(50_0)] row_0 
    .type row,@object
row:
    .zero 200
    .align 4
    .globl n
              #                     20   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl sum
              #                     19   global i32 sum_0 
    .type sum,@object
sum:
    .word 0
    .align 4
    .globl ans
              #                     16   global Array:i32:[Some(50_0)] ans_0 
    .type ans,@object
ans:
    .zero 200
