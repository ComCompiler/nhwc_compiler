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
              #                     37   Define my_fabs_0 "x_21_0," -> my_fabs_ret_0 
    .globl my_fabs
    .type my_fabs,@function
my_fabs:
              #                    mem layout:|ra_my_fabs:8 at 24|s0_my_fabs:8 at 16|x _s21 _i0:4 at 12|temp_0_ _s23 _i0:4 at 8|temp_2_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_my_fabs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_fabs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     52   alloc f32 [temp_0__23] 
              #                     57   alloc f32 [temp_1__24] 
              #                     59   alloc i1 [temp_2_cmp_24] 
              #                    regtab     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L12_0: 
.L12_0:
              #                     58   (nop) 
              #                     60   temp_2_cmp_24_0 = fcmp f32 Ogt x_21_0, 0._0 
              #                    occupy fa0 with x_21_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_2_cmp_24_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     63   br i1 temp_2_cmp_24_0, label branch_true_25, label branch_false_25 
              #                    occupy a1 with temp_2_cmp_24_0
              #                    free a1
              #                    occupy a1 with temp_2_cmp_24_0
    bnez    a1, .branch_true_25
              #                    free a1
    j       .branch_false_25
              #                    regtab     a1:Freed { symidx: temp_2_cmp_24_0, tracked: true } |     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     61   label branch_true_25: 
.branch_true_25:
              #                     608  untrack temp_2_cmp_24_0 
              #                    occupy a1 with temp_2_cmp_24_0
              #                    release a1 with temp_2_cmp_24_0
              #                     607  untrack temp_0__23_0 
              #                     56   ret x_21_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with x_21_0
              #                    store to x_21_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_21_0
              #                    occupy fa0 with x_21_0
              #                    load from x_21_0 in mem


    flw     fa0,12(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_24_0, tracked: true } |     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     62   label branch_false_25: 
.branch_false_25:
              #                     609  untrack temp_2_cmp_24_0 
              #                    occupy a1 with temp_2_cmp_24_0
              #                    release a1 with temp_2_cmp_24_0
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L13_0: 
.L13_0:
              #                     53   temp_0__23_0 = Sub f32 0.0_0, x_21_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_21_0
              #                    occupy fa2 with temp_0__23_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     610  untrack x_21_0 
              #                    occupy fa0 with x_21_0
              #                    release fa0 with x_21_0
              #                     54   ret temp_0__23_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa2 with temp_0__23_0
              #                    store to temp_0__23_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_0__23_0
              #                    occupy fa0 with temp_0__23_0
              #                    load from temp_0__23_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     38   Define p_0 "x_28_0," -> p_ret_0 
    .globl p
    .type p,@function
p:
              #                    mem layout:|ra_p:8 at 32|s0_p:8 at 24|x _s28 _i0:4 at 20|temp_4_arithop _s30 _i0:4 at 16|temp_6_arithop _s30 _i0:4 at 12|temp_7_arithop _s30 _i0:4 at 8|temp_8_arithop _s30 _i0:4 at 4|temp_9_arithop _s30 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_p_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_p_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     66   alloc f32 [temp_3__30] 
              #                     68   alloc f32 [temp_4_arithop_30] 
              #                     70   alloc f32 [temp_5__30] 
              #                     72   alloc f32 [temp_6_arithop_30] 
              #                     74   alloc f32 [temp_7_arithop_30] 
              #                     76   alloc f32 [temp_8_arithop_30] 
              #                     78   alloc f32 [temp_9_arithop_30] 
              #                    regtab     fa0:Freed { symidx: x_28_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L11_0: 
.L11_0:
              #                     67   (nop) 
              #                     69   temp_4_arithop_30_0 = Mul f32 3._0, x_28_0 
              #                    occupy fa1 with 3._0
              #                    occupy a0 with _anonymous_of_3._0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_28_0
              #                    occupy fa2 with temp_4_arithop_30_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     71   (nop) 
              #                     73   temp_6_arithop_30_0 = Mul f32 4._0, x_28_0 
              #                    occupy fa3 with 4._0
              #                    occupy a1 with _anonymous_of_4._0_0
    li      a1, 1082130432
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa0 with x_28_0
              #                    occupy fa4 with temp_6_arithop_30_0
    fmul.s  fa4,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa4
              #                     75   temp_7_arithop_30_0 = Mul f32 temp_6_arithop_30_0, x_28_0 
              #                    occupy fa4 with temp_6_arithop_30_0
              #                    occupy fa0 with x_28_0
              #                    occupy fa5 with temp_7_arithop_30_0
    fmul.s  fa5,fa4,fa0
              #                    free fa4
              #                    free fa0
              #                    free fa5
              #                     614  untrack temp_6_arithop_30_0 
              #                    occupy fa4 with temp_6_arithop_30_0
              #                    release fa4 with temp_6_arithop_30_0
              #                     77   temp_8_arithop_30_0 = Mul f32 temp_7_arithop_30_0, x_28_0 
              #                    occupy fa5 with temp_7_arithop_30_0
              #                    occupy fa0 with x_28_0
              #                    occupy fa4 with temp_8_arithop_30_0
    fmul.s  fa4,fa5,fa0
              #                    free fa5
              #                    free fa0
              #                    free fa4
              #                     612  untrack x_28_0 
              #                    occupy fa0 with x_28_0
              #                    release fa0 with x_28_0
              #                     611  untrack temp_7_arithop_30_0 
              #                    occupy fa5 with temp_7_arithop_30_0
              #                    release fa5 with temp_7_arithop_30_0
              #                     79   temp_9_arithop_30_0 = Sub f32 temp_4_arithop_30_0, temp_8_arithop_30_0 
              #                    occupy fa2 with temp_4_arithop_30_0
              #                    occupy fa4 with temp_8_arithop_30_0
              #                    occupy fa0 with temp_9_arithop_30_0
    fsub.s  fa0,fa2,fa4
              #                    free fa2
              #                    free fa4
              #                    free fa0
              #                     615  untrack temp_8_arithop_30_0 
              #                    occupy fa4 with temp_8_arithop_30_0
              #                    release fa4 with temp_8_arithop_30_0
              #                     613  untrack temp_4_arithop_30_0 
              #                    occupy fa2 with temp_4_arithop_30_0
              #                    release fa2 with temp_4_arithop_30_0
              #                     80   ret temp_9_arithop_30_0 
              #                    load from ra_p_0 in mem
    ld      ra,32(sp)
              #                    load from s0_p_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_9_arithop_30_0
              #                    store to temp_9_arithop_30_0 in mem offset legal
    fsw     fa0,0(sp)
              #                    release fa0 with temp_9_arithop_30_0
              #                    occupy fa0 with temp_9_arithop_30_0
              #                    load from temp_9_arithop_30_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   Define my_sin_impl_0 "x_32_0," -> my_sin_impl_ret_0 
    .globl my_sin_impl
    .type my_sin_impl,@function
my_sin_impl:
              #                    mem layout:|ra_my_sin_impl:8 at 32|s0_my_sin_impl:8 at 24|x _s32 _i0:4 at 20|temp_10_arithop _s34 _i0:4 at 16|temp_11_ret_of_my_sin_impl _s34 _i0:4 at 12|temp_12_ret_of_p _s34 _i0:4 at 8|temp_13_ret_of_my_fabs _s35 _i0:4 at 4|temp_14_cmp _s35 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_my_sin_impl_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_my_sin_impl_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     83   alloc f32 [temp_10_arithop_34] 
              #                     85   alloc f32 [temp_11_ret_of_my_sin_impl_34] 
              #                     87   alloc f32 [temp_12_ret_of_p_34] 
              #                     92   alloc f32 [temp_13_ret_of_my_fabs_35] 
              #                     94   alloc i1 [temp_14_cmp_35] 
              #                    regtab     fa0:Freed { symidx: x_32_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L9_0: 
.L9_0:
              #                     93   temp_13_ret_of_my_fabs_35_0 =  Call f32 my_fabs_0(x_32_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_32_0
              #                    store to x_32_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with x_32_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_32_0_0
              #                    load from x_32_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_fabs
              #                     95   temp_14_cmp_35_0 = fcmp f32 Ole temp_13_ret_of_my_fabs_35_0, 0.000001_0 
              #                    occupy fa0 with temp_13_ret_of_my_fabs_35_0
              #                    occupy fa1 with 0.000001_0
              #                    occupy a0 with _anonymous_of_0.000001_0_0
    li      a0, 897988541
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_14_cmp_35_0
    fle.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     616  untrack temp_13_ret_of_my_fabs_35_0 
              #                    occupy fa0 with temp_13_ret_of_my_fabs_35_0
              #                    release fa0 with temp_13_ret_of_my_fabs_35_0
              #                     98   br i1 temp_14_cmp_35_0, label branch_true_36, label branch_false_36 
              #                    occupy a1 with temp_14_cmp_35_0
              #                    free a1
              #                    occupy a1 with temp_14_cmp_35_0
    bnez    a1, .branch_true_36
              #                    free a1
    j       .branch_false_36
              #                    regtab     a1:Freed { symidx: temp_14_cmp_35_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     96   label branch_true_36: 
.branch_true_36:
              #                     620  untrack temp_12_ret_of_p_34_0 
              #                     619  untrack temp_14_cmp_35_0 
              #                    occupy a1 with temp_14_cmp_35_0
              #                    release a1 with temp_14_cmp_35_0
              #                     618  untrack temp_10_arithop_34_0 
              #                     617  untrack temp_11_ret_of_my_sin_impl_34_0 
              #                     91   ret x_32_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with x_32_0
              #                    load from x_32_0 in mem


    flw     fa0,20(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_14_cmp_35_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     97   label branch_false_36: 
.branch_false_36:
              #                     621  untrack temp_14_cmp_35_0 
              #                    occupy a1 with temp_14_cmp_35_0
              #                    release a1 with temp_14_cmp_35_0
              #                          jump label: L10_0 
    j       .L10_0
              #                    regtab  released_gpr_count:18,released_fpr_count:23
              #                          label L10_0: 
.L10_0:
              #                     84   temp_10_arithop_34_0 = Div f32 x_32_0, 3.0_0 
              #                    occupy fa0 with x_32_0
              #                    load from x_32_0 in mem


    flw     fa0,20(sp)
              #                    occupy fa1 with 3.0_0
              #                    occupy a0 with _anonymous_of_3.0_0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_10_arithop_34_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     622  untrack x_32_0 
              #                    occupy fa0 with x_32_0
              #                    release fa0 with x_32_0
              #                     86   temp_11_ret_of_my_sin_impl_34_0 =  Call f32 my_sin_impl_0(temp_10_arithop_34_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_10_arithop_34_0
              #                    store to temp_10_arithop_34_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_10_arithop_34_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_10_arithop_34_0_0
              #                    load from temp_10_arithop_34_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     624  untrack temp_10_arithop_34_0 
              #                     88   temp_12_ret_of_p_34_0 =  Call f32 p_0(temp_11_ret_of_my_sin_impl_34_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_11_ret_of_my_sin_impl_34_0
              #                    store to temp_11_ret_of_my_sin_impl_34_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_11_ret_of_my_sin_impl_34_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_11_ret_of_my_sin_impl_34_0_0
              #                    load from temp_11_ret_of_my_sin_impl_34_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    p
              #                     623  untrack temp_11_ret_of_my_sin_impl_34_0 
              #                     89   ret temp_12_ret_of_p_34_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_12_ret_of_p_34_0
              #                    store to temp_12_ret_of_p_34_0 in mem offset legal
    fsw     fa0,8(sp)
              #                    release fa0 with temp_12_ret_of_p_34_0
              #                    occupy fa0 with temp_12_ret_of_p_34_0
              #                    load from temp_12_ret_of_p_34_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   Define my_sin_0 "x_39_0," -> my_sin_ret_0 
    .globl my_sin
    .type my_sin,@function
my_sin:
              #                    mem layout:|ra_my_sin:8 at 64|s0_my_sin:8 at 56|x _s39 _i0:4 at 52|x _s39 _i2:4 at 48|x _s39 _i4:4 at 44|x _s39 _i6:4 at 40|temp_15_ret_of_my_sin_impl _s41 _i0:4 at 36|temp_16_arithop _s50 _i0:4 at 32|temp_17_arithop _s47 _i0:4 at 28|temp_18_arithop _s44 _i0:4 at 24|temp_19_ _s44 _i0:4 at 20|temp_20_ _s44 _i0:4 at 16|temp_21_arithop _s44 _i0:4 at 12|temp_22_arithop _s44 _i0:4 at 8|temp_23_cmp _s42 _i0:1 at 7|temp_24_cmp _s42 _i0:1 at 6|temp_25_cmp _s47 _i0:1 at 5|temp_26_cmp _s50 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_my_sin_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_my_sin_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     101  alloc f32 [temp_15_ret_of_my_sin_impl_41] 
              #                     104  alloc f32 [temp_16_arithop_50] 
              #                     107  alloc f32 [temp_17_arithop_47] 
              #                     110  alloc f32 [temp_18_arithop_44] 
              #                     112  alloc i32 [temp_19__44] 
              #                     115  alloc i32 [xx_44] 
              #                     116  alloc f32 [temp_20__44] 
              #                     118  alloc f32 [temp_21_arithop_44] 
              #                     120  alloc f32 [temp_22_arithop_44] 
              #                     123  alloc i1 [temp_23_cmp_42] 
              #                     125  alloc i1 [temp_24_cmp_42] 
              #                     133  alloc i1 [temp_25_cmp_47] 
              #                     138  alloc i1 [temp_26_cmp_50] 
              #                    regtab     fa0:Freed { symidx: x_39_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L5_0: 
.L5_0:
              #                     124  temp_23_cmp_42_0 = fcmp f32 Ogt x_39_0, 6.2831855_0 
              #                    occupy fa0 with x_39_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_23_cmp_42_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     132  br i1 temp_23_cmp_42_0, label branch_short_circuit_c_true_309, label branch_short_circuit_p_false_309 
              #                    occupy a1 with temp_23_cmp_42_0
              #                    free a1
              #                    occupy a1 with temp_23_cmp_42_0
    bnez    a1, .branch_short_circuit_c_true_309
              #                    free a1
    j       .branch_short_circuit_p_false_309
              #                    regtab     a1:Freed { symidx: temp_23_cmp_42_0, tracked: true } |     fa0:Freed { symidx: x_39_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     127  label branch_short_circuit_c_true_309: 
.branch_short_circuit_c_true_309:
              #                     647  untrack temp_24_cmp_42_0 
              #                     626  untrack temp_24_cmp_42_0 
              #                     625  untrack temp_23_cmp_42_0 
              #                    occupy a1 with temp_23_cmp_42_0
              #                    release a1 with temp_23_cmp_42_0
              #                     111  temp_18_arithop_44_0 = Div f32 x_39_0, 6.2831855_0 
              #                    occupy fa0 with x_39_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_18_arithop_44_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     113  temp_19__44_0 = fptosi f32 temp_18_arithop_44_0 to i32 
              #                    occupy fa2 with temp_18_arithop_44_0
              #                    occupy a1 with temp_19__44_0
    fcvt.w.s a1,fa2,rtz
              #                    free fa2
              #                    free a1
              #                     629  untrack temp_18_arithop_44_0 
              #                    occupy fa2 with temp_18_arithop_44_0
              #                    release fa2 with temp_18_arithop_44_0
              #                     114  (nop) 
              #                     117  temp_20__44_0 = sitofp i32 temp_19__44_0 to f32 
              #                    occupy a1 with temp_19__44_0
              #                    occupy fa2 with temp_20__44_0
    fcvt.s.w fa2,a1,rtz
              #                    free a1
              #                    free fa2
              #                     632  untrack temp_19__44_0 
              #                    occupy a1 with temp_19__44_0
              #                    release a1 with temp_19__44_0
              #                     119  temp_21_arithop_44_0 = Mul f32 temp_20__44_0, 6.2831855_0 
              #                    occupy fa2 with temp_20__44_0
              #                    found literal reg Some(fa1) already exist with 6.2831855_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy fa3 with temp_21_arithop_44_0
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                     630  untrack temp_20__44_0 
              #                    occupy fa2 with temp_20__44_0
              #                    release fa2 with temp_20__44_0
              #                     121  temp_22_arithop_44_0 = Sub f32 x_39_0, temp_21_arithop_44_0 
              #                    occupy fa0 with x_39_0
              #                    occupy fa3 with temp_21_arithop_44_0
              #                    occupy fa2 with temp_22_arithop_44_0
    fsub.s  fa2,fa0,fa3
              #                    free fa0
              #                    free fa3
              #                    free fa2
              #                     633  untrack temp_21_arithop_44_0 
              #                    occupy fa3 with temp_21_arithop_44_0
              #                    release fa3 with temp_21_arithop_44_0
              #                     628  untrack x_39_0 
              #                    occupy fa0 with x_39_0
              #                    release fa0 with x_39_0
              #                     122  (nop) 
              #                     573  x_39_2 = f32 temp_22_arithop_44_0 
              #                    occupy fa2 with temp_22_arithop_44_0
              #                    occupy fa0 with x_39_2
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     631  untrack temp_22_arithop_44_0 
              #                    occupy fa2 with temp_22_arithop_44_0
              #                    release fa2 with temp_22_arithop_44_0
              #                          jump label: branch_short_circuit_c_false_309 
    j       .branch_short_circuit_c_false_309
              #                    regtab     fa0:Freed { symidx: x_39_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                     128  label branch_short_circuit_c_false_309: 
.branch_short_circuit_c_false_309:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     fa0:Freed { symidx: x_39_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                          label L6_0: 
.L6_0:
              #                     134  temp_25_cmp_47_0 = fcmp f32 Ogt x_39_2, 3.1415927_0 
              #                    occupy fa0 with x_39_2
              #                    occupy fa1 with 3.1415927_0
              #                    occupy a0 with _anonymous_of_3.1415927_0_0
    li      a0, 1078530011
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_25_cmp_47_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     137  br i1 temp_25_cmp_47_0, label branch_true_48, label UP_29_0 
              #                    occupy a1 with temp_25_cmp_47_0
              #                    free a1
              #                    occupy a1 with temp_25_cmp_47_0
    bnez    a1, .branch_true_48
              #                    free a1
    j       .UP_29_0
              #                    regtab     a1:Freed { symidx: temp_25_cmp_47_0, tracked: true } |     fa0:Freed { symidx: x_39_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     135  label branch_true_48: 
.branch_true_48:
              #                     634  untrack temp_25_cmp_47_0 
              #                    occupy a1 with temp_25_cmp_47_0
              #                    release a1 with temp_25_cmp_47_0
              #                     108  temp_17_arithop_47_0 = Sub f32 x_39_2, 6.2831855_0 
              #                    occupy fa0 with x_39_2
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_17_arithop_47_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     638  untrack x_39_2 
              #                    occupy fa0 with x_39_2
              #                    release fa0 with x_39_2
              #                     109  (nop) 
              #                     574  x_39_4 = f32 temp_17_arithop_47_0 
              #                    occupy fa2 with temp_17_arithop_47_0
              #                    occupy fa0 with x_39_4
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     637  untrack temp_17_arithop_47_0 
              #                    occupy fa2 with temp_17_arithop_47_0
              #                    release fa2 with temp_17_arithop_47_0
              #                          jump label: branch_false_48 
    j       .branch_false_48
              #                    regtab     fa0:Freed { symidx: x_39_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     136  label branch_false_48: 
.branch_false_48:
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     fa0:Freed { symidx: x_39_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                          label L7_0: 
.L7_0:
              #                     139  temp_26_cmp_50_0 = fcmp f32 Olt x_39_4, -3.1415927_0 
              #                    occupy fa0 with x_39_4
              #                    occupy fa1 with -3.1415927_0
              #                    occupy a0 with _anonymous_of_-3.1415927_0_0
    li      a0, 3226013659
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_26_cmp_50_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     142  br i1 temp_26_cmp_50_0, label branch_true_51, label UP_17_0 
              #                    occupy a1 with temp_26_cmp_50_0
              #                    free a1
              #                    occupy a1 with temp_26_cmp_50_0
    bnez    a1, .branch_true_51
              #                    free a1
    j       .UP_17_0
              #                    regtab     a1:Freed { symidx: temp_26_cmp_50_0, tracked: true } |     fa0:Freed { symidx: x_39_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     140  label branch_true_51: 
.branch_true_51:
              #                     639  untrack temp_26_cmp_50_0 
              #                    occupy a1 with temp_26_cmp_50_0
              #                    release a1 with temp_26_cmp_50_0
              #                     105  temp_16_arithop_50_0 = Add f32 x_39_4, 6.2831855_0 
              #                    occupy fa0 with x_39_4
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_16_arithop_50_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     643  untrack x_39_4 
              #                    occupy fa0 with x_39_4
              #                    release fa0 with x_39_4
              #                     106  (nop) 
              #                     575  x_39_6 = f32 temp_16_arithop_50_0 
              #                    occupy fa2 with temp_16_arithop_50_0
              #                    occupy fa0 with x_39_6
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     642  untrack temp_16_arithop_50_0 
              #                    occupy fa2 with temp_16_arithop_50_0
              #                    release fa2 with temp_16_arithop_50_0
              #                          jump label: branch_false_51 
    j       .branch_false_51
              #                    regtab     fa0:Freed { symidx: x_39_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                     141  label branch_false_51: 
.branch_false_51:
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     fa0:Freed { symidx: x_39_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                          label L8_0: 
.L8_0:
              #                     102  temp_15_ret_of_my_sin_impl_41_0 =  Call f32 my_sin_impl_0(x_39_6) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_39_6
              #                    store to x_39_6 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with x_39_6
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_39_6_0
              #                    load from x_39_6 in mem


    flw     fa0,40(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     644  untrack x_39_6 
              #                     103  ret temp_15_ret_of_my_sin_impl_41_0 
              #                    load from ra_my_sin_0 in mem
    ld      ra,64(sp)
              #                    load from s0_my_sin_0 in mem
    ld      s0,56(sp)
              #                    occupy fa0 with temp_15_ret_of_my_sin_impl_41_0
              #                    store to temp_15_ret_of_my_sin_impl_41_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_15_ret_of_my_sin_impl_41_0
              #                    occupy fa0 with temp_15_ret_of_my_sin_impl_41_0
              #                    load from temp_15_ret_of_my_sin_impl_41_0 in mem


    flw     fa0,36(sp)
    addi    sp,sp,72
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_26_cmp_50_0, tracked: true } |     fa0:Freed { symidx: x_39_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     572  label UP_17_0: 
.UP_17_0:
              #                     641  untrack temp_26_cmp_50_0 
              #                    occupy a1 with temp_26_cmp_50_0
              #                    release a1 with temp_26_cmp_50_0
              #                     640  untrack temp_16_arithop_50_0 
              #                     576  x_39_6 = f32 x_39_4 
              #                    occupy fa0 with x_39_4
              #                    occupy fa1 with x_39_6
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     645  untrack x_39_4 
              #                    occupy fa0 with x_39_4
              #                    release fa0 with x_39_4
              #                          jump label: branch_false_51 
              #                    occupy fa1 with x_39_6
              #                    store to x_39_6 in mem offset legal
    fsw     fa1,40(sp)
              #                    release fa1 with x_39_6
              #                    occupy fa0 with x_39_6
              #                    load from x_39_6 in mem


    flw     fa0,40(sp)
    j       .branch_false_51
              #                    regtab     a1:Freed { symidx: temp_25_cmp_47_0, tracked: true } |     fa0:Freed { symidx: x_39_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     571  label UP_29_0: 
.UP_29_0:
              #                     636  untrack temp_17_arithop_47_0 
              #                     635  untrack temp_25_cmp_47_0 
              #                    occupy a1 with temp_25_cmp_47_0
              #                    release a1 with temp_25_cmp_47_0
              #                     577  x_39_4 = f32 x_39_2 
              #                    occupy fa0 with x_39_2
              #                    occupy fa1 with x_39_4
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     646  untrack x_39_2 
              #                    occupy fa0 with x_39_2
              #                    release fa0 with x_39_2
              #                          jump label: branch_false_48 
              #                    occupy fa1 with x_39_4
              #                    store to x_39_4 in mem offset legal
    fsw     fa1,44(sp)
              #                    release fa1 with x_39_4
              #                    occupy fa0 with x_39_4
              #                    load from x_39_4 in mem


    flw     fa0,44(sp)
    j       .branch_false_48
              #                    regtab     a1:Freed { symidx: temp_23_cmp_42_0, tracked: true } |     fa0:Freed { symidx: x_39_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     129  label branch_short_circuit_p_false_309: 
.branch_short_circuit_p_false_309:
              #                     627  untrack temp_23_cmp_42_0 
              #                    occupy a1 with temp_23_cmp_42_0
              #                    release a1 with temp_23_cmp_42_0
              #                     126  temp_24_cmp_42_0 = fcmp f32 Olt x_39_0, -6.2831855_0 
              #                    occupy fa0 with x_39_0
              #                    occupy fa1 with -6.2831855_0
              #                    occupy a0 with _anonymous_of_-6.2831855_0_0
    li      a0, 3234402267
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_24_cmp_42_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     131  br i1 temp_24_cmp_42_0, label branch_short_circuit_c_true_309, label UP_75_0 
              #                    occupy a1 with temp_24_cmp_42_0
              #                    free a1
              #                    occupy a1 with temp_24_cmp_42_0
              #                    store to temp_24_cmp_42_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_24_cmp_42_0
              #                    occupy a1 with temp_23_cmp_42_0
              #                    load from temp_23_cmp_42_0 in mem


    lb      a1,7(sp)
              #                    occupy a0 with temp_24_cmp_42_0
              #                    load from temp_24_cmp_42_0 in mem


    lb      a0,6(sp)
    bnez    a0, .branch_short_circuit_c_true_309
              #                    free a0
    j       .UP_75_0
              #                    regtab     a0:Freed { symidx: temp_24_cmp_42_0, tracked: true } |     a1:Freed { symidx: temp_23_cmp_42_0, tracked: true } |     fa0:Freed { symidx: x_39_0, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     570  label UP_75_0: 
.UP_75_0:
              #                     653  untrack temp_19__44_0 
              #                     652  untrack temp_18_arithop_44_0 
              #                     651  untrack temp_24_cmp_42_0 
              #                    occupy a0 with temp_24_cmp_42_0
              #                    release a0 with temp_24_cmp_42_0
              #                     650  untrack temp_20__44_0 
              #                     649  untrack temp_21_arithop_44_0 
              #                     648  untrack temp_22_arithop_44_0 
              #                     578  x_39_2 = f32 x_39_0 
              #                    occupy fa0 with x_39_0
              #                    occupy fa1 with x_39_2
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     654  untrack x_39_0 
              #                    occupy fa0 with x_39_0
              #                    release fa0 with x_39_0
              #                          jump label: branch_short_circuit_c_false_309 
              #                    occupy fa1 with x_39_2
              #                    store to x_39_2 in mem offset legal
    fsw     fa1,48(sp)
              #                    release fa1 with x_39_2
              #                    occupy fa0 with x_39_2
              #                    load from x_39_2 in mem


    flw     fa0,48(sp)
              #                    occupy a1 with temp_23_cmp_42_0
              #                    store to temp_23_cmp_42_0 in mem offset legal
    sb      a1,7(sp)
              #                    release a1 with temp_23_cmp_42_0
    j       .branch_short_circuit_c_false_309
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   Define my_cos_0 "x_54_0," -> my_cos_ret_0 
    .globl my_cos
    .type my_cos,@function
my_cos:
              #                    mem layout:|ra_my_cos:8 at 24|s0_my_cos:8 at 16|x _s54 _i0:4 at 12|temp_27_arithop _s56 _i0:4 at 8|temp_28_ret_of_my_sin _s56 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_my_cos_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_cos_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     145  alloc f32 [temp_27_arithop_56] 
              #                     147  alloc f32 [temp_28_ret_of_my_sin_56] 
              #                    regtab     fa0:Freed { symidx: x_54_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L4_0: 
.L4_0:
              #                     146  temp_27_arithop_56_0 = Add f32 x_54_0, 1.5707964_0 
              #                    occupy fa0 with x_54_0
              #                    occupy fa1 with 1.5707964_0
              #                    occupy a0 with _anonymous_of_1.5707964_0_0
    li      a0, 1070141403
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_27_arithop_56_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     656  untrack x_54_0 
              #                    occupy fa0 with x_54_0
              #                    release fa0 with x_54_0
              #                     148  temp_28_ret_of_my_sin_56_0 =  Call f32 my_sin_0(temp_27_arithop_56_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_27_arithop_56_0
              #                    store to temp_27_arithop_56_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_27_arithop_56_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_27_arithop_56_0_0
              #                    load from temp_27_arithop_56_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    my_sin
              #                     655  untrack temp_27_arithop_56_0 
              #                     149  ret temp_28_ret_of_my_sin_56_0 
              #                    load from ra_my_cos_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_cos_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with temp_28_ret_of_my_sin_56_0
              #                    store to temp_28_ret_of_my_sin_56_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_28_ret_of_my_sin_56_0
              #                    occupy fa0 with temp_28_ret_of_my_sin_56_0
              #                    load from temp_28_ret_of_my_sin_56_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     43   Define write_mat_0 "mat_58,n_58_0,m_58_0," -> write_mat_ret_0 
    .globl write_mat
    .type write_mat,@function
write_mat:
              #                    mem layout:|ra_write_mat:8 at 88|s0_write_mat:8 at 80|mat:8 at 72|mat:8 at 64|n _s58 _i0:4 at 60|m _s58 _i0:4 at 56|i _s60 _i1:4 at 52|none:4 at 48|temp_29_ptr_of_mat_58:8 at 40|temp_30_ele_of_mat_58 _s64 _i0:4 at 36|j _s64 _i1:4 at 32|temp_31_arithop _s64 _i0:4 at 28|none:4 at 24|temp_32_ptr_of_mat_58:8 at 16|temp_33_ele_of_mat_58 _s69 _i0:4 at 12|temp_34_arithop _s69 _i0:4 at 8|temp_35_cmp _s62 _i0:1 at 7|temp_36_cmp _s67 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-96
              #                    store to ra_write_mat_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_write_mat_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                     152  alloc i32 [i_60] 
              #                     154  alloc ptr->f32 [temp_29_ptr_of_mat_58_64] 
              #                     156  alloc f32 [temp_30_ele_of_mat_58_64] 
              #                     161  alloc i32 [j_64] 
              #                     163  alloc i32 [temp_31_arithop_64] 
              #                     167  alloc ptr->f32 [temp_32_ptr_of_mat_58_69] 
              #                     169  alloc f32 [temp_33_ele_of_mat_58_69] 
              #                     173  alloc i32 [temp_34_arithop_69] 
              #                     176  alloc i1 [temp_35_cmp_62] 
              #                     184  alloc i1 [temp_36_cmp_67] 
              #                    regtab     a0:Freed { symidx: mat_58, tracked: true } |     a1:Freed { symidx: n_58_0, tracked: true } |     a2:Freed { symidx: m_58_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     42    
              #                     151  (nop) 
              #                     579  i_60_1 = i32 0_0 
              #                    occupy a3 with i_60_1
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_63 
    j       .while.head_63
              #                    regtab     a0:Freed { symidx: mat_58, tracked: true } |     a1:Freed { symidx: n_58_0, tracked: true } |     a2:Freed { symidx: m_58_0, tracked: true } |     a3:Freed { symidx: i_60_1, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     178  label while.head_63: 
.while.head_63:
              #                     177  temp_35_cmp_62_0 = icmp i32 Slt i_60_1, n_58_0 
              #                    occupy a3 with i_60_1
              #                    occupy a1 with n_58_0
              #                    occupy a4 with temp_35_cmp_62_0
    slt     a4,a3,a1
              #                    free a3
              #                    free a1
              #                    free a4
              #                     181  br i1 temp_35_cmp_62_0, label while.body_63, label while.exit_63 
              #                    occupy a4 with temp_35_cmp_62_0
              #                    free a4
              #                    occupy a4 with temp_35_cmp_62_0
    bnez    a4, .while.body_63
              #                    free a4
    j       .while.exit_63
              #                    regtab     a0:Freed { symidx: mat_58, tracked: true } |     a1:Freed { symidx: n_58_0, tracked: true } |     a2:Freed { symidx: m_58_0, tracked: true } |     a3:Freed { symidx: i_60_1, tracked: true } |     a4:Freed { symidx: temp_35_cmp_62_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     179  label while.body_63: 
.while.body_63:
              #                     155  temp_29_ptr_of_mat_58_64 = GEP mat_58:Array:f32:[None, Some(8_0)] [Some(i_60_1), Some(0_0)] 
              #                    occupy a5 with temp_29_ptr_of_mat_58_64
    li      a5, 0
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a3 with i_60_1
    slli a6,a3,3
              #                    free a3
    add     a5,a5,a6
              #                    free a6
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
              #                    occupy a0 with mat_58
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                     157  temp_30_ele_of_mat_58_64_0 = load temp_29_ptr_of_mat_58_64:ptr->f32 
              #                    occupy a5 with temp_29_ptr_of_mat_58_64
              #                    occupy fa0 with temp_30_ele_of_mat_58_64_0
    flw     fa0,0(a5)
              #                    free fa0
              #                    free a5
              #                     158  mu mat_58:157 
              #                     159   Call void putfloat_0(temp_30_ele_of_mat_58_64_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with mat_58
              #                    store to mat_58 in mem offset legal
    sd      a0,64(sp)
              #                    release a0 with mat_58
              #                    occupy a1 with n_58_0
              #                    store to n_58_0 in mem offset legal
    sw      a1,60(sp)
              #                    release a1 with n_58_0
              #                    occupy a2 with m_58_0
              #                    store to m_58_0 in mem offset legal
    sw      a2,56(sp)
              #                    release a2 with m_58_0
              #                    occupy a3 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a3,52(sp)
              #                    release a3 with i_60_1
              #                    occupy a4 with temp_35_cmp_62_0
              #                    store to temp_35_cmp_62_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_35_cmp_62_0
              #                    occupy a5 with temp_29_ptr_of_mat_58_64
              #                    store to temp_29_ptr_of_mat_58_64 in mem offset legal
    sd      a5,40(sp)
              #                    release a5 with temp_29_ptr_of_mat_58_64
              #                    occupy fa0 with temp_30_ele_of_mat_58_64_0
              #                    store to temp_30_ele_of_mat_58_64_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_30_ele_of_mat_58_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_30_ele_of_mat_58_64_0_0
              #                    load from temp_30_ele_of_mat_58_64_0 in mem


    flw     fa0,36(sp)
              #                    arg load ended


    call    putfloat
              #                     160  (nop) 
              #                     580  j_64_1 = i32 1_0 
              #                    occupy a0 with j_64_1
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_68 
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: j_64_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     186  label while.head_68: 
.while.head_68:
              #                     185  temp_36_cmp_67_0 = icmp i32 Slt j_64_1, m_58_0 
              #                    occupy a0 with j_64_1
              #                    occupy a1 with m_58_0
              #                    load from m_58_0 in mem


    lw      a1,56(sp)
              #                    occupy a2 with temp_36_cmp_67_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     189  br i1 temp_36_cmp_67_0, label while.body_68, label while.exit_68 
              #                    occupy a2 with temp_36_cmp_67_0
              #                    free a2
              #                    occupy a2 with temp_36_cmp_67_0
    bnez    a2, .while.body_68
              #                    free a2
    j       .while.exit_68
              #                    regtab     a0:Freed { symidx: j_64_1, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: temp_36_cmp_67_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     187  label while.body_68: 
.while.body_68:
              #                     166   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with j_64_1
              #                    store to j_64_1 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with j_64_1
              #                    occupy a1 with m_58_0
              #                    store to m_58_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with m_58_0
              #                    occupy a2 with temp_36_cmp_67_0
              #                    store to temp_36_cmp_67_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_36_cmp_67_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     168  temp_32_ptr_of_mat_58_69 = GEP mat_58:Array:f32:[None, Some(8_0)] [Some(i_60_1), Some(j_64_1)] 
              #                    occupy a0 with temp_32_ptr_of_mat_58_69
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_60_1
              #                    load from i_60_1 in mem


    lw      a2,52(sp)
    slli a1,a2,3
              #                    free a2
    add     a0,a0,a1
              #                    free a1
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with j_64_1
              #                    load from j_64_1 in mem


    lw      a4,32(sp)
    mv      a3, a4
              #                    free a4
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a5 with mat_58
              #                    load from mat_58 in mem
    ld      a5,64(sp)
    add     a0,a0,a5
              #                    free a5
              #                    free a0
              #                     170  temp_33_ele_of_mat_58_69_0 = load temp_32_ptr_of_mat_58_69:ptr->f32 
              #                    occupy a0 with temp_32_ptr_of_mat_58_69
              #                    occupy fa0 with temp_33_ele_of_mat_58_69_0
    flw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     171  mu mat_58:170 
              #                     172   Call void putfloat_0(temp_33_ele_of_mat_58_69_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_32_ptr_of_mat_58_69
              #                    store to temp_32_ptr_of_mat_58_69 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_32_ptr_of_mat_58_69
              #                    occupy a2 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a2,52(sp)
              #                    release a2 with i_60_1
              #                    occupy a4 with j_64_1
              #                    store to j_64_1 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with j_64_1
              #                    occupy a5 with mat_58
              #                    store to mat_58 in mem offset legal
    sd      a5,64(sp)
              #                    release a5 with mat_58
              #                    occupy fa0 with temp_33_ele_of_mat_58_69_0
              #                    store to temp_33_ele_of_mat_58_69_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_33_ele_of_mat_58_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_33_ele_of_mat_58_69_0_0
              #                    load from temp_33_ele_of_mat_58_69_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    putfloat
              #                     174  temp_34_arithop_69_0 = Add i32 j_64_1, 1_0 
              #                    occupy a0 with j_64_1
              #                    load from j_64_1 in mem


    lw      a0,32(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_34_arithop_69_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     175  (nop) 
              #                     581  j_64_1 = i32 temp_34_arithop_69_0 
              #                    occupy a2 with temp_34_arithop_69_0
              #                    occupy a0 with j_64_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_68 
              #                    occupy a2 with temp_34_arithop_69_0
              #                    store to temp_34_arithop_69_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_34_arithop_69_0
    j       .while.head_68
              #                    regtab     a0:Freed { symidx: j_64_1, tracked: true } |     a1:Freed { symidx: m_58_0, tracked: true } |     a2:Freed { symidx: temp_36_cmp_67_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     188  label while.exit_68: 
.while.exit_68:
              #                     162   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with j_64_1
              #                    store to j_64_1 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with j_64_1
              #                    occupy a1 with m_58_0
              #                    store to m_58_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with m_58_0
              #                    occupy a2 with temp_36_cmp_67_0
              #                    store to temp_36_cmp_67_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_36_cmp_67_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     164  temp_31_arithop_64_0 = Add i32 i_60_1, 1_0 
              #                    occupy a0 with i_60_1
              #                    load from i_60_1 in mem


    lw      a0,52(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_31_arithop_64_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     165  (nop) 
              #                     582  i_60_1 = i32 temp_31_arithop_64_0 
              #                    occupy a2 with temp_31_arithop_64_0
              #                    occupy a0 with i_60_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_63 
              #                    occupy a0 with i_60_1
              #                    store to i_60_1 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with i_60_1
              #                    occupy a0 with mat_58
              #                    load from mat_58 in mem
    ld      a0,64(sp)
              #                    occupy a1 with n_58_0
              #                    load from n_58_0 in mem


    lw      a1,60(sp)
              #                    occupy a3 with i_60_1
              #                    load from i_60_1 in mem


    lw      a3,52(sp)
              #                    occupy a2 with temp_31_arithop_64_0
              #                    store to temp_31_arithop_64_0 in mem offset legal
    sw      a2,28(sp)
              #                    release a2 with temp_31_arithop_64_0
              #                    occupy a2 with m_58_0
              #                    load from m_58_0 in mem


    lw      a2,56(sp)
    j       .while.head_63
              #                    regtab     a0:Freed { symidx: mat_58, tracked: true } |     a1:Freed { symidx: n_58_0, tracked: true } |     a2:Freed { symidx: m_58_0, tracked: true } |     a3:Freed { symidx: i_60_1, tracked: true } |     a4:Freed { symidx: temp_35_cmp_62_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     180  label while.exit_63: 
.while.exit_63:
              #                     660  untrack i_60_1 
              #                    occupy a3 with i_60_1
              #                    release a3 with i_60_1
              #                     659  untrack mat_58 
              #                    occupy a0 with mat_58
              #                    release a0 with mat_58
              #                     658  untrack m_58_0 
              #                    occupy a2 with m_58_0
              #                    release a2 with m_58_0
              #                     657  untrack n_58_0 
              #                    occupy a1 with n_58_0
              #                    release a1 with n_58_0
              #                     153   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a4 with temp_35_cmp_62_0
              #                    store to temp_35_cmp_62_0 in mem offset legal
    sb      a4,7(sp)
              #                    release a4 with temp_35_cmp_62_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: exit_32 
    j       .exit_32
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     183  label exit_32: 
.exit_32:
              #                     182  ret 
              #                    load from ra_write_mat_0 in mem
    ld      ra,88(sp)
              #                    load from s0_write_mat_0 in mem
    ld      s0,80(sp)
    addi    sp,sp,96
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     46   Define dct_0 "dct_mat_76,mat_76,n_76_0,m_76_0," -> dct_ret_0 
    .globl dct
    .type dct,@function
dct:
              #                    mem layout:|ra_dct:8 at 256|s0_dct:8 at 248|dct_mat:8 at 240|dct_mat:8 at 232|dct_mat:8 at 224|dct_mat:8 at 216|dct_mat:8 at 208|dct_mat _s76 _i5:8 at 200|dct_mat:8 at 192|dct_mat:8 at 184|mat:8 at 176|mat:8 at 168|n _s76 _i0:4 at 164|m _s76 _i0:4 at 160|u _s78 _i1:4 at 156|v _s82 _i1:4 at 152|temp_37_arithop _s82 _i0:4 at 148|none:4 at 144|temp_38_ptr_of_dct_mat_76:8 at 136|i _s86 _i1:4 at 132|temp_40_arithop _s86 _i0:4 at 128|j _s91 _i1:4 at 124|temp_41_arithop _s91 _i0:4 at 120|temp_42_ptr_of_dct_mat_76:8 at 112|temp_43_ptr_of_dct_mat_76:8 at 104|temp_44_ele_of_dct_mat_76 _s95 _i0:4 at 100|none:4 at 96|temp_45_ptr_of_mat_76:8 at 88|temp_46_ele_of_mat_76 _s95 _i0:4 at 84|temp_47_ _s95 _i0:4 at 80|temp_48_arithop _s95 _i0:4 at 76|temp_49_ _s95 _i0:4 at 72|temp_50_arithop _s95 _i0:4 at 68|temp_51_arithop _s95 _i0:4 at 64|temp_52_ _s95 _i0:4 at 60|temp_53_arithop _s95 _i0:4 at 56|temp_54_ret_of_my_cos _s95 _i0:4 at 52|temp_55_arithop _s95 _i0:4 at 48|temp_56_ _s95 _i0:4 at 44|temp_57_arithop _s95 _i0:4 at 40|temp_58_ _s95 _i0:4 at 36|temp_59_arithop _s95 _i0:4 at 32|temp_60_arithop _s95 _i0:4 at 28|temp_61_ _s95 _i0:4 at 24|temp_62_arithop _s95 _i0:4 at 20|temp_63_ret_of_my_cos _s95 _i0:4 at 16|temp_64_arithop _s95 _i0:4 at 12|temp_65_arithop _s95 _i0:4 at 8|temp_66_arithop _s95 _i0:4 at 4|temp_67_cmp _s80 _i0:1 at 3|temp_68_cmp _s84 _i0:1 at 2|temp_69_cmp _s89 _i0:1 at 1|temp_70_cmp _s93 _i0:1 at 0
    addi    sp,sp,-264
              #                    store to ra_dct_0 in mem offset legal
    sd      ra,256(sp)
              #                    store to s0_dct_0 in mem offset legal
    sd      s0,248(sp)
    addi    s0,sp,264
              #                     191  alloc i32 [u_78] 
              #                     193  alloc i32 [v_82] 
              #                     194  alloc i32 [temp_37_arithop_82] 
              #                     197  alloc ptr->f32 [temp_38_ptr_of_dct_mat_76_86] 
              #                     199  alloc f32 [temp_39__86] 
              #                     204  alloc i32 [i_86] 
              #                     205  alloc i32 [temp_40_arithop_86] 
              #                     209  alloc i32 [j_91] 
              #                     210  alloc i32 [temp_41_arithop_91] 
              #                     213  alloc ptr->f32 [temp_42_ptr_of_dct_mat_76_95] 
              #                     215  alloc ptr->f32 [temp_43_ptr_of_dct_mat_76_95] 
              #                     217  alloc f32 [temp_44_ele_of_dct_mat_76_95] 
              #                     220  alloc ptr->f32 [temp_45_ptr_of_mat_76_95] 
              #                     222  alloc f32 [temp_46_ele_of_mat_76_95] 
              #                     225  alloc f32 [temp_47__95] 
              #                     227  alloc f32 [temp_48_arithop_95] 
              #                     229  alloc f32 [temp_49__95] 
              #                     231  alloc f32 [temp_50_arithop_95] 
              #                     233  alloc f32 [temp_51_arithop_95] 
              #                     235  alloc f32 [temp_52__95] 
              #                     237  alloc f32 [temp_53_arithop_95] 
              #                     239  alloc f32 [temp_54_ret_of_my_cos_95] 
              #                     241  alloc f32 [temp_55_arithop_95] 
              #                     243  alloc f32 [temp_56__95] 
              #                     245  alloc f32 [temp_57_arithop_95] 
              #                     247  alloc f32 [temp_58__95] 
              #                     249  alloc f32 [temp_59_arithop_95] 
              #                     251  alloc f32 [temp_60_arithop_95] 
              #                     253  alloc f32 [temp_61__95] 
              #                     255  alloc f32 [temp_62_arithop_95] 
              #                     257  alloc f32 [temp_63_ret_of_my_cos_95] 
              #                     259  alloc f32 [temp_64_arithop_95] 
              #                     261  alloc f32 [temp_65_arithop_95] 
              #                     265  alloc i32 [temp_66_arithop_95] 
              #                     268  alloc i1 [temp_67_cmp_80] 
              #                     275  alloc i1 [temp_68_cmp_84] 
              #                     281  alloc i1 [temp_69_cmp_89] 
              #                     287  alloc i1 [temp_70_cmp_93] 
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     44    
              #                     45    
              #                     190  (nop) 
              #                     226  temp_47__95_0 = sitofp i32 n_76_0 to f32 
              #                    occupy a2 with n_76_0
              #                    occupy fa0 with temp_47__95_0
    fcvt.s.w fa0,a2,rtz
              #                    free a2
              #                    free fa0
              #                     244  temp_56__95_0 = sitofp i32 m_76_0 to f32 
              #                    occupy a3 with m_76_0
              #                    occupy fa1 with temp_56__95_0
    fcvt.s.w fa1,a3,rtz
              #                    free a3
              #                    free fa1
              #                     583  u_78_1 = i32 0_0 
              #                    occupy a4 with u_78_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_81 
    j       .while.head_81
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |  released_gpr_count:14,released_fpr_count:22
              #                     270  label while.head_81: 
.while.head_81:
              #                     269  temp_67_cmp_80_0 = icmp i32 Slt u_78_1, n_76_0 
              #                    occupy a4 with u_78_1
              #                    occupy a2 with n_76_0
              #                    occupy a5 with temp_67_cmp_80_0
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     273  br i1 temp_67_cmp_80_0, label while.body_81, label while.exit_81 
              #                    occupy a5 with temp_67_cmp_80_0
              #                    free a5
              #                    occupy a5 with temp_67_cmp_80_0
    bnez    a5, .while.body_81
              #                    free a5
    j       .while.exit_81
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |  released_gpr_count:13,released_fpr_count:22
              #                     271  label while.body_81: 
.while.body_81:
              #                     192  (nop) 
              #                     228  temp_48_arithop_95_0 = Div f32 3.1415927_0, temp_47__95_0 
              #                    occupy fa2 with 3.1415927_0
              #                    occupy a6 with _anonymous_of_3.1415927_0_0
    li      a6, 1078530011
    fmv.w.x fa2, a6
              #                    free a6
              #                    occupy fa0 with temp_47__95_0
              #                    occupy fa3 with temp_48_arithop_95_0
    fdiv.s  fa3,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa3
              #                     236  temp_52__95_0 = sitofp i32 u_78_1 to f32 
              #                    occupy a4 with u_78_1
              #                    occupy fa4 with temp_52__95_0
    fcvt.s.w fa4,a4,rtz
              #                    free a4
              #                    free fa4
              #                     246  temp_57_arithop_95_0 = Div f32 3.1415927_0, temp_56__95_0 
              #                    found literal reg Some(fa2) already exist with 3.1415927_0
              #                    occupy fa2 with 3.1415927_0
              #                    occupy fa1 with temp_56__95_0
              #                    occupy fa5 with temp_57_arithop_95_0
    fdiv.s  fa5,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa5
              #                     584  v_82_1 = i32 0_0 
              #                    occupy a7 with v_82_1
    li      a7, 0
              #                    free a7
              #                          jump label: while.head_85 
    j       .while.head_85
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |  released_gpr_count:11,released_fpr_count:18
              #                     277  label while.head_85: 
.while.head_85:
              #                     276  temp_68_cmp_84_0 = icmp i32 Slt v_82_1, m_76_0 
              #                    occupy a7 with v_82_1
              #                    occupy a3 with m_76_0
              #                    occupy a6 with temp_68_cmp_84_0
    slt     a6,a7,a3
              #                    free a7
              #                    free a3
              #                    free a6
              #                     280  br i1 temp_68_cmp_84_0, label while.body_85, label while.exit_85 
              #                    occupy a6 with temp_68_cmp_84_0
              #                    free a6
              #                    occupy a6 with temp_68_cmp_84_0
    bnez    a6, .while.body_85
              #                    free a6
    j       .while.exit_85
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |  released_gpr_count:10,released_fpr_count:18
              #                     278  label while.body_85: 
.while.body_85:
              #                     198  temp_38_ptr_of_dct_mat_76_86 = GEP dct_mat_76:ptr->Array:f32:[Some(8_0)] [Some(u_78_1), Some(v_82_1)] 
              #                    occupy s1 with temp_38_ptr_of_dct_mat_76_86
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_78_1
    slli s2,a4,3
              #                    free a4
    add     s1,s1,s2
              #                    free s2
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with v_82_1
    mv      s3, a7
              #                    free a7
    add     s1,s1,s3
              #                    free s3
    slli s1,s1,2
              #                    occupy a0 with dct_mat_76
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     200  (nop) 
              #                     201  store 0._0:f32 temp_38_ptr_of_dct_mat_76_86:ptr->f32 
              #                    occupy s1 with temp_38_ptr_of_dct_mat_76_86
              #                    occupy fa2 with 0._0
              #                    occupy s4 with _anonymous_of_0._0_0
    li      s4, 0
    fmv.w.x fa2, s4
              #                    free s4
    fsw     fa2,0(s1)
              #                    free fa2
              #                    free s1
              #                     202  dct_mat_76 = chi dct_mat_76:201 
              #                     203  (nop) 
              #                     254  temp_61__95_0 = sitofp i32 v_82_1 to f32 
              #                    occupy a7 with v_82_1
              #                    occupy fa6 with temp_61__95_0
    fcvt.s.w fa6,a7,rtz
              #                    free a7
              #                    free fa6
              #                     585  i_86_1 = i32 0_0 
              #                    occupy s5 with i_86_1
    li      s5, 0
              #                    free s5
              #                          jump label: while.head_90 
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s5:Freed { symidx: i_86_1, tracked: true } |  released_gpr_count:5,released_fpr_count:16
              #                     283  label while.head_90: 
.while.head_90:
              #                     282  temp_69_cmp_89_0 = icmp i32 Slt i_86_1, n_76_0 
              #                    occupy s5 with i_86_1
              #                    occupy a2 with n_76_0
              #                    occupy s2 with temp_69_cmp_89_0
    slt     s2,s5,a2
              #                    free s5
              #                    occupy s5 with i_86_1
              #                    store to i_86_1 in mem offset legal
    sw      s5,132(sp)
              #                    release s5 with i_86_1
              #                    free a2
              #                    free s2
              #                     286  br i1 temp_69_cmp_89_0, label while.body_90, label while.exit_90 
              #                    occupy s2 with temp_69_cmp_89_0
              #                    free s2
              #                    occupy s2 with temp_69_cmp_89_0
    bnez    s2, .while.body_90
              #                    free s2
    j       .while.exit_90
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s2:Freed { symidx: temp_69_cmp_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:16
              #                     284  label while.body_90: 
.while.body_90:
              #                     208  (nop) 
              #                     230  temp_49__95_0 = sitofp i32 i_86_1 to f32 
              #                    occupy s3 with i_86_1
              #                    load from i_86_1 in mem


    lw      s3,132(sp)
              #                    occupy fa2 with temp_49__95_0
    fcvt.s.w fa2,s3,rtz
              #                    free s3
              #                    occupy s3 with i_86_1
              #                    store to i_86_1 in mem offset legal
    sw      s3,132(sp)
              #                    release s3 with i_86_1
              #                    free fa2
              #                     586  j_91_1 = i32 0_0 
              #                    occupy s3 with j_91_1
    li      s3, 0
              #                    free s3
              #                    occupy s3 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with j_91_1
              #                          jump label: while.head_94 
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa2:Freed { symidx: temp_49__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s2:Freed { symidx: temp_69_cmp_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     289  label while.head_94: 
.while.head_94:
              #                     288  temp_70_cmp_93_0 = icmp i32 Slt j_91_1, m_76_0 
              #                    occupy s3 with j_91_1
              #                    load from j_91_1 in mem


    lw      s3,124(sp)
              #                    occupy a3 with m_76_0
              #                    occupy s4 with temp_70_cmp_93_0
    slt     s4,s3,a3
              #                    free s3
              #                    occupy s3 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      s3,124(sp)
              #                    release s3 with j_91_1
              #                    free a3
              #                    occupy a3 with m_76_0
              #                    store to m_76_0 in mem offset legal
    sw      a3,160(sp)
              #                    release a3 with m_76_0
              #                    free s4
              #                     292  br i1 temp_70_cmp_93_0, label while.body_94, label while.exit_94 
              #                    occupy s4 with temp_70_cmp_93_0
              #                    free s4
              #                    occupy s4 with temp_70_cmp_93_0
    bnez    s4, .while.body_94
              #                    free s4
    j       .while.exit_94
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa2:Freed { symidx: temp_49__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s2:Freed { symidx: temp_69_cmp_89_0, tracked: true } |     s4:Freed { symidx: temp_70_cmp_93_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     290  label while.body_94: 
.while.body_94:
              #                     214  temp_42_ptr_of_dct_mat_76_95 = GEP dct_mat_76:ptr->Array:f32:[Some(8_0)] [Some(u_78_1), Some(v_82_1)] 
              #                    occupy a3 with temp_42_ptr_of_dct_mat_76_95
    li      a3, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_78_1
    slli s3,a4,3
              #                    free a4
              #                    occupy a4 with u_78_1
              #                    store to u_78_1 in mem offset legal
    sw      a4,156(sp)
              #                    release a4 with u_78_1
    add     a3,a3,s3
              #                    free s3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a7 with v_82_1
    mv      a4, a7
              #                    free a7
              #                    occupy a7 with v_82_1
              #                    store to v_82_1 in mem offset legal
    sw      a7,152(sp)
              #                    release a7 with v_82_1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with dct_mat_76
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     216  (nop) 
              #                     218  temp_44_ele_of_dct_mat_76_95_0 = load temp_42_ptr_of_dct_mat_76_95:ptr->f32 
              #                    occupy a3 with temp_42_ptr_of_dct_mat_76_95
              #                    occupy fa7 with temp_44_ele_of_dct_mat_76_95_0
    flw     fa7,0(a3)
              #                    free fa7
              #                    free a3
              #                     219  mu dct_mat_76:218 
              #                     221  temp_45_ptr_of_mat_76_95 = GEP mat_76:Array:f32:[None, Some(8_0)] [Some(i_86_1), Some(j_91_1)] 
              #                    occupy a7 with temp_45_ptr_of_mat_76_95
    li      a7, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with i_86_1
              #                    load from i_86_1 in mem


    lw      s5,132(sp)
    slli s3,s5,3
              #                    free s5
              #                    occupy s5 with i_86_1
              #                    store to i_86_1 in mem offset legal
    sw      s5,132(sp)
              #                    release s5 with i_86_1
    add     a7,a7,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s5 with j_91_1
              #                    load from j_91_1 in mem


    lw      s5,124(sp)
    mv      s3, s5
              #                    free s5
              #                    occupy s5 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      s5,124(sp)
              #                    release s5 with j_91_1
    add     a7,a7,s3
              #                    free s3
    slli a7,a7,2
              #                    occupy a1 with mat_76
    add     a7,a7,a1
              #                    free a1
              #                    occupy a1 with mat_76
              #                    store to mat_76 in mem offset legal
    sd      a1,168(sp)
              #                    release a1 with mat_76
              #                    free a7
              #                     223  temp_46_ele_of_mat_76_95_0 = load temp_45_ptr_of_mat_76_95:ptr->f32 
              #                    occupy a7 with temp_45_ptr_of_mat_76_95
              #                    occupy f8 with temp_46_ele_of_mat_76_95_0
    flw     f8,0(a7)
              #                    free f8
              #                    free a7
              #                     224  mu mat_76:223 
              #                     232  temp_50_arithop_95_0 = Add f32 temp_49__95_0, 0.5_0 
              #                    occupy fa2 with temp_49__95_0
              #                    occupy f9 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x f9, a1
              #                    free a1
              #                    occupy f18 with temp_50_arithop_95_0
    fadd.s  f18,fa2,f9
              #                    free fa2
              #                    free f9
              #                    free f18
              #                     234  temp_51_arithop_95_0 = Mul f32 temp_48_arithop_95_0, temp_50_arithop_95_0 
              #                    occupy fa3 with temp_48_arithop_95_0
              #                    occupy f18 with temp_50_arithop_95_0
              #                    occupy f19 with temp_51_arithop_95_0
    fmul.s  f19,fa3,f18
              #                    free fa3
              #                    free f18
              #                    free f19
              #                     238  temp_53_arithop_95_0 = Mul f32 temp_51_arithop_95_0, temp_52__95_0 
              #                    occupy f19 with temp_51_arithop_95_0
              #                    occupy fa4 with temp_52__95_0
              #                    occupy f20 with temp_53_arithop_95_0
    fmul.s  f20,f19,fa4
              #                    free f19
              #                    free fa4
              #                    free f20
              #                     240  temp_54_ret_of_my_cos_95_0 =  Call f32 my_cos_0(temp_53_arithop_95_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_38_ptr_of_dct_mat_76_86
              #                    store to temp_38_ptr_of_dct_mat_76_86 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_38_ptr_of_dct_mat_76_86
              #                    occupy s2 with temp_69_cmp_89_0
              #                    store to temp_69_cmp_89_0 in mem offset legal
    sb      s2,1(sp)
              #                    release s2 with temp_69_cmp_89_0
              #                    occupy s4 with temp_70_cmp_93_0
              #                    store to temp_70_cmp_93_0 in mem offset legal
    sb      s4,0(sp)
              #                    release s4 with temp_70_cmp_93_0
              #                    occupy a0 with dct_mat_76
              #                    store to dct_mat_76 in mem offset legal
    sd      a0,184(sp)
              #                    release a0 with dct_mat_76
              #                    occupy a2 with n_76_0
              #                    store to n_76_0 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with n_76_0
              #                    occupy a3 with temp_42_ptr_of_dct_mat_76_95
              #                    store to temp_42_ptr_of_dct_mat_76_95 in mem offset legal
    sd      a3,112(sp)
              #                    release a3 with temp_42_ptr_of_dct_mat_76_95
              #                    occupy a5 with temp_67_cmp_80_0
              #                    store to temp_67_cmp_80_0 in mem offset legal
    sb      a5,3(sp)
              #                    release a5 with temp_67_cmp_80_0
              #                    occupy a6 with temp_68_cmp_84_0
              #                    store to temp_68_cmp_84_0 in mem offset legal
    sb      a6,2(sp)
              #                    release a6 with temp_68_cmp_84_0
              #                    occupy a7 with temp_45_ptr_of_mat_76_95
              #                    store to temp_45_ptr_of_mat_76_95 in mem offset legal
    sd      a7,88(sp)
              #                    release a7 with temp_45_ptr_of_mat_76_95
              #                    occupy f8 with temp_46_ele_of_mat_76_95_0
              #                    store to temp_46_ele_of_mat_76_95_0 in mem offset legal
    fsw     f8,84(sp)
              #                    release f8 with temp_46_ele_of_mat_76_95_0
              #                    occupy f18 with temp_50_arithop_95_0
              #                    store to temp_50_arithop_95_0 in mem offset legal
    fsw     f18,68(sp)
              #                    release f18 with temp_50_arithop_95_0
              #                    occupy f19 with temp_51_arithop_95_0
              #                    store to temp_51_arithop_95_0 in mem offset legal
    fsw     f19,64(sp)
              #                    release f19 with temp_51_arithop_95_0
              #                    occupy f20 with temp_53_arithop_95_0
              #                    store to temp_53_arithop_95_0 in mem offset legal
    fsw     f20,56(sp)
              #                    release f20 with temp_53_arithop_95_0
              #                    occupy fa0 with temp_47__95_0
              #                    store to temp_47__95_0 in mem offset legal
    fsw     fa0,80(sp)
              #                    release fa0 with temp_47__95_0
              #                    occupy fa1 with temp_56__95_0
              #                    store to temp_56__95_0 in mem offset legal
    fsw     fa1,44(sp)
              #                    release fa1 with temp_56__95_0
              #                    occupy fa2 with temp_49__95_0
              #                    store to temp_49__95_0 in mem offset legal
    fsw     fa2,72(sp)
              #                    release fa2 with temp_49__95_0
              #                    occupy fa3 with temp_48_arithop_95_0
              #                    store to temp_48_arithop_95_0 in mem offset legal
    fsw     fa3,76(sp)
              #                    release fa3 with temp_48_arithop_95_0
              #                    occupy fa4 with temp_52__95_0
              #                    store to temp_52__95_0 in mem offset legal
    fsw     fa4,60(sp)
              #                    release fa4 with temp_52__95_0
              #                    occupy fa5 with temp_57_arithop_95_0
              #                    store to temp_57_arithop_95_0 in mem offset legal
    fsw     fa5,40(sp)
              #                    release fa5 with temp_57_arithop_95_0
              #                    occupy fa6 with temp_61__95_0
              #                    store to temp_61__95_0 in mem offset legal
    fsw     fa6,24(sp)
              #                    release fa6 with temp_61__95_0
              #                    occupy fa7 with temp_44_ele_of_dct_mat_76_95_0
              #                    store to temp_44_ele_of_dct_mat_76_95_0 in mem offset legal
    fsw     fa7,100(sp)
              #                    release fa7 with temp_44_ele_of_dct_mat_76_95_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_53_arithop_95_0_0
              #                    load from temp_53_arithop_95_0 in mem


    flw     fa0,56(sp)
              #                    arg load ended


    call    my_cos
              #                     242  temp_55_arithop_95_0 = Mul f32 temp_46_ele_of_mat_76_95_0, temp_54_ret_of_my_cos_95_0 
              #                    occupy fa1 with temp_46_ele_of_mat_76_95_0
              #                    load from temp_46_ele_of_mat_76_95_0 in mem


    flw     fa1,84(sp)
              #                    occupy fa0 with temp_54_ret_of_my_cos_95_0
              #                    occupy fa2 with temp_55_arithop_95_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     248  temp_58__95_0 = sitofp i32 j_91_1 to f32 
              #                    occupy a0 with j_91_1
              #                    load from j_91_1 in mem


    lw      a0,124(sp)
              #                    occupy fa3 with temp_58__95_0
    fcvt.s.w fa3,a0,rtz
              #                    free a0
              #                    free fa3
              #                     250  temp_59_arithop_95_0 = Add f32 temp_58__95_0, 0.5_0 
              #                    occupy fa3 with temp_58__95_0
              #                    occupy fa4 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x fa4, a1
              #                    free a1
              #                    occupy fa5 with temp_59_arithop_95_0
    fadd.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     252  temp_60_arithop_95_0 = Mul f32 temp_57_arithop_95_0, temp_59_arithop_95_0 
              #                    occupy fa6 with temp_57_arithop_95_0
              #                    load from temp_57_arithop_95_0 in mem


    flw     fa6,40(sp)
              #                    occupy fa5 with temp_59_arithop_95_0
              #                    occupy fa7 with temp_60_arithop_95_0
    fmul.s  fa7,fa6,fa5
              #                    free fa6
              #                    free fa5
              #                    free fa7
              #                     256  temp_62_arithop_95_0 = Mul f32 temp_60_arithop_95_0, temp_61__95_0 
              #                    occupy fa7 with temp_60_arithop_95_0
              #                    occupy f8 with temp_61__95_0
              #                    load from temp_61__95_0 in mem


    flw     f8,24(sp)
              #                    occupy f9 with temp_62_arithop_95_0
    fmul.s  f9,fa7,f8
              #                    free fa7
              #                    free f8
              #                    free f9
              #                     258  temp_63_ret_of_my_cos_95_0 =  Call f32 my_cos_0(temp_62_arithop_95_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with j_91_1
              #                    occupy f8 with temp_61__95_0
              #                    store to temp_61__95_0 in mem offset legal
    fsw     f8,24(sp)
              #                    release f8 with temp_61__95_0
              #                    occupy f9 with temp_62_arithop_95_0
              #                    store to temp_62_arithop_95_0 in mem offset legal
    fsw     f9,20(sp)
              #                    release f9 with temp_62_arithop_95_0
              #                    occupy fa0 with temp_54_ret_of_my_cos_95_0
              #                    store to temp_54_ret_of_my_cos_95_0 in mem offset legal
    fsw     fa0,52(sp)
              #                    release fa0 with temp_54_ret_of_my_cos_95_0
              #                    occupy fa1 with temp_46_ele_of_mat_76_95_0
              #                    store to temp_46_ele_of_mat_76_95_0 in mem offset legal
    fsw     fa1,84(sp)
              #                    release fa1 with temp_46_ele_of_mat_76_95_0
              #                    occupy fa2 with temp_55_arithop_95_0
              #                    store to temp_55_arithop_95_0 in mem offset legal
    fsw     fa2,48(sp)
              #                    release fa2 with temp_55_arithop_95_0
              #                    occupy fa3 with temp_58__95_0
              #                    store to temp_58__95_0 in mem offset legal
    fsw     fa3,36(sp)
              #                    release fa3 with temp_58__95_0
              #                    occupy fa5 with temp_59_arithop_95_0
              #                    store to temp_59_arithop_95_0 in mem offset legal
    fsw     fa5,32(sp)
              #                    release fa5 with temp_59_arithop_95_0
              #                    occupy fa6 with temp_57_arithop_95_0
              #                    store to temp_57_arithop_95_0 in mem offset legal
    fsw     fa6,40(sp)
              #                    release fa6 with temp_57_arithop_95_0
              #                    occupy fa7 with temp_60_arithop_95_0
              #                    store to temp_60_arithop_95_0 in mem offset legal
    fsw     fa7,28(sp)
              #                    release fa7 with temp_60_arithop_95_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_62_arithop_95_0_0
              #                    load from temp_62_arithop_95_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_cos
              #                     260  temp_64_arithop_95_0 = Mul f32 temp_55_arithop_95_0, temp_63_ret_of_my_cos_95_0 
              #                    occupy fa1 with temp_55_arithop_95_0
              #                    load from temp_55_arithop_95_0 in mem


    flw     fa1,48(sp)
              #                    occupy fa0 with temp_63_ret_of_my_cos_95_0
              #                    occupy fa2 with temp_64_arithop_95_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     262  temp_65_arithop_95_0 = Add f32 temp_44_ele_of_dct_mat_76_95_0, temp_64_arithop_95_0 
              #                    occupy fa3 with temp_44_ele_of_dct_mat_76_95_0
              #                    load from temp_44_ele_of_dct_mat_76_95_0 in mem


    flw     fa3,100(sp)
              #                    occupy fa2 with temp_64_arithop_95_0
              #                    occupy fa4 with temp_65_arithop_95_0
    fadd.s  fa4,fa3,fa2
              #                    free fa3
              #                    free fa2
              #                    free fa4
              #                     263  store temp_65_arithop_95_0:f32 temp_42_ptr_of_dct_mat_76_95:ptr->f32 
              #                    occupy a0 with temp_42_ptr_of_dct_mat_76_95
              #                    load from temp_42_ptr_of_dct_mat_76_95 in mem
    ld      a0,112(sp)
              #                    occupy fa4 with temp_65_arithop_95_0
    fsw     fa4,0(a0)
              #                    free fa4
              #                    free a0
              #                     264  dct_mat_76 = chi dct_mat_76:263 
              #                     266  temp_66_arithop_95_0 = Add i32 j_91_1, 1_0 
              #                    occupy a1 with j_91_1
              #                    load from j_91_1 in mem


    lw      a1,124(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_66_arithop_95_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     267  (nop) 
              #                     587  j_91_1 = i32 temp_66_arithop_95_0 
              #                    occupy a3 with temp_66_arithop_95_0
              #                    occupy a1 with j_91_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_94 
              #                    occupy s1 with temp_38_ptr_of_dct_mat_76_86
              #                    load from temp_38_ptr_of_dct_mat_76_86 in mem
    ld      s1,136(sp)
              #                    occupy a4 with u_78_1
              #                    load from u_78_1 in mem


    lw      a4,156(sp)
              #                    occupy fa1 with temp_55_arithop_95_0
              #                    store to temp_55_arithop_95_0 in mem offset legal
    fsw     fa1,48(sp)
              #                    release fa1 with temp_55_arithop_95_0
              #                    occupy fa1 with temp_56__95_0
              #                    load from temp_56__95_0 in mem


    flw     fa1,44(sp)
              #                    occupy a1 with j_91_1
              #                    store to j_91_1 in mem offset legal
    sw      a1,124(sp)
              #                    release a1 with j_91_1
              #                    occupy a1 with mat_76
              #                    load from mat_76 in mem
    ld      a1,168(sp)
              #                    occupy fa0 with temp_63_ret_of_my_cos_95_0
              #                    store to temp_63_ret_of_my_cos_95_0 in mem offset legal
    fsw     fa0,16(sp)
              #                    release fa0 with temp_63_ret_of_my_cos_95_0
              #                    occupy fa0 with temp_47__95_0
              #                    load from temp_47__95_0 in mem


    flw     fa0,80(sp)
              #                    occupy a5 with temp_67_cmp_80_0
              #                    load from temp_67_cmp_80_0 in mem


    lb      a5,3(sp)
              #                    occupy fa4 with temp_65_arithop_95_0
              #                    store to temp_65_arithop_95_0 in mem offset legal
    fsw     fa4,8(sp)
              #                    release fa4 with temp_65_arithop_95_0
              #                    occupy fa4 with temp_52__95_0
              #                    load from temp_52__95_0 in mem


    flw     fa4,60(sp)
              #                    occupy a0 with temp_42_ptr_of_dct_mat_76_95
              #                    store to temp_42_ptr_of_dct_mat_76_95 in mem offset legal
    sd      a0,112(sp)
              #                    release a0 with temp_42_ptr_of_dct_mat_76_95
              #                    occupy a0 with dct_mat_76
              #                    load from dct_mat_76 in mem
    ld      a0,184(sp)
              #                    occupy fa3 with temp_44_ele_of_dct_mat_76_95_0
              #                    store to temp_44_ele_of_dct_mat_76_95_0 in mem offset legal
    fsw     fa3,100(sp)
              #                    release fa3 with temp_44_ele_of_dct_mat_76_95_0
              #                    occupy fa3 with temp_48_arithop_95_0
              #                    load from temp_48_arithop_95_0 in mem


    flw     fa3,76(sp)
              #                    occupy fa6 with temp_61__95_0
              #                    load from temp_61__95_0 in mem


    flw     fa6,24(sp)
              #                    occupy a6 with temp_68_cmp_84_0
              #                    load from temp_68_cmp_84_0 in mem


    lb      a6,2(sp)
              #                    occupy a3 with temp_66_arithop_95_0
              #                    store to temp_66_arithop_95_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_66_arithop_95_0
              #                    occupy a3 with m_76_0
              #                    load from m_76_0 in mem


    lw      a3,160(sp)
              #                    occupy fa5 with temp_57_arithop_95_0
              #                    load from temp_57_arithop_95_0 in mem


    flw     fa5,40(sp)
              #                    occupy a2 with n_76_0
              #                    load from n_76_0 in mem


    lw      a2,164(sp)
              #                    occupy fa2 with temp_64_arithop_95_0
              #                    store to temp_64_arithop_95_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_64_arithop_95_0
              #                    occupy fa2 with temp_49__95_0
              #                    load from temp_49__95_0 in mem


    flw     fa2,72(sp)
              #                    occupy s2 with temp_69_cmp_89_0
              #                    load from temp_69_cmp_89_0 in mem


    lb      s2,1(sp)
              #                    occupy a7 with v_82_1
              #                    load from v_82_1 in mem


    lw      a7,152(sp)
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa2:Freed { symidx: temp_49__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s2:Freed { symidx: temp_69_cmp_89_0, tracked: true } |     s4:Freed { symidx: temp_70_cmp_93_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     291  label while.exit_94: 
.while.exit_94:
              #                     211  temp_41_arithop_91_0 = Add i32 i_86_1, 1_0 
              #                    occupy a3 with i_86_1
              #                    load from i_86_1 in mem


    lw      a3,132(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s5 with temp_41_arithop_91_0
    ADDW    s5,a3,s3
              #                    free a3
              #                    occupy a3 with i_86_1
              #                    store to i_86_1 in mem offset legal
    sw      a3,132(sp)
              #                    release a3 with i_86_1
              #                    free s3
              #                    free s5
              #                    occupy s5 with temp_41_arithop_91_0
              #                    store to temp_41_arithop_91_0 in mem offset legal
    sw      s5,120(sp)
              #                    release s5 with temp_41_arithop_91_0
              #                     212  (nop) 
              #                     588  i_86_1 = i32 temp_41_arithop_91_0 
              #                    occupy a3 with temp_41_arithop_91_0
              #                    load from temp_41_arithop_91_0 in mem


    lw      a3,120(sp)
              #                    occupy s3 with i_86_1
    mv      s3, a3
              #                    free a3
              #                    occupy a3 with temp_41_arithop_91_0
              #                    store to temp_41_arithop_91_0 in mem offset legal
    sw      a3,120(sp)
              #                    release a3 with temp_41_arithop_91_0
              #                    free s3
              #                    occupy s3 with i_86_1
              #                    store to i_86_1 in mem offset legal
    sw      s3,132(sp)
              #                    release s3 with i_86_1
              #                          jump label: while.head_90 
              #                    occupy s4 with temp_70_cmp_93_0
              #                    store to temp_70_cmp_93_0 in mem offset legal
    sb      s4,0(sp)
              #                    release s4 with temp_70_cmp_93_0
              #                    occupy a3 with m_76_0
              #                    load from m_76_0 in mem


    lw      a3,160(sp)
              #                    occupy s5 with i_86_1
              #                    load from i_86_1 in mem


    lw      s5,132(sp)
              #                    occupy fa2 with temp_49__95_0
              #                    store to temp_49__95_0 in mem offset legal
    fsw     fa2,72(sp)
              #                    release fa2 with temp_49__95_0
              #                    occupy s2 with temp_69_cmp_89_0
              #                    store to temp_69_cmp_89_0 in mem offset legal
    sb      s2,1(sp)
              #                    release s2 with temp_69_cmp_89_0
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |     fa6:Freed { symidx: temp_61__95_0, tracked: true } |     s1:Freed { symidx: temp_38_ptr_of_dct_mat_76_86, tracked: true } |     s2:Freed { symidx: temp_69_cmp_89_0, tracked: true } |  released_gpr_count:5,released_fpr_count:16
              #                     285  label while.exit_90: 
.while.exit_90:
              #                     206  temp_40_arithop_86_0 = Add i32 v_82_1, 1_0 
              #                    occupy a7 with v_82_1
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_40_arithop_86_0
    ADDW    s4,a7,s3
              #                    free a7
              #                    occupy a7 with v_82_1
              #                    store to v_82_1 in mem offset legal
    sw      a7,152(sp)
              #                    release a7 with v_82_1
              #                    free s3
              #                    free s4
              #                     207  (nop) 
              #                     589  v_82_1 = i32 temp_40_arithop_86_0 
              #                    occupy s4 with temp_40_arithop_86_0
              #                    occupy a7 with v_82_1
    mv      a7, s4
              #                    free s4
              #                    occupy s4 with temp_40_arithop_86_0
              #                    store to temp_40_arithop_86_0 in mem offset legal
    sw      s4,128(sp)
              #                    release s4 with temp_40_arithop_86_0
              #                    free a7
              #                          jump label: while.head_85 
              #                    occupy s1 with temp_38_ptr_of_dct_mat_76_86
              #                    store to temp_38_ptr_of_dct_mat_76_86 in mem offset legal
    sd      s1,136(sp)
              #                    release s1 with temp_38_ptr_of_dct_mat_76_86
              #                    occupy fa6 with temp_61__95_0
              #                    store to temp_61__95_0 in mem offset legal
    fsw     fa6,24(sp)
              #                    release fa6 with temp_61__95_0
              #                    occupy a6 with temp_68_cmp_84_0
              #                    store to temp_68_cmp_84_0 in mem offset legal
    sb      a6,2(sp)
              #                    release a6 with temp_68_cmp_84_0
              #                    occupy s2 with temp_69_cmp_89_0
              #                    store to temp_69_cmp_89_0 in mem offset legal
    sb      s2,1(sp)
              #                    release s2 with temp_69_cmp_89_0
    j       .while.head_85
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     a6:Freed { symidx: temp_68_cmp_84_0, tracked: true } |     a7:Freed { symidx: v_82_1, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |     fa3:Freed { symidx: temp_48_arithop_95_0, tracked: true } |     fa4:Freed { symidx: temp_52__95_0, tracked: true } |     fa5:Freed { symidx: temp_57_arithop_95_0, tracked: true } |  released_gpr_count:10,released_fpr_count:18
              #                     279  label while.exit_85: 
.while.exit_85:
              #                     195  temp_37_arithop_82_0 = Add i32 u_78_1, 1_0 
              #                    occupy a4 with u_78_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_37_arithop_82_0
    ADDW    s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                     196  (nop) 
              #                     590  u_78_1 = i32 temp_37_arithop_82_0 
              #                    occupy s2 with temp_37_arithop_82_0
              #                    occupy a4 with u_78_1
    mv      a4, s2
              #                    free s2
              #                    free a4
              #                          jump label: while.head_81 
              #                    occupy a5 with temp_67_cmp_80_0
              #                    store to temp_67_cmp_80_0 in mem offset legal
    sb      a5,3(sp)
              #                    release a5 with temp_67_cmp_80_0
              #                    occupy fa4 with temp_52__95_0
              #                    store to temp_52__95_0 in mem offset legal
    fsw     fa4,60(sp)
              #                    release fa4 with temp_52__95_0
              #                    occupy fa3 with temp_48_arithop_95_0
              #                    store to temp_48_arithop_95_0 in mem offset legal
    fsw     fa3,76(sp)
              #                    release fa3 with temp_48_arithop_95_0
              #                    occupy a6 with temp_68_cmp_84_0
              #                    store to temp_68_cmp_84_0 in mem offset legal
    sb      a6,2(sp)
              #                    release a6 with temp_68_cmp_84_0
              #                    occupy fa5 with temp_57_arithop_95_0
              #                    store to temp_57_arithop_95_0 in mem offset legal
    fsw     fa5,40(sp)
              #                    release fa5 with temp_57_arithop_95_0
              #                    occupy s2 with temp_37_arithop_82_0
              #                    store to temp_37_arithop_82_0 in mem offset legal
    sw      s2,148(sp)
              #                    release s2 with temp_37_arithop_82_0
              #                    occupy a7 with v_82_1
              #                    store to v_82_1 in mem offset legal
    sw      a7,152(sp)
              #                    release a7 with v_82_1
    j       .while.head_81
              #                    regtab     a0:Freed { symidx: dct_mat_76, tracked: true } |     a1:Freed { symidx: mat_76, tracked: true } |     a2:Freed { symidx: n_76_0, tracked: true } |     a3:Freed { symidx: m_76_0, tracked: true } |     a4:Freed { symidx: u_78_1, tracked: true } |     a5:Freed { symidx: temp_67_cmp_80_0, tracked: true } |     fa0:Freed { symidx: temp_47__95_0, tracked: true } |     fa1:Freed { symidx: temp_56__95_0, tracked: true } |  released_gpr_count:13,released_fpr_count:22
              #                     272  label while.exit_81: 
.while.exit_81:
              #                     666  untrack m_76_0 
              #                    occupy a3 with m_76_0
              #                    release a3 with m_76_0
              #                     665  untrack temp_47__95_0 
              #                    occupy fa0 with temp_47__95_0
              #                    release fa0 with temp_47__95_0
              #                     664  untrack n_76_0 
              #                    occupy a2 with n_76_0
              #                    release a2 with n_76_0
              #                     663  untrack temp_56__95_0 
              #                    occupy fa1 with temp_56__95_0
              #                    release fa1 with temp_56__95_0
              #                     662  untrack u_78_1 
              #                    occupy a4 with u_78_1
              #                    release a4 with u_78_1
              #                     661  untrack mat_76 
              #                    occupy a1 with mat_76
              #                    release a1 with mat_76
              #                     524  mu dct_mat_76:274 
              #                     667  untrack dct_mat_76 
              #                    occupy a0 with dct_mat_76
              #                    release a0 with dct_mat_76
              #                     274  ret 
              #                    load from ra_dct_0 in mem
    ld      ra,256(sp)
              #                    load from s0_dct_0 in mem
    ld      s0,248(sp)
    addi    sp,sp,264
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     49   Define idct_0 "mat_101,dct_mat_101,n_101_0,m_101_0," -> idct_ret_0 
    .globl idct
    .type idct,@function
idct:
              #                    mem layout:|ra_idct:8 at 480|s0_idct:8 at 472|mat:8 at 464|mat:8 at 456|mat:8 at 448|mat:8 at 440|mat:8 at 432|mat:8 at 424|mat:8 at 416|mat:8 at 408|mat:8 at 400|mat:8 at 392|mat:8 at 384|mat:8 at 376|mat:8 at 368|dct_mat:8 at 360|dct_mat:8 at 352|n _s101 _i0:4 at 348|m _s101 _i0:4 at 344|u _s103 _i1:4 at 340|v _s107 _i1:4 at 336|temp_71_arithop _s107 _i0:4 at 332|none:4 at 328|temp_72_ptr_of_mat_101:8 at 320|temp_73_ptr_of_dct_mat_101:8 at 312|temp_74_ele_of_dct_mat_101 _s111 _i0:4 at 308|temp_75_arithop _s111 _i0:4 at 304|i _s111 _i0:4 at 300|i _s111 _i2:4 at 296|i _s111 _i5:4 at 292|j _s111 _i0:4 at 288|j _s111 _i2:4 at 284|j _s111 _i4:4 at 280|j _s111 _i6:4 at 276|none:4 at 272|temp_76_ptr_of_mat_101:8 at 264|temp_77_ptr_of_mat_101:8 at 256|temp_78_ele_of_mat_101 _s111 _i0:4 at 252|temp_79_arithop _s111 _i0:4 at 248|temp_81_arithop _s111 _i0:4 at 244|temp_82_arithop _s111 _i0:4 at 240|temp_84_arithop _s111 _i0:4 at 236|temp_85_arithop _s111 _i0:4 at 232|temp_86_arithop _s129 _i0:4 at 228|none:4 at 224|temp_87_ptr_of_mat_101:8 at 216|temp_88_ptr_of_mat_101:8 at 208|temp_89_ele_of_mat_101 _s133 _i0:4 at 204|none:4 at 200|temp_90_ptr_of_dct_mat_101:8 at 192|temp_91_ele_of_dct_mat_101 _s133 _i0:4 at 188|temp_92_ _s133 _i0:4 at 184|temp_93_arithop _s133 _i0:4 at 180|temp_94_ _s133 _i0:4 at 176|temp_95_arithop _s133 _i0:4 at 172|temp_96_arithop _s133 _i0:4 at 168|temp_97_ _s133 _i0:4 at 164|temp_98_arithop _s133 _i0:4 at 160|temp_99_ret_of_my_cos _s133 _i0:4 at 156|temp_100_arithop _s133 _i0:4 at 152|temp_101_ _s133 _i0:4 at 148|temp_102_arithop _s133 _i0:4 at 144|temp_103_ _s133 _i0:4 at 140|temp_104_arithop _s133 _i0:4 at 136|temp_105_arithop _s133 _i0:4 at 132|temp_106_ _s133 _i0:4 at 128|temp_107_arithop _s133 _i0:4 at 124|temp_108_ret_of_my_cos _s133 _i0:4 at 120|temp_109_arithop _s133 _i0:4 at 116|temp_110_arithop _s133 _i0:4 at 112|temp_111_arithop _s133 _i0:4 at 108|none:4 at 104|temp_112_ptr_of_mat_101:8 at 96|temp_113_ptr_of_mat_101:8 at 88|temp_114_ele_of_mat_101 _s123 _i0:4 at 84|none:4 at 80|temp_115_ptr_of_dct_mat_101:8 at 72|temp_116_ele_of_dct_mat_101 _s123 _i0:4 at 68|temp_117_arithop _s123 _i0:4 at 64|temp_118_arithop _s123 _i0:4 at 60|temp_119_arithop _s123 _i0:4 at 56|temp_120_ptr_of_mat_101:8 at 48|temp_121_ptr_of_mat_101:8 at 40|temp_122_ele_of_mat_101 _s117 _i0:4 at 36|none:4 at 32|temp_123_ptr_of_dct_mat_101:8 at 24|temp_124_ele_of_dct_mat_101 _s117 _i0:4 at 20|temp_125_arithop _s117 _i0:4 at 16|temp_126_arithop _s117 _i0:4 at 12|temp_127_arithop _s117 _i0:4 at 8|temp_128_cmp _s105 _i0:1 at 7|temp_129_cmp _s109 _i0:1 at 6|temp_130_cmp _s115 _i0:1 at 5|temp_131_cmp _s121 _i0:1 at 4|temp_132_cmp _s127 _i0:1 at 3|temp_133_cmp _s131 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-488
              #                    store to ra_idct_0 in mem offset legal
    sd      ra,480(sp)
              #                    store to s0_idct_0 in mem offset legal
    sd      s0,472(sp)
    addi    s0,sp,488
              #                     294  alloc i32 [u_103] 
              #                     296  alloc i32 [v_107] 
              #                     297  alloc i32 [temp_71_arithop_107] 
              #                     300  alloc ptr->f32 [temp_72_ptr_of_mat_101_111] 
              #                     302  alloc ptr->f32 [temp_73_ptr_of_dct_mat_101_111] 
              #                     304  alloc f32 [temp_74_ele_of_dct_mat_101_111] 
              #                     307  alloc f32 [temp_75_arithop_111] 
              #                     311  alloc i32 [i_111] 
              #                     313  alloc i32 [j_111] 
              #                     318  alloc ptr->f32 [temp_76_ptr_of_mat_101_111] 
              #                     320  alloc ptr->f32 [temp_77_ptr_of_mat_101_111] 
              #                     322  alloc f32 [temp_78_ele_of_mat_101_111] 
              #                     325  alloc f32 [temp_79_arithop_111] 
              #                     327  alloc f32 [temp_80__111] 
              #                     329  alloc f32 [temp_81_arithop_111] 
              #                     331  alloc f32 [temp_82_arithop_111] 
              #                     333  alloc f32 [temp_83__111] 
              #                     335  alloc f32 [temp_84_arithop_111] 
              #                     339  alloc i32 [temp_85_arithop_111] 
              #                     343  alloc i32 [temp_86_arithop_129] 
              #                     346  alloc ptr->f32 [temp_87_ptr_of_mat_101_133] 
              #                     348  alloc ptr->f32 [temp_88_ptr_of_mat_101_133] 
              #                     350  alloc f32 [temp_89_ele_of_mat_101_133] 
              #                     353  alloc ptr->f32 [temp_90_ptr_of_dct_mat_101_133] 
              #                     355  alloc f32 [temp_91_ele_of_dct_mat_101_133] 
              #                     358  alloc f32 [temp_92__133] 
              #                     360  alloc f32 [temp_93_arithop_133] 
              #                     362  alloc f32 [temp_94__133] 
              #                     364  alloc f32 [temp_95_arithop_133] 
              #                     366  alloc f32 [temp_96_arithop_133] 
              #                     368  alloc f32 [temp_97__133] 
              #                     370  alloc f32 [temp_98_arithop_133] 
              #                     372  alloc f32 [temp_99_ret_of_my_cos_133] 
              #                     374  alloc f32 [temp_100_arithop_133] 
              #                     376  alloc f32 [temp_101__133] 
              #                     378  alloc f32 [temp_102_arithop_133] 
              #                     380  alloc f32 [temp_103__133] 
              #                     382  alloc f32 [temp_104_arithop_133] 
              #                     384  alloc f32 [temp_105_arithop_133] 
              #                     386  alloc f32 [temp_106__133] 
              #                     388  alloc f32 [temp_107_arithop_133] 
              #                     390  alloc f32 [temp_108_ret_of_my_cos_133] 
              #                     392  alloc f32 [temp_109_arithop_133] 
              #                     394  alloc f32 [temp_110_arithop_133] 
              #                     398  alloc i32 [temp_111_arithop_133] 
              #                     401  alloc ptr->f32 [temp_112_ptr_of_mat_101_123] 
              #                     403  alloc ptr->f32 [temp_113_ptr_of_mat_101_123] 
              #                     405  alloc f32 [temp_114_ele_of_mat_101_123] 
              #                     408  alloc ptr->f32 [temp_115_ptr_of_dct_mat_101_123] 
              #                     410  alloc f32 [temp_116_ele_of_dct_mat_101_123] 
              #                     413  alloc f32 [temp_117_arithop_123] 
              #                     415  alloc f32 [temp_118_arithop_123] 
              #                     419  alloc i32 [temp_119_arithop_123] 
              #                     422  alloc ptr->f32 [temp_120_ptr_of_mat_101_117] 
              #                     424  alloc ptr->f32 [temp_121_ptr_of_mat_101_117] 
              #                     426  alloc f32 [temp_122_ele_of_mat_101_117] 
              #                     429  alloc ptr->f32 [temp_123_ptr_of_dct_mat_101_117] 
              #                     431  alloc f32 [temp_124_ele_of_dct_mat_101_117] 
              #                     434  alloc f32 [temp_125_arithop_117] 
              #                     436  alloc f32 [temp_126_arithop_117] 
              #                     440  alloc i32 [temp_127_arithop_117] 
              #                     443  alloc i1 [temp_128_cmp_105] 
              #                     450  alloc i1 [temp_129_cmp_109] 
              #                     456  alloc i1 [temp_130_cmp_115] 
              #                     462  alloc i1 [temp_131_cmp_121] 
              #                     468  alloc i1 [temp_132_cmp_127] 
              #                     474  alloc i1 [temp_133_cmp_131] 
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     47    
              #                     48    
              #                     293  (nop) 
              #                     359  temp_92__133_0 = sitofp i32 n_101_0 to f32 
              #                    occupy a2 with n_101_0
              #                    occupy fa0 with temp_92__133_0
    fcvt.s.w fa0,a2,rtz
              #                    free a2
              #                    free fa0
              #                     377  temp_101__133_0 = sitofp i32 m_101_0 to f32 
              #                    occupy a3 with m_101_0
              #                    occupy fa1 with temp_101__133_0
    fcvt.s.w fa1,a3,rtz
              #                    free a3
              #                    free fa1
              #                     328  (nop) 
              #                     334  (nop) 
              #                     591  u_103_1 = i32 0_0 
              #                    occupy a4 with u_103_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_106 
    j       .while.head_106
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |  released_gpr_count:14,released_fpr_count:22
              #                     445  label while.head_106: 
.while.head_106:
              #                     444  temp_128_cmp_105_0 = icmp i32 Slt u_103_1, n_101_0 
              #                    occupy a4 with u_103_1
              #                    occupy a2 with n_101_0
              #                    occupy a5 with temp_128_cmp_105_0
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                     448  br i1 temp_128_cmp_105_0, label while.body_106, label while.exit_106 
              #                    occupy a5 with temp_128_cmp_105_0
              #                    free a5
              #                    occupy a5 with temp_128_cmp_105_0
    bnez    a5, .while.body_106
              #                    free a5
    j       .while.exit_106
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |  released_gpr_count:13,released_fpr_count:22
              #                     446  label while.body_106: 
.while.body_106:
              #                     295  (nop) 
              #                     303  temp_73_ptr_of_dct_mat_101_111 = GEP dct_mat_101:Array:f32:[None, Some(8_0)] [Some(0_0), Some(0_0)] 
              #                    occupy a6 with temp_73_ptr_of_dct_mat_101_111
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a7, 0
    add     a6,a6,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s1, 0
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy a1 with dct_mat_101
    add     a6,a6,a1
              #                    free a1
              #                    free a6
              #                     361  temp_93_arithop_133_0 = Div f32 3.1415927_0, temp_92__133_0 
              #                    occupy fa2 with 3.1415927_0
              #                    occupy s2 with _anonymous_of_3.1415927_0_0
    li      s2, 1078530011
    fmv.w.x fa2, s2
              #                    free s2
              #                    occupy fa0 with temp_92__133_0
              #                    occupy fa3 with temp_93_arithop_133_0
    fdiv.s  fa3,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa3
              #                     363  temp_94__133_0 = sitofp i32 u_103_1 to f32 
              #                    occupy a4 with u_103_1
              #                    occupy fa4 with temp_94__133_0
    fcvt.s.w fa4,a4,rtz
              #                    free a4
              #                    free fa4
              #                     379  temp_102_arithop_133_0 = Div f32 3.1415927_0, temp_101__133_0 
              #                    found literal reg Some(fa2) already exist with 3.1415927_0
              #                    occupy fa2 with 3.1415927_0
              #                    occupy fa1 with temp_101__133_0
              #                    occupy fa5 with temp_102_arithop_133_0
    fdiv.s  fa5,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa5
              #                     592  v_107_1 = i32 0_0 
              #                    occupy s3 with v_107_1
    li      s3, 0
              #                    free s3
              #                          jump label: while.head_110 
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     s3:Freed { symidx: v_107_1, tracked: true } |  released_gpr_count:8,released_fpr_count:18
              #                     452  label while.head_110: 
.while.head_110:
              #                     451  temp_129_cmp_109_0 = icmp i32 Slt v_107_1, m_101_0 
              #                    occupy s3 with v_107_1
              #                    occupy a3 with m_101_0
              #                    occupy a7 with temp_129_cmp_109_0
    slt     a7,s3,a3
              #                    free s3
              #                    free a3
              #                    free a7
              #                     455  br i1 temp_129_cmp_109_0, label while.body_110, label while.exit_110 
              #                    occupy a7 with temp_129_cmp_109_0
              #                    free a7
              #                    occupy a7 with temp_129_cmp_109_0
    bnez    a7, .while.body_110
              #                    free a7
    j       .while.exit_110
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     s3:Freed { symidx: v_107_1, tracked: true } |  released_gpr_count:7,released_fpr_count:18
              #                     453  label while.body_110: 
.while.body_110:
              #                     301  temp_72_ptr_of_mat_101_111 = GEP mat_101:ptr->Array:f32:[Some(8_0)] [Some(u_103_1), Some(v_107_1)] 
              #                    occupy s1 with temp_72_ptr_of_mat_101_111
    li      s1, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_103_1
    slli s2,a4,3
              #                    free a4
    add     s1,s1,s2
              #                    free s2
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with v_107_1
    mv      s4, s3
              #                    free s3
              #                    occupy s3 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      s3,336(sp)
              #                    release s3 with v_107_1
    add     s1,s1,s4
              #                    free s4
    slli s1,s1,2
              #                    occupy a0 with mat_101
    add     s1,s1,a0
              #                    free a0
              #                    free s1
              #                     305  temp_74_ele_of_dct_mat_101_111_0 = load temp_73_ptr_of_dct_mat_101_111:ptr->f32 
              #                    occupy a6 with temp_73_ptr_of_dct_mat_101_111
              #                    occupy fa2 with temp_74_ele_of_dct_mat_101_111_0
    flw     fa2,0(a6)
              #                    free fa2
              #                    free a6
              #                     306  mu dct_mat_101:305 
              #                     308  temp_75_arithop_111_0 = Mul f32 0.25_0, temp_74_ele_of_dct_mat_101_111_0 
              #                    occupy fa6 with 0.25_0
              #                    occupy s3 with _anonymous_of_0.25_0_0
    li      s3, 1048576000
    fmv.w.x fa6, s3
              #                    free s3
              #                    occupy fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    occupy fa7 with temp_75_arithop_111_0
    fmul.s  fa7,fa6,fa2
              #                    free fa6
              #                    free fa2
              #                    free fa7
              #                     309  store temp_75_arithop_111_0:f32 temp_72_ptr_of_mat_101_111:ptr->f32 
              #                    occupy s1 with temp_72_ptr_of_mat_101_111
              #                    occupy fa7 with temp_75_arithop_111_0
    fsw     fa7,0(s1)
              #                    free fa7
              #                    free s1
              #                     310  mat_101 = chi mat_101:309 
              #                     312   
              #                     314   
              #                     315  (nop) 
              #                     593  i_111_2 = i32 1_0 
              #                    occupy s3 with i_111_2
    li      s3, 1
              #                    free s3
              #                    occupy s3 with i_111_2
              #                    store to i_111_2 in mem offset legal
    sw      s3,296(sp)
              #                    release s3 with i_111_2
              #                          jump label: while.head_116 
    j       .while.head_116
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     458  label while.head_116: 
.while.head_116:
              #                     457  temp_130_cmp_115_0 = icmp i32 Slt i_111_2, n_101_0 
              #                    occupy s2 with i_111_2
              #                    load from i_111_2 in mem


    lw      s2,296(sp)
              #                    occupy a2 with n_101_0
              #                    occupy s3 with temp_130_cmp_115_0
    slt     s3,s2,a2
              #                    free s2
              #                    occupy s2 with i_111_2
              #                    store to i_111_2 in mem offset legal
    sw      s2,296(sp)
              #                    release s2 with i_111_2
              #                    free a2
              #                    occupy a2 with n_101_0
              #                    store to n_101_0 in mem offset legal
    sw      a2,348(sp)
              #                    release a2 with n_101_0
              #                    free s3
              #                     461  br i1 temp_130_cmp_115_0, label while.body_116, label while.exit_116 
              #                    occupy s3 with temp_130_cmp_115_0
              #                    free s3
              #                    occupy s3 with temp_130_cmp_115_0
    bnez    s3, .while.body_116
              #                    free s3
    j       .while.exit_116
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     459  label while.body_116: 
.while.body_116:
              #                     423  temp_120_ptr_of_mat_101_117 = GEP mat_101:ptr->Array:f32:[Some(8_0)] [Some(u_103_1), Some(v_107_1)] 
              #                    occupy a2 with temp_120_ptr_of_mat_101_117
    li      a2, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_103_1
    slli s2,a4,3
              #                    free a4
              #                    occupy a4 with u_103_1
              #                    store to u_103_1 in mem offset legal
    sw      a4,340(sp)
              #                    release a4 with u_103_1
    add     a2,a2,s2
              #                    free s2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with v_107_1
              #                    load from v_107_1 in mem


    lw      s2,336(sp)
    mv      a4, s2
              #                    free s2
              #                    occupy s2 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      s2,336(sp)
              #                    release s2 with v_107_1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with mat_101
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     425  (nop) 
              #                     427  temp_122_ele_of_mat_101_117_0 = load temp_120_ptr_of_mat_101_117:ptr->f32 
              #                    occupy a2 with temp_120_ptr_of_mat_101_117
              #                    occupy fa6 with temp_122_ele_of_mat_101_117_0
    flw     fa6,0(a2)
              #                    free fa6
              #                    free a2
              #                     428  mu mat_101:427 
              #                     430  temp_123_ptr_of_dct_mat_101_117 = GEP dct_mat_101:Array:f32:[None, Some(8_0)] [Some(i_111_2), Some(0_0)] 
              #                    occupy a4 with temp_123_ptr_of_dct_mat_101_117
    li      a4, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with i_111_2
              #                    load from i_111_2 in mem


    lw      s4,296(sp)
    slli s2,s4,3
              #                    free s4
              #                    occupy s4 with i_111_2
              #                    store to i_111_2 in mem offset legal
    sw      s4,296(sp)
              #                    release s4 with i_111_2
    add     a4,a4,s2
              #                    free s2
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s2, 0
    add     a4,a4,s2
              #                    free s2
    slli a4,a4,2
              #                    occupy a1 with dct_mat_101
    add     a4,a4,a1
              #                    free a1
              #                    occupy a1 with dct_mat_101
              #                    store to dct_mat_101 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with dct_mat_101
              #                    free a4
              #                     432  temp_124_ele_of_dct_mat_101_117_0 = load temp_123_ptr_of_dct_mat_101_117:ptr->f32 
              #                    occupy a4 with temp_123_ptr_of_dct_mat_101_117
              #                    occupy f8 with temp_124_ele_of_dct_mat_101_117_0
    flw     f8,0(a4)
              #                    free f8
              #                    free a4
              #                     433  mu dct_mat_101:432 
              #                     435  temp_125_arithop_117_0 = Mul f32 0.5_0, temp_124_ele_of_dct_mat_101_117_0 
              #                    occupy f9 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x f9, a1
              #                    free a1
              #                    occupy f8 with temp_124_ele_of_dct_mat_101_117_0
              #                    occupy f18 with temp_125_arithop_117_0
    fmul.s  f18,f9,f8
              #                    free f9
              #                    free f8
              #                    free f18
              #                     437  temp_126_arithop_117_0 = Add f32 temp_122_ele_of_mat_101_117_0, temp_125_arithop_117_0 
              #                    occupy fa6 with temp_122_ele_of_mat_101_117_0
              #                    occupy f18 with temp_125_arithop_117_0
              #                    occupy f19 with temp_126_arithop_117_0
    fadd.s  f19,fa6,f18
              #                    free fa6
              #                    free f18
              #                    free f19
              #                     438  store temp_126_arithop_117_0:f32 temp_120_ptr_of_mat_101_117:ptr->f32 
              #                    occupy a2 with temp_120_ptr_of_mat_101_117
              #                    occupy f19 with temp_126_arithop_117_0
    fsw     f19,0(a2)
              #                    free f19
              #                    free a2
              #                     439  mat_101 = chi mat_101:438 
              #                     441  temp_127_arithop_117_0 = Add i32 i_111_2, 1_0 
              #                    occupy a1 with i_111_2
              #                    load from i_111_2 in mem


    lw      a1,296(sp)
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s4 with temp_127_arithop_117_0
    ADDW    s4,a1,s2
              #                    free a1
              #                    occupy a1 with i_111_2
              #                    store to i_111_2 in mem offset legal
    sw      a1,296(sp)
              #                    release a1 with i_111_2
              #                    free s2
              #                    free s4
              #                    occupy s4 with temp_127_arithop_117_0
              #                    store to temp_127_arithop_117_0 in mem offset legal
    sw      s4,8(sp)
              #                    release s4 with temp_127_arithop_117_0
              #                     442  (nop) 
              #                     594  i_111_2 = i32 temp_127_arithop_117_0 
              #                    occupy a1 with temp_127_arithop_117_0
              #                    load from temp_127_arithop_117_0 in mem


    lw      a1,8(sp)
              #                    occupy s2 with i_111_2
    mv      s2, a1
              #                    free a1
              #                    occupy a1 with temp_127_arithop_117_0
              #                    store to temp_127_arithop_117_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with temp_127_arithop_117_0
              #                    free s2
              #                    occupy s2 with i_111_2
              #                    store to i_111_2 in mem offset legal
    sw      s2,296(sp)
              #                    release s2 with i_111_2
              #                          jump label: while.head_116 
              #                    occupy f8 with temp_124_ele_of_dct_mat_101_117_0
              #                    store to temp_124_ele_of_dct_mat_101_117_0 in mem offset legal
    fsw     f8,20(sp)
              #                    release f8 with temp_124_ele_of_dct_mat_101_117_0
              #                    occupy a1 with dct_mat_101
              #                    load from dct_mat_101 in mem
    ld      a1,352(sp)
              #                    occupy f18 with temp_125_arithop_117_0
              #                    store to temp_125_arithop_117_0 in mem offset legal
    fsw     f18,16(sp)
              #                    release f18 with temp_125_arithop_117_0
              #                    occupy a4 with temp_123_ptr_of_dct_mat_101_117
              #                    store to temp_123_ptr_of_dct_mat_101_117 in mem offset legal
    sd      a4,24(sp)
              #                    release a4 with temp_123_ptr_of_dct_mat_101_117
              #                    occupy a4 with u_103_1
              #                    load from u_103_1 in mem


    lw      a4,340(sp)
              #                    occupy fa6 with temp_122_ele_of_mat_101_117_0
              #                    store to temp_122_ele_of_mat_101_117_0 in mem offset legal
    fsw     fa6,36(sp)
              #                    release fa6 with temp_122_ele_of_mat_101_117_0
              #                    occupy a2 with temp_120_ptr_of_mat_101_117
              #                    store to temp_120_ptr_of_mat_101_117 in mem offset legal
    sd      a2,48(sp)
              #                    release a2 with temp_120_ptr_of_mat_101_117
              #                    occupy a2 with n_101_0
              #                    load from n_101_0 in mem


    lw      a2,348(sp)
              #                    occupy f19 with temp_126_arithop_117_0
              #                    store to temp_126_arithop_117_0 in mem offset legal
    fsw     f19,12(sp)
              #                    release f19 with temp_126_arithop_117_0
              #                    occupy s3 with temp_130_cmp_115_0
              #                    store to temp_130_cmp_115_0 in mem offset legal
    sb      s3,5(sp)
              #                    release s3 with temp_130_cmp_115_0
    j       .while.head_116
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     460  label while.exit_116: 
.while.exit_116:
              #                     316  (nop) 
              #                     595  j_111_2 = i32 1_0 
              #                    occupy a2 with j_111_2
    li      a2, 1
              #                    free a2
              #                    occupy a2 with j_111_2
              #                    store to j_111_2 in mem offset legal
    sw      a2,284(sp)
              #                    release a2 with j_111_2
              #                          jump label: while.head_122 
    j       .while.head_122
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     464  label while.head_122: 
.while.head_122:
              #                     463  temp_131_cmp_121_0 = icmp i32 Slt j_111_2, m_101_0 
              #                    occupy a2 with j_111_2
              #                    load from j_111_2 in mem


    lw      a2,284(sp)
              #                    occupy a3 with m_101_0
              #                    occupy s2 with temp_131_cmp_121_0
    slt     s2,a2,a3
              #                    free a2
              #                    occupy a2 with j_111_2
              #                    store to j_111_2 in mem offset legal
    sw      a2,284(sp)
              #                    release a2 with j_111_2
              #                    free a3
              #                    occupy a3 with m_101_0
              #                    store to m_101_0 in mem offset legal
    sw      a3,344(sp)
              #                    release a3 with m_101_0
              #                    free s2
              #                     467  br i1 temp_131_cmp_121_0, label while.body_122, label while.exit_122 
              #                    occupy s2 with temp_131_cmp_121_0
              #                    free s2
              #                    occupy s2 with temp_131_cmp_121_0
    bnez    s2, .while.body_122
              #                    free s2
    j       .while.exit_122
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s2:Freed { symidx: temp_131_cmp_121_0, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     465  label while.body_122: 
.while.body_122:
              #                     681  untrack temp_120_ptr_of_mat_101_117 
              #                     680  untrack temp_124_ele_of_dct_mat_101_117_0 
              #                     679  untrack temp_123_ptr_of_dct_mat_101_117 
              #                     678  untrack temp_127_arithop_117_0 
              #                     677  untrack temp_126_arithop_117_0 
              #                     676  untrack temp_125_arithop_117_0 
              #                     675  untrack temp_122_ele_of_mat_101_117_0 
              #                     674  untrack temp_130_cmp_115_0 
              #                    occupy s3 with temp_130_cmp_115_0
              #                    release s3 with temp_130_cmp_115_0
              #                     402  temp_112_ptr_of_mat_101_123 = GEP mat_101:ptr->Array:f32:[Some(8_0)] [Some(u_103_1), Some(v_107_1)] 
              #                    occupy a2 with temp_112_ptr_of_mat_101_123
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_103_1
    slli a3,a4,3
              #                    free a4
              #                    occupy a4 with u_103_1
              #                    store to u_103_1 in mem offset legal
    sw      a4,340(sp)
              #                    release a4 with u_103_1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s3 with v_107_1
              #                    load from v_107_1 in mem


    lw      s3,336(sp)
    mv      a4, s3
              #                    free s3
              #                    occupy s3 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      s3,336(sp)
              #                    release s3 with v_107_1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
              #                    occupy a0 with mat_101
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     404  (nop) 
              #                     406  temp_114_ele_of_mat_101_123_0 = load temp_112_ptr_of_mat_101_123:ptr->f32 
              #                    occupy a2 with temp_112_ptr_of_mat_101_123
              #                    occupy fa6 with temp_114_ele_of_mat_101_123_0
    flw     fa6,0(a2)
              #                    free fa6
              #                    free a2
              #                     407  mu mat_101:406 
              #                     409  temp_115_ptr_of_dct_mat_101_123 = GEP dct_mat_101:Array:f32:[None, Some(8_0)] [Some(0_0), Some(j_111_2)] 
              #                    occupy a4 with temp_115_ptr_of_dct_mat_101_123
    li      a4, 0
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      s3, 0
    add     a4,a4,s3
              #                    free s3
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s4 with j_111_2
              #                    load from j_111_2 in mem


    lw      s4,284(sp)
    mv      s3, s4
              #                    free s4
              #                    occupy s4 with j_111_2
              #                    store to j_111_2 in mem offset legal
    sw      s4,284(sp)
              #                    release s4 with j_111_2
    add     a4,a4,s3
              #                    free s3
    slli a4,a4,2
              #                    occupy a1 with dct_mat_101
    add     a4,a4,a1
              #                    free a1
              #                    occupy a1 with dct_mat_101
              #                    store to dct_mat_101 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with dct_mat_101
              #                    free a4
              #                     411  temp_116_ele_of_dct_mat_101_123_0 = load temp_115_ptr_of_dct_mat_101_123:ptr->f32 
              #                    occupy a4 with temp_115_ptr_of_dct_mat_101_123
              #                    occupy f8 with temp_116_ele_of_dct_mat_101_123_0
    flw     f8,0(a4)
              #                    free f8
              #                    free a4
              #                     412  mu dct_mat_101:411 
              #                     414  temp_117_arithop_123_0 = Mul f32 0.5_0, temp_116_ele_of_dct_mat_101_123_0 
              #                    occupy f9 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x f9, a1
              #                    free a1
              #                    occupy f8 with temp_116_ele_of_dct_mat_101_123_0
              #                    occupy f18 with temp_117_arithop_123_0
    fmul.s  f18,f9,f8
              #                    free f9
              #                    free f8
              #                    free f18
              #                     416  temp_118_arithop_123_0 = Add f32 temp_114_ele_of_mat_101_123_0, temp_117_arithop_123_0 
              #                    occupy fa6 with temp_114_ele_of_mat_101_123_0
              #                    occupy f18 with temp_117_arithop_123_0
              #                    occupy f19 with temp_118_arithop_123_0
    fadd.s  f19,fa6,f18
              #                    free fa6
              #                    free f18
              #                    free f19
              #                     417  store temp_118_arithop_123_0:f32 temp_112_ptr_of_mat_101_123:ptr->f32 
              #                    occupy a2 with temp_112_ptr_of_mat_101_123
              #                    occupy f19 with temp_118_arithop_123_0
    fsw     f19,0(a2)
              #                    free f19
              #                    free a2
              #                     418  mat_101 = chi mat_101:417 
              #                     420  temp_119_arithop_123_0 = Add i32 j_111_2, 1_0 
              #                    occupy a1 with j_111_2
              #                    load from j_111_2 in mem


    lw      a1,284(sp)
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_119_arithop_123_0
    ADDW    s4,a1,s3
              #                    free a1
              #                    occupy a1 with j_111_2
              #                    store to j_111_2 in mem offset legal
    sw      a1,284(sp)
              #                    release a1 with j_111_2
              #                    free s3
              #                    free s4
              #                    occupy s4 with temp_119_arithop_123_0
              #                    store to temp_119_arithop_123_0 in mem offset legal
    sw      s4,56(sp)
              #                    release s4 with temp_119_arithop_123_0
              #                     421  (nop) 
              #                     596  j_111_2 = i32 temp_119_arithop_123_0 
              #                    occupy a1 with temp_119_arithop_123_0
              #                    load from temp_119_arithop_123_0 in mem


    lw      a1,56(sp)
              #                    occupy s3 with j_111_2
    mv      s3, a1
              #                    free a1
              #                    occupy a1 with temp_119_arithop_123_0
              #                    store to temp_119_arithop_123_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with temp_119_arithop_123_0
              #                    free s3
              #                    occupy s3 with j_111_2
              #                    store to j_111_2 in mem offset legal
    sw      s3,284(sp)
              #                    release s3 with j_111_2
              #                          jump label: while.head_122 
              #                    occupy a3 with m_101_0
              #                    load from m_101_0 in mem


    lw      a3,344(sp)
              #                    occupy f8 with temp_116_ele_of_dct_mat_101_123_0
              #                    store to temp_116_ele_of_dct_mat_101_123_0 in mem offset legal
    fsw     f8,68(sp)
              #                    release f8 with temp_116_ele_of_dct_mat_101_123_0
              #                    occupy a1 with dct_mat_101
              #                    load from dct_mat_101 in mem
    ld      a1,352(sp)
              #                    occupy f18 with temp_117_arithop_123_0
              #                    store to temp_117_arithop_123_0 in mem offset legal
    fsw     f18,64(sp)
              #                    release f18 with temp_117_arithop_123_0
              #                    occupy a4 with temp_115_ptr_of_dct_mat_101_123
              #                    store to temp_115_ptr_of_dct_mat_101_123 in mem offset legal
    sd      a4,72(sp)
              #                    release a4 with temp_115_ptr_of_dct_mat_101_123
              #                    occupy a4 with u_103_1
              #                    load from u_103_1 in mem


    lw      a4,340(sp)
              #                    occupy s2 with temp_131_cmp_121_0
              #                    store to temp_131_cmp_121_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_131_cmp_121_0
              #                    occupy fa6 with temp_114_ele_of_mat_101_123_0
              #                    store to temp_114_ele_of_mat_101_123_0 in mem offset legal
    fsw     fa6,84(sp)
              #                    release fa6 with temp_114_ele_of_mat_101_123_0
              #                    occupy a2 with temp_112_ptr_of_mat_101_123
              #                    store to temp_112_ptr_of_mat_101_123 in mem offset legal
    sd      a2,96(sp)
              #                    release a2 with temp_112_ptr_of_mat_101_123
              #                    occupy f19 with temp_118_arithop_123_0
              #                    store to temp_118_arithop_123_0 in mem offset legal
    fsw     f19,60(sp)
              #                    release f19 with temp_118_arithop_123_0
              #                    occupy s3 with temp_130_cmp_115_0
              #                    load from temp_130_cmp_115_0 in mem


    lb      s3,5(sp)
    j       .while.head_122
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s2:Freed { symidx: temp_131_cmp_121_0, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:15
              #                     466  label while.exit_122: 
.while.exit_122:
              #                     317  (nop) 
              #                     365  temp_95_arithop_133_0 = Add f32 temp_94__133_0, 0.5_0 
              #                    occupy fa4 with temp_94__133_0
              #                    occupy fa6 with 0.5_0
              #                    occupy a2 with _anonymous_of_0.5_0_0
    li      a2, 1056964608
    fmv.w.x fa6, a2
              #                    free a2
              #                    occupy f8 with temp_95_arithop_133_0
    fadd.s  f8,fa4,fa6
              #                    free fa4
              #                    free fa6
              #                    free f8
              #                     381  temp_103__133_0 = sitofp i32 v_107_1 to f32 
              #                    occupy a2 with v_107_1
              #                    load from v_107_1 in mem


    lw      a2,336(sp)
              #                    occupy f9 with temp_103__133_0
    fcvt.s.w f9,a2,rtz
              #                    free a2
              #                    occupy a2 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      a2,336(sp)
              #                    release a2 with v_107_1
              #                    free f9
              #                     597  i_111_5 = i32 1_0 
              #                    occupy a2 with i_111_5
    li      a2, 1
              #                    free a2
              #                    occupy a2 with i_111_5
              #                    store to i_111_5 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with i_111_5
              #                          jump label: while.head_128 
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s2:Freed { symidx: temp_131_cmp_121_0, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:12
              #                     470  label while.head_128: 
.while.head_128:
              #                     469  temp_132_cmp_127_0 = icmp i32 Slt i_111_5, n_101_0 
              #                    occupy a2 with i_111_5
              #                    load from i_111_5 in mem


    lw      a2,292(sp)
              #                    occupy a3 with n_101_0
              #                    load from n_101_0 in mem


    lw      a3,348(sp)
              #                    occupy s4 with temp_132_cmp_127_0
    slt     s4,a2,a3
              #                    free a2
              #                    occupy a2 with i_111_5
              #                    store to i_111_5 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with i_111_5
              #                    free a3
              #                    occupy a3 with n_101_0
              #                    store to n_101_0 in mem offset legal
    sw      a3,348(sp)
              #                    release a3 with n_101_0
              #                    free s4
              #                    occupy s4 with temp_132_cmp_127_0
              #                    store to temp_132_cmp_127_0 in mem offset legal
    sb      s4,3(sp)
              #                    release s4 with temp_132_cmp_127_0
              #                     473  br i1 temp_132_cmp_127_0, label while.body_128, label while.exit_128 
              #                    occupy a2 with temp_132_cmp_127_0
              #                    load from temp_132_cmp_127_0 in mem


    lb      a2,3(sp)
              #                    free a2
              #                    occupy a2 with temp_132_cmp_127_0
              #                    store to temp_132_cmp_127_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_132_cmp_127_0
              #                    occupy a2 with temp_132_cmp_127_0
              #                    load from temp_132_cmp_127_0 in mem


    lb      a2,3(sp)
    bnez    a2, .while.body_128
              #                    free a2
              #                    occupy a2 with temp_132_cmp_127_0
              #                    store to temp_132_cmp_127_0 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_132_cmp_127_0
    j       .while.exit_128
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s2:Freed { symidx: temp_131_cmp_121_0, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:12
              #                     471  label while.body_128: 
.while.body_128:
              #                     697  untrack temp_116_ele_of_dct_mat_101_123_0 
              #                     696  untrack temp_122_ele_of_mat_101_117_0 
              #                     695  untrack temp_127_arithop_117_0 
              #                     694  untrack temp_130_cmp_115_0 
              #                    occupy s3 with temp_130_cmp_115_0
              #                    release s3 with temp_130_cmp_115_0
              #                     693  untrack temp_123_ptr_of_dct_mat_101_117 
              #                     692  untrack temp_119_arithop_123_0 
              #                     691  untrack temp_120_ptr_of_mat_101_117 
              #                     690  untrack temp_115_ptr_of_dct_mat_101_123 
              #                     689  untrack temp_124_ele_of_dct_mat_101_117_0 
              #                     688  untrack temp_118_arithop_123_0 
              #                     687  untrack temp_131_cmp_121_0 
              #                    occupy s2 with temp_131_cmp_121_0
              #                    release s2 with temp_131_cmp_121_0
              #                     686  untrack temp_114_ele_of_mat_101_123_0 
              #                     685  untrack temp_126_arithop_117_0 
              #                     684  untrack temp_112_ptr_of_mat_101_123 
              #                     683  untrack temp_125_arithop_117_0 
              #                     682  untrack temp_117_arithop_123_0 
              #                     342  (nop) 
              #                     367  temp_96_arithop_133_0 = Mul f32 temp_93_arithop_133_0, temp_95_arithop_133_0 
              #                    occupy fa3 with temp_93_arithop_133_0
              #                    occupy f8 with temp_95_arithop_133_0
              #                    occupy fa6 with temp_96_arithop_133_0
    fmul.s  fa6,fa3,f8
              #                    free fa3
              #                    free f8
              #                    free fa6
              #                     369  temp_97__133_0 = sitofp i32 i_111_5 to f32 
              #                    occupy a2 with i_111_5
              #                    load from i_111_5 in mem


    lw      a2,292(sp)
              #                    occupy f18 with temp_97__133_0
    fcvt.s.w f18,a2,rtz
              #                    free a2
              #                    free f18
              #                     383  temp_104_arithop_133_0 = Add f32 temp_103__133_0, 0.5_0 
              #                    occupy f9 with temp_103__133_0
              #                    occupy f19 with 0.5_0
              #                    occupy a3 with _anonymous_of_0.5_0_0
    li      a3, 1056964608
    fmv.w.x f19, a3
              #                    free a3
              #                    occupy f20 with temp_104_arithop_133_0
    fadd.s  f20,f9,f19
              #                    free f9
              #                    free f19
              #                    free f20
              #                     598  j_111_6 = i32 1_0 
              #                    occupy s2 with j_111_6
    li      s2, 1
              #                    free s2
              #                    occupy s2 with j_111_6
              #                    store to j_111_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with j_111_6
              #                          jump label: while.head_132 
    j       .while.head_132
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: i_111_5, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f18:Freed { symidx: temp_97__133_0, tracked: true } |     f20:Freed { symidx: temp_104_arithop_133_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa6:Freed { symidx: temp_96_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |  released_gpr_count:5,released_fpr_count:8
              #                     476  label while.head_132: 
.while.head_132:
              #                     475  temp_133_cmp_131_0 = icmp i32 Slt j_111_6, m_101_0 
              #                    occupy a3 with j_111_6
              #                    load from j_111_6 in mem


    lw      a3,276(sp)
              #                    occupy s2 with m_101_0
              #                    load from m_101_0 in mem


    lw      s2,344(sp)
              #                    occupy s3 with temp_133_cmp_131_0
    slt     s3,a3,s2
              #                    free a3
              #                    occupy a3 with j_111_6
              #                    store to j_111_6 in mem offset legal
    sw      a3,276(sp)
              #                    release a3 with j_111_6
              #                    free s2
              #                    occupy s2 with m_101_0
              #                    store to m_101_0 in mem offset legal
    sw      s2,344(sp)
              #                    release s2 with m_101_0
              #                    free s3
              #                    occupy s3 with temp_133_cmp_131_0
              #                    store to temp_133_cmp_131_0 in mem offset legal
    sb      s3,2(sp)
              #                    release s3 with temp_133_cmp_131_0
              #                     479  br i1 temp_133_cmp_131_0, label while.body_132, label while.exit_132 
              #                    occupy a3 with temp_133_cmp_131_0
              #                    load from temp_133_cmp_131_0 in mem


    lb      a3,2(sp)
              #                    free a3
              #                    occupy a3 with temp_133_cmp_131_0
              #                    store to temp_133_cmp_131_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_133_cmp_131_0
              #                    occupy a3 with temp_133_cmp_131_0
              #                    load from temp_133_cmp_131_0 in mem


    lb      a3,2(sp)
    bnez    a3, .while.body_132
              #                    free a3
              #                    occupy a3 with temp_133_cmp_131_0
              #                    store to temp_133_cmp_131_0 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_133_cmp_131_0
    j       .while.exit_132
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: i_111_5, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f18:Freed { symidx: temp_97__133_0, tracked: true } |     f20:Freed { symidx: temp_104_arithop_133_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa6:Freed { symidx: temp_96_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |  released_gpr_count:5,released_fpr_count:8
              #                     477  label while.body_132: 
.while.body_132:
              #                     347  temp_87_ptr_of_mat_101_133 = GEP mat_101:ptr->Array:f32:[Some(8_0)] [Some(u_103_1), Some(v_107_1)] 
              #                    occupy a3 with temp_87_ptr_of_mat_101_133
    li      a3, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_103_1
    slli s2,a4,3
              #                    free a4
              #                    occupy a4 with u_103_1
              #                    store to u_103_1 in mem offset legal
    sw      a4,340(sp)
              #                    release a4 with u_103_1
    add     a3,a3,s2
              #                    free s2
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with v_107_1
              #                    load from v_107_1 in mem


    lw      s2,336(sp)
    mv      a4, s2
              #                    free s2
              #                    occupy s2 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      s2,336(sp)
              #                    release s2 with v_107_1
    add     a3,a3,a4
              #                    free a4
    slli a3,a3,2
              #                    occupy a0 with mat_101
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                     349  (nop) 
              #                     351  temp_89_ele_of_mat_101_133_0 = load temp_87_ptr_of_mat_101_133:ptr->f32 
              #                    occupy a3 with temp_87_ptr_of_mat_101_133
              #                    occupy f19 with temp_89_ele_of_mat_101_133_0
    flw     f19,0(a3)
              #                    free f19
              #                    free a3
              #                     352  mu mat_101:351 
              #                     354  temp_90_ptr_of_dct_mat_101_133 = GEP dct_mat_101:Array:f32:[None, Some(8_0)] [Some(i_111_5), Some(j_111_6)] 
              #                    occupy a4 with temp_90_ptr_of_dct_mat_101_133
    li      a4, 0
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with i_111_5
    slli s2,a2,3
              #                    free a2
              #                    occupy a2 with i_111_5
              #                    store to i_111_5 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with i_111_5
    add     a4,a4,s2
              #                    free s2
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy s2 with j_111_6
              #                    load from j_111_6 in mem


    lw      s2,276(sp)
    mv      a2, s2
              #                    free s2
              #                    occupy s2 with j_111_6
              #                    store to j_111_6 in mem offset legal
    sw      s2,276(sp)
              #                    release s2 with j_111_6
    add     a4,a4,a2
              #                    free a2
    slli a4,a4,2
              #                    occupy a1 with dct_mat_101
    add     a4,a4,a1
              #                    free a1
              #                    free a4
              #                     356  temp_91_ele_of_dct_mat_101_133_0 = load temp_90_ptr_of_dct_mat_101_133:ptr->f32 
              #                    occupy a4 with temp_90_ptr_of_dct_mat_101_133
              #                    occupy f21 with temp_91_ele_of_dct_mat_101_133_0
    flw     f21,0(a4)
              #                    free f21
              #                    free a4
              #                     357  mu dct_mat_101:356 
              #                     371  temp_98_arithop_133_0 = Mul f32 temp_96_arithop_133_0, temp_97__133_0 
              #                    occupy fa6 with temp_96_arithop_133_0
              #                    occupy f18 with temp_97__133_0
              #                    occupy f22 with temp_98_arithop_133_0
    fmul.s  f22,fa6,f18
              #                    free fa6
              #                    free f18
              #                    free f22
              #                     373  temp_99_ret_of_my_cos_133_0 =  Call f32 my_cos_0(temp_98_arithop_133_0) 
              #                    saved register dumping to mem
              #                    occupy s1 with temp_72_ptr_of_mat_101_111
              #                    store to temp_72_ptr_of_mat_101_111 in mem offset legal
    sd      s1,320(sp)
              #                    release s1 with temp_72_ptr_of_mat_101_111
              #                    occupy a0 with mat_101
              #                    store to mat_101 in mem offset legal
    sd      a0,368(sp)
              #                    release a0 with mat_101
              #                    occupy a1 with dct_mat_101
              #                    store to dct_mat_101 in mem offset legal
    sd      a1,352(sp)
              #                    release a1 with dct_mat_101
              #                    occupy a3 with temp_87_ptr_of_mat_101_133
              #                    store to temp_87_ptr_of_mat_101_133 in mem offset legal
    sd      a3,216(sp)
              #                    release a3 with temp_87_ptr_of_mat_101_133
              #                    occupy a4 with temp_90_ptr_of_dct_mat_101_133
              #                    store to temp_90_ptr_of_dct_mat_101_133 in mem offset legal
    sd      a4,192(sp)
              #                    release a4 with temp_90_ptr_of_dct_mat_101_133
              #                    occupy a5 with temp_128_cmp_105_0
              #                    store to temp_128_cmp_105_0 in mem offset legal
    sb      a5,7(sp)
              #                    release a5 with temp_128_cmp_105_0
              #                    occupy a6 with temp_73_ptr_of_dct_mat_101_111
              #                    store to temp_73_ptr_of_dct_mat_101_111 in mem offset legal
    sd      a6,312(sp)
              #                    release a6 with temp_73_ptr_of_dct_mat_101_111
              #                    occupy a7 with temp_129_cmp_109_0
              #                    store to temp_129_cmp_109_0 in mem offset legal
    sb      a7,6(sp)
              #                    release a7 with temp_129_cmp_109_0
              #                    occupy f8 with temp_95_arithop_133_0
              #                    store to temp_95_arithop_133_0 in mem offset legal
    fsw     f8,172(sp)
              #                    release f8 with temp_95_arithop_133_0
              #                    occupy f9 with temp_103__133_0
              #                    store to temp_103__133_0 in mem offset legal
    fsw     f9,140(sp)
              #                    release f9 with temp_103__133_0
              #                    occupy f18 with temp_97__133_0
              #                    store to temp_97__133_0 in mem offset legal
    fsw     f18,164(sp)
              #                    release f18 with temp_97__133_0
              #                    occupy f19 with temp_89_ele_of_mat_101_133_0
              #                    store to temp_89_ele_of_mat_101_133_0 in mem offset legal
    fsw     f19,204(sp)
              #                    release f19 with temp_89_ele_of_mat_101_133_0
              #                    occupy f20 with temp_104_arithop_133_0
              #                    store to temp_104_arithop_133_0 in mem offset legal
    fsw     f20,136(sp)
              #                    release f20 with temp_104_arithop_133_0
              #                    occupy f21 with temp_91_ele_of_dct_mat_101_133_0
              #                    store to temp_91_ele_of_dct_mat_101_133_0 in mem offset legal
    fsw     f21,188(sp)
              #                    release f21 with temp_91_ele_of_dct_mat_101_133_0
              #                    occupy f22 with temp_98_arithop_133_0
              #                    store to temp_98_arithop_133_0 in mem offset legal
    fsw     f22,160(sp)
              #                    release f22 with temp_98_arithop_133_0
              #                    occupy fa0 with temp_92__133_0
              #                    store to temp_92__133_0 in mem offset legal
    fsw     fa0,184(sp)
              #                    release fa0 with temp_92__133_0
              #                    occupy fa1 with temp_101__133_0
              #                    store to temp_101__133_0 in mem offset legal
    fsw     fa1,148(sp)
              #                    release fa1 with temp_101__133_0
              #                    occupy fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    store to temp_74_ele_of_dct_mat_101_111_0 in mem offset legal
    fsw     fa2,308(sp)
              #                    release fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    occupy fa3 with temp_93_arithop_133_0
              #                    store to temp_93_arithop_133_0 in mem offset legal
    fsw     fa3,180(sp)
              #                    release fa3 with temp_93_arithop_133_0
              #                    occupy fa4 with temp_94__133_0
              #                    store to temp_94__133_0 in mem offset legal
    fsw     fa4,176(sp)
              #                    release fa4 with temp_94__133_0
              #                    occupy fa5 with temp_102_arithop_133_0
              #                    store to temp_102_arithop_133_0 in mem offset legal
    fsw     fa5,144(sp)
              #                    release fa5 with temp_102_arithop_133_0
              #                    occupy fa6 with temp_96_arithop_133_0
              #                    store to temp_96_arithop_133_0 in mem offset legal
    fsw     fa6,168(sp)
              #                    release fa6 with temp_96_arithop_133_0
              #                    occupy fa7 with temp_75_arithop_111_0
              #                    store to temp_75_arithop_111_0 in mem offset legal
    fsw     fa7,304(sp)
              #                    release fa7 with temp_75_arithop_111_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_98_arithop_133_0_0
              #                    load from temp_98_arithop_133_0 in mem


    flw     fa0,160(sp)
              #                    arg load ended


    call    my_cos
              #                     375  temp_100_arithop_133_0 = Mul f32 temp_91_ele_of_dct_mat_101_133_0, temp_99_ret_of_my_cos_133_0 
              #                    occupy fa1 with temp_91_ele_of_dct_mat_101_133_0
              #                    load from temp_91_ele_of_dct_mat_101_133_0 in mem


    flw     fa1,188(sp)
              #                    occupy fa0 with temp_99_ret_of_my_cos_133_0
              #                    occupy fa2 with temp_100_arithop_133_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     385  temp_105_arithop_133_0 = Mul f32 temp_102_arithop_133_0, temp_104_arithop_133_0 
              #                    occupy fa3 with temp_102_arithop_133_0
              #                    load from temp_102_arithop_133_0 in mem


    flw     fa3,144(sp)
              #                    occupy fa4 with temp_104_arithop_133_0
              #                    load from temp_104_arithop_133_0 in mem


    flw     fa4,136(sp)
              #                    occupy fa5 with temp_105_arithop_133_0
    fmul.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     387  temp_106__133_0 = sitofp i32 j_111_6 to f32 
              #                    occupy a0 with j_111_6
              #                    load from j_111_6 in mem


    lw      a0,276(sp)
              #                    occupy fa6 with temp_106__133_0
    fcvt.s.w fa6,a0,rtz
              #                    free a0
              #                    free fa6
              #                     389  temp_107_arithop_133_0 = Mul f32 temp_105_arithop_133_0, temp_106__133_0 
              #                    occupy fa5 with temp_105_arithop_133_0
              #                    occupy fa6 with temp_106__133_0
              #                    occupy fa7 with temp_107_arithop_133_0
    fmul.s  fa7,fa5,fa6
              #                    free fa5
              #                    free fa6
              #                    free fa7
              #                     391  temp_108_ret_of_my_cos_133_0 =  Call f32 my_cos_0(temp_107_arithop_133_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with j_111_6
              #                    store to j_111_6 in mem offset legal
    sw      a0,276(sp)
              #                    release a0 with j_111_6
              #                    occupy fa0 with temp_99_ret_of_my_cos_133_0
              #                    store to temp_99_ret_of_my_cos_133_0 in mem offset legal
    fsw     fa0,156(sp)
              #                    release fa0 with temp_99_ret_of_my_cos_133_0
              #                    occupy fa1 with temp_91_ele_of_dct_mat_101_133_0
              #                    store to temp_91_ele_of_dct_mat_101_133_0 in mem offset legal
    fsw     fa1,188(sp)
              #                    release fa1 with temp_91_ele_of_dct_mat_101_133_0
              #                    occupy fa2 with temp_100_arithop_133_0
              #                    store to temp_100_arithop_133_0 in mem offset legal
    fsw     fa2,152(sp)
              #                    release fa2 with temp_100_arithop_133_0
              #                    occupy fa3 with temp_102_arithop_133_0
              #                    store to temp_102_arithop_133_0 in mem offset legal
    fsw     fa3,144(sp)
              #                    release fa3 with temp_102_arithop_133_0
              #                    occupy fa4 with temp_104_arithop_133_0
              #                    store to temp_104_arithop_133_0 in mem offset legal
    fsw     fa4,136(sp)
              #                    release fa4 with temp_104_arithop_133_0
              #                    occupy fa5 with temp_105_arithop_133_0
              #                    store to temp_105_arithop_133_0 in mem offset legal
    fsw     fa5,132(sp)
              #                    release fa5 with temp_105_arithop_133_0
              #                    occupy fa6 with temp_106__133_0
              #                    store to temp_106__133_0 in mem offset legal
    fsw     fa6,128(sp)
              #                    release fa6 with temp_106__133_0
              #                    occupy fa7 with temp_107_arithop_133_0
              #                    store to temp_107_arithop_133_0 in mem offset legal
    fsw     fa7,124(sp)
              #                    release fa7 with temp_107_arithop_133_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_107_arithop_133_0_0
              #                    load from temp_107_arithop_133_0 in mem


    flw     fa0,124(sp)
              #                    arg load ended


    call    my_cos
              #                     393  temp_109_arithop_133_0 = Mul f32 temp_100_arithop_133_0, temp_108_ret_of_my_cos_133_0 
              #                    occupy fa1 with temp_100_arithop_133_0
              #                    load from temp_100_arithop_133_0 in mem


    flw     fa1,152(sp)
              #                    occupy fa0 with temp_108_ret_of_my_cos_133_0
              #                    occupy fa2 with temp_109_arithop_133_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     395  temp_110_arithop_133_0 = Add f32 temp_89_ele_of_mat_101_133_0, temp_109_arithop_133_0 
              #                    occupy fa3 with temp_89_ele_of_mat_101_133_0
              #                    load from temp_89_ele_of_mat_101_133_0 in mem


    flw     fa3,204(sp)
              #                    occupy fa2 with temp_109_arithop_133_0
              #                    occupy fa4 with temp_110_arithop_133_0
    fadd.s  fa4,fa3,fa2
              #                    free fa3
              #                    free fa2
              #                    free fa4
              #                     396  store temp_110_arithop_133_0:f32 temp_87_ptr_of_mat_101_133:ptr->f32 
              #                    occupy a0 with temp_87_ptr_of_mat_101_133
              #                    load from temp_87_ptr_of_mat_101_133 in mem
    ld      a0,216(sp)
              #                    occupy fa4 with temp_110_arithop_133_0
    fsw     fa4,0(a0)
              #                    free fa4
              #                    free a0
              #                     397  mat_101 = chi mat_101:396 
              #                     399  temp_111_arithop_133_0 = Add i32 j_111_6, 1_0 
              #                    occupy a1 with j_111_6
              #                    load from j_111_6 in mem


    lw      a1,276(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_111_arithop_133_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     400  (nop) 
              #                     599  j_111_6 = i32 temp_111_arithop_133_0 
              #                    occupy a3 with temp_111_arithop_133_0
              #                    occupy a1 with j_111_6
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_132 
              #                    occupy a6 with temp_73_ptr_of_dct_mat_101_111
              #                    load from temp_73_ptr_of_dct_mat_101_111 in mem
    ld      a6,312(sp)
              #                    occupy a3 with temp_111_arithop_133_0
              #                    store to temp_111_arithop_133_0 in mem offset legal
    sw      a3,108(sp)
              #                    release a3 with temp_111_arithop_133_0
              #                    occupy a5 with temp_128_cmp_105_0
              #                    load from temp_128_cmp_105_0 in mem


    lb      a5,7(sp)
              #                    occupy fa0 with temp_108_ret_of_my_cos_133_0
              #                    store to temp_108_ret_of_my_cos_133_0 in mem offset legal
    fsw     fa0,120(sp)
              #                    release fa0 with temp_108_ret_of_my_cos_133_0
              #                    occupy fa0 with temp_92__133_0
              #                    load from temp_92__133_0 in mem


    flw     fa0,184(sp)
              #                    occupy fa3 with temp_89_ele_of_mat_101_133_0
              #                    store to temp_89_ele_of_mat_101_133_0 in mem offset legal
    fsw     fa3,204(sp)
              #                    release fa3 with temp_89_ele_of_mat_101_133_0
              #                    occupy fa3 with temp_93_arithop_133_0
              #                    load from temp_93_arithop_133_0 in mem


    flw     fa3,180(sp)
              #                    occupy f8 with temp_95_arithop_133_0
              #                    load from temp_95_arithop_133_0 in mem


    flw     f8,172(sp)
              #                    occupy fa4 with temp_110_arithop_133_0
              #                    store to temp_110_arithop_133_0 in mem offset legal
    fsw     fa4,112(sp)
              #                    release fa4 with temp_110_arithop_133_0
              #                    occupy fa4 with temp_94__133_0
              #                    load from temp_94__133_0 in mem


    flw     fa4,176(sp)
              #                    occupy fa1 with temp_100_arithop_133_0
              #                    store to temp_100_arithop_133_0 in mem offset legal
    fsw     fa1,152(sp)
              #                    release fa1 with temp_100_arithop_133_0
              #                    occupy fa1 with temp_101__133_0
              #                    load from temp_101__133_0 in mem


    flw     fa1,148(sp)
              #                    occupy a0 with temp_87_ptr_of_mat_101_133
              #                    store to temp_87_ptr_of_mat_101_133 in mem offset legal
    sd      a0,216(sp)
              #                    release a0 with temp_87_ptr_of_mat_101_133
              #                    occupy a0 with mat_101
              #                    load from mat_101 in mem
    ld      a0,368(sp)
              #                    occupy f9 with temp_103__133_0
              #                    load from temp_103__133_0 in mem


    flw     f9,140(sp)
              #                    occupy a1 with j_111_6
              #                    store to j_111_6 in mem offset legal
    sw      a1,276(sp)
              #                    release a1 with j_111_6
              #                    occupy a1 with dct_mat_101
              #                    load from dct_mat_101 in mem
    ld      a1,352(sp)
              #                    occupy fa7 with temp_75_arithop_111_0
              #                    load from temp_75_arithop_111_0 in mem


    flw     fa7,304(sp)
              #                    occupy fa2 with temp_109_arithop_133_0
              #                    store to temp_109_arithop_133_0 in mem offset legal
    fsw     fa2,116(sp)
              #                    release fa2 with temp_109_arithop_133_0
              #                    occupy fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    load from temp_74_ele_of_dct_mat_101_111_0 in mem


    flw     fa2,308(sp)
              #                    occupy f18 with temp_97__133_0
              #                    load from temp_97__133_0 in mem


    flw     f18,164(sp)
              #                    occupy a4 with u_103_1
              #                    load from u_103_1 in mem


    lw      a4,340(sp)
              #                    occupy fa6 with temp_96_arithop_133_0
              #                    load from temp_96_arithop_133_0 in mem


    flw     fa6,168(sp)
              #                    occupy a2 with i_111_5
              #                    load from i_111_5 in mem


    lw      a2,292(sp)
              #                    occupy f20 with temp_104_arithop_133_0
              #                    load from temp_104_arithop_133_0 in mem


    flw     f20,136(sp)
              #                    occupy s1 with temp_72_ptr_of_mat_101_111
              #                    load from temp_72_ptr_of_mat_101_111 in mem
    ld      s1,320(sp)
              #                    occupy a7 with temp_129_cmp_109_0
              #                    load from temp_129_cmp_109_0 in mem


    lb      a7,6(sp)
              #                    occupy fa5 with temp_102_arithop_133_0
              #                    load from temp_102_arithop_133_0 in mem


    flw     fa5,144(sp)
    j       .while.head_132
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: i_111_5, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f18:Freed { symidx: temp_97__133_0, tracked: true } |     f20:Freed { symidx: temp_104_arithop_133_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa6:Freed { symidx: temp_96_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |  released_gpr_count:5,released_fpr_count:8
              #                     478  label while.exit_132: 
.while.exit_132:
              #                     344  temp_86_arithop_129_0 = Add i32 i_111_5, 1_0 
              #                    occupy a2 with i_111_5
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy s2 with temp_86_arithop_129_0
    ADDW    s2,a2,a3
              #                    free a2
              #                    occupy a2 with i_111_5
              #                    store to i_111_5 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with i_111_5
              #                    free a3
              #                    free s2
              #                     345  (nop) 
              #                     600  i_111_5 = i32 temp_86_arithop_129_0 
              #                    occupy s2 with temp_86_arithop_129_0
              #                    occupy a2 with i_111_5
    mv      a2, s2
              #                    free s2
              #                    occupy s2 with temp_86_arithop_129_0
              #                    store to temp_86_arithop_129_0 in mem offset legal
    sw      s2,228(sp)
              #                    release s2 with temp_86_arithop_129_0
              #                    free a2
              #                          jump label: while.head_128 
              #                    occupy f18 with temp_97__133_0
              #                    store to temp_97__133_0 in mem offset legal
    fsw     f18,164(sp)
              #                    release f18 with temp_97__133_0
              #                    occupy s2 with temp_131_cmp_121_0
              #                    load from temp_131_cmp_121_0 in mem


    lb      s2,4(sp)
              #                    occupy fa6 with temp_96_arithop_133_0
              #                    store to temp_96_arithop_133_0 in mem offset legal
    fsw     fa6,168(sp)
              #                    release fa6 with temp_96_arithop_133_0
              #                    occupy a2 with i_111_5
              #                    store to i_111_5 in mem offset legal
    sw      a2,292(sp)
              #                    release a2 with i_111_5
              #                    occupy f20 with temp_104_arithop_133_0
              #                    store to temp_104_arithop_133_0 in mem offset legal
    fsw     f20,136(sp)
              #                    release f20 with temp_104_arithop_133_0
              #                    occupy s3 with temp_130_cmp_115_0
              #                    load from temp_130_cmp_115_0 in mem


    lb      s3,5(sp)
    j       .while.head_128
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     f8:Freed { symidx: temp_95_arithop_133_0, tracked: true } |     f9:Freed { symidx: temp_103__133_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa2:Freed { symidx: temp_74_ele_of_dct_mat_101_111_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     fa7:Freed { symidx: temp_75_arithop_111_0, tracked: true } |     s1:Freed { symidx: temp_72_ptr_of_mat_101_111, tracked: true } |     s2:Freed { symidx: temp_131_cmp_121_0, tracked: true } |     s3:Freed { symidx: temp_130_cmp_115_0, tracked: true } |  released_gpr_count:5,released_fpr_count:12
              #                     472  label while.exit_128: 
.while.exit_128:
              #                     319  temp_76_ptr_of_mat_101_111 = GEP mat_101:ptr->Array:f32:[Some(8_0)] [Some(u_103_1), Some(v_107_1)] 
              #                    occupy a2 with temp_76_ptr_of_mat_101_111
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with u_103_1
    slli a3,a4,3
              #                    free a4
              #                    occupy a4 with u_103_1
              #                    store to u_103_1 in mem offset legal
    sw      a4,340(sp)
              #                    release a4 with u_103_1
    add     a2,a2,a3
              #                    free a3
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with v_107_1
              #                    load from v_107_1 in mem


    lw      a4,336(sp)
    mv      a3, a4
              #                    free a4
              #                    occupy a4 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      a4,336(sp)
              #                    release a4 with v_107_1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with mat_101
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                     321  (nop) 
              #                     323  temp_78_ele_of_mat_101_111_0 = load temp_76_ptr_of_mat_101_111:ptr->f32 
              #                    occupy a2 with temp_76_ptr_of_mat_101_111
              #                    occupy fa6 with temp_78_ele_of_mat_101_111_0
    flw     fa6,0(a2)
              #                    free fa6
              #                    free a2
              #                     324  mu mat_101:323 
              #                     326  temp_79_arithop_111_0 = Mul f32 temp_78_ele_of_mat_101_111_0, 2._0 
              #                    occupy fa6 with temp_78_ele_of_mat_101_111_0
              #                    occupy f18 with 2._0
              #                    occupy a3 with _anonymous_of_2._0_0
    li      a3, 1073741824
    fmv.w.x f18, a3
              #                    free a3
              #                    occupy f19 with temp_79_arithop_111_0
    fmul.s  f19,fa6,f18
              #                    free fa6
              #                    free f18
              #                    free f19
              #                     330  temp_81_arithop_111_0 = Div f32 temp_79_arithop_111_0, temp_92__133_0 
              #                    occupy f19 with temp_79_arithop_111_0
              #                    occupy fa0 with temp_92__133_0
              #                    occupy f20 with temp_81_arithop_111_0
    fdiv.s  f20,f19,fa0
              #                    free f19
              #                    free fa0
              #                    free f20
              #                     332  temp_82_arithop_111_0 = Mul f32 temp_81_arithop_111_0, 2._0 
              #                    occupy f20 with temp_81_arithop_111_0
              #                    found literal reg Some(f18) already exist with 2._0
              #                    occupy f18 with 2._0
              #                    occupy f21 with temp_82_arithop_111_0
    fmul.s  f21,f20,f18
              #                    free f20
              #                    free f18
              #                    free f21
              #                     336  temp_84_arithop_111_0 = Div f32 temp_82_arithop_111_0, temp_101__133_0 
              #                    occupy f21 with temp_82_arithop_111_0
              #                    occupy fa1 with temp_101__133_0
              #                    occupy f22 with temp_84_arithop_111_0
    fdiv.s  f22,f21,fa1
              #                    free f21
              #                    free fa1
              #                    free f22
              #                     337  store temp_84_arithop_111_0:f32 temp_76_ptr_of_mat_101_111:ptr->f32 
              #                    occupy a2 with temp_76_ptr_of_mat_101_111
              #                    occupy f22 with temp_84_arithop_111_0
    fsw     f22,0(a2)
              #                    free f22
              #                    free a2
              #                     338  mat_101 = chi mat_101:337 
              #                     340  temp_85_arithop_111_0 = Add i32 v_107_1, 1_0 
              #                    occupy a3 with v_107_1
              #                    load from v_107_1 in mem


    lw      a3,336(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy s4 with temp_85_arithop_111_0
    ADDW    s4,a3,a4
              #                    free a3
              #                    occupy a3 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      a3,336(sp)
              #                    release a3 with v_107_1
              #                    free a4
              #                    free s4
              #                    occupy s4 with temp_85_arithop_111_0
              #                    store to temp_85_arithop_111_0 in mem offset legal
    sw      s4,232(sp)
              #                    release s4 with temp_85_arithop_111_0
              #                     341  (nop) 
              #                     601  v_107_1 = i32 temp_85_arithop_111_0 
              #                    occupy a3 with temp_85_arithop_111_0
              #                    load from temp_85_arithop_111_0 in mem


    lw      a3,232(sp)
              #                    occupy a4 with v_107_1
    mv      a4, a3
              #                    free a3
              #                    occupy a3 with temp_85_arithop_111_0
              #                    store to temp_85_arithop_111_0 in mem offset legal
    sw      a3,232(sp)
              #                    release a3 with temp_85_arithop_111_0
              #                    free a4
              #                    occupy a4 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      a4,336(sp)
              #                    release a4 with v_107_1
              #                          jump label: while.head_110 
              #                    occupy a3 with m_101_0
              #                    load from m_101_0 in mem


    lw      a3,344(sp)
              #                    occupy f22 with temp_84_arithop_111_0
              #                    store to temp_84_arithop_111_0 in mem offset legal
    fsw     f22,236(sp)
              #                    release f22 with temp_84_arithop_111_0
              #                    occupy f8 with temp_95_arithop_133_0
              #                    store to temp_95_arithop_133_0 in mem offset legal
    fsw     f8,172(sp)
              #                    release f8 with temp_95_arithop_133_0
              #                    occupy f21 with temp_82_arithop_111_0
              #                    store to temp_82_arithop_111_0 in mem offset legal
    fsw     f21,240(sp)
              #                    release f21 with temp_82_arithop_111_0
              #                    occupy f9 with temp_103__133_0
              #                    store to temp_103__133_0 in mem offset legal
    fsw     f9,140(sp)
              #                    release f9 with temp_103__133_0
              #                    occupy fa7 with temp_75_arithop_111_0
              #                    store to temp_75_arithop_111_0 in mem offset legal
    fsw     fa7,304(sp)
              #                    release fa7 with temp_75_arithop_111_0
              #                    occupy fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    store to temp_74_ele_of_dct_mat_101_111_0 in mem offset legal
    fsw     fa2,308(sp)
              #                    release fa2 with temp_74_ele_of_dct_mat_101_111_0
              #                    occupy a4 with u_103_1
              #                    load from u_103_1 in mem


    lw      a4,340(sp)
              #                    occupy s2 with temp_131_cmp_121_0
              #                    store to temp_131_cmp_121_0 in mem offset legal
    sb      s2,4(sp)
              #                    release s2 with temp_131_cmp_121_0
              #                    occupy fa6 with temp_78_ele_of_mat_101_111_0
              #                    store to temp_78_ele_of_mat_101_111_0 in mem offset legal
    fsw     fa6,252(sp)
              #                    release fa6 with temp_78_ele_of_mat_101_111_0
              #                    occupy a2 with temp_76_ptr_of_mat_101_111
              #                    store to temp_76_ptr_of_mat_101_111 in mem offset legal
    sd      a2,264(sp)
              #                    release a2 with temp_76_ptr_of_mat_101_111
              #                    occupy a2 with n_101_0
              #                    load from n_101_0 in mem


    lw      a2,348(sp)
              #                    occupy f20 with temp_81_arithop_111_0
              #                    store to temp_81_arithop_111_0 in mem offset legal
    fsw     f20,244(sp)
              #                    release f20 with temp_81_arithop_111_0
              #                    occupy s1 with temp_72_ptr_of_mat_101_111
              #                    store to temp_72_ptr_of_mat_101_111 in mem offset legal
    sd      s1,320(sp)
              #                    release s1 with temp_72_ptr_of_mat_101_111
              #                    occupy a7 with temp_129_cmp_109_0
              #                    store to temp_129_cmp_109_0 in mem offset legal
    sb      a7,6(sp)
              #                    release a7 with temp_129_cmp_109_0
              #                    occupy f19 with temp_79_arithop_111_0
              #                    store to temp_79_arithop_111_0 in mem offset legal
    fsw     f19,248(sp)
              #                    release f19 with temp_79_arithop_111_0
              #                    occupy s3 with temp_130_cmp_115_0
              #                    store to temp_130_cmp_115_0 in mem offset legal
    sb      s3,5(sp)
              #                    release s3 with temp_130_cmp_115_0
              #                    occupy s3 with v_107_1
              #                    load from v_107_1 in mem


    lw      s3,336(sp)
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     a6:Freed { symidx: temp_73_ptr_of_dct_mat_101_111, tracked: true } |     a7:Freed { symidx: temp_129_cmp_109_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |     fa3:Freed { symidx: temp_93_arithop_133_0, tracked: true } |     fa4:Freed { symidx: temp_94__133_0, tracked: true } |     fa5:Freed { symidx: temp_102_arithop_133_0, tracked: true } |     s3:Freed { symidx: v_107_1, tracked: true } |  released_gpr_count:7,released_fpr_count:18
              #                     454  label while.exit_110: 
.while.exit_110:
              #                     298  temp_71_arithop_107_0 = Add i32 u_103_1, 1_0 
              #                    occupy a4 with u_103_1
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s2 with temp_71_arithop_107_0
    ADDW    s2,a4,s1
              #                    free a4
              #                    free s1
              #                    free s2
              #                     299  (nop) 
              #                     602  u_103_1 = i32 temp_71_arithop_107_0 
              #                    occupy s2 with temp_71_arithop_107_0
              #                    occupy a4 with u_103_1
    mv      a4, s2
              #                    free s2
              #                    free a4
              #                          jump label: while.head_106 
              #                    occupy a6 with temp_73_ptr_of_dct_mat_101_111
              #                    store to temp_73_ptr_of_dct_mat_101_111 in mem offset legal
    sd      a6,312(sp)
              #                    release a6 with temp_73_ptr_of_dct_mat_101_111
              #                    occupy a5 with temp_128_cmp_105_0
              #                    store to temp_128_cmp_105_0 in mem offset legal
    sb      a5,7(sp)
              #                    release a5 with temp_128_cmp_105_0
              #                    occupy fa3 with temp_93_arithop_133_0
              #                    store to temp_93_arithop_133_0 in mem offset legal
    fsw     fa3,180(sp)
              #                    release fa3 with temp_93_arithop_133_0
              #                    occupy fa4 with temp_94__133_0
              #                    store to temp_94__133_0 in mem offset legal
    fsw     fa4,176(sp)
              #                    release fa4 with temp_94__133_0
              #                    occupy s2 with temp_71_arithop_107_0
              #                    store to temp_71_arithop_107_0 in mem offset legal
    sw      s2,332(sp)
              #                    release s2 with temp_71_arithop_107_0
              #                    occupy a7 with temp_129_cmp_109_0
              #                    store to temp_129_cmp_109_0 in mem offset legal
    sb      a7,6(sp)
              #                    release a7 with temp_129_cmp_109_0
              #                    occupy fa5 with temp_102_arithop_133_0
              #                    store to temp_102_arithop_133_0 in mem offset legal
    fsw     fa5,144(sp)
              #                    release fa5 with temp_102_arithop_133_0
              #                    occupy s3 with v_107_1
              #                    store to v_107_1 in mem offset legal
    sw      s3,336(sp)
              #                    release s3 with v_107_1
    j       .while.head_106
              #                    regtab     a0:Freed { symidx: mat_101, tracked: true } |     a1:Freed { symidx: dct_mat_101, tracked: true } |     a2:Freed { symidx: n_101_0, tracked: true } |     a3:Freed { symidx: m_101_0, tracked: true } |     a4:Freed { symidx: u_103_1, tracked: true } |     a5:Freed { symidx: temp_128_cmp_105_0, tracked: true } |     fa0:Freed { symidx: temp_92__133_0, tracked: true } |     fa1:Freed { symidx: temp_101__133_0, tracked: true } |  released_gpr_count:13,released_fpr_count:22
              #                     447  label while.exit_106: 
.while.exit_106:
              #                     673  untrack m_101_0 
              #                    occupy a3 with m_101_0
              #                    release a3 with m_101_0
              #                     672  untrack u_103_1 
              #                    occupy a4 with u_103_1
              #                    release a4 with u_103_1
              #                     671  untrack n_101_0 
              #                    occupy a2 with n_101_0
              #                    release a2 with n_101_0
              #                     670  untrack temp_101__133_0 
              #                    occupy fa1 with temp_101__133_0
              #                    release fa1 with temp_101__133_0
              #                     669  untrack temp_92__133_0 
              #                    occupy fa0 with temp_92__133_0
              #                    release fa0 with temp_92__133_0
              #                     668  untrack dct_mat_101 
              #                    occupy a1 with dct_mat_101
              #                    release a1 with dct_mat_101
              #                     525  mu mat_101:449 
              #                     698  untrack mat_101 
              #                    occupy a0 with mat_101
              #                    release a0 with mat_101
              #                     449  ret 
              #                    load from ra_idct_0 in mem
    ld      ra,480(sp)
              #                    load from s0_idct_0 in mem
    ld      s0,472(sp)
    addi    sp,sp,488
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     50   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 56|s0_main:8 at 48|temp_134_ret_of_getint _s141 _i0:4 at 44|temp_135_ret_of_getint _s141 _i0:4 at 40|i _s141 _i1:4 at 36|j _s146 _i1:4 at 32|temp_136_arithop _s146 _i0:4 at 28|none:4 at 24|temp_137_ptr_of_*test_block_0:8 at 16|temp_138_ret_of_getfloat _s150 _i0:4 at 12|temp_139_arithop _s150 _i0:4 at 8|temp_140_cmp _s144 _i0:1 at 7|temp_141_cmp _s148 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-64
              #                    store to ra_main_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     526  test_block_0_1 = chi test_block_0_0:50 
              #                     480  alloc i32 [temp_134_ret_of_getint_141] 
              #                     483  alloc i32 [dim_x_141] 
              #                     484  alloc i32 [temp_135_ret_of_getint_141] 
              #                     487  alloc i32 [dim_y_141] 
              #                     489  alloc i32 [i_141] 
              #                     497  alloc i32 [j_146] 
              #                     498  alloc i32 [temp_136_arithop_146] 
              #                     501  alloc ptr->f32 [temp_137_ptr_of_*test_block_0_150] 
              #                     503  alloc f32 [temp_138_ret_of_getfloat_150] 
              #                     507  alloc i32 [temp_139_arithop_150] 
              #                     510  alloc i1 [temp_140_cmp_144] 
              #                     518  alloc i1 [temp_141_cmp_148] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     481  temp_134_ret_of_getint_141_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     482  (nop) 
              #                     485  temp_135_ret_of_getint_141_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_134_ret_of_getint_141_0
              #                    store to temp_134_ret_of_getint_141_0 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_134_ret_of_getint_141_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     486  (nop) 
              #                     488  (nop) 
              #                     603  i_141_1 = i32 0_0 
              #                    occupy a1 with i_141_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_145 
    j       .while.head_145
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     512  label while.head_145: 
.while.head_145:
              #                     511  temp_140_cmp_144_0 = icmp i32 Slt i_141_1, temp_134_ret_of_getint_141_0 
              #                    occupy a1 with i_141_1
              #                    occupy a2 with temp_134_ret_of_getint_141_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a2,44(sp)
              #                    occupy a3 with temp_140_cmp_144_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     515  br i1 temp_140_cmp_144_0, label while.body_145, label while.exit_145 
              #                    occupy a3 with temp_140_cmp_144_0
              #                    free a3
              #                    occupy a3 with temp_140_cmp_144_0
    bnez    a3, .while.body_145
              #                    free a3
    j       .while.exit_145
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |     a2:Freed { symidx: temp_134_ret_of_getint_141_0, tracked: true } |     a3:Freed { symidx: temp_140_cmp_144_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     513  label while.body_145: 
.while.body_145:
              #                     496  (nop) 
              #                     604  j_146_1 = i32 0_0 
              #                    occupy a4 with j_146_1
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_149 
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |     a2:Freed { symidx: temp_134_ret_of_getint_141_0, tracked: true } |     a3:Freed { symidx: temp_140_cmp_144_0, tracked: true } |     a4:Freed { symidx: j_146_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     520  label while.head_149: 
.while.head_149:
              #                     519  temp_141_cmp_148_0 = icmp i32 Slt j_146_1, temp_135_ret_of_getint_141_0 
              #                    occupy a4 with j_146_1
              #                    occupy a0 with temp_135_ret_of_getint_141_0
              #                    occupy a5 with temp_141_cmp_148_0
    slt     a5,a4,a0
              #                    free a4
              #                    free a0
              #                    free a5
              #                     523  br i1 temp_141_cmp_148_0, label while.body_149, label while.exit_149 
              #                    occupy a5 with temp_141_cmp_148_0
              #                    free a5
              #                    occupy a5 with temp_141_cmp_148_0
    bnez    a5, .while.body_149
              #                    free a5
    j       .while.exit_149
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |     a2:Freed { symidx: temp_134_ret_of_getint_141_0, tracked: true } |     a3:Freed { symidx: temp_140_cmp_144_0, tracked: true } |     a4:Freed { symidx: j_146_1, tracked: true } |     a5:Freed { symidx: temp_141_cmp_148_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     521  label while.body_149: 
.while.body_149:
              #                     502  temp_137_ptr_of_*test_block_0_150 = GEP *test_block_0:ptr->Array:f32:[Some(8_0)] [Some(i_141_1), Some(j_146_1)] 
              #                    occupy a6 with temp_137_ptr_of_*test_block_0_150
    li      a6, 0
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_141_1
    slli a7,a1,3
              #                    free a1
    add     a6,a6,a7
              #                    free a7
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a4 with j_146_1
    mv      s1, a4
              #                    free a4
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
              #                    occupy s2 with *test_block_0
              #                       load label test_block as ptr to reg
    la      s2, test_block
              #                    occupy reg s2 with *test_block_0
    add     a6,a6,s2
              #                    free s2
              #                    free a6
              #                     504  temp_138_ret_of_getfloat_150_0 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_135_ret_of_getint_141_0
              #                    store to temp_135_ret_of_getint_141_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_135_ret_of_getint_141_0
              #                    occupy a1 with i_141_1
              #                    store to i_141_1 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with i_141_1
              #                    occupy a2 with temp_134_ret_of_getint_141_0
              #                    store to temp_134_ret_of_getint_141_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_134_ret_of_getint_141_0
              #                    occupy a3 with temp_140_cmp_144_0
              #                    store to temp_140_cmp_144_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_140_cmp_144_0
              #                    occupy a4 with j_146_1
              #                    store to j_146_1 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with j_146_1
              #                    occupy a5 with temp_141_cmp_148_0
              #                    store to temp_141_cmp_148_0 in mem offset legal
    sb      a5,6(sp)
              #                    release a5 with temp_141_cmp_148_0
              #                    occupy a6 with temp_137_ptr_of_*test_block_0_150
              #                    store to temp_137_ptr_of_*test_block_0_150 in mem offset legal
    sd      a6,16(sp)
              #                    release a6 with temp_137_ptr_of_*test_block_0_150
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                     505  store temp_138_ret_of_getfloat_150_0:f32 temp_137_ptr_of_*test_block_0_150:ptr->f32 
              #                    occupy a0 with temp_137_ptr_of_*test_block_0_150
              #                    load from temp_137_ptr_of_*test_block_0_150 in mem
    ld      a0,16(sp)
              #                    occupy fa0 with temp_138_ret_of_getfloat_150_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     506  test_block_0_4 = chi test_block_0_3:505 
              #                     508  temp_139_arithop_150_0 = Add i32 j_146_1, 1_0 
              #                    occupy a1 with j_146_1
              #                    load from j_146_1 in mem


    lw      a1,32(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_139_arithop_150_0
    ADDW    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     509  (nop) 
              #                     605  j_146_1 = i32 temp_139_arithop_150_0 
              #                    occupy a3 with temp_139_arithop_150_0
              #                    occupy a1 with j_146_1
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_149 
              #                    occupy a0 with temp_137_ptr_of_*test_block_0_150
              #                    store to temp_137_ptr_of_*test_block_0_150 in mem offset legal
    sd      a0,16(sp)
              #                    release a0 with temp_137_ptr_of_*test_block_0_150
              #                    occupy a0 with temp_135_ret_of_getint_141_0
              #                    load from temp_135_ret_of_getint_141_0 in mem


    lw      a0,40(sp)
              #                    occupy a2 with temp_134_ret_of_getint_141_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a2,44(sp)
              #                    occupy a1 with j_146_1
              #                    store to j_146_1 in mem offset legal
    sw      a1,32(sp)
              #                    release a1 with j_146_1
              #                    occupy a1 with i_141_1
              #                    load from i_141_1 in mem


    lw      a1,36(sp)
              #                    occupy a4 with j_146_1
              #                    load from j_146_1 in mem


    lw      a4,32(sp)
              #                    occupy fa0 with temp_138_ret_of_getfloat_150_0
              #                    store to temp_138_ret_of_getfloat_150_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_138_ret_of_getfloat_150_0
              #                    occupy a3 with temp_139_arithop_150_0
              #                    store to temp_139_arithop_150_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_139_arithop_150_0
              #                    occupy a3 with temp_140_cmp_144_0
              #                    load from temp_140_cmp_144_0 in mem


    lb      a3,7(sp)
    j       .while.head_149
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |     a2:Freed { symidx: temp_134_ret_of_getint_141_0, tracked: true } |     a3:Freed { symidx: temp_140_cmp_144_0, tracked: true } |     a4:Freed { symidx: j_146_1, tracked: true } |     a5:Freed { symidx: temp_141_cmp_148_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     522  label while.exit_149: 
.while.exit_149:
              #                     499  temp_136_arithop_146_0 = Add i32 i_141_1, 1_0 
              #                    occupy a1 with i_141_1
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_136_arithop_146_0
    ADDW    a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                     500  (nop) 
              #                     606  i_141_1 = i32 temp_136_arithop_146_0 
              #                    occupy a7 with temp_136_arithop_146_0
              #                    occupy a1 with i_141_1
    mv      a1, a7
              #                    free a7
              #                    free a1
              #                          jump label: while.head_145 
              #                    occupy a2 with temp_134_ret_of_getint_141_0
              #                    store to temp_134_ret_of_getint_141_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_134_ret_of_getint_141_0
              #                    occupy a4 with j_146_1
              #                    store to j_146_1 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with j_146_1
              #                    occupy a5 with temp_141_cmp_148_0
              #                    store to temp_141_cmp_148_0 in mem offset legal
    sb      a5,6(sp)
              #                    release a5 with temp_141_cmp_148_0
              #                    occupy a3 with temp_140_cmp_144_0
              #                    store to temp_140_cmp_144_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_140_cmp_144_0
              #                    occupy a7 with temp_136_arithop_146_0
              #                    store to temp_136_arithop_146_0 in mem offset legal
    sw      a7,28(sp)
              #                    release a7 with temp_136_arithop_146_0
    j       .while.head_145
              #                    regtab     a0:Freed { symidx: temp_135_ret_of_getint_141_0, tracked: true } |     a1:Freed { symidx: i_141_1, tracked: true } |     a2:Freed { symidx: temp_134_ret_of_getint_141_0, tracked: true } |     a3:Freed { symidx: temp_140_cmp_144_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     514  label while.exit_145: 
.while.exit_145:
              #                     699  untrack i_141_1 
              #                    occupy a1 with i_141_1
              #                    release a1 with i_141_1
              #                     490   Call void dct_0(*test_dct_0, *test_block_0, temp_134_ret_of_getint_141_0, temp_135_ret_of_getint_141_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_135_ret_of_getint_141_0
              #                    store to temp_135_ret_of_getint_141_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_135_ret_of_getint_141_0
              #                    occupy a2 with temp_134_ret_of_getint_141_0
              #                    store to temp_134_ret_of_getint_141_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_134_ret_of_getint_141_0
              #                    occupy a3 with temp_140_cmp_144_0
              #                    store to temp_140_cmp_144_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_140_cmp_144_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*test_dct_0_0
              #                       load label test_dct as ptr to reg
    la      a0, test_dct
              #                    occupy a1 with _anonymous_of_*test_block_0_0
              #                       load label test_block as ptr to reg
    la      a1, test_block
              #                    occupy a2 with _anonymous_of_temp_134_ret_of_getint_141_0_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_temp_135_ret_of_getint_141_0_0
              #                    load from temp_135_ret_of_getint_141_0 in mem


    lw      a3,40(sp)
              #                    arg load ended


    call    dct
              #                     527  mu test_dct_0_0:490 
              #                     528  mu test_block_0_2:490 
              #                     529  test_block_0_5 = chi test_block_0_2:490 
              #                     530  test_dct_0_1 = chi test_dct_0_0:490 
              #                     491   Call void write_mat_0(*test_dct_0, temp_134_ret_of_getint_141_0, temp_135_ret_of_getint_141_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*test_dct_0_0
              #                       load label test_dct as ptr to reg
    la      a0, test_dct
              #                    occupy a1 with _anonymous_of_temp_134_ret_of_getint_141_0_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a1,44(sp)
              #                    occupy a2 with _anonymous_of_temp_135_ret_of_getint_141_0_0
              #                    load from temp_135_ret_of_getint_141_0 in mem


    lw      a2,40(sp)
              #                    arg load ended


    call    write_mat
              #                     531  mu test_dct_0_1:491 
              #                     532  test_dct_0_2 = chi test_dct_0_1:491 
              #                     492   Call void idct_0(*test_idct_0, *test_dct_0, temp_134_ret_of_getint_141_0, temp_135_ret_of_getint_141_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*test_idct_0_0
              #                       load label test_idct as ptr to reg
    la      a0, test_idct
              #                    occupy a1 with _anonymous_of_*test_dct_0_0
              #                       load label test_dct as ptr to reg
    la      a1, test_dct
              #                    occupy a2 with _anonymous_of_temp_134_ret_of_getint_141_0_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_temp_135_ret_of_getint_141_0_0
              #                    load from temp_135_ret_of_getint_141_0 in mem


    lw      a3,40(sp)
              #                    arg load ended


    call    idct
              #                     533  mu test_dct_0_2:492 
              #                     534  mu test_idct_0_0:492 
              #                     535  test_idct_0_1 = chi test_idct_0_0:492 
              #                     536  test_dct_0_3 = chi test_dct_0_2:492 
              #                     493   Call void write_mat_0(*test_idct_0, temp_134_ret_of_getint_141_0, temp_135_ret_of_getint_141_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_*test_idct_0_0
              #                       load label test_idct as ptr to reg
    la      a0, test_idct
              #                    occupy a1 with _anonymous_of_temp_134_ret_of_getint_141_0_0
              #                    load from temp_134_ret_of_getint_141_0 in mem


    lw      a1,44(sp)
              #                    occupy a2 with _anonymous_of_temp_135_ret_of_getint_141_0_0
              #                    load from temp_135_ret_of_getint_141_0 in mem


    lw      a2,40(sp)
              #                    arg load ended


    call    write_mat
              #                     701  untrack temp_134_ret_of_getint_141_0 
              #                     700  untrack temp_135_ret_of_getint_141_0 
              #                     537  mu test_idct_0_1:493 
              #                     538  test_idct_0_2 = chi test_idct_0_1:493 
              #                     539  mu test_block_0_5:495 
              #                     495  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,56(sp)
              #                    load from s0_main_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,64
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl EPSILON
              #                     35   global f32 EPSILON_0 
    .type EPSILON,@object
EPSILON:
    .word 897988541
    .align 4
    .globl TWO_PI
              #                     32   global f32 TWO_PI_0 
    .type TWO_PI,@object
TWO_PI:
    .word 1086918619
    .align 4
    .globl PI
              #                     29   global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl test_idct
              #                     26   global Array:f32:[Some(8_0), Some(8_0)] test_idct_0 
    .type test_idct,@object
test_idct:
    .zero 256
    .align 4
    .globl test_dct
              #                     24   global Array:f32:[Some(8_0), Some(8_0)] test_dct_0 
    .type test_dct,@object
test_dct:
    .zero 256
    .align 4
    .globl test_block
              #                     22   global Array:f32:[Some(8_0), Some(8_0)] test_block_0 
    .type test_block,@object
test_block:
    .zero 256
    .align 4
    .globl MAX_DIM_Y
              #                     20   global i32 MAX_DIM_Y_0 
    .type MAX_DIM_Y,@object
MAX_DIM_Y:
    .word 8
    .align 4
    .globl MAX_DIM_X
              #                     17   global i32 MAX_DIM_X_0 
    .type MAX_DIM_X,@object
MAX_DIM_X:
    .word 8
