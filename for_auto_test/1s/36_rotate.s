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
              #                     35   Define my_fabs_0 "x_19_0," -> my_fabs_ret_0 
    .globl my_fabs
    .type my_fabs,@function
my_fabs:
              #                    mem layout:|ra_my_fabs:8 at 24|s0_my_fabs:8 at 16|x _s19 _i0:4 at 12|temp_0_ _s21 _i0:4 at 8|temp_2_cmp _s22 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_my_fabs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_fabs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     45   alloc f32 [temp_0__21] 
              #                     50   alloc f32 [temp_1__22] 
              #                     52   alloc i1 [temp_2_cmp_22] 
              #                    regtab     fa0:Freed { symidx: x_19_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L19_0: 
.L19_0:
              #                     51   (nop) 
              #                     53   temp_2_cmp_22_0 = fcmp f32 Ogt x_19_0, 0._0 
              #                    occupy fa0 with x_19_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_2_cmp_22_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     56   br i1 temp_2_cmp_22_0, label branch_true_23, label branch_false_23 
              #                    occupy a1 with temp_2_cmp_22_0
              #                    free a1
              #                    occupy a1 with temp_2_cmp_22_0
    bnez    a1, .branch_true_23
              #                    free a1
    j       .branch_false_23
              #                    regtab     a1:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     fa0:Freed { symidx: x_19_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     54   label branch_true_23: 
.branch_true_23:
              #                     471  untrack temp_2_cmp_22_0 
              #                    occupy a1 with temp_2_cmp_22_0
              #                    release a1 with temp_2_cmp_22_0
              #                     470  untrack temp_0__21_0 
              #                     49   ret x_19_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with x_19_0
              #                    store to x_19_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_19_0
              #                    occupy fa0 with x_19_0
              #                    load from x_19_0 in mem


    flw     fa0,12(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_22_0, tracked: true } |     fa0:Freed { symidx: x_19_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     55   label branch_false_23: 
.branch_false_23:
              #                     472  untrack temp_2_cmp_22_0 
              #                    occupy a1 with temp_2_cmp_22_0
              #                    release a1 with temp_2_cmp_22_0
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     fa0:Freed { symidx: x_19_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L20_0: 
.L20_0:
              #                     46   temp_0__21_0 = Sub f32 0.0_0, x_19_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_19_0
              #                    occupy fa2 with temp_0__21_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     473  untrack x_19_0 
              #                    occupy fa0 with x_19_0
              #                    release fa0 with x_19_0
              #                     47   ret temp_0__21_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa2 with temp_0__21_0
              #                    store to temp_0__21_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_0__21_0
              #                    occupy fa0 with temp_0__21_0
              #                    load from temp_0__21_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     36   Define p_0 "x_26_0," -> p_ret_0 
    .globl p
    .type p,@function
p:
              #                    mem layout:|ra_p:8 at 32|s0_p:8 at 24|x _s26 _i0:4 at 20|temp_4_arithop _s28 _i0:4 at 16|temp_6_arithop _s28 _i0:4 at 12|temp_7_arithop _s28 _i0:4 at 8|temp_8_arithop _s28 _i0:4 at 4|temp_9_arithop _s28 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_p_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_p_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     59   alloc f32 [temp_3__28] 
              #                     61   alloc f32 [temp_4_arithop_28] 
              #                     63   alloc f32 [temp_5__28] 
              #                     65   alloc f32 [temp_6_arithop_28] 
              #                     67   alloc f32 [temp_7_arithop_28] 
              #                     69   alloc f32 [temp_8_arithop_28] 
              #                     71   alloc f32 [temp_9_arithop_28] 
              #                    regtab     fa0:Freed { symidx: x_26_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L18_0: 
.L18_0:
              #                     60   (nop) 
              #                     62   temp_4_arithop_28_0 = Mul f32 3._0, x_26_0 
              #                    occupy fa1 with 3._0
              #                    occupy a0 with _anonymous_of_3._0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_26_0
              #                    occupy fa2 with temp_4_arithop_28_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     64   (nop) 
              #                     66   temp_6_arithop_28_0 = Mul f32 4._0, x_26_0 
              #                    occupy fa3 with 4._0
              #                    occupy a1 with _anonymous_of_4._0_0
    li      a1, 1082130432
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa0 with x_26_0
              #                    occupy fa4 with temp_6_arithop_28_0
    fmul.s  fa4,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa4
              #                     68   temp_7_arithop_28_0 = Mul f32 temp_6_arithop_28_0, x_26_0 
              #                    occupy fa4 with temp_6_arithop_28_0
              #                    occupy fa0 with x_26_0
              #                    occupy fa5 with temp_7_arithop_28_0
    fmul.s  fa5,fa4,fa0
              #                    free fa4
              #                    free fa0
              #                    free fa5
              #                     474  untrack temp_6_arithop_28_0 
              #                    occupy fa4 with temp_6_arithop_28_0
              #                    release fa4 with temp_6_arithop_28_0
              #                     70   temp_8_arithop_28_0 = Mul f32 temp_7_arithop_28_0, x_26_0 
              #                    occupy fa5 with temp_7_arithop_28_0
              #                    occupy fa0 with x_26_0
              #                    occupy fa4 with temp_8_arithop_28_0
    fmul.s  fa4,fa5,fa0
              #                    free fa5
              #                    free fa0
              #                    free fa4
              #                     477  untrack x_26_0 
              #                    occupy fa0 with x_26_0
              #                    release fa0 with x_26_0
              #                     475  untrack temp_7_arithop_28_0 
              #                    occupy fa5 with temp_7_arithop_28_0
              #                    release fa5 with temp_7_arithop_28_0
              #                     72   temp_9_arithop_28_0 = Sub f32 temp_4_arithop_28_0, temp_8_arithop_28_0 
              #                    occupy fa2 with temp_4_arithop_28_0
              #                    occupy fa4 with temp_8_arithop_28_0
              #                    occupy fa0 with temp_9_arithop_28_0
    fsub.s  fa0,fa2,fa4
              #                    free fa2
              #                    free fa4
              #                    free fa0
              #                     478  untrack temp_4_arithop_28_0 
              #                    occupy fa2 with temp_4_arithop_28_0
              #                    release fa2 with temp_4_arithop_28_0
              #                     476  untrack temp_8_arithop_28_0 
              #                    occupy fa4 with temp_8_arithop_28_0
              #                    release fa4 with temp_8_arithop_28_0
              #                     73   ret temp_9_arithop_28_0 
              #                    load from ra_p_0 in mem
    ld      ra,32(sp)
              #                    load from s0_p_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_9_arithop_28_0
              #                    store to temp_9_arithop_28_0 in mem offset legal
    fsw     fa0,0(sp)
              #                    release fa0 with temp_9_arithop_28_0
              #                    occupy fa0 with temp_9_arithop_28_0
              #                    load from temp_9_arithop_28_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     37   Define my_sin_impl_0 "x_30_0," -> my_sin_impl_ret_0 
    .globl my_sin_impl
    .type my_sin_impl,@function
my_sin_impl:
              #                    mem layout:|ra_my_sin_impl:8 at 32|s0_my_sin_impl:8 at 24|x _s30 _i0:4 at 20|temp_10_arithop _s32 _i0:4 at 16|temp_11_ret_of_my_sin_impl _s32 _i0:4 at 12|temp_12_ret_of_p _s32 _i0:4 at 8|temp_13_ret_of_my_fabs _s33 _i0:4 at 4|temp_14_cmp _s33 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_my_sin_impl_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_my_sin_impl_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     76   alloc f32 [temp_10_arithop_32] 
              #                     78   alloc f32 [temp_11_ret_of_my_sin_impl_32] 
              #                     80   alloc f32 [temp_12_ret_of_p_32] 
              #                     85   alloc f32 [temp_13_ret_of_my_fabs_33] 
              #                     87   alloc i1 [temp_14_cmp_33] 
              #                    regtab     fa0:Freed { symidx: x_30_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L16_0: 
.L16_0:
              #                     86   temp_13_ret_of_my_fabs_33_0 =  Call f32 my_fabs_0(x_30_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_30_0
              #                    store to x_30_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with x_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_30_0_0
              #                    load from x_30_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_fabs
              #                     88   temp_14_cmp_33_0 = fcmp f32 Ole temp_13_ret_of_my_fabs_33_0, 0.000001_0 
              #                    occupy fa0 with temp_13_ret_of_my_fabs_33_0
              #                    occupy fa1 with 0.000001_0
              #                    occupy a0 with _anonymous_of_0.000001_0_0
    li      a0, 897988541
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_14_cmp_33_0
    fle.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     479  untrack temp_13_ret_of_my_fabs_33_0 
              #                    occupy fa0 with temp_13_ret_of_my_fabs_33_0
              #                    release fa0 with temp_13_ret_of_my_fabs_33_0
              #                     91   br i1 temp_14_cmp_33_0, label branch_true_34, label branch_false_34 
              #                    occupy a1 with temp_14_cmp_33_0
              #                    free a1
              #                    occupy a1 with temp_14_cmp_33_0
    bnez    a1, .branch_true_34
              #                    free a1
    j       .branch_false_34
              #                    regtab     a1:Freed { symidx: temp_14_cmp_33_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     89   label branch_true_34: 
.branch_true_34:
              #                     483  untrack temp_10_arithop_32_0 
              #                     482  untrack temp_11_ret_of_my_sin_impl_32_0 
              #                     481  untrack temp_14_cmp_33_0 
              #                    occupy a1 with temp_14_cmp_33_0
              #                    release a1 with temp_14_cmp_33_0
              #                     480  untrack temp_12_ret_of_p_32_0 
              #                     84   ret x_30_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with x_30_0
              #                    load from x_30_0 in mem


    flw     fa0,20(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_14_cmp_33_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     90   label branch_false_34: 
.branch_false_34:
              #                     484  untrack temp_14_cmp_33_0 
              #                    occupy a1 with temp_14_cmp_33_0
              #                    release a1 with temp_14_cmp_33_0
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab  released_gpr_count:18,released_fpr_count:23
              #                          label L17_0: 
.L17_0:
              #                     77   temp_10_arithop_32_0 = Div f32 x_30_0, 3.0_0 
              #                    occupy fa0 with x_30_0
              #                    load from x_30_0 in mem


    flw     fa0,20(sp)
              #                    occupy fa1 with 3.0_0
              #                    occupy a0 with _anonymous_of_3.0_0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_10_arithop_32_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     486  untrack x_30_0 
              #                    occupy fa0 with x_30_0
              #                    release fa0 with x_30_0
              #                     79   temp_11_ret_of_my_sin_impl_32_0 =  Call f32 my_sin_impl_0(temp_10_arithop_32_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_10_arithop_32_0
              #                    store to temp_10_arithop_32_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_10_arithop_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_10_arithop_32_0_0
              #                    load from temp_10_arithop_32_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     487  untrack temp_10_arithop_32_0 
              #                     81   temp_12_ret_of_p_32_0 =  Call f32 p_0(temp_11_ret_of_my_sin_impl_32_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_11_ret_of_my_sin_impl_32_0
              #                    store to temp_11_ret_of_my_sin_impl_32_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_11_ret_of_my_sin_impl_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_11_ret_of_my_sin_impl_32_0_0
              #                    load from temp_11_ret_of_my_sin_impl_32_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    p
              #                     485  untrack temp_11_ret_of_my_sin_impl_32_0 
              #                     82   ret temp_12_ret_of_p_32_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_12_ret_of_p_32_0
              #                    store to temp_12_ret_of_p_32_0 in mem offset legal
    fsw     fa0,8(sp)
              #                    release fa0 with temp_12_ret_of_p_32_0
              #                    occupy fa0 with temp_12_ret_of_p_32_0
              #                    load from temp_12_ret_of_p_32_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define my_sin_0 "x_37_0," -> my_sin_ret_0 
    .globl my_sin
    .type my_sin,@function
my_sin:
              #                    mem layout:|ra_my_sin:8 at 64|s0_my_sin:8 at 56|x _s37 _i0:4 at 52|x _s37 _i2:4 at 48|x _s37 _i4:4 at 44|x _s37 _i6:4 at 40|temp_15_ret_of_my_sin_impl _s39 _i0:4 at 36|temp_16_arithop _s48 _i0:4 at 32|temp_17_arithop _s45 _i0:4 at 28|temp_18_arithop _s42 _i0:4 at 24|temp_19_ _s42 _i0:4 at 20|temp_20_ _s42 _i0:4 at 16|temp_21_arithop _s42 _i0:4 at 12|temp_22_arithop _s42 _i0:4 at 8|temp_23_cmp _s40 _i0:1 at 7|temp_24_cmp _s40 _i0:1 at 6|temp_25_cmp _s45 _i0:1 at 5|temp_26_cmp _s48 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_my_sin_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_my_sin_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     94   alloc f32 [temp_15_ret_of_my_sin_impl_39] 
              #                     97   alloc f32 [temp_16_arithop_48] 
              #                     100  alloc f32 [temp_17_arithop_45] 
              #                     103  alloc f32 [temp_18_arithop_42] 
              #                     105  alloc i32 [temp_19__42] 
              #                     108  alloc i32 [xx_42] 
              #                     109  alloc f32 [temp_20__42] 
              #                     111  alloc f32 [temp_21_arithop_42] 
              #                     113  alloc f32 [temp_22_arithop_42] 
              #                     116  alloc i1 [temp_23_cmp_40] 
              #                     118  alloc i1 [temp_24_cmp_40] 
              #                     126  alloc i1 [temp_25_cmp_45] 
              #                     131  alloc i1 [temp_26_cmp_48] 
              #                    regtab     fa0:Freed { symidx: x_37_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L12_0: 
.L12_0:
              #                     117  temp_23_cmp_40_0 = fcmp f32 Ogt x_37_0, 6.2831855_0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_23_cmp_40_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     125  br i1 temp_23_cmp_40_0, label branch_short_circuit_c_true_254, label branch_short_circuit_p_false_254 
              #                    occupy a1 with temp_23_cmp_40_0
              #                    free a1
              #                    occupy a1 with temp_23_cmp_40_0
    bnez    a1, .branch_short_circuit_c_true_254
              #                    free a1
    j       .branch_short_circuit_p_false_254
              #                    regtab     a1:Freed { symidx: temp_23_cmp_40_0, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     120  label branch_short_circuit_c_true_254: 
.branch_short_circuit_c_true_254:
              #                     510  untrack temp_24_cmp_40_0 
              #                     489  untrack temp_24_cmp_40_0 
              #                     488  untrack temp_23_cmp_40_0 
              #                    occupy a1 with temp_23_cmp_40_0
              #                    release a1 with temp_23_cmp_40_0
              #                     104  temp_18_arithop_42_0 = Div f32 x_37_0, 6.2831855_0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_18_arithop_42_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     106  temp_19__42_0 = fptosi f32 temp_18_arithop_42_0 to i32 
              #                    occupy fa2 with temp_18_arithop_42_0
              #                    occupy a1 with temp_19__42_0
    fcvt.w.s a1,fa2,rtz
              #                    free fa2
              #                    free a1
              #                     492  untrack temp_18_arithop_42_0 
              #                    occupy fa2 with temp_18_arithop_42_0
              #                    release fa2 with temp_18_arithop_42_0
              #                     107  (nop) 
              #                     110  temp_20__42_0 = sitofp i32 temp_19__42_0 to f32 
              #                    occupy a1 with temp_19__42_0
              #                    occupy fa2 with temp_20__42_0
    fcvt.s.w fa2,a1,rtz
              #                    free a1
              #                    free fa2
              #                     494  untrack temp_19__42_0 
              #                    occupy a1 with temp_19__42_0
              #                    release a1 with temp_19__42_0
              #                     112  temp_21_arithop_42_0 = Mul f32 temp_20__42_0, 6.2831855_0 
              #                    occupy fa2 with temp_20__42_0
              #                    found literal reg Some(fa1) already exist with 6.2831855_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy fa3 with temp_21_arithop_42_0
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                     491  untrack temp_20__42_0 
              #                    occupy fa2 with temp_20__42_0
              #                    release fa2 with temp_20__42_0
              #                     114  temp_22_arithop_42_0 = Sub f32 x_37_0, temp_21_arithop_42_0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa3 with temp_21_arithop_42_0
              #                    occupy fa2 with temp_22_arithop_42_0
    fsub.s  fa2,fa0,fa3
              #                    free fa0
              #                    free fa3
              #                    free fa2
              #                     496  untrack temp_21_arithop_42_0 
              #                    occupy fa3 with temp_21_arithop_42_0
              #                    release fa3 with temp_21_arithop_42_0
              #                     493  untrack x_37_0 
              #                    occupy fa0 with x_37_0
              #                    release fa0 with x_37_0
              #                     115  (nop) 
              #                     456  x_37_2 = f32 temp_22_arithop_42_0 
              #                    occupy fa2 with temp_22_arithop_42_0
              #                    occupy fa0 with x_37_2
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     495  untrack temp_22_arithop_42_0 
              #                    occupy fa2 with temp_22_arithop_42_0
              #                    release fa2 with temp_22_arithop_42_0
              #                          jump label: branch_short_circuit_c_false_254 
    j       .branch_short_circuit_c_false_254
              #                    regtab     fa0:Freed { symidx: x_37_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                     121  label branch_short_circuit_c_false_254: 
.branch_short_circuit_c_false_254:
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     fa0:Freed { symidx: x_37_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                          label L13_0: 
.L13_0:
              #                     127  temp_25_cmp_45_0 = fcmp f32 Ogt x_37_2, 3.1415927_0 
              #                    occupy fa0 with x_37_2
              #                    occupy fa1 with 3.1415927_0
              #                    occupy a0 with _anonymous_of_3.1415927_0_0
    li      a0, 1078530011
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_25_cmp_45_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     130  br i1 temp_25_cmp_45_0, label branch_true_46, label UP_48_0 
              #                    occupy a1 with temp_25_cmp_45_0
              #                    free a1
              #                    occupy a1 with temp_25_cmp_45_0
    bnez    a1, .branch_true_46
              #                    free a1
    j       .UP_48_0
              #                    regtab     a1:Freed { symidx: temp_25_cmp_45_0, tracked: true } |     fa0:Freed { symidx: x_37_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     128  label branch_true_46: 
.branch_true_46:
              #                     497  untrack temp_25_cmp_45_0 
              #                    occupy a1 with temp_25_cmp_45_0
              #                    release a1 with temp_25_cmp_45_0
              #                     101  temp_17_arithop_45_0 = Sub f32 x_37_2, 6.2831855_0 
              #                    occupy fa0 with x_37_2
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_17_arithop_45_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     501  untrack x_37_2 
              #                    occupy fa0 with x_37_2
              #                    release fa0 with x_37_2
              #                     102  (nop) 
              #                     457  x_37_4 = f32 temp_17_arithop_45_0 
              #                    occupy fa2 with temp_17_arithop_45_0
              #                    occupy fa0 with x_37_4
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     500  untrack temp_17_arithop_45_0 
              #                    occupy fa2 with temp_17_arithop_45_0
              #                    release fa2 with temp_17_arithop_45_0
              #                          jump label: branch_false_46 
    j       .branch_false_46
              #                    regtab     fa0:Freed { symidx: x_37_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     129  label branch_false_46: 
.branch_false_46:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab     fa0:Freed { symidx: x_37_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                          label L14_0: 
.L14_0:
              #                     132  temp_26_cmp_48_0 = fcmp f32 Olt x_37_4, -3.1415927_0 
              #                    occupy fa0 with x_37_4
              #                    occupy fa1 with -3.1415927_0
              #                    occupy a0 with _anonymous_of_-3.1415927_0_0
    li      a0, 3226013659
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_26_cmp_48_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     135  br i1 temp_26_cmp_48_0, label branch_true_49, label UP_32_0 
              #                    occupy a1 with temp_26_cmp_48_0
              #                    free a1
              #                    occupy a1 with temp_26_cmp_48_0
    bnez    a1, .branch_true_49
              #                    free a1
    j       .UP_32_0
              #                    regtab     a1:Freed { symidx: temp_26_cmp_48_0, tracked: true } |     fa0:Freed { symidx: x_37_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     133  label branch_true_49: 
.branch_true_49:
              #                     502  untrack temp_26_cmp_48_0 
              #                    occupy a1 with temp_26_cmp_48_0
              #                    release a1 with temp_26_cmp_48_0
              #                     98   temp_16_arithop_48_0 = Add f32 x_37_4, 6.2831855_0 
              #                    occupy fa0 with x_37_4
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_16_arithop_48_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     505  untrack x_37_4 
              #                    occupy fa0 with x_37_4
              #                    release fa0 with x_37_4
              #                     99   (nop) 
              #                     458  x_37_6 = f32 temp_16_arithop_48_0 
              #                    occupy fa2 with temp_16_arithop_48_0
              #                    occupy fa0 with x_37_6
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     506  untrack temp_16_arithop_48_0 
              #                    occupy fa2 with temp_16_arithop_48_0
              #                    release fa2 with temp_16_arithop_48_0
              #                          jump label: branch_false_49 
    j       .branch_false_49
              #                    regtab     fa0:Freed { symidx: x_37_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                     134  label branch_false_49: 
.branch_false_49:
              #                          jump label: L15_0 
    j       .L15_0
              #                    regtab     fa0:Freed { symidx: x_37_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                          label L15_0: 
.L15_0:
              #                     95   temp_15_ret_of_my_sin_impl_39_0 =  Call f32 my_sin_impl_0(x_37_6) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_37_6
              #                    store to x_37_6 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with x_37_6
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_37_6_0
              #                    load from x_37_6 in mem


    flw     fa0,40(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     507  untrack x_37_6 
              #                     96   ret temp_15_ret_of_my_sin_impl_39_0 
              #                    load from ra_my_sin_0 in mem
    ld      ra,64(sp)
              #                    load from s0_my_sin_0 in mem
    ld      s0,56(sp)
              #                    occupy fa0 with temp_15_ret_of_my_sin_impl_39_0
              #                    store to temp_15_ret_of_my_sin_impl_39_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_15_ret_of_my_sin_impl_39_0
              #                    occupy fa0 with temp_15_ret_of_my_sin_impl_39_0
              #                    load from temp_15_ret_of_my_sin_impl_39_0 in mem


    flw     fa0,36(sp)
    addi    sp,sp,72
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_26_cmp_48_0, tracked: true } |     fa0:Freed { symidx: x_37_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     455  label UP_32_0: 
.UP_32_0:
              #                     504  untrack temp_26_cmp_48_0 
              #                    occupy a1 with temp_26_cmp_48_0
              #                    release a1 with temp_26_cmp_48_0
              #                     503  untrack temp_16_arithop_48_0 
              #                     459  x_37_6 = f32 x_37_4 
              #                    occupy fa0 with x_37_4
              #                    occupy fa1 with x_37_6
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     508  untrack x_37_4 
              #                    occupy fa0 with x_37_4
              #                    release fa0 with x_37_4
              #                          jump label: branch_false_49 
              #                    occupy fa1 with x_37_6
              #                    store to x_37_6 in mem offset legal
    fsw     fa1,40(sp)
              #                    release fa1 with x_37_6
              #                    occupy fa0 with x_37_6
              #                    load from x_37_6 in mem


    flw     fa0,40(sp)
    j       .branch_false_49
              #                    regtab     a1:Freed { symidx: temp_25_cmp_45_0, tracked: true } |     fa0:Freed { symidx: x_37_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     454  label UP_48_0: 
.UP_48_0:
              #                     499  untrack temp_17_arithop_45_0 
              #                     498  untrack temp_25_cmp_45_0 
              #                    occupy a1 with temp_25_cmp_45_0
              #                    release a1 with temp_25_cmp_45_0
              #                     460  x_37_4 = f32 x_37_2 
              #                    occupy fa0 with x_37_2
              #                    occupy fa1 with x_37_4
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     509  untrack x_37_2 
              #                    occupy fa0 with x_37_2
              #                    release fa0 with x_37_2
              #                          jump label: branch_false_46 
              #                    occupy fa1 with x_37_4
              #                    store to x_37_4 in mem offset legal
    fsw     fa1,44(sp)
              #                    release fa1 with x_37_4
              #                    occupy fa0 with x_37_4
              #                    load from x_37_4 in mem


    flw     fa0,44(sp)
    j       .branch_false_46
              #                    regtab     a1:Freed { symidx: temp_23_cmp_40_0, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     122  label branch_short_circuit_p_false_254: 
.branch_short_circuit_p_false_254:
              #                     490  untrack temp_23_cmp_40_0 
              #                    occupy a1 with temp_23_cmp_40_0
              #                    release a1 with temp_23_cmp_40_0
              #                     119  temp_24_cmp_40_0 = fcmp f32 Olt x_37_0, -6.2831855_0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa1 with -6.2831855_0
              #                    occupy a0 with _anonymous_of_-6.2831855_0_0
    li      a0, 3234402267
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_24_cmp_40_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     124  br i1 temp_24_cmp_40_0, label branch_short_circuit_c_true_254, label UP_63_0 
              #                    occupy a1 with temp_24_cmp_40_0
              #                    free a1
              #                    occupy a1 with temp_24_cmp_40_0
              #                    store to temp_24_cmp_40_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_24_cmp_40_0
              #                    occupy a1 with temp_23_cmp_40_0
              #                    load from temp_23_cmp_40_0 in mem


    lb      a1,7(sp)
              #                    occupy a0 with temp_24_cmp_40_0
              #                    load from temp_24_cmp_40_0 in mem


    lb      a0,6(sp)
    bnez    a0, .branch_short_circuit_c_true_254
              #                    free a0
    j       .UP_63_0
              #                    regtab     a0:Freed { symidx: temp_24_cmp_40_0, tracked: true } |     a1:Freed { symidx: temp_23_cmp_40_0, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     453  label UP_63_0: 
.UP_63_0:
              #                     516  untrack temp_24_cmp_40_0 
              #                    occupy a0 with temp_24_cmp_40_0
              #                    release a0 with temp_24_cmp_40_0
              #                     515  untrack temp_22_arithop_42_0 
              #                     514  untrack temp_20__42_0 
              #                     513  untrack temp_21_arithop_42_0 
              #                     512  untrack temp_19__42_0 
              #                     511  untrack temp_18_arithop_42_0 
              #                     461  x_37_2 = f32 x_37_0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa1 with x_37_2
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     517  untrack x_37_0 
              #                    occupy fa0 with x_37_0
              #                    release fa0 with x_37_0
              #                          jump label: branch_short_circuit_c_false_254 
              #                    occupy fa1 with x_37_2
              #                    store to x_37_2 in mem offset legal
    fsw     fa1,48(sp)
              #                    release fa1 with x_37_2
              #                    occupy fa0 with x_37_2
              #                    load from x_37_2 in mem


    flw     fa0,48(sp)
              #                    occupy a1 with temp_23_cmp_40_0
              #                    store to temp_23_cmp_40_0 in mem offset legal
    sb      a1,7(sp)
              #                    release a1 with temp_23_cmp_40_0
    j       .branch_short_circuit_c_false_254
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define my_cos_0 "x_52_0," -> my_cos_ret_0 
    .globl my_cos
    .type my_cos,@function
my_cos:
              #                    mem layout:|ra_my_cos:8 at 24|s0_my_cos:8 at 16|x _s52 _i0:4 at 12|temp_27_arithop _s54 _i0:4 at 8|temp_28_ret_of_my_sin _s54 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_my_cos_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_cos_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     138  alloc f32 [temp_27_arithop_54] 
              #                     140  alloc f32 [temp_28_ret_of_my_sin_54] 
              #                    regtab     fa0:Freed { symidx: x_52_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L11_0: 
.L11_0:
              #                     139  temp_27_arithop_54_0 = Add f32 x_52_0, 1.5707964_0 
              #                    occupy fa0 with x_52_0
              #                    occupy fa1 with 1.5707964_0
              #                    occupy a0 with _anonymous_of_1.5707964_0_0
    li      a0, 1070141403
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_27_arithop_54_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     518  untrack x_52_0 
              #                    occupy fa0 with x_52_0
              #                    release fa0 with x_52_0
              #                     141  temp_28_ret_of_my_sin_54_0 =  Call f32 my_sin_0(temp_27_arithop_54_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_27_arithop_54_0
              #                    store to temp_27_arithop_54_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_27_arithop_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_27_arithop_54_0_0
              #                    load from temp_27_arithop_54_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    my_sin
              #                     519  untrack temp_27_arithop_54_0 
              #                     142  ret temp_28_ret_of_my_sin_54_0 
              #                    load from ra_my_cos_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_cos_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with temp_28_ret_of_my_sin_54_0
              #                    store to temp_28_ret_of_my_sin_54_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_28_ret_of_my_sin_54_0
              #                    occupy fa0 with temp_28_ret_of_my_sin_54_0
              #                    load from temp_28_ret_of_my_sin_54_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   Define read_image_0 "" -> read_image_ret_0 
    .globl read_image
    .type read_image,@function
read_image:
              #                    mem layout:|ra_read_image:8 at 96|s0_read_image:8 at 88|temp_29_ret_of_getint _s57 _i0:4 at 84|temp_30_ret_of_getint _s57 _i0:4 at 80|y _s57 _i1:4 at 76|x _s69 _i1:4 at 72|temp_31_arithop _s69 _i0:4 at 68|temp_33_arithop _s73 _i0:4 at 64|temp_34_arithop _s73 _i0:4 at 60|none:4 at 56|temp_35_ptr_of_*image_0:8 at 48|temp_36_ret_of_getint _s73 _i0:4 at 44|temp_37_arithop _s73 _i0:4 at 40|temp_38_ret_of_getch _s58 _i0:4 at 36|temp_39_cmp _s58 _i0:1 at 35|none:3 at 32|temp_40_ret_of_getch _s58 _i0:4 at 28|temp_41_cmp _s58 _i0:1 at 27|none:3 at 24|temp_42_value_from_ptr _s63 _i0:4 at 20|temp_43_cmp _s63 _i0:1 at 19|none:3 at 16|temp_44_value_from_ptr _s63 _i0:4 at 12|temp_45_cmp _s63 _i0:1 at 11|none:3 at 8|temp_46_ret_of_getint _s63 _i0:4 at 4|temp_47_cmp _s63 _i0:1 at 3|temp_49_cmp _s67 _i0:1 at 2|temp_51_cmp _s71 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-104
              #                    store to ra_read_image_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_read_image_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     417  image_0_1 = chi image_0_0:40 
              #                     418  height_0_1 = chi height_0_0:40 
              #                     419  width_0_1 = chi width_0_0:40 
              #                     144  alloc i32 [temp_29_ret_of_getint_57] 
              #                     148  alloc i32 [temp_30_ret_of_getint_57] 
              #                     153  alloc i32 [y_57] 
              #                     157  alloc i32 [x_69] 
              #                     158  alloc i32 [temp_31_arithop_69] 
              #                     161  alloc i32 [temp_32_value_from_ptr_73] 
              #                     164  alloc i32 [temp_33_arithop_73] 
              #                     166  alloc i32 [temp_34_arithop_73] 
              #                     168  alloc ptr->i32 [temp_35_ptr_of_*image_0_73] 
              #                     170  alloc i32 [temp_36_ret_of_getint_73] 
              #                     174  alloc i32 [temp_37_arithop_73] 
              #                     181  alloc i32 [temp_38_ret_of_getch_58] 
              #                     183  alloc i1 [temp_39_cmp_58] 
              #                     185  alloc i32 [temp_40_ret_of_getch_58] 
              #                     187  alloc i1 [temp_41_cmp_58] 
              #                     195  alloc i32 [temp_42_value_from_ptr_63] 
              #                     198  alloc i1 [temp_43_cmp_63] 
              #                     200  alloc i32 [temp_44_value_from_ptr_63] 
              #                     203  alloc i1 [temp_45_cmp_63] 
              #                     205  alloc i32 [temp_46_ret_of_getint_63] 
              #                     207  alloc i1 [temp_47_cmp_63] 
              #                     218  alloc i32 [temp_48_value_from_ptr_67] 
              #                     221  alloc i1 [temp_49_cmp_67] 
              #                     229  alloc i32 [temp_50_value_from_ptr_71] 
              #                     232  alloc i1 [temp_51_cmp_71] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     182  temp_38_ret_of_getch_58_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     184  temp_39_cmp_58_0 = icmp i32 Ne temp_38_ret_of_getch_58_0, 80_0 
              #                    occupy a0 with temp_38_ret_of_getch_58_0
              #                    occupy a1 with 80_0
    li      a1, 80
              #                    occupy a2 with temp_39_cmp_58_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     520  untrack temp_38_ret_of_getch_58_0 
              #                    occupy a0 with temp_38_ret_of_getch_58_0
              #                    release a0 with temp_38_ret_of_getch_58_0
              #                     194  br i1 temp_39_cmp_58_0, label branch_short_circuit_c_true_348, label branch_short_circuit_p_false_348 
              #                    occupy a2 with temp_39_cmp_58_0
              #                    free a2
              #                    occupy a2 with temp_39_cmp_58_0
    bnez    a2, .branch_short_circuit_c_true_348
              #                    free a2
    j       .branch_short_circuit_p_false_348
              #                    regtab     a2:Freed { symidx: temp_39_cmp_58_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     189  label branch_short_circuit_c_true_348: 
.branch_short_circuit_c_true_348:
              #                     544  untrack temp_43_cmp_63_0 
              #                     543  untrack temp_47_cmp_63_0 
              #                     542  untrack temp_30_ret_of_getint_57_0 
              #                     541  untrack y_57_1 
              #                     540  untrack temp_29_ret_of_getint_57_0 
              #                     539  untrack temp_45_cmp_63_0 
              #                     538  untrack temp_46_ret_of_getint_63_0 
              #                     537  untrack temp_44_value_from_ptr_63_0 
              #                     536  untrack temp_41_cmp_58_0 
              #                     535  untrack temp_42_value_from_ptr_63_0 
              #                     532  untrack temp_45_cmp_63_0 
              #                     531  untrack temp_40_ret_of_getch_58_0 
              #                     530  untrack temp_47_cmp_63_0 
              #                     529  untrack temp_42_value_from_ptr_63_0 
              #                     528  untrack temp_43_cmp_63_0 
              #                     527  untrack temp_44_value_from_ptr_63_0 
              #                     526  untrack temp_30_ret_of_getint_57_0 
              #                     525  untrack temp_46_ret_of_getint_63_0 
              #                     524  untrack temp_29_ret_of_getint_57_0 
              #                     523  untrack temp_39_cmp_58_0 
              #                    occupy a2 with temp_39_cmp_58_0
              #                    release a2 with temp_39_cmp_58_0
              #                     522  untrack y_57_1 
              #                     521  untrack temp_41_cmp_58_0 
              #                     420  mu image_0_1:180 
              #                     421  mu height_0_1:180 
              #                     422  mu width_0_1:180 
              #                     180  ret -1_0 
              #                    load from ra_read_image_0 in mem
    ld      ra,96(sp)
              #                    load from s0_read_image_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_39_cmp_58_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     191  label branch_short_circuit_p_false_348: 
.branch_short_circuit_p_false_348:
              #                     533  untrack temp_39_cmp_58_0 
              #                    occupy a2 with temp_39_cmp_58_0
              #                    release a2 with temp_39_cmp_58_0
              #                     186  temp_40_ret_of_getch_58_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                     188  temp_41_cmp_58_0 = icmp i32 Ne temp_40_ret_of_getch_58_0, 50_0 
              #                    occupy a0 with temp_40_ret_of_getch_58_0
              #                    occupy a1 with 50_0
    li      a1, 50
              #                    occupy a2 with temp_41_cmp_58_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     534  untrack temp_40_ret_of_getch_58_0 
              #                    occupy a0 with temp_40_ret_of_getch_58_0
              #                    release a0 with temp_40_ret_of_getch_58_0
              #                     193  br i1 temp_41_cmp_58_0, label branch_short_circuit_c_true_348, label branch_short_circuit_c_false_348 
              #                    occupy a2 with temp_41_cmp_58_0
              #                    free a2
              #                    occupy a2 with temp_41_cmp_58_0
              #                    store to temp_41_cmp_58_0 in mem offset legal
    sb      a2,27(sp)
              #                    release a2 with temp_41_cmp_58_0
              #                    occupy a2 with temp_39_cmp_58_0
              #                    load from temp_39_cmp_58_0 in mem


    lb      a2,35(sp)
              #                    occupy a0 with temp_41_cmp_58_0
              #                    load from temp_41_cmp_58_0 in mem


    lb      a0,27(sp)
    bnez    a0, .branch_short_circuit_c_true_348
              #                    free a0
    j       .branch_short_circuit_c_false_348
              #                    regtab     a0:Freed { symidx: temp_41_cmp_58_0, tracked: true } |     a2:Freed { symidx: temp_39_cmp_58_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     190  label branch_short_circuit_c_false_348: 
.branch_short_circuit_c_false_348:
              #                     545  untrack temp_41_cmp_58_0 
              #                    occupy a0 with temp_41_cmp_58_0
              #                    release a0 with temp_41_cmp_58_0
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     a2:Freed { symidx: temp_39_cmp_58_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     145  temp_29_ret_of_getint_57_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_39_cmp_58_0
              #                    store to temp_39_cmp_58_0 in mem offset legal
    sb      a2,35(sp)
              #                    release a2 with temp_39_cmp_58_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     146  store temp_29_ret_of_getint_57_0:i32 *width_0:ptr->i32 
              #                    occupy a1 with *width_0
              #                       load label width as ptr to reg
    la      a1, width
              #                    occupy reg a1 with *width_0
              #                    occupy a0 with temp_29_ret_of_getint_57_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     547  untrack temp_29_ret_of_getint_57_0 
              #                    occupy a0 with temp_29_ret_of_getint_57_0
              #                    release a0 with temp_29_ret_of_getint_57_0
              #                     147  width_0_2 = chi width_0_1:146 
              #                     149  temp_30_ret_of_getint_57_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     150  store temp_30_ret_of_getint_57_0:i32 *height_0:ptr->i32 
              #                    occupy a1 with *height_0
              #                       load label height as ptr to reg
    la      a1, height
              #                    occupy reg a1 with *height_0
              #                    occupy a0 with temp_30_ret_of_getint_57_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     546  untrack temp_30_ret_of_getint_57_0 
              #                    occupy a0 with temp_30_ret_of_getint_57_0
              #                    release a0 with temp_30_ret_of_getint_57_0
              #                     151  height_0_2 = chi height_0_1:150 
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     196  temp_42_value_from_ptr_63_0 = load *width_0:ptr->i32 
              #                    occupy a0 with *width_0
              #                       load label width as ptr to reg
    la      a0, width
              #                    occupy reg a0 with *width_0
              #                    occupy a1 with temp_42_value_from_ptr_63_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     197  mu width_0_2:196 
              #                     199  temp_43_cmp_63_0 = icmp i32 Sgt temp_42_value_from_ptr_63_0, 1024_0 
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    occupy a2 with 1024_0
    li      a2, 1024
              #                    occupy a3 with temp_43_cmp_63_0
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                     217  br i1 temp_43_cmp_63_0, label branch_short_circuit_c_true_369, label branch_short_circuit_p_false_364 
              #                    occupy a3 with temp_43_cmp_63_0
              #                    free a3
              #                    occupy a3 with temp_43_cmp_63_0
    bnez    a3, .branch_short_circuit_c_true_369
              #                    free a3
    j       .branch_short_circuit_p_false_364
              #                    regtab     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     209  label branch_short_circuit_c_true_369: 
.branch_short_circuit_c_true_369:
              #                     567  untrack temp_44_value_from_ptr_63_0 
              #                     566  untrack temp_42_value_from_ptr_63_0 
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    release a1 with temp_42_value_from_ptr_63_0
              #                     565  untrack y_57_1 
              #                     564  untrack temp_47_cmp_63_0 
              #                     561  untrack y_57_1 
              #                     560  untrack temp_42_value_from_ptr_63_0 
              #                     559  untrack temp_47_cmp_63_0 
              #                     558  untrack temp_45_cmp_63_0 
              #                     557  untrack temp_46_ret_of_getint_63_0 
              #                     556  untrack temp_44_value_from_ptr_63_0 
              #                     554  untrack temp_43_cmp_63_0 
              #                    occupy a3 with temp_43_cmp_63_0
              #                    release a3 with temp_43_cmp_63_0
              #                     553  untrack temp_42_value_from_ptr_63_0 
              #                     552  untrack temp_45_cmp_63_0 
              #                     551  untrack y_57_1 
              #                     550  untrack temp_46_ret_of_getint_63_0 
              #                     549  untrack temp_47_cmp_63_0 
              #                     548  untrack temp_44_value_from_ptr_63_0 
              #                     423  mu image_0_1:178 
              #                     424  mu height_0_2:178 
              #                     425  mu width_0_2:178 
              #                     178  ret -1_0 
              #                    load from ra_read_image_0 in mem
    ld      ra,96(sp)
              #                    load from s0_read_image_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     214  label branch_short_circuit_p_false_364: 
.branch_short_circuit_p_false_364:
              #                     555  untrack temp_43_cmp_63_0 
              #                    occupy a3 with temp_43_cmp_63_0
              #                    release a3 with temp_43_cmp_63_0
              #                     201  temp_44_value_from_ptr_63_0 = load *height_0:ptr->i32 
              #                    occupy a0 with *height_0
              #                       load label height as ptr to reg
    la      a0, height
              #                    occupy reg a0 with *height_0
              #                    occupy a2 with temp_44_value_from_ptr_63_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     202  mu height_0_2:201 
              #                     204  temp_45_cmp_63_0 = icmp i32 Sgt temp_44_value_from_ptr_63_0, 1024_0 
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    occupy a3 with 1024_0
    li      a3, 1024
              #                    occupy a4 with temp_45_cmp_63_0
    slt     a4,a3,a2
              #                    free a2
              #                    free a3
              #                    free a4
              #                     216  br i1 temp_45_cmp_63_0, label branch_short_circuit_c_true_369, label branch_short_circuit_p_false_369 
              #                    occupy a4 with temp_45_cmp_63_0
              #                    free a4
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    store to temp_44_value_from_ptr_63_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_44_value_from_ptr_63_0
              #                    occupy a4 with temp_45_cmp_63_0
              #                    store to temp_45_cmp_63_0 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_45_cmp_63_0
              #                    occupy a3 with temp_43_cmp_63_0
              #                    load from temp_43_cmp_63_0 in mem


    lb      a3,19(sp)
              #                    occupy a0 with temp_45_cmp_63_0
              #                    load from temp_45_cmp_63_0 in mem


    lb      a0,11(sp)
    bnez    a0, .branch_short_circuit_c_true_369
              #                    free a0
    j       .branch_short_circuit_p_false_369
              #                    regtab     a0:Freed { symidx: temp_45_cmp_63_0, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     211  label branch_short_circuit_p_false_369: 
.branch_short_circuit_p_false_369:
              #                     562  untrack temp_45_cmp_63_0 
              #                    occupy a0 with temp_45_cmp_63_0
              #                    release a0 with temp_45_cmp_63_0
              #                     206  temp_46_ret_of_getint_63_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    store to temp_42_value_from_ptr_63_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_42_value_from_ptr_63_0
              #                    occupy a3 with temp_43_cmp_63_0
              #                    store to temp_43_cmp_63_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_43_cmp_63_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     208  temp_47_cmp_63_0 = icmp i32 Ne temp_46_ret_of_getint_63_0, 255_0 
              #                    occupy a0 with temp_46_ret_of_getint_63_0
              #                    occupy a1 with 255_0
    li      a1, 255
              #                    occupy a2 with temp_47_cmp_63_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     563  untrack temp_46_ret_of_getint_63_0 
              #                    occupy a0 with temp_46_ret_of_getint_63_0
              #                    release a0 with temp_46_ret_of_getint_63_0
              #                     213  br i1 temp_47_cmp_63_0, label branch_short_circuit_c_true_369, label branch_short_circuit_c_false_369 
              #                    occupy a2 with temp_47_cmp_63_0
              #                    free a2
              #                    occupy a2 with temp_47_cmp_63_0
              #                    store to temp_47_cmp_63_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_47_cmp_63_0
              #                    occupy a3 with temp_43_cmp_63_0
              #                    load from temp_43_cmp_63_0 in mem


    lb      a3,19(sp)
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    load from temp_42_value_from_ptr_63_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_47_cmp_63_0
              #                    load from temp_47_cmp_63_0 in mem


    lb      a0,3(sp)
    bnez    a0, .branch_short_circuit_c_true_369
              #                    free a0
    j       .branch_short_circuit_c_false_369
              #                    regtab     a0:Freed { symidx: temp_47_cmp_63_0, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     210  label branch_short_circuit_c_false_369: 
.branch_short_circuit_c_false_369:
              #                     568  untrack temp_47_cmp_63_0 
              #                    occupy a0 with temp_47_cmp_63_0
              #                    release a0 with temp_47_cmp_63_0
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                          label L10_0: 
.L10_0:
              #                     152  (nop) 
              #                     219  (nop) 
              #                     220  mu height_0_2:219 
              #                     230  (nop) 
              #                     231  mu width_0_2:230 
              #                     162  (nop) 
              #                     163  mu width_0_2:162 
              #                     462  y_57_1 = i32 0_0 
              #                    occupy a0 with y_57_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     223  label while.head_68: 
.while.head_68:
              #                     222  temp_49_cmp_67_0 = icmp i32 Slt y_57_1, temp_44_value_from_ptr_63_0 
              #                    occupy a0 with y_57_1
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    load from temp_44_value_from_ptr_63_0 in mem


    lw      a2,12(sp)
              #                    occupy a4 with temp_49_cmp_67_0
    slt     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                     226  br i1 temp_49_cmp_67_0, label while.body_68, label while.exit_68 
              #                    occupy a4 with temp_49_cmp_67_0
              #                    free a4
              #                    occupy a4 with temp_49_cmp_67_0
    bnez    a4, .while.body_68
              #                    free a4
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: temp_44_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |     a4:Freed { symidx: temp_49_cmp_67_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     224  label while.body_68: 
.while.body_68:
              #                     156  (nop) 
              #                     165  temp_33_arithop_73_0 = Mul i32 y_57_1, temp_42_value_from_ptr_63_0 
              #                    occupy a5 with temp_33_arithop_73_0
              #                    occupy a0 with y_57_1
              #                    occupy a1 with temp_42_value_from_ptr_63_0
    mulw    a5,a0,a1
              #                    free a0
              #                    free a1
              #                    free a5
              #                     463  x_69_1 = i32 0_0 
              #                    occupy a6 with x_69_1
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_72 
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: temp_44_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |     a4:Freed { symidx: temp_49_cmp_67_0, tracked: true } |     a5:Freed { symidx: temp_33_arithop_73_0, tracked: true } |     a6:Freed { symidx: x_69_1, tracked: true } |  released_gpr_count:8,released_fpr_count:24
              #                     234  label while.head_72: 
.while.head_72:
              #                     233  temp_51_cmp_71_0 = icmp i32 Slt x_69_1, temp_42_value_from_ptr_63_0 
              #                    occupy a6 with x_69_1
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    occupy a7 with temp_51_cmp_71_0
    slt     a7,a6,a1
              #                    free a6
              #                    free a1
              #                    free a7
              #                     237  br i1 temp_51_cmp_71_0, label while.body_72, label while.exit_72 
              #                    occupy a7 with temp_51_cmp_71_0
              #                    free a7
              #                    occupy a7 with temp_51_cmp_71_0
    bnez    a7, .while.body_72
              #                    free a7
    j       .while.exit_72
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: temp_44_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |     a4:Freed { symidx: temp_49_cmp_67_0, tracked: true } |     a5:Freed { symidx: temp_33_arithop_73_0, tracked: true } |     a6:Freed { symidx: x_69_1, tracked: true } |     a7:Freed { symidx: temp_51_cmp_71_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     235  label while.body_72: 
.while.body_72:
              #                     167  temp_34_arithop_73_0 = Add i32 temp_33_arithop_73_0, x_69_1 
              #                    occupy a5 with temp_33_arithop_73_0
              #                    occupy a6 with x_69_1
              #                    occupy s1 with temp_34_arithop_73_0
    ADDW    s1,a5,a6
              #                    free a5
              #                    free a6
              #                    free s1
              #                     169  temp_35_ptr_of_*image_0_73 = GEP *image_0:ptr->i32 [Some(temp_34_arithop_73_0)] 
              #                    occupy s2 with temp_35_ptr_of_*image_0_73
    li      s2, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s1 with temp_34_arithop_73_0
    mv      s3, s1
              #                    free s1
              #                    occupy s1 with temp_34_arithop_73_0
              #                    store to temp_34_arithop_73_0 in mem offset legal
    sw      s1,60(sp)
              #                    release s1 with temp_34_arithop_73_0
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s1 with *image_0
              #                       load label image as ptr to reg
    la      s1, image
              #                    occupy reg s1 with *image_0
    add     s2,s2,s1
              #                    free s1
              #                    free s2
              #                     171  temp_36_ret_of_getint_73_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy s2 with temp_35_ptr_of_*image_0_73
              #                    store to temp_35_ptr_of_*image_0_73 in mem offset legal
    sd      s2,48(sp)
              #                    release s2 with temp_35_ptr_of_*image_0_73
              #                    occupy a0 with y_57_1
              #                    store to y_57_1 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with y_57_1
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    store to temp_42_value_from_ptr_63_0 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_42_value_from_ptr_63_0
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    store to temp_44_value_from_ptr_63_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_44_value_from_ptr_63_0
              #                    occupy a3 with temp_43_cmp_63_0
              #                    store to temp_43_cmp_63_0 in mem offset legal
    sb      a3,19(sp)
              #                    release a3 with temp_43_cmp_63_0
              #                    occupy a4 with temp_49_cmp_67_0
              #                    store to temp_49_cmp_67_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_49_cmp_67_0
              #                    occupy a5 with temp_33_arithop_73_0
              #                    store to temp_33_arithop_73_0 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_33_arithop_73_0
              #                    occupy a6 with x_69_1
              #                    store to x_69_1 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with x_69_1
              #                    occupy a7 with temp_51_cmp_71_0
              #                    store to temp_51_cmp_71_0 in mem offset legal
    sb      a7,1(sp)
              #                    release a7 with temp_51_cmp_71_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     172  store temp_36_ret_of_getint_73_0:i32 temp_35_ptr_of_*image_0_73:ptr->i32 
              #                    occupy a1 with temp_35_ptr_of_*image_0_73
              #                    load from temp_35_ptr_of_*image_0_73 in mem
    ld      a1,48(sp)
              #                    occupy a0 with temp_36_ret_of_getint_73_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     173  image_0_4 = chi image_0_3:172 
              #                     175  temp_37_arithop_73_0 = Add i32 x_69_1, 1_0 
              #                    occupy a2 with x_69_1
              #                    load from x_69_1 in mem


    lw      a2,72(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_37_arithop_73_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     176  (nop) 
              #                     464  x_69_1 = i32 temp_37_arithop_73_0 
              #                    occupy a4 with temp_37_arithop_73_0
              #                    occupy a2 with x_69_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_72 
              #                    occupy a2 with x_69_1
              #                    store to x_69_1 in mem offset legal
    sw      a2,72(sp)
              #                    release a2 with x_69_1
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    load from temp_44_value_from_ptr_63_0 in mem


    lw      a2,12(sp)
              #                    occupy a6 with x_69_1
              #                    load from x_69_1 in mem


    lw      a6,72(sp)
              #                    occupy a4 with temp_37_arithop_73_0
              #                    store to temp_37_arithop_73_0 in mem offset legal
    sw      a4,40(sp)
              #                    release a4 with temp_37_arithop_73_0
              #                    occupy a4 with temp_49_cmp_67_0
              #                    load from temp_49_cmp_67_0 in mem


    lb      a4,2(sp)
              #                    occupy a3 with temp_43_cmp_63_0
              #                    load from temp_43_cmp_63_0 in mem


    lb      a3,19(sp)
              #                    occupy a1 with temp_35_ptr_of_*image_0_73
              #                    store to temp_35_ptr_of_*image_0_73 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_35_ptr_of_*image_0_73
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    load from temp_42_value_from_ptr_63_0 in mem


    lw      a1,20(sp)
              #                    occupy a0 with temp_36_ret_of_getint_73_0
              #                    store to temp_36_ret_of_getint_73_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_36_ret_of_getint_73_0
              #                    occupy a0 with y_57_1
              #                    load from y_57_1 in mem


    lw      a0,76(sp)
              #                    occupy a5 with temp_33_arithop_73_0
              #                    load from temp_33_arithop_73_0 in mem


    lw      a5,64(sp)
    j       .while.head_72
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: temp_44_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |     a4:Freed { symidx: temp_49_cmp_67_0, tracked: true } |     a5:Freed { symidx: temp_33_arithop_73_0, tracked: true } |     a6:Freed { symidx: x_69_1, tracked: true } |     a7:Freed { symidx: temp_51_cmp_71_0, tracked: true } |  released_gpr_count:7,released_fpr_count:24
              #                     236  label while.exit_72: 
.while.exit_72:
              #                     159  temp_31_arithop_69_0 = Add i32 y_57_1, 1_0 
              #                    occupy a0 with y_57_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_31_arithop_69_0
    ADDW    s2,a0,s1
              #                    free a0
              #                    free s1
              #                    free s2
              #                     160  (nop) 
              #                     465  y_57_1 = i32 temp_31_arithop_69_0 
              #                    occupy s2 with temp_31_arithop_69_0
              #                    occupy a0 with y_57_1
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_68 
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    store to temp_44_value_from_ptr_63_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_44_value_from_ptr_63_0
              #                    occupy a7 with temp_51_cmp_71_0
              #                    store to temp_51_cmp_71_0 in mem offset legal
    sb      a7,1(sp)
              #                    release a7 with temp_51_cmp_71_0
              #                    occupy a6 with x_69_1
              #                    store to x_69_1 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with x_69_1
              #                    occupy a4 with temp_49_cmp_67_0
              #                    store to temp_49_cmp_67_0 in mem offset legal
    sb      a4,2(sp)
              #                    release a4 with temp_49_cmp_67_0
              #                    occupy s2 with temp_31_arithop_69_0
              #                    store to temp_31_arithop_69_0 in mem offset legal
    sw      s2,68(sp)
              #                    release s2 with temp_31_arithop_69_0
              #                    occupy a5 with temp_33_arithop_73_0
              #                    store to temp_33_arithop_73_0 in mem offset legal
    sw      a5,64(sp)
              #                    release a5 with temp_33_arithop_73_0
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: y_57_1, tracked: true } |     a1:Freed { symidx: temp_42_value_from_ptr_63_0, tracked: true } |     a2:Freed { symidx: temp_44_value_from_ptr_63_0, tracked: true } |     a3:Freed { symidx: temp_43_cmp_63_0, tracked: true } |     a4:Freed { symidx: temp_49_cmp_67_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     225  label while.exit_68: 
.while.exit_68:
              #                     571  untrack temp_42_value_from_ptr_63_0 
              #                    occupy a1 with temp_42_value_from_ptr_63_0
              #                    release a1 with temp_42_value_from_ptr_63_0
              #                     570  untrack y_57_1 
              #                    occupy a0 with y_57_1
              #                    release a0 with y_57_1
              #                     569  untrack temp_44_value_from_ptr_63_0 
              #                    occupy a2 with temp_44_value_from_ptr_63_0
              #                    release a2 with temp_44_value_from_ptr_63_0
              #                     426  mu image_0_2:155 
              #                     427  mu height_0_2:155 
              #                     428  mu width_0_2:155 
              #                     155  ret 0_0 
              #                    load from ra_read_image_0 in mem
    ld      ra,96(sp)
              #                    load from s0_read_image_0 in mem
    ld      s0,88(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,104
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   Define rotate_0 "x_78_0,y_78_0,rad_78_0," -> rotate_ret_0 
    .globl rotate
    .type rotate,@function
rotate:
              #                    mem layout:|ra_rotate:8 at 136|s0_rotate:8 at 128|x _s78 _i0:4 at 124|y _s78 _i0:4 at 120|rad _s78 _i0:4 at 116|temp_52_ret_of_my_sin _s80 _i0:4 at 112|temp_53_ret_of_my_cos _s80 _i0:4 at 108|temp_54_value_from_ptr _s80 _i0:4 at 104|temp_55_arithop _s80 _i0:4 at 100|temp_56_value_from_ptr _s80 _i0:4 at 96|temp_57_arithop _s80 _i0:4 at 92|temp_58_arithop _s80 _i0:4 at 88|temp_59_arithop _s80 _i0:4 at 84|temp_60_ _s80 _i0:4 at 80|temp_61_arithop _s80 _i0:4 at 76|temp_62_ _s80 _i0:4 at 72|temp_63_arithop _s80 _i0:4 at 68|temp_64_arithop _s80 _i0:4 at 64|temp_65_ _s80 _i0:4 at 60|temp_66_arithop _s80 _i0:4 at 56|temp_67_ _s80 _i0:4 at 52|temp_69_arithop _s80 _i0:4 at 48|temp_71_arithop _s80 _i0:4 at 44|temp_72_arithop _s80 _i0:4 at 40|temp_73_ _s80 _i0:4 at 36|temp_74_arithop _s80 _i0:4 at 32|temp_75_ _s80 _i0:4 at 28|temp_77_arithop _s80 _i0:4 at 24|temp_78_arithop _s80 _i0:4 at 20|none:4 at 16|temp_79_ptr_of_*image_0:8 at 8|temp_80_ele_of_*image_0 _s80 _i0:4 at 4|temp_81_cmp _s85 _i0:1 at 3|temp_83_cmp _s85 _i0:1 at 2|temp_84_cmp _s85 _i0:1 at 1|temp_86_cmp _s85 _i0:1 at 0
    addi    sp,sp,-144
              #                    store to ra_rotate_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_rotate_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                     238  alloc f32 [temp_52_ret_of_my_sin_80] 
              #                     241  alloc f32 [sinma_80] 
              #                     242  alloc f32 [temp_53_ret_of_my_cos_80] 
              #                     245  alloc f32 [cosma_80] 
              #                     246  alloc i32 [temp_54_value_from_ptr_80] 
              #                     249  alloc i32 [temp_55_arithop_80] 
              #                     252  alloc i32 [hwidth_80] 
              #                     253  alloc i32 [temp_56_value_from_ptr_80] 
              #                     256  alloc i32 [temp_57_arithop_80] 
              #                     259  alloc i32 [hheight_80] 
              #                     260  alloc i32 [temp_58_arithop_80] 
              #                     263  alloc i32 [xt_80] 
              #                     264  alloc i32 [temp_59_arithop_80] 
              #                     267  alloc i32 [yt_80] 
              #                     268  alloc f32 [temp_60__80] 
              #                     270  alloc f32 [temp_61_arithop_80] 
              #                     272  alloc f32 [temp_62__80] 
              #                     274  alloc f32 [temp_63_arithop_80] 
              #                     276  alloc f32 [temp_64_arithop_80] 
              #                     278  alloc f32 [temp_65__80] 
              #                     280  alloc f32 [temp_66_arithop_80] 
              #                     282  alloc i32 [temp_67__80] 
              #                     285  alloc i32 [src_x_80] 
              #                     286  alloc f32 [temp_68__80] 
              #                     288  alloc f32 [temp_69_arithop_80] 
              #                     290  alloc f32 [temp_70__80] 
              #                     292  alloc f32 [temp_71_arithop_80] 
              #                     294  alloc f32 [temp_72_arithop_80] 
              #                     296  alloc f32 [temp_73__80] 
              #                     298  alloc f32 [temp_74_arithop_80] 
              #                     300  alloc i32 [temp_75__80] 
              #                     303  alloc i32 [src_y_80] 
              #                     305  alloc i32 [temp_76_value_from_ptr_80] 
              #                     308  alloc i32 [temp_77_arithop_80] 
              #                     310  alloc i32 [temp_78_arithop_80] 
              #                     312  alloc ptr->i32 [temp_79_ptr_of_*image_0_80] 
              #                     314  alloc i32 [temp_80_ele_of_*image_0_80] 
              #                     320  alloc i1 [temp_81_cmp_85] 
              #                     322  alloc i32 [temp_82_value_from_ptr_85] 
              #                     325  alloc i1 [temp_83_cmp_85] 
              #                     327  alloc i1 [temp_84_cmp_85] 
              #                     329  alloc i32 [temp_85_value_from_ptr_85] 
              #                     332  alloc i1 [temp_86_cmp_85] 
              #                    regtab     a0:Freed { symidx: x_78_0, tracked: true } |     a1:Freed { symidx: y_78_0, tracked: true } |     fa0:Freed { symidx: rad_78_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                          label L4_0: 
.L4_0:
              #                     239  temp_52_ret_of_my_sin_80_0 =  Call f32 my_sin_0(rad_78_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_78_0
              #                    store to x_78_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with x_78_0
              #                    occupy a1 with y_78_0
              #                    store to y_78_0 in mem offset legal
    sw      a1,120(sp)
              #                    release a1 with y_78_0
              #                    occupy fa0 with rad_78_0
              #                    store to rad_78_0 in mem offset legal
    fsw     fa0,116(sp)
              #                    release fa0 with rad_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_rad_78_0_0
              #                    load from rad_78_0 in mem


    flw     fa0,116(sp)
              #                    arg load ended


    call    my_sin
              #                     240  (nop) 
              #                     243  temp_53_ret_of_my_cos_80_0 =  Call f32 my_cos_0(rad_78_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_52_ret_of_my_sin_80_0
              #                    store to temp_52_ret_of_my_sin_80_0 in mem offset legal
    fsw     fa0,112(sp)
              #                    release fa0 with temp_52_ret_of_my_sin_80_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_rad_78_0_0
              #                    load from rad_78_0 in mem


    flw     fa0,116(sp)
              #                    arg load ended


    call    my_cos
              #                     580  untrack rad_78_0 
              #                     244  (nop) 
              #                     247  temp_54_value_from_ptr_80_0 = load *width_0:ptr->i32 
              #                    occupy a0 with *width_0
              #                       load label width as ptr to reg
    la      a0, width
              #                    occupy reg a0 with *width_0
              #                    occupy a1 with temp_54_value_from_ptr_80_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     248  mu width_0_0:247 
              #                     250  temp_55_arithop_80_0 = Div i32 temp_54_value_from_ptr_80_0, 2_0 
              #                    occupy a1 with temp_54_value_from_ptr_80_0
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a3 with temp_55_arithop_80_0
    divw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     251  (nop) 
              #                     254  temp_56_value_from_ptr_80_0 = load *height_0:ptr->i32 
              #                    occupy a4 with *height_0
              #                       load label height as ptr to reg
    la      a4, height
              #                    occupy reg a4 with *height_0
              #                    occupy a5 with temp_56_value_from_ptr_80_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     255  mu height_0_0:254 
              #                     257  temp_57_arithop_80_0 = Div i32 temp_56_value_from_ptr_80_0, 2_0 
              #                    occupy a5 with temp_56_value_from_ptr_80_0
              #                    found literal reg Some(a2) already exist with 2_0
              #                    occupy a2 with 2_0
              #                    occupy a6 with temp_57_arithop_80_0
    divw    a6,a5,a2
              #                    free a5
              #                    free a2
              #                    free a6
              #                     258  (nop) 
              #                     261  temp_58_arithop_80_0 = Sub i32 x_78_0, temp_55_arithop_80_0 
              #                    occupy a7 with x_78_0
              #                    load from x_78_0 in mem


    lw      a7,124(sp)
              #                    occupy a3 with temp_55_arithop_80_0
              #                    occupy s1 with temp_58_arithop_80_0
              #                    regtab:    a0:Freed { symidx: *width_0, tracked: false } |     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Occupied { symidx: temp_55_arithop_80_0, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: *height_0, tracked: false } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_57_arithop_80_0, tracked: true } |     a7:Occupied { symidx: x_78_0, tracked: true, occupy_count: 1 } |     fa0:Freed { symidx: temp_53_ret_of_my_cos_80_0, tracked: true } |     s1:Occupied { symidx: temp_58_arithop_80_0, tracked: true, occupy_count: 1 } |  released_gpr_count:10,released_fpr_count:23


    subw    s1,a7,a3
              #                    free a7
              #                    free a3
              #                    free s1
              #                     588  untrack x_78_0 
              #                    occupy a7 with x_78_0
              #                    release a7 with x_78_0
              #                     262  (nop) 
              #                     265  temp_59_arithop_80_0 = Sub i32 y_78_0, temp_57_arithop_80_0 
              #                    occupy a7 with y_78_0
              #                    load from y_78_0 in mem


    lw      a7,120(sp)
              #                    occupy a6 with temp_57_arithop_80_0
              #                    occupy s2 with temp_59_arithop_80_0
              #                    regtab:    a0:Freed { symidx: *width_0, tracked: false } |     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: 2_0, tracked: false } |     a3:Freed { symidx: temp_55_arithop_80_0, tracked: true } |     a4:Freed { symidx: *height_0, tracked: false } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Occupied { symidx: temp_57_arithop_80_0, tracked: true, occupy_count: 1 } |     a7:Occupied { symidx: y_78_0, tracked: true, occupy_count: 1 } |     fa0:Freed { symidx: temp_53_ret_of_my_cos_80_0, tracked: true } |     s1:Freed { symidx: temp_58_arithop_80_0, tracked: true } |     s2:Occupied { symidx: temp_59_arithop_80_0, tracked: true, occupy_count: 1 } |  released_gpr_count:9,released_fpr_count:23


    subw    s2,a7,a6
              #                    free a7
              #                    free a6
              #                    free s2
              #                     577  untrack y_78_0 
              #                    occupy a7 with y_78_0
              #                    release a7 with y_78_0
              #                     266  (nop) 
              #                     269  temp_60__80_0 = sitofp i32 temp_58_arithop_80_0 to f32 
              #                    occupy s1 with temp_58_arithop_80_0
              #                    occupy fa1 with temp_60__80_0
    fcvt.s.w fa1,s1,rtz
              #                    free s1
              #                    free fa1
              #                     576  untrack temp_58_arithop_80_0 
              #                    occupy s1 with temp_58_arithop_80_0
              #                    release s1 with temp_58_arithop_80_0
              #                     271  temp_61_arithop_80_0 = Mul f32 temp_60__80_0, temp_53_ret_of_my_cos_80_0 
              #                    occupy fa1 with temp_60__80_0
              #                    occupy fa0 with temp_53_ret_of_my_cos_80_0
              #                    occupy fa2 with temp_61_arithop_80_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     273  temp_62__80_0 = sitofp i32 temp_59_arithop_80_0 to f32 
              #                    occupy s2 with temp_59_arithop_80_0
              #                    occupy fa3 with temp_62__80_0
    fcvt.s.w fa3,s2,rtz
              #                    free s2
              #                    free fa3
              #                     575  untrack temp_59_arithop_80_0 
              #                    occupy s2 with temp_59_arithop_80_0
              #                    release s2 with temp_59_arithop_80_0
              #                     275  temp_63_arithop_80_0 = Mul f32 temp_62__80_0, temp_52_ret_of_my_sin_80_0 
              #                    occupy fa3 with temp_62__80_0
              #                    occupy fa4 with temp_52_ret_of_my_sin_80_0
              #                    load from temp_52_ret_of_my_sin_80_0 in mem


    flw     fa4,112(sp)
              #                    occupy fa5 with temp_63_arithop_80_0
    fmul.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     277  temp_64_arithop_80_0 = Sub f32 temp_61_arithop_80_0, temp_63_arithop_80_0 
              #                    occupy fa2 with temp_61_arithop_80_0
              #                    occupy fa5 with temp_63_arithop_80_0
              #                    occupy fa6 with temp_64_arithop_80_0
    fsub.s  fa6,fa2,fa5
              #                    free fa2
              #                    free fa5
              #                    free fa6
              #                     591  untrack temp_61_arithop_80_0 
              #                    occupy fa2 with temp_61_arithop_80_0
              #                    release fa2 with temp_61_arithop_80_0
              #                     587  untrack temp_63_arithop_80_0 
              #                    occupy fa5 with temp_63_arithop_80_0
              #                    release fa5 with temp_63_arithop_80_0
              #                     279  temp_65__80_0 = sitofp i32 temp_55_arithop_80_0 to f32 
              #                    occupy a3 with temp_55_arithop_80_0
              #                    occupy fa2 with temp_65__80_0
    fcvt.s.w fa2,a3,rtz
              #                    free a3
              #                    free fa2
              #                     590  untrack temp_55_arithop_80_0 
              #                    occupy a3 with temp_55_arithop_80_0
              #                    release a3 with temp_55_arithop_80_0
              #                     281  temp_66_arithop_80_0 = Add f32 temp_64_arithop_80_0, temp_65__80_0 
              #                    occupy fa6 with temp_64_arithop_80_0
              #                    occupy fa2 with temp_65__80_0
              #                    occupy fa5 with temp_66_arithop_80_0
    fadd.s  fa5,fa6,fa2
              #                    free fa6
              #                    free fa2
              #                    free fa5
              #                     586  untrack temp_64_arithop_80_0 
              #                    occupy fa6 with temp_64_arithop_80_0
              #                    release fa6 with temp_64_arithop_80_0
              #                     585  untrack temp_65__80_0 
              #                    occupy fa2 with temp_65__80_0
              #                    release fa2 with temp_65__80_0
              #                     283  temp_67__80_0 = fptosi f32 temp_66_arithop_80_0 to i32 
              #                    occupy fa5 with temp_66_arithop_80_0
              #                    occupy a3 with temp_67__80_0
    fcvt.w.s a3,fa5,rtz
              #                    free fa5
              #                    free a3
              #                     584  untrack temp_66_arithop_80_0 
              #                    occupy fa5 with temp_66_arithop_80_0
              #                    release fa5 with temp_66_arithop_80_0
              #                     284  (nop) 
              #                     287  (nop) 
              #                     289  temp_69_arithop_80_0 = Mul f32 temp_60__80_0, temp_52_ret_of_my_sin_80_0 
              #                    occupy fa1 with temp_60__80_0
              #                    occupy fa4 with temp_52_ret_of_my_sin_80_0
              #                    occupy fa2 with temp_69_arithop_80_0
    fmul.s  fa2,fa1,fa4
              #                    free fa1
              #                    free fa4
              #                    free fa2
              #                     583  untrack temp_52_ret_of_my_sin_80_0 
              #                    occupy fa4 with temp_52_ret_of_my_sin_80_0
              #                    release fa4 with temp_52_ret_of_my_sin_80_0
              #                     573  untrack temp_60__80_0 
              #                    occupy fa1 with temp_60__80_0
              #                    release fa1 with temp_60__80_0
              #                     291  (nop) 
              #                     293  temp_71_arithop_80_0 = Mul f32 temp_62__80_0, temp_53_ret_of_my_cos_80_0 
              #                    occupy fa3 with temp_62__80_0
              #                    occupy fa0 with temp_53_ret_of_my_cos_80_0
              #                    occupy fa1 with temp_71_arithop_80_0
    fmul.s  fa1,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa1
              #                     582  untrack temp_53_ret_of_my_cos_80_0 
              #                    occupy fa0 with temp_53_ret_of_my_cos_80_0
              #                    release fa0 with temp_53_ret_of_my_cos_80_0
              #                     572  untrack temp_62__80_0 
              #                    occupy fa3 with temp_62__80_0
              #                    release fa3 with temp_62__80_0
              #                     295  temp_72_arithop_80_0 = Add f32 temp_69_arithop_80_0, temp_71_arithop_80_0 
              #                    occupy fa2 with temp_69_arithop_80_0
              #                    occupy fa1 with temp_71_arithop_80_0
              #                    occupy fa0 with temp_72_arithop_80_0
    fadd.s  fa0,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa0
              #                     581  untrack temp_69_arithop_80_0 
              #                    occupy fa2 with temp_69_arithop_80_0
              #                    release fa2 with temp_69_arithop_80_0
              #                     579  untrack temp_71_arithop_80_0 
              #                    occupy fa1 with temp_71_arithop_80_0
              #                    release fa1 with temp_71_arithop_80_0
              #                     297  temp_73__80_0 = sitofp i32 temp_57_arithop_80_0 to f32 
              #                    occupy a6 with temp_57_arithop_80_0
              #                    occupy fa1 with temp_73__80_0
    fcvt.s.w fa1,a6,rtz
              #                    free a6
              #                    free fa1
              #                     574  untrack temp_57_arithop_80_0 
              #                    occupy a6 with temp_57_arithop_80_0
              #                    release a6 with temp_57_arithop_80_0
              #                     299  temp_74_arithop_80_0 = Add f32 temp_72_arithop_80_0, temp_73__80_0 
              #                    occupy fa0 with temp_72_arithop_80_0
              #                    occupy fa1 with temp_73__80_0
              #                    occupy fa2 with temp_74_arithop_80_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     592  untrack temp_73__80_0 
              #                    occupy fa1 with temp_73__80_0
              #                    release fa1 with temp_73__80_0
              #                     578  untrack temp_72_arithop_80_0 
              #                    occupy fa0 with temp_72_arithop_80_0
              #                    release fa0 with temp_72_arithop_80_0
              #                     301  temp_75__80_0 = fptosi f32 temp_74_arithop_80_0 to i32 
              #                    occupy fa2 with temp_74_arithop_80_0
              #                    occupy a6 with temp_75__80_0
    fcvt.w.s a6,fa2,rtz
              #                    free fa2
              #                    free a6
              #                     589  untrack temp_74_arithop_80_0 
              #                    occupy fa2 with temp_74_arithop_80_0
              #                    release fa2 with temp_74_arithop_80_0
              #                     302  (nop) 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     321  temp_81_cmp_85_0 = icmp i32 Slt temp_67__80_0, 0_0 
              #                    occupy a3 with temp_67__80_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_81_cmp_85_0
    slt     a2,a3,a0
              #                    free a3
              #                    free a0
              #                    free a2
              #                     345  br i1 temp_81_cmp_85_0, label branch_short_circuit_c_true_485, label branch_short_circuit_p_false_475 
              #                    occupy a2 with temp_81_cmp_85_0
              #                    free a2
              #                    occupy a2 with temp_81_cmp_85_0
    bnez    a2, .branch_short_circuit_c_true_485
              #                    free a2
    j       .branch_short_circuit_p_false_475
              #                    regtab     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     334  label branch_short_circuit_c_true_485: 
.branch_short_circuit_c_true_485:
              #                     637  untrack temp_75__80_0 
              #                    occupy a6 with temp_75__80_0
              #                    release a6 with temp_75__80_0
              #                     636  untrack temp_80_ele_of_*image_0_80_0 
              #                     635  untrack temp_54_value_from_ptr_80_0 
              #                    occupy a1 with temp_54_value_from_ptr_80_0
              #                    release a1 with temp_54_value_from_ptr_80_0
              #                     634  untrack temp_86_cmp_85_0 
              #                     633  untrack temp_78_arithop_80_0 
              #                     632  untrack temp_77_arithop_80_0 
              #                     631  untrack temp_79_ptr_of_*image_0_80 
              #                     630  untrack temp_67__80_0 
              #                    occupy a3 with temp_67__80_0
              #                    release a3 with temp_67__80_0
              #                     627  untrack temp_79_ptr_of_*image_0_80 
              #                     626  untrack temp_54_value_from_ptr_80_0 
              #                     625  untrack temp_75__80_0 
              #                     624  untrack temp_78_arithop_80_0 
              #                     623  untrack temp_86_cmp_85_0 
              #                     622  untrack temp_80_ele_of_*image_0_80_0 
              #                     621  untrack temp_56_value_from_ptr_80_0 
              #                    occupy a5 with temp_56_value_from_ptr_80_0
              #                    release a5 with temp_56_value_from_ptr_80_0
              #                     620  untrack temp_67__80_0 
              #                     619  untrack temp_77_arithop_80_0 
              #                     618  untrack temp_84_cmp_85_0 
              #                     616  untrack temp_78_arithop_80_0 
              #                     615  untrack temp_80_ele_of_*image_0_80_0 
              #                     614  untrack temp_79_ptr_of_*image_0_80 
              #                     613  untrack temp_75__80_0 
              #                     612  untrack temp_86_cmp_85_0 
              #                     611  untrack temp_54_value_from_ptr_80_0 
              #                     610  untrack temp_83_cmp_85_0 
              #                     609  untrack temp_77_arithop_80_0 
              #                     608  untrack temp_84_cmp_85_0 
              #                     607  untrack temp_67__80_0 
              #                     606  untrack temp_56_value_from_ptr_80_0 
              #                     604  untrack temp_67__80_0 
              #                     603  untrack temp_79_ptr_of_*image_0_80 
              #                     602  untrack temp_75__80_0 
              #                     601  untrack temp_78_arithop_80_0 
              #                     600  untrack temp_83_cmp_85_0 
              #                     599  untrack temp_86_cmp_85_0 
              #                     598  untrack temp_84_cmp_85_0 
              #                     597  untrack temp_54_value_from_ptr_80_0 
              #                     596  untrack temp_77_arithop_80_0 
              #                     595  untrack temp_80_ele_of_*image_0_80_0 
              #                     594  untrack temp_81_cmp_85_0 
              #                    occupy a2 with temp_81_cmp_85_0
              #                    release a2 with temp_81_cmp_85_0
              #                     593  untrack temp_56_value_from_ptr_80_0 
              #                     319  ret 0_0 
              #                    load from ra_rotate_0 in mem
    ld      ra,136(sp)
              #                    load from s0_rotate_0 in mem
    ld      s0,128(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     342  label branch_short_circuit_p_false_475: 
.branch_short_circuit_p_false_475:
              #                     605  untrack temp_81_cmp_85_0 
              #                    occupy a2 with temp_81_cmp_85_0
              #                    release a2 with temp_81_cmp_85_0
              #                     323  (nop) 
              #                     324  mu width_0_0:323 
              #                     326  temp_83_cmp_85_0 = icmp i32 Sge temp_67__80_0, temp_54_value_from_ptr_80_0 
              #                    occupy a3 with temp_67__80_0
              #                    occupy a1 with temp_54_value_from_ptr_80_0
              #                    occupy a0 with temp_83_cmp_85_0
    slt     a0,a3,a1
    xori    a0,a0,1
              #                    free a3
              #                    free a1
              #                    free a0
              #                     344  br i1 temp_83_cmp_85_0, label branch_short_circuit_c_true_485, label branch_short_circuit_p_false_480 
              #                    occupy a0 with temp_83_cmp_85_0
              #                    free a0
              #                    occupy a2 with temp_81_cmp_85_0
              #                    load from temp_81_cmp_85_0 in mem


    lb      a2,3(sp)
              #                    occupy a0 with temp_83_cmp_85_0
              #                    store to temp_83_cmp_85_0 in mem offset legal
    sb      a0,2(sp)
              #                    release a0 with temp_83_cmp_85_0
              #                    occupy a0 with temp_83_cmp_85_0
              #                    load from temp_83_cmp_85_0 in mem


    lb      a0,2(sp)
    bnez    a0, .branch_short_circuit_c_true_485
              #                    free a0
    j       .branch_short_circuit_p_false_480
              #                    regtab     a0:Freed { symidx: temp_83_cmp_85_0, tracked: true } |     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     339  label branch_short_circuit_p_false_480: 
.branch_short_circuit_p_false_480:
              #                     617  untrack temp_83_cmp_85_0 
              #                    occupy a0 with temp_83_cmp_85_0
              #                    release a0 with temp_83_cmp_85_0
              #                     328  temp_84_cmp_85_0 = icmp i32 Slt temp_75__80_0, 0_0 
              #                    occupy a6 with temp_75__80_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a4 with temp_84_cmp_85_0
    slt     a4,a6,a0
              #                    free a6
              #                    free a0
              #                    free a4
              #                     341  br i1 temp_84_cmp_85_0, label branch_short_circuit_c_true_485, label branch_short_circuit_p_false_485 
              #                    occupy a4 with temp_84_cmp_85_0
              #                    free a4
              #                    occupy a4 with temp_84_cmp_85_0
              #                    store to temp_84_cmp_85_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_84_cmp_85_0
              #                    occupy a0 with temp_84_cmp_85_0
              #                    load from temp_84_cmp_85_0 in mem


    lb      a0,1(sp)
    bnez    a0, .branch_short_circuit_c_true_485
              #                    free a0
    j       .branch_short_circuit_p_false_485
              #                    regtab     a0:Freed { symidx: temp_84_cmp_85_0, tracked: true } |     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     336  label branch_short_circuit_p_false_485: 
.branch_short_circuit_p_false_485:
              #                     628  untrack temp_84_cmp_85_0 
              #                    occupy a0 with temp_84_cmp_85_0
              #                    release a0 with temp_84_cmp_85_0
              #                     330  (nop) 
              #                     331  mu height_0_0:330 
              #                     333  temp_86_cmp_85_0 = icmp i32 Sge temp_75__80_0, temp_56_value_from_ptr_80_0 
              #                    occupy a6 with temp_75__80_0
              #                    occupy a5 with temp_56_value_from_ptr_80_0
              #                    occupy a0 with temp_86_cmp_85_0
    slt     a0,a6,a5
    xori    a0,a0,1
              #                    free a6
              #                    free a5
              #                    free a0
              #                     629  untrack temp_56_value_from_ptr_80_0 
              #                    occupy a5 with temp_56_value_from_ptr_80_0
              #                    release a5 with temp_56_value_from_ptr_80_0
              #                     338  br i1 temp_86_cmp_85_0, label branch_short_circuit_c_true_485, label branch_short_circuit_c_false_485 
              #                    occupy a0 with temp_86_cmp_85_0
              #                    free a0
              #                    occupy a5 with temp_56_value_from_ptr_80_0
              #                    load from temp_56_value_from_ptr_80_0 in mem


    lw      a5,96(sp)
              #                    occupy a0 with temp_86_cmp_85_0
              #                    store to temp_86_cmp_85_0 in mem offset legal
    sb      a0,0(sp)
              #                    release a0 with temp_86_cmp_85_0
              #                    occupy a0 with temp_86_cmp_85_0
              #                    load from temp_86_cmp_85_0 in mem


    lb      a0,0(sp)
    bnez    a0, .branch_short_circuit_c_true_485
              #                    free a0
    j       .branch_short_circuit_c_false_485
              #                    regtab     a0:Freed { symidx: temp_86_cmp_85_0, tracked: true } |     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:9,released_fpr_count:24
              #                     335  label branch_short_circuit_c_false_485: 
.branch_short_circuit_c_false_485:
              #                     638  untrack temp_86_cmp_85_0 
              #                    occupy a0 with temp_86_cmp_85_0
              #                    release a0 with temp_86_cmp_85_0
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a1:Freed { symidx: temp_54_value_from_ptr_80_0, tracked: true } |     a2:Freed { symidx: temp_81_cmp_85_0, tracked: true } |     a3:Freed { symidx: temp_67__80_0, tracked: true } |     a5:Freed { symidx: temp_56_value_from_ptr_80_0, tracked: true } |     a6:Freed { symidx: temp_75__80_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     306  (nop) 
              #                     307  mu width_0_0:306 
              #                     309  temp_77_arithop_80_0 = Mul i32 temp_75__80_0, temp_54_value_from_ptr_80_0 
              #                    occupy a0 with temp_77_arithop_80_0
              #                    occupy a6 with temp_75__80_0
              #                    occupy a1 with temp_54_value_from_ptr_80_0
    mulw    a0,a6,a1
              #                    free a6
              #                    free a1
              #                    free a0
              #                     644  untrack temp_75__80_0 
              #                    occupy a6 with temp_75__80_0
              #                    release a6 with temp_75__80_0
              #                     639  untrack temp_54_value_from_ptr_80_0 
              #                    occupy a1 with temp_54_value_from_ptr_80_0
              #                    release a1 with temp_54_value_from_ptr_80_0
              #                     311  temp_78_arithop_80_0 = Add i32 temp_77_arithop_80_0, temp_67__80_0 
              #                    occupy a0 with temp_77_arithop_80_0
              #                    occupy a3 with temp_67__80_0
              #                    occupy a1 with temp_78_arithop_80_0
    ADDW    a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                     643  untrack temp_67__80_0 
              #                    occupy a3 with temp_67__80_0
              #                    release a3 with temp_67__80_0
              #                     641  untrack temp_77_arithop_80_0 
              #                    occupy a0 with temp_77_arithop_80_0
              #                    release a0 with temp_77_arithop_80_0
              #                     313  temp_79_ptr_of_*image_0_80 = GEP *image_0:Array:i32:[None] [Some(temp_78_arithop_80_0)] 
              #                    occupy a0 with temp_79_ptr_of_*image_0_80
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with temp_78_arithop_80_0
    mv      a3, a1
              #                    free a1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a4 with *image_0
              #                       load label image as ptr to reg
    la      a4, image
              #                    occupy reg a4 with *image_0
    add     a0,a0,a4
              #                    free a4
              #                    free a0
              #                     640  untrack temp_78_arithop_80_0 
              #                    occupy a1 with temp_78_arithop_80_0
              #                    release a1 with temp_78_arithop_80_0
              #                     315  temp_80_ele_of_*image_0_80_0 = load temp_79_ptr_of_*image_0_80:ptr->i32 
              #                    occupy a0 with temp_79_ptr_of_*image_0_80
              #                    occupy a1 with temp_80_ele_of_*image_0_80_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     642  untrack temp_79_ptr_of_*image_0_80 
              #                    occupy a0 with temp_79_ptr_of_*image_0_80
              #                    release a0 with temp_79_ptr_of_*image_0_80
              #                     316  mu image_0_0:315 
              #                     317  ret temp_80_ele_of_*image_0_80_0 
              #                    load from ra_rotate_0 in mem
    ld      ra,136(sp)
              #                    load from s0_rotate_0 in mem
    ld      s0,128(sp)
              #                    occupy a1 with temp_80_ele_of_*image_0_80_0
              #                    store to temp_80_ele_of_*image_0_80_0 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_80_ele_of_*image_0_80_0
              #                    occupy a0 with temp_80_ele_of_*image_0_80_0
              #                    load from temp_80_ele_of_*image_0_80_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,144
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     42   Define write_pgm_0 "rad_89_0," -> write_pgm_ret_0 
    .globl write_pgm
    .type write_pgm,@function
write_pgm:
              #                    mem layout:|ra_write_pgm:8 at 48|s0_write_pgm:8 at 40|rad _s89 _i0:4 at 36|temp_87_value_from_ptr _s91 _i0:4 at 32|temp_88_value_from_ptr _s91 _i0:4 at 28|y _s91 _i1:4 at 24|x _s104 _i1:4 at 20|temp_89_arithop _s104 _i0:4 at 16|temp_90_ret_of_rotate _s108 _i0:4 at 12|temp_91_arithop _s108 _i0:4 at 8|temp_93_cmp _s102 _i0:1 at 7|temp_95_cmp _s106 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-56
              #                    store to ra_write_pgm_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_write_pgm_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     351  alloc i32 [temp_87_value_from_ptr_91] 
              #                     356  alloc i32 [temp_88_value_from_ptr_91] 
              #                     364  alloc i32 [y_91] 
              #                     366  alloc i32 [x_104] 
              #                     368  alloc i32 [temp_89_arithop_104] 
              #                     371  alloc i32 [temp_90_ret_of_rotate_108] 
              #                     375  alloc i32 [temp_91_arithop_108] 
              #                     378  alloc i32 [temp_92_value_from_ptr_102] 
              #                     381  alloc i1 [temp_93_cmp_102] 
              #                     388  alloc i32 [temp_94_value_from_ptr_106] 
              #                     391  alloc i1 [temp_95_cmp_106] 
              #                    regtab     fa0:Freed { symidx: rad_89_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L3_0: 
.L3_0:
              #                     348   Call void putch_0(80_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with rad_89_0
              #                    store to rad_89_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with rad_89_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_80_0_0
    li      a0, 80
              #                    arg load ended


    call    putch
              #                     349   Call void putch_0(50_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_50_0_0
    li      a0, 50
              #                    arg load ended


    call    putch
              #                     350   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     352  temp_87_value_from_ptr_91_0 = load *width_0:ptr->i32 
              #                    occupy a0 with *width_0
              #                       load label width as ptr to reg
    la      a0, width
              #                    occupy reg a0 with *width_0
              #                    occupy a1 with temp_87_value_from_ptr_91_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     353  mu width_0_0:352 
              #                     354   Call void putint_0(temp_87_value_from_ptr_91_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_87_value_from_ptr_91_0
              #                    store to temp_87_value_from_ptr_91_0 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with temp_87_value_from_ptr_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_value_from_ptr_91_0_0
              #                    load from temp_87_value_from_ptr_91_0 in mem


    lw      a0,32(sp)
              #                    arg load ended


    call    putint
              #                     355   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     357  temp_88_value_from_ptr_91_0 = load *height_0:ptr->i32 
              #                    occupy a0 with *height_0
              #                       load label height as ptr to reg
    la      a0, height
              #                    occupy reg a0 with *height_0
              #                    occupy a1 with temp_88_value_from_ptr_91_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     358  mu height_0_0:357 
              #                     359   Call void putint_0(temp_88_value_from_ptr_91_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    store to temp_88_value_from_ptr_91_0 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_88_value_from_ptr_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_88_value_from_ptr_91_0_0
              #                    load from temp_88_value_from_ptr_91_0 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                     360   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     361   Call void putint_0(255_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_255_0_0
    li      a0, 255
              #                    arg load ended


    call    putint
              #                     362   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     363  (nop) 
              #                     379  (nop) 
              #                     380  mu height_0_0:379 
              #                     389  (nop) 
              #                     390  mu width_0_0:389 
              #                     466  y_91_1 = i32 0_0 
              #                    occupy a0 with y_91_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_103 
    j       .while.head_103
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     383  label while.head_103: 
.while.head_103:
              #                     382  temp_93_cmp_102_0 = icmp i32 Slt y_91_1, temp_88_value_from_ptr_91_0 
              #                    occupy a0 with y_91_1
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    load from temp_88_value_from_ptr_91_0 in mem


    lw      a1,28(sp)
              #                    occupy a2 with temp_93_cmp_102_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     386  br i1 temp_93_cmp_102_0, label while.body_103, label while.exit_103 
              #                    occupy a2 with temp_93_cmp_102_0
              #                    free a2
              #                    occupy a2 with temp_93_cmp_102_0
    bnez    a2, .while.body_103
              #                    free a2
    j       .while.exit_103
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |     a1:Freed { symidx: temp_88_value_from_ptr_91_0, tracked: true } |     a2:Freed { symidx: temp_93_cmp_102_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     384  label while.body_103: 
.while.body_103:
              #                     365  (nop) 
              #                     467  x_104_1 = i32 0_0 
              #                    occupy a3 with x_104_1
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_107 
    j       .while.head_107
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |     a1:Freed { symidx: temp_88_value_from_ptr_91_0, tracked: true } |     a2:Freed { symidx: temp_93_cmp_102_0, tracked: true } |     a3:Freed { symidx: x_104_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     393  label while.head_107: 
.while.head_107:
              #                     392  temp_95_cmp_106_0 = icmp i32 Slt x_104_1, temp_87_value_from_ptr_91_0 
              #                    occupy a3 with x_104_1
              #                    occupy a4 with temp_87_value_from_ptr_91_0
              #                    load from temp_87_value_from_ptr_91_0 in mem


    lw      a4,32(sp)
              #                    occupy a5 with temp_95_cmp_106_0
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     396  br i1 temp_95_cmp_106_0, label while.body_107, label while.exit_107 
              #                    occupy a5 with temp_95_cmp_106_0
              #                    free a5
              #                    occupy a5 with temp_95_cmp_106_0
    bnez    a5, .while.body_107
              #                    free a5
    j       .while.exit_107
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |     a1:Freed { symidx: temp_88_value_from_ptr_91_0, tracked: true } |     a2:Freed { symidx: temp_93_cmp_102_0, tracked: true } |     a3:Freed { symidx: x_104_1, tracked: true } |     a4:Freed { symidx: temp_87_value_from_ptr_91_0, tracked: true } |     a5:Freed { symidx: temp_95_cmp_106_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     394  label while.body_107: 
.while.body_107:
              #                     372  temp_90_ret_of_rotate_108_0 =  Call i32 rotate_0(x_104_1, y_91_1, rad_89_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with y_91_1
              #                    store to y_91_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with y_91_1
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    store to temp_88_value_from_ptr_91_0 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_88_value_from_ptr_91_0
              #                    occupy a2 with temp_93_cmp_102_0
              #                    store to temp_93_cmp_102_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_93_cmp_102_0
              #                    occupy a3 with x_104_1
              #                    store to x_104_1 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with x_104_1
              #                    occupy a4 with temp_87_value_from_ptr_91_0
              #                    store to temp_87_value_from_ptr_91_0 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_87_value_from_ptr_91_0
              #                    occupy a5 with temp_95_cmp_106_0
              #                    store to temp_95_cmp_106_0 in mem offset legal
    sb      a5,6(sp)
              #                    release a5 with temp_95_cmp_106_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_rad_89_0_0
              #                    load from rad_89_0 in mem


    flw     fa0,36(sp)
              #                    occupy a0 with _anonymous_of_x_104_1_0
              #                    load from x_104_1 in mem


    lw      a0,20(sp)
              #                    occupy a1 with _anonymous_of_y_91_1_0
              #                    load from y_91_1 in mem


    lw      a1,24(sp)
              #                    arg load ended


    call    rotate
              #                     373   Call void putint_0(temp_90_ret_of_rotate_108_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_90_ret_of_rotate_108_0
              #                    store to temp_90_ret_of_rotate_108_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_90_ret_of_rotate_108_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_90_ret_of_rotate_108_0_0
              #                    load from temp_90_ret_of_rotate_108_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     374   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     376  temp_91_arithop_108_0 = Add i32 x_104_1, 1_0 
              #                    occupy a0 with x_104_1
              #                    load from x_104_1 in mem


    lw      a0,20(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_91_arithop_108_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     377  (nop) 
              #                     468  x_104_1 = i32 temp_91_arithop_108_0 
              #                    occupy a2 with temp_91_arithop_108_0
              #                    occupy a0 with x_104_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_107 
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    load from temp_88_value_from_ptr_91_0 in mem


    lw      a1,28(sp)
              #                    occupy a2 with temp_91_arithop_108_0
              #                    store to temp_91_arithop_108_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_91_arithop_108_0
              #                    occupy a2 with temp_93_cmp_102_0
              #                    load from temp_93_cmp_102_0 in mem


    lb      a2,7(sp)
              #                    occupy a0 with x_104_1
              #                    store to x_104_1 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_104_1
              #                    occupy a0 with y_91_1
              #                    load from y_91_1 in mem


    lw      a0,24(sp)
              #                    occupy a3 with x_104_1
              #                    load from x_104_1 in mem


    lw      a3,20(sp)
    j       .while.head_107
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |     a1:Freed { symidx: temp_88_value_from_ptr_91_0, tracked: true } |     a2:Freed { symidx: temp_93_cmp_102_0, tracked: true } |     a3:Freed { symidx: x_104_1, tracked: true } |     a4:Freed { symidx: temp_87_value_from_ptr_91_0, tracked: true } |     a5:Freed { symidx: temp_95_cmp_106_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     395  label while.exit_107: 
.while.exit_107:
              #                     367   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with y_91_1
              #                    store to y_91_1 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with y_91_1
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    store to temp_88_value_from_ptr_91_0 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with temp_88_value_from_ptr_91_0
              #                    occupy a2 with temp_93_cmp_102_0
              #                    store to temp_93_cmp_102_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_93_cmp_102_0
              #                    occupy a3 with x_104_1
              #                    store to x_104_1 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with x_104_1
              #                    occupy a4 with temp_87_value_from_ptr_91_0
              #                    store to temp_87_value_from_ptr_91_0 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_87_value_from_ptr_91_0
              #                    occupy a5 with temp_95_cmp_106_0
              #                    store to temp_95_cmp_106_0 in mem offset legal
    sb      a5,6(sp)
              #                    release a5 with temp_95_cmp_106_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     369  temp_89_arithop_104_0 = Add i32 y_91_1, 1_0 
              #                    occupy a0 with y_91_1
              #                    load from y_91_1 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_89_arithop_104_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     370  (nop) 
              #                     469  y_91_1 = i32 temp_89_arithop_104_0 
              #                    occupy a2 with temp_89_arithop_104_0
              #                    occupy a0 with y_91_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_103 
              #                    occupy a2 with temp_89_arithop_104_0
              #                    store to temp_89_arithop_104_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_89_arithop_104_0
    j       .while.head_103
              #                    regtab     a0:Freed { symidx: y_91_1, tracked: true } |     a1:Freed { symidx: temp_88_value_from_ptr_91_0, tracked: true } |     a2:Freed { symidx: temp_93_cmp_102_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     385  label while.exit_103: 
.while.exit_103:
              #                     648  untrack temp_87_value_from_ptr_91_0 
              #                     647  untrack temp_88_value_from_ptr_91_0 
              #                    occupy a1 with temp_88_value_from_ptr_91_0
              #                    release a1 with temp_88_value_from_ptr_91_0
              #                     646  untrack y_91_1 
              #                    occupy a0 with y_91_1
              #                    release a0 with y_91_1
              #                     645  untrack rad_89_0 
              #                     387  ret 
              #                    load from ra_write_pgm_0 in mem
    ld      ra,48(sp)
              #                    load from s0_write_pgm_0 in mem
    ld      s0,40(sp)
    addi    sp,sp,56
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     43   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|temp_96_ret_of_getfloat _s115 _i0:4 at 12|temp_97_ret_of_getch _s115 _i0:4 at 8|temp_98_ret_of_read_image _s118 _i0:4 at 4|temp_99_cmp _s118 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     429  height_0_3 = chi height_0_0:43 
              #                     430  width_0_3 = chi width_0_0:43 
              #                     431  image_0_5 = chi image_0_0:43 
              #                     397  alloc f32 [temp_96_ret_of_getfloat_115] 
              #                     400  alloc f32 [rad_115] 
              #                     401  alloc i32 [temp_97_ret_of_getch_115] 
              #                     408  alloc i32 [temp_98_ret_of_read_image_118] 
              #                     410  alloc i1 [temp_99_cmp_118] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     398  temp_96_ret_of_getfloat_115_0 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                     399  (nop) 
              #                     402  temp_97_ret_of_getch_115_0 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_96_ret_of_getfloat_115_0
              #                    store to temp_96_ret_of_getfloat_115_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_96_ret_of_getfloat_115_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_97_ret_of_getch_115_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     409  temp_98_ret_of_read_image_118_0 =  Call i32 read_image_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_97_ret_of_getch_115_0
              #                    store to temp_97_ret_of_getch_115_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_97_ret_of_getch_115_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    read_image
              #                     432  mu image_0_5:409 
              #                     433  mu width_0_3:409 
              #                     434  mu height_0_3:409 
              #                     435  image_0_6 = chi image_0_5:409 
              #                     436  height_0_4 = chi height_0_3:409 
              #                     437  width_0_4 = chi width_0_3:409 
              #                     411  temp_99_cmp_118_0 = icmp i32 Slt temp_98_ret_of_read_image_118_0, 0_0 
              #                    occupy a0 with temp_98_ret_of_read_image_118_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_99_cmp_118_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     649  untrack temp_98_ret_of_read_image_118_0 
              #                    occupy a0 with temp_98_ret_of_read_image_118_0
              #                    release a0 with temp_98_ret_of_read_image_118_0
              #                     414  br i1 temp_99_cmp_118_0, label branch_true_119, label branch_false_119 
              #                    occupy a2 with temp_99_cmp_118_0
              #                    free a2
              #                    occupy a2 with temp_99_cmp_118_0
    bnez    a2, .branch_true_119
              #                    free a2
    j       .branch_false_119
              #                    regtab     a2:Freed { symidx: temp_99_cmp_118_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     412  label branch_true_119: 
.branch_true_119:
              #                     651  untrack temp_96_ret_of_getfloat_115_0 
              #                     650  untrack temp_99_cmp_118_0 
              #                    occupy a2 with temp_99_cmp_118_0
              #                    release a2 with temp_99_cmp_118_0
              #                     438  mu height_0_4:407 
              #                     439  mu width_0_4:407 
              #                     440  mu image_0_6:407 
              #                     407  ret -1_0 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with -1_0
    li      a0, -1
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_99_cmp_118_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     413  label branch_false_119: 
.branch_false_119:
              #                     652  untrack temp_99_cmp_118_0 
              #                    occupy a2 with temp_99_cmp_118_0
              #                    release a2 with temp_99_cmp_118_0
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     403   Call void write_pgm_0(temp_96_ret_of_getfloat_115_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_96_ret_of_getfloat_115_0_0
              #                    load from temp_96_ret_of_getfloat_115_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    write_pgm
              #                     653  untrack temp_96_ret_of_getfloat_115_0 
              #                     441  mu height_0_4:405 
              #                     442  mu width_0_4:405 
              #                     443  mu image_0_6:405 
              #                     405  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl EPSILON
              #                     33   global f32 EPSILON_0 
    .type EPSILON,@object
EPSILON:
    .word 897988541
    .align 4
    .globl TWO_PI
              #                     30   global f32 TWO_PI_0 
    .type TWO_PI,@object
TWO_PI:
    .word 1086918619
    .align 4
    .globl PI
              #                     27   global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl height
              #                     24   global i32 height_0 
    .type height,@object
height:
    .word 0
    .align 4
    .globl width
              #                     23   global i32 width_0 
    .type width,@object
width:
    .word 0
    .align 4
    .globl image
              #                     22   global Array:i32:[Some(1048576_0)] image_0 
    .type image,@object
image:
    .zero 4194304
    .align 4
    .globl MAX_HEIGHT
              #                     20   global i32 MAX_HEIGHT_0 
    .type MAX_HEIGHT,@object
MAX_HEIGHT:
    .word 1024
    .align 4
    .globl MAX_WIDTH
              #                     17   global i32 MAX_WIDTH_0 
    .type MAX_WIDTH,@object
MAX_WIDTH:
    .word 1024
