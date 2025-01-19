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
              #                     26   Define printSolution_0 "color_19," -> printSolution_ret_0 
    .globl printSolution
    .type printSolution,@function
printSolution:
              #                    mem layout:|ra_printSolution:8 at 56|s0_printSolution:8 at 48|color:8 at 40|color:8 at 32|i _s21 _i1:4 at 28|none:4 at 24|temp_0_ptr_of_color_19:8 at 16|temp_1_ele_of_color_19 _s25 _i0:4 at 12|temp_2_arithop _s25 _i0:4 at 8|temp_3_cmp _s23 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-64
              #                    store to ra_printSolution_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_printSolution_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     36   alloc i32 [i_21] 
              #                     38   alloc ptr->i32 [temp_0_ptr_of_color_19_25] 
              #                     40   alloc i32 [temp_1_ele_of_color_19_25] 
              #                     45   alloc i32 [temp_2_arithop_25] 
              #                     48   alloc i1 [temp_3_cmp_23] 
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     25    
              #                     35   (nop) 
              #                     296  i_21_1 = i32 0_0 
              #                    occupy a1 with i_21_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_24 
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } |     a1:Freed { symidx: i_21_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     50   label while.head_24: 
.while.head_24:
              #                     49   temp_3_cmp_23_0 = icmp i32 Slt i_21_1, 4_0 
              #                    occupy a1 with i_21_1
              #                    occupy a2 with 4_0
    li      a2, 4
              #                    occupy a3 with temp_3_cmp_23_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     53   br i1 temp_3_cmp_23_0, label while.body_24, label while.exit_24 
              #                    occupy a3 with temp_3_cmp_23_0
              #                    free a3
              #                    occupy a3 with temp_3_cmp_23_0
    bnez    a3, .while.body_24
              #                    free a3
    j       .while.exit_24
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } |     a1:Freed { symidx: i_21_1, tracked: true } |     a3:Freed { symidx: temp_3_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     51   label while.body_24: 
.while.body_24:
              #                     39   temp_0_ptr_of_color_19_25 = GEP color_19:Array:i32:[None] [Some(i_21_1)] 
              #                    occupy a2 with temp_0_ptr_of_color_19_25
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_21_1
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with color_19
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     41   temp_1_ele_of_color_19_25_0 = load temp_0_ptr_of_color_19_25:ptr->i32 
              #                    occupy a2 with temp_0_ptr_of_color_19_25
              #                    occupy a5 with temp_1_ele_of_color_19_25_0
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                     42   mu color_19:41 
              #                     43    Call void putint_0(temp_1_ele_of_color_19_25_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with color_19
              #                    store to color_19 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with color_19
              #                    occupy a1 with i_21_1
              #                    store to i_21_1 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with i_21_1
              #                    occupy a2 with temp_0_ptr_of_color_19_25
              #                    store to temp_0_ptr_of_color_19_25 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_0_ptr_of_color_19_25
              #                    occupy a3 with temp_3_cmp_23_0
              #                    store to temp_3_cmp_23_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_3_cmp_23_0
              #                    occupy a5 with temp_1_ele_of_color_19_25_0
              #                    store to temp_1_ele_of_color_19_25_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_1_ele_of_color_19_25_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_ele_of_color_19_25_0_0
              #                    load from temp_1_ele_of_color_19_25_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     44    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     46   temp_2_arithop_25_0 = Add i32 i_21_1, 1_0 
              #                    occupy a0 with i_21_1
              #                    load from i_21_1 in mem


    lw      a0,28(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_2_arithop_25_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     47   (nop) 
              #                     297  i_21_1 = i32 temp_2_arithop_25_0 
              #                    occupy a2 with temp_2_arithop_25_0
              #                    occupy a0 with i_21_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_24 
              #                    occupy a0 with i_21_1
              #                    store to i_21_1 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with i_21_1
              #                    occupy a0 with color_19
              #                    load from color_19 in mem
    ld      a0,32(sp)
              #                    occupy a2 with temp_2_arithop_25_0
              #                    store to temp_2_arithop_25_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_2_arithop_25_0
              #                    occupy a1 with i_21_1
              #                    load from i_21_1 in mem


    lw      a1,28(sp)
    j       .while.head_24
              #                    regtab     a0:Freed { symidx: color_19, tracked: true } |     a1:Freed { symidx: i_21_1, tracked: true } |     a3:Freed { symidx: temp_3_cmp_23_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     52   label while.exit_24: 
.while.exit_24:
              #                     307  untrack color_19 
              #                    occupy a0 with color_19
              #                    release a0 with color_19
              #                     306  untrack i_21_1 
              #                    occupy a1 with i_21_1
              #                    release a1 with i_21_1
              #                     37    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a3 with temp_3_cmp_23_0
              #                    store to temp_3_cmp_23_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_3_cmp_23_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     55   label exit_2: 
.exit_2:
              #                     54   ret 
              #                    load from ra_printSolution_0 in mem
    ld      ra,56(sp)
              #                    load from s0_printSolution_0 in mem
    ld      s0,48(sp)
    addi    sp,sp,64
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     27   Define printMessage_0 "" -> printMessage_ret_0 
    .globl printMessage
    .type printMessage,@function
printMessage:
              #                    mem layout:|ra_printMessage:8 at 8|s0_printMessage:8 at 0
    addi    sp,sp,-16
              #                    store to ra_printMessage_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_printMessage_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     56    Call void putch_0(78_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_78_0_0
    li      a0, 78
              #                    arg load ended


    call    putch
              #                     57    Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     58    Call void putch_0(116_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_116_0_0
    li      a0, 116
              #                    arg load ended


    call    putch
              #                     59    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     60    Call void putch_0(101_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_101_0_0
    li      a0, 101
              #                    arg load ended


    call    putch
              #                     61    Call void putch_0(120_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_120_0_0
    li      a0, 120
              #                    arg load ended


    call    putch
              #                     62    Call void putch_0(105_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_105_0_0
    li      a0, 105
              #                    arg load ended


    call    putch
              #                     63    Call void putch_0(115_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_115_0_0
    li      a0, 115
              #                    arg load ended


    call    putch
              #                     64    Call void putch_0(116_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_116_0_0
    li      a0, 116
              #                    arg load ended


    call    putch
              #                          jump label: exit_8 
    j       .exit_8
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     66   label exit_8: 
.exit_8:
              #                     65   ret 
              #                    load from ra_printMessage_0 in mem
    ld      ra,8(sp)
              #                    load from s0_printMessage_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define isSafe_0 "graph_41,color_41," -> isSafe_ret_0 
    .globl isSafe
    .type isSafe,@function
isSafe:
              #                    mem layout:|ra_isSafe:8 at 112|s0_isSafe:8 at 104|graph:8 at 96|graph:8 at 88|color:8 at 80|color:8 at 72|i _s43 _i1:4 at 68|temp_4_arithop _s47 _i0:4 at 64|j _s47 _i1:4 at 60|temp_6_arithop _s51 _i0:4 at 56|temp_7_cmp _s45 _i0:1 at 55|temp_8_cmp _s49 _i0:1 at 54|none:6 at 48|temp_9_ptr_of_graph_41:8 at 40|temp_10_ele_of_graph_41 _s52 _i0:4 at 36|none:4 at 32|temp_11_ptr_of_color_41:8 at 24|temp_12_ele_of_color_41 _s52 _i0:4 at 20|none:4 at 16|temp_13_ptr_of_color_41:8 at 8|temp_14_ele_of_color_41 _s52 _i0:4 at 4|temp_15_cmp _s52 _i0:1 at 3|temp_16_i32_to_bool _s52 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-120
              #                    store to ra_isSafe_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_isSafe_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                     68   alloc i32 [i_43] 
              #                     71   alloc i32 [temp_4_arithop_47] 
              #                     74   alloc i32 [j_47] 
              #                     75   alloc i32 [temp_5_arithop_47] 
              #                     78   alloc i32 [temp_6_arithop_51] 
              #                     83   alloc i1 [temp_7_cmp_45] 
              #                     91   alloc i1 [temp_8_cmp_49] 
              #                     97   alloc ptr->i32 [temp_9_ptr_of_graph_41_52] 
              #                     99   alloc i32 [temp_10_ele_of_graph_41_52] 
              #                     102  alloc ptr->i32 [temp_11_ptr_of_color_41_52] 
              #                     104  alloc i32 [temp_12_ele_of_color_41_52] 
              #                     107  alloc ptr->i32 [temp_13_ptr_of_color_41_52] 
              #                     109  alloc i32 [temp_14_ele_of_color_41_52] 
              #                     112  alloc i1 [temp_15_cmp_52] 
              #                     114  alloc i1 [temp_16_i32_to_bool_52] 
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     28    
              #                     29    
              #                     67   (nop) 
              #                     298  i_43_1 = i32 0_0 
              #                    occupy a2 with i_43_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     85   label while.head_46: 
.while.head_46:
              #                     84   temp_7_cmp_45_0 = icmp i32 Slt i_43_1, 4_0 
              #                    occupy a2 with i_43_1
              #                    occupy a3 with 4_0
    li      a3, 4
              #                    occupy a4 with temp_7_cmp_45_0
    slt     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     88   br i1 temp_7_cmp_45_0, label while.body_46, label while.exit_46 
              #                    occupy a4 with temp_7_cmp_45_0
              #                    free a4
              #                    occupy a4 with temp_7_cmp_45_0
    bnez    a4, .while.body_46
              #                    free a4
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     86   label while.body_46: 
.while.body_46:
              #                     72   temp_4_arithop_47_0 = Add i32 i_43_1, 1_0 
              #                    occupy a2 with i_43_1
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a5 with temp_4_arithop_47_0
    ADDW    a5,a2,a3
              #                    free a2
              #                    free a3
              #                    free a5
              #                     73   (nop) 
              #                     103  temp_11_ptr_of_color_41_52 = GEP color_41:Array:i32:[None] [Some(i_43_1)] 
              #                    occupy a6 with temp_11_ptr_of_color_41_52
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_43_1
    mv      a7, a2
              #                    free a2
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy a1 with color_41
    add     a6,a6,a1
              #                    free a1
              #                    free a6
              #                     299  j_47_1 = i32 temp_4_arithop_47_0 
              #                    occupy a5 with temp_4_arithop_47_0
              #                    occupy s1 with j_47_1
    mv      s1, a5
              #                    free a5
              #                    free s1
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     s1:Freed { symidx: j_47_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     93   label while.head_50: 
.while.head_50:
              #                     92   temp_8_cmp_49_0 = icmp i32 Slt j_47_1, 4_0 
              #                    occupy s1 with j_47_1
              #                    occupy a3 with 4_0
    li      a3, 4
              #                    occupy a7 with temp_8_cmp_49_0
    slt     a7,s1,a3
              #                    free s1
              #                    free a3
              #                    free a7
              #                     96   br i1 temp_8_cmp_49_0, label while.body_50, label while.exit_50 
              #                    occupy a7 with temp_8_cmp_49_0
              #                    free a7
              #                    occupy a7 with temp_8_cmp_49_0
    bnez    a7, .while.body_50
              #                    free a7
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |     s1:Freed { symidx: j_47_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     94   label while.body_50: 
.while.body_50:
              #                     98   temp_9_ptr_of_graph_41_52 = GEP graph_41:Array:i32:[None, Some(4_0)] [Some(i_43_1), Some(j_47_1)] 
              #                    occupy a3 with temp_9_ptr_of_graph_41_52
    li      a3, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_43_1
    slli s2,a2,2
              #                    free a2
    add     a3,a3,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_47_1
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with j_47_1
              #                    store to j_47_1 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with j_47_1
    add     a3,a3,s3
              #                    free s3
    slli a3,a3,2
              #                    occupy a0 with graph_41
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     100  temp_10_ele_of_graph_41_52_0 = load temp_9_ptr_of_graph_41_52:ptr->i32 
              #                    occupy a3 with temp_9_ptr_of_graph_41_52
              #                    occupy s1 with temp_10_ele_of_graph_41_52_0
    lw      s1,0(a3)
              #                    free s1
              #                    occupy s1 with temp_10_ele_of_graph_41_52_0
              #                    store to temp_10_ele_of_graph_41_52_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_10_ele_of_graph_41_52_0
              #                    free a3
              #                     101  mu graph_41:100 
              #                     115  temp_16_i32_to_bool_52_0 = icmp i32 Ne temp_10_ele_of_graph_41_52_0, 0_0 
              #                    occupy s1 with temp_10_ele_of_graph_41_52_0
              #                    load from temp_10_ele_of_graph_41_52_0 in mem


    lw      s1,36(sp)
              #                    occupy s4 with 0_0
    li      s4, 0
              #                    occupy s5 with temp_16_i32_to_bool_52_0
    xor     s5,s1,s4
    snez    s5, s5
              #                    free s1
              #                    occupy s1 with temp_10_ele_of_graph_41_52_0
              #                    store to temp_10_ele_of_graph_41_52_0 in mem offset legal
    sw      s1,36(sp)
              #                    release s1 with temp_10_ele_of_graph_41_52_0
              #                    free s4
              #                    free s5
              #                    occupy s5 with temp_16_i32_to_bool_52_0
              #                    store to temp_16_i32_to_bool_52_0 in mem offset legal
    sb      s5,2(sp)
              #                    release s5 with temp_16_i32_to_bool_52_0
              #                     121  br i1 temp_16_i32_to_bool_52_0, label branch_short_circuit_p_true_267, label branch_short_circuit_c_false_267 
              #                    occupy s1 with temp_16_i32_to_bool_52_0
              #                    load from temp_16_i32_to_bool_52_0 in mem


    lb      s1,2(sp)
              #                    free s1
              #                    occupy s1 with temp_16_i32_to_bool_52_0
              #                    store to temp_16_i32_to_bool_52_0 in mem offset legal
    sb      s1,2(sp)
              #                    release s1 with temp_16_i32_to_bool_52_0
              #                    occupy s1 with temp_16_i32_to_bool_52_0
              #                    load from temp_16_i32_to_bool_52_0 in mem


    lb      s1,2(sp)
    bnez    s1, .branch_short_circuit_p_true_267
              #                    free s1
              #                    occupy s1 with temp_16_i32_to_bool_52_0
              #                    store to temp_16_i32_to_bool_52_0 in mem offset legal
    sb      s1,2(sp)
              #                    release s1 with temp_16_i32_to_bool_52_0
    j       .branch_short_circuit_c_false_267
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a3:Freed { symidx: temp_9_ptr_of_graph_41_52, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     118  label branch_short_circuit_p_true_267: 
.branch_short_circuit_p_true_267:
              #                     105  temp_12_ele_of_color_41_52_0 = load temp_11_ptr_of_color_41_52:ptr->i32 
              #                    occupy a6 with temp_11_ptr_of_color_41_52
              #                    occupy s1 with temp_12_ele_of_color_41_52_0
    lw      s1,0(a6)
              #                    free s1
              #                    occupy s1 with temp_12_ele_of_color_41_52_0
              #                    store to temp_12_ele_of_color_41_52_0 in mem offset legal
    sw      s1,20(sp)
              #                    release s1 with temp_12_ele_of_color_41_52_0
              #                    free a6
              #                     106  mu color_41:105 
              #                     108  temp_13_ptr_of_color_41_52 = GEP color_41:Array:i32:[None] [Some(j_47_1)] 
              #                    occupy s1 with temp_13_ptr_of_color_41_52
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with j_47_1
              #                    load from j_47_1 in mem


    lw      s3,60(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with j_47_1
              #                    store to j_47_1 in mem offset legal
    sw      s3,60(sp)
              #                    release s3 with j_47_1
    add     s1,s1,s2
              #                    free s2
    slli s1,s1,2
              #                    occupy a1 with color_41
    add     s1,s1,a1
              #                    free a1
              #                    occupy a1 with color_41
              #                    store to color_41 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with color_41
              #                    free s1
              #                     110  temp_14_ele_of_color_41_52_0 = load temp_13_ptr_of_color_41_52:ptr->i32 
              #                    occupy s1 with temp_13_ptr_of_color_41_52
              #                    occupy a1 with temp_14_ele_of_color_41_52_0
    lw      a1,0(s1)
              #                    free a1
              #                    occupy a1 with temp_14_ele_of_color_41_52_0
              #                    store to temp_14_ele_of_color_41_52_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_14_ele_of_color_41_52_0
              #                    free s1
              #                     111  mu color_41:110 
              #                     113  temp_15_cmp_52_0 = icmp i32 Eq temp_14_ele_of_color_41_52_0, temp_12_ele_of_color_41_52_0 
              #                    occupy a1 with temp_14_ele_of_color_41_52_0
              #                    load from temp_14_ele_of_color_41_52_0 in mem


    lw      a1,4(sp)
              #                    occupy s2 with temp_12_ele_of_color_41_52_0
              #                    load from temp_12_ele_of_color_41_52_0 in mem


    lw      s2,20(sp)
              #                    occupy s3 with temp_15_cmp_52_0
    xor     s3,a1,s2
    seqz    s3, s3
              #                    free a1
              #                    occupy a1 with temp_14_ele_of_color_41_52_0
              #                    store to temp_14_ele_of_color_41_52_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_14_ele_of_color_41_52_0
              #                    free s2
              #                    occupy s2 with temp_12_ele_of_color_41_52_0
              #                    store to temp_12_ele_of_color_41_52_0 in mem offset legal
    sw      s2,20(sp)
              #                    release s2 with temp_12_ele_of_color_41_52_0
              #                    free s3
              #                    occupy s3 with temp_15_cmp_52_0
              #                    store to temp_15_cmp_52_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_15_cmp_52_0
              #                     120  br i1 temp_15_cmp_52_0, label branch_short_circuit_c_true_267, label branch_short_circuit_c_false_267 
              #                    occupy a1 with temp_15_cmp_52_0
              #                    load from temp_15_cmp_52_0 in mem


    lb      a1,3(sp)
              #                    free a1
              #                    occupy a1 with temp_15_cmp_52_0
              #                    store to temp_15_cmp_52_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_15_cmp_52_0
              #                    occupy a1 with temp_15_cmp_52_0
              #                    load from temp_15_cmp_52_0 in mem


    lb      a1,3(sp)
    bnez    a1, .branch_short_circuit_c_true_267
              #                    free a1
              #                    occupy a1 with temp_15_cmp_52_0
              #                    store to temp_15_cmp_52_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_15_cmp_52_0
              #                    occupy s1 with temp_13_ptr_of_color_41_52
              #                    store to temp_13_ptr_of_color_41_52 in mem offset legal
    sd      s1,8(sp)
              #                    release s1 with temp_13_ptr_of_color_41_52
              #                    occupy a1 with color_41
              #                    load from color_41 in mem
    ld      a1,72(sp)
    j       .branch_short_circuit_c_false_267
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a3:Freed { symidx: temp_9_ptr_of_graph_41_52, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |     s1:Freed { symidx: temp_13_ptr_of_color_41_52, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     116  label branch_short_circuit_c_true_267: 
.branch_short_circuit_c_true_267:
              #                     319  untrack temp_6_arithop_51_0 
              #                     318  untrack temp_12_ele_of_color_41_52_0 
              #                     317  untrack temp_8_cmp_49_0 
              #                    occupy a7 with temp_8_cmp_49_0
              #                    release a7 with temp_8_cmp_49_0
              #                     316  untrack temp_14_ele_of_color_41_52_0 
              #                     315  untrack temp_16_i32_to_bool_52_0 
              #                     314  untrack temp_10_ele_of_graph_41_52_0 
              #                     313  untrack temp_9_ptr_of_graph_41_52 
              #                    occupy a3 with temp_9_ptr_of_graph_41_52
              #                    release a3 with temp_9_ptr_of_graph_41_52
              #                     312  untrack temp_15_cmp_52_0 
              #                     311  untrack temp_13_ptr_of_color_41_52 
              #                    occupy s1 with temp_13_ptr_of_color_41_52
              #                    release s1 with temp_13_ptr_of_color_41_52
              #                     82   ret 0_0 
              #                    load from ra_isSafe_0 in mem
    ld      ra,112(sp)
              #                    load from s0_isSafe_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with graph_41
              #                    store to graph_41 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with graph_41
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a3:Freed { symidx: temp_9_ptr_of_graph_41_52, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     117  label branch_short_circuit_c_false_267: 
.branch_short_circuit_c_false_267:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a3:Freed { symidx: temp_9_ptr_of_graph_41_52, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     79   temp_6_arithop_51_0 = Add i32 j_47_1, 1_0 
              #                    occupy s1 with j_47_1
              #                    load from j_47_1 in mem


    lw      s1,60(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_6_arithop_51_0
    ADDW    s3,s1,s2
              #                    free s1
              #                    occupy s1 with j_47_1
              #                    store to j_47_1 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with j_47_1
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_6_arithop_51_0
              #                    store to temp_6_arithop_51_0 in mem offset legal
    sw      s3,56(sp)
              #                    release s3 with temp_6_arithop_51_0
              #                     80   (nop) 
              #                     300  j_47_1 = i32 temp_6_arithop_51_0 
              #                    occupy s1 with temp_6_arithop_51_0
              #                    load from temp_6_arithop_51_0 in mem


    lw      s1,56(sp)
              #                    occupy s2 with j_47_1
    mv      s2, s1
              #                    free s1
              #                    occupy s1 with temp_6_arithop_51_0
              #                    store to temp_6_arithop_51_0 in mem offset legal
    sw      s1,56(sp)
              #                    release s1 with temp_6_arithop_51_0
              #                    free s2
              #                    occupy s2 with j_47_1
              #                    store to j_47_1 in mem offset legal
    sw      s2,60(sp)
              #                    release s2 with j_47_1
              #                          jump label: while.head_50 
              #                    occupy s1 with j_47_1
              #                    load from j_47_1 in mem


    lw      s1,60(sp)
              #                    occupy a7 with temp_8_cmp_49_0
              #                    store to temp_8_cmp_49_0 in mem offset legal
    sb      a7,54(sp)
              #                    release a7 with temp_8_cmp_49_0
              #                    occupy a3 with temp_9_ptr_of_graph_41_52
              #                    store to temp_9_ptr_of_graph_41_52 in mem offset legal
    sd      a3,40(sp)
              #                    release a3 with temp_9_ptr_of_graph_41_52
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |     a5:Freed { symidx: temp_4_arithop_47_0, tracked: true } |     a6:Freed { symidx: temp_11_ptr_of_color_41_52, tracked: true } |     a7:Freed { symidx: temp_8_cmp_49_0, tracked: true } |     s1:Freed { symidx: j_47_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     95   label while.exit_50: 
.while.exit_50:
              #                     76   (nop) 
              #                     77   (nop) 
              #                     301  i_43_1 = i32 temp_4_arithop_47_0 
              #                    occupy a5 with temp_4_arithop_47_0
              #                    occupy a2 with i_43_1
    mv      a2, a5
              #                    free a5
              #                    free a2
              #                          jump label: while.head_46 
              #                    occupy s1 with j_47_1
              #                    store to j_47_1 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with j_47_1
              #                    occupy a5 with temp_4_arithop_47_0
              #                    store to temp_4_arithop_47_0 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_4_arithop_47_0
              #                    occupy a4 with temp_7_cmp_45_0
              #                    store to temp_7_cmp_45_0 in mem offset legal
    sb      a4,55(sp)
              #                    release a4 with temp_7_cmp_45_0
              #                    occupy a7 with temp_8_cmp_49_0
              #                    store to temp_8_cmp_49_0 in mem offset legal
    sb      a7,54(sp)
              #                    release a7 with temp_8_cmp_49_0
              #                    occupy a6 with temp_11_ptr_of_color_41_52
              #                    store to temp_11_ptr_of_color_41_52 in mem offset legal
    sd      a6,24(sp)
              #                    release a6 with temp_11_ptr_of_color_41_52
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: graph_41, tracked: true } |     a1:Freed { symidx: color_41, tracked: true } |     a2:Freed { symidx: i_43_1, tracked: true } |     a4:Freed { symidx: temp_7_cmp_45_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     87   label while.exit_46: 
.while.exit_46:
              #                     310  untrack graph_41 
              #                    occupy a0 with graph_41
              #                    release a0 with graph_41
              #                     309  untrack color_41 
              #                    occupy a1 with color_41
              #                    release a1 with color_41
              #                     308  untrack i_43_1 
              #                    occupy a2 with i_43_1
              #                    release a2 with i_43_1
              #                     70   ret 1_0 
              #                    load from ra_isSafe_0 in mem
    ld      ra,112(sp)
              #                    load from s0_isSafe_0 in mem
    ld      s0,104(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     33   Define graphColoring_0 "graph_58,m_58_0,i_58_0,color_58," -> graphColoring_ret_0 
    .globl graphColoring
    .type graphColoring,@function
graphColoring:
              #                    mem layout:|ra_graphColoring:8 at 128|s0_graphColoring:8 at 120|graph:8 at 112|graph:8 at 104|m _s58 _i0:4 at 100|i _s58 _i0:4 at 96|color:8 at 88|color:8 at 80|color:8 at 72|color:8 at 64|color:8 at 56|j _s60 _i1:4 at 52|none:4 at 48|temp_17_ptr_of_color_58:8 at 40|temp_18_ptr_of_color_58:8 at 32|temp_19_arithop _s73 _i0:4 at 28|temp_20_cmp _s61 _i0:1 at 27|temp_21_cmp _s71 _i0:1 at 26|none:2 at 24|temp_22_arithop _s75 _i0:4 at 20|temp_23_ret_of_graphColoring _s75 _i0:4 at 16|temp_24_ _s2042 _i0:1 at 15|none:3 at 12|temp_25_ret_of_isSafe _s64 _i0:4 at 8|temp_26_ _s1762 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-136
              #                    store to ra_graphColoring_0 in mem offset legal
    sd      ra,128(sp)
              #                    store to s0_graphColoring_0 in mem offset legal
    sd      s0,120(sp)
    addi    s0,sp,136
              #                     123  alloc i32 [j_60] 
              #                     126  alloc ptr->i32 [temp_17_ptr_of_color_58_73] 
              #                     130  alloc ptr->i32 [temp_18_ptr_of_color_58_73] 
              #                     134  alloc i32 [temp_19_arithop_73] 
              #                     144  alloc i1 [temp_20_cmp_61] 
              #                     149  alloc i1 [temp_21_cmp_71] 
              #                     157  alloc i32 [temp_22_arithop_75] 
              #                     159  alloc i32 [temp_23_ret_of_graphColoring_75] 
              #                     161  alloc i1 [temp_24__2042] 
              #                     166  alloc i32 [temp_25_ret_of_isSafe_64] 
              #                     168  alloc i1 [temp_26__1762] 
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     31    
              #                     32    
              #                     145  temp_20_cmp_61_0 = icmp i32 Eq i_58_0, 4_0 
              #                    occupy a2 with i_58_0
              #                    occupy a4 with 4_0
    li      a4, 4
              #                    occupy a5 with temp_20_cmp_61_0
    xor     a5,a2,a4
    seqz    a5, a5
              #                    free a2
              #                    free a4
              #                    free a5
              #                     148  br i1 temp_20_cmp_61_0, label branch_true_62, label branch_false_62 
              #                    occupy a5 with temp_20_cmp_61_0
              #                    free a5
              #                    occupy a5 with temp_20_cmp_61_0
    bnez    a5, .branch_true_62
              #                    free a5
    j       .branch_false_62
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a5:Freed { symidx: temp_20_cmp_61_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     146  label branch_true_62: 
.branch_true_62:
              #                     324  untrack j_60_1 
              #                     323  untrack temp_20_cmp_61_0 
              #                    occupy a5 with temp_20_cmp_61_0
              #                    release a5 with temp_20_cmp_61_0
              #                     322  untrack m_58_0 
              #                    occupy a1 with m_58_0
              #                    release a1 with m_58_0
              #                     321  untrack i_58_0 
              #                    occupy a2 with i_58_0
              #                    release a2 with i_58_0
              #                     320  untrack temp_22_arithop_75_0 
              #                     167  temp_25_ret_of_isSafe_64_0 =  Call i32 isSafe_0(graph_58, color_58) 
              #                    saved register dumping to mem
              #                    occupy a0 with graph_58
              #                    store to graph_58 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with graph_58
              #                    occupy a3 with color_58
              #                    store to color_58 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with color_58
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_graph_58_0
              #                    load from graph_58 in mem
    ld      a0,104(sp)
              #                    occupy a1 with _anonymous_of_color_58_0
              #                    load from color_58 in mem
    ld      a1,56(sp)
              #                    arg load ended


    call    isSafe
              #                     329  untrack graph_58 
              #                     169  temp_26__1762_0 = icmp i32 Ne temp_25_ret_of_isSafe_64_0, 0_0 
              #                    occupy a0 with temp_25_ret_of_isSafe_64_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_26__1762_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     328  untrack temp_25_ret_of_isSafe_64_0 
              #                    occupy a0 with temp_25_ret_of_isSafe_64_0
              #                    release a0 with temp_25_ret_of_isSafe_64_0
              #                     172  br i1 temp_26__1762_0, label branch_true_65, label branch_false_65 
              #                    occupy a2 with temp_26__1762_0
              #                    free a2
              #                    occupy a2 with temp_26__1762_0
    bnez    a2, .branch_true_65
              #                    free a2
    j       .branch_false_65
              #                    regtab     a2:Freed { symidx: temp_26__1762_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     170  label branch_true_65: 
.branch_true_65:
              #                     330  untrack temp_26__1762_0 
              #                    occupy a2 with temp_26__1762_0
              #                    release a2 with temp_26__1762_0
              #                     141   Call void printSolution_0(color_58) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_color_58_0
              #                    load from color_58 in mem
    ld      a0,56(sp)
              #                    arg load ended


    call    printSolution
              #                     279  mu color_58:143 
              #                     332  untrack color_58 
              #                     143  ret 1_0 
              #                    load from ra_graphColoring_0 in mem
    ld      ra,128(sp)
              #                    load from s0_graphColoring_0 in mem
    ld      s0,120(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_26__1762_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     171  label branch_false_65: 
.branch_false_65:
              #                     331  untrack temp_26__1762_0 
              #                    occupy a2 with temp_26__1762_0
              #                    release a2 with temp_26__1762_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     280  mu color_58:140 
              #                     333  untrack color_58 
              #                     140  ret 0_0 
              #                    load from ra_graphColoring_0 in mem
    ld      ra,128(sp)
              #                    load from s0_graphColoring_0 in mem
    ld      s0,120(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a5:Freed { symidx: temp_20_cmp_61_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     147  label branch_false_62: 
.branch_false_62:
              #                     327  untrack temp_25_ret_of_isSafe_64_0 
              #                     326  untrack temp_26__1762_0 
              #                     325  untrack temp_20_cmp_61_0 
              #                    occupy a5 with temp_20_cmp_61_0
              #                    release a5 with temp_20_cmp_61_0
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     122  (nop) 
              #                     158  temp_22_arithop_75_0 = Add i32 i_58_0, 1_0 
              #                    occupy a2 with i_58_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_22_arithop_75_0
    ADDW    a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                     302  j_60_1 = i32 1_0 
              #                    occupy a6 with j_60_1
    li      a6, 1
              #                    free a6
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a5:Freed { symidx: temp_22_arithop_75_0, tracked: true } |     a6:Freed { symidx: j_60_1, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     151  label while.head_72: 
.while.head_72:
              #                     150  temp_21_cmp_71_0 = icmp i32 Sle j_60_1, m_58_0 
              #                    occupy a6 with j_60_1
              #                    occupy a1 with m_58_0
              #                    occupy a4 with temp_21_cmp_71_0
    slt     a4,a1,a6
    xori    a4,a4,1
              #                    free a6
              #                    free a1
              #                    free a4
              #                     154  br i1 temp_21_cmp_71_0, label while.body_72, label while.exit_72 
              #                    occupy a4 with temp_21_cmp_71_0
              #                    free a4
              #                    occupy a4 with temp_21_cmp_71_0
    bnez    a4, .while.body_72
              #                    free a4
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a4:Freed { symidx: temp_21_cmp_71_0, tracked: true } |     a5:Freed { symidx: temp_22_arithop_75_0, tracked: true } |     a6:Freed { symidx: j_60_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     152  label while.body_72: 
.while.body_72:
              #                     127  temp_17_ptr_of_color_58_73 = GEP color_58:ptr->i32 [Some(i_58_0)] 
              #                    occupy a7 with temp_17_ptr_of_color_58_73
    li      a7, 0
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_58_0
    mv      s1, a2
              #                    free a2
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy a3 with color_58
    add     a7,a7,a3
              #                    free a3
              #                    free a7
              #                     128  store j_60_1:i32 temp_17_ptr_of_color_58_73:ptr->i32 
              #                    occupy a7 with temp_17_ptr_of_color_58_73
              #                    occupy a6 with j_60_1
    sw      a6,0(a7)
              #                    free a6
              #                    free a7
              #                     129  color_58 = chi color_58:128 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a4:Freed { symidx: temp_21_cmp_71_0, tracked: true } |     a5:Freed { symidx: temp_22_arithop_75_0, tracked: true } |     a6:Freed { symidx: j_60_1, tracked: true } |     a7:Freed { symidx: temp_17_ptr_of_color_58_73, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     160  temp_23_ret_of_graphColoring_75_0 =  Call i32 graphColoring_0(graph_58, m_58_0, temp_22_arithop_75_0, color_58) 
              #                    saved register dumping to mem
              #                    occupy a0 with graph_58
              #                    store to graph_58 in mem offset legal
    sd      a0,104(sp)
              #                    release a0 with graph_58
              #                    occupy a1 with m_58_0
              #                    store to m_58_0 in mem offset legal
    sw      a1,100(sp)
              #                    release a1 with m_58_0
              #                    occupy a2 with i_58_0
              #                    store to i_58_0 in mem offset legal
    sw      a2,96(sp)
              #                    release a2 with i_58_0
              #                    occupy a3 with color_58
              #                    store to color_58 in mem offset legal
    sd      a3,56(sp)
              #                    release a3 with color_58
              #                    occupy a4 with temp_21_cmp_71_0
              #                    store to temp_21_cmp_71_0 in mem offset legal
    sb      a4,26(sp)
              #                    release a4 with temp_21_cmp_71_0
              #                    occupy a5 with temp_22_arithop_75_0
              #                    store to temp_22_arithop_75_0 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with temp_22_arithop_75_0
              #                    occupy a6 with j_60_1
              #                    store to j_60_1 in mem offset legal
    sw      a6,52(sp)
              #                    release a6 with j_60_1
              #                    occupy a7 with temp_17_ptr_of_color_58_73
              #                    store to temp_17_ptr_of_color_58_73 in mem offset legal
    sd      a7,40(sp)
              #                    release a7 with temp_17_ptr_of_color_58_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_graph_58_0
              #                    load from graph_58 in mem
    ld      a0,104(sp)
              #                    occupy a1 with _anonymous_of_m_58_0_0
              #                    load from m_58_0 in mem


    lw      a1,100(sp)
              #                    occupy a2 with _anonymous_of_temp_22_arithop_75_0_0
              #                    load from temp_22_arithop_75_0 in mem


    lw      a2,20(sp)
              #                    occupy a3 with _anonymous_of_color_58_0
              #                    load from color_58 in mem
    ld      a3,56(sp)
              #                    arg load ended


    call    graphColoring
              #                     162  temp_24__2042_0 = icmp i32 Ne temp_23_ret_of_graphColoring_75_0, 0_0 
              #                    occupy a0 with temp_23_ret_of_graphColoring_75_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_24__2042_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     165  br i1 temp_24__2042_0, label branch_true_76, label branch_false_76 
              #                    occupy a2 with temp_24__2042_0
              #                    free a2
              #                    occupy a2 with temp_24__2042_0
    bnez    a2, .branch_true_76
              #                    free a2
    j       .branch_false_76
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_graphColoring_75_0, tracked: true } |     a2:Freed { symidx: temp_24__2042_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     163  label branch_true_76: 
.branch_true_76:
              #                     344  untrack temp_23_ret_of_graphColoring_75_0 
              #                    occupy a0 with temp_23_ret_of_graphColoring_75_0
              #                    release a0 with temp_23_ret_of_graphColoring_75_0
              #                     343  untrack temp_19_arithop_73_0 
              #                     342  untrack temp_17_ptr_of_color_58_73 
              #                     341  untrack temp_18_ptr_of_color_58_73 
              #                     340  untrack temp_24__2042_0 
              #                    occupy a2 with temp_24__2042_0
              #                    release a2 with temp_24__2042_0
              #                     339  untrack temp_21_cmp_71_0 
              #                     281  mu color_58:138 
              #                     138  ret 1_0 
              #                    load from ra_graphColoring_0 in mem
    ld      ra,128(sp)
              #                    load from s0_graphColoring_0 in mem
    ld      s0,120(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_graphColoring_75_0, tracked: true } |     a2:Freed { symidx: temp_24__2042_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     164  label branch_false_76: 
.branch_false_76:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: temp_23_ret_of_graphColoring_75_0, tracked: true } |     a2:Freed { symidx: temp_24__2042_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     131  temp_18_ptr_of_color_58_73 = GEP color_58:ptr->i32 [Some(i_58_0)] 
              #                    occupy a1 with temp_18_ptr_of_color_58_73
    li      a1, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_58_0
              #                    load from i_58_0 in mem


    lw      a4,96(sp)
    mv      a3, a4
              #                    free a4
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a5 with color_58
              #                    load from color_58 in mem
    ld      a5,56(sp)
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                     132  store 0_0:i32 temp_18_ptr_of_color_58_73:ptr->i32 
              #                    occupy a1 with temp_18_ptr_of_color_58_73
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                     133  color_58 = chi color_58:132 
              #                     135  temp_19_arithop_73_0 = Add i32 j_60_1, 1_0 
              #                    occupy a7 with j_60_1
              #                    load from j_60_1 in mem


    lw      a7,52(sp)
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_19_arithop_73_0
    ADDW    s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                     136  (nop) 
              #                     303  j_60_1 = i32 temp_19_arithop_73_0 
              #                    occupy s2 with temp_19_arithop_73_0
              #                    occupy a7 with j_60_1
    mv      a7, s2
              #                    free s2
              #                    free a7
              #                          jump label: while.head_72 
              #                    occupy a7 with j_60_1
              #                    store to j_60_1 in mem offset legal
    sw      a7,52(sp)
              #                    release a7 with j_60_1
              #                    occupy a6 with j_60_1
              #                    load from j_60_1 in mem


    lw      a6,52(sp)
              #                    occupy a5 with color_58
              #                    store to color_58 in mem offset legal
    sd      a5,56(sp)
              #                    release a5 with color_58
              #                    occupy a5 with temp_22_arithop_75_0
              #                    load from temp_22_arithop_75_0 in mem


    lw      a5,20(sp)
              #                    occupy a0 with temp_23_ret_of_graphColoring_75_0
              #                    store to temp_23_ret_of_graphColoring_75_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_23_ret_of_graphColoring_75_0
              #                    occupy a0 with graph_58
              #                    load from graph_58 in mem
    ld      a0,104(sp)
              #                    occupy s2 with temp_19_arithop_73_0
              #                    store to temp_19_arithop_73_0 in mem offset legal
    sw      s2,28(sp)
              #                    release s2 with temp_19_arithop_73_0
              #                    occupy a1 with temp_18_ptr_of_color_58_73
              #                    store to temp_18_ptr_of_color_58_73 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_18_ptr_of_color_58_73
              #                    occupy a1 with m_58_0
              #                    load from m_58_0 in mem


    lw      a1,100(sp)
              #                    occupy a3 with color_58
              #                    load from color_58 in mem
    ld      a3,56(sp)
              #                    occupy a2 with temp_24__2042_0
              #                    store to temp_24__2042_0 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_24__2042_0
              #                    occupy a4 with i_58_0
              #                    store to i_58_0 in mem offset legal
    sw      a4,96(sp)
              #                    release a4 with i_58_0
              #                    occupy a2 with i_58_0
              #                    load from i_58_0 in mem


    lw      a2,96(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: graph_58, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: i_58_0, tracked: true } |     a3:Freed { symidx: color_58, tracked: true } |     a4:Freed { symidx: temp_21_cmp_71_0, tracked: true } |     a5:Freed { symidx: temp_22_arithop_75_0, tracked: true } |     a6:Freed { symidx: j_60_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     153  label while.exit_72: 
.while.exit_72:
              #                     338  untrack m_58_0 
              #                    occupy a1 with m_58_0
              #                    release a1 with m_58_0
              #                     337  untrack temp_22_arithop_75_0 
              #                    occupy a5 with temp_22_arithop_75_0
              #                    release a5 with temp_22_arithop_75_0
              #                     336  untrack graph_58 
              #                    occupy a0 with graph_58
              #                    release a0 with graph_58
              #                     335  untrack j_60_1 
              #                    occupy a6 with j_60_1
              #                    release a6 with j_60_1
              #                     334  untrack i_58_0 
              #                    occupy a2 with i_58_0
              #                    release a2 with i_58_0
              #                     282  mu color_58:125 
              #                     345  untrack color_58 
              #                    occupy a3 with color_58
              #                    release a3 with color_58
              #                     125  ret 0_0 
              #                    load from ra_graphColoring_0 in mem
    ld      ra,128(sp)
              #                    load from s0_graphColoring_0 in mem
    ld      s0,120(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,136
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     34   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 272|s0_main:8 at 264|temp_27_array_init_ptr:8 at 256|temp_28_array_init_ptr:8 at 248|temp_29_array_init_ptr:8 at 240|temp_30_array_init_ptr:8 at 232|temp_31_array_init_ptr:8 at 224|temp_32_array_init_ptr:8 at 216|temp_33_array_init_ptr:8 at 208|temp_34_array_init_ptr:8 at 200|temp_35_array_init_ptr:8 at 192|temp_36_array_init_ptr:8 at 184|temp_37_array_init_ptr:8 at 176|temp_38_array_init_ptr:8 at 168|temp_39_array_init_ptr:8 at 160|temp_40_array_init_ptr:8 at 152|temp_41_array_init_ptr:8 at 144|temp_42_array_init_ptr:8 at 136|temp_43_array_init_ptr:8 at 128|graph:64 at 64|color:16 at 48|i _s82 _i1:4 at 44|none:4 at 40|temp_44_ptr_of_color_82:8 at 32|temp_45_arithop _s87 _i0:4 at 28|temp_46_cmp _s85 _i0:1 at 27|none:3 at 24|temp_47_ele_ptr_of_graph_82:8 at 16|temp_48_ele_ptr_of_color_82:8 at 8|temp_49_ret_of_graphColoring _s90 _i0:4 at 4|temp_50_booltrans _s90 _i0:1 at 3|temp_51_logicnot _s90 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-280
              #                    store to ra_main_0 in mem offset legal
    sd      ra,272(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,264(sp)
    addi    s0,sp,280
              #                     174  alloc ptr->i32 [temp_27_array_init_ptr_82] 
              #                     177  alloc ptr->i32 [temp_28_array_init_ptr_82] 
              #                     181  alloc ptr->i32 [temp_29_array_init_ptr_82] 
              #                     185  alloc ptr->i32 [temp_30_array_init_ptr_82] 
              #                     189  alloc ptr->i32 [temp_31_array_init_ptr_82] 
              #                     193  alloc ptr->i32 [temp_32_array_init_ptr_82] 
              #                     197  alloc ptr->i32 [temp_33_array_init_ptr_82] 
              #                     201  alloc ptr->i32 [temp_34_array_init_ptr_82] 
              #                     205  alloc ptr->i32 [temp_35_array_init_ptr_82] 
              #                     209  alloc ptr->i32 [temp_36_array_init_ptr_82] 
              #                     213  alloc ptr->i32 [temp_37_array_init_ptr_82] 
              #                     217  alloc ptr->i32 [temp_38_array_init_ptr_82] 
              #                     221  alloc ptr->i32 [temp_39_array_init_ptr_82] 
              #                     225  alloc ptr->i32 [temp_40_array_init_ptr_82] 
              #                     229  alloc ptr->i32 [temp_41_array_init_ptr_82] 
              #                     233  alloc ptr->i32 [temp_42_array_init_ptr_82] 
              #                     237  alloc ptr->i32 [temp_43_array_init_ptr_82] 
              #                     241  alloc Array:i32:[Some(4_0), Some(4_0)] [graph_82] 
              #                     243  alloc i32 [m_82] 
              #                     245  alloc Array:i32:[Some(4_0)] [color_82] 
              #                     247  alloc i32 [i_82] 
              #                     251  alloc ptr->i32 [temp_44_ptr_of_color_82_87] 
              #                     255  alloc i32 [temp_45_arithop_87] 
              #                     258  alloc i1 [temp_46_cmp_85] 
              #                     264  alloc ptr->Array:i32:[Some(4_0)] [temp_47_ele_ptr_of_graph_82_90] 
              #                     266  alloc ptr->i32 [temp_48_ele_ptr_of_color_82_90] 
              #                     268  alloc i32 [temp_49_ret_of_graphColoring_90] 
              #                     270  alloc i1 [temp_50_booltrans_90] 
              #                     272  alloc i1 [temp_51_logicnot_90] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     173   
              #                     175  temp_27_array_init_ptr_82 = GEP graph_82_0:Array:i32:[Some(4_0), Some(4_0)] [] 
              #                    occupy a0 with temp_27_array_init_ptr_82
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     176   Call void memset_0(temp_27_array_init_ptr_82, 0_0, 64_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_27_array_init_ptr_82
              #                    store to temp_27_array_init_ptr_82 in mem offset legal
    sd      a0,256(sp)
              #                    release a0 with temp_27_array_init_ptr_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_array_init_ptr_82_0
              #                    load from temp_27_array_init_ptr_82 in mem
    ld      a0,256(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_64_0_0
    li      a2, 64
              #                    arg load ended


    call    memset
              #                     347  untrack temp_27_array_init_ptr_82 
              #                     283  mu graph_82_0:176 
              #                     284  graph_82_1 = chi graph_82_0:176 
              #                     178  temp_28_array_init_ptr_82 = GEP graph_82_1:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(0_0)] 
              #                    occupy a0 with temp_28_array_init_ptr_82
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 4
    add     a0,a0,a1
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     179  store 1_0:i32 temp_28_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_28_array_init_ptr_82
              #                    occupy a3 with 1_0
    li      a3, 1
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     357  untrack temp_28_array_init_ptr_82 
              #                    occupy a0 with temp_28_array_init_ptr_82
              #                    release a0 with temp_28_array_init_ptr_82
              #                     180  graph_82_2 = chi graph_82_1:179 
              #                     182  temp_29_array_init_ptr_82 = GEP graph_82_2:Array:i32:[Some(4_0), Some(4_0)] [Some(3_0), Some(3_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_82
    li      a0, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 12
    add     a0,a0,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 3
    add     a0,a0,a5
              #                    free a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     183  store 0_0:i32 temp_29_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_29_array_init_ptr_82
              #                    occupy a6 with 0_0
    li      a6, 0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     358  untrack temp_29_array_init_ptr_82 
              #                    occupy a0 with temp_29_array_init_ptr_82
              #                    release a0 with temp_29_array_init_ptr_82
              #                     184  graph_82_3 = chi graph_82_2:183 
              #                     186  temp_30_array_init_ptr_82 = GEP graph_82_3:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(1_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_82
    li      a0, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a0,a0,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 1
    add     a0,a0,s1
              #                    free s1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     187  store 1_0:i32 temp_30_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_30_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     355  untrack temp_30_array_init_ptr_82 
              #                    occupy a0 with temp_30_array_init_ptr_82
              #                    release a0 with temp_30_array_init_ptr_82
              #                     188  graph_82_4 = chi graph_82_3:187 
              #                     190  temp_31_array_init_ptr_82 = GEP graph_82_4:Array:i32:[Some(4_0), Some(4_0)] [Some(3_0), Some(1_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_82
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 12
    add     a0,a0,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 1
    add     a0,a0,s3
              #                    free s3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     191  store 0_0:i32 temp_31_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_82
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     348  untrack temp_31_array_init_ptr_82 
              #                    occupy a0 with temp_31_array_init_ptr_82
              #                    release a0 with temp_31_array_init_ptr_82
              #                     192  graph_82_5 = chi graph_82_4:191 
              #                     194  temp_32_array_init_ptr_82 = GEP graph_82_5:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_82
    li      a0, 0
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s4, 0
    add     a0,a0,s4
              #                    free s4
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s5, 0
    add     a0,a0,s5
              #                    free s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     195  store 0_0:i32 temp_32_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_82
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     346  untrack temp_32_array_init_ptr_82 
              #                    occupy a0 with temp_32_array_init_ptr_82
              #                    release a0 with temp_32_array_init_ptr_82
              #                     196  graph_82_6 = chi graph_82_5:195 
              #                     198  temp_33_array_init_ptr_82 = GEP graph_82_6:Array:i32:[Some(4_0), Some(4_0)] [Some(2_0), Some(1_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_82
    li      a0, 0
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s6, 8
    add     a0,a0,s6
              #                    free s6
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     199  store 1_0:i32 temp_33_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_33_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     360  untrack temp_33_array_init_ptr_82 
              #                    occupy a0 with temp_33_array_init_ptr_82
              #                    release a0 with temp_33_array_init_ptr_82
              #                     200  graph_82_7 = chi graph_82_6:199 
              #                     202  temp_34_array_init_ptr_82 = GEP graph_82_7:Array:i32:[Some(4_0), Some(4_0)] [Some(3_0), Some(0_0)] 
              #                    occupy a0 with temp_34_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 12
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     203  store 1_0:i32 temp_34_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_34_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     354  untrack temp_34_array_init_ptr_82 
              #                    occupy a0 with temp_34_array_init_ptr_82
              #                    release a0 with temp_34_array_init_ptr_82
              #                     204  graph_82_8 = chi graph_82_7:203 
              #                     206  temp_35_array_init_ptr_82 = GEP graph_82_8:Array:i32:[Some(4_0), Some(4_0)] [Some(2_0), Some(2_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     207  store 0_0:i32 temp_35_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_35_array_init_ptr_82
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     353  untrack temp_35_array_init_ptr_82 
              #                    occupy a0 with temp_35_array_init_ptr_82
              #                    release a0 with temp_35_array_init_ptr_82
              #                     208  graph_82_9 = chi graph_82_8:207 
              #                     210  temp_36_array_init_ptr_82 = GEP graph_82_9:Array:i32:[Some(4_0), Some(4_0)] [Some(3_0), Some(2_0)] 
              #                    occupy a0 with temp_36_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 12
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     211  store 1_0:i32 temp_36_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_36_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     352  untrack temp_36_array_init_ptr_82 
              #                    occupy a0 with temp_36_array_init_ptr_82
              #                    release a0 with temp_36_array_init_ptr_82
              #                     212  graph_82_10 = chi graph_82_9:211 
              #                     214  temp_37_array_init_ptr_82 = GEP graph_82_10:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(2_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     215  store 1_0:i32 temp_37_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_37_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     351  untrack temp_37_array_init_ptr_82 
              #                    occupy a0 with temp_37_array_init_ptr_82
              #                    release a0 with temp_37_array_init_ptr_82
              #                     216  graph_82_11 = chi graph_82_10:215 
              #                     218  temp_38_array_init_ptr_82 = GEP graph_82_11:Array:i32:[Some(4_0), Some(4_0)] [Some(2_0), Some(3_0)] 
              #                    occupy a0 with temp_38_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     219  store 1_0:i32 temp_38_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_38_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     361  untrack temp_38_array_init_ptr_82 
              #                    occupy a0 with temp_38_array_init_ptr_82
              #                    release a0 with temp_38_array_init_ptr_82
              #                     220  graph_82_12 = chi graph_82_11:219 
              #                     222  temp_39_array_init_ptr_82 = GEP graph_82_12:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(2_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 2
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     223  store 1_0:i32 temp_39_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_39_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     359  untrack temp_39_array_init_ptr_82 
              #                    occupy a0 with temp_39_array_init_ptr_82
              #                    release a0 with temp_39_array_init_ptr_82
              #                     224  graph_82_13 = chi graph_82_12:223 
              #                     226  temp_40_array_init_ptr_82 = GEP graph_82_13:Array:i32:[Some(4_0), Some(4_0)] [Some(0_0), Some(3_0)] 
              #                    occupy a0 with temp_40_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     227  store 1_0:i32 temp_40_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_40_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     356  untrack temp_40_array_init_ptr_82 
              #                    occupy a0 with temp_40_array_init_ptr_82
              #                    release a0 with temp_40_array_init_ptr_82
              #                     228  graph_82_14 = chi graph_82_13:227 
              #                     230  temp_41_array_init_ptr_82 = GEP graph_82_14:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(3_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 3
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     231  store 0_0:i32 temp_41_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_41_array_init_ptr_82
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     362  untrack temp_41_array_init_ptr_82 
              #                    occupy a0 with temp_41_array_init_ptr_82
              #                    release a0 with temp_41_array_init_ptr_82
              #                     232  graph_82_15 = chi graph_82_14:231 
              #                     234  temp_42_array_init_ptr_82 = GEP graph_82_15:Array:i32:[Some(4_0), Some(4_0)] [Some(2_0), Some(0_0)] 
              #                    occupy a0 with temp_42_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 8
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 0
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     235  store 1_0:i32 temp_42_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_42_array_init_ptr_82
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
    sw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                     349  untrack temp_42_array_init_ptr_82 
              #                    occupy a0 with temp_42_array_init_ptr_82
              #                    release a0 with temp_42_array_init_ptr_82
              #                     236  graph_82_16 = chi graph_82_15:235 
              #                     238  temp_43_array_init_ptr_82 = GEP graph_82_16:Array:i32:[Some(4_0), Some(4_0)] [Some(1_0), Some(1_0)] 
              #                    occupy a0 with temp_43_array_init_ptr_82
    li      a0, 0
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 4
    add     a0,a0,s7
              #                    free s7
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s7, 1
    add     a0,a0,s7
              #                    free s7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                     239  store 0_0:i32 temp_43_array_init_ptr_82:ptr->Array:i32:[Some(4_0)] 
              #                    occupy a0 with temp_43_array_init_ptr_82
              #                    found literal reg Some(a6) already exist with 0_0
              #                    occupy a6 with 0_0
    sw      a6,0(a0)
              #                    free a6
              #                    free a0
              #                     350  untrack temp_43_array_init_ptr_82 
              #                    occupy a0 with temp_43_array_init_ptr_82
              #                    release a0 with temp_43_array_init_ptr_82
              #                     240  graph_82_17 = chi graph_82_16:239 
              #                     242  (nop) 
              #                     244   
              #                     246  (nop) 
              #                     304  i_82_1 = i32 0_0 
              #                    occupy a0 with i_82_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_86 
    j       .while.head_86
              #                    regtab     a0:Freed { symidx: i_82_1, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     260  label while.head_86: 
.while.head_86:
              #                     259  temp_46_cmp_85_0 = icmp i32 Slt i_82_1, 4_0 
              #                    occupy a0 with i_82_1
              #                    occupy a1 with 4_0
    li      a1, 4
              #                    occupy a2 with temp_46_cmp_85_0
    slt     a2,a0,a1
              #                    free a0
              #                    occupy a0 with i_82_1
              #                    store to i_82_1 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with i_82_1
              #                    free a1
              #                    free a2
              #                     263  br i1 temp_46_cmp_85_0, label while.body_86, label while.exit_86 
              #                    occupy a2 with temp_46_cmp_85_0
              #                    free a2
              #                    occupy a2 with temp_46_cmp_85_0
    bnez    a2, .while.body_86
              #                    free a2
    j       .while.exit_86
              #                    regtab     a2:Freed { symidx: temp_46_cmp_85_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     261  label while.body_86: 
.while.body_86:
              #                     252  temp_44_ptr_of_color_82_87 = GEP color_82_1:Array:i32:[Some(4_0)] [Some(i_82_1)] 
              #                    occupy a0 with temp_44_ptr_of_color_82_87
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_82_1
              #                    load from i_82_1 in mem


    lw      a3,44(sp)
    mv      a1, a3
              #                    free a3
              #                    occupy a3 with i_82_1
              #                    store to i_82_1 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with i_82_1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,48
              #                    free a0
              #                    occupy a0 with temp_44_ptr_of_color_82_87
              #                    store to temp_44_ptr_of_color_82_87 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_44_ptr_of_color_82_87
              #                     253  store 0_0:i32 temp_44_ptr_of_color_82_87:ptr->i32 
              #                    occupy a0 with temp_44_ptr_of_color_82_87
              #                    load from temp_44_ptr_of_color_82_87 in mem
    ld      a0,32(sp)
              #                    occupy a1 with 0_0
    li      a1, 0
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                    occupy a0 with temp_44_ptr_of_color_82_87
              #                    store to temp_44_ptr_of_color_82_87 in mem offset legal
    sd      a0,32(sp)
              #                    release a0 with temp_44_ptr_of_color_82_87
              #                     254  color_82_2 = chi color_82_1:253 
              #                     256  temp_45_arithop_87_0 = Add i32 i_82_1, 1_0 
              #                    occupy a0 with i_82_1
              #                    load from i_82_1 in mem


    lw      a0,44(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_45_arithop_87_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    occupy a0 with i_82_1
              #                    store to i_82_1 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with i_82_1
              #                    free a1
              #                    free a3
              #                    occupy a3 with temp_45_arithop_87_0
              #                    store to temp_45_arithop_87_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_45_arithop_87_0
              #                     257  (nop) 
              #                     305  i_82_1 = i32 temp_45_arithop_87_0 
              #                    occupy a0 with temp_45_arithop_87_0
              #                    load from temp_45_arithop_87_0 in mem


    lw      a0,28(sp)
              #                    occupy a1 with i_82_1
    mv      a1, a0
              #                    free a0
              #                    occupy a0 with temp_45_arithop_87_0
              #                    store to temp_45_arithop_87_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_45_arithop_87_0
              #                    free a1
              #                    occupy a1 with i_82_1
              #                    store to i_82_1 in mem offset legal
    sw      a1,44(sp)
              #                    release a1 with i_82_1
              #                          jump label: while.head_86 
              #                    occupy a0 with i_82_1
              #                    load from i_82_1 in mem


    lw      a0,44(sp)
              #                    occupy a2 with temp_46_cmp_85_0
              #                    store to temp_46_cmp_85_0 in mem offset legal
    sb      a2,27(sp)
              #                    release a2 with temp_46_cmp_85_0
    j       .while.head_86
              #                    regtab     a2:Freed { symidx: temp_46_cmp_85_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     262  label while.exit_86: 
.while.exit_86:
              #                     363  untrack i_82_1 
              #                     265  temp_47_ele_ptr_of_graph_82_90 = GEP graph_82_17:Array:i32:[Some(4_0), Some(4_0)] [] 
              #                    occupy a0 with temp_47_ele_ptr_of_graph_82_90
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,64
              #                    free a0
              #                    occupy a0 with temp_47_ele_ptr_of_graph_82_90
              #                    store to temp_47_ele_ptr_of_graph_82_90 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_47_ele_ptr_of_graph_82_90
              #                     267  temp_48_ele_ptr_of_color_82_90 = GEP color_82_1:Array:i32:[Some(4_0)] [] 
              #                    occupy a0 with temp_48_ele_ptr_of_color_82_90
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,48
              #                    free a0
              #                    occupy a0 with temp_48_ele_ptr_of_color_82_90
              #                    store to temp_48_ele_ptr_of_color_82_90 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_48_ele_ptr_of_color_82_90
              #                     269  temp_49_ret_of_graphColoring_90_0 =  Call i32 graphColoring_0(temp_47_ele_ptr_of_graph_82_90, 3_0, 0_0, temp_48_ele_ptr_of_color_82_90) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_46_cmp_85_0
              #                    store to temp_46_cmp_85_0 in mem offset legal
    sb      a2,27(sp)
              #                    release a2 with temp_46_cmp_85_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_ele_ptr_of_graph_82_90_0
              #                    load from temp_47_ele_ptr_of_graph_82_90 in mem
    ld      a0,16(sp)
              #                    occupy a1 with _anonymous_of_3_0_0
    li      a1, 3
              #                    occupy a2 with _anonymous_of_0_0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_48_ele_ptr_of_color_82_90_0
              #                    load from temp_48_ele_ptr_of_color_82_90 in mem
    ld      a3,8(sp)
              #                    arg load ended


    call    graphColoring
              #                     365  untrack temp_47_ele_ptr_of_graph_82_90 
              #                     364  untrack temp_48_ele_ptr_of_color_82_90 
              #                     285  mu color_82_1:269 
              #                     286  mu graph_82_17:269 
              #                     287  graph_82_18 = chi graph_82_17:269 
              #                     288  color_82_3 = chi color_82_1:269 
              #                     271  temp_50_booltrans_90_0 = icmp i32 Ne temp_49_ret_of_graphColoring_90_0, 0_0 
              #                    occupy a0 with temp_49_ret_of_graphColoring_90_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_50_booltrans_90_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    occupy a0 with temp_49_ret_of_graphColoring_90_0
              #                    store to temp_49_ret_of_graphColoring_90_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_49_ret_of_graphColoring_90_0
              #                    free a1
              #                    free a2
              #                     366  untrack temp_49_ret_of_graphColoring_90_0 
              #                     273  temp_51_logicnot_90_0 = xor i1 temp_50_booltrans_90_0, true 
              #                    occupy a2 with temp_50_booltrans_90_0
              #                    occupy a0 with temp_51_logicnot_90_0
    seqz    a0, a2
              #                    free a2
              #                    occupy a2 with temp_50_booltrans_90_0
              #                    store to temp_50_booltrans_90_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_50_booltrans_90_0
              #                    free a0
              #                     367  untrack temp_50_booltrans_90_0 
              #                     276  br i1 temp_51_logicnot_90_0, label branch_true_91, label branch_false_91 
              #                    occupy a0 with temp_51_logicnot_90_0
              #                    free a0
              #                    occupy a0 with temp_51_logicnot_90_0
    bnez    a0, .branch_true_91
              #                    free a0
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: temp_51_logicnot_90_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     274  label branch_true_91: 
.branch_true_91:
              #                     368  untrack temp_51_logicnot_90_0 
              #                    occupy a0 with temp_51_logicnot_90_0
              #                    release a0 with temp_51_logicnot_90_0
              #                     250   Call void printMessage_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    printMessage
              #                          jump label: branch_false_91 
              #                    occupy a0 with temp_51_logicnot_90_0
              #                    load from temp_51_logicnot_90_0 in mem


    lb      a0,2(sp)
    j       .branch_false_91
              #                    regtab     a0:Freed { symidx: temp_51_logicnot_90_0, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     275  label branch_false_91: 
.branch_false_91:
              #                     369  untrack temp_51_logicnot_90_0 
              #                    occupy a0 with temp_51_logicnot_90_0
              #                    release a0 with temp_51_logicnot_90_0
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:6,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     249  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,272(sp)
              #                    load from s0_main_0 in mem
    ld      s0,264(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,280
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl LF
              #                     23   global i32 LF_0 
    .type LF,@object
LF:
    .word 10
    .align 4
    .globl space
              #                     20   global i32 space_0 
    .type space,@object
space:
    .word 32
    .align 4
    .globl V
              #                     17   global i32 V_0 
    .type V,@object
V:
    .word 4
