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
              #                     19   Define my_fabs_0 "x_17_0," -> my_fabs_ret_0 
    .globl my_fabs
    .type my_fabs,@function
my_fabs:
              #                    mem layout:|ra_my_fabs:8 at 24|s0_my_fabs:8 at 16|x _s17 _i0:4 at 12|temp_0_ _s19 _i0:4 at 8|temp_2_cmp _s20 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_my_fabs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_fabs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     34   alloc f32 [temp_0__19] 
              #                     39   alloc f32 [temp_1__20] 
              #                     41   alloc i1 [temp_2_cmp_20] 
              #                    regtab     fa0:Freed { symidx: x_17_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L29_0: 
.L29_0:
              #                     40   (nop) 
              #                     42   temp_2_cmp_20_0 = fcmp f32 Ogt x_17_0, 0._0 
              #                    occupy fa0 with x_17_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_2_cmp_20_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     45   br i1 temp_2_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a1 with temp_2_cmp_20_0
              #                    free a1
              #                    occupy a1 with temp_2_cmp_20_0
    bnez    a1, .branch_true_21
              #                    free a1
    j       .branch_false_21
              #                    regtab     a1:Freed { symidx: temp_2_cmp_20_0, tracked: true } |     fa0:Freed { symidx: x_17_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     43   label branch_true_21: 
.branch_true_21:
              #                     543  untrack temp_0__19_0 
              #                     542  untrack temp_2_cmp_20_0 
              #                    occupy a1 with temp_2_cmp_20_0
              #                    release a1 with temp_2_cmp_20_0
              #                     38   ret x_17_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with x_17_0
              #                    store to x_17_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_17_0
              #                    occupy fa0 with x_17_0
              #                    load from x_17_0 in mem


    flw     fa0,12(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_20_0, tracked: true } |     fa0:Freed { symidx: x_17_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     44   label branch_false_21: 
.branch_false_21:
              #                     544  untrack temp_2_cmp_20_0 
              #                    occupy a1 with temp_2_cmp_20_0
              #                    release a1 with temp_2_cmp_20_0
              #                          jump label: L30_0 
    j       .L30_0
              #                    regtab     fa0:Freed { symidx: x_17_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L30_0: 
.L30_0:
              #                     35   temp_0__19_0 = Sub f32 0.0_0, x_17_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_17_0
              #                    occupy fa2 with temp_0__19_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     545  untrack x_17_0 
              #                    occupy fa0 with x_17_0
              #                    release fa0 with x_17_0
              #                     36   ret temp_0__19_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa2 with temp_0__19_0
              #                    store to temp_0__19_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_0__19_0
              #                    occupy fa0 with temp_0__19_0
              #                    load from temp_0__19_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define my_pow_0 "a_24_0,n_24_0," -> my_pow_ret_0 
    .globl my_pow
    .type my_pow,@function
my_pow:
              #                    mem layout:|ra_my_pow:8 at 72|s0_my_pow:8 at 64|a _s24 _i0:4 at 60|a _s24 _i1:4 at 56|n _s24 _i0:4 at 52|n _s24 _i1:4 at 48|res _s26 _i1:4 at 44|res _s26 _i3:4 at 40|temp_3_arithop _s33 _i0:4 at 36|temp_4_arithop _s33 _i0:4 at 32|temp_5_arithop _s34 _i0:4 at 28|temp_6_ _s27 _i0:4 at 24|temp_7_ret_of_my_pow _s27 _i0:4 at 20|temp_9_arithop _s27 _i0:4 at 16|temp_10_cmp _s27 _i0:1 at 15|temp_11_ _s711 _i0:1 at 14|none:2 at 12|temp_12_arithop _s34 _i0:4 at 8|temp_13_ _s740 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-80
              #                    store to ra_my_pow_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_my_pow_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     48   alloc f32 [res_26] 
              #                     51   alloc f32 [temp_3_arithop_33] 
              #                     54   alloc i32 [temp_4_arithop_33] 
              #                     57   alloc f32 [temp_5_arithop_34] 
              #                     61   alloc i32 [temp_6__27] 
              #                     63   alloc f32 [temp_7_ret_of_my_pow_27] 
              #                     65   alloc f32 [temp_8__27] 
              #                     67   alloc f32 [temp_9_arithop_27] 
              #                     70   alloc i1 [temp_10_cmp_27] 
              #                     75   alloc i1 [temp_11__711] 
              #                     82   alloc i32 [temp_12_arithop_34] 
              #                     84   alloc i1 [temp_13__740] 
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     fa0:Freed { symidx: a_24_0, tracked: true } |  released_gpr_count:18,released_fpr_count:23
              #                          label L26_0: 
.L26_0:
              #                     71   temp_10_cmp_27_0 = icmp i32 Slt n_24_0, 0_0 
              #                    occupy a0 with n_24_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_10_cmp_27_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     74   br i1 temp_10_cmp_27_0, label branch_true_28, label branch_false_28 
              #                    occupy a2 with temp_10_cmp_27_0
              #                    free a2
              #                    occupy a2 with temp_10_cmp_27_0
    bnez    a2, .branch_true_28
              #                    free a2
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_27_0, tracked: true } |     fa0:Freed { symidx: a_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:23
              #                     72   label branch_true_28: 
.branch_true_28:
              #                     549  untrack a_24_1 
              #                     548  untrack temp_10_cmp_27_0 
              #                    occupy a2 with temp_10_cmp_27_0
              #                    release a2 with temp_10_cmp_27_0
              #                     547  untrack res_26_1 
              #                     546  untrack n_24_1 
              #                     62   temp_6__27_0 = Sub i32 0_0, n_24_0 
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a0 with n_24_0
              #                    occupy a2 with temp_6__27_0
              #                    regtab:    a0:Occupied { symidx: n_24_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_6__27_0, tracked: true, occupy_count: 1 } |     fa0:Freed { symidx: a_24_0, tracked: true } |  released_gpr_count:15,released_fpr_count:23


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     555  untrack n_24_0 
              #                    occupy a0 with n_24_0
              #                    release a0 with n_24_0
              #                     64   temp_7_ret_of_my_pow_27_0 =  Call f32 my_pow_0(a_24_0, temp_6__27_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_6__27_0
              #                    store to temp_6__27_0 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_6__27_0
              #                    occupy fa0 with a_24_0
              #                    store to a_24_0 in mem offset legal
    fsw     fa0,60(sp)
              #                    release fa0 with a_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_24_0_0
              #                    load from a_24_0 in mem


    flw     fa0,60(sp)
              #                    occupy a0 with _anonymous_of_temp_6__27_0_0
              #                    load from temp_6__27_0 in mem


    lw      a0,24(sp)
              #                    arg load ended


    call    my_pow
              #                     557  untrack temp_6__27_0 
              #                     556  untrack a_24_0 
              #                     66   (nop) 
              #                     68   temp_9_arithop_27_0 = Div f32 1._0, temp_7_ret_of_my_pow_27_0 
              #                    occupy fa1 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_7_ret_of_my_pow_27_0
              #                    occupy fa2 with temp_9_arithop_27_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     554  untrack temp_7_ret_of_my_pow_27_0 
              #                    occupy fa0 with temp_7_ret_of_my_pow_27_0
              #                    release fa0 with temp_7_ret_of_my_pow_27_0
              #                     69   ret temp_9_arithop_27_0 
              #                    load from ra_my_pow_0 in mem
    ld      ra,72(sp)
              #                    load from s0_my_pow_0 in mem
    ld      s0,64(sp)
              #                    occupy fa2 with temp_9_arithop_27_0
              #                    store to temp_9_arithop_27_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_9_arithop_27_0
              #                    occupy fa0 with temp_9_arithop_27_0
              #                    load from temp_9_arithop_27_0 in mem


    flw     fa0,16(sp)
    addi    sp,sp,80
              #                    free fa0
    ret
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     a2:Freed { symidx: temp_10_cmp_27_0, tracked: true } |     fa0:Freed { symidx: a_24_0, tracked: true } |  released_gpr_count:16,released_fpr_count:23
              #                     73   label branch_false_28: 
.branch_false_28:
              #                     553  untrack temp_6__27_0 
              #                     552  untrack temp_10_cmp_27_0 
              #                    occupy a2 with temp_10_cmp_27_0
              #                    release a2 with temp_10_cmp_27_0
              #                     551  untrack temp_9_arithop_27_0 
              #                     550  untrack temp_7_ret_of_my_pow_27_0 
              #                          jump label: L27_0 
    j       .L27_0
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     fa0:Freed { symidx: a_24_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                          label L27_0: 
.L27_0:
              #                     47   (nop) 
              #                     528  n_24_1 = i32 n_24_0 
              #                    occupy a0 with n_24_0
              #                    occupy a1 with n_24_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     558  untrack n_24_0 
              #                    occupy a0 with n_24_0
              #                    release a0 with n_24_0
              #                     529  a_24_1 = f32 a_24_0 
              #                    occupy fa0 with a_24_0
              #                    occupy fa1 with a_24_1
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     559  untrack a_24_0 
              #                    occupy fa0 with a_24_0
              #                    release fa0 with a_24_0
              #                     530  res_26_1 = f32 1.0_0 
              #                    occupy fa0 with res_26_1
              #                    occupy a0 with _anonymous_of_1.0_0_0
    li      a0, 1065353216
    fmv.w.x fa0, a0
              #                    free a0
              #                    free fa0
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     77   label while.head_32: 
.while.head_32:
              #                     76   temp_11__711_0 = icmp i32 Ne n_24_1, 0_0 
              #                    occupy a1 with n_24_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_11__711_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     80   br i1 temp_11__711_0, label while.body_32, label while.exit_32 
              #                    occupy a2 with temp_11__711_0
              #                    free a2
              #                    occupy a2 with temp_11__711_0
    bnez    a2, .while.body_32
              #                    free a2
    j       .while.exit_32
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     a2:Freed { symidx: temp_11__711_0, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |  released_gpr_count:14,released_fpr_count:22
              #                     78   label while.body_32: 
.while.body_32:
              #                     83   temp_12_arithop_34_0 = Mod i32 n_24_1, 2_0 
              #                    occupy a1 with n_24_1
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a3 with temp_12_arithop_34_0
    rem     a3,a1,a0
              #                    free a1
              #                    free a0
              #                    free a3
              #                     85   temp_13__740_0 = icmp i32 Ne temp_12_arithop_34_0, 0_0 
              #                    occupy a3 with temp_12_arithop_34_0
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a5 with temp_13__740_0
    xor     a5,a3,a4
    snez    a5, a5
              #                    free a3
              #                    free a4
              #                    free a5
              #                     88   br i1 temp_13__740_0, label branch_true_35, label UP_76_0 
              #                    occupy a5 with temp_13__740_0
              #                    free a5
              #                    occupy a5 with temp_13__740_0
    bnez    a5, .branch_true_35
              #                    free a5
    j       .UP_76_0
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     a2:Freed { symidx: temp_11__711_0, tracked: true } |     a3:Freed { symidx: temp_12_arithop_34_0, tracked: true } |     a5:Freed { symidx: temp_13__740_0, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |  released_gpr_count:10,released_fpr_count:22
              #                     86   label branch_true_35: 
.branch_true_35:
              #                     564  untrack temp_13__740_0 
              #                    occupy a5 with temp_13__740_0
              #                    release a5 with temp_13__740_0
              #                     563  untrack temp_11__711_0 
              #                    occupy a2 with temp_11__711_0
              #                    release a2 with temp_11__711_0
              #                     562  untrack temp_12_arithop_34_0 
              #                    occupy a3 with temp_12_arithop_34_0
              #                    release a3 with temp_12_arithop_34_0
              #                     58   temp_5_arithop_34_0 = Mul f32 res_26_1, a_24_1 
              #                    occupy fa0 with res_26_1
              #                    occupy fa1 with a_24_1
              #                    occupy fa2 with temp_5_arithop_34_0
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     59   (nop) 
              #                     531  res_26_3 = f32 temp_5_arithop_34_0 
              #                    occupy fa2 with temp_5_arithop_34_0
              #                    occupy fa3 with res_26_3
    fmv.s   fa3, fa2
              #                    free fa2
              #                    free fa3
              #                     565  untrack temp_5_arithop_34_0 
              #                    occupy fa2 with temp_5_arithop_34_0
              #                    release fa2 with temp_5_arithop_34_0
              #                          jump label: branch_false_35 
    j       .branch_false_35
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |     fa3:Freed { symidx: res_26_3, tracked: true } |  released_gpr_count:13,released_fpr_count:21
              #                     87   label branch_false_35: 
.branch_false_35:
              #                          jump label: L28_0 
    j       .L28_0
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |     fa3:Freed { symidx: res_26_3, tracked: true } |  released_gpr_count:13,released_fpr_count:21
              #                          label L28_0: 
.L28_0:
              #                     52   temp_3_arithop_33_0 = Mul f32 a_24_1, a_24_1 
              #                    occupy fa1 with a_24_1
              #                    occupy fa1 with a_24_1
              #                    occupy fa2 with temp_3_arithop_33_0
    fmul.s  fa2,fa1,fa1
              #                    free fa1
              #                    free fa1
              #                    free fa2
              #                     53   (nop) 
              #                     55   temp_4_arithop_33_0 = Div i32 n_24_1, 2_0 
              #                    occupy a1 with n_24_1
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy a2 with temp_4_arithop_33_0
    divw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     56   (nop) 
              #                     532  n_24_1 = i32 temp_4_arithop_33_0 
              #                    occupy a2 with temp_4_arithop_33_0
              #                    occupy a1 with n_24_1
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                     533  res_26_1 = f32 res_26_3 
              #                    occupy fa3 with res_26_3
              #                    occupy fa0 with res_26_1
    fmv.s   fa0, fa3
              #                    free fa3
              #                    free fa0
              #                     534  a_24_1 = f32 temp_3_arithop_33_0 
              #                    occupy fa2 with temp_3_arithop_33_0
              #                    occupy fa1 with a_24_1
    fmv.s   fa1, fa2
              #                    free fa2
              #                    free fa1
              #                          jump label: while.head_32 
              #                    occupy fa2 with temp_3_arithop_33_0
              #                    store to temp_3_arithop_33_0 in mem offset legal
    fsw     fa2,36(sp)
              #                    release fa2 with temp_3_arithop_33_0
              #                    occupy a2 with temp_4_arithop_33_0
              #                    store to temp_4_arithop_33_0 in mem offset legal
    sw      a2,32(sp)
              #                    release a2 with temp_4_arithop_33_0
              #                    occupy fa3 with res_26_3
              #                    store to res_26_3 in mem offset legal
    fsw     fa3,40(sp)
              #                    release fa3 with res_26_3
    j       .while.head_32
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     a2:Freed { symidx: temp_11__711_0, tracked: true } |     a3:Freed { symidx: temp_12_arithop_34_0, tracked: true } |     a5:Freed { symidx: temp_13__740_0, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |  released_gpr_count:10,released_fpr_count:22
              #                     527  label UP_76_0: 
.UP_76_0:
              #                     535  res_26_3 = f32 res_26_1 
              #                    occupy fa0 with res_26_1
              #                    occupy fa2 with res_26_3
    fmv.s   fa2, fa0
              #                    free fa0
              #                    free fa2
              #                          jump label: branch_false_35 
              #                    occupy fa2 with res_26_3
              #                    store to res_26_3 in mem offset legal
    fsw     fa2,40(sp)
              #                    release fa2 with res_26_3
              #                    occupy a2 with temp_11__711_0
              #                    store to temp_11__711_0 in mem offset legal
    sb      a2,14(sp)
              #                    release a2 with temp_11__711_0
              #                    occupy fa3 with res_26_3
              #                    load from res_26_3 in mem


    flw     fa3,40(sp)
              #                    occupy a3 with temp_12_arithop_34_0
              #                    store to temp_12_arithop_34_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_12_arithop_34_0
              #                    occupy a5 with temp_13__740_0
              #                    store to temp_13__740_0 in mem offset legal
    sb      a5,7(sp)
              #                    release a5 with temp_13__740_0
    j       .branch_false_35
              #                    regtab     a1:Freed { symidx: n_24_1, tracked: true } |     a2:Freed { symidx: temp_11__711_0, tracked: true } |     fa0:Freed { symidx: res_26_1, tracked: true } |     fa1:Freed { symidx: a_24_1, tracked: true } |  released_gpr_count:14,released_fpr_count:22
              #                     79   label while.exit_32: 
.while.exit_32:
              #                     561  untrack n_24_1 
              #                    occupy a1 with n_24_1
              #                    release a1 with n_24_1
              #                     560  untrack a_24_1 
              #                    occupy fa1 with a_24_1
              #                    release fa1 with a_24_1
              #                     50   ret res_26_1 
              #                    load from ra_my_pow_0 in mem
    ld      ra,72(sp)
              #                    load from s0_my_pow_0 in mem
    ld      s0,64(sp)
              #                    occupy fa0 with res_26_1
              #                    store to res_26_1 in mem offset legal
    fsw     fa0,44(sp)
              #                    release fa0 with res_26_1
              #                    occupy fa0 with res_26_1
              #                    load from res_26_1 in mem


    flw     fa0,44(sp)
    addi    sp,sp,80
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define my_sqrt_0 "x_40_0," -> my_sqrt_ret_0 
    .globl my_sqrt
    .type my_sqrt,@function
my_sqrt:
              #                    mem layout:|ra_my_sqrt:8 at 80|s0_my_sqrt:8 at 72|x _s40 _i0:4 at 68|temp_15_arithop _s42 _i0:4 at 64|temp_16_arithop _s42 _i0:4 at 60|temp_18_arithop _s42 _i0:4 at 56|temp_20_arithop _s42 _i0:4 at 52|temp_21_arithop _s42 _i0:4 at 48|temp_22_arithop _s42 _i0:4 at 44|t _s42 _i1:4 at 40|c _s42 _i1:4 at 36|temp_23_arithop _s50 _i0:4 at 32|temp_24_arithop _s50 _i0:4 at 28|temp_26_arithop _s50 _i0:4 at 24|temp_27_arithop _s50 _i0:4 at 20|temp_29_arithop _s43 _i0:4 at 16|temp_30_ret_of_my_sqrt _s43 _i0:4 at 12|temp_31_arithop _s43 _i0:4 at 8|temp_33_cmp _s43 _i0:1 at 7|temp_34_ _s1136 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-88
              #                    store to ra_my_sqrt_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_my_sqrt_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     89   alloc f32 [temp_14__42] 
              #                     91   alloc f32 [temp_15_arithop_42] 
              #                     93   alloc f32 [temp_16_arithop_42] 
              #                     95   alloc f32 [temp_17__42] 
              #                     97   alloc f32 [temp_18_arithop_42] 
              #                     99   alloc f32 [temp_19__42] 
              #                     101  alloc f32 [temp_20_arithop_42] 
              #                     103  alloc f32 [temp_21_arithop_42] 
              #                     105  alloc f32 [temp_22_arithop_42] 
              #                     108  alloc f32 [t_42] 
              #                     110  alloc i32 [c_42] 
              #                     113  alloc f32 [temp_23_arithop_50] 
              #                     115  alloc f32 [temp_24_arithop_50] 
              #                     117  alloc f32 [temp_25__50] 
              #                     119  alloc f32 [temp_26_arithop_50] 
              #                     122  alloc i32 [temp_27_arithop_50] 
              #                     126  alloc f32 [temp_28__43] 
              #                     128  alloc f32 [temp_29_arithop_43] 
              #                     130  alloc f32 [temp_30_ret_of_my_sqrt_43] 
              #                     132  alloc f32 [temp_31_arithop_43] 
              #                     135  alloc f32 [temp_32__43] 
              #                     137  alloc i1 [temp_33_cmp_43] 
              #                     142  alloc i1 [temp_34__1136] 
              #                    regtab     fa0:Freed { symidx: x_40_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L24_0: 
.L24_0:
              #                     136  (nop) 
              #                     138  temp_33_cmp_43_0 = fcmp f32 Ogt x_40_0, 100._0 
              #                    occupy fa0 with x_40_0
              #                    occupy fa1 with 100._0
              #                    occupy a0 with _anonymous_of_100._0_0
    li      a0, 1120403456
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_33_cmp_43_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     141  br i1 temp_33_cmp_43_0, label branch_true_44, label branch_false_44 
              #                    occupy a1 with temp_33_cmp_43_0
              #                    free a1
              #                    occupy a1 with temp_33_cmp_43_0
    bnez    a1, .branch_true_44
              #                    free a1
    j       .branch_false_44
              #                    regtab     a1:Freed { symidx: temp_33_cmp_43_0, tracked: true } |     fa0:Freed { symidx: x_40_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     139  label branch_true_44: 
.branch_true_44:
              #                     574  untrack temp_20_arithop_42_0 
              #                     573  untrack c_42_1 
              #                     572  untrack t_42_1 
              #                     571  untrack temp_18_arithop_42_0 
              #                     570  untrack temp_16_arithop_42_0 
              #                     569  untrack temp_15_arithop_42_0 
              #                     568  untrack temp_22_arithop_42_0 
              #                     567  untrack temp_33_cmp_43_0 
              #                    occupy a1 with temp_33_cmp_43_0
              #                    release a1 with temp_33_cmp_43_0
              #                     566  untrack temp_21_arithop_42_0 
              #                     127  (nop) 
              #                     129  temp_29_arithop_43_0 = Div f32 x_40_0, 100._0 
              #                    occupy fa0 with x_40_0
              #                    occupy fa1 with 100._0
              #                    occupy a0 with _anonymous_of_100._0_0
    li      a0, 1120403456
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_29_arithop_43_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     579  untrack x_40_0 
              #                    occupy fa0 with x_40_0
              #                    release fa0 with x_40_0
              #                     131  temp_30_ret_of_my_sqrt_43_0 =  Call f32 my_sqrt_0(temp_29_arithop_43_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_29_arithop_43_0
              #                    store to temp_29_arithop_43_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_29_arithop_43_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_29_arithop_43_0_0
              #                    load from temp_29_arithop_43_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_sqrt
              #                     580  untrack temp_29_arithop_43_0 
              #                     133  temp_31_arithop_43_0 = Mul f32 10.0_0, temp_30_ret_of_my_sqrt_43_0 
              #                    occupy fa1 with 10.0_0
              #                    occupy a0 with _anonymous_of_10.0_0_0
    li      a0, 1092616192
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_30_ret_of_my_sqrt_43_0
              #                    occupy fa2 with temp_31_arithop_43_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     581  untrack temp_30_ret_of_my_sqrt_43_0 
              #                    occupy fa0 with temp_30_ret_of_my_sqrt_43_0
              #                    release fa0 with temp_30_ret_of_my_sqrt_43_0
              #                     134  ret temp_31_arithop_43_0 
              #                    load from ra_my_sqrt_0 in mem
    ld      ra,80(sp)
              #                    load from s0_my_sqrt_0 in mem
    ld      s0,72(sp)
              #                    occupy fa2 with temp_31_arithop_43_0
              #                    store to temp_31_arithop_43_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_31_arithop_43_0
              #                    occupy fa0 with temp_31_arithop_43_0
              #                    load from temp_31_arithop_43_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,88
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_33_cmp_43_0, tracked: true } |     fa0:Freed { symidx: x_40_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     140  label branch_false_44: 
.branch_false_44:
              #                     578  untrack temp_31_arithop_43_0 
              #                     577  untrack temp_29_arithop_43_0 
              #                     576  untrack temp_33_cmp_43_0 
              #                    occupy a1 with temp_33_cmp_43_0
              #                    release a1 with temp_33_cmp_43_0
              #                     575  untrack temp_30_ret_of_my_sqrt_43_0 
              #                          jump label: L25_0 
    j       .L25_0
              #                    regtab     fa0:Freed { symidx: x_40_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L25_0: 
.L25_0:
              #                     90   (nop) 
              #                     92   temp_15_arithop_42_0 = Div f32 x_40_0, 8._0 
              #                    occupy fa0 with x_40_0
              #                    occupy fa1 with 8._0
              #                    occupy a0 with _anonymous_of_8._0_0
    li      a0, 1090519040
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_15_arithop_42_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     94   temp_16_arithop_42_0 = Add f32 temp_15_arithop_42_0, 0.5_0 
              #                    occupy fa2 with temp_15_arithop_42_0
              #                    occupy fa3 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa4 with temp_16_arithop_42_0
    fadd.s  fa4,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa4
              #                     587  untrack temp_15_arithop_42_0 
              #                    occupy fa2 with temp_15_arithop_42_0
              #                    release fa2 with temp_15_arithop_42_0
              #                     96   (nop) 
              #                     98   temp_18_arithop_42_0 = Mul f32 2._0, x_40_0 
              #                    occupy fa2 with 2._0
              #                    occupy a2 with _anonymous_of_2._0_0
    li      a2, 1073741824
    fmv.w.x fa2, a2
              #                    free a2
              #                    occupy fa0 with x_40_0
              #                    occupy fa5 with temp_18_arithop_42_0
    fmul.s  fa5,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa5
              #                     100  (nop) 
              #                     102  temp_20_arithop_42_0 = Add f32 4._0, x_40_0 
              #                    occupy fa6 with 4._0
              #                    occupy a3 with _anonymous_of_4._0_0
    li      a3, 1082130432
    fmv.w.x fa6, a3
              #                    free a3
              #                    occupy fa0 with x_40_0
              #                    occupy fa7 with temp_20_arithop_42_0
    fadd.s  fa7,fa6,fa0
              #                    free fa6
              #                    free fa0
              #                    free fa7
              #                     104  temp_21_arithop_42_0 = Div f32 temp_18_arithop_42_0, temp_20_arithop_42_0 
              #                    occupy fa5 with temp_18_arithop_42_0
              #                    occupy fa7 with temp_20_arithop_42_0
              #                    occupy f8 with temp_21_arithop_42_0
    fdiv.s  f8,fa5,fa7
              #                    free fa5
              #                    free fa7
              #                    free f8
              #                     586  untrack temp_18_arithop_42_0 
              #                    occupy fa5 with temp_18_arithop_42_0
              #                    release fa5 with temp_18_arithop_42_0
              #                     585  untrack temp_20_arithop_42_0 
              #                    occupy fa7 with temp_20_arithop_42_0
              #                    release fa7 with temp_20_arithop_42_0
              #                     106  temp_22_arithop_42_0 = Add f32 temp_16_arithop_42_0, temp_21_arithop_42_0 
              #                    occupy fa4 with temp_16_arithop_42_0
              #                    occupy f8 with temp_21_arithop_42_0
              #                    occupy fa5 with temp_22_arithop_42_0
    fadd.s  fa5,fa4,f8
              #                    free fa4
              #                    free f8
              #                    free fa5
              #                     583  untrack temp_21_arithop_42_0 
              #                    occupy f8 with temp_21_arithop_42_0
              #                    release f8 with temp_21_arithop_42_0
              #                     582  untrack temp_16_arithop_42_0 
              #                    occupy fa4 with temp_16_arithop_42_0
              #                    release fa4 with temp_16_arithop_42_0
              #                     107  (nop) 
              #                     109  (nop) 
              #                     536  t_42_1 = f32 temp_22_arithop_42_0 
              #                    occupy fa5 with temp_22_arithop_42_0
              #                    occupy fa4 with t_42_1
    fmv.s   fa4, fa5
              #                    free fa5
              #                    free fa4
              #                     584  untrack temp_22_arithop_42_0 
              #                    occupy fa5 with temp_22_arithop_42_0
              #                    release fa5 with temp_22_arithop_42_0
              #                     537  c_42_1 = i32 10_0 
              #                    occupy a4 with c_42_1
    li      a4, 10
              #                    free a4
              #                          jump label: while.head_49 
    j       .while.head_49
              #                    regtab     a4:Freed { symidx: c_42_1, tracked: true } |     fa0:Freed { symidx: x_40_0, tracked: true } |     fa4:Freed { symidx: t_42_1, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                     144  label while.head_49: 
.while.head_49:
              #                     143  temp_34__1136_0 = icmp i32 Ne c_42_1, 0_0 
              #                    occupy a4 with c_42_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with temp_34__1136_0
    xor     a1,a4,a0
    snez    a1, a1
              #                    free a4
              #                    free a0
              #                    free a1
              #                     147  br i1 temp_34__1136_0, label while.body_49, label while.exit_49 
              #                    occupy a1 with temp_34__1136_0
              #                    free a1
              #                    occupy a1 with temp_34__1136_0
    bnez    a1, .while.body_49
              #                    free a1
    j       .while.exit_49
              #                    regtab     a1:Freed { symidx: temp_34__1136_0, tracked: true } |     a4:Freed { symidx: c_42_1, tracked: true } |     fa0:Freed { symidx: x_40_0, tracked: true } |     fa4:Freed { symidx: t_42_1, tracked: true } |  released_gpr_count:11,released_fpr_count:17
              #                     145  label while.body_49: 
.while.body_49:
              #                     114  temp_23_arithop_50_0 = Div f32 x_40_0, t_42_1 
              #                    occupy fa0 with x_40_0
              #                    occupy fa4 with t_42_1
              #                    occupy fa1 with temp_23_arithop_50_0
    fdiv.s  fa1,fa0,fa4
              #                    free fa0
              #                    free fa4
              #                    free fa1
              #                     116  temp_24_arithop_50_0 = Add f32 t_42_1, temp_23_arithop_50_0 
              #                    occupy fa4 with t_42_1
              #                    occupy fa1 with temp_23_arithop_50_0
              #                    occupy fa2 with temp_24_arithop_50_0
    fadd.s  fa2,fa4,fa1
              #                    free fa4
              #                    free fa1
              #                    free fa2
              #                     118  (nop) 
              #                     120  temp_26_arithop_50_0 = Div f32 temp_24_arithop_50_0, 2._0 
              #                    occupy fa2 with temp_24_arithop_50_0
              #                    occupy fa3 with 2._0
              #                    occupy a0 with _anonymous_of_2._0_0
    li      a0, 1073741824
    fmv.w.x fa3, a0
              #                    free a0
              #                    occupy fa5 with temp_26_arithop_50_0
    fdiv.s  fa5,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa5
              #                     121  (nop) 
              #                     123  temp_27_arithop_50_0 = Sub i32 c_42_1, 1_0 
              #                    occupy a4 with c_42_1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_27_arithop_50_0
              #                    regtab:    a0:Freed { symidx: _anonymous_of_2._0_0, tracked: false } |     a1:Freed { symidx: temp_34__1136_0, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_27_arithop_50_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: c_42_1, tracked: true, occupy_count: 1 } |     fa0:Freed { symidx: x_40_0, tracked: true } |     fa1:Freed { symidx: temp_23_arithop_50_0, tracked: true } |     fa2:Freed { symidx: temp_24_arithop_50_0, tracked: true } |     fa3:Freed { symidx: 2._0, tracked: false } |     fa4:Freed { symidx: t_42_1, tracked: true } |     fa5:Freed { symidx: temp_26_arithop_50_0, tracked: true } |  released_gpr_count:8,released_fpr_count:13


    subw    a3,a4,a2
              #                    free a4
              #                    free a2
              #                    free a3
              #                     124  (nop) 
              #                     538  c_42_1 = i32 temp_27_arithop_50_0 
              #                    occupy a3 with temp_27_arithop_50_0
              #                    occupy a4 with c_42_1
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                     539  t_42_1 = f32 temp_26_arithop_50_0 
              #                    occupy fa5 with temp_26_arithop_50_0
              #                    occupy fa4 with t_42_1
    fmv.s   fa4, fa5
              #                    free fa5
              #                    free fa4
              #                          jump label: while.head_49 
              #                    occupy fa5 with temp_26_arithop_50_0
              #                    store to temp_26_arithop_50_0 in mem offset legal
    fsw     fa5,24(sp)
              #                    release fa5 with temp_26_arithop_50_0
              #                    occupy a3 with temp_27_arithop_50_0
              #                    store to temp_27_arithop_50_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_27_arithop_50_0
              #                    occupy a1 with temp_34__1136_0
              #                    store to temp_34__1136_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_34__1136_0
              #                    occupy fa2 with temp_24_arithop_50_0
              #                    store to temp_24_arithop_50_0 in mem offset legal
    fsw     fa2,28(sp)
              #                    release fa2 with temp_24_arithop_50_0
              #                    occupy fa1 with temp_23_arithop_50_0
              #                    store to temp_23_arithop_50_0 in mem offset legal
    fsw     fa1,32(sp)
              #                    release fa1 with temp_23_arithop_50_0
    j       .while.head_49
              #                    regtab     a1:Freed { symidx: temp_34__1136_0, tracked: true } |     a4:Freed { symidx: c_42_1, tracked: true } |     fa0:Freed { symidx: x_40_0, tracked: true } |     fa4:Freed { symidx: t_42_1, tracked: true } |  released_gpr_count:11,released_fpr_count:17
              #                     146  label while.exit_49: 
.while.exit_49:
              #                     589  untrack c_42_1 
              #                    occupy a4 with c_42_1
              #                    release a4 with c_42_1
              #                     588  untrack x_40_0 
              #                    occupy fa0 with x_40_0
              #                    release fa0 with x_40_0
              #                     112  ret t_42_1 
              #                    load from ra_my_sqrt_0 in mem
    ld      ra,80(sp)
              #                    load from s0_my_sqrt_0 in mem
    ld      s0,72(sp)
              #                    occupy fa4 with t_42_1
              #                    store to t_42_1 in mem offset legal
    fsw     fa4,40(sp)
              #                    release fa4 with t_42_1
              #                    occupy fa0 with t_42_1
              #                    load from t_42_1 in mem


    flw     fa0,40(sp)
    addi    sp,sp,88
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define F1_0 "x_54_0," -> F1_ret_0 
    .globl F1
    .type F1,@function
F1:
              #                    mem layout:|ra_F1:8 at 16|s0_F1:8 at 8|x _s54 _i0:4 at 4|temp_36_arithop _s56 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_F1_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_F1_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     150  alloc f32 [temp_35__56] 
              #                     152  alloc f32 [temp_36_arithop_56] 
              #                    regtab     fa0:Freed { symidx: x_54_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L23_0: 
.L23_0:
              #                     151  (nop) 
              #                     153  temp_36_arithop_56_0 = Div f32 1._0, x_54_0 
              #                    occupy fa1 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_54_0
              #                    occupy fa2 with temp_36_arithop_56_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     590  untrack x_54_0 
              #                    occupy fa0 with x_54_0
              #                    release fa0 with x_54_0
              #                     154  ret temp_36_arithop_56_0 
              #                    load from ra_F1_0 in mem
    ld      ra,16(sp)
              #                    load from s0_F1_0 in mem
    ld      s0,8(sp)
              #                    occupy fa2 with temp_36_arithop_56_0
              #                    store to temp_36_arithop_56_0 in mem offset legal
    fsw     fa2,0(sp)
              #                    release fa2 with temp_36_arithop_56_0
              #                    occupy fa0 with temp_36_arithop_56_0
              #                    load from temp_36_arithop_56_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,24
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define F2_0 "x_58_0," -> F2_ret_0 
    .globl F2
    .type F2,@function
F2:
              #                    mem layout:|ra_F2:8 at 32|s0_F2:8 at 24|x _s58 _i0:4 at 20|temp_37_arithop _s60 _i0:4 at 16|temp_39_arithop _s60 _i0:4 at 12|temp_40_ret_of_my_sqrt _s60 _i0:4 at 8|temp_42_arithop _s60 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_F2_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_F2_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     157  alloc f32 [temp_37_arithop_60] 
              #                     159  alloc f32 [temp_38__60] 
              #                     161  alloc f32 [temp_39_arithop_60] 
              #                     163  alloc f32 [temp_40_ret_of_my_sqrt_60] 
              #                     165  alloc f32 [temp_41__60] 
              #                     167  alloc f32 [temp_42_arithop_60] 
              #                    regtab     fa0:Freed { symidx: x_58_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L22_0: 
.L22_0:
              #                     158  temp_37_arithop_60_0 = Mul f32 x_58_0, x_58_0 
              #                    occupy fa0 with x_58_0
              #                    occupy fa0 with x_58_0
              #                    occupy fa1 with temp_37_arithop_60_0
    fmul.s  fa1,fa0,fa0
              #                    free fa0
              #                    free fa0
              #                    free fa1
              #                     593  untrack x_58_0 
              #                    occupy fa0 with x_58_0
              #                    release fa0 with x_58_0
              #                     160  (nop) 
              #                     162  temp_39_arithop_60_0 = Sub f32 1._0, temp_37_arithop_60_0 
              #                    occupy fa0 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with temp_37_arithop_60_0
              #                    occupy fa2 with temp_39_arithop_60_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     591  untrack temp_37_arithop_60_0 
              #                    occupy fa1 with temp_37_arithop_60_0
              #                    release fa1 with temp_37_arithop_60_0
              #                     164  temp_40_ret_of_my_sqrt_60_0 =  Call f32 my_sqrt_0(temp_39_arithop_60_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_39_arithop_60_0
              #                    store to temp_39_arithop_60_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_39_arithop_60_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_39_arithop_60_0_0
              #                    load from temp_39_arithop_60_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    my_sqrt
              #                     594  untrack temp_39_arithop_60_0 
              #                     166  (nop) 
              #                     168  temp_42_arithop_60_0 = Div f32 1._0, temp_40_ret_of_my_sqrt_60_0 
              #                    occupy fa1 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_40_ret_of_my_sqrt_60_0
              #                    occupy fa2 with temp_42_arithop_60_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     592  untrack temp_40_ret_of_my_sqrt_60_0 
              #                    occupy fa0 with temp_40_ret_of_my_sqrt_60_0
              #                    release fa0 with temp_40_ret_of_my_sqrt_60_0
              #                     169  ret temp_42_arithop_60_0 
              #                    load from ra_F2_0 in mem
    ld      ra,32(sp)
              #                    load from s0_F2_0 in mem
    ld      s0,24(sp)
              #                    occupy fa2 with temp_42_arithop_60_0
              #                    store to temp_42_arithop_60_0 in mem offset legal
    fsw     fa2,4(sp)
              #                    release fa2 with temp_42_arithop_60_0
              #                    occupy fa0 with temp_42_arithop_60_0
              #                    load from temp_42_arithop_60_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     24   Define simpson_0 "a_62_0,b_62_0,flag_62_0," -> simpson_ret_0 
    .globl simpson
    .type simpson,@function
simpson:
              #                    mem layout:|ra_simpson:8 at 104|s0_simpson:8 at 96|a _s62 _i0:4 at 92|b _s62 _i0:4 at 88|flag _s62 _i0:4 at 84|temp_43_arithop _s64 _i0:4 at 80|temp_45_arithop _s64 _i0:4 at 76|temp_46_arithop _s64 _i0:4 at 72|temp_48_ret_of_F2 _s69 _i0:4 at 68|temp_49_ret_of_F2 _s69 _i0:4 at 64|temp_51_arithop _s69 _i0:4 at 60|temp_52_arithop _s69 _i0:4 at 56|temp_53_ret_of_F2 _s69 _i0:4 at 52|temp_54_arithop _s69 _i0:4 at 48|temp_56_arithop _s69 _i0:4 at 44|temp_58_arithop _s69 _i0:4 at 40|temp_59_ret_of_F1 _s66 _i0:4 at 36|temp_60_ret_of_F1 _s66 _i0:4 at 32|temp_62_arithop _s66 _i0:4 at 28|temp_63_arithop _s66 _i0:4 at 24|temp_64_ret_of_F1 _s66 _i0:4 at 20|temp_65_arithop _s66 _i0:4 at 16|temp_67_arithop _s66 _i0:4 at 12|temp_69_arithop _s66 _i0:4 at 8|temp_70_cmp _s66 _i0:1 at 7|temp_71_cmp _s69 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-112
              #                    store to ra_simpson_0 in mem offset legal
    sd      ra,104(sp)
              #                    store to s0_simpson_0 in mem offset legal
    sd      s0,96(sp)
    addi    s0,sp,112
              #                     171  alloc f32 [temp_43_arithop_64] 
              #                     173  alloc f32 [temp_44__64] 
              #                     175  alloc f32 [temp_45_arithop_64] 
              #                     177  alloc f32 [temp_46_arithop_64] 
              #                     180  alloc f32 [c_64] 
              #                     182  alloc f32 [temp_47__72] 
              #                     186  alloc f32 [temp_48_ret_of_F2_69] 
              #                     188  alloc f32 [temp_49_ret_of_F2_69] 
              #                     190  alloc f32 [temp_50__69] 
              #                     192  alloc f32 [temp_51_arithop_69] 
              #                     194  alloc f32 [temp_52_arithop_69] 
              #                     196  alloc f32 [temp_53_ret_of_F2_69] 
              #                     198  alloc f32 [temp_54_arithop_69] 
              #                     200  alloc f32 [temp_55_arithop_69] 
              #                     202  alloc f32 [temp_56_arithop_69] 
              #                     204  alloc f32 [temp_57__69] 
              #                     206  alloc f32 [temp_58_arithop_69] 
              #                     210  alloc f32 [temp_59_ret_of_F1_66] 
              #                     212  alloc f32 [temp_60_ret_of_F1_66] 
              #                     214  alloc f32 [temp_61__66] 
              #                     216  alloc f32 [temp_62_arithop_66] 
              #                     218  alloc f32 [temp_63_arithop_66] 
              #                     220  alloc f32 [temp_64_ret_of_F1_66] 
              #                     222  alloc f32 [temp_65_arithop_66] 
              #                     224  alloc f32 [temp_66_arithop_66] 
              #                     226  alloc f32 [temp_67_arithop_66] 
              #                     228  alloc f32 [temp_68__66] 
              #                     230  alloc f32 [temp_69_arithop_66] 
              #                     233  alloc i1 [temp_70_cmp_66] 
              #                     238  alloc i1 [temp_71_cmp_69] 
              #                    regtab     a0:Freed { symidx: flag_62_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L18_0: 
.L18_0:
              #                     172  temp_43_arithop_64_0 = Sub f32 b_62_0, a_62_0 
              #                    occupy fa1 with b_62_0
              #                    occupy fa0 with a_62_0
              #                    occupy fa2 with temp_43_arithop_64_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     174  (nop) 
              #                     176  temp_45_arithop_64_0 = Div f32 temp_43_arithop_64_0, 2._0 
              #                    occupy fa2 with temp_43_arithop_64_0
              #                    occupy fa3 with 2._0
              #                    occupy a1 with _anonymous_of_2._0_0
    li      a1, 1073741824
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa4 with temp_45_arithop_64_0
    fdiv.s  fa4,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa4
              #                     178  temp_46_arithop_64_0 = Add f32 a_62_0, temp_45_arithop_64_0 
              #                    occupy fa0 with a_62_0
              #                    occupy fa4 with temp_45_arithop_64_0
              #                    occupy fa5 with temp_46_arithop_64_0
    fadd.s  fa5,fa0,fa4
              #                    free fa0
              #                    free fa4
              #                    free fa5
              #                     595  untrack temp_45_arithop_64_0 
              #                    occupy fa4 with temp_45_arithop_64_0
              #                    release fa4 with temp_45_arithop_64_0
              #                     179  (nop) 
              #                          jump label: L19_0 
    j       .L19_0
              #                    regtab     a0:Freed { symidx: flag_62_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:17,released_fpr_count:19
              #                          label L19_0: 
.L19_0:
              #                     234  temp_70_cmp_66_0 = icmp i32 Eq flag_62_0, 1_0 
              #                    occupy a0 with flag_62_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_70_cmp_66_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     237  br i1 temp_70_cmp_66_0, label branch_true_67, label branch_false_67 
              #                    occupy a2 with temp_70_cmp_66_0
              #                    free a2
              #                    occupy a2 with temp_70_cmp_66_0
    bnez    a2, .branch_true_67
              #                    free a2
    j       .branch_false_67
              #                    regtab     a0:Freed { symidx: flag_62_0, tracked: true } |     a2:Freed { symidx: temp_70_cmp_66_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     235  label branch_true_67: 
.branch_true_67:
              #                     606  untrack temp_54_arithop_69_0 
              #                     605  untrack flag_62_0 
              #                    occupy a0 with flag_62_0
              #                    release a0 with flag_62_0
              #                     604  untrack temp_48_ret_of_F2_69_0 
              #                     603  untrack temp_49_ret_of_F2_69_0 
              #                     602  untrack temp_52_arithop_69_0 
              #                     601  untrack temp_70_cmp_66_0 
              #                    occupy a2 with temp_70_cmp_66_0
              #                    release a2 with temp_70_cmp_66_0
              #                     600  untrack temp_56_arithop_69_0 
              #                     599  untrack temp_53_ret_of_F2_69_0 
              #                     598  untrack temp_71_cmp_69_0 
              #                     597  untrack temp_51_arithop_69_0 
              #                     596  untrack temp_58_arithop_69_0 
              #                     211  temp_59_ret_of_F1_66_0 =  Call f32 F1_0(a_62_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with a_62_0
              #                    store to a_62_0 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with a_62_0
              #                    occupy fa1 with b_62_0
              #                    store to b_62_0 in mem offset legal
    fsw     fa1,88(sp)
              #                    release fa1 with b_62_0
              #                    occupy fa2 with temp_43_arithop_64_0
              #                    store to temp_43_arithop_64_0 in mem offset legal
    fsw     fa2,80(sp)
              #                    release fa2 with temp_43_arithop_64_0
              #                    occupy fa5 with temp_46_arithop_64_0
              #                    store to temp_46_arithop_64_0 in mem offset legal
    fsw     fa5,72(sp)
              #                    release fa5 with temp_46_arithop_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_62_0_0
              #                    load from a_62_0 in mem


    flw     fa0,92(sp)
              #                    arg load ended


    call    F1
              #                     623  untrack a_62_0 
              #                     213  temp_60_ret_of_F1_66_0 =  Call f32 F1_0(temp_46_arithop_64_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_59_ret_of_F1_66_0
              #                    store to temp_59_ret_of_F1_66_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_59_ret_of_F1_66_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_46_arithop_64_0_0
              #                    load from temp_46_arithop_64_0 in mem


    flw     fa0,72(sp)
              #                    arg load ended


    call    F1
              #                     626  untrack temp_46_arithop_64_0 
              #                     215  (nop) 
              #                     217  temp_62_arithop_66_0 = Mul f32 4._0, temp_60_ret_of_F1_66_0 
              #                    occupy fa1 with 4._0
              #                    occupy a0 with _anonymous_of_4._0_0
    li      a0, 1082130432
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_60_ret_of_F1_66_0
              #                    occupy fa2 with temp_62_arithop_66_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     622  untrack temp_60_ret_of_F1_66_0 
              #                    occupy fa0 with temp_60_ret_of_F1_66_0
              #                    release fa0 with temp_60_ret_of_F1_66_0
              #                     219  temp_63_arithop_66_0 = Add f32 temp_59_ret_of_F1_66_0, temp_62_arithop_66_0 
              #                    occupy fa0 with temp_59_ret_of_F1_66_0
              #                    load from temp_59_ret_of_F1_66_0 in mem


    flw     fa0,36(sp)
              #                    occupy fa2 with temp_62_arithop_66_0
              #                    occupy fa3 with temp_63_arithop_66_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     620  untrack temp_59_ret_of_F1_66_0 
              #                    occupy fa0 with temp_59_ret_of_F1_66_0
              #                    release fa0 with temp_59_ret_of_F1_66_0
              #                     616  untrack temp_62_arithop_66_0 
              #                    occupy fa2 with temp_62_arithop_66_0
              #                    release fa2 with temp_62_arithop_66_0
              #                     221  temp_64_ret_of_F1_66_0 =  Call f32 F1_0(b_62_0) 
              #                    saved register dumping to mem
              #                    occupy fa3 with temp_63_arithop_66_0
              #                    store to temp_63_arithop_66_0 in mem offset legal
    fsw     fa3,24(sp)
              #                    release fa3 with temp_63_arithop_66_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_b_62_0_0
              #                    load from b_62_0 in mem


    flw     fa0,88(sp)
              #                    arg load ended


    call    F1
              #                     618  untrack b_62_0 
              #                     223  temp_65_arithop_66_0 = Add f32 temp_63_arithop_66_0, temp_64_ret_of_F1_66_0 
              #                    occupy fa1 with temp_63_arithop_66_0
              #                    load from temp_63_arithop_66_0 in mem


    flw     fa1,24(sp)
              #                    occupy fa0 with temp_64_ret_of_F1_66_0
              #                    occupy fa2 with temp_65_arithop_66_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     621  untrack temp_63_arithop_66_0 
              #                    occupy fa1 with temp_63_arithop_66_0
              #                    release fa1 with temp_63_arithop_66_0
              #                     617  untrack temp_64_ret_of_F1_66_0 
              #                    occupy fa0 with temp_64_ret_of_F1_66_0
              #                    release fa0 with temp_64_ret_of_F1_66_0
              #                     225  (nop) 
              #                     227  temp_67_arithop_66_0 = Mul f32 temp_65_arithop_66_0, temp_43_arithop_64_0 
              #                    occupy fa2 with temp_65_arithop_66_0
              #                    occupy fa0 with temp_43_arithop_64_0
              #                    load from temp_43_arithop_64_0 in mem


    flw     fa0,80(sp)
              #                    occupy fa1 with temp_67_arithop_66_0
    fmul.s  fa1,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa1
              #                     624  untrack temp_65_arithop_66_0 
              #                    occupy fa2 with temp_65_arithop_66_0
              #                    release fa2 with temp_65_arithop_66_0
              #                     619  untrack temp_43_arithop_64_0 
              #                    occupy fa0 with temp_43_arithop_64_0
              #                    release fa0 with temp_43_arithop_64_0
              #                     229  (nop) 
              #                     231  temp_69_arithop_66_0 = Div f32 temp_67_arithop_66_0, 6._0 
              #                    occupy fa1 with temp_67_arithop_66_0
              #                    occupy fa0 with 6._0
              #                    occupy a0 with _anonymous_of_6._0_0
    li      a0, 1086324736
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa2 with temp_69_arithop_66_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     625  untrack temp_67_arithop_66_0 
              #                    occupy fa1 with temp_67_arithop_66_0
              #                    release fa1 with temp_67_arithop_66_0
              #                     232  ret temp_69_arithop_66_0 
              #                    load from ra_simpson_0 in mem
    ld      ra,104(sp)
              #                    load from s0_simpson_0 in mem
    ld      s0,96(sp)
              #                    occupy fa2 with temp_69_arithop_66_0
              #                    store to temp_69_arithop_66_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_69_arithop_66_0
              #                    occupy fa0 with temp_69_arithop_66_0
              #                    load from temp_69_arithop_66_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,112
              #                    free fa0
    ret
              #                    regtab     a0:Freed { symidx: flag_62_0, tracked: true } |     a2:Freed { symidx: temp_70_cmp_66_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     236  label branch_false_67: 
.branch_false_67:
              #                     615  untrack temp_69_arithop_66_0 
              #                     614  untrack temp_67_arithop_66_0 
              #                     613  untrack temp_65_arithop_66_0 
              #                     612  untrack temp_60_ret_of_F1_66_0 
              #                     611  untrack temp_63_arithop_66_0 
              #                     610  untrack temp_62_arithop_66_0 
              #                     609  untrack temp_70_cmp_66_0 
              #                    occupy a2 with temp_70_cmp_66_0
              #                    release a2 with temp_70_cmp_66_0
              #                     608  untrack temp_59_ret_of_F1_66_0 
              #                     607  untrack temp_64_ret_of_F1_66_0 
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     a0:Freed { symidx: flag_62_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:16,released_fpr_count:19
              #                          label L20_0: 
.L20_0:
              #                     239  temp_71_cmp_69_0 = icmp i32 Eq flag_62_0, 2_0 
              #                    occupy a0 with flag_62_0
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_71_cmp_69_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     627  untrack flag_62_0 
              #                    occupy a0 with flag_62_0
              #                    release a0 with flag_62_0
              #                     242  br i1 temp_71_cmp_69_0, label branch_true_70, label branch_false_70 
              #                    occupy a2 with temp_71_cmp_69_0
              #                    free a2
              #                    occupy a2 with temp_71_cmp_69_0
    bnez    a2, .branch_true_70
              #                    free a2
    j       .branch_false_70
              #                    regtab     a2:Freed { symidx: temp_71_cmp_69_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     240  label branch_true_70: 
.branch_true_70:
              #                     628  untrack temp_71_cmp_69_0 
              #                    occupy a2 with temp_71_cmp_69_0
              #                    release a2 with temp_71_cmp_69_0
              #                     187  temp_48_ret_of_F2_69_0 =  Call f32 F2_0(a_62_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with a_62_0
              #                    store to a_62_0 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with a_62_0
              #                    occupy fa1 with b_62_0
              #                    store to b_62_0 in mem offset legal
    fsw     fa1,88(sp)
              #                    release fa1 with b_62_0
              #                    occupy fa2 with temp_43_arithop_64_0
              #                    store to temp_43_arithop_64_0 in mem offset legal
    fsw     fa2,80(sp)
              #                    release fa2 with temp_43_arithop_64_0
              #                    occupy fa5 with temp_46_arithop_64_0
              #                    store to temp_46_arithop_64_0 in mem offset legal
    fsw     fa5,72(sp)
              #                    release fa5 with temp_46_arithop_64_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_62_0_0
              #                    load from a_62_0 in mem


    flw     fa0,92(sp)
              #                    arg load ended


    call    F2
              #                     646  untrack a_62_0 
              #                     189  temp_49_ret_of_F2_69_0 =  Call f32 F2_0(temp_46_arithop_64_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_48_ret_of_F2_69_0
              #                    store to temp_48_ret_of_F2_69_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with temp_48_ret_of_F2_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_46_arithop_64_0_0
              #                    load from temp_46_arithop_64_0 in mem


    flw     fa0,72(sp)
              #                    arg load ended


    call    F2
              #                     652  untrack temp_46_arithop_64_0 
              #                     191  (nop) 
              #                     193  temp_51_arithop_69_0 = Mul f32 4._0, temp_49_ret_of_F2_69_0 
              #                    occupy fa1 with 4._0
              #                    occupy a0 with _anonymous_of_4._0_0
    li      a0, 1082130432
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_49_ret_of_F2_69_0
              #                    occupy fa2 with temp_51_arithop_69_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     650  untrack temp_49_ret_of_F2_69_0 
              #                    occupy fa0 with temp_49_ret_of_F2_69_0
              #                    release fa0 with temp_49_ret_of_F2_69_0
              #                     195  temp_52_arithop_69_0 = Add f32 temp_48_ret_of_F2_69_0, temp_51_arithop_69_0 
              #                    occupy fa0 with temp_48_ret_of_F2_69_0
              #                    load from temp_48_ret_of_F2_69_0 in mem


    flw     fa0,68(sp)
              #                    occupy fa2 with temp_51_arithop_69_0
              #                    occupy fa3 with temp_52_arithop_69_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     645  untrack temp_51_arithop_69_0 
              #                    occupy fa2 with temp_51_arithop_69_0
              #                    release fa2 with temp_51_arithop_69_0
              #                     643  untrack temp_48_ret_of_F2_69_0 
              #                    occupy fa0 with temp_48_ret_of_F2_69_0
              #                    release fa0 with temp_48_ret_of_F2_69_0
              #                     197  temp_53_ret_of_F2_69_0 =  Call f32 F2_0(b_62_0) 
              #                    saved register dumping to mem
              #                    occupy fa3 with temp_52_arithop_69_0
              #                    store to temp_52_arithop_69_0 in mem offset legal
    fsw     fa3,56(sp)
              #                    release fa3 with temp_52_arithop_69_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_b_62_0_0
              #                    load from b_62_0 in mem


    flw     fa0,88(sp)
              #                    arg load ended


    call    F2
              #                     651  untrack b_62_0 
              #                     199  temp_54_arithop_69_0 = Add f32 temp_52_arithop_69_0, temp_53_ret_of_F2_69_0 
              #                    occupy fa1 with temp_52_arithop_69_0
              #                    load from temp_52_arithop_69_0 in mem


    flw     fa1,56(sp)
              #                    occupy fa0 with temp_53_ret_of_F2_69_0
              #                    occupy fa2 with temp_54_arithop_69_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     648  untrack temp_53_ret_of_F2_69_0 
              #                    occupy fa0 with temp_53_ret_of_F2_69_0
              #                    release fa0 with temp_53_ret_of_F2_69_0
              #                     642  untrack temp_52_arithop_69_0 
              #                    occupy fa1 with temp_52_arithop_69_0
              #                    release fa1 with temp_52_arithop_69_0
              #                     201  (nop) 
              #                     203  temp_56_arithop_69_0 = Mul f32 temp_54_arithop_69_0, temp_43_arithop_64_0 
              #                    occupy fa2 with temp_54_arithop_69_0
              #                    occupy fa0 with temp_43_arithop_64_0
              #                    load from temp_43_arithop_64_0 in mem


    flw     fa0,80(sp)
              #                    occupy fa1 with temp_56_arithop_69_0
    fmul.s  fa1,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa1
              #                     649  untrack temp_43_arithop_64_0 
              #                    occupy fa0 with temp_43_arithop_64_0
              #                    release fa0 with temp_43_arithop_64_0
              #                     647  untrack temp_54_arithop_69_0 
              #                    occupy fa2 with temp_54_arithop_69_0
              #                    release fa2 with temp_54_arithop_69_0
              #                     205  (nop) 
              #                     207  temp_58_arithop_69_0 = Div f32 temp_56_arithop_69_0, 6._0 
              #                    occupy fa1 with temp_56_arithop_69_0
              #                    occupy fa0 with 6._0
              #                    occupy a0 with _anonymous_of_6._0_0
    li      a0, 1086324736
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa2 with temp_58_arithop_69_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     644  untrack temp_56_arithop_69_0 
              #                    occupy fa1 with temp_56_arithop_69_0
              #                    release fa1 with temp_56_arithop_69_0
              #                     208  ret temp_58_arithop_69_0 
              #                    load from ra_simpson_0 in mem
    ld      ra,104(sp)
              #                    load from s0_simpson_0 in mem
    ld      s0,96(sp)
              #                    occupy fa2 with temp_58_arithop_69_0
              #                    store to temp_58_arithop_69_0 in mem offset legal
    fsw     fa2,40(sp)
              #                    release fa2 with temp_58_arithop_69_0
              #                    occupy fa0 with temp_58_arithop_69_0
              #                    load from temp_58_arithop_69_0 in mem


    flw     fa0,40(sp)
    addi    sp,sp,112
              #                    free fa0
    ret
              #                    regtab     a2:Freed { symidx: temp_71_cmp_69_0, tracked: true } |     fa0:Freed { symidx: a_62_0, tracked: true } |     fa1:Freed { symidx: b_62_0, tracked: true } |     fa2:Freed { symidx: temp_43_arithop_64_0, tracked: true } |     fa5:Freed { symidx: temp_46_arithop_64_0, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     241  label branch_false_70: 
.branch_false_70:
              #                     641  untrack temp_58_arithop_69_0 
              #                     640  untrack a_62_0 
              #                    occupy fa0 with a_62_0
              #                    release fa0 with a_62_0
              #                     639  untrack temp_52_arithop_69_0 
              #                     638  untrack temp_53_ret_of_F2_69_0 
              #                     637  untrack temp_56_arithop_69_0 
              #                     636  untrack b_62_0 
              #                    occupy fa1 with b_62_0
              #                    release fa1 with b_62_0
              #                     635  untrack temp_43_arithop_64_0 
              #                    occupy fa2 with temp_43_arithop_64_0
              #                    release fa2 with temp_43_arithop_64_0
              #                     634  untrack temp_46_arithop_64_0 
              #                    occupy fa5 with temp_46_arithop_64_0
              #                    release fa5 with temp_46_arithop_64_0
              #                     633  untrack temp_54_arithop_69_0 
              #                     632  untrack temp_71_cmp_69_0 
              #                    occupy a2 with temp_71_cmp_69_0
              #                    release a2 with temp_71_cmp_69_0
              #                     631  untrack temp_49_ret_of_F2_69_0 
              #                     630  untrack temp_48_ret_of_F2_69_0 
              #                     629  untrack temp_51_arithop_69_0 
              #                          jump label: L21_0 
    j       .L21_0
              #                    regtab  released_gpr_count:16,released_fpr_count:23
              #                          label L21_0: 
.L21_0:
              #                     183  (nop) 
              #                     184  ret 0._0 
              #                    load from ra_simpson_0 in mem
    ld      ra,104(sp)
              #                    load from s0_simpson_0 in mem
    ld      s0,96(sp)
              #                    occupy fa0 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa0, a0
              #                    free a0
    addi    sp,sp,112
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     25   Define asr5_0 "a_73_0,b_73_0,eps_73_0,A_73_0,flag_73_0," -> asr5_ret_0 
    .globl asr5
    .type asr5,@function
asr5:
              #                    mem layout:|ra_asr5:8 at 96|s0_asr5:8 at 88|a _s73 _i0:4 at 84|b _s73 _i0:4 at 80|eps _s73 _i0:4 at 76|A _s73 _i0:4 at 72|flag _s73 _i0:4 at 68|temp_72_arithop _s75 _i0:4 at 64|temp_74_arithop _s75 _i0:4 at 60|temp_75_arithop _s75 _i0:4 at 56|temp_76_ret_of_simpson _s75 _i0:4 at 52|temp_77_ret_of_simpson _s75 _i0:4 at 48|temp_79_arithop _s75 _i0:4 at 44|temp_80_ret_of_asr5 _s75 _i0:4 at 40|temp_83_ret_of_asr5 _s75 _i0:4 at 36|temp_84_arithop _s75 _i0:4 at 32|temp_88_arithop _s78 _i0:4 at 28|temp_89_arithop _s78 _i0:4 at 24|temp_91_arithop _s78 _i0:4 at 20|temp_92_arithop _s78 _i0:4 at 16|temp_93_arithop _s78 _i0:4 at 12|temp_94_ret_of_my_fabs _s78 _i0:4 at 8|temp_95_cmp _s78 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-104
              #                    store to ra_asr5_0 in mem offset legal
    sd      ra,96(sp)
              #                    store to s0_asr5_0 in mem offset legal
    sd      s0,88(sp)
    addi    s0,sp,104
              #                     244  alloc f32 [temp_72_arithop_75] 
              #                     246  alloc f32 [temp_73__75] 
              #                     248  alloc f32 [temp_74_arithop_75] 
              #                     250  alloc f32 [temp_75_arithop_75] 
              #                     253  alloc f32 [c_75] 
              #                     254  alloc f32 [temp_76_ret_of_simpson_75] 
              #                     257  alloc f32 [L_75] 
              #                     258  alloc f32 [temp_77_ret_of_simpson_75] 
              #                     261  alloc f32 [R_75] 
              #                     263  alloc f32 [temp_78__75] 
              #                     265  alloc f32 [temp_79_arithop_75] 
              #                     267  alloc f32 [temp_80_ret_of_asr5_75] 
              #                     269  alloc f32 [temp_81__75] 
              #                     271  alloc f32 [temp_82_arithop_75] 
              #                     273  alloc f32 [temp_83_ret_of_asr5_75] 
              #                     275  alloc f32 [temp_84_arithop_75] 
              #                     279  alloc f32 [temp_85_arithop_78] 
              #                     281  alloc f32 [temp_86_arithop_78] 
              #                     283  alloc f32 [temp_87_arithop_78] 
              #                     285  alloc f32 [temp_88_arithop_78] 
              #                     287  alloc f32 [temp_89_arithop_78] 
              #                     290  alloc f32 [temp_90__78] 
              #                     292  alloc f32 [temp_91_arithop_78] 
              #                     294  alloc f32 [temp_92_arithop_78] 
              #                     296  alloc f32 [temp_93_arithop_78] 
              #                     298  alloc f32 [temp_94_ret_of_my_fabs_78] 
              #                     300  alloc i1 [temp_95_cmp_78] 
              #                    regtab     a0:Freed { symidx: flag_73_0, tracked: true } |     fa0:Freed { symidx: a_73_0, tracked: true } |     fa1:Freed { symidx: b_73_0, tracked: true } |     fa2:Freed { symidx: eps_73_0, tracked: true } |     fa3:Freed { symidx: A_73_0, tracked: true } |  released_gpr_count:18,released_fpr_count:20
              #                          label L15_0: 
.L15_0:
              #                     245  temp_72_arithop_75_0 = Sub f32 b_73_0, a_73_0 
              #                    occupy fa1 with b_73_0
              #                    occupy fa0 with a_73_0
              #                    occupy fa4 with temp_72_arithop_75_0
    fsub.s  fa4,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa4
              #                     247  (nop) 
              #                     249  temp_74_arithop_75_0 = Div f32 temp_72_arithop_75_0, 2._0 
              #                    occupy fa4 with temp_72_arithop_75_0
              #                    occupy fa5 with 2._0
              #                    occupy a1 with _anonymous_of_2._0_0
    li      a1, 1073741824
    fmv.w.x fa5, a1
              #                    free a1
              #                    occupy fa6 with temp_74_arithop_75_0
    fdiv.s  fa6,fa4,fa5
              #                    free fa4
              #                    free fa5
              #                    free fa6
              #                     653  untrack temp_72_arithop_75_0 
              #                    occupy fa4 with temp_72_arithop_75_0
              #                    release fa4 with temp_72_arithop_75_0
              #                     251  temp_75_arithop_75_0 = Add f32 a_73_0, temp_74_arithop_75_0 
              #                    occupy fa0 with a_73_0
              #                    occupy fa6 with temp_74_arithop_75_0
              #                    occupy fa4 with temp_75_arithop_75_0
    fadd.s  fa4,fa0,fa6
              #                    free fa0
              #                    free fa6
              #                    free fa4
              #                     654  untrack temp_74_arithop_75_0 
              #                    occupy fa6 with temp_74_arithop_75_0
              #                    release fa6 with temp_74_arithop_75_0
              #                     252  (nop) 
              #                     255  temp_76_ret_of_simpson_75_0 =  Call f32 simpson_0(a_73_0, temp_75_arithop_75_0, flag_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with flag_73_0
              #                    store to flag_73_0 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with flag_73_0
              #                    occupy fa0 with a_73_0
              #                    store to a_73_0 in mem offset legal
    fsw     fa0,84(sp)
              #                    release fa0 with a_73_0
              #                    occupy fa1 with b_73_0
              #                    store to b_73_0 in mem offset legal
    fsw     fa1,80(sp)
              #                    release fa1 with b_73_0
              #                    occupy fa2 with eps_73_0
              #                    store to eps_73_0 in mem offset legal
    fsw     fa2,76(sp)
              #                    release fa2 with eps_73_0
              #                    occupy fa3 with A_73_0
              #                    store to A_73_0 in mem offset legal
    fsw     fa3,72(sp)
              #                    release fa3 with A_73_0
              #                    occupy fa4 with temp_75_arithop_75_0
              #                    store to temp_75_arithop_75_0 in mem offset legal
    fsw     fa4,56(sp)
              #                    release fa4 with temp_75_arithop_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_73_0_0
              #                    load from a_73_0 in mem


    flw     fa0,84(sp)
              #                    occupy fa1 with _anonymous_of_temp_75_arithop_75_0_0
              #                    load from temp_75_arithop_75_0 in mem


    flw     fa1,56(sp)
              #                    occupy a0 with _anonymous_of_flag_73_0_0
              #                    load from flag_73_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    simpson
              #                     256  (nop) 
              #                     259  temp_77_ret_of_simpson_75_0 =  Call f32 simpson_0(temp_75_arithop_75_0, b_73_0, flag_73_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_76_ret_of_simpson_75_0
              #                    store to temp_76_ret_of_simpson_75_0 in mem offset legal
    fsw     fa0,52(sp)
              #                    release fa0 with temp_76_ret_of_simpson_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_75_arithop_75_0_0
              #                    load from temp_75_arithop_75_0 in mem


    flw     fa0,56(sp)
              #                    occupy fa1 with _anonymous_of_b_73_0_0
              #                    load from b_73_0 in mem


    flw     fa1,80(sp)
              #                    occupy a0 with _anonymous_of_flag_73_0_0
              #                    load from flag_73_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    simpson
              #                     260  (nop) 
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab     fa0:Freed { symidx: temp_77_ret_of_simpson_75_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L16_0: 
.L16_0:
              #                     291  (nop) 
              #                     293  temp_91_arithop_78_0 = Mul f32 15._0, eps_73_0 
              #                    occupy fa1 with 15._0
              #                    occupy a0 with _anonymous_of_15._0_0
    li      a0, 1097859072
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with eps_73_0
              #                    load from eps_73_0 in mem


    flw     fa2,76(sp)
              #                    occupy fa3 with temp_91_arithop_78_0
    fmul.s  fa3,fa1,fa2
              #                    free fa1
              #                    free fa2
              #                    free fa3
              #                     295  temp_92_arithop_78_0 = Add f32 temp_76_ret_of_simpson_75_0, temp_77_ret_of_simpson_75_0 
              #                    occupy fa4 with temp_76_ret_of_simpson_75_0
              #                    load from temp_76_ret_of_simpson_75_0 in mem


    flw     fa4,52(sp)
              #                    occupy fa0 with temp_77_ret_of_simpson_75_0
              #                    occupy fa5 with temp_92_arithop_78_0
    fadd.s  fa5,fa4,fa0
              #                    free fa4
              #                    free fa0
              #                    free fa5
              #                     297  temp_93_arithop_78_0 = Sub f32 temp_92_arithop_78_0, A_73_0 
              #                    occupy fa5 with temp_92_arithop_78_0
              #                    occupy fa6 with A_73_0
              #                    load from A_73_0 in mem


    flw     fa6,72(sp)
              #                    occupy fa7 with temp_93_arithop_78_0
    fsub.s  fa7,fa5,fa6
              #                    free fa5
              #                    free fa6
              #                    free fa7
              #                     656  untrack A_73_0 
              #                    occupy fa6 with A_73_0
              #                    release fa6 with A_73_0
              #                     299  temp_94_ret_of_my_fabs_78_0 =  Call f32 my_fabs_0(temp_93_arithop_78_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_77_ret_of_simpson_75_0
              #                    store to temp_77_ret_of_simpson_75_0 in mem offset legal
    fsw     fa0,48(sp)
              #                    release fa0 with temp_77_ret_of_simpson_75_0
              #                    occupy fa2 with eps_73_0
              #                    store to eps_73_0 in mem offset legal
    fsw     fa2,76(sp)
              #                    release fa2 with eps_73_0
              #                    occupy fa3 with temp_91_arithop_78_0
              #                    store to temp_91_arithop_78_0 in mem offset legal
    fsw     fa3,20(sp)
              #                    release fa3 with temp_91_arithop_78_0
              #                    occupy fa4 with temp_76_ret_of_simpson_75_0
              #                    store to temp_76_ret_of_simpson_75_0 in mem offset legal
    fsw     fa4,52(sp)
              #                    release fa4 with temp_76_ret_of_simpson_75_0
              #                    occupy fa5 with temp_92_arithop_78_0
              #                    store to temp_92_arithop_78_0 in mem offset legal
    fsw     fa5,16(sp)
              #                    release fa5 with temp_92_arithop_78_0
              #                    occupy fa7 with temp_93_arithop_78_0
              #                    store to temp_93_arithop_78_0 in mem offset legal
    fsw     fa7,12(sp)
              #                    release fa7 with temp_93_arithop_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_93_arithop_78_0_0
              #                    load from temp_93_arithop_78_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    my_fabs
              #                     301  temp_95_cmp_78_0 = fcmp f32 Ole temp_94_ret_of_my_fabs_78_0, temp_91_arithop_78_0 
              #                    occupy fa0 with temp_94_ret_of_my_fabs_78_0
              #                    occupy fa1 with temp_91_arithop_78_0
              #                    load from temp_91_arithop_78_0 in mem


    flw     fa1,20(sp)
              #                    occupy a0 with temp_95_cmp_78_0
    fle.s   a0,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a0
              #                     657  untrack temp_94_ret_of_my_fabs_78_0 
              #                    occupy fa0 with temp_94_ret_of_my_fabs_78_0
              #                    release fa0 with temp_94_ret_of_my_fabs_78_0
              #                     655  untrack temp_91_arithop_78_0 
              #                    occupy fa1 with temp_91_arithop_78_0
              #                    release fa1 with temp_91_arithop_78_0
              #                     304  br i1 temp_95_cmp_78_0, label branch_true_79, label branch_false_79 
              #                    occupy a0 with temp_95_cmp_78_0
              #                    free a0
              #                    occupy a0 with temp_95_cmp_78_0
    bnez    a0, .branch_true_79
              #                    free a0
    j       .branch_false_79
              #                    regtab     a0:Freed { symidx: temp_95_cmp_78_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     302  label branch_true_79: 
.branch_true_79:
              #                     669  untrack temp_76_ret_of_simpson_75_0 
              #                     668  untrack a_73_0 
              #                     667  untrack temp_79_arithop_75_0 
              #                     666  untrack temp_80_ret_of_asr5_75_0 
              #                     665  untrack temp_83_ret_of_asr5_75_0 
              #                     664  untrack temp_75_arithop_75_0 
              #                     663  untrack temp_84_arithop_75_0 
              #                     662  untrack flag_73_0 
              #                     661  untrack temp_77_ret_of_simpson_75_0 
              #                     660  untrack b_73_0 
              #                     659  untrack eps_73_0 
              #                     658  untrack temp_95_cmp_78_0 
              #                    occupy a0 with temp_95_cmp_78_0
              #                    release a0 with temp_95_cmp_78_0
              #                     280  (nop) 
              #                     282  (nop) 
              #                     284  (nop) 
              #                     286  temp_88_arithop_78_0 = Div f32 temp_93_arithop_78_0, 15.0_0 
              #                    occupy fa0 with temp_93_arithop_78_0
              #                    load from temp_93_arithop_78_0 in mem


    flw     fa0,12(sp)
              #                    occupy fa1 with 15.0_0
              #                    occupy a0 with _anonymous_of_15.0_0_0
    li      a0, 1097859072
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_88_arithop_78_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     677  untrack temp_93_arithop_78_0 
              #                    occupy fa0 with temp_93_arithop_78_0
              #                    release fa0 with temp_93_arithop_78_0
              #                     288  temp_89_arithop_78_0 = Add f32 temp_92_arithop_78_0, temp_88_arithop_78_0 
              #                    occupy fa0 with temp_92_arithop_78_0
              #                    load from temp_92_arithop_78_0 in mem


    flw     fa0,16(sp)
              #                    occupy fa2 with temp_88_arithop_78_0
              #                    occupy fa3 with temp_89_arithop_78_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     676  untrack temp_92_arithop_78_0 
              #                    occupy fa0 with temp_92_arithop_78_0
              #                    release fa0 with temp_92_arithop_78_0
              #                     675  untrack temp_88_arithop_78_0 
              #                    occupy fa2 with temp_88_arithop_78_0
              #                    release fa2 with temp_88_arithop_78_0
              #                     289  ret temp_89_arithop_78_0 
              #                    load from ra_asr5_0 in mem
    ld      ra,96(sp)
              #                    load from s0_asr5_0 in mem
    ld      s0,88(sp)
              #                    occupy fa3 with temp_89_arithop_78_0
              #                    store to temp_89_arithop_78_0 in mem offset legal
    fsw     fa3,24(sp)
              #                    release fa3 with temp_89_arithop_78_0
              #                    occupy fa0 with temp_89_arithop_78_0
              #                    load from temp_89_arithop_78_0 in mem


    flw     fa0,24(sp)
    addi    sp,sp,104
              #                    free fa0
    ret
              #                    regtab     a0:Freed { symidx: temp_95_cmp_78_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     303  label branch_false_79: 
.branch_false_79:
              #                     674  untrack temp_88_arithop_78_0 
              #                     673  untrack temp_92_arithop_78_0 
              #                     672  untrack temp_89_arithop_78_0 
              #                     671  untrack temp_95_cmp_78_0 
              #                    occupy a0 with temp_95_cmp_78_0
              #                    release a0 with temp_95_cmp_78_0
              #                     670  untrack temp_93_arithop_78_0 
              #                          jump label: L17_0 
    j       .L17_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L17_0: 
.L17_0:
              #                     264  (nop) 
              #                     266  temp_79_arithop_75_0 = Div f32 eps_73_0, 2._0 
              #                    occupy fa0 with eps_73_0
              #                    load from eps_73_0 in mem


    flw     fa0,76(sp)
              #                    occupy fa1 with 2._0
              #                    occupy a0 with _anonymous_of_2._0_0
    li      a0, 1073741824
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_79_arithop_75_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     685  untrack eps_73_0 
              #                    occupy fa0 with eps_73_0
              #                    release fa0 with eps_73_0
              #                     268  temp_80_ret_of_asr5_75_0 =  Call f32 asr5_0(a_73_0, temp_75_arithop_75_0, temp_79_arithop_75_0, temp_76_ret_of_simpson_75_0, flag_73_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_79_arithop_75_0
              #                    store to temp_79_arithop_75_0 in mem offset legal
    fsw     fa2,44(sp)
              #                    release fa2 with temp_79_arithop_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_73_0_0
              #                    load from a_73_0 in mem


    flw     fa0,84(sp)
              #                    occupy fa1 with _anonymous_of_temp_75_arithop_75_0_0
              #                    load from temp_75_arithop_75_0 in mem


    flw     fa1,56(sp)
              #                    occupy fa2 with _anonymous_of_temp_79_arithop_75_0_0
              #                    load from temp_79_arithop_75_0 in mem


    flw     fa2,44(sp)
              #                    occupy fa3 with _anonymous_of_temp_76_ret_of_simpson_75_0_0
              #                    load from temp_76_ret_of_simpson_75_0 in mem


    flw     fa3,52(sp)
              #                    occupy a0 with _anonymous_of_flag_73_0_0
              #                    load from flag_73_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    asr5
              #                     680  untrack temp_76_ret_of_simpson_75_0 
              #                     679  untrack a_73_0 
              #                     270  (nop) 
              #                     272  (nop) 
              #                     274  temp_83_ret_of_asr5_75_0 =  Call f32 asr5_0(temp_75_arithop_75_0, b_73_0, temp_79_arithop_75_0, temp_77_ret_of_simpson_75_0, flag_73_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_80_ret_of_asr5_75_0
              #                    store to temp_80_ret_of_asr5_75_0 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with temp_80_ret_of_asr5_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_75_arithop_75_0_0
              #                    load from temp_75_arithop_75_0 in mem


    flw     fa0,56(sp)
              #                    occupy fa1 with _anonymous_of_b_73_0_0
              #                    load from b_73_0 in mem


    flw     fa1,80(sp)
              #                    occupy fa2 with _anonymous_of_temp_79_arithop_75_0_0
              #                    load from temp_79_arithop_75_0 in mem


    flw     fa2,44(sp)
              #                    occupy fa3 with _anonymous_of_temp_77_ret_of_simpson_75_0_0
              #                    load from temp_77_ret_of_simpson_75_0 in mem


    flw     fa3,48(sp)
              #                    occupy a0 with _anonymous_of_flag_73_0_0
              #                    load from flag_73_0 in mem


    lw      a0,68(sp)
              #                    arg load ended


    call    asr5
              #                     687  untrack flag_73_0 
              #                     686  untrack temp_75_arithop_75_0 
              #                     684  untrack temp_77_ret_of_simpson_75_0 
              #                     682  untrack b_73_0 
              #                     678  untrack temp_79_arithop_75_0 
              #                     276  temp_84_arithop_75_0 = Add f32 temp_80_ret_of_asr5_75_0, temp_83_ret_of_asr5_75_0 
              #                    occupy fa1 with temp_80_ret_of_asr5_75_0
              #                    load from temp_80_ret_of_asr5_75_0 in mem


    flw     fa1,40(sp)
              #                    occupy fa0 with temp_83_ret_of_asr5_75_0
              #                    occupy fa2 with temp_84_arithop_75_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     683  untrack temp_83_ret_of_asr5_75_0 
              #                    occupy fa0 with temp_83_ret_of_asr5_75_0
              #                    release fa0 with temp_83_ret_of_asr5_75_0
              #                     681  untrack temp_80_ret_of_asr5_75_0 
              #                    occupy fa1 with temp_80_ret_of_asr5_75_0
              #                    release fa1 with temp_80_ret_of_asr5_75_0
              #                     277  ret temp_84_arithop_75_0 
              #                    load from ra_asr5_0 in mem
    ld      ra,96(sp)
              #                    load from s0_asr5_0 in mem
    ld      s0,88(sp)
              #                    occupy fa2 with temp_84_arithop_75_0
              #                    store to temp_84_arithop_75_0 in mem offset legal
    fsw     fa2,32(sp)
              #                    release fa2 with temp_84_arithop_75_0
              #                    occupy fa0 with temp_84_arithop_75_0
              #                    load from temp_84_arithop_75_0 in mem


    flw     fa0,32(sp)
    addi    sp,sp,104
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     26   Define asr4_0 "a_82_0,b_82_0,eps_82_0,flag_82_0," -> asr4_ret_0 
    .globl asr4
    .type asr4,@function
asr4:
              #                    mem layout:|ra_asr4:8 at 32|s0_asr4:8 at 24|a _s82 _i0:4 at 20|b _s82 _i0:4 at 16|eps _s82 _i0:4 at 12|flag _s82 _i0:4 at 8|temp_96_ret_of_simpson _s84 _i0:4 at 4|temp_97_ret_of_asr5 _s84 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_asr4_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_asr4_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     307  alloc f32 [temp_96_ret_of_simpson_84] 
              #                     309  alloc f32 [temp_97_ret_of_asr5_84] 
              #                    regtab     a0:Freed { symidx: flag_82_0, tracked: true } |     fa0:Freed { symidx: a_82_0, tracked: true } |     fa1:Freed { symidx: b_82_0, tracked: true } |     fa2:Freed { symidx: eps_82_0, tracked: true } |  released_gpr_count:18,released_fpr_count:21
              #                          label L14_0: 
.L14_0:
              #                     308  temp_96_ret_of_simpson_84_0 =  Call f32 simpson_0(a_82_0, b_82_0, flag_82_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with flag_82_0
              #                    store to flag_82_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with flag_82_0
              #                    occupy fa0 with a_82_0
              #                    store to a_82_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with a_82_0
              #                    occupy fa1 with b_82_0
              #                    store to b_82_0 in mem offset legal
    fsw     fa1,16(sp)
              #                    release fa1 with b_82_0
              #                    occupy fa2 with eps_82_0
              #                    store to eps_82_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with eps_82_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_82_0_0
              #                    load from a_82_0 in mem


    flw     fa0,20(sp)
              #                    occupy fa1 with _anonymous_of_b_82_0_0
              #                    load from b_82_0 in mem


    flw     fa1,16(sp)
              #                    occupy a0 with _anonymous_of_flag_82_0_0
              #                    load from flag_82_0 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    simpson
              #                     310  temp_97_ret_of_asr5_84_0 =  Call f32 asr5_0(a_82_0, b_82_0, eps_82_0, temp_96_ret_of_simpson_84_0, flag_82_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_96_ret_of_simpson_84_0
              #                    store to temp_96_ret_of_simpson_84_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_96_ret_of_simpson_84_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_82_0_0
              #                    load from a_82_0 in mem


    flw     fa0,20(sp)
              #                    occupy fa1 with _anonymous_of_b_82_0_0
              #                    load from b_82_0 in mem


    flw     fa1,16(sp)
              #                    occupy fa2 with _anonymous_of_eps_82_0_0
              #                    load from eps_82_0 in mem


    flw     fa2,12(sp)
              #                    occupy fa3 with _anonymous_of_temp_96_ret_of_simpson_84_0_0
              #                    load from temp_96_ret_of_simpson_84_0 in mem


    flw     fa3,4(sp)
              #                    occupy a0 with _anonymous_of_flag_82_0_0
              #                    load from flag_82_0 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    asr5
              #                     692  untrack flag_82_0 
              #                     691  untrack b_82_0 
              #                     690  untrack temp_96_ret_of_simpson_84_0 
              #                     689  untrack eps_82_0 
              #                     688  untrack a_82_0 
              #                     311  ret temp_97_ret_of_asr5_84_0 
              #                    load from ra_asr4_0 in mem
    ld      ra,32(sp)
              #                    load from s0_asr4_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_97_ret_of_asr5_84_0
              #                    store to temp_97_ret_of_asr5_84_0 in mem offset legal
    fsw     fa0,0(sp)
              #                    release fa0 with temp_97_ret_of_asr5_84_0
              #                    occupy fa0 with temp_97_ret_of_asr5_84_0
              #                    load from temp_97_ret_of_asr5_84_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     27   Define eee_0 "x_86_0," -> eee_ret_0 
    .globl eee
    .type eee,@function
eee:
              #                    mem layout:|ra_eee:8 at 80|s0_eee:8 at 72|x _s86 _i0:4 at 68|temp_99_arithop _s88 _i0:4 at 64|temp_100_arithop _s88 _i0:4 at 60|temp_102_arithop _s88 _i0:4 at 56|temp_103_arithop _s88 _i0:4 at 52|temp_104_ret_of_my_pow _s88 _i0:4 at 48|temp_106_arithop _s88 _i0:4 at 44|temp_107_arithop _s88 _i0:4 at 40|temp_108_ret_of_my_pow _s88 _i0:4 at 36|temp_110_arithop _s88 _i0:4 at 32|temp_111_arithop _s88 _i0:4 at 28|temp_112_ret_of_my_pow _s88 _i0:4 at 24|temp_114_arithop _s88 _i0:4 at 20|temp_115_arithop _s88 _i0:4 at 16|temp_117_arithop _s91 _i0:4 at 12|temp_118_ret_of_eee _s91 _i0:4 at 8|temp_119_arithop _s91 _i0:4 at 4|temp_120_cmp _s89 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-88
              #                    store to ra_eee_0 in mem offset legal
    sd      ra,80(sp)
              #                    store to s0_eee_0 in mem offset legal
    sd      s0,72(sp)
    addi    s0,sp,88
              #                     314  alloc f32 [temp_98__88] 
              #                     316  alloc f32 [temp_99_arithop_88] 
              #                     318  alloc f32 [temp_100_arithop_88] 
              #                     320  alloc f32 [temp_101__88] 
              #                     322  alloc f32 [temp_102_arithop_88] 
              #                     324  alloc f32 [temp_103_arithop_88] 
              #                     326  alloc f32 [temp_104_ret_of_my_pow_88] 
              #                     328  alloc f32 [temp_105__88] 
              #                     330  alloc f32 [temp_106_arithop_88] 
              #                     332  alloc f32 [temp_107_arithop_88] 
              #                     334  alloc f32 [temp_108_ret_of_my_pow_88] 
              #                     336  alloc f32 [temp_109__88] 
              #                     338  alloc f32 [temp_110_arithop_88] 
              #                     340  alloc f32 [temp_111_arithop_88] 
              #                     342  alloc f32 [temp_112_ret_of_my_pow_88] 
              #                     344  alloc f32 [temp_113__88] 
              #                     346  alloc f32 [temp_114_arithop_88] 
              #                     348  alloc f32 [temp_115_arithop_88] 
              #                     351  alloc f32 [temp_116__91] 
              #                     353  alloc f32 [temp_117_arithop_91] 
              #                     355  alloc f32 [temp_118_ret_of_eee_91] 
              #                     358  alloc f32 [ee_91] 
              #                     360  alloc f32 [temp_119_arithop_91] 
              #                     363  alloc i1 [temp_120_cmp_89] 
              #                    regtab     fa0:Freed { symidx: x_86_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L12_0: 
.L12_0:
              #                     364  temp_120_cmp_89_0 = fcmp f32 Ogt x_86_0, 1e-3_0 
              #                    occupy fa0 with x_86_0
              #                    occupy fa1 with 1e-3_0
              #                    occupy a0 with _anonymous_of_1e-3_0_0
    li      a0, 981668463
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_120_cmp_89_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     367  br i1 temp_120_cmp_89_0, label branch_true_90, label branch_false_90 
              #                    occupy a1 with temp_120_cmp_89_0
              #                    free a1
              #                    occupy a1 with temp_120_cmp_89_0
    bnez    a1, .branch_true_90
              #                    free a1
    j       .branch_false_90
              #                    regtab     a1:Freed { symidx: temp_120_cmp_89_0, tracked: true } |     fa0:Freed { symidx: x_86_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     365  label branch_true_90: 
.branch_true_90:
              #                     706  untrack temp_104_ret_of_my_pow_88_0 
              #                     705  untrack temp_107_arithop_88_0 
              #                     704  untrack temp_114_arithop_88_0 
              #                     703  untrack temp_99_arithop_88_0 
              #                     702  untrack temp_108_ret_of_my_pow_88_0 
              #                     701  untrack temp_100_arithop_88_0 
              #                     700  untrack temp_111_arithop_88_0 
              #                     699  untrack temp_115_arithop_88_0 
              #                     698  untrack temp_112_ret_of_my_pow_88_0 
              #                     697  untrack temp_110_arithop_88_0 
              #                     696  untrack temp_103_arithop_88_0 
              #                     695  untrack temp_106_arithop_88_0 
              #                     694  untrack temp_120_cmp_89_0 
              #                    occupy a1 with temp_120_cmp_89_0
              #                    release a1 with temp_120_cmp_89_0
              #                     693  untrack temp_102_arithop_88_0 
              #                     352  (nop) 
              #                     354  temp_117_arithop_91_0 = Div f32 x_86_0, 2._0 
              #                    occupy fa0 with x_86_0
              #                    occupy fa1 with 2._0
              #                    occupy a0 with _anonymous_of_2._0_0
    li      a0, 1073741824
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_117_arithop_91_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     713  untrack x_86_0 
              #                    occupy fa0 with x_86_0
              #                    release fa0 with x_86_0
              #                     356  temp_118_ret_of_eee_91_0 =  Call f32 eee_0(temp_117_arithop_91_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_117_arithop_91_0
              #                    store to temp_117_arithop_91_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_117_arithop_91_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_117_arithop_91_0_0
              #                    load from temp_117_arithop_91_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    eee
              #                     711  untrack temp_117_arithop_91_0 
              #                     357  (nop) 
              #                     361  temp_119_arithop_91_0 = Mul f32 temp_118_ret_of_eee_91_0, temp_118_ret_of_eee_91_0 
              #                    occupy fa0 with temp_118_ret_of_eee_91_0
              #                    occupy fa0 with temp_118_ret_of_eee_91_0
              #                    occupy fa1 with temp_119_arithop_91_0
    fmul.s  fa1,fa0,fa0
              #                    free fa0
              #                    free fa0
              #                    free fa1
              #                     712  untrack temp_118_ret_of_eee_91_0 
              #                    occupy fa0 with temp_118_ret_of_eee_91_0
              #                    release fa0 with temp_118_ret_of_eee_91_0
              #                     362  ret temp_119_arithop_91_0 
              #                    load from ra_eee_0 in mem
    ld      ra,80(sp)
              #                    load from s0_eee_0 in mem
    ld      s0,72(sp)
              #                    occupy fa1 with temp_119_arithop_91_0
              #                    store to temp_119_arithop_91_0 in mem offset legal
    fsw     fa1,4(sp)
              #                    release fa1 with temp_119_arithop_91_0
              #                    occupy fa0 with temp_119_arithop_91_0
              #                    load from temp_119_arithop_91_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,88
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_120_cmp_89_0, tracked: true } |     fa0:Freed { symidx: x_86_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     366  label branch_false_90: 
.branch_false_90:
              #                     710  untrack temp_119_arithop_91_0 
              #                     709  untrack temp_117_arithop_91_0 
              #                     708  untrack temp_118_ret_of_eee_91_0 
              #                     707  untrack temp_120_cmp_89_0 
              #                    occupy a1 with temp_120_cmp_89_0
              #                    release a1 with temp_120_cmp_89_0
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     fa0:Freed { symidx: x_86_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L13_0: 
.L13_0:
              #                     315  (nop) 
              #                     317  temp_99_arithop_88_0 = Add f32 1._0, x_86_0 
              #                    occupy fa1 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_86_0
              #                    occupy fa2 with temp_99_arithop_88_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     319  temp_100_arithop_88_0 = Mul f32 x_86_0, x_86_0 
              #                    occupy fa0 with x_86_0
              #                    occupy fa0 with x_86_0
              #                    occupy fa3 with temp_100_arithop_88_0
    fmul.s  fa3,fa0,fa0
              #                    free fa0
              #                    free fa0
              #                    free fa3
              #                     321  (nop) 
              #                     323  temp_102_arithop_88_0 = Div f32 temp_100_arithop_88_0, 2._0 
              #                    occupy fa3 with temp_100_arithop_88_0
              #                    occupy fa4 with 2._0
              #                    occupy a1 with _anonymous_of_2._0_0
    li      a1, 1073741824
    fmv.w.x fa4, a1
              #                    free a1
              #                    occupy fa5 with temp_102_arithop_88_0
    fdiv.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     723  untrack temp_100_arithop_88_0 
              #                    occupy fa3 with temp_100_arithop_88_0
              #                    release fa3 with temp_100_arithop_88_0
              #                     325  temp_103_arithop_88_0 = Add f32 temp_99_arithop_88_0, temp_102_arithop_88_0 
              #                    occupy fa2 with temp_99_arithop_88_0
              #                    occupy fa5 with temp_102_arithop_88_0
              #                    occupy fa3 with temp_103_arithop_88_0
    fadd.s  fa3,fa2,fa5
              #                    free fa2
              #                    free fa5
              #                    free fa3
              #                     722  untrack temp_102_arithop_88_0 
              #                    occupy fa5 with temp_102_arithop_88_0
              #                    release fa5 with temp_102_arithop_88_0
              #                     717  untrack temp_99_arithop_88_0 
              #                    occupy fa2 with temp_99_arithop_88_0
              #                    release fa2 with temp_99_arithop_88_0
              #                     327  temp_104_ret_of_my_pow_88_0 =  Call f32 my_pow_0(x_86_0, 3_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_86_0
              #                    store to x_86_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with x_86_0
              #                    occupy fa3 with temp_103_arithop_88_0
              #                    store to temp_103_arithop_88_0 in mem offset legal
    fsw     fa3,52(sp)
              #                    release fa3 with temp_103_arithop_88_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_86_0_0
              #                    load from x_86_0 in mem


    flw     fa0,68(sp)
              #                    occupy a0 with _anonymous_of_3_0_0
    li      a0, 3
              #                    arg load ended


    call    my_pow
              #                     329  (nop) 
              #                     331  temp_106_arithop_88_0 = Div f32 temp_104_ret_of_my_pow_88_0, 6._0 
              #                    occupy fa0 with temp_104_ret_of_my_pow_88_0
              #                    occupy fa1 with 6._0
              #                    occupy a0 with _anonymous_of_6._0_0
    li      a0, 1086324736
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_106_arithop_88_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     721  untrack temp_104_ret_of_my_pow_88_0 
              #                    occupy fa0 with temp_104_ret_of_my_pow_88_0
              #                    release fa0 with temp_104_ret_of_my_pow_88_0
              #                     333  temp_107_arithop_88_0 = Add f32 temp_103_arithop_88_0, temp_106_arithop_88_0 
              #                    occupy fa0 with temp_103_arithop_88_0
              #                    load from temp_103_arithop_88_0 in mem


    flw     fa0,52(sp)
              #                    occupy fa2 with temp_106_arithop_88_0
              #                    occupy fa3 with temp_107_arithop_88_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     716  untrack temp_103_arithop_88_0 
              #                    occupy fa0 with temp_103_arithop_88_0
              #                    release fa0 with temp_103_arithop_88_0
              #                     714  untrack temp_106_arithop_88_0 
              #                    occupy fa2 with temp_106_arithop_88_0
              #                    release fa2 with temp_106_arithop_88_0
              #                     335  temp_108_ret_of_my_pow_88_0 =  Call f32 my_pow_0(x_86_0, 4_0) 
              #                    saved register dumping to mem
              #                    occupy fa3 with temp_107_arithop_88_0
              #                    store to temp_107_arithop_88_0 in mem offset legal
    fsw     fa3,40(sp)
              #                    release fa3 with temp_107_arithop_88_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_86_0_0
              #                    load from x_86_0 in mem


    flw     fa0,68(sp)
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    my_pow
              #                     337  (nop) 
              #                     339  temp_110_arithop_88_0 = Div f32 temp_108_ret_of_my_pow_88_0, 24._0 
              #                    occupy fa0 with temp_108_ret_of_my_pow_88_0
              #                    occupy fa1 with 24._0
              #                    occupy a0 with _anonymous_of_24._0_0
    li      a0, 1103101952
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_110_arithop_88_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     725  untrack temp_108_ret_of_my_pow_88_0 
              #                    occupy fa0 with temp_108_ret_of_my_pow_88_0
              #                    release fa0 with temp_108_ret_of_my_pow_88_0
              #                     341  temp_111_arithop_88_0 = Add f32 temp_107_arithop_88_0, temp_110_arithop_88_0 
              #                    occupy fa0 with temp_107_arithop_88_0
              #                    load from temp_107_arithop_88_0 in mem


    flw     fa0,40(sp)
              #                    occupy fa2 with temp_110_arithop_88_0
              #                    occupy fa3 with temp_111_arithop_88_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     720  untrack temp_110_arithop_88_0 
              #                    occupy fa2 with temp_110_arithop_88_0
              #                    release fa2 with temp_110_arithop_88_0
              #                     719  untrack temp_107_arithop_88_0 
              #                    occupy fa0 with temp_107_arithop_88_0
              #                    release fa0 with temp_107_arithop_88_0
              #                     343  temp_112_ret_of_my_pow_88_0 =  Call f32 my_pow_0(x_86_0, 5_0) 
              #                    saved register dumping to mem
              #                    occupy fa3 with temp_111_arithop_88_0
              #                    store to temp_111_arithop_88_0 in mem offset legal
    fsw     fa3,28(sp)
              #                    release fa3 with temp_111_arithop_88_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_86_0_0
              #                    load from x_86_0 in mem


    flw     fa0,68(sp)
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    my_pow
              #                     724  untrack x_86_0 
              #                     345  (nop) 
              #                     347  temp_114_arithop_88_0 = Div f32 temp_112_ret_of_my_pow_88_0, 120._0 
              #                    occupy fa0 with temp_112_ret_of_my_pow_88_0
              #                    occupy fa1 with 120._0
              #                    occupy a0 with _anonymous_of_120._0_0
    li      a0, 1123024896
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_114_arithop_88_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     718  untrack temp_112_ret_of_my_pow_88_0 
              #                    occupy fa0 with temp_112_ret_of_my_pow_88_0
              #                    release fa0 with temp_112_ret_of_my_pow_88_0
              #                     349  temp_115_arithop_88_0 = Add f32 temp_111_arithop_88_0, temp_114_arithop_88_0 
              #                    occupy fa0 with temp_111_arithop_88_0
              #                    load from temp_111_arithop_88_0 in mem


    flw     fa0,28(sp)
              #                    occupy fa2 with temp_114_arithop_88_0
              #                    occupy fa3 with temp_115_arithop_88_0
    fadd.s  fa3,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa3
              #                     726  untrack temp_114_arithop_88_0 
              #                    occupy fa2 with temp_114_arithop_88_0
              #                    release fa2 with temp_114_arithop_88_0
              #                     715  untrack temp_111_arithop_88_0 
              #                    occupy fa0 with temp_111_arithop_88_0
              #                    release fa0 with temp_111_arithop_88_0
              #                     350  ret temp_115_arithop_88_0 
              #                    load from ra_eee_0 in mem
    ld      ra,80(sp)
              #                    load from s0_eee_0 in mem
    ld      s0,72(sp)
              #                    occupy fa3 with temp_115_arithop_88_0
              #                    store to temp_115_arithop_88_0 in mem offset legal
    fsw     fa3,16(sp)
              #                    release fa3 with temp_115_arithop_88_0
              #                    occupy fa0 with temp_115_arithop_88_0
              #                    load from temp_115_arithop_88_0 in mem


    flw     fa0,16(sp)
    addi    sp,sp,88
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     28   Define my_exp_0 "x_95_0," -> my_exp_ret_0 
    .globl my_exp
    .type my_exp,@function
my_exp:
              #                    mem layout:|ra_my_exp:8 at 56|s0_my_exp:8 at 48|x _s95 _i0:4 at 44|temp_121_ _s97 _i0:4 at 40|temp_122_ _s97 _i0:4 at 36|temp_123_arithop _s97 _i0:4 at 32|temp_124_ret_of_my_pow _s97 _i0:4 at 28|temp_125_ret_of_eee _s97 _i0:4 at 24|temp_126_arithop _s97 _i0:4 at 20|temp_127_ _s98 _i0:4 at 16|temp_128_ret_of_my_exp _s98 _i0:4 at 12|temp_130_arithop _s98 _i0:4 at 8|temp_132_cmp _s98 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-64
              #                    store to ra_my_exp_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_my_exp_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     369  alloc i32 [temp_121__97] 
              #                     372  alloc i32 [n_97] 
              #                     373  alloc f32 [temp_122__97] 
              #                     375  alloc f32 [temp_123_arithop_97] 
              #                     378  alloc f32 [temp_124_ret_of_my_pow_97] 
              #                     381  alloc f32 [e1_97] 
              #                     382  alloc f32 [temp_125_ret_of_eee_97] 
              #                     385  alloc f32 [e2_97] 
              #                     387  alloc f32 [temp_126_arithop_97] 
              #                     391  alloc f32 [temp_127__98] 
              #                     393  alloc f32 [temp_128_ret_of_my_exp_98] 
              #                     395  alloc f32 [temp_129__98] 
              #                     397  alloc f32 [temp_130_arithop_98] 
              #                     400  alloc f32 [temp_131__98] 
              #                     402  alloc i1 [temp_132_cmp_98] 
              #                    regtab     fa0:Freed { symidx: x_95_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L10_0: 
.L10_0:
              #                     401  (nop) 
              #                     403  temp_132_cmp_98_0 = fcmp f32 Olt x_95_0, 0._0 
              #                    occupy fa0 with x_95_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_132_cmp_98_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     406  br i1 temp_132_cmp_98_0, label branch_true_99, label branch_false_99 
              #                    occupy a1 with temp_132_cmp_98_0
              #                    free a1
              #                    occupy a1 with temp_132_cmp_98_0
    bnez    a1, .branch_true_99
              #                    free a1
    j       .branch_false_99
              #                    regtab     a1:Freed { symidx: temp_132_cmp_98_0, tracked: true } |     fa0:Freed { symidx: x_95_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     404  label branch_true_99: 
.branch_true_99:
              #                     733  untrack temp_121__97_0 
              #                     732  untrack temp_122__97_0 
              #                     731  untrack temp_124_ret_of_my_pow_97_0 
              #                     730  untrack temp_126_arithop_97_0 
              #                     729  untrack temp_132_cmp_98_0 
              #                    occupy a1 with temp_132_cmp_98_0
              #                    release a1 with temp_132_cmp_98_0
              #                     728  untrack temp_125_ret_of_eee_97_0 
              #                     727  untrack temp_123_arithop_97_0 
              #                     392  temp_127__98_0 = Sub f32 0.0_0, x_95_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_95_0
              #                    occupy fa2 with temp_127__98_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     739  untrack x_95_0 
              #                    occupy fa0 with x_95_0
              #                    release fa0 with x_95_0
              #                     394  temp_128_ret_of_my_exp_98_0 =  Call f32 my_exp_0(temp_127__98_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_127__98_0
              #                    store to temp_127__98_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_127__98_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_127__98_0_0
              #                    load from temp_127__98_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_exp
              #                     738  untrack temp_127__98_0 
              #                     396  (nop) 
              #                     398  temp_130_arithop_98_0 = Div f32 1._0, temp_128_ret_of_my_exp_98_0 
              #                    occupy fa1 with 1._0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_128_ret_of_my_exp_98_0
              #                    occupy fa2 with temp_130_arithop_98_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     740  untrack temp_128_ret_of_my_exp_98_0 
              #                    occupy fa0 with temp_128_ret_of_my_exp_98_0
              #                    release fa0 with temp_128_ret_of_my_exp_98_0
              #                     399  ret temp_130_arithop_98_0 
              #                    load from ra_my_exp_0 in mem
    ld      ra,56(sp)
              #                    load from s0_my_exp_0 in mem
    ld      s0,48(sp)
              #                    occupy fa2 with temp_130_arithop_98_0
              #                    store to temp_130_arithop_98_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_130_arithop_98_0
              #                    occupy fa0 with temp_130_arithop_98_0
              #                    load from temp_130_arithop_98_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,64
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_132_cmp_98_0, tracked: true } |     fa0:Freed { symidx: x_95_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     405  label branch_false_99: 
.branch_false_99:
              #                     737  untrack temp_127__98_0 
              #                     736  untrack temp_130_arithop_98_0 
              #                     735  untrack temp_128_ret_of_my_exp_98_0 
              #                     734  untrack temp_132_cmp_98_0 
              #                    occupy a1 with temp_132_cmp_98_0
              #                    release a1 with temp_132_cmp_98_0
              #                          jump label: L11_0 
    j       .L11_0
              #                    regtab     fa0:Freed { symidx: x_95_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L11_0: 
.L11_0:
              #                     370  temp_121__97_0 = fptosi f32 x_95_0 to i32 
              #                    occupy fa0 with x_95_0
              #                    occupy a0 with temp_121__97_0
    fcvt.w.s a0,fa0,rtz
              #                    free fa0
              #                    free a0
              #                     371  (nop) 
              #                     374  temp_122__97_0 = sitofp i32 temp_121__97_0 to f32 
              #                    occupy a0 with temp_121__97_0
              #                    occupy fa1 with temp_122__97_0
    fcvt.s.w fa1,a0,rtz
              #                    free a0
              #                    free fa1
              #                     376  temp_123_arithop_97_0 = Sub f32 x_95_0, temp_122__97_0 
              #                    occupy fa0 with x_95_0
              #                    occupy fa1 with temp_122__97_0
              #                    occupy fa2 with temp_123_arithop_97_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     745  untrack x_95_0 
              #                    occupy fa0 with x_95_0
              #                    release fa0 with x_95_0
              #                     741  untrack temp_122__97_0 
              #                    occupy fa1 with temp_122__97_0
              #                    release fa1 with temp_122__97_0
              #                     377  (nop) 
              #                     379  temp_124_ret_of_my_pow_97_0 =  Call f32 my_pow_0(2.7182817_0, temp_121__97_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_121__97_0
              #                    store to temp_121__97_0 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_121__97_0
              #                    occupy fa2 with temp_123_arithop_97_0
              #                    store to temp_123_arithop_97_0 in mem offset legal
    fsw     fa2,32(sp)
              #                    release fa2 with temp_123_arithop_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_2.7182817_0_0
              #                    occupy a0 with _anonymous_of_2.7182817_0_0
    li      a0, 1076754516
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy a0 with _anonymous_of_temp_121__97_0_0
              #                    load from temp_121__97_0 in mem


    lw      a0,40(sp)
              #                    arg load ended


    call    my_pow
              #                     744  untrack temp_121__97_0 
              #                     380  (nop) 
              #                     383  temp_125_ret_of_eee_97_0 =  Call f32 eee_0(temp_123_arithop_97_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_124_ret_of_my_pow_97_0
              #                    store to temp_124_ret_of_my_pow_97_0 in mem offset legal
    fsw     fa0,28(sp)
              #                    release fa0 with temp_124_ret_of_my_pow_97_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_123_arithop_97_0_0
              #                    load from temp_123_arithop_97_0 in mem


    flw     fa0,32(sp)
              #                    arg load ended


    call    eee
              #                     743  untrack temp_123_arithop_97_0 
              #                     384  (nop) 
              #                     388  temp_126_arithop_97_0 = Mul f32 temp_124_ret_of_my_pow_97_0, temp_125_ret_of_eee_97_0 
              #                    occupy fa1 with temp_124_ret_of_my_pow_97_0
              #                    load from temp_124_ret_of_my_pow_97_0 in mem


    flw     fa1,28(sp)
              #                    occupy fa0 with temp_125_ret_of_eee_97_0
              #                    occupy fa2 with temp_126_arithop_97_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     746  untrack temp_124_ret_of_my_pow_97_0 
              #                    occupy fa1 with temp_124_ret_of_my_pow_97_0
              #                    release fa1 with temp_124_ret_of_my_pow_97_0
              #                     742  untrack temp_125_ret_of_eee_97_0 
              #                    occupy fa0 with temp_125_ret_of_eee_97_0
              #                    release fa0 with temp_125_ret_of_eee_97_0
              #                     389  ret temp_126_arithop_97_0 
              #                    load from ra_my_exp_0 in mem
    ld      ra,56(sp)
              #                    load from s0_my_exp_0 in mem
    ld      s0,48(sp)
              #                    occupy fa2 with temp_126_arithop_97_0
              #                    store to temp_126_arithop_97_0 in mem offset legal
    fsw     fa2,20(sp)
              #                    release fa2 with temp_126_arithop_97_0
              #                    occupy fa0 with temp_126_arithop_97_0
              #                    load from temp_126_arithop_97_0 in mem


    flw     fa0,20(sp)
    addi    sp,sp,64
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     29   Define my_ln_0 "x_106_0," -> my_ln_ret_0 
    .globl my_ln
    .type my_ln,@function
my_ln:
              #                    mem layout:|ra_my_ln:8 at 16|s0_my_ln:8 at 8|x _s106 _i0:4 at 4|temp_134_ret_of_asr4 _s108 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_my_ln_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_my_ln_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     409  alloc f32 [temp_133__108] 
              #                     411  alloc f32 [temp_134_ret_of_asr4_108] 
              #                    regtab     fa0:Freed { symidx: x_106_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L9_0: 
.L9_0:
              #                     410  (nop) 
              #                     412  temp_134_ret_of_asr4_108_0 =  Call f32 asr4_0(1._0, x_106_0, 1e-8_0, 1_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_106_0
              #                    store to x_106_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with x_106_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_1._0_0
              #                    occupy a0 with _anonymous_of_1._0_0
    li      a0, 1065353216
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with _anonymous_of_x_106_0_0
              #                    load from x_106_0 in mem


    flw     fa1,4(sp)
              #                    occupy fa2 with _anonymous_of_1e-8_0_0
              #                    occupy a1 with _anonymous_of_1e-8_0_0
    li      a1, 841731191
    fmv.w.x fa2, a1
              #                    free a1
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    asr4
              #                     747  untrack x_106_0 
              #                     413  ret temp_134_ret_of_asr4_108_0 
              #                    load from ra_my_ln_0 in mem
    ld      ra,16(sp)
              #                    load from s0_my_ln_0 in mem
    ld      s0,8(sp)
              #                    occupy fa0 with temp_134_ret_of_asr4_108_0
              #                    store to temp_134_ret_of_asr4_108_0 in mem offset legal
    fsw     fa0,0(sp)
              #                    release fa0 with temp_134_ret_of_asr4_108_0
              #                    occupy fa0 with temp_134_ret_of_asr4_108_0
              #                    load from temp_134_ret_of_asr4_108_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,24
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     30   Define my_log_0 "a_110_0,N_110_0," -> my_log_ret_0 
    .globl my_log
    .type my_log,@function
my_log:
              #                    mem layout:|ra_my_log:8 at 32|s0_my_log:8 at 24|a _s110 _i0:4 at 20|N _s110 _i0:4 at 16|temp_135_ret_of_my_ln _s112 _i0:4 at 12|temp_136_ret_of_my_ln _s112 _i0:4 at 8|temp_137_arithop _s112 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_my_log_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_my_log_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     416  alloc f32 [temp_135_ret_of_my_ln_112] 
              #                     418  alloc f32 [temp_136_ret_of_my_ln_112] 
              #                     420  alloc f32 [temp_137_arithop_112] 
              #                    regtab     fa0:Freed { symidx: a_110_0, tracked: true } |     fa1:Freed { symidx: N_110_0, tracked: true } |  released_gpr_count:19,released_fpr_count:22
              #                          label L8_0: 
.L8_0:
              #                     417  temp_135_ret_of_my_ln_112_0 =  Call f32 my_ln_0(N_110_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with a_110_0
              #                    store to a_110_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with a_110_0
              #                    occupy fa1 with N_110_0
              #                    store to N_110_0 in mem offset legal
    fsw     fa1,16(sp)
              #                    release fa1 with N_110_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_N_110_0_0
              #                    load from N_110_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_ln
              #                     750  untrack N_110_0 
              #                     419  temp_136_ret_of_my_ln_112_0 =  Call f32 my_ln_0(a_110_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_135_ret_of_my_ln_112_0
              #                    store to temp_135_ret_of_my_ln_112_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_135_ret_of_my_ln_112_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_110_0_0
              #                    load from a_110_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_ln
              #                     748  untrack a_110_0 
              #                     421  temp_137_arithop_112_0 = Div f32 temp_135_ret_of_my_ln_112_0, temp_136_ret_of_my_ln_112_0 
              #                    occupy fa1 with temp_135_ret_of_my_ln_112_0
              #                    load from temp_135_ret_of_my_ln_112_0 in mem


    flw     fa1,12(sp)
              #                    occupy fa0 with temp_136_ret_of_my_ln_112_0
              #                    occupy fa2 with temp_137_arithop_112_0
    fdiv.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     751  untrack temp_135_ret_of_my_ln_112_0 
              #                    occupy fa1 with temp_135_ret_of_my_ln_112_0
              #                    release fa1 with temp_135_ret_of_my_ln_112_0
              #                     749  untrack temp_136_ret_of_my_ln_112_0 
              #                    occupy fa0 with temp_136_ret_of_my_ln_112_0
              #                    release fa0 with temp_136_ret_of_my_ln_112_0
              #                     422  ret temp_137_arithop_112_0 
              #                    load from ra_my_log_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_log_0 in mem
    ld      s0,24(sp)
              #                    occupy fa2 with temp_137_arithop_112_0
              #                    store to temp_137_arithop_112_0 in mem offset legal
    fsw     fa2,4(sp)
              #                    release fa2 with temp_137_arithop_112_0
              #                    occupy fa0 with temp_137_arithop_112_0
              #                    load from temp_137_arithop_112_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     31   Define my_powf_0 "a_114_0,x_114_0," -> my_powf_ret_0 
    .globl my_powf
    .type my_powf,@function
my_powf:
              #                    mem layout:|ra_my_powf:8 at 32|s0_my_powf:8 at 24|a _s114 _i0:4 at 20|x _s114 _i0:4 at 16|temp_138_ret_of_my_ln _s116 _i0:4 at 12|temp_139_arithop _s116 _i0:4 at 8|temp_140_ret_of_my_exp _s116 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_my_powf_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_my_powf_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     425  alloc f32 [temp_138_ret_of_my_ln_116] 
              #                     427  alloc f32 [temp_139_arithop_116] 
              #                     429  alloc f32 [temp_140_ret_of_my_exp_116] 
              #                    regtab     fa0:Freed { symidx: a_114_0, tracked: true } |     fa1:Freed { symidx: x_114_0, tracked: true } |  released_gpr_count:19,released_fpr_count:22
              #                          label L7_0: 
.L7_0:
              #                     426  temp_138_ret_of_my_ln_116_0 =  Call f32 my_ln_0(a_114_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with a_114_0
              #                    store to a_114_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with a_114_0
              #                    occupy fa1 with x_114_0
              #                    store to x_114_0 in mem offset legal
    fsw     fa1,16(sp)
              #                    release fa1 with x_114_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_a_114_0_0
              #                    load from a_114_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_ln
              #                     754  untrack a_114_0 
              #                     428  temp_139_arithop_116_0 = Mul f32 x_114_0, temp_138_ret_of_my_ln_116_0 
              #                    occupy fa1 with x_114_0
              #                    load from x_114_0 in mem


    flw     fa1,16(sp)
              #                    occupy fa0 with temp_138_ret_of_my_ln_116_0
              #                    occupy fa2 with temp_139_arithop_116_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     755  untrack temp_138_ret_of_my_ln_116_0 
              #                    occupy fa0 with temp_138_ret_of_my_ln_116_0
              #                    release fa0 with temp_138_ret_of_my_ln_116_0
              #                     752  untrack x_114_0 
              #                    occupy fa1 with x_114_0
              #                    release fa1 with x_114_0
              #                     430  temp_140_ret_of_my_exp_116_0 =  Call f32 my_exp_0(temp_139_arithop_116_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_139_arithop_116_0
              #                    store to temp_139_arithop_116_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_139_arithop_116_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_139_arithop_116_0_0
              #                    load from temp_139_arithop_116_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    my_exp
              #                     753  untrack temp_139_arithop_116_0 
              #                     431  ret temp_140_ret_of_my_exp_116_0 
              #                    load from ra_my_powf_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_powf_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_140_ret_of_my_exp_116_0
              #                    store to temp_140_ret_of_my_exp_116_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_140_ret_of_my_exp_116_0
              #                    occupy fa0 with temp_140_ret_of_my_exp_116_0
              #                    load from temp_140_ret_of_my_exp_116_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 64|s0_main:8 at 56|temp_141_ret_of_getint _s119 _i0:4 at 52|num _s119 _i1:4 at 48|temp_142_ret_of_getfloat _s123 _i0:4 at 44|temp_143_ret_of_getfloat _s123 _i0:4 at 40|temp_144_ret_of_my_fabs _s123 _i0:4 at 36|temp_145_ret_of_my_pow _s123 _i0:4 at 32|temp_146_ret_of_my_sqrt _s123 _i0:4 at 28|temp_147_ret_of_my_exp _s123 _i0:4 at 24|temp_148_arithop _s123 _i0:4 at 20|temp_149_ret_of_my_powf _s149 _i0:4 at 16|temp_150_ret_of_my_log _s142 _i0:4 at 12|temp_151_ret_of_my_ln _s135 _i0:4 at 8|temp_152_ _s3963 _i0:1 at 7|temp_154_cmp _s133 _i0:1 at 6|temp_158_cmp _s140 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-72
              #                    store to ra_main_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     433  alloc i32 [temp_141_ret_of_getint_119] 
              #                     436  alloc i32 [num_119] 
              #                     439  alloc f32 [temp_142_ret_of_getfloat_123] 
              #                     442  alloc f32 [x_123] 
              #                     443  alloc f32 [temp_143_ret_of_getfloat_123] 
              #                     446  alloc f32 [y_123] 
              #                     447  alloc f32 [temp_144_ret_of_my_fabs_123] 
              #                     451  alloc f32 [temp_145_ret_of_my_pow_123] 
              #                     455  alloc f32 [temp_146_ret_of_my_sqrt_123] 
              #                     459  alloc f32 [temp_147_ret_of_my_exp_123] 
              #                     469  alloc i32 [temp_148_arithop_123] 
              #                     472  alloc f32 [temp_149_ret_of_my_powf_149] 
              #                     475  alloc f32 [temp_150_ret_of_my_log_142] 
              #                     478  alloc f32 [temp_151_ret_of_my_ln_135] 
              #                     481  alloc i1 [temp_152__3963] 
              #                     489  alloc f32 [temp_153__133] 
              #                     491  alloc i1 [temp_154_cmp_133] 
              #                     497  alloc f32 [temp_155__140] 
              #                     499  alloc i1 [temp_156_cmp_140] 
              #                     501  alloc f32 [temp_157__140] 
              #                     503  alloc i1 [temp_158_cmp_140] 
              #                     512  alloc f32 [temp_159__147] 
              #                     514  alloc i1 [temp_160_cmp_147] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     434  temp_141_ret_of_getint_119_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     435  (nop) 
              #                     540  num_119_1 = i32 temp_141_ret_of_getint_119_0 
              #                    occupy a0 with temp_141_ret_of_getint_119_0
              #                    occupy a1 with num_119_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     756  untrack temp_141_ret_of_getint_119_0 
              #                    occupy a0 with temp_141_ret_of_getint_119_0
              #                    release a0 with temp_141_ret_of_getint_119_0
              #                          jump label: while.head_122 
    j       .while.head_122
              #                    regtab     a1:Freed { symidx: num_119_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     483  label while.head_122: 
.while.head_122:
              #                     482  temp_152__3963_0 = icmp i32 Ne num_119_1, 0_0 
              #                    occupy a1 with num_119_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_152__3963_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     486  br i1 temp_152__3963_0, label while.body_122, label while.exit_122 
              #                    occupy a2 with temp_152__3963_0
              #                    free a2
              #                    occupy a2 with temp_152__3963_0
    bnez    a2, .while.body_122
              #                    free a2
    j       .while.exit_122
              #                    regtab     a1:Freed { symidx: num_119_1, tracked: true } |     a2:Freed { symidx: temp_152__3963_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     484  label while.body_122: 
.while.body_122:
              #                     440  temp_142_ret_of_getfloat_123_0 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with num_119_1
              #                    store to num_119_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with num_119_1
              #                    occupy a2 with temp_152__3963_0
              #                    store to temp_152__3963_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_152__3963_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                     441  (nop) 
              #                     444  temp_143_ret_of_getfloat_123_0 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_142_ret_of_getfloat_123_0
              #                    store to temp_142_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,44(sp)
              #                    release fa0 with temp_142_ret_of_getfloat_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                     445  (nop) 
              #                     448  temp_144_ret_of_my_fabs_123_0 =  Call f32 my_fabs_0(temp_142_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_143_ret_of_getfloat_123_0
              #                    store to temp_143_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with temp_143_ret_of_getfloat_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    arg load ended


    call    my_fabs
              #                     449   Call void putfloat_0(temp_144_ret_of_my_fabs_123_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_144_ret_of_my_fabs_123_0
              #                    store to temp_144_ret_of_my_fabs_123_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_144_ret_of_my_fabs_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_144_ret_of_my_fabs_123_0_0
              #                    load from temp_144_ret_of_my_fabs_123_0 in mem


    flw     fa0,36(sp)
              #                    arg load ended


    call    putfloat
              #                     450   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     452  temp_145_ret_of_my_pow_123_0 =  Call f32 my_pow_0(temp_142_ret_of_getfloat_123_0, 2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    my_pow
              #                     453   Call void putfloat_0(temp_145_ret_of_my_pow_123_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_145_ret_of_my_pow_123_0
              #                    store to temp_145_ret_of_my_pow_123_0 in mem offset legal
    fsw     fa0,32(sp)
              #                    release fa0 with temp_145_ret_of_my_pow_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_145_ret_of_my_pow_123_0_0
              #                    load from temp_145_ret_of_my_pow_123_0 in mem


    flw     fa0,32(sp)
              #                    arg load ended


    call    putfloat
              #                     454   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     456  temp_146_ret_of_my_sqrt_123_0 =  Call f32 my_sqrt_0(temp_142_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    arg load ended


    call    my_sqrt
              #                     457   Call void putfloat_0(temp_146_ret_of_my_sqrt_123_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_146_ret_of_my_sqrt_123_0
              #                    store to temp_146_ret_of_my_sqrt_123_0 in mem offset legal
    fsw     fa0,28(sp)
              #                    release fa0 with temp_146_ret_of_my_sqrt_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_146_ret_of_my_sqrt_123_0_0
              #                    load from temp_146_ret_of_my_sqrt_123_0 in mem


    flw     fa0,28(sp)
              #                    arg load ended


    call    putfloat
              #                     458   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     460  temp_147_ret_of_my_exp_123_0 =  Call f32 my_exp_0(temp_142_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    arg load ended


    call    my_exp
              #                     461   Call void putfloat_0(temp_147_ret_of_my_exp_123_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_147_ret_of_my_exp_123_0
              #                    store to temp_147_ret_of_my_exp_123_0 in mem offset legal
    fsw     fa0,24(sp)
              #                    release fa0 with temp_147_ret_of_my_exp_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_147_ret_of_my_exp_123_0_0
              #                    load from temp_147_ret_of_my_exp_123_0 in mem


    flw     fa0,24(sp)
              #                    arg load ended


    call    putfloat
              #                     462   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     490  (nop) 
              #                     492  temp_154_cmp_133_0 = fcmp f32 Ogt temp_142_ret_of_getfloat_123_0, 0._0 
              #                    occupy fa0 with temp_142_ret_of_getfloat_123_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_154_cmp_133_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     495  br i1 temp_154_cmp_133_0, label branch_true_134, label branch_false_134 
              #                    occupy a1 with temp_154_cmp_133_0
              #                    free a1
              #                    occupy a1 with temp_154_cmp_133_0
    bnez    a1, .branch_true_134
              #                    free a1
    j       .branch_false_134
              #                    regtab     a1:Freed { symidx: temp_154_cmp_133_0, tracked: true } |     fa0:Freed { symidx: temp_142_ret_of_getfloat_123_0, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     493  label branch_true_134: 
.branch_true_134:
              #                     762  untrack temp_152__3963_0 
              #                     761  untrack temp_147_ret_of_my_exp_123_0 
              #                     760  untrack temp_145_ret_of_my_pow_123_0 
              #                     759  untrack temp_146_ret_of_my_sqrt_123_0 
              #                     758  untrack temp_144_ret_of_my_fabs_123_0 
              #                     479  temp_151_ret_of_my_ln_135_0 =  Call f32 my_ln_0(temp_142_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_154_cmp_133_0
              #                    store to temp_154_cmp_133_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_154_cmp_133_0
              #                    occupy fa0 with temp_142_ret_of_getfloat_123_0
              #                    store to temp_142_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,44(sp)
              #                    release fa0 with temp_142_ret_of_getfloat_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    arg load ended


    call    my_ln
              #                     480   Call void putfloat_0(temp_151_ret_of_my_ln_135_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_151_ret_of_my_ln_135_0
              #                    store to temp_151_ret_of_my_ln_135_0 in mem offset legal
    fsw     fa0,8(sp)
              #                    release fa0 with temp_151_ret_of_my_ln_135_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_151_ret_of_my_ln_135_0_0
              #                    load from temp_151_ret_of_my_ln_135_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    putfloat
              #                     763  untrack temp_151_ret_of_my_ln_135_0 
              #                          jump label: gather_82 
    j       .gather_82
              #                    regtab  released_gpr_count:17,released_fpr_count:23
              #                     496  label gather_82: 
.gather_82:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:17,released_fpr_count:23
              #                          label L2_0: 
.L2_0:
              #                     464   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:17,released_fpr_count:23
              #                          label L3_0: 
.L3_0:
              #                     498  (nop) 
              #                     500  (nop) 
              #                     510  br i1 temp_154_cmp_133_0, label branch_short_circuit_p_true_804, label branch_short_circuit_c_false_804 
              #                    occupy a0 with temp_154_cmp_133_0
              #                    load from temp_154_cmp_133_0 in mem


    lb      a0,6(sp)
              #                    free a0
              #                    occupy a0 with temp_154_cmp_133_0
    bnez    a0, .branch_short_circuit_p_true_804
              #                    free a0
    j       .branch_short_circuit_c_false_804
              #                    regtab     a0:Freed { symidx: temp_154_cmp_133_0, tracked: true } |  released_gpr_count:16,released_fpr_count:23
              #                     507  label branch_short_circuit_p_true_804: 
.branch_short_circuit_p_true_804:
              #                     502  (nop) 
              #                     504  temp_158_cmp_140_0 = fcmp f32 Ogt temp_143_ret_of_getfloat_123_0, 0._0 
              #                    occupy fa0 with temp_143_ret_of_getfloat_123_0
              #                    load from temp_143_ret_of_getfloat_123_0 in mem


    flw     fa0,40(sp)
              #                    occupy fa1 with 0._0
              #                    occupy a1 with _anonymous_of_0._0_0
    li      a1, 0
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy a2 with temp_158_cmp_140_0
    flt.s   a2,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a2
              #                     509  br i1 temp_158_cmp_140_0, label branch_short_circuit_c_true_804, label branch_short_circuit_c_false_804 
              #                    occupy a2 with temp_158_cmp_140_0
              #                    free a2
              #                    occupy a2 with temp_158_cmp_140_0
    bnez    a2, .branch_short_circuit_c_true_804
              #                    free a2
              #                    occupy fa0 with temp_143_ret_of_getfloat_123_0
              #                    store to temp_143_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with temp_143_ret_of_getfloat_123_0
              #                    occupy a2 with temp_158_cmp_140_0
              #                    store to temp_158_cmp_140_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_158_cmp_140_0
    j       .branch_short_circuit_c_false_804
              #                    regtab     a0:Freed { symidx: temp_154_cmp_133_0, tracked: true } |     a2:Freed { symidx: temp_158_cmp_140_0, tracked: true } |     fa0:Freed { symidx: temp_143_ret_of_getfloat_123_0, tracked: true } |  released_gpr_count:14,released_fpr_count:21
              #                     505  label branch_short_circuit_c_true_804: 
.branch_short_circuit_c_true_804:
              #                     476  temp_150_ret_of_my_log_142_0 =  Call f32 my_log_0(temp_142_ret_of_getfloat_123_0, temp_143_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_154_cmp_133_0
              #                    store to temp_154_cmp_133_0 in mem offset legal
    sb      a0,6(sp)
              #                    release a0 with temp_154_cmp_133_0
              #                    occupy a2 with temp_158_cmp_140_0
              #                    store to temp_158_cmp_140_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_158_cmp_140_0
              #                    occupy fa0 with temp_143_ret_of_getfloat_123_0
              #                    store to temp_143_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with temp_143_ret_of_getfloat_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    occupy fa1 with _anonymous_of_temp_143_ret_of_getfloat_123_0_0
              #                    load from temp_143_ret_of_getfloat_123_0 in mem


    flw     fa1,40(sp)
              #                    arg load ended


    call    my_log
              #                     477   Call void putfloat_0(temp_150_ret_of_my_log_142_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_150_ret_of_my_log_142_0
              #                    store to temp_150_ret_of_my_log_142_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_150_ret_of_my_log_142_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_150_ret_of_my_log_142_0_0
              #                    load from temp_150_ret_of_my_log_142_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    putfloat
              #                          jump label: gather_87 
    j       .gather_87
              #                    regtab  released_gpr_count:16,released_fpr_count:22
              #                     511  label gather_87: 
.gather_87:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:16,released_fpr_count:22
              #                          label L4_0: 
.L4_0:
              #                     466   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:16,released_fpr_count:22
              #                          label L5_0: 
.L5_0:
              #                     513  (nop) 
              #                     515  (nop) 
              #                     518  br i1 temp_154_cmp_133_0, label branch_true_148, label branch_false_148 
              #                    occupy a0 with temp_154_cmp_133_0
              #                    load from temp_154_cmp_133_0 in mem


    lb      a0,6(sp)
              #                    free a0
              #                    occupy a0 with temp_154_cmp_133_0
    bnez    a0, .branch_true_148
              #                    free a0
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: temp_154_cmp_133_0, tracked: true } |  released_gpr_count:15,released_fpr_count:22
              #                     516  label branch_true_148: 
.branch_true_148:
              #                     780  untrack temp_150_ret_of_my_log_142_0 
              #                     779  untrack temp_147_ret_of_my_exp_123_0 
              #                     778  untrack temp_146_ret_of_my_sqrt_123_0 
              #                     777  untrack temp_158_cmp_140_0 
              #                     776  untrack temp_144_ret_of_my_fabs_123_0 
              #                     775  untrack temp_152__3963_0 
              #                     774  untrack temp_151_ret_of_my_ln_135_0 
              #                     773  untrack temp_145_ret_of_my_pow_123_0 
              #                     772  untrack temp_154_cmp_133_0 
              #                    occupy a0 with temp_154_cmp_133_0
              #                    release a0 with temp_154_cmp_133_0
              #                     473  temp_149_ret_of_my_powf_149_0 =  Call f32 my_powf_0(temp_142_ret_of_getfloat_123_0, temp_143_ret_of_getfloat_123_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_142_ret_of_getfloat_123_0_0
              #                    load from temp_142_ret_of_getfloat_123_0 in mem


    flw     fa0,44(sp)
              #                    occupy fa1 with _anonymous_of_temp_143_ret_of_getfloat_123_0_0
              #                    load from temp_143_ret_of_getfloat_123_0 in mem


    flw     fa1,40(sp)
              #                    arg load ended


    call    my_powf
              #                     782  untrack temp_142_ret_of_getfloat_123_0 
              #                     781  untrack temp_143_ret_of_getfloat_123_0 
              #                     474   Call void putfloat_0(temp_149_ret_of_my_powf_149_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_149_ret_of_my_powf_149_0
              #                    store to temp_149_ret_of_my_powf_149_0 in mem offset legal
    fsw     fa0,16(sp)
              #                    release fa0 with temp_149_ret_of_my_powf_149_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_149_ret_of_my_powf_149_0_0
              #                    load from temp_149_ret_of_my_powf_149_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    putfloat
              #                     783  untrack temp_149_ret_of_my_powf_149_0 
              #                          jump label: gather_92 
    j       .gather_92
              #                    regtab  released_gpr_count:16,released_fpr_count:22
              #                     519  label gather_92: 
.gather_92:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab  released_gpr_count:16,released_fpr_count:22
              #                          label L6_0: 
.L6_0:
              #                     468   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     470  temp_148_arithop_123_0 = Sub i32 num_119_1, 1_0 
              #                    occupy a0 with num_119_1
              #                    load from num_119_1 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_148_arithop_123_0
              #                    regtab:    a0:Occupied { symidx: num_119_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_148_arithop_123_0, tracked: true, occupy_count: 1 } |  released_gpr_count:13,released_fpr_count:22


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     471  (nop) 
              #                     541  num_119_1 = i32 temp_148_arithop_123_0 
              #                    occupy a2 with temp_148_arithop_123_0
              #                    occupy a0 with num_119_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_122 
              #                    occupy a2 with temp_148_arithop_123_0
              #                    store to temp_148_arithop_123_0 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with temp_148_arithop_123_0
              #                    occupy a0 with num_119_1
              #                    store to num_119_1 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with num_119_1
              #                    occupy a1 with num_119_1
              #                    load from num_119_1 in mem


    lw      a1,48(sp)
    j       .while.head_122
              #                    regtab     a0:Freed { symidx: temp_154_cmp_133_0, tracked: true } |  released_gpr_count:15,released_fpr_count:22
              #                     517  label branch_false_148: 
.branch_false_148:
              #                     467   Call void putch_0(45_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_154_cmp_133_0
              #                    store to temp_154_cmp_133_0 in mem offset legal
    sb      a0,6(sp)
              #                    release a0 with temp_154_cmp_133_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    putch
              #                          jump label: gather_92 
    j       .gather_92
              #                    regtab     a0:Freed { symidx: temp_154_cmp_133_0, tracked: true } |  released_gpr_count:16,released_fpr_count:23
              #                     506  label branch_short_circuit_c_false_804: 
.branch_short_circuit_c_false_804:
              #                     791  untrack temp_151_ret_of_my_ln_135_0 
              #                     790  untrack temp_144_ret_of_my_fabs_123_0 
              #                     789  untrack temp_158_cmp_140_0 
              #                     788  untrack temp_147_ret_of_my_exp_123_0 
              #                     787  untrack temp_150_ret_of_my_log_142_0 
              #                     786  untrack temp_152__3963_0 
              #                     785  untrack temp_146_ret_of_my_sqrt_123_0 
              #                     784  untrack temp_145_ret_of_my_pow_123_0 
              #                     771  untrack temp_145_ret_of_my_pow_123_0 
              #                     770  untrack temp_144_ret_of_my_fabs_123_0 
              #                     769  untrack temp_150_ret_of_my_log_142_0 
              #                     768  untrack temp_147_ret_of_my_exp_123_0 
              #                     767  untrack temp_146_ret_of_my_sqrt_123_0 
              #                     766  untrack temp_158_cmp_140_0 
              #                     765  untrack temp_151_ret_of_my_ln_135_0 
              #                     764  untrack temp_152__3963_0 
              #                     465   Call void putch_0(45_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_154_cmp_133_0
              #                    store to temp_154_cmp_133_0 in mem offset legal
    sb      a0,6(sp)
              #                    release a0 with temp_154_cmp_133_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    putch
              #                          jump label: gather_87 
    j       .gather_87
              #                    regtab     a1:Freed { symidx: temp_154_cmp_133_0, tracked: true } |     fa0:Freed { symidx: temp_142_ret_of_getfloat_123_0, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     494  label branch_false_134: 
.branch_false_134:
              #                     463   Call void putch_0(45_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_154_cmp_133_0
              #                    store to temp_154_cmp_133_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_154_cmp_133_0
              #                    occupy fa0 with temp_142_ret_of_getfloat_123_0
              #                    store to temp_142_ret_of_getfloat_123_0 in mem offset legal
    fsw     fa0,44(sp)
              #                    release fa0 with temp_142_ret_of_getfloat_123_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_45_0_0
    li      a0, 45
              #                    arg load ended


    call    putch
              #                          jump label: gather_82 
    j       .gather_82
              #                    regtab     a1:Freed { symidx: num_119_1, tracked: true } |     a2:Freed { symidx: temp_152__3963_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     485  label while.exit_122: 
.while.exit_122:
              #                     757  untrack num_119_1 
              #                    occupy a1 with num_119_1
              #                    release a1 with num_119_1
              #                     438  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,64(sp)
              #                    load from s0_main_0 in mem
    ld      s0,56(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,72
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl e
              #                     17   global f32 e_0 
    .type e,@object
e:
    .word 1076754516
