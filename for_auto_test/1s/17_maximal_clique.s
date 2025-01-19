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
              #                     28   Define is_clique_0 "num_20_0," -> is_clique_ret_0 
    .globl is_clique
    .type is_clique,@function
is_clique:
              #                    mem layout:|ra_is_clique:8 at 80|s0_is_clique:8 at 72|num _s20 _i0:4 at 68|i _s22 _i1:4 at 64|temp_0_arithop _s26 _i0:4 at 60|j _s26 _i1:4 at 56|temp_2_arithop _s30 _i0:4 at 52|temp_3_cmp _s24 _i0:1 at 51|temp_4_cmp _s28 _i0:1 at 50|none:2 at 48|temp_5_ptr_of_*store_0:8 at 40|temp_6_ele_of_*store_0 _s31 _i0:4 at 36|none:4 at 32|temp_7_ptr_of_*store_0:8 at 24|temp_8_ele_of_*store_0 _s31 _i0:4 at 20|none:4 at 16|temp_9_ptr_of_*graph_0:8 at 8|temp_10_ele_of_*graph_0 _s31 _i0:4 at 4|temp_11_cmp _s31 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-88
              #                    store to ra_is_clique_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_is_clique_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     32   alloc i32 [i_22] 
              #                     35   alloc i32 [temp_0_arithop_26] 
              #                     38   alloc i32 [j_26] 
              #                     39   alloc i32 [temp_1_arithop_26] 
              #                     42   alloc i32 [temp_2_arithop_30] 
              #                     47   alloc i1 [temp_3_cmp_24] 
              #                     55   alloc i1 [temp_4_cmp_28] 
              #                     61   alloc ptr->i32 [temp_5_ptr_of_*store_0_31] 
              #                     63   alloc i32 [temp_6_ele_of_*store_0_31] 
              #                     66   alloc ptr->i32 [temp_7_ptr_of_*store_0_31] 
              #                     68   alloc i32 [temp_8_ele_of_*store_0_31] 
              #                     71   alloc ptr->i32 [temp_9_ptr_of_*graph_0_31] 
              #                     73   alloc i32 [temp_10_ele_of_*graph_0_31] 
              #                     76   alloc i1 [temp_11_cmp_31] 
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     31   (nop) 
              #                     248  i_22_1 = i32 1_0 
              #                    occupy a1 with i_22_1
    li      a1, 1
              #                    free a1
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     49   label while.head_25: 
.while.head_25:
              #                     48   temp_3_cmp_24_0 = icmp i32 Slt i_22_1, num_20_0 
              #                    occupy a1 with i_22_1
              #                    occupy a0 with num_20_0
              #                    occupy a2 with temp_3_cmp_24_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     52   br i1 temp_3_cmp_24_0, label while.body_25, label while.exit_25 
              #                    occupy a2 with temp_3_cmp_24_0
              #                    free a2
              #                    occupy a2 with temp_3_cmp_24_0
    bnez    a2, .while.body_25
              #                    free a2
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     50   label while.body_25: 
.while.body_25:
              #                     36   temp_0_arithop_26_0 = Add i32 i_22_1, 1_0 
              #                    occupy a1 with i_22_1
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_0_arithop_26_0
    ADDW    a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     37   (nop) 
              #                     67   temp_7_ptr_of_*store_0_31 = GEP *store_0:Array:i32:[None] [Some(i_22_1)] 
              #                    occupy a5 with temp_7_ptr_of_*store_0_31
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_22_1
    mv      a6, a1
              #                    free a1
    add     a5,a5,a6
              #                    free a6
    slli a5,a5,2
              #                    occupy a7 with *store_0
              #                       load label store as ptr to reg
    la      a7, store
              #                    occupy reg a7 with *store_0
    add     a5,a5,a7
              #                    free a7
              #                    free a5
              #                     249  j_26_1 = i32 temp_0_arithop_26_0 
              #                    occupy a4 with temp_0_arithop_26_0
              #                    occupy s1 with j_26_1
    mv      s1, a4
              #                    free a4
              #                    free s1
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     57   label while.head_29: 
.while.head_29:
              #                     56   temp_4_cmp_28_0 = icmp i32 Slt j_26_1, num_20_0 
              #                    occupy s1 with j_26_1
              #                    occupy a0 with num_20_0
              #                    occupy a3 with temp_4_cmp_28_0
    slt     a3,s1,a0
              #                    free s1
              #                    free a0
              #                    free a3
              #                     60   br i1 temp_4_cmp_28_0, label while.body_29, label while.exit_29 
              #                    occupy a3 with temp_4_cmp_28_0
              #                    free a3
              #                    occupy a3 with temp_4_cmp_28_0
    bnez    a3, .while.body_29
              #                    free a3
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_4_cmp_28_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     58   label while.body_29: 
.while.body_29:
              #                     62   temp_5_ptr_of_*store_0_31 = GEP *store_0:Array:i32:[None] [Some(j_26_1)] 
              #                    occupy a6 with temp_5_ptr_of_*store_0_31
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with j_26_1
    mv      a7, s1
              #                    free s1
    add     a6,a6,a7
              #                    free a7
    slli a6,a6,2
              #                    occupy s2 with *store_0
              #                       load label store as ptr to reg
    la      s2, store
              #                    occupy reg s2 with *store_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                     64   temp_6_ele_of_*store_0_31_0 = load temp_5_ptr_of_*store_0_31:ptr->i32 
              #                    occupy a6 with temp_5_ptr_of_*store_0_31
              #                    occupy s3 with temp_6_ele_of_*store_0_31_0
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                     65   mu store_0_0:64 
              #                     69   temp_8_ele_of_*store_0_31_0 = load temp_7_ptr_of_*store_0_31:ptr->i32 
              #                    occupy a5 with temp_7_ptr_of_*store_0_31
              #                    occupy s4 with temp_8_ele_of_*store_0_31_0
    lw      s4,0(a5)
              #                    free s4
              #                    occupy s4 with temp_8_ele_of_*store_0_31_0
              #                    store to temp_8_ele_of_*store_0_31_0 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_8_ele_of_*store_0_31_0
              #                    free a5
              #                     70   mu store_0_0:69 
              #                     72   temp_9_ptr_of_*graph_0_31 = GEP *graph_0:Array:i32:[None, Some(30_0)] [Some(temp_8_ele_of_*store_0_31_0), Some(temp_6_ele_of_*store_0_31_0)] 
              #                    occupy s4 with temp_9_ptr_of_*graph_0_31
    li      s4, 0
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s6 with 30_0
    li      s6, 30
              #                    occupy s7 with temp_8_ele_of_*store_0_31_0
              #                    load from temp_8_ele_of_*store_0_31_0 in mem


    lw      s7,20(sp)
    mul     s5,s6,s7
              #                    free s6
              #                    free s7
              #                    occupy s7 with temp_8_ele_of_*store_0_31_0
              #                    store to temp_8_ele_of_*store_0_31_0 in mem offset legal
    sw      s7,20(sp)
              #                    release s7 with temp_8_ele_of_*store_0_31_0
    add     s4,s4,s5
              #                    free s5
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_6_ele_of_*store_0_31_0
    mv      s5, s3
              #                    free s3
              #                    occupy s3 with temp_6_ele_of_*store_0_31_0
              #                    store to temp_6_ele_of_*store_0_31_0 in mem offset legal
    sw      s3,36(sp)
              #                    release s3 with temp_6_ele_of_*store_0_31_0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s3 with *graph_0
              #                       load label graph as ptr to reg
    la      s3, graph
              #                    occupy reg s3 with *graph_0
    add     s4,s4,s3
              #                    free s3
              #                    free s4
              #                     74   temp_10_ele_of_*graph_0_31_0 = load temp_9_ptr_of_*graph_0_31:ptr->i32 
              #                    occupy s4 with temp_9_ptr_of_*graph_0_31
              #                    occupy s3 with temp_10_ele_of_*graph_0_31_0
    lw      s3,0(s4)
              #                    free s3
              #                    occupy s3 with temp_10_ele_of_*graph_0_31_0
              #                    store to temp_10_ele_of_*graph_0_31_0 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_10_ele_of_*graph_0_31_0
              #                    free s4
              #                     75   mu graph_0_0:74 
              #                     77   temp_11_cmp_31_0 = icmp i32 Eq temp_10_ele_of_*graph_0_31_0, 0_0 
              #                    occupy s3 with temp_10_ele_of_*graph_0_31_0
              #                    load from temp_10_ele_of_*graph_0_31_0 in mem


    lw      s3,4(sp)
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s6 with temp_11_cmp_31_0
    xor     s6,s3,s5
    seqz    s6, s6
              #                    free s3
              #                    occupy s3 with temp_10_ele_of_*graph_0_31_0
              #                    store to temp_10_ele_of_*graph_0_31_0 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_10_ele_of_*graph_0_31_0
              #                    free s5
              #                    free s6
              #                    occupy s6 with temp_11_cmp_31_0
              #                    store to temp_11_cmp_31_0 in mem offset legal
    sb      s6,3(sp)
              #                    release s6 with temp_11_cmp_31_0
              #                     80   br i1 temp_11_cmp_31_0, label branch_true_32, label branch_false_32 
              #                    occupy s3 with temp_11_cmp_31_0
              #                    load from temp_11_cmp_31_0 in mem


    lb      s3,3(sp)
              #                    free s3
              #                    occupy s3 with temp_11_cmp_31_0
              #                    store to temp_11_cmp_31_0 in mem offset legal
    sb      s3,3(sp)
              #                    release s3 with temp_11_cmp_31_0
              #                    occupy a7 with temp_11_cmp_31_0
              #                    load from temp_11_cmp_31_0 in mem


    lb      a7,3(sp)
    bnez    a7, .branch_true_32
              #                    free a7
              #                    occupy a7 with temp_11_cmp_31_0
              #                    store to temp_11_cmp_31_0 in mem offset legal
    sb      a7,3(sp)
              #                    release a7 with temp_11_cmp_31_0
    j       .branch_false_32
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_4_cmp_28_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     a6:Freed { symidx: temp_5_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |     s4:Freed { symidx: temp_9_ptr_of_*graph_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     78   label branch_true_32: 
.branch_true_32:
              #                     278  untrack temp_10_ele_of_*graph_0_31_0 
              #                     277  untrack temp_5_ptr_of_*store_0_31 
              #                    occupy a6 with temp_5_ptr_of_*store_0_31
              #                    release a6 with temp_5_ptr_of_*store_0_31
              #                     276  untrack temp_4_cmp_28_0 
              #                    occupy a3 with temp_4_cmp_28_0
              #                    release a3 with temp_4_cmp_28_0
              #                     275  untrack temp_11_cmp_31_0 
              #                     274  untrack temp_8_ele_of_*store_0_31_0 
              #                     273  untrack temp_2_arithop_30_0 
              #                     272  untrack temp_9_ptr_of_*graph_0_31 
              #                    occupy s4 with temp_9_ptr_of_*graph_0_31
              #                    release s4 with temp_9_ptr_of_*graph_0_31
              #                     271  untrack temp_6_ele_of_*store_0_31_0 
              #                     46   ret 0_0 
              #                    load from ra_is_clique_0 in mem
    ld      ra,80(sp)
              #                    load from s0_is_clique_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with num_20_0
              #                    store to num_20_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with num_20_0
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_4_cmp_28_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     a6:Freed { symidx: temp_5_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |     s4:Freed { symidx: temp_9_ptr_of_*graph_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                     79   label branch_false_32: 
.branch_false_32:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_4_cmp_28_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     a6:Freed { symidx: temp_5_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |     s4:Freed { symidx: temp_9_ptr_of_*graph_0_31, tracked: true } |  released_gpr_count:5,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     43   temp_2_arithop_30_0 = Add i32 j_26_1, 1_0 
              #                    occupy s1 with j_26_1
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with temp_2_arithop_30_0
    ADDW    s2,s1,a7
              #                    free s1
              #                    occupy s1 with j_26_1
              #                    store to j_26_1 in mem offset legal
    sw      s1,56(sp)
              #                    release s1 with j_26_1
              #                    free a7
              #                    free s2
              #                     44   (nop) 
              #                     250  j_26_1 = i32 temp_2_arithop_30_0 
              #                    occupy s2 with temp_2_arithop_30_0
              #                    occupy a7 with j_26_1
    mv      a7, s2
              #                    free s2
              #                    occupy s2 with temp_2_arithop_30_0
              #                    store to temp_2_arithop_30_0 in mem offset legal
    sw      s2,52(sp)
              #                    release s2 with temp_2_arithop_30_0
              #                    free a7
              #                          jump label: while.head_29 
              #                    occupy s4 with temp_9_ptr_of_*graph_0_31
              #                    store to temp_9_ptr_of_*graph_0_31 in mem offset legal
    sd      s4,8(sp)
              #                    release s4 with temp_9_ptr_of_*graph_0_31
              #                    occupy a3 with temp_4_cmp_28_0
              #                    store to temp_4_cmp_28_0 in mem offset legal
    sb      a3,50(sp)
              #                    release a3 with temp_4_cmp_28_0
              #                    occupy a7 with j_26_1
              #                    store to j_26_1 in mem offset legal
    sw      a7,56(sp)
              #                    release a7 with j_26_1
              #                    occupy s1 with j_26_1
              #                    load from j_26_1 in mem


    lw      s1,56(sp)
              #                    occupy a6 with temp_5_ptr_of_*store_0_31
              #                    store to temp_5_ptr_of_*store_0_31 in mem offset legal
    sd      a6,40(sp)
              #                    release a6 with temp_5_ptr_of_*store_0_31
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |     a3:Freed { symidx: temp_4_cmp_28_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_26_0, tracked: true } |     a5:Freed { symidx: temp_7_ptr_of_*store_0_31, tracked: true } |     s1:Freed { symidx: j_26_1, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     59   label while.exit_29: 
.while.exit_29:
              #                     40   (nop) 
              #                     41   (nop) 
              #                     251  i_22_1 = i32 temp_0_arithop_26_0 
              #                    occupy a4 with temp_0_arithop_26_0
              #                    occupy a1 with i_22_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_25 
              #                    occupy a5 with temp_7_ptr_of_*store_0_31
              #                    store to temp_7_ptr_of_*store_0_31 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_7_ptr_of_*store_0_31
              #                    occupy a3 with temp_4_cmp_28_0
              #                    store to temp_4_cmp_28_0 in mem offset legal
    sb      a3,50(sp)
              #                    release a3 with temp_4_cmp_28_0
              #                    occupy a2 with temp_3_cmp_24_0
              #                    store to temp_3_cmp_24_0 in mem offset legal
    sb      a2,51(sp)
              #                    release a2 with temp_3_cmp_24_0
              #                    occupy a4 with temp_0_arithop_26_0
              #                    store to temp_0_arithop_26_0 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with temp_0_arithop_26_0
              #                    occupy s1 with j_26_1
              #                    store to j_26_1 in mem offset legal
    sw      s1,56(sp)
              #                    release s1 with j_26_1
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: num_20_0, tracked: true } |     a1:Freed { symidx: i_22_1, tracked: true } |     a2:Freed { symidx: temp_3_cmp_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     51   label while.exit_25: 
.while.exit_25:
              #                     270  untrack num_20_0 
              #                    occupy a0 with num_20_0
              #                    release a0 with num_20_0
              #                     269  untrack i_22_1 
              #                    occupy a1 with i_22_1
              #                    release a1 with i_22_1
              #                     34   ret 1_0 
              #                    load from ra_is_clique_0 in mem
    ld      ra,80(sp)
              #                    load from s0_is_clique_0 in mem
    ld      s0,72(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define maxCliques_0 "i_37_0,k_37_0," -> maxCliques_ret_0 
    .globl maxCliques
    .type maxCliques,@function
maxCliques:
              #                    mem layout:|ra_maxCliques:8 at 80|s0_maxCliques:8 at 72|i _s37 _i0:4 at 68|k _s37 _i0:4 at 64|max_ _s39 _i1:4 at 60|max_ _s39 _i2:4 at 56|max_ _s39 _i3:4 at 52|max_ _s39 _i5:4 at 48|max_ _s39 _i6:4 at 44|j _s39 _i1:4 at 40|temp_12_ptr_of_*store_0:8 at 32|temp_13_arithop _s45 _i0:4 at 28|temp_15_ret_of_maxCliques _s49 _i0:4 at 24|temp_16_value_from_ptr _s43 _i0:4 at 20|temp_17_cmp _s43 _i0:1 at 19|none:3 at 16|temp_18_arithop _s47 _i0:4 at 12|temp_19_ret_of_is_clique _s47 _i0:4 at 8|temp_20_ _s1181 _i0:1 at 7|temp_21_cmp _s50 _i0:1 at 6|temp_22_cmp _s54 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-88
              #                    store to ra_maxCliques_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_maxCliques_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     217  store_0_1 = chi store_0_0:29 
              #                     82   alloc i32 [max__39] 
              #                     84   alloc i32 [j_39] 
              #                     88   alloc ptr->i32 [temp_12_ptr_of_*store_0_45] 
              #                     92   alloc i32 [temp_13_arithop_45] 
              #                     95   alloc i32 [temp_14_arithop_49] 
              #                     97   alloc i32 [temp_15_ret_of_maxCliques_49] 
              #                     100  alloc i32 [tmp_49] 
              #                     103  alloc i32 [temp_16_value_from_ptr_43] 
              #                     106  alloc i1 [temp_17_cmp_43] 
              #                     114  alloc i32 [temp_18_arithop_47] 
              #                     116  alloc i32 [temp_19_ret_of_is_clique_47] 
              #                     118  alloc i1 [temp_20__1181] 
              #                     123  alloc i1 [temp_21_cmp_50] 
              #                     128  alloc i1 [temp_22_cmp_54] 
              #                    regtab     a0:Freed { symidx: i_37_0, tracked: true } |     a1:Freed { symidx: k_37_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     81   (nop) 
              #                     83   (nop) 
              #                     85   (nop) 
              #                     104  temp_16_value_from_ptr_43_0 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_16_value_from_ptr_43_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     105  mu n_0_0:104 
              #                     89   temp_12_ptr_of_*store_0_45 = GEP *store_0:ptr->i32 [Some(k_37_0)] 
              #                    occupy a4 with temp_12_ptr_of_*store_0_45
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with k_37_0
    mv      a5, a1
              #                    free a1
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
              #                    occupy a6 with *store_0
              #                       load label store as ptr to reg
    la      a6, store
              #                    occupy reg a6 with *store_0
    add     a4,a4,a6
              #                    free a6
              #                    free a4
              #                     115  temp_18_arithop_47_0 = Add i32 k_37_0, 1_0 
              #                    occupy a1 with k_37_0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s1 with temp_18_arithop_47_0
    ADDW    s1,a1,a7
              #                    free a1
              #                    free a7
              #                    free s1
              #                     102  max__39_2 = i32 k_37_0 
              #                    occupy a1 with k_37_0
              #                    occupy s2 with max__39_2
    mv      s2, a1
              #                    free a1
              #                    free s2
              #                     96   (nop) 
              #                     255  j_39_1 = i32 1_0 
              #                    occupy s3 with j_39_1
    li      s3, 1
              #                    free s3
              #                     256  max__39_1 = i32 0_0 
              #                    occupy s4 with max__39_1
    li      s4, 0
              #                    free s4
              #                          jump label: while.head_44 
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: i_37_0, tracked: true } |     a1:Freed { symidx: k_37_0, tracked: true } |     a3:Freed { symidx: temp_16_value_from_ptr_43_0, tracked: true } |     a4:Freed { symidx: temp_12_ptr_of_*store_0_45, tracked: true } |     s1:Freed { symidx: temp_18_arithop_47_0, tracked: true } |     s2:Freed { symidx: max__39_2, tracked: true } |     s3:Freed { symidx: j_39_1, tracked: true } |     s4:Freed { symidx: max__39_1, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     108  label while.head_44: 
.while.head_44:
              #                     107  temp_17_cmp_43_0 = icmp i32 Sle j_39_1, temp_16_value_from_ptr_43_0 
              #                    occupy s3 with j_39_1
              #                    occupy a3 with temp_16_value_from_ptr_43_0
              #                    occupy a2 with temp_17_cmp_43_0
    slt     a2,a3,s3
    xori    a2,a2,1
              #                    free s3
              #                    free a3
              #                    free a2
              #                     111  br i1 temp_17_cmp_43_0, label while.body_44, label while.exit_44 
              #                    occupy a2 with temp_17_cmp_43_0
              #                    free a2
              #                    occupy a2 with temp_17_cmp_43_0
    bnez    a2, .while.body_44
              #                    free a2
    j       .while.exit_44
              #                    regtab     a0:Freed { symidx: i_37_0, tracked: true } |     a1:Freed { symidx: k_37_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_43_0, tracked: true } |     a3:Freed { symidx: temp_16_value_from_ptr_43_0, tracked: true } |     a4:Freed { symidx: temp_12_ptr_of_*store_0_45, tracked: true } |     s1:Freed { symidx: temp_18_arithop_47_0, tracked: true } |     s2:Freed { symidx: max__39_2, tracked: true } |     s3:Freed { symidx: j_39_1, tracked: true } |     s4:Freed { symidx: max__39_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     109  label while.body_44: 
.while.body_44:
              #                     90   store j_39_1:i32 temp_12_ptr_of_*store_0_45:ptr->i32 
              #                    occupy a4 with temp_12_ptr_of_*store_0_45
              #                    occupy s3 with j_39_1
    sw      s3,0(a4)
              #                    free s3
              #                    free a4
              #                     91   store_0_3 = chi store_0_2:90 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: i_37_0, tracked: true } |     a1:Freed { symidx: k_37_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_43_0, tracked: true } |     a3:Freed { symidx: temp_16_value_from_ptr_43_0, tracked: true } |     a4:Freed { symidx: temp_12_ptr_of_*store_0_45, tracked: true } |     s1:Freed { symidx: temp_18_arithop_47_0, tracked: true } |     s2:Freed { symidx: max__39_2, tracked: true } |     s3:Freed { symidx: j_39_1, tracked: true } |     s4:Freed { symidx: max__39_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     117  temp_19_ret_of_is_clique_47_0 =  Call i32 is_clique_0(temp_18_arithop_47_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_18_arithop_47_0
              #                    store to temp_18_arithop_47_0 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_18_arithop_47_0
              #                    occupy s2 with max__39_2
              #                    store to max__39_2 in mem offset legal
    sw      s2,56(sp)
              #                    release s2 with max__39_2
              #                    occupy s3 with j_39_1
              #                    store to j_39_1 in mem offset legal
    sw      s3,40(sp)
              #                    release s3 with j_39_1
              #                    occupy s4 with max__39_1
              #                    store to max__39_1 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with max__39_1
              #                    occupy a0 with i_37_0
              #                    store to i_37_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_37_0
              #                    occupy a1 with k_37_0
              #                    store to k_37_0 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with k_37_0
              #                    occupy a2 with temp_17_cmp_43_0
              #                    store to temp_17_cmp_43_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_17_cmp_43_0
              #                    occupy a3 with temp_16_value_from_ptr_43_0
              #                    store to temp_16_value_from_ptr_43_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_16_value_from_ptr_43_0
              #                    occupy a4 with temp_12_ptr_of_*store_0_45
              #                    store to temp_12_ptr_of_*store_0_45 in mem offset legal
    sd      a4,32(sp)
              #                    release a4 with temp_12_ptr_of_*store_0_45
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_arithop_47_0_0
              #                    load from temp_18_arithop_47_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    is_clique
              #                     218  mu store_0_3:117 
              #                     219  mu graph_0_0:117 
              #                     119  temp_20__1181_0 = icmp i32 Ne temp_19_ret_of_is_clique_47_0, 0_0 
              #                    occupy a0 with temp_19_ret_of_is_clique_47_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_20__1181_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     122  br i1 temp_20__1181_0, label branch_true_48, label UP_2_0 
              #                    occupy a2 with temp_20__1181_0
              #                    free a2
              #                    occupy a2 with temp_20__1181_0
    bnez    a2, .branch_true_48
              #                    free a2
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47_0, tracked: true } |     a2:Freed { symidx: temp_20__1181_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     120  label branch_true_48: 
.branch_true_48:
              #                     287  untrack temp_19_ret_of_is_clique_47_0 
              #                    occupy a0 with temp_19_ret_of_is_clique_47_0
              #                    release a0 with temp_19_ret_of_is_clique_47_0
              #                     286  untrack temp_20__1181_0 
              #                    occupy a2 with temp_20__1181_0
              #                    release a2 with temp_20__1181_0
              #                     285  untrack temp_17_cmp_43_0 
              #                     124  temp_21_cmp_50_0 = icmp i32 Sgt k_37_0, max__39_1 
              #                    occupy a0 with k_37_0
              #                    load from k_37_0 in mem


    lw      a0,64(sp)
              #                    occupy a1 with max__39_1
              #                    load from max__39_1 in mem


    lw      a1,60(sp)
              #                    occupy a2 with temp_21_cmp_50_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     127  br i1 temp_21_cmp_50_0, label branch_true_51, label UP_30_0 
              #                    occupy a2 with temp_21_cmp_50_0
              #                    free a2
              #                    occupy a2 with temp_21_cmp_50_0
    bnez    a2, .branch_true_51
              #                    free a2
    j       .UP_30_0
              #                    regtab     a0:Freed { symidx: k_37_0, tracked: true } |     a1:Freed { symidx: max__39_1, tracked: true } |     a2:Freed { symidx: temp_21_cmp_50_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     125  label branch_true_51: 
.branch_true_51:
              #                     290  untrack temp_21_cmp_50_0 
              #                    occupy a2 with temp_21_cmp_50_0
              #                    release a2 with temp_21_cmp_50_0
              #                     289  untrack max__39_6 
              #                     288  untrack temp_13_arithop_45_0 
              #                     257  max__39_3 = i32 max__39_2 
              #                    occupy a2 with max__39_2
              #                    load from max__39_2 in mem


    lw      a2,56(sp)
              #                    occupy a3 with max__39_3
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: branch_false_51 
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: k_37_0, tracked: true } |     a1:Freed { symidx: max__39_1, tracked: true } |     a2:Freed { symidx: max__39_2, tracked: true } |     a3:Freed { symidx: max__39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     126  label branch_false_51: 
.branch_false_51:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: k_37_0, tracked: true } |     a1:Freed { symidx: max__39_1, tracked: true } |     a2:Freed { symidx: max__39_2, tracked: true } |     a3:Freed { symidx: max__39_3, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     98   temp_15_ret_of_maxCliques_49_0 =  Call i32 maxCliques_0(j_39_1, temp_18_arithop_47_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with k_37_0
              #                    store to k_37_0 in mem offset legal
    sw      a0,64(sp)
              #                    release a0 with k_37_0
              #                    occupy a1 with max__39_1
              #                    store to max__39_1 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with max__39_1
              #                    occupy a2 with max__39_2
              #                    store to max__39_2 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with max__39_2
              #                    occupy a3 with max__39_3
              #                    store to max__39_3 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with max__39_3
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_j_39_1_0
              #                    load from j_39_1 in mem


    lw      a0,40(sp)
              #                    occupy a1 with _anonymous_of_temp_18_arithop_47_0_0
              #                    load from temp_18_arithop_47_0 in mem


    lw      a1,12(sp)
              #                    arg load ended


    call    maxCliques
              #                     220  mu store_0_3:98 
              #                     221  mu graph_0_0:98 
              #                     222  store_0_4 = chi store_0_3:98 
              #                     99   (nop) 
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_maxCliques_49_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     129  temp_22_cmp_54_0 = icmp i32 Sgt temp_15_ret_of_maxCliques_49_0, max__39_3 
              #                    occupy a0 with temp_15_ret_of_maxCliques_49_0
              #                    occupy a1 with max__39_3
              #                    load from max__39_3 in mem


    lw      a1,52(sp)
              #                    occupy a2 with temp_22_cmp_54_0
    slt     a2,a1,a0
              #                    free a0
              #                    free a1
              #                    free a2
              #                     132  br i1 temp_22_cmp_54_0, label branch_true_55, label UP_14_0 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    free a2
              #                    occupy a2 with temp_22_cmp_54_0
    bnez    a2, .branch_true_55
              #                    free a2
    j       .UP_14_0
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_maxCliques_49_0, tracked: true } |     a1:Freed { symidx: max__39_3, tracked: true } |     a2:Freed { symidx: temp_22_cmp_54_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     130  label branch_true_55: 
.branch_true_55:
              #                     293  untrack max__39_3 
              #                    occupy a1 with max__39_3
              #                    release a1 with max__39_3
              #                     292  untrack temp_22_cmp_54_0 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    release a2 with temp_22_cmp_54_0
              #                     101  (nop) 
              #                     258  max__39_5 = i32 temp_15_ret_of_maxCliques_49_0 
              #                    occupy a0 with temp_15_ret_of_maxCliques_49_0
              #                    occupy a1 with max__39_5
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     296  untrack temp_15_ret_of_maxCliques_49_0 
              #                    occupy a0 with temp_15_ret_of_maxCliques_49_0
              #                    release a0 with temp_15_ret_of_maxCliques_49_0
              #                          jump label: branch_false_55 
    j       .branch_false_55
              #                    regtab     a1:Freed { symidx: max__39_5, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     131  label branch_false_55: 
.branch_false_55:
              #                     259  max__39_6 = i32 max__39_5 
              #                    occupy a1 with max__39_5
              #                    occupy a0 with max__39_6
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     297  untrack max__39_5 
              #                    occupy a1 with max__39_5
              #                    release a1 with max__39_5
              #                          jump label: branch_false_48 
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: max__39_6, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     121  label branch_false_48: 
.branch_false_48:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: max__39_6, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     93   temp_13_arithop_45_0 = Add i32 j_39_1, 1_0 
              #                    occupy a1 with j_39_1
              #                    load from j_39_1 in mem


    lw      a1,40(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_13_arithop_45_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     94   (nop) 
              #                     260  j_39_1 = i32 temp_13_arithop_45_0 
              #                    occupy a3 with temp_13_arithop_45_0
              #                    occupy a1 with j_39_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                     261  max__39_1 = i32 max__39_6 
              #                    occupy a0 with max__39_6
              #                    occupy a4 with max__39_1
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: while.head_44 
              #                    occupy a1 with j_39_1
              #                    store to j_39_1 in mem offset legal
    sw      a1,40(sp)
              #                    release a1 with j_39_1
              #                    occupy a1 with k_37_0
              #                    load from k_37_0 in mem


    lw      a1,64(sp)
              #                    occupy a0 with max__39_6
              #                    store to max__39_6 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with max__39_6
              #                    occupy a0 with i_37_0
              #                    load from i_37_0 in mem


    lw      a0,68(sp)
              #                    occupy s3 with j_39_1
              #                    load from j_39_1 in mem


    lw      s3,40(sp)
              #                    occupy s1 with temp_18_arithop_47_0
              #                    load from temp_18_arithop_47_0 in mem


    lw      s1,12(sp)
              #                    occupy a4 with max__39_1
              #                    store to max__39_1 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with max__39_1
              #                    occupy s4 with max__39_1
              #                    load from max__39_1 in mem


    lw      s4,60(sp)
              #                    occupy a4 with temp_12_ptr_of_*store_0_45
              #                    load from temp_12_ptr_of_*store_0_45 in mem
    ld      a4,32(sp)
              #                    occupy s2 with max__39_2
              #                    load from max__39_2 in mem


    lw      s2,56(sp)
              #                    occupy a3 with temp_13_arithop_45_0
              #                    store to temp_13_arithop_45_0 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_13_arithop_45_0
              #                    occupy a3 with temp_16_value_from_ptr_43_0
              #                    load from temp_16_value_from_ptr_43_0 in mem


    lw      a3,20(sp)
    j       .while.head_44
              #                    regtab     a0:Freed { symidx: temp_15_ret_of_maxCliques_49_0, tracked: true } |     a1:Freed { symidx: max__39_3, tracked: true } |     a2:Freed { symidx: temp_22_cmp_54_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     253  label UP_14_0: 
.UP_14_0:
              #                     295  untrack temp_15_ret_of_maxCliques_49_0 
              #                    occupy a0 with temp_15_ret_of_maxCliques_49_0
              #                    release a0 with temp_15_ret_of_maxCliques_49_0
              #                     294  untrack temp_22_cmp_54_0 
              #                    occupy a2 with temp_22_cmp_54_0
              #                    release a2 with temp_22_cmp_54_0
              #                     262  max__39_5 = i32 max__39_3 
              #                    occupy a1 with max__39_3
              #                    occupy a0 with max__39_5
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                     298  untrack max__39_3 
              #                    occupy a1 with max__39_3
              #                    release a1 with max__39_3
              #                          jump label: branch_false_55 
              #                    occupy a0 with max__39_5
              #                    store to max__39_5 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with max__39_5
              #                    occupy a1 with max__39_5
              #                    load from max__39_5 in mem


    lw      a1,48(sp)
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: k_37_0, tracked: true } |     a1:Freed { symidx: max__39_1, tracked: true } |     a2:Freed { symidx: temp_21_cmp_50_0, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     252  label UP_30_0: 
.UP_30_0:
              #                     291  untrack temp_21_cmp_50_0 
              #                    occupy a2 with temp_21_cmp_50_0
              #                    release a2 with temp_21_cmp_50_0
              #                     263  max__39_3 = i32 max__39_1 
              #                    occupy a1 with max__39_1
              #                    occupy a2 with max__39_3
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          jump label: branch_false_51 
              #                    occupy a2 with max__39_3
              #                    store to max__39_3 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with max__39_3
              #                    occupy a2 with max__39_2
              #                    load from max__39_2 in mem


    lw      a2,56(sp)
              #                    occupy a3 with max__39_3
              #                    load from max__39_3 in mem


    lw      a3,52(sp)
    j       .branch_false_51
              #                    regtab     a0:Freed { symidx: temp_19_ret_of_is_clique_47_0, tracked: true } |     a2:Freed { symidx: temp_20__1181_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     254  label UP_2_0: 
.UP_2_0:
              #                     264  max__39_6 = i32 max__39_1 
              #                    occupy a1 with max__39_1
              #                    load from max__39_1 in mem


    lw      a1,60(sp)
              #                    occupy a3 with max__39_6
    mv      a3, a1
              #                    free a1
              #                    free a3
              #                          jump label: branch_false_48 
              #                    occupy a1 with max__39_1
              #                    store to max__39_1 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with max__39_1
              #                    occupy a0 with temp_19_ret_of_is_clique_47_0
              #                    store to temp_19_ret_of_is_clique_47_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_19_ret_of_is_clique_47_0
              #                    occupy a3 with max__39_6
              #                    store to max__39_6 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with max__39_6
              #                    occupy a0 with max__39_6
              #                    load from max__39_6 in mem


    lw      a0,44(sp)
              #                    occupy a2 with temp_20__1181_0
              #                    store to temp_20__1181_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_20__1181_0
    j       .branch_false_48
              #                    regtab     a0:Freed { symidx: i_37_0, tracked: true } |     a1:Freed { symidx: k_37_0, tracked: true } |     a2:Freed { symidx: temp_17_cmp_43_0, tracked: true } |     a3:Freed { symidx: temp_16_value_from_ptr_43_0, tracked: true } |     a4:Freed { symidx: temp_12_ptr_of_*store_0_45, tracked: true } |     s1:Freed { symidx: temp_18_arithop_47_0, tracked: true } |     s2:Freed { symidx: max__39_2, tracked: true } |     s3:Freed { symidx: j_39_1, tracked: true } |     s4:Freed { symidx: max__39_1, tracked: true } |  released_gpr_count:6,released_fpr_count:24
              #                     110  label while.exit_44: 
.while.exit_44:
              #                     284  untrack max__39_2 
              #                    occupy s2 with max__39_2
              #                    release s2 with max__39_2
              #                     283  untrack temp_16_value_from_ptr_43_0 
              #                    occupy a3 with temp_16_value_from_ptr_43_0
              #                    release a3 with temp_16_value_from_ptr_43_0
              #                     282  untrack temp_18_arithop_47_0 
              #                    occupy s1 with temp_18_arithop_47_0
              #                    release s1 with temp_18_arithop_47_0
              #                     281  untrack j_39_1 
              #                    occupy s3 with j_39_1
              #                    release s3 with j_39_1
              #                     280  untrack k_37_0 
              #                    occupy a1 with k_37_0
              #                    release a1 with k_37_0
              #                     279  untrack temp_12_ptr_of_*store_0_45 
              #                    occupy a4 with temp_12_ptr_of_*store_0_45
              #                    release a4 with temp_12_ptr_of_*store_0_45
              #                     223  mu store_0_2:87 
              #                     87   ret max__39_1 
              #                    load from ra_maxCliques_0 in mem
    ld      ra,80(sp)
              #                    load from s0_maxCliques_0 in mem
    ld      s0,72(sp)
              #                    occupy s4 with max__39_1
              #                    store to max__39_1 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with max__39_1
              #                    occupy a0 with i_37_0
              #                    store to i_37_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with i_37_0
              #                    occupy a0 with max__39_1
              #                    load from max__39_1 in mem


    lw      a0,60(sp)
    addi    sp,sp,88
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 4944|s0_main:8 at 4936|temp_23_ret_of_getint _s60 _i0:4 at 4932|temp_24_ret_of_getint _s60 _i0:4 at 4928|edges:4800 at 128|i _s60 _i1:4 at 124|i _s60 _i4:4 at 120|temp_25_ret_of_maxCliques _s60 _i0:4 at 116|none:4 at 112|temp_26_ptr_of_edges_60:8 at 104|temp_27_ele_of_edges_60 _s74 _i0:4 at 100|none:4 at 96|temp_28_ptr_of_edges_60:8 at 88|temp_29_ele_of_edges_60 _s74 _i0:4 at 84|none:4 at 80|temp_30_ptr_of_*graph_0:8 at 72|temp_31_ptr_of_edges_60:8 at 64|temp_33_ptr_of_edges_60:8 at 56|temp_35_ptr_of_*graph_0:8 at 48|temp_36_arithop _s74 _i0:4 at 44|none:4 at 40|temp_37_ptr_of_edges_60:8 at 32|temp_38_ret_of_getint _s67 _i0:4 at 28|none:4 at 24|temp_39_ptr_of_edges_60:8 at 16|temp_40_ret_of_getint _s67 _i0:4 at 12|temp_41_arithop _s67 _i0:4 at 8|temp_42_value_from_ptr _s65 _i0:4 at 4|temp_43_cmp _s65 _i0:1 at 3|temp_45_cmp _s72 _i0:1 at 2|none:2 at 0
              #                    occupy a0 with -4952_0
    li      a0, -4952
    li      a0, -4952
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with _anonymous_of_4944_0_0
    li      a1, 4944
    li      a1, 4944
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with _anonymous_of_4936_0_0
    li      a2, 4936
    li      a2, 4936
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 4952_0
    li      a3, 4952
    li      a3, 4952
    add     s0,a3,sp
              #                    free a3
              #                     224  n_0_1 = chi n_0_0:30 
              #                     225  store_0_6 = chi store_0_0:30 
              #                     226  m_0_1 = chi m_0_0:30 
              #                     227  graph_0_1 = chi graph_0_0:30 
              #                     133  alloc i32 [temp_23_ret_of_getint_60] 
              #                     137  alloc i32 [temp_24_ret_of_getint_60] 
              #                     142  alloc Array:i32:[Some(600_0), Some(2_0)] [edges_60] 
              #                     144  alloc i32 [i_60] 
              #                     146  alloc i32 [temp_25_ret_of_maxCliques_60] 
              #                     151  alloc ptr->i32 [temp_26_ptr_of_edges_60_74] 
              #                     153  alloc i32 [temp_27_ele_of_edges_60_74] 
              #                     156  alloc ptr->i32 [temp_28_ptr_of_edges_60_74] 
              #                     158  alloc i32 [temp_29_ele_of_edges_60_74] 
              #                     161  alloc ptr->i32 [temp_30_ptr_of_*graph_0_74] 
              #                     165  alloc ptr->i32 [temp_31_ptr_of_edges_60_74] 
              #                     167  alloc i32 [temp_32_ele_of_edges_60_74] 
              #                     170  alloc ptr->i32 [temp_33_ptr_of_edges_60_74] 
              #                     172  alloc i32 [temp_34_ele_of_edges_60_74] 
              #                     175  alloc ptr->i32 [temp_35_ptr_of_*graph_0_74] 
              #                     179  alloc i32 [temp_36_arithop_74] 
              #                     182  alloc ptr->i32 [temp_37_ptr_of_edges_60_67] 
              #                     184  alloc i32 [temp_38_ret_of_getint_67] 
              #                     188  alloc ptr->i32 [temp_39_ptr_of_edges_60_67] 
              #                     190  alloc i32 [temp_40_ret_of_getint_67] 
              #                     194  alloc i32 [temp_41_arithop_67] 
              #                     197  alloc i32 [temp_42_value_from_ptr_65] 
              #                     200  alloc i1 [temp_43_cmp_65] 
              #                     206  alloc i32 [temp_44_value_from_ptr_72] 
              #                     209  alloc i1 [temp_45_cmp_72] 
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     134  temp_23_ret_of_getint_60_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     135  store temp_23_ret_of_getint_60_0:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_23_ret_of_getint_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     299  untrack temp_23_ret_of_getint_60_0 
              #                    occupy a0 with temp_23_ret_of_getint_60_0
              #                    release a0 with temp_23_ret_of_getint_60_0
              #                     136  n_0_2 = chi n_0_1:135 
              #                     138  temp_24_ret_of_getint_60_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     139  store temp_24_ret_of_getint_60_0:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_24_ret_of_getint_60_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     300  untrack temp_24_ret_of_getint_60_0 
              #                    occupy a0 with temp_24_ret_of_getint_60_0
              #                    release a0 with temp_24_ret_of_getint_60_0
              #                     140  m_0_2 = chi m_0_1:139 
              #                     141   
              #                     143  (nop) 
              #                     265  i_60_1 = i32 0_0 
              #                    occupy a0 with i_60_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: i_60_1, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     202  label while.head_66: 
.while.head_66:
              #                     198  temp_42_value_from_ptr_65_0 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a2 with temp_42_value_from_ptr_65_0
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                     199  mu m_0_2:198 
              #                     201  temp_43_cmp_65_0 = icmp i32 Slt i_60_1, temp_42_value_from_ptr_65_0 
              #                    occupy a0 with i_60_1
              #                    occupy a2 with temp_42_value_from_ptr_65_0
              #                    occupy a3 with temp_43_cmp_65_0
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                     205  br i1 temp_43_cmp_65_0, label while.body_66, label while.exit_66 
              #                    occupy a3 with temp_43_cmp_65_0
              #                    free a3
              #                    occupy a3 with temp_43_cmp_65_0
    bnez    a3, .while.body_66
              #                    free a3
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: i_60_1, tracked: true } |     a2:Freed { symidx: temp_42_value_from_ptr_65_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     203  label while.body_66: 
.while.body_66:
              #                     183  temp_37_ptr_of_edges_60_67 = GEP edges_60_1:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60_1), Some(0_0)] 
              #                    occupy a1 with temp_37_ptr_of_edges_60_67
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_60_1
    slli a4,a0,1
              #                    free a0
    add     a1,a1,a4
              #                    free a4
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 0
    add     a1,a1,a5
              #                    free a5
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,128
              #                    free a1
              #                     185  temp_38_ret_of_getint_67_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with i_60_1
              #                    occupy a1 with temp_37_ptr_of_edges_60_67
              #                    store to temp_37_ptr_of_edges_60_67 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_37_ptr_of_edges_60_67
              #                    occupy a2 with temp_42_value_from_ptr_65_0
              #                    store to temp_42_value_from_ptr_65_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_42_value_from_ptr_65_0
              #                    occupy a3 with temp_43_cmp_65_0
              #                    store to temp_43_cmp_65_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_43_cmp_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     186  store temp_38_ret_of_getint_67_0:i32 temp_37_ptr_of_edges_60_67:ptr->i32 
              #                    occupy a1 with temp_37_ptr_of_edges_60_67
              #                    load from temp_37_ptr_of_edges_60_67 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_38_ret_of_getint_67_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     187  edges_60_2 = chi edges_60_1:186 
              #                     189  temp_39_ptr_of_edges_60_67 = GEP edges_60_2:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60_1), Some(1_0)] 
              #                    occupy a2 with temp_39_ptr_of_edges_60_67
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with i_60_1
              #                    load from i_60_1 in mem


    lw      a4,124(sp)
    slli a3,a4,1
              #                    free a4
    add     a2,a2,a3
              #                    free a3
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a5, 1
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,128
              #                    free a2
              #                     191  temp_40_ret_of_getint_67_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_38_ret_of_getint_67_0
              #                    store to temp_38_ret_of_getint_67_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_38_ret_of_getint_67_0
              #                    occupy a1 with temp_37_ptr_of_edges_60_67
              #                    store to temp_37_ptr_of_edges_60_67 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_37_ptr_of_edges_60_67
              #                    occupy a2 with temp_39_ptr_of_edges_60_67
              #                    store to temp_39_ptr_of_edges_60_67 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_39_ptr_of_edges_60_67
              #                    occupy a4 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a4,124(sp)
              #                    release a4 with i_60_1
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     192  store temp_40_ret_of_getint_67_0:i32 temp_39_ptr_of_edges_60_67:ptr->i32 
              #                    occupy a1 with temp_39_ptr_of_edges_60_67
              #                    load from temp_39_ptr_of_edges_60_67 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_40_ret_of_getint_67_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     193  edges_60_3 = chi edges_60_2:192 
              #                     195  temp_41_arithop_67_0 = Add i32 i_60_1, 1_0 
              #                    occupy a2 with i_60_1
              #                    load from i_60_1 in mem


    lw      a2,124(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_41_arithop_67_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     196  (nop) 
              #                     266  i_60_1 = i32 temp_41_arithop_67_0 
              #                    occupy a4 with temp_41_arithop_67_0
              #                    occupy a2 with i_60_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_66 
              #                    occupy a4 with temp_41_arithop_67_0
              #                    store to temp_41_arithop_67_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_41_arithop_67_0
              #                    occupy a1 with temp_39_ptr_of_edges_60_67
              #                    store to temp_39_ptr_of_edges_60_67 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_39_ptr_of_edges_60_67
              #                    occupy a0 with temp_40_ret_of_getint_67_0
              #                    store to temp_40_ret_of_getint_67_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_40_ret_of_getint_67_0
              #                    occupy a2 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a2,124(sp)
              #                    release a2 with i_60_1
              #                    occupy a0 with i_60_1
              #                    load from i_60_1 in mem


    lw      a0,124(sp)
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: i_60_1, tracked: true } |     a2:Freed { symidx: temp_42_value_from_ptr_65_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     204  label while.exit_66: 
.while.exit_66:
              #                     301  untrack i_60_1 
              #                    occupy a0 with i_60_1
              #                    release a0 with i_60_1
              #                     145  (nop) 
              #                     207  (nop) 
              #                     208  mu m_0_2:207 
              #                     267  i_60_4 = i32 0_0 
              #                    occupy a0 with i_60_4
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_73 
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_60_4, tracked: true } |     a2:Freed { symidx: temp_42_value_from_ptr_65_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_65_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     211  label while.head_73: 
.while.head_73:
              #                     210  temp_45_cmp_72_0 = icmp i32 Slt i_60_4, temp_42_value_from_ptr_65_0 
              #                    occupy a0 with i_60_4
              #                    occupy a2 with temp_42_value_from_ptr_65_0
              #                    occupy a1 with temp_45_cmp_72_0
    slt     a1,a0,a2
              #                    free a0
              #                    free a2
              #                    free a1
              #                     214  br i1 temp_45_cmp_72_0, label while.body_73, label while.exit_73 
              #                    occupy a1 with temp_45_cmp_72_0
              #                    free a1
              #                    occupy a1 with temp_45_cmp_72_0
    bnez    a1, .while.body_73
              #                    free a1
    j       .while.exit_73
              #                    regtab     a0:Freed { symidx: i_60_4, tracked: true } |     a1:Freed { symidx: temp_45_cmp_72_0, tracked: true } |     a2:Freed { symidx: temp_42_value_from_ptr_65_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_65_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     212  label while.body_73: 
.while.body_73:
              #                     152  temp_26_ptr_of_edges_60_74 = GEP edges_60_1:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60_4), Some(1_0)] 
              #                    occupy a4 with temp_26_ptr_of_edges_60_74
    li      a4, 0
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_60_4
    slli a5,a0,1
              #                    free a0
    add     a4,a4,a5
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a6, 1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,128
              #                    free a4
              #                     154  temp_27_ele_of_edges_60_74_0 = load temp_26_ptr_of_edges_60_74:ptr->i32 
              #                    occupy a4 with temp_26_ptr_of_edges_60_74
              #                    occupy a7 with temp_27_ele_of_edges_60_74_0
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                     155  mu edges_60_1:154 
              #                     157  temp_28_ptr_of_edges_60_74 = GEP edges_60_1:Array:i32:[Some(600_0), Some(2_0)] [Some(i_60_4), Some(0_0)] 
              #                    occupy s1 with temp_28_ptr_of_edges_60_74
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a0 with i_60_4
    slli s2,a0,1
              #                    free a0
              #                    occupy a0 with i_60_4
              #                    store to i_60_4 in mem offset legal
    sw      a0,120(sp)
              #                    release a0 with i_60_4
    add     s1,s1,s2
              #                    free s2
              #                    occupy a0 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a0, 0
    add     s1,s1,a0
              #                    free a0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,128
              #                    free s1
              #                     159  temp_29_ele_of_edges_60_74_0 = load temp_28_ptr_of_edges_60_74:ptr->i32 
              #                    occupy s1 with temp_28_ptr_of_edges_60_74
              #                    occupy a0 with temp_29_ele_of_edges_60_74_0
    lw      a0,0(s1)
              #                    free a0
              #                    occupy a0 with temp_29_ele_of_edges_60_74_0
              #                    store to temp_29_ele_of_edges_60_74_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_29_ele_of_edges_60_74_0
              #                    free s1
              #                     160  mu edges_60_1:159 
              #                     162  temp_30_ptr_of_*graph_0_74 = GEP *graph_0:ptr->Array:i32:[Some(30_0)] [Some(temp_29_ele_of_edges_60_74_0), Some(temp_27_ele_of_edges_60_74_0)] 
              #                    occupy a0 with temp_30_ptr_of_*graph_0_74
    li      a0, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 30_0
    li      s3, 30
              #                    occupy s4 with temp_29_ele_of_edges_60_74_0
              #                    load from temp_29_ele_of_edges_60_74_0 in mem


    lw      s4,84(sp)
    mul     s2,s3,s4
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_29_ele_of_edges_60_74_0
              #                    store to temp_29_ele_of_edges_60_74_0 in mem offset legal
    sw      s4,84(sp)
              #                    release s4 with temp_29_ele_of_edges_60_74_0
    add     a0,a0,s2
              #                    free s2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with temp_27_ele_of_edges_60_74_0
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with temp_27_ele_of_edges_60_74_0
              #                    store to temp_27_ele_of_edges_60_74_0 in mem offset legal
    sw      a7,100(sp)
              #                    release a7 with temp_27_ele_of_edges_60_74_0
    add     a0,a0,s2
              #                    free s2
    slli a0,a0,2
              #                    occupy a7 with *graph_0
              #                       load label graph as ptr to reg
    la      a7, graph
              #                    occupy reg a7 with *graph_0
    add     a0,a0,a7
              #                    free a7
              #                    free a0
              #                     163  store 1_0:i32 temp_30_ptr_of_*graph_0_74:ptr->i32 
              #                    occupy a0 with temp_30_ptr_of_*graph_0_74
              #                    occupy a7 with 1_0
    li      a7, 1
    sw      a7,0(a0)
              #                    free a7
              #                    free a0
              #                     164  graph_0_3 = chi graph_0_2:163 
              #                     166  (nop) 
              #                     168  (nop) 
              #                     169  mu edges_60_1:168 
              #                     171  (nop) 
              #                     173  (nop) 
              #                     174  mu edges_60_1:173 
              #                     176  temp_35_ptr_of_*graph_0_74 = GEP *graph_0:ptr->Array:i32:[Some(30_0)] [Some(temp_27_ele_of_edges_60_74_0), Some(temp_29_ele_of_edges_60_74_0)] 
              #                    occupy a7 with temp_35_ptr_of_*graph_0_74
    li      a7, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with 30_0
    li      s3, 30
              #                    occupy s4 with temp_27_ele_of_edges_60_74_0
              #                    load from temp_27_ele_of_edges_60_74_0 in mem


    lw      s4,100(sp)
    mul     s2,s3,s4
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_27_ele_of_edges_60_74_0
              #                    store to temp_27_ele_of_edges_60_74_0 in mem offset legal
    sw      s4,100(sp)
              #                    release s4 with temp_27_ele_of_edges_60_74_0
    add     a7,a7,s2
              #                    free s2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with temp_29_ele_of_edges_60_74_0
              #                    load from temp_29_ele_of_edges_60_74_0 in mem


    lw      s3,84(sp)
    mv      s2, s3
              #                    free s3
              #                    occupy s3 with temp_29_ele_of_edges_60_74_0
              #                    store to temp_29_ele_of_edges_60_74_0 in mem offset legal
    sw      s3,84(sp)
              #                    release s3 with temp_29_ele_of_edges_60_74_0
    add     a7,a7,s2
              #                    free s2
    slli a7,a7,2
              #                    occupy s2 with *graph_0
              #                       load label graph as ptr to reg
    la      s2, graph
              #                    occupy reg s2 with *graph_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                    occupy a7 with temp_35_ptr_of_*graph_0_74
              #                    store to temp_35_ptr_of_*graph_0_74 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_35_ptr_of_*graph_0_74
              #                     177  store 1_0:i32 temp_35_ptr_of_*graph_0_74:ptr->i32 
              #                    occupy a7 with temp_35_ptr_of_*graph_0_74
              #                    load from temp_35_ptr_of_*graph_0_74 in mem
    ld      a7,48(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
    sw      s2,0(a7)
              #                    free s2
              #                    free a7
              #                    occupy a7 with temp_35_ptr_of_*graph_0_74
              #                    store to temp_35_ptr_of_*graph_0_74 in mem offset legal
    sd      a7,48(sp)
              #                    release a7 with temp_35_ptr_of_*graph_0_74
              #                     178  graph_0_4 = chi graph_0_3:177 
              #                     180  temp_36_arithop_74_0 = Add i32 i_60_4, 1_0 
              #                    occupy a7 with i_60_4
              #                    load from i_60_4 in mem


    lw      a7,120(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_36_arithop_74_0
    ADDW    s3,a7,s2
              #                    free a7
              #                    occupy a7 with i_60_4
              #                    store to i_60_4 in mem offset legal
    sw      a7,120(sp)
              #                    release a7 with i_60_4
              #                    free s2
              #                    free s3
              #                    occupy s3 with temp_36_arithop_74_0
              #                    store to temp_36_arithop_74_0 in mem offset legal
    sw      s3,44(sp)
              #                    release s3 with temp_36_arithop_74_0
              #                     181  (nop) 
              #                     268  i_60_4 = i32 temp_36_arithop_74_0 
              #                    occupy a7 with temp_36_arithop_74_0
              #                    load from temp_36_arithop_74_0 in mem


    lw      a7,44(sp)
              #                    occupy s2 with i_60_4
    mv      s2, a7
              #                    free a7
              #                    occupy a7 with temp_36_arithop_74_0
              #                    store to temp_36_arithop_74_0 in mem offset legal
    sw      a7,44(sp)
              #                    release a7 with temp_36_arithop_74_0
              #                    free s2
              #                    occupy s2 with i_60_4
              #                    store to i_60_4 in mem offset legal
    sw      s2,120(sp)
              #                    release s2 with i_60_4
              #                          jump label: while.head_73 
              #                    occupy a4 with temp_26_ptr_of_edges_60_74
              #                    store to temp_26_ptr_of_edges_60_74 in mem offset legal
    sd      a4,104(sp)
              #                    release a4 with temp_26_ptr_of_edges_60_74
              #                    occupy s1 with temp_28_ptr_of_edges_60_74
              #                    store to temp_28_ptr_of_edges_60_74 in mem offset legal
    sd      s1,88(sp)
              #                    release s1 with temp_28_ptr_of_edges_60_74
              #                    occupy a1 with temp_45_cmp_72_0
              #                    store to temp_45_cmp_72_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_45_cmp_72_0
              #                    occupy a0 with temp_30_ptr_of_*graph_0_74
              #                    store to temp_30_ptr_of_*graph_0_74 in mem offset legal
    sd      a0,72(sp)
              #                    release a0 with temp_30_ptr_of_*graph_0_74
              #                    occupy a0 with i_60_4
              #                    load from i_60_4 in mem


    lw      a0,120(sp)
    j       .while.head_73
              #                    regtab     a0:Freed { symidx: i_60_4, tracked: true } |     a1:Freed { symidx: temp_45_cmp_72_0, tracked: true } |     a2:Freed { symidx: temp_42_value_from_ptr_65_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_65_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     213  label while.exit_73: 
.while.exit_73:
              #                     302  untrack i_60_4 
              #                    occupy a0 with i_60_4
              #                    release a0 with i_60_4
              #                     147  temp_25_ret_of_maxCliques_60_0 =  Call i32 maxCliques_0(0_0, 1_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_45_cmp_72_0
              #                    store to temp_45_cmp_72_0 in mem offset legal
    sb      a1,2(sp)
              #                    release a1 with temp_45_cmp_72_0
              #                    occupy a2 with temp_42_value_from_ptr_65_0
              #                    store to temp_42_value_from_ptr_65_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_42_value_from_ptr_65_0
              #                    occupy a3 with temp_43_cmp_65_0
              #                    store to temp_43_cmp_65_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_43_cmp_65_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    arg load ended


    call    maxCliques
              #                     228  mu store_0_6:147 
              #                     229  mu graph_0_2:147 
              #                     230  store_0_7 = chi store_0_6:147 
              #                     148   Call void putint_0(temp_25_ret_of_maxCliques_60_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_maxCliques_60_0
              #                    store to temp_25_ret_of_maxCliques_60_0 in mem offset legal
    sw      a0,116(sp)
              #                    release a0 with temp_25_ret_of_maxCliques_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ret_of_maxCliques_60_0_0
              #                    load from temp_25_ret_of_maxCliques_60_0 in mem


    lw      a0,116(sp)
              #                    arg load ended


    call    putint
              #                     303  untrack temp_25_ret_of_maxCliques_60_0 
              #                     231  mu n_0_2:150 
              #                     232  mu store_0_7:150 
              #                     233  mu m_0_2:150 
              #                     234  mu graph_0_2:150 
              #                     150  ret 0_0 
              #                    load from ra_main_0 in mem
              #                    occupy a0 with _anonymous_of_4944_0_0
    li      a0, 4944
    add     a0,sp,a0
    ld      ra,0(a0)
              #                    free a0
              #                    load from s0_main_0 in mem
              #                    occupy a1 with _anonymous_of_4936_0_0
    li      a1, 4936
    add     a1,sp,a1
    ld      s0,0(a1)
              #                    free a1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with 4952_0
    li      a2, 4952
    li      a2, 4952
    add     sp,a2,sp
              #                    free a2
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl graph
              #                     26   global Array:i32:[Some(30_0), Some(30_0)] graph_0 
    .type graph,@object
graph:
    .zero 3600
    .align 4
    .globl m
              #                     24   global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                     23   global i32 n_0 
    .type n,@object
n:
    .word 0
    .align 4
    .globl store
              #                     22   global Array:i32:[Some(30_0)] store_0 
    .type store,@object
store:
    .zero 120
    .align 4
    .globl maxM
              #                     20   global i32 maxM_0 
    .type maxM,@object
maxM:
    .word 600
    .align 4
    .globl maxN
              #                     17   global i32 maxN_0 
    .type maxN,@object
maxN:
    .word 30
