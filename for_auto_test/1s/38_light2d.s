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
              #                     46   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L22_0: 
.L22_0:
              #                     60    Call void write_pgm_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    write_pgm
              #                     62   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     47   Define rand_0 "" -> rand_ret_0 
    .globl rand
    .type rand,@function
rand:
              #                    mem layout:|ra_rand:8 at 8|s0_rand:8 at 0
    addi    sp,sp,-16
              #                    store to ra_rand_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_rand_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L21_0: 
.L21_0:
              #                     66   ret 3_0 
              #                    load from ra_rand_0 in mem
    ld      ra,8(sp)
              #                    load from s0_rand_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 3_0
    li      a0, 3
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     48   Define my_fabs_0 "x_30_0," -> my_fabs_ret_0 
    .globl my_fabs
    .type my_fabs,@function
my_fabs:
              #                    mem layout:|ra_my_fabs:8 at 24|s0_my_fabs:8 at 16|x _s30 _i0:4 at 12|temp_0_ _s32 _i0:4 at 8|temp_2_cmp _s33 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_my_fabs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_fabs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     70   alloc f32 [temp_0__32] 
              #                     75   alloc f32 [temp_1__33] 
              #                     77   alloc i1 [temp_2_cmp_33] 
              #                    regtab     fa0:Freed { symidx: x_30_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L19_0: 
.L19_0:
              #                     76   (nop) 
              #                     78   temp_2_cmp_33_0 = fcmp f32 Ogt x_30_0, 0._0 
              #                    occupy fa0 with x_30_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_2_cmp_33_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     81   br i1 temp_2_cmp_33_0, label branch_true_34, label branch_false_34 
              #                    occupy a1 with temp_2_cmp_33_0
              #                    free a1
              #                    occupy a1 with temp_2_cmp_33_0
    bnez    a1, .branch_true_34
              #                    free a1
    j       .branch_false_34
              #                    regtab     a1:Freed { symidx: temp_2_cmp_33_0, tracked: true } |     fa0:Freed { symidx: x_30_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     79   label branch_true_34: 
.branch_true_34:
              #                     483  untrack temp_2_cmp_33_0 
              #                    occupy a1 with temp_2_cmp_33_0
              #                    release a1 with temp_2_cmp_33_0
              #                     482  untrack temp_0__32_0 
              #                     74   ret x_30_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with x_30_0
              #                    store to x_30_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_30_0
              #                    occupy fa0 with x_30_0
              #                    load from x_30_0 in mem


    flw     fa0,12(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_2_cmp_33_0, tracked: true } |     fa0:Freed { symidx: x_30_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     80   label branch_false_34: 
.branch_false_34:
              #                     484  untrack temp_2_cmp_33_0 
              #                    occupy a1 with temp_2_cmp_33_0
              #                    release a1 with temp_2_cmp_33_0
              #                          jump label: L20_0 
    j       .L20_0
              #                    regtab     fa0:Freed { symidx: x_30_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L20_0: 
.L20_0:
              #                     71   temp_0__32_0 = Sub f32 0.0_0, x_30_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_30_0
              #                    occupy fa2 with temp_0__32_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     485  untrack x_30_0 
              #                    occupy fa0 with x_30_0
              #                    release fa0 with x_30_0
              #                     72   ret temp_0__32_0 
              #                    load from ra_my_fabs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_fabs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa2 with temp_0__32_0
              #                    store to temp_0__32_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_0__32_0
              #                    occupy fa0 with temp_0__32_0
              #                    load from temp_0__32_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     49   Define my_sqrt_0 "x_37_0," -> my_sqrt_ret_0 
    .globl my_sqrt
    .type my_sqrt,@function
my_sqrt:
              #                    mem layout:|ra_my_sqrt:8 at 64|s0_my_sqrt:8 at 56|x _s37 _i0:4 at 52|temp_4_arithop _s39 _i0:4 at 48|temp_5_arithop _s39 _i0:4 at 44|temp_7_arithop _s39 _i0:4 at 40|temp_9_arithop _s39 _i0:4 at 36|temp_10_arithop _s39 _i0:4 at 32|temp_11_arithop _s39 _i0:4 at 28|t _s39 _i1:4 at 24|c _s39 _i1:4 at 20|temp_12_arithop _s44 _i0:4 at 16|temp_13_arithop _s44 _i0:4 at 12|temp_15_arithop _s44 _i0:4 at 8|temp_16_arithop _s44 _i0:4 at 4|temp_17_ _s1071 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-72
              #                    store to ra_my_sqrt_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_my_sqrt_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     83   alloc f32 [temp_3__39] 
              #                     85   alloc f32 [temp_4_arithop_39] 
              #                     87   alloc f32 [temp_5_arithop_39] 
              #                     89   alloc f32 [temp_6__39] 
              #                     91   alloc f32 [temp_7_arithop_39] 
              #                     93   alloc f32 [temp_8__39] 
              #                     95   alloc f32 [temp_9_arithop_39] 
              #                     97   alloc f32 [temp_10_arithop_39] 
              #                     99   alloc f32 [temp_11_arithop_39] 
              #                     102  alloc f32 [t_39] 
              #                     104  alloc i32 [c_39] 
              #                     107  alloc f32 [temp_12_arithop_44] 
              #                     109  alloc f32 [temp_13_arithop_44] 
              #                     111  alloc f32 [temp_14__44] 
              #                     113  alloc f32 [temp_15_arithop_44] 
              #                     116  alloc i32 [temp_16_arithop_44] 
              #                     119  alloc i1 [temp_17__1071] 
              #                    regtab     fa0:Freed { symidx: x_37_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L18_0: 
.L18_0:
              #                     84   (nop) 
              #                     86   temp_4_arithop_39_0 = Div f32 x_37_0, 8._0 
              #                    occupy fa0 with x_37_0
              #                    occupy fa1 with 8._0
              #                    occupy a0 with _anonymous_of_8._0_0
    li      a0, 1090519040
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_4_arithop_39_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     88   temp_5_arithop_39_0 = Add f32 temp_4_arithop_39_0, 0.5_0 
              #                    occupy fa2 with temp_4_arithop_39_0
              #                    occupy fa3 with 0.5_0
              #                    occupy a1 with _anonymous_of_0.5_0_0
    li      a1, 1056964608
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa4 with temp_5_arithop_39_0
    fadd.s  fa4,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa4
              #                     491  untrack temp_4_arithop_39_0 
              #                    occupy fa2 with temp_4_arithop_39_0
              #                    release fa2 with temp_4_arithop_39_0
              #                     90   (nop) 
              #                     92   temp_7_arithop_39_0 = Mul f32 2._0, x_37_0 
              #                    occupy fa2 with 2._0
              #                    occupy a2 with _anonymous_of_2._0_0
    li      a2, 1073741824
    fmv.w.x fa2, a2
              #                    free a2
              #                    occupy fa0 with x_37_0
              #                    occupy fa5 with temp_7_arithop_39_0
    fmul.s  fa5,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa5
              #                     94   (nop) 
              #                     96   temp_9_arithop_39_0 = Add f32 4._0, x_37_0 
              #                    occupy fa6 with 4._0
              #                    occupy a3 with _anonymous_of_4._0_0
    li      a3, 1082130432
    fmv.w.x fa6, a3
              #                    free a3
              #                    occupy fa0 with x_37_0
              #                    occupy fa7 with temp_9_arithop_39_0
    fadd.s  fa7,fa6,fa0
              #                    free fa6
              #                    free fa0
              #                    free fa7
              #                     98   temp_10_arithop_39_0 = Div f32 temp_7_arithop_39_0, temp_9_arithop_39_0 
              #                    occupy fa5 with temp_7_arithop_39_0
              #                    occupy fa7 with temp_9_arithop_39_0
              #                    occupy f8 with temp_10_arithop_39_0
    fdiv.s  f8,fa5,fa7
              #                    free fa5
              #                    free fa7
              #                    free f8
              #                     489  untrack temp_9_arithop_39_0 
              #                    occupy fa7 with temp_9_arithop_39_0
              #                    release fa7 with temp_9_arithop_39_0
              #                     487  untrack temp_7_arithop_39_0 
              #                    occupy fa5 with temp_7_arithop_39_0
              #                    release fa5 with temp_7_arithop_39_0
              #                     100  temp_11_arithop_39_0 = Add f32 temp_5_arithop_39_0, temp_10_arithop_39_0 
              #                    occupy fa4 with temp_5_arithop_39_0
              #                    occupy f8 with temp_10_arithop_39_0
              #                    occupy fa5 with temp_11_arithop_39_0
    fadd.s  fa5,fa4,f8
              #                    free fa4
              #                    free f8
              #                    free fa5
              #                     490  untrack temp_10_arithop_39_0 
              #                    occupy f8 with temp_10_arithop_39_0
              #                    release f8 with temp_10_arithop_39_0
              #                     488  untrack temp_5_arithop_39_0 
              #                    occupy fa4 with temp_5_arithop_39_0
              #                    release fa4 with temp_5_arithop_39_0
              #                     101  (nop) 
              #                     103  (nop) 
              #                     454  t_39_1 = f32 temp_11_arithop_39_0 
              #                    occupy fa5 with temp_11_arithop_39_0
              #                    occupy fa4 with t_39_1
    fmv.s   fa4, fa5
              #                    free fa5
              #                    free fa4
              #                     486  untrack temp_11_arithop_39_0 
              #                    occupy fa5 with temp_11_arithop_39_0
              #                    release fa5 with temp_11_arithop_39_0
              #                     455  c_39_1 = i32 10_0 
              #                    occupy a4 with c_39_1
    li      a4, 10
              #                    free a4
              #                          jump label: while.head_43 
    j       .while.head_43
              #                    regtab     a4:Freed { symidx: c_39_1, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |     fa4:Freed { symidx: t_39_1, tracked: true } |  released_gpr_count:14,released_fpr_count:18
              #                     121  label while.head_43: 
.while.head_43:
              #                     120  temp_17__1071_0 = icmp i32 Ne c_39_1, 0_0 
              #                    occupy a4 with c_39_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with temp_17__1071_0
    xor     a1,a4,a0
    snez    a1, a1
              #                    free a4
              #                    free a0
              #                    free a1
              #                     124  br i1 temp_17__1071_0, label while.body_43, label while.exit_43 
              #                    occupy a1 with temp_17__1071_0
              #                    free a1
              #                    occupy a1 with temp_17__1071_0
    bnez    a1, .while.body_43
              #                    free a1
    j       .while.exit_43
              #                    regtab     a1:Freed { symidx: temp_17__1071_0, tracked: true } |     a4:Freed { symidx: c_39_1, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |     fa4:Freed { symidx: t_39_1, tracked: true } |  released_gpr_count:12,released_fpr_count:18
              #                     122  label while.body_43: 
.while.body_43:
              #                     108  temp_12_arithop_44_0 = Div f32 x_37_0, t_39_1 
              #                    occupy fa0 with x_37_0
              #                    occupy fa4 with t_39_1
              #                    occupy fa1 with temp_12_arithop_44_0
    fdiv.s  fa1,fa0,fa4
              #                    free fa0
              #                    free fa4
              #                    free fa1
              #                     110  temp_13_arithop_44_0 = Add f32 t_39_1, temp_12_arithop_44_0 
              #                    occupy fa4 with t_39_1
              #                    occupy fa1 with temp_12_arithop_44_0
              #                    occupy fa2 with temp_13_arithop_44_0
    fadd.s  fa2,fa4,fa1
              #                    free fa4
              #                    free fa1
              #                    free fa2
              #                     112  (nop) 
              #                     114  temp_15_arithop_44_0 = Div f32 temp_13_arithop_44_0, 2._0 
              #                    occupy fa2 with temp_13_arithop_44_0
              #                    occupy fa3 with 2._0
              #                    occupy a0 with _anonymous_of_2._0_0
    li      a0, 1073741824
    fmv.w.x fa3, a0
              #                    free a0
              #                    occupy fa5 with temp_15_arithop_44_0
    fdiv.s  fa5,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa5
              #                     115  (nop) 
              #                     117  temp_16_arithop_44_0 = Sub i32 c_39_1, 1_0 
              #                    occupy a4 with c_39_1
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_16_arithop_44_0
              #                    regtab:    a0:Freed { symidx: _anonymous_of_2._0_0, tracked: false } |     a1:Freed { symidx: temp_17__1071_0, tracked: true } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_16_arithop_44_0, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: c_39_1, tracked: true, occupy_count: 1 } |     fa0:Freed { symidx: x_37_0, tracked: true } |     fa1:Freed { symidx: temp_12_arithop_44_0, tracked: true } |     fa2:Freed { symidx: temp_13_arithop_44_0, tracked: true } |     fa3:Freed { symidx: 2._0, tracked: false } |     fa4:Freed { symidx: t_39_1, tracked: true } |     fa5:Freed { symidx: temp_15_arithop_44_0, tracked: true } |  released_gpr_count:9,released_fpr_count:14


    subw    a3,a4,a2
              #                    free a4
              #                    free a2
              #                    free a3
              #                     118  (nop) 
              #                     456  t_39_1 = f32 temp_15_arithop_44_0 
              #                    occupy fa5 with temp_15_arithop_44_0
              #                    occupy fa4 with t_39_1
    fmv.s   fa4, fa5
              #                    free fa5
              #                    free fa4
              #                     457  c_39_1 = i32 temp_16_arithop_44_0 
              #                    occupy a3 with temp_16_arithop_44_0
              #                    occupy a4 with c_39_1
    mv      a4, a3
              #                    free a3
              #                    free a4
              #                          jump label: while.head_43 
              #                    occupy fa2 with temp_13_arithop_44_0
              #                    store to temp_13_arithop_44_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_13_arithop_44_0
              #                    occupy a3 with temp_16_arithop_44_0
              #                    store to temp_16_arithop_44_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_16_arithop_44_0
              #                    occupy fa1 with temp_12_arithop_44_0
              #                    store to temp_12_arithop_44_0 in mem offset legal
    fsw     fa1,16(sp)
              #                    release fa1 with temp_12_arithop_44_0
              #                    occupy a1 with temp_17__1071_0
              #                    store to temp_17__1071_0 in mem offset legal
    sb      a1,3(sp)
              #                    release a1 with temp_17__1071_0
              #                    occupy fa5 with temp_15_arithop_44_0
              #                    store to temp_15_arithop_44_0 in mem offset legal
    fsw     fa5,8(sp)
              #                    release fa5 with temp_15_arithop_44_0
    j       .while.head_43
              #                    regtab     a1:Freed { symidx: temp_17__1071_0, tracked: true } |     a4:Freed { symidx: c_39_1, tracked: true } |     fa0:Freed { symidx: x_37_0, tracked: true } |     fa4:Freed { symidx: t_39_1, tracked: true } |  released_gpr_count:12,released_fpr_count:18
              #                     123  label while.exit_43: 
.while.exit_43:
              #                     493  untrack x_37_0 
              #                    occupy fa0 with x_37_0
              #                    release fa0 with x_37_0
              #                     492  untrack c_39_1 
              #                    occupy a4 with c_39_1
              #                    release a4 with c_39_1
              #                     106  ret t_39_1 
              #                    load from ra_my_sqrt_0 in mem
    ld      ra,64(sp)
              #                    load from s0_my_sqrt_0 in mem
    ld      s0,56(sp)
              #                    occupy fa4 with t_39_1
              #                    store to t_39_1 in mem offset legal
    fsw     fa4,24(sp)
              #                    release fa4 with t_39_1
              #                    occupy fa0 with t_39_1
              #                    load from t_39_1 in mem


    flw     fa0,24(sp)
    addi    sp,sp,72
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     50   Define p_0 "x_48_0," -> p_ret_0 
    .globl p
    .type p,@function
p:
              #                    mem layout:|ra_p:8 at 32|s0_p:8 at 24|x _s48 _i0:4 at 20|temp_19_arithop _s50 _i0:4 at 16|temp_21_arithop _s50 _i0:4 at 12|temp_22_arithop _s50 _i0:4 at 8|temp_23_arithop _s50 _i0:4 at 4|temp_24_arithop _s50 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_p_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_p_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     127  alloc f32 [temp_18__50] 
              #                     129  alloc f32 [temp_19_arithop_50] 
              #                     131  alloc f32 [temp_20__50] 
              #                     133  alloc f32 [temp_21_arithop_50] 
              #                     135  alloc f32 [temp_22_arithop_50] 
              #                     137  alloc f32 [temp_23_arithop_50] 
              #                     139  alloc f32 [temp_24_arithop_50] 
              #                    regtab     fa0:Freed { symidx: x_48_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L17_0: 
.L17_0:
              #                     128  (nop) 
              #                     130  temp_19_arithop_50_0 = Mul f32 3._0, x_48_0 
              #                    occupy fa1 with 3._0
              #                    occupy a0 with _anonymous_of_3._0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_48_0
              #                    occupy fa2 with temp_19_arithop_50_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     132  (nop) 
              #                     134  temp_21_arithop_50_0 = Mul f32 4._0, x_48_0 
              #                    occupy fa3 with 4._0
              #                    occupy a1 with _anonymous_of_4._0_0
    li      a1, 1082130432
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa0 with x_48_0
              #                    occupy fa4 with temp_21_arithop_50_0
    fmul.s  fa4,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa4
              #                     136  temp_22_arithop_50_0 = Mul f32 temp_21_arithop_50_0, x_48_0 
              #                    occupy fa4 with temp_21_arithop_50_0
              #                    occupy fa0 with x_48_0
              #                    occupy fa5 with temp_22_arithop_50_0
    fmul.s  fa5,fa4,fa0
              #                    free fa4
              #                    free fa0
              #                    free fa5
              #                     494  untrack temp_21_arithop_50_0 
              #                    occupy fa4 with temp_21_arithop_50_0
              #                    release fa4 with temp_21_arithop_50_0
              #                     138  temp_23_arithop_50_0 = Mul f32 temp_22_arithop_50_0, x_48_0 
              #                    occupy fa5 with temp_22_arithop_50_0
              #                    occupy fa0 with x_48_0
              #                    occupy fa4 with temp_23_arithop_50_0
    fmul.s  fa4,fa5,fa0
              #                    free fa5
              #                    free fa0
              #                    free fa4
              #                     498  untrack temp_22_arithop_50_0 
              #                    occupy fa5 with temp_22_arithop_50_0
              #                    release fa5 with temp_22_arithop_50_0
              #                     495  untrack x_48_0 
              #                    occupy fa0 with x_48_0
              #                    release fa0 with x_48_0
              #                     140  temp_24_arithop_50_0 = Sub f32 temp_19_arithop_50_0, temp_23_arithop_50_0 
              #                    occupy fa2 with temp_19_arithop_50_0
              #                    occupy fa4 with temp_23_arithop_50_0
              #                    occupy fa0 with temp_24_arithop_50_0
    fsub.s  fa0,fa2,fa4
              #                    free fa2
              #                    free fa4
              #                    free fa0
              #                     497  untrack temp_19_arithop_50_0 
              #                    occupy fa2 with temp_19_arithop_50_0
              #                    release fa2 with temp_19_arithop_50_0
              #                     496  untrack temp_23_arithop_50_0 
              #                    occupy fa4 with temp_23_arithop_50_0
              #                    release fa4 with temp_23_arithop_50_0
              #                     141  ret temp_24_arithop_50_0 
              #                    load from ra_p_0 in mem
    ld      ra,32(sp)
              #                    load from s0_p_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_24_arithop_50_0
              #                    store to temp_24_arithop_50_0 in mem offset legal
    fsw     fa0,0(sp)
              #                    release fa0 with temp_24_arithop_50_0
              #                    occupy fa0 with temp_24_arithop_50_0
              #                    load from temp_24_arithop_50_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     51   Define my_sin_impl_0 "x_52_0," -> my_sin_impl_ret_0 
    .globl my_sin_impl
    .type my_sin_impl,@function
my_sin_impl:
              #                    mem layout:|ra_my_sin_impl:8 at 32|s0_my_sin_impl:8 at 24|x _s52 _i0:4 at 20|temp_25_arithop _s54 _i0:4 at 16|temp_26_ret_of_my_sin_impl _s54 _i0:4 at 12|temp_27_ret_of_p _s54 _i0:4 at 8|temp_28_ret_of_my_fabs _s55 _i0:4 at 4|temp_29_cmp _s55 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_my_sin_impl_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_my_sin_impl_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     144  alloc f32 [temp_25_arithop_54] 
              #                     146  alloc f32 [temp_26_ret_of_my_sin_impl_54] 
              #                     148  alloc f32 [temp_27_ret_of_p_54] 
              #                     153  alloc f32 [temp_28_ret_of_my_fabs_55] 
              #                     155  alloc i1 [temp_29_cmp_55] 
              #                    regtab     fa0:Freed { symidx: x_52_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L15_0: 
.L15_0:
              #                     154  temp_28_ret_of_my_fabs_55_0 =  Call f32 my_fabs_0(x_52_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_52_0
              #                    store to x_52_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with x_52_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_52_0_0
              #                    load from x_52_0 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    my_fabs
              #                     156  temp_29_cmp_55_0 = fcmp f32 Ole temp_28_ret_of_my_fabs_55_0, 0.000001_0 
              #                    occupy fa0 with temp_28_ret_of_my_fabs_55_0
              #                    occupy fa1 with 0.000001_0
              #                    occupy a0 with _anonymous_of_0.000001_0_0
    li      a0, 897988541
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_29_cmp_55_0
    fle.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     499  untrack temp_28_ret_of_my_fabs_55_0 
              #                    occupy fa0 with temp_28_ret_of_my_fabs_55_0
              #                    release fa0 with temp_28_ret_of_my_fabs_55_0
              #                     159  br i1 temp_29_cmp_55_0, label branch_true_56, label branch_false_56 
              #                    occupy a1 with temp_29_cmp_55_0
              #                    free a1
              #                    occupy a1 with temp_29_cmp_55_0
    bnez    a1, .branch_true_56
              #                    free a1
    j       .branch_false_56
              #                    regtab     a1:Freed { symidx: temp_29_cmp_55_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     157  label branch_true_56: 
.branch_true_56:
              #                     503  untrack temp_26_ret_of_my_sin_impl_54_0 
              #                     502  untrack temp_25_arithop_54_0 
              #                     501  untrack temp_27_ret_of_p_54_0 
              #                     500  untrack temp_29_cmp_55_0 
              #                    occupy a1 with temp_29_cmp_55_0
              #                    release a1 with temp_29_cmp_55_0
              #                     152  ret x_52_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with x_52_0
              #                    load from x_52_0 in mem


    flw     fa0,20(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_29_cmp_55_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     158  label branch_false_56: 
.branch_false_56:
              #                     504  untrack temp_29_cmp_55_0 
              #                    occupy a1 with temp_29_cmp_55_0
              #                    release a1 with temp_29_cmp_55_0
              #                          jump label: L16_0 
    j       .L16_0
              #                    regtab  released_gpr_count:18,released_fpr_count:23
              #                          label L16_0: 
.L16_0:
              #                     145  temp_25_arithop_54_0 = Div f32 x_52_0, 3.0_0 
              #                    occupy fa0 with x_52_0
              #                    load from x_52_0 in mem


    flw     fa0,20(sp)
              #                    occupy fa1 with 3.0_0
              #                    occupy a0 with _anonymous_of_3.0_0_0
    li      a0, 1077936128
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_25_arithop_54_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     506  untrack x_52_0 
              #                    occupy fa0 with x_52_0
              #                    release fa0 with x_52_0
              #                     147  temp_26_ret_of_my_sin_impl_54_0 =  Call f32 my_sin_impl_0(temp_25_arithop_54_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_25_arithop_54_0
              #                    store to temp_25_arithop_54_0 in mem offset legal
    fsw     fa2,16(sp)
              #                    release fa2 with temp_25_arithop_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_25_arithop_54_0_0
              #                    load from temp_25_arithop_54_0 in mem


    flw     fa0,16(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     505  untrack temp_25_arithop_54_0 
              #                     149  temp_27_ret_of_p_54_0 =  Call f32 p_0(temp_26_ret_of_my_sin_impl_54_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_26_ret_of_my_sin_impl_54_0
              #                    store to temp_26_ret_of_my_sin_impl_54_0 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with temp_26_ret_of_my_sin_impl_54_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_26_ret_of_my_sin_impl_54_0_0
              #                    load from temp_26_ret_of_my_sin_impl_54_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    p
              #                     507  untrack temp_26_ret_of_my_sin_impl_54_0 
              #                     150  ret temp_27_ret_of_p_54_0 
              #                    load from ra_my_sin_impl_0 in mem
    ld      ra,32(sp)
              #                    load from s0_my_sin_impl_0 in mem
    ld      s0,24(sp)
              #                    occupy fa0 with temp_27_ret_of_p_54_0
              #                    store to temp_27_ret_of_p_54_0 in mem offset legal
    fsw     fa0,8(sp)
              #                    release fa0 with temp_27_ret_of_p_54_0
              #                    occupy fa0 with temp_27_ret_of_p_54_0
              #                    load from temp_27_ret_of_p_54_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     52   Define my_sin_0 "x_59_0," -> my_sin_ret_0 
    .globl my_sin
    .type my_sin,@function
my_sin:
              #                    mem layout:|ra_my_sin:8 at 64|s0_my_sin:8 at 56|x _s59 _i0:4 at 52|x _s59 _i2:4 at 48|x _s59 _i4:4 at 44|x _s59 _i6:4 at 40|temp_30_ret_of_my_sin_impl _s61 _i0:4 at 36|temp_31_arithop _s70 _i0:4 at 32|temp_32_arithop _s67 _i0:4 at 28|temp_33_arithop _s64 _i0:4 at 24|temp_34_ _s64 _i0:4 at 20|temp_35_ _s64 _i0:4 at 16|temp_36_arithop _s64 _i0:4 at 12|temp_37_arithop _s64 _i0:4 at 8|temp_38_cmp _s62 _i0:1 at 7|temp_39_cmp _s62 _i0:1 at 6|temp_40_cmp _s67 _i0:1 at 5|temp_41_cmp _s70 _i0:1 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_my_sin_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_my_sin_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     162  alloc f32 [temp_30_ret_of_my_sin_impl_61] 
              #                     165  alloc f32 [temp_31_arithop_70] 
              #                     168  alloc f32 [temp_32_arithop_67] 
              #                     171  alloc f32 [temp_33_arithop_64] 
              #                     173  alloc i32 [temp_34__64] 
              #                     176  alloc i32 [xx_64] 
              #                     177  alloc f32 [temp_35__64] 
              #                     179  alloc f32 [temp_36_arithop_64] 
              #                     181  alloc f32 [temp_37_arithop_64] 
              #                     184  alloc i1 [temp_38_cmp_62] 
              #                     186  alloc i1 [temp_39_cmp_62] 
              #                     194  alloc i1 [temp_40_cmp_67] 
              #                     199  alloc i1 [temp_41_cmp_70] 
              #                    regtab     fa0:Freed { symidx: x_59_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L11_0: 
.L11_0:
              #                     185  temp_38_cmp_62_0 = fcmp f32 Ogt x_59_0, 6.2831855_0 
              #                    occupy fa0 with x_59_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_38_cmp_62_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     193  br i1 temp_38_cmp_62_0, label branch_short_circuit_c_true_372, label branch_short_circuit_p_false_372 
              #                    occupy a1 with temp_38_cmp_62_0
              #                    free a1
              #                    occupy a1 with temp_38_cmp_62_0
    bnez    a1, .branch_short_circuit_c_true_372
              #                    free a1
    j       .branch_short_circuit_p_false_372
              #                    regtab     a1:Freed { symidx: temp_38_cmp_62_0, tracked: true } |     fa0:Freed { symidx: x_59_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     188  label branch_short_circuit_c_true_372: 
.branch_short_circuit_c_true_372:
              #                     530  untrack temp_39_cmp_62_0 
              #                     509  untrack temp_38_cmp_62_0 
              #                    occupy a1 with temp_38_cmp_62_0
              #                    release a1 with temp_38_cmp_62_0
              #                     508  untrack temp_39_cmp_62_0 
              #                     172  temp_33_arithop_64_0 = Div f32 x_59_0, 6.2831855_0 
              #                    occupy fa0 with x_59_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_33_arithop_64_0
    fdiv.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     174  temp_34__64_0 = fptosi f32 temp_33_arithop_64_0 to i32 
              #                    occupy fa2 with temp_33_arithop_64_0
              #                    occupy a1 with temp_34__64_0
    fcvt.w.s a1,fa2,rtz
              #                    free fa2
              #                    free a1
              #                     516  untrack temp_33_arithop_64_0 
              #                    occupy fa2 with temp_33_arithop_64_0
              #                    release fa2 with temp_33_arithop_64_0
              #                     175  (nop) 
              #                     178  temp_35__64_0 = sitofp i32 temp_34__64_0 to f32 
              #                    occupy a1 with temp_34__64_0
              #                    occupy fa2 with temp_35__64_0
    fcvt.s.w fa2,a1,rtz
              #                    free a1
              #                    free fa2
              #                     511  untrack temp_34__64_0 
              #                    occupy a1 with temp_34__64_0
              #                    release a1 with temp_34__64_0
              #                     180  temp_36_arithop_64_0 = Mul f32 temp_35__64_0, 6.2831855_0 
              #                    occupy fa2 with temp_35__64_0
              #                    found literal reg Some(fa1) already exist with 6.2831855_0
              #                    occupy fa1 with 6.2831855_0
              #                    occupy fa3 with temp_36_arithop_64_0
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                     512  untrack temp_35__64_0 
              #                    occupy fa2 with temp_35__64_0
              #                    release fa2 with temp_35__64_0
              #                     182  temp_37_arithop_64_0 = Sub f32 x_59_0, temp_36_arithop_64_0 
              #                    occupy fa0 with x_59_0
              #                    occupy fa3 with temp_36_arithop_64_0
              #                    occupy fa2 with temp_37_arithop_64_0
    fsub.s  fa2,fa0,fa3
              #                    free fa0
              #                    free fa3
              #                    free fa2
              #                     514  untrack x_59_0 
              #                    occupy fa0 with x_59_0
              #                    release fa0 with x_59_0
              #                     513  untrack temp_36_arithop_64_0 
              #                    occupy fa3 with temp_36_arithop_64_0
              #                    release fa3 with temp_36_arithop_64_0
              #                     183  (nop) 
              #                     461  x_59_2 = f32 temp_37_arithop_64_0 
              #                    occupy fa2 with temp_37_arithop_64_0
              #                    occupy fa0 with x_59_2
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     515  untrack temp_37_arithop_64_0 
              #                    occupy fa2 with temp_37_arithop_64_0
              #                    release fa2 with temp_37_arithop_64_0
              #                          jump label: branch_short_circuit_c_false_372 
    j       .branch_short_circuit_c_false_372
              #                    regtab     fa0:Freed { symidx: x_59_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                     189  label branch_short_circuit_c_false_372: 
.branch_short_circuit_c_false_372:
              #                          jump label: L12_0 
    j       .L12_0
              #                    regtab     fa0:Freed { symidx: x_59_2, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                          label L12_0: 
.L12_0:
              #                     195  temp_40_cmp_67_0 = fcmp f32 Ogt x_59_2, 3.1415927_0 
              #                    occupy fa0 with x_59_2
              #                    occupy fa1 with 3.1415927_0
              #                    occupy a0 with _anonymous_of_3.1415927_0_0
    li      a0, 1078530011
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_40_cmp_67_0
    flt.s   a1,fa1,fa0
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     198  br i1 temp_40_cmp_67_0, label branch_true_68, label UP_54_0 
              #                    occupy a1 with temp_40_cmp_67_0
              #                    free a1
              #                    occupy a1 with temp_40_cmp_67_0
    bnez    a1, .branch_true_68
              #                    free a1
    j       .UP_54_0
              #                    regtab     a1:Freed { symidx: temp_40_cmp_67_0, tracked: true } |     fa0:Freed { symidx: x_59_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     196  label branch_true_68: 
.branch_true_68:
              #                     517  untrack temp_40_cmp_67_0 
              #                    occupy a1 with temp_40_cmp_67_0
              #                    release a1 with temp_40_cmp_67_0
              #                     169  temp_32_arithop_67_0 = Sub f32 x_59_2, 6.2831855_0 
              #                    occupy fa0 with x_59_2
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_32_arithop_67_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     521  untrack x_59_2 
              #                    occupy fa0 with x_59_2
              #                    release fa0 with x_59_2
              #                     170  (nop) 
              #                     462  x_59_4 = f32 temp_32_arithop_67_0 
              #                    occupy fa2 with temp_32_arithop_67_0
              #                    occupy fa0 with x_59_4
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     520  untrack temp_32_arithop_67_0 
              #                    occupy fa2 with temp_32_arithop_67_0
              #                    release fa2 with temp_32_arithop_67_0
              #                          jump label: branch_false_68 
    j       .branch_false_68
              #                    regtab     fa0:Freed { symidx: x_59_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     197  label branch_false_68: 
.branch_false_68:
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     fa0:Freed { symidx: x_59_4, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                          label L13_0: 
.L13_0:
              #                     200  temp_41_cmp_70_0 = fcmp f32 Olt x_59_4, -3.1415927_0 
              #                    occupy fa0 with x_59_4
              #                    occupy fa1 with -3.1415927_0
              #                    occupy a0 with _anonymous_of_-3.1415927_0_0
    li      a0, 3226013659
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_41_cmp_70_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     203  br i1 temp_41_cmp_70_0, label branch_true_71, label UP_44_0 
              #                    occupy a1 with temp_41_cmp_70_0
              #                    free a1
              #                    occupy a1 with temp_41_cmp_70_0
    bnez    a1, .branch_true_71
              #                    free a1
    j       .UP_44_0
              #                    regtab     a1:Freed { symidx: temp_41_cmp_70_0, tracked: true } |     fa0:Freed { symidx: x_59_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     201  label branch_true_71: 
.branch_true_71:
              #                     522  untrack temp_41_cmp_70_0 
              #                    occupy a1 with temp_41_cmp_70_0
              #                    release a1 with temp_41_cmp_70_0
              #                     166  temp_31_arithop_70_0 = Add f32 x_59_4, 6.2831855_0 
              #                    occupy fa0 with x_59_4
              #                    occupy fa1 with 6.2831855_0
              #                    occupy a0 with _anonymous_of_6.2831855_0_0
    li      a0, 1086918619
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_31_arithop_70_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     526  untrack x_59_4 
              #                    occupy fa0 with x_59_4
              #                    release fa0 with x_59_4
              #                     167  (nop) 
              #                     463  x_59_6 = f32 temp_31_arithop_70_0 
              #                    occupy fa2 with temp_31_arithop_70_0
              #                    occupy fa0 with x_59_6
    fmv.s   fa0, fa2
              #                    free fa2
              #                    free fa0
              #                     525  untrack temp_31_arithop_70_0 
              #                    occupy fa2 with temp_31_arithop_70_0
              #                    release fa2 with temp_31_arithop_70_0
              #                          jump label: branch_false_71 
    j       .branch_false_71
              #                    regtab     fa0:Freed { symidx: x_59_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                     202  label branch_false_71: 
.branch_false_71:
              #                          jump label: L14_0 
    j       .L14_0
              #                    regtab     fa0:Freed { symidx: x_59_6, tracked: true } |  released_gpr_count:13,released_fpr_count:17
              #                          label L14_0: 
.L14_0:
              #                     163  temp_30_ret_of_my_sin_impl_61_0 =  Call f32 my_sin_impl_0(x_59_6) 
              #                    saved register dumping to mem
              #                    occupy fa0 with x_59_6
              #                    store to x_59_6 in mem offset legal
    fsw     fa0,40(sp)
              #                    release fa0 with x_59_6
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_59_6_0
              #                    load from x_59_6 in mem


    flw     fa0,40(sp)
              #                    arg load ended


    call    my_sin_impl
              #                     527  untrack x_59_6 
              #                     164  ret temp_30_ret_of_my_sin_impl_61_0 
              #                    load from ra_my_sin_0 in mem
    ld      ra,64(sp)
              #                    load from s0_my_sin_0 in mem
    ld      s0,56(sp)
              #                    occupy fa0 with temp_30_ret_of_my_sin_impl_61_0
              #                    store to temp_30_ret_of_my_sin_impl_61_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_30_ret_of_my_sin_impl_61_0
              #                    occupy fa0 with temp_30_ret_of_my_sin_impl_61_0
              #                    load from temp_30_ret_of_my_sin_impl_61_0 in mem


    flw     fa0,36(sp)
    addi    sp,sp,72
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_41_cmp_70_0, tracked: true } |     fa0:Freed { symidx: x_59_4, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     460  label UP_44_0: 
.UP_44_0:
              #                     524  untrack temp_31_arithop_70_0 
              #                     523  untrack temp_41_cmp_70_0 
              #                    occupy a1 with temp_41_cmp_70_0
              #                    release a1 with temp_41_cmp_70_0
              #                     464  x_59_6 = f32 x_59_4 
              #                    occupy fa0 with x_59_4
              #                    occupy fa1 with x_59_6
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     528  untrack x_59_4 
              #                    occupy fa0 with x_59_4
              #                    release fa0 with x_59_4
              #                          jump label: branch_false_71 
              #                    occupy fa1 with x_59_6
              #                    store to x_59_6 in mem offset legal
    fsw     fa1,40(sp)
              #                    release fa1 with x_59_6
              #                    occupy fa0 with x_59_6
              #                    load from x_59_6 in mem


    flw     fa0,40(sp)
    j       .branch_false_71
              #                    regtab     a1:Freed { symidx: temp_40_cmp_67_0, tracked: true } |     fa0:Freed { symidx: x_59_2, tracked: true } |  released_gpr_count:15,released_fpr_count:20
              #                     459  label UP_54_0: 
.UP_54_0:
              #                     519  untrack temp_40_cmp_67_0 
              #                    occupy a1 with temp_40_cmp_67_0
              #                    release a1 with temp_40_cmp_67_0
              #                     518  untrack temp_32_arithop_67_0 
              #                     465  x_59_4 = f32 x_59_2 
              #                    occupy fa0 with x_59_2
              #                    occupy fa1 with x_59_4
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     529  untrack x_59_2 
              #                    occupy fa0 with x_59_2
              #                    release fa0 with x_59_2
              #                          jump label: branch_false_68 
              #                    occupy fa1 with x_59_4
              #                    store to x_59_4 in mem offset legal
    fsw     fa1,44(sp)
              #                    release fa1 with x_59_4
              #                    occupy fa0 with x_59_4
              #                    load from x_59_4 in mem


    flw     fa0,44(sp)
    j       .branch_false_68
              #                    regtab     a1:Freed { symidx: temp_38_cmp_62_0, tracked: true } |     fa0:Freed { symidx: x_59_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     190  label branch_short_circuit_p_false_372: 
.branch_short_circuit_p_false_372:
              #                     510  untrack temp_38_cmp_62_0 
              #                    occupy a1 with temp_38_cmp_62_0
              #                    release a1 with temp_38_cmp_62_0
              #                     187  temp_39_cmp_62_0 = fcmp f32 Olt x_59_0, -6.2831855_0 
              #                    occupy fa0 with x_59_0
              #                    occupy fa1 with -6.2831855_0
              #                    occupy a0 with _anonymous_of_-6.2831855_0_0
    li      a0, 3234402267
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_39_cmp_62_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     192  br i1 temp_39_cmp_62_0, label branch_short_circuit_c_true_372, label UP_64_0 
              #                    occupy a1 with temp_39_cmp_62_0
              #                    free a1
              #                    occupy a1 with temp_39_cmp_62_0
              #                    store to temp_39_cmp_62_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_39_cmp_62_0
              #                    occupy a1 with temp_38_cmp_62_0
              #                    load from temp_38_cmp_62_0 in mem


    lb      a1,7(sp)
              #                    occupy a0 with temp_39_cmp_62_0
              #                    load from temp_39_cmp_62_0 in mem


    lb      a0,6(sp)
    bnez    a0, .branch_short_circuit_c_true_372
              #                    free a0
    j       .UP_64_0
              #                    regtab     a0:Freed { symidx: temp_39_cmp_62_0, tracked: true } |     a1:Freed { symidx: temp_38_cmp_62_0, tracked: true } |     fa0:Freed { symidx: x_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:22
              #                     458  label UP_64_0: 
.UP_64_0:
              #                     536  untrack temp_33_arithop_64_0 
              #                     535  untrack temp_37_arithop_64_0 
              #                     534  untrack temp_39_cmp_62_0 
              #                    occupy a0 with temp_39_cmp_62_0
              #                    release a0 with temp_39_cmp_62_0
              #                     533  untrack temp_34__64_0 
              #                     532  untrack temp_36_arithop_64_0 
              #                     531  untrack temp_35__64_0 
              #                     466  x_59_2 = f32 x_59_0 
              #                    occupy fa0 with x_59_0
              #                    occupy fa1 with x_59_2
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                     537  untrack x_59_0 
              #                    occupy fa0 with x_59_0
              #                    release fa0 with x_59_0
              #                          jump label: branch_short_circuit_c_false_372 
              #                    occupy a1 with temp_38_cmp_62_0
              #                    store to temp_38_cmp_62_0 in mem offset legal
    sb      a1,7(sp)
              #                    release a1 with temp_38_cmp_62_0
              #                    occupy fa1 with x_59_2
              #                    store to x_59_2 in mem offset legal
    fsw     fa1,48(sp)
              #                    release fa1 with x_59_2
              #                    occupy fa0 with x_59_2
              #                    load from x_59_2 in mem


    flw     fa0,48(sp)
    j       .branch_short_circuit_c_false_372
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     53   Define my_cos_0 "x_74_0," -> my_cos_ret_0 
    .globl my_cos
    .type my_cos,@function
my_cos:
              #                    mem layout:|ra_my_cos:8 at 24|s0_my_cos:8 at 16|x _s74 _i0:4 at 12|temp_42_arithop _s76 _i0:4 at 8|temp_43_ret_of_my_sin _s76 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-32
              #                    store to ra_my_cos_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_my_cos_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     206  alloc f32 [temp_42_arithop_76] 
              #                     208  alloc f32 [temp_43_ret_of_my_sin_76] 
              #                    regtab     fa0:Freed { symidx: x_74_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L10_0: 
.L10_0:
              #                     207  temp_42_arithop_76_0 = Add f32 x_74_0, 1.5707964_0 
              #                    occupy fa0 with x_74_0
              #                    occupy fa1 with 1.5707964_0
              #                    occupy a0 with _anonymous_of_1.5707964_0_0
    li      a0, 1070141403
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_42_arithop_76_0
    fadd.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     539  untrack x_74_0 
              #                    occupy fa0 with x_74_0
              #                    release fa0 with x_74_0
              #                     209  temp_43_ret_of_my_sin_76_0 =  Call f32 my_sin_0(temp_42_arithop_76_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_42_arithop_76_0
              #                    store to temp_42_arithop_76_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_42_arithop_76_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_42_arithop_76_0_0
              #                    load from temp_42_arithop_76_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    my_sin
              #                     538  untrack temp_42_arithop_76_0 
              #                     210  ret temp_43_ret_of_my_sin_76_0 
              #                    load from ra_my_cos_0 in mem
    ld      ra,24(sp)
              #                    load from s0_my_cos_0 in mem
    ld      s0,16(sp)
              #                    occupy fa0 with temp_43_ret_of_my_sin_76_0
              #                    store to temp_43_ret_of_my_sin_76_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_43_ret_of_my_sin_76_0
              #                    occupy fa0 with temp_43_ret_of_my_sin_76_0
              #                    load from temp_43_ret_of_my_sin_76_0 in mem


    flw     fa0,4(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     54   Define circle_sdf_0 "x_78_0,y_78_0,cx_78_0,cy_78_0,r_78_0," -> circle_sdf_ret_0 
    .globl circle_sdf
    .type circle_sdf,@function
circle_sdf:
              #                    mem layout:|ra_circle_sdf:8 at 56|s0_circle_sdf:8 at 48|x _s78 _i0:4 at 44|y _s78 _i0:4 at 40|cx _s78 _i0:4 at 36|cy _s78 _i0:4 at 32|r _s78 _i0:4 at 28|temp_44_arithop _s80 _i0:4 at 24|temp_45_arithop _s80 _i0:4 at 20|temp_46_arithop _s80 _i0:4 at 16|temp_47_arithop _s80 _i0:4 at 12|temp_48_arithop _s80 _i0:4 at 8|temp_49_ret_of_my_sqrt _s80 _i0:4 at 4|temp_50_arithop _s80 _i0:4 at 0
    addi    sp,sp,-64
              #                    store to ra_circle_sdf_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_circle_sdf_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     212  alloc f32 [temp_44_arithop_80] 
              #                     215  alloc f32 [ux_80] 
              #                     216  alloc f32 [temp_45_arithop_80] 
              #                     219  alloc f32 [uy_80] 
              #                     221  alloc f32 [temp_46_arithop_80] 
              #                     223  alloc f32 [temp_47_arithop_80] 
              #                     225  alloc f32 [temp_48_arithop_80] 
              #                     227  alloc f32 [temp_49_ret_of_my_sqrt_80] 
              #                     229  alloc f32 [temp_50_arithop_80] 
              #                    regtab     fa0:Freed { symidx: x_78_0, tracked: true } |     fa1:Freed { symidx: y_78_0, tracked: true } |     fa2:Freed { symidx: cx_78_0, tracked: true } |     fa3:Freed { symidx: cy_78_0, tracked: true } |     fa4:Freed { symidx: r_78_0, tracked: true } |  released_gpr_count:19,released_fpr_count:19
              #                          label L9_0: 
.L9_0:
              #                     213  temp_44_arithop_80_0 = Sub f32 x_78_0, cx_78_0 
              #                    occupy fa0 with x_78_0
              #                    occupy fa2 with cx_78_0
              #                    occupy fa5 with temp_44_arithop_80_0
    fsub.s  fa5,fa0,fa2
              #                    free fa0
              #                    free fa2
              #                    free fa5
              #                     550  untrack x_78_0 
              #                    occupy fa0 with x_78_0
              #                    release fa0 with x_78_0
              #                     540  untrack cx_78_0 
              #                    occupy fa2 with cx_78_0
              #                    release fa2 with cx_78_0
              #                     214  (nop) 
              #                     217  temp_45_arithop_80_0 = Sub f32 y_78_0, cy_78_0 
              #                    occupy fa1 with y_78_0
              #                    occupy fa3 with cy_78_0
              #                    occupy fa0 with temp_45_arithop_80_0
    fsub.s  fa0,fa1,fa3
              #                    free fa1
              #                    free fa3
              #                    free fa0
              #                     548  untrack y_78_0 
              #                    occupy fa1 with y_78_0
              #                    release fa1 with y_78_0
              #                     541  untrack cy_78_0 
              #                    occupy fa3 with cy_78_0
              #                    release fa3 with cy_78_0
              #                     218  (nop) 
              #                     222  temp_46_arithop_80_0 = Mul f32 temp_44_arithop_80_0, temp_44_arithop_80_0 
              #                    occupy fa5 with temp_44_arithop_80_0
              #                    occupy fa5 with temp_44_arithop_80_0
              #                    occupy fa1 with temp_46_arithop_80_0
    fmul.s  fa1,fa5,fa5
              #                    free fa5
              #                    free fa5
              #                    free fa1
              #                     549  untrack temp_44_arithop_80_0 
              #                    occupy fa5 with temp_44_arithop_80_0
              #                    release fa5 with temp_44_arithop_80_0
              #                     224  temp_47_arithop_80_0 = Mul f32 temp_45_arithop_80_0, temp_45_arithop_80_0 
              #                    occupy fa0 with temp_45_arithop_80_0
              #                    occupy fa0 with temp_45_arithop_80_0
              #                    occupy fa2 with temp_47_arithop_80_0
    fmul.s  fa2,fa0,fa0
              #                    free fa0
              #                    free fa0
              #                    free fa2
              #                     544  untrack temp_45_arithop_80_0 
              #                    occupy fa0 with temp_45_arithop_80_0
              #                    release fa0 with temp_45_arithop_80_0
              #                     226  temp_48_arithop_80_0 = Add f32 temp_46_arithop_80_0, temp_47_arithop_80_0 
              #                    occupy fa1 with temp_46_arithop_80_0
              #                    occupy fa2 with temp_47_arithop_80_0
              #                    occupy fa0 with temp_48_arithop_80_0
    fadd.s  fa0,fa1,fa2
              #                    free fa1
              #                    free fa2
              #                    free fa0
              #                     547  untrack temp_47_arithop_80_0 
              #                    occupy fa2 with temp_47_arithop_80_0
              #                    release fa2 with temp_47_arithop_80_0
              #                     546  untrack temp_46_arithop_80_0 
              #                    occupy fa1 with temp_46_arithop_80_0
              #                    release fa1 with temp_46_arithop_80_0
              #                     228  temp_49_ret_of_my_sqrt_80_0 =  Call f32 my_sqrt_0(temp_48_arithop_80_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_48_arithop_80_0
              #                    store to temp_48_arithop_80_0 in mem offset legal
    fsw     fa0,8(sp)
              #                    release fa0 with temp_48_arithop_80_0
              #                    occupy fa4 with r_78_0
              #                    store to r_78_0 in mem offset legal
    fsw     fa4,28(sp)
              #                    release fa4 with r_78_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_48_arithop_80_0_0
              #                    load from temp_48_arithop_80_0 in mem


    flw     fa0,8(sp)
              #                    arg load ended


    call    my_sqrt
              #                     545  untrack temp_48_arithop_80_0 
              #                     230  temp_50_arithop_80_0 = Sub f32 temp_49_ret_of_my_sqrt_80_0, r_78_0 
              #                    occupy fa0 with temp_49_ret_of_my_sqrt_80_0
              #                    occupy fa1 with r_78_0
              #                    load from r_78_0 in mem


    flw     fa1,28(sp)
              #                    occupy fa2 with temp_50_arithop_80_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     543  untrack temp_49_ret_of_my_sqrt_80_0 
              #                    occupy fa0 with temp_49_ret_of_my_sqrt_80_0
              #                    release fa0 with temp_49_ret_of_my_sqrt_80_0
              #                     542  untrack r_78_0 
              #                    occupy fa1 with r_78_0
              #                    release fa1 with r_78_0
              #                     231  ret temp_50_arithop_80_0 
              #                    load from ra_circle_sdf_0 in mem
    ld      ra,56(sp)
              #                    load from s0_circle_sdf_0 in mem
    ld      s0,48(sp)
              #                    occupy fa2 with temp_50_arithop_80_0
              #                    store to temp_50_arithop_80_0 in mem offset legal
    fsw     fa2,0(sp)
              #                    release fa2 with temp_50_arithop_80_0
              #                    occupy fa0 with temp_50_arithop_80_0
              #                    load from temp_50_arithop_80_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,64
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     56   Define scene_0 "x_83_0,y_83_0,ret_83," -> scene_ret_0 
    .globl scene
    .type scene,@function
scene:
              #                    mem layout:|ra_scene:8 at 120|s0_scene:8 at 112|x _s83 _i0:4 at 108|y _s83 _i0:4 at 104|ret:8 at 96|ret:8 at 88|ret:8 at 80|ret:8 at 72|ret:8 at 64|ret:8 at 56|ret:8 at 48|temp_51_ret_of_circle_sdf _s85 _i0:4 at 44|temp_52_ret_of_circle_sdf _s85 _i0:4 at 40|temp_53_ptr_of_ret_83:8 at 32|temp_54_ptr_of_ret_83:8 at 24|temp_55_ptr_of_ret_83:8 at 16|temp_56_ptr_of_ret_83:8 at 8|temp_57_cmp _s88 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-128
              #                    store to ra_scene_0 in mem offset legal
    sd      ra,120(sp)
              #                    store to s0_scene_0 in mem offset legal
    sd      s0,112(sp)
    addi    s0,sp,128
              #                     233  alloc f32 [temp_51_ret_of_circle_sdf_85] 
              #                     236  alloc f32 [sd0_85] 
              #                     237  alloc f32 [temp_52_ret_of_circle_sdf_85] 
              #                     240  alloc f32 [sd1_85] 
              #                     241  alloc ptr->f32 [temp_53_ptr_of_ret_83_93] 
              #                     245  alloc ptr->f32 [temp_54_ptr_of_ret_83_93] 
              #                     249  alloc ptr->f32 [temp_55_ptr_of_ret_83_90] 
              #                     253  alloc ptr->f32 [temp_56_ptr_of_ret_83_90] 
              #                     257  alloc i1 [temp_57_cmp_88] 
              #                    regtab     a0:Freed { symidx: ret_83, tracked: true } |     fa0:Freed { symidx: x_83_0, tracked: true } |     fa1:Freed { symidx: y_83_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L7_0: 
.L7_0:
              #                     55    
              #                     234  temp_51_ret_of_circle_sdf_85_0 =  Call f32 circle_sdf_0(x_83_0, y_83_0, 0.4_0, 0.4_0, 0.10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with ret_83
              #                    store to ret_83 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with ret_83
              #                    occupy fa0 with x_83_0
              #                    store to x_83_0 in mem offset legal
    fsw     fa0,108(sp)
              #                    release fa0 with x_83_0
              #                    occupy fa1 with y_83_0
              #                    store to y_83_0 in mem offset legal
    fsw     fa1,104(sp)
              #                    release fa1 with y_83_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_83_0_0
              #                    load from x_83_0 in mem


    flw     fa0,108(sp)
              #                    occupy fa1 with _anonymous_of_y_83_0_0
              #                    load from y_83_0 in mem


    flw     fa1,104(sp)
              #                    occupy fa2 with _anonymous_of_0.4_0_0
              #                    occupy a0 with _anonymous_of_0.4_0_0
    li      a0, 1053609165
    fmv.w.x fa2, a0
              #                    free a0
              #                    occupy fa3 with _anonymous_of_0.4_0_0
              #                    occupy a1 with _anonymous_of_0.4_0_0
    li      a1, 1053609165
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa4 with _anonymous_of_0.10_0_0
              #                    occupy a2 with _anonymous_of_0.10_0_0
    li      a2, 1036831949
    fmv.w.x fa4, a2
              #                    free a2
              #                    arg load ended


    call    circle_sdf
              #                     235  (nop) 
              #                     238  temp_52_ret_of_circle_sdf_85_0 =  Call f32 circle_sdf_0(x_83_0, y_83_0, 0.6_0, 0.6_0, 0.05_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_51_ret_of_circle_sdf_85_0
              #                    store to temp_51_ret_of_circle_sdf_85_0 in mem offset legal
    fsw     fa0,44(sp)
              #                    release fa0 with temp_51_ret_of_circle_sdf_85_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_83_0_0
              #                    load from x_83_0 in mem


    flw     fa0,108(sp)
              #                    occupy fa1 with _anonymous_of_y_83_0_0
              #                    load from y_83_0 in mem


    flw     fa1,104(sp)
              #                    occupy fa2 with _anonymous_of_0.6_0_0
              #                    occupy a0 with _anonymous_of_0.6_0_0
    li      a0, 1058642330
    fmv.w.x fa2, a0
              #                    free a0
              #                    occupy fa3 with _anonymous_of_0.6_0_0
              #                    occupy a1 with _anonymous_of_0.6_0_0
    li      a1, 1058642330
    fmv.w.x fa3, a1
              #                    free a1
              #                    occupy fa4 with _anonymous_of_0.05_0_0
              #                    occupy a2 with _anonymous_of_0.05_0_0
    li      a2, 1028443341
    fmv.w.x fa4, a2
              #                    free a2
              #                    arg load ended


    call    circle_sdf
              #                     552  untrack y_83_0 
              #                     551  untrack x_83_0 
              #                     239  (nop) 
              #                          jump label: L8_0 
    j       .L8_0
              #                    regtab     fa0:Freed { symidx: temp_52_ret_of_circle_sdf_85_0, tracked: true } |  released_gpr_count:16,released_fpr_count:23
              #                          label L8_0: 
.L8_0:
              #                     258  temp_57_cmp_88_0 = fcmp f32 Olt temp_51_ret_of_circle_sdf_85_0, temp_52_ret_of_circle_sdf_85_0 
              #                    occupy fa1 with temp_51_ret_of_circle_sdf_85_0
              #                    load from temp_51_ret_of_circle_sdf_85_0 in mem


    flw     fa1,44(sp)
              #                    occupy fa0 with temp_52_ret_of_circle_sdf_85_0
              #                    occupy a0 with temp_57_cmp_88_0
    flt.s   a0,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free a0
              #                     261  br i1 temp_57_cmp_88_0, label branch_true_89, label branch_false_89 
              #                    occupy a0 with temp_57_cmp_88_0
              #                    free a0
              #                    occupy a0 with temp_57_cmp_88_0
    bnez    a0, .branch_true_89
              #                    free a0
    j       .branch_false_89
              #                    regtab     a0:Freed { symidx: temp_57_cmp_88_0, tracked: true } |     fa0:Freed { symidx: temp_52_ret_of_circle_sdf_85_0, tracked: true } |     fa1:Freed { symidx: temp_51_ret_of_circle_sdf_85_0, tracked: true } |  released_gpr_count:15,released_fpr_count:22
              #                     259  label branch_true_89: 
.branch_true_89:
              #                     556  untrack temp_53_ptr_of_ret_83_93 
              #                     555  untrack temp_54_ptr_of_ret_83_93 
              #                     554  untrack temp_57_cmp_88_0 
              #                    occupy a0 with temp_57_cmp_88_0
              #                    release a0 with temp_57_cmp_88_0
              #                     553  untrack temp_52_ret_of_circle_sdf_85_0 
              #                    occupy fa0 with temp_52_ret_of_circle_sdf_85_0
              #                    release fa0 with temp_52_ret_of_circle_sdf_85_0
              #                     250  temp_55_ptr_of_ret_83_90 = GEP ret_83:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_55_ptr_of_ret_83_90
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with ret_83
              #                    load from ret_83 in mem
    ld      a2,48(sp)
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     251  store temp_51_ret_of_circle_sdf_85_0:f32 temp_55_ptr_of_ret_83_90:ptr->f32 
              #                    occupy a0 with temp_55_ptr_of_ret_83_90
              #                    occupy fa1 with temp_51_ret_of_circle_sdf_85_0
    fsw     fa1,0(a0)
              #                    free fa1
              #                    free a0
              #                     562  untrack temp_51_ret_of_circle_sdf_85_0 
              #                    occupy fa1 with temp_51_ret_of_circle_sdf_85_0
              #                    release fa1 with temp_51_ret_of_circle_sdf_85_0
              #                     561  untrack temp_55_ptr_of_ret_83_90 
              #                    occupy a0 with temp_55_ptr_of_ret_83_90
              #                    release a0 with temp_55_ptr_of_ret_83_90
              #                     252  ret_83 = chi ret_83:251 
              #                     254  temp_56_ptr_of_ret_83_90 = GEP ret_83:ptr->f32 [Some(1_0)] 
              #                    occupy a0 with temp_56_ptr_of_ret_83_90
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a2 with ret_83
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     255  store 3.0_0:f32 temp_56_ptr_of_ret_83_90:ptr->f32 
              #                    occupy a0 with temp_56_ptr_of_ret_83_90
              #                    occupy fa0 with 3.0_0
              #                    occupy a4 with _anonymous_of_3.0_0_0
    li      a4, 1077936128
    fmv.w.x fa0, a4
              #                    free a4
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     563  untrack temp_56_ptr_of_ret_83_90 
              #                    occupy a0 with temp_56_ptr_of_ret_83_90
              #                    release a0 with temp_56_ptr_of_ret_83_90
              #                     256  ret_83 = chi ret_83:255 
              #                          jump label: gather_52 
    j       .gather_52
              #                    regtab     a2:Freed { symidx: ret_83, tracked: true } |  released_gpr_count:12,released_fpr_count:23
              #                     262  label gather_52: 
.gather_52:
              #                          jump label: exit_47 
    j       .exit_47
              #                    regtab     a2:Freed { symidx: ret_83, tracked: true } |  released_gpr_count:12,released_fpr_count:23
              #                     264  label exit_47: 
.exit_47:
              #                     438  mu ret_83:263 
              #                     564  untrack ret_83 
              #                    occupy a2 with ret_83
              #                    release a2 with ret_83
              #                     263  ret 
              #                    load from ra_scene_0 in mem
    ld      ra,120(sp)
              #                    load from s0_scene_0 in mem
    ld      s0,112(sp)
    addi    sp,sp,128
    ret
              #                    regtab     a0:Freed { symidx: temp_57_cmp_88_0, tracked: true } |     fa0:Freed { symidx: temp_52_ret_of_circle_sdf_85_0, tracked: true } |     fa1:Freed { symidx: temp_51_ret_of_circle_sdf_85_0, tracked: true } |  released_gpr_count:15,released_fpr_count:22
              #                     260  label branch_false_89: 
.branch_false_89:
              #                     560  untrack temp_57_cmp_88_0 
              #                    occupy a0 with temp_57_cmp_88_0
              #                    release a0 with temp_57_cmp_88_0
              #                     559  untrack temp_56_ptr_of_ret_83_90 
              #                     558  untrack temp_55_ptr_of_ret_83_90 
              #                     557  untrack temp_51_ret_of_circle_sdf_85_0 
              #                    occupy fa1 with temp_51_ret_of_circle_sdf_85_0
              #                    release fa1 with temp_51_ret_of_circle_sdf_85_0
              #                     242  temp_53_ptr_of_ret_83_93 = GEP ret_83:ptr->f32 [Some(0_0)] 
              #                    occupy a0 with temp_53_ptr_of_ret_83_93
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
              #                    occupy a2 with ret_83
              #                    load from ret_83 in mem
    ld      a2,48(sp)
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     243  store temp_52_ret_of_circle_sdf_85_0:f32 temp_53_ptr_of_ret_83_93:ptr->f32 
              #                    occupy a0 with temp_53_ptr_of_ret_83_93
              #                    occupy fa0 with temp_52_ret_of_circle_sdf_85_0
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     567  untrack temp_52_ret_of_circle_sdf_85_0 
              #                    occupy fa0 with temp_52_ret_of_circle_sdf_85_0
              #                    release fa0 with temp_52_ret_of_circle_sdf_85_0
              #                     566  untrack temp_53_ptr_of_ret_83_93 
              #                    occupy a0 with temp_53_ptr_of_ret_83_93
              #                    release a0 with temp_53_ptr_of_ret_83_93
              #                     244  ret_83 = chi ret_83:243 
              #                     246  temp_54_ptr_of_ret_83_93 = GEP ret_83:ptr->f32 [Some(1_0)] 
              #                    occupy a0 with temp_54_ptr_of_ret_83_93
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 1
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
              #                    occupy a2 with ret_83
    add     a0,a0,a2
              #                    free a2
              #                    free a0
              #                     247  store 0.0_0:f32 temp_54_ptr_of_ret_83_93:ptr->f32 
              #                    occupy a0 with temp_54_ptr_of_ret_83_93
              #                    occupy fa0 with 0.0_0
              #                    occupy a4 with _anonymous_of_0.0_0_0
    li      a4, 0
    fmv.w.x fa0, a4
              #                    free a4
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     565  untrack temp_54_ptr_of_ret_83_93 
              #                    occupy a0 with temp_54_ptr_of_ret_83_93
              #                    release a0 with temp_54_ptr_of_ret_83_93
              #                     248  ret_83 = chi ret_83:247 
              #                          jump label: gather_52 
    j       .gather_52
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     57   Define trace_0 "ox_96_0,oy_96_0,dx_96_0,dy_96_0," -> trace_ret_0 
    .globl trace
    .type trace,@function
trace:
              #                    mem layout:|ra_trace:8 at 112|s0_trace:8 at 104|ox _s96 _i0:4 at 100|oy _s96 _i0:4 at 96|dx _s96 _i0:4 at 92|dy _s96 _i0:4 at 88|t _s98 _i1:4 at 84|i _s98 _i1:4 at 80|ret:8 at 72|temp_58_arithop _s103 _i0:4 at 68|temp_59_arithop _s103 _i0:4 at 64|temp_60_arithop _s103 _i0:4 at 60|temp_61_arithop _s103 _i0:4 at 56|temp_62_ele_ptr_of_ret_103:8 at 48|temp_63_ptr_of_ret_103:8 at 40|temp_65_arithop _s103 _i0:4 at 36|temp_66_arithop _s103 _i0:4 at 32|temp_67_ptr_of_ret_103:8 at 24|temp_68_ele_of_ret_103 _s108 _i0:4 at 20|temp_69_cmp _s101 _i0:1 at 19|temp_70_cmp _s101 _i0:1 at 18|none:2 at 16|temp_71_ptr_of_ret_103:8 at 8|temp_72_ele_of_ret_103 _s106 _i0:4 at 4|temp_73_cmp _s106 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-120
              #                    store to ra_trace_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_trace_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                     266  alloc f32 [t_98] 
              #                     268  alloc i32 [i_98] 
              #                     272  alloc Array:f32:[Some(2_0)] [ret_103] 
              #                     273  alloc f32 [temp_58_arithop_103] 
              #                     275  alloc f32 [temp_59_arithop_103] 
              #                     277  alloc f32 [temp_60_arithop_103] 
              #                     279  alloc f32 [temp_61_arithop_103] 
              #                     281  alloc ptr->f32 [temp_62_ele_ptr_of_ret_103_103] 
              #                     284  alloc ptr->f32 [temp_63_ptr_of_ret_103_103] 
              #                     286  alloc f32 [temp_64_ele_of_ret_103_103] 
              #                     289  alloc f32 [temp_65_arithop_103] 
              #                     292  alloc i32 [temp_66_arithop_103] 
              #                     296  alloc ptr->f32 [temp_67_ptr_of_ret_103_108] 
              #                     298  alloc f32 [temp_68_ele_of_ret_103_108] 
              #                     302  alloc i1 [temp_69_cmp_101] 
              #                     304  alloc i1 [temp_70_cmp_101] 
              #                     314  alloc ptr->f32 [temp_71_ptr_of_ret_103_106] 
              #                     316  alloc f32 [temp_72_ele_of_ret_103_106] 
              #                     319  alloc i1 [temp_73_cmp_106] 
              #                    regtab     fa0:Freed { symidx: ox_96_0, tracked: true } |     fa1:Freed { symidx: oy_96_0, tracked: true } |     fa2:Freed { symidx: dx_96_0, tracked: true } |     fa3:Freed { symidx: dy_96_0, tracked: true } |  released_gpr_count:19,released_fpr_count:20
              #                          label L4_0: 
.L4_0:
              #                     265  (nop) 
              #                     267  (nop) 
              #                     467  i_98_1 = i32 0_0 
              #                    occupy a0 with i_98_1
    li      a0, 0
              #                    free a0
              #                     468  t_98_1 = f32 0.0_0 
              #                    occupy fa4 with t_98_1
              #                    occupy a1 with _anonymous_of_0.0_0_0
    li      a1, 0
    fmv.w.x fa4, a1
              #                    free a1
              #                    free fa4
              #                          jump label: while.head_102 
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: i_98_1, tracked: true } |     fa0:Freed { symidx: ox_96_0, tracked: true } |     fa1:Freed { symidx: oy_96_0, tracked: true } |     fa2:Freed { symidx: dx_96_0, tracked: true } |     fa3:Freed { symidx: dy_96_0, tracked: true } |     fa4:Freed { symidx: t_98_1, tracked: true } |  released_gpr_count:17,released_fpr_count:19
              #                     311  label while.head_102: 
.while.head_102:
              #                     303  temp_69_cmp_101_0 = icmp i32 Slt i_98_1, 10_0 
              #                    occupy a0 with i_98_1
              #                    occupy a1 with 10_0
    li      a1, 10
              #                    occupy a2 with temp_69_cmp_101_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     312  br i1 temp_69_cmp_101_0, label branch_short_circuit_p_true_555, label branch_short_circuit_c_false_555 
              #                    occupy a2 with temp_69_cmp_101_0
              #                    free a2
              #                    occupy a2 with temp_69_cmp_101_0
    bnez    a2, .branch_short_circuit_p_true_555
              #                    free a2
    j       .branch_short_circuit_c_false_555
              #                    regtab     a0:Freed { symidx: i_98_1, tracked: true } |     a2:Freed { symidx: temp_69_cmp_101_0, tracked: true } |     fa0:Freed { symidx: ox_96_0, tracked: true } |     fa1:Freed { symidx: oy_96_0, tracked: true } |     fa2:Freed { symidx: dx_96_0, tracked: true } |     fa3:Freed { symidx: dy_96_0, tracked: true } |     fa4:Freed { symidx: t_98_1, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     308  label branch_short_circuit_p_true_555: 
.branch_short_circuit_p_true_555:
              #                     305  temp_70_cmp_101_0 = fcmp f32 Olt t_98_1, 2._0 
              #                    occupy fa4 with t_98_1
              #                    occupy fa5 with 2._0
              #                    occupy a1 with _anonymous_of_2._0_0
    li      a1, 1073741824
    fmv.w.x fa5, a1
              #                    free a1
              #                    occupy a3 with temp_70_cmp_101_0
    flt.s   a3,fa4,fa5
              #                    free fa4
              #                    free fa5
              #                    free a3
              #                     310  br i1 temp_70_cmp_101_0, label branch_short_circuit_c_true_555, label branch_short_circuit_c_false_555 
              #                    occupy a3 with temp_70_cmp_101_0
              #                    free a3
              #                    occupy a3 with temp_70_cmp_101_0
    bnez    a3, .branch_short_circuit_c_true_555
              #                    free a3
              #                    occupy a3 with temp_70_cmp_101_0
              #                    store to temp_70_cmp_101_0 in mem offset legal
    sb      a3,18(sp)
              #                    release a3 with temp_70_cmp_101_0
    j       .branch_short_circuit_c_false_555
              #                    regtab     a0:Freed { symidx: i_98_1, tracked: true } |     a2:Freed { symidx: temp_69_cmp_101_0, tracked: true } |     a3:Freed { symidx: temp_70_cmp_101_0, tracked: true } |     fa0:Freed { symidx: ox_96_0, tracked: true } |     fa1:Freed { symidx: oy_96_0, tracked: true } |     fa2:Freed { symidx: dx_96_0, tracked: true } |     fa3:Freed { symidx: dy_96_0, tracked: true } |     fa4:Freed { symidx: t_98_1, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                     306  label branch_short_circuit_c_true_555: 
.branch_short_circuit_c_true_555:
              #                     271   
              #                     274  temp_58_arithop_103_0 = Mul f32 dx_96_0, t_98_1 
              #                    occupy fa2 with dx_96_0
              #                    occupy fa4 with t_98_1
              #                    occupy fa5 with temp_58_arithop_103_0
    fmul.s  fa5,fa2,fa4
              #                    free fa2
              #                    free fa4
              #                    free fa5
              #                     276  temp_59_arithop_103_0 = Add f32 ox_96_0, temp_58_arithop_103_0 
              #                    occupy fa0 with ox_96_0
              #                    occupy fa5 with temp_58_arithop_103_0
              #                    occupy fa6 with temp_59_arithop_103_0
    fadd.s  fa6,fa0,fa5
              #                    free fa0
              #                    free fa5
              #                    free fa6
              #                     278  temp_60_arithop_103_0 = Mul f32 dy_96_0, t_98_1 
              #                    occupy fa3 with dy_96_0
              #                    occupy fa4 with t_98_1
              #                    occupy fa7 with temp_60_arithop_103_0
    fmul.s  fa7,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa7
              #                     280  temp_61_arithop_103_0 = Add f32 oy_96_0, temp_60_arithop_103_0 
              #                    occupy fa1 with oy_96_0
              #                    occupy fa7 with temp_60_arithop_103_0
              #                    occupy f8 with temp_61_arithop_103_0
    fadd.s  f8,fa1,fa7
              #                    free fa1
              #                    free fa7
              #                    free f8
              #                     282  temp_62_ele_ptr_of_ret_103_103 = GEP ret_103_0:Array:f32:[Some(2_0)] [] 
              #                    occupy a1 with temp_62_ele_ptr_of_ret_103_103
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,72
              #                    free a1
              #                     283   Call void scene_0(temp_59_arithop_103_0, temp_61_arithop_103_0, temp_62_ele_ptr_of_ret_103_103) 
              #                    saved register dumping to mem
              #                    occupy a0 with i_98_1
              #                    store to i_98_1 in mem offset legal
    sw      a0,80(sp)
              #                    release a0 with i_98_1
              #                    occupy a1 with temp_62_ele_ptr_of_ret_103_103
              #                    store to temp_62_ele_ptr_of_ret_103_103 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_62_ele_ptr_of_ret_103_103
              #                    occupy a2 with temp_69_cmp_101_0
              #                    store to temp_69_cmp_101_0 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_69_cmp_101_0
              #                    occupy a3 with temp_70_cmp_101_0
              #                    store to temp_70_cmp_101_0 in mem offset legal
    sb      a3,18(sp)
              #                    release a3 with temp_70_cmp_101_0
              #                    occupy f8 with temp_61_arithop_103_0
              #                    store to temp_61_arithop_103_0 in mem offset legal
    fsw     f8,56(sp)
              #                    release f8 with temp_61_arithop_103_0
              #                    occupy fa0 with ox_96_0
              #                    store to ox_96_0 in mem offset legal
    fsw     fa0,100(sp)
              #                    release fa0 with ox_96_0
              #                    occupy fa1 with oy_96_0
              #                    store to oy_96_0 in mem offset legal
    fsw     fa1,96(sp)
              #                    release fa1 with oy_96_0
              #                    occupy fa2 with dx_96_0
              #                    store to dx_96_0 in mem offset legal
    fsw     fa2,92(sp)
              #                    release fa2 with dx_96_0
              #                    occupy fa3 with dy_96_0
              #                    store to dy_96_0 in mem offset legal
    fsw     fa3,88(sp)
              #                    release fa3 with dy_96_0
              #                    occupy fa4 with t_98_1
              #                    store to t_98_1 in mem offset legal
    fsw     fa4,84(sp)
              #                    release fa4 with t_98_1
              #                    occupy fa5 with temp_58_arithop_103_0
              #                    store to temp_58_arithop_103_0 in mem offset legal
    fsw     fa5,68(sp)
              #                    release fa5 with temp_58_arithop_103_0
              #                    occupy fa6 with temp_59_arithop_103_0
              #                    store to temp_59_arithop_103_0 in mem offset legal
    fsw     fa6,64(sp)
              #                    release fa6 with temp_59_arithop_103_0
              #                    occupy fa7 with temp_60_arithop_103_0
              #                    store to temp_60_arithop_103_0 in mem offset legal
    fsw     fa7,60(sp)
              #                    release fa7 with temp_60_arithop_103_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_59_arithop_103_0_0
              #                    load from temp_59_arithop_103_0 in mem


    flw     fa0,64(sp)
              #                    occupy fa1 with _anonymous_of_temp_61_arithop_103_0_0
              #                    load from temp_61_arithop_103_0 in mem


    flw     fa1,56(sp)
              #                    occupy a0 with _anonymous_of_temp_62_ele_ptr_of_ret_103_103_0
              #                    load from temp_62_ele_ptr_of_ret_103_103 in mem
    ld      a0,48(sp)
              #                    arg load ended


    call    scene
              #                     439  mu ret_103_0:283 
              #                     440  ret_103_1 = chi ret_103_0:283 
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:16,released_fpr_count:23
              #                          label L5_0: 
.L5_0:
              #                     315  temp_71_ptr_of_ret_103_106 = GEP ret_103_1:Array:f32:[Some(2_0)] [Some(0_0)] 
              #                    occupy a0 with temp_71_ptr_of_ret_103_106
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 0
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,72
              #                    free a0
              #                     317  temp_72_ele_of_ret_103_106_0 = load temp_71_ptr_of_ret_103_106:ptr->f32 
              #                    occupy a0 with temp_71_ptr_of_ret_103_106
              #                    occupy fa0 with temp_72_ele_of_ret_103_106_0
    flw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     318  mu ret_103_1:317 
              #                     320  temp_73_cmp_106_0 = fcmp f32 Olt temp_72_ele_of_ret_103_106_0, 0.000001_0 
              #                    occupy fa0 with temp_72_ele_of_ret_103_106_0
              #                    occupy fa1 with 0.000001_0
              #                    occupy a2 with _anonymous_of_0.000001_0_0
    li      a2, 897988541
    fmv.w.x fa1, a2
              #                    free a2
              #                    occupy a3 with temp_73_cmp_106_0
    flt.s   a3,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a3
              #                     323  br i1 temp_73_cmp_106_0, label branch_true_107, label branch_false_107 
              #                    occupy a3 with temp_73_cmp_106_0
              #                    free a3
              #                    occupy a3 with temp_73_cmp_106_0
    bnez    a3, .branch_true_107
              #                    free a3
    j       .branch_false_107
              #                    regtab     a0:Freed { symidx: temp_71_ptr_of_ret_103_106, tracked: true } |     a3:Freed { symidx: temp_73_cmp_106_0, tracked: true } |     fa0:Freed { symidx: temp_72_ele_of_ret_103_106_0, tracked: true } |  released_gpr_count:12,released_fpr_count:21
              #                     321  label branch_true_107: 
.branch_true_107:
              #                     591  untrack temp_70_cmp_101_0 
              #                     590  untrack temp_59_arithop_103_0 
              #                     589  untrack temp_71_ptr_of_ret_103_106 
              #                    occupy a0 with temp_71_ptr_of_ret_103_106
              #                    release a0 with temp_71_ptr_of_ret_103_106
              #                     588  untrack temp_72_ele_of_ret_103_106_0 
              #                    occupy fa0 with temp_72_ele_of_ret_103_106_0
              #                    release fa0 with temp_72_ele_of_ret_103_106_0
              #                     587  untrack temp_65_arithop_103_0 
              #                     586  untrack temp_66_arithop_103_0 
              #                     585  untrack temp_62_ele_ptr_of_ret_103_103 
              #                     584  untrack temp_69_cmp_101_0 
              #                     583  untrack temp_58_arithop_103_0 
              #                     582  untrack temp_60_arithop_103_0 
              #                     581  untrack temp_73_cmp_106_0 
              #                    occupy a3 with temp_73_cmp_106_0
              #                    release a3 with temp_73_cmp_106_0
              #                     580  untrack temp_61_arithop_103_0 
              #                     297  temp_67_ptr_of_ret_103_108 = GEP ret_103_1:Array:f32:[Some(2_0)] [Some(1_0)] 
              #                    occupy a0 with temp_67_ptr_of_ret_103_108
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,72
              #                    free a0
              #                     299  temp_68_ele_of_ret_103_108_0 = load temp_67_ptr_of_ret_103_108:ptr->f32 
              #                    occupy a0 with temp_67_ptr_of_ret_103_108
              #                    occupy fa0 with temp_68_ele_of_ret_103_108_0
    flw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     592  untrack temp_67_ptr_of_ret_103_108 
              #                    occupy a0 with temp_67_ptr_of_ret_103_108
              #                    release a0 with temp_67_ptr_of_ret_103_108
              #                     300  mu ret_103_1:299 
              #                     301  ret temp_68_ele_of_ret_103_108_0 
              #                    load from ra_trace_0 in mem
    ld      ra,112(sp)
              #                    load from s0_trace_0 in mem
    ld      s0,104(sp)
              #                    occupy fa0 with temp_68_ele_of_ret_103_108_0
              #                    store to temp_68_ele_of_ret_103_108_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with temp_68_ele_of_ret_103_108_0
              #                    occupy fa0 with temp_68_ele_of_ret_103_108_0
              #                    load from temp_68_ele_of_ret_103_108_0 in mem


    flw     fa0,20(sp)
    addi    sp,sp,120
              #                    free fa0
    ret
              #                    regtab     a0:Freed { symidx: temp_71_ptr_of_ret_103_106, tracked: true } |     a3:Freed { symidx: temp_73_cmp_106_0, tracked: true } |     fa0:Freed { symidx: temp_72_ele_of_ret_103_106_0, tracked: true } |  released_gpr_count:12,released_fpr_count:21
              #                     322  label branch_false_107: 
.branch_false_107:
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: temp_71_ptr_of_ret_103_106, tracked: true } |     a3:Freed { symidx: temp_73_cmp_106_0, tracked: true } |     fa0:Freed { symidx: temp_72_ele_of_ret_103_106_0, tracked: true } |  released_gpr_count:12,released_fpr_count:21
              #                          label L6_0: 
.L6_0:
              #                     285  (nop) 
              #                     287  (nop) 
              #                     288  mu ret_103_1:287 
              #                     290  temp_65_arithop_103_0 = Add f32 t_98_1, temp_72_ele_of_ret_103_106_0 
              #                    occupy fa1 with t_98_1
              #                    load from t_98_1 in mem


    flw     fa1,84(sp)
              #                    occupy fa0 with temp_72_ele_of_ret_103_106_0
              #                    occupy fa2 with temp_65_arithop_103_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     291  (nop) 
              #                     293  temp_66_arithop_103_0 = Add i32 i_98_1, 1_0 
              #                    occupy a1 with i_98_1
              #                    load from i_98_1 in mem


    lw      a1,80(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_66_arithop_103_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     294  (nop) 
              #                     469  t_98_1 = f32 temp_65_arithop_103_0 
              #                    occupy fa2 with temp_65_arithop_103_0
              #                    occupy fa1 with t_98_1
    fmv.s   fa1, fa2
              #                    free fa2
              #                    free fa1
              #                     470  i_98_1 = i32 temp_66_arithop_103_0 
              #                    occupy a4 with temp_66_arithop_103_0
              #                    occupy a1 with i_98_1
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_102 
              #                    occupy a0 with temp_71_ptr_of_ret_103_106
              #                    store to temp_71_ptr_of_ret_103_106 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_71_ptr_of_ret_103_106
              #                    occupy a1 with i_98_1
              #                    store to i_98_1 in mem offset legal
    sw      a1,80(sp)
              #                    release a1 with i_98_1
              #                    occupy a0 with i_98_1
              #                    load from i_98_1 in mem


    lw      a0,80(sp)
              #                    occupy fa3 with dy_96_0
              #                    load from dy_96_0 in mem


    flw     fa3,88(sp)
              #                    occupy fa0 with temp_72_ele_of_ret_103_106_0
              #                    store to temp_72_ele_of_ret_103_106_0 in mem offset legal
    fsw     fa0,4(sp)
              #                    release fa0 with temp_72_ele_of_ret_103_106_0
              #                    occupy fa0 with ox_96_0
              #                    load from ox_96_0 in mem


    flw     fa0,100(sp)
              #                    occupy fa1 with t_98_1
              #                    store to t_98_1 in mem offset legal
    fsw     fa1,84(sp)
              #                    release fa1 with t_98_1
              #                    occupy fa4 with t_98_1
              #                    load from t_98_1 in mem


    flw     fa4,84(sp)
              #                    occupy fa1 with oy_96_0
              #                    load from oy_96_0 in mem


    flw     fa1,96(sp)
              #                    occupy a3 with temp_73_cmp_106_0
              #                    store to temp_73_cmp_106_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_73_cmp_106_0
              #                    occupy fa2 with temp_65_arithop_103_0
              #                    store to temp_65_arithop_103_0 in mem offset legal
    fsw     fa2,36(sp)
              #                    release fa2 with temp_65_arithop_103_0
              #                    occupy fa2 with dx_96_0
              #                    load from dx_96_0 in mem


    flw     fa2,92(sp)
              #                    occupy a4 with temp_66_arithop_103_0
              #                    store to temp_66_arithop_103_0 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with temp_66_arithop_103_0
    j       .while.head_102
              #                    regtab     a0:Freed { symidx: i_98_1, tracked: true } |     a2:Freed { symidx: temp_69_cmp_101_0, tracked: true } |     fa0:Freed { symidx: ox_96_0, tracked: true } |     fa1:Freed { symidx: oy_96_0, tracked: true } |     fa2:Freed { symidx: dx_96_0, tracked: true } |     fa3:Freed { symidx: dy_96_0, tracked: true } |     fa4:Freed { symidx: t_98_1, tracked: true } |  released_gpr_count:15,released_fpr_count:19
              #                     307  label branch_short_circuit_c_false_555: 
.branch_short_circuit_c_false_555:
              #                     579  untrack dy_96_0 
              #                    occupy fa3 with dy_96_0
              #                    release fa3 with dy_96_0
              #                     578  untrack dx_96_0 
              #                    occupy fa2 with dx_96_0
              #                    release fa2 with dx_96_0
              #                     577  untrack oy_96_0 
              #                    occupy fa1 with oy_96_0
              #                    release fa1 with oy_96_0
              #                     576  untrack t_98_1 
              #                    occupy fa4 with t_98_1
              #                    release fa4 with t_98_1
              #                     575  untrack i_98_1 
              #                    occupy a0 with i_98_1
              #                    release a0 with i_98_1
              #                     574  untrack ox_96_0 
              #                    occupy fa0 with ox_96_0
              #                    release fa0 with ox_96_0
              #                     573  untrack ox_96_0 
              #                     572  untrack dy_96_0 
              #                     571  untrack oy_96_0 
              #                     570  untrack t_98_1 
              #                     569  untrack dx_96_0 
              #                     568  untrack i_98_1 
              #                     270  ret 0.0_0 
              #                    load from ra_trace_0 in mem
    ld      ra,112(sp)
              #                    load from s0_trace_0 in mem
    ld      s0,104(sp)
              #                    occupy fa0 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa0, a0
              #                    free a0
    addi    sp,sp,120
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     58   Define sample_0 "x_113_0,y_113_0," -> sample_ret_0 
    .globl sample
    .type sample,@function
sample:
              #                    mem layout:|ra_sample:8 at 72|s0_sample:8 at 64|x _s113 _i0:4 at 60|y _s113 _i0:4 at 56|sum _s115 _i1:4 at 52|i _s115 _i1:4 at 48|temp_75_arithop _s115 _i0:4 at 44|temp_79_ _s120 _i0:4 at 40|temp_80_arithop _s120 _i0:4 at 36|temp_81_arithop _s120 _i0:4 at 32|temp_83_arithop _s120 _i0:4 at 28|temp_84_ret_of_my_cos _s120 _i0:4 at 24|temp_85_ret_of_my_sin _s120 _i0:4 at 20|temp_86_ret_of_trace _s120 _i0:4 at 16|temp_87_arithop _s120 _i0:4 at 12|temp_88_arithop _s120 _i0:4 at 8|temp_89_cmp _s118 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-80
              #                    store to ra_sample_0 in mem offset legal
    sd      ra,72(sp)
              #                    store to s0_sample_0 in mem offset legal
    sd      s0,64(sp)
    addi    s0,sp,80
              #                     325  alloc f32 [sum_115] 
              #                     327  alloc i32 [i_115] 
              #                     329  alloc f32 [temp_74__115] 
              #                     331  alloc f32 [temp_75_arithop_115] 
              #                     334  alloc f32 [temp_76__120] 
              #                     337  alloc f32 [rnd_120] 
              #                     338  alloc f32 [temp_77__120] 
              #                     340  alloc f32 [temp_78_arithop_120] 
              #                     342  alloc f32 [temp_79__120] 
              #                     344  alloc f32 [temp_80_arithop_120] 
              #                     346  alloc f32 [temp_81_arithop_120] 
              #                     348  alloc f32 [temp_82__120] 
              #                     350  alloc f32 [temp_83_arithop_120] 
              #                     353  alloc f32 [a_120] 
              #                     354  alloc f32 [temp_84_ret_of_my_cos_120] 
              #                     356  alloc f32 [temp_85_ret_of_my_sin_120] 
              #                     358  alloc f32 [temp_86_ret_of_trace_120] 
              #                     360  alloc f32 [temp_87_arithop_120] 
              #                     363  alloc i32 [temp_88_arithop_120] 
              #                     366  alloc i1 [temp_89_cmp_118] 
              #                    regtab     fa0:Freed { symidx: x_113_0, tracked: true } |     fa1:Freed { symidx: y_113_0, tracked: true } |  released_gpr_count:19,released_fpr_count:22
              #                          label L3_0: 
.L3_0:
              #                     324  (nop) 
              #                     326  (nop) 
              #                     471  sum_115_1 = f32 0.0_0 
              #                    occupy fa2 with sum_115_1
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa2, a0
              #                    free a0
              #                    free fa2
              #                     472  i_115_1 = i32 0_0 
              #                    occupy a1 with i_115_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_119 
    j       .while.head_119
              #                    regtab     a1:Freed { symidx: i_115_1, tracked: true } |     fa0:Freed { symidx: x_113_0, tracked: true } |     fa1:Freed { symidx: y_113_0, tracked: true } |     fa2:Freed { symidx: sum_115_1, tracked: true } |  released_gpr_count:17,released_fpr_count:21
              #                     368  label while.head_119: 
.while.head_119:
              #                     367  temp_89_cmp_118_0 = icmp i32 Slt i_115_1, 24_0 
              #                    occupy a1 with i_115_1
              #                    occupy a0 with 24_0
    li      a0, 24
              #                    occupy a2 with temp_89_cmp_118_0
    slt     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     371  br i1 temp_89_cmp_118_0, label while.body_119, label while.exit_119 
              #                    occupy a2 with temp_89_cmp_118_0
              #                    free a2
              #                    occupy a2 with temp_89_cmp_118_0
    bnez    a2, .while.body_119
              #                    free a2
    j       .while.exit_119
              #                    regtab     a1:Freed { symidx: i_115_1, tracked: true } |     a2:Freed { symidx: temp_89_cmp_118_0, tracked: true } |     fa0:Freed { symidx: x_113_0, tracked: true } |     fa1:Freed { symidx: y_113_0, tracked: true } |     fa2:Freed { symidx: sum_115_1, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                     369  label while.body_119: 
.while.body_119:
              #                     335  (nop) 
              #                     336  (nop) 
              #                     339  (nop) 
              #                     341  (nop) 
              #                     343  temp_79__120_0 = sitofp i32 i_115_1 to f32 
              #                    occupy a1 with i_115_1
              #                    occupy fa3 with temp_79__120_0
    fcvt.s.w fa3,a1,rtz
              #                    free a1
              #                    free fa3
              #                     345  temp_80_arithop_120_0 = Add f32 temp_79__120_0, 0.00000003_0 
              #                    occupy fa3 with temp_79__120_0
              #                    occupy fa4 with 0.00000003_0
              #                    occupy a0 with _anonymous_of_0.00000003_0_0
    li      a0, 855693657
    fmv.w.x fa4, a0
              #                    free a0
              #                    occupy fa5 with temp_80_arithop_120_0
    fadd.s  fa5,fa3,fa4
              #                    free fa3
              #                    free fa4
              #                    free fa5
              #                     347  temp_81_arithop_120_0 = Mul f32 6.2831855_0, temp_80_arithop_120_0 
              #                    occupy fa6 with 6.2831855_0
              #                    occupy a3 with _anonymous_of_6.2831855_0_0
    li      a3, 1086918619
    fmv.w.x fa6, a3
              #                    free a3
              #                    occupy fa5 with temp_80_arithop_120_0
              #                    occupy fa7 with temp_81_arithop_120_0
    fmul.s  fa7,fa6,fa5
              #                    free fa6
              #                    free fa5
              #                    free fa7
              #                     349  (nop) 
              #                     351  temp_83_arithop_120_0 = Div f32 temp_81_arithop_120_0, 24._0 
              #                    occupy fa7 with temp_81_arithop_120_0
              #                    occupy f8 with 24._0
              #                    occupy a4 with _anonymous_of_24._0_0
    li      a4, 1103101952
    fmv.w.x f8, a4
              #                    free a4
              #                    occupy f9 with temp_83_arithop_120_0
    fdiv.s  f9,fa7,f8
              #                    free fa7
              #                    free f8
              #                    free f9
              #                     352  (nop) 
              #                     355  temp_84_ret_of_my_cos_120_0 =  Call f32 my_cos_0(temp_83_arithop_120_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with i_115_1
              #                    store to i_115_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with i_115_1
              #                    occupy a2 with temp_89_cmp_118_0
              #                    store to temp_89_cmp_118_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_89_cmp_118_0
              #                    occupy f9 with temp_83_arithop_120_0
              #                    store to temp_83_arithop_120_0 in mem offset legal
    fsw     f9,28(sp)
              #                    release f9 with temp_83_arithop_120_0
              #                    occupy fa0 with x_113_0
              #                    store to x_113_0 in mem offset legal
    fsw     fa0,60(sp)
              #                    release fa0 with x_113_0
              #                    occupy fa1 with y_113_0
              #                    store to y_113_0 in mem offset legal
    fsw     fa1,56(sp)
              #                    release fa1 with y_113_0
              #                    occupy fa2 with sum_115_1
              #                    store to sum_115_1 in mem offset legal
    fsw     fa2,52(sp)
              #                    release fa2 with sum_115_1
              #                    occupy fa3 with temp_79__120_0
              #                    store to temp_79__120_0 in mem offset legal
    fsw     fa3,40(sp)
              #                    release fa3 with temp_79__120_0
              #                    occupy fa5 with temp_80_arithop_120_0
              #                    store to temp_80_arithop_120_0 in mem offset legal
    fsw     fa5,36(sp)
              #                    release fa5 with temp_80_arithop_120_0
              #                    occupy fa7 with temp_81_arithop_120_0
              #                    store to temp_81_arithop_120_0 in mem offset legal
    fsw     fa7,32(sp)
              #                    release fa7 with temp_81_arithop_120_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_83_arithop_120_0_0
              #                    load from temp_83_arithop_120_0 in mem


    flw     fa0,28(sp)
              #                    arg load ended


    call    my_cos
              #                     357  temp_85_ret_of_my_sin_120_0 =  Call f32 my_sin_0(temp_83_arithop_120_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_84_ret_of_my_cos_120_0
              #                    store to temp_84_ret_of_my_cos_120_0 in mem offset legal
    fsw     fa0,24(sp)
              #                    release fa0 with temp_84_ret_of_my_cos_120_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_83_arithop_120_0_0
              #                    load from temp_83_arithop_120_0 in mem


    flw     fa0,28(sp)
              #                    arg load ended


    call    my_sin
              #                     359  temp_86_ret_of_trace_120_0 =  Call f32 trace_0(x_113_0, y_113_0, temp_84_ret_of_my_cos_120_0, temp_85_ret_of_my_sin_120_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_85_ret_of_my_sin_120_0
              #                    store to temp_85_ret_of_my_sin_120_0 in mem offset legal
    fsw     fa0,20(sp)
              #                    release fa0 with temp_85_ret_of_my_sin_120_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_x_113_0_0
              #                    load from x_113_0 in mem


    flw     fa0,60(sp)
              #                    occupy fa1 with _anonymous_of_y_113_0_0
              #                    load from y_113_0 in mem


    flw     fa1,56(sp)
              #                    occupy fa2 with _anonymous_of_temp_84_ret_of_my_cos_120_0_0
              #                    load from temp_84_ret_of_my_cos_120_0 in mem


    flw     fa2,24(sp)
              #                    occupy fa3 with _anonymous_of_temp_85_ret_of_my_sin_120_0_0
              #                    load from temp_85_ret_of_my_sin_120_0 in mem


    flw     fa3,20(sp)
              #                    arg load ended


    call    trace
              #                     361  temp_87_arithop_120_0 = Add f32 sum_115_1, temp_86_ret_of_trace_120_0 
              #                    occupy fa1 with sum_115_1
              #                    load from sum_115_1 in mem


    flw     fa1,52(sp)
              #                    occupy fa0 with temp_86_ret_of_trace_120_0
              #                    occupy fa2 with temp_87_arithop_120_0
    fadd.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     362  (nop) 
              #                     364  temp_88_arithop_120_0 = Add i32 i_115_1, 1_0 
              #                    occupy a0 with i_115_1
              #                    load from i_115_1 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_88_arithop_120_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     365  (nop) 
              #                     473  sum_115_1 = f32 temp_87_arithop_120_0 
              #                    occupy fa2 with temp_87_arithop_120_0
              #                    occupy fa1 with sum_115_1
    fmv.s   fa1, fa2
              #                    free fa2
              #                    free fa1
              #                     474  i_115_1 = i32 temp_88_arithop_120_0 
              #                    occupy a2 with temp_88_arithop_120_0
              #                    occupy a0 with i_115_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_119 
              #                    occupy fa2 with temp_87_arithop_120_0
              #                    store to temp_87_arithop_120_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_87_arithop_120_0
              #                    occupy fa1 with sum_115_1
              #                    store to sum_115_1 in mem offset legal
    fsw     fa1,52(sp)
              #                    release fa1 with sum_115_1
              #                    occupy fa2 with sum_115_1
              #                    load from sum_115_1 in mem


    flw     fa2,52(sp)
              #                    occupy fa1 with y_113_0
              #                    load from y_113_0 in mem


    flw     fa1,56(sp)
              #                    occupy fa0 with temp_86_ret_of_trace_120_0
              #                    store to temp_86_ret_of_trace_120_0 in mem offset legal
    fsw     fa0,16(sp)
              #                    release fa0 with temp_86_ret_of_trace_120_0
              #                    occupy fa0 with x_113_0
              #                    load from x_113_0 in mem


    flw     fa0,60(sp)
              #                    occupy a0 with i_115_1
              #                    store to i_115_1 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with i_115_1
              #                    occupy a1 with i_115_1
              #                    load from i_115_1 in mem


    lw      a1,48(sp)
              #                    occupy a2 with temp_88_arithop_120_0
              #                    store to temp_88_arithop_120_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_88_arithop_120_0
    j       .while.head_119
              #                    regtab     a1:Freed { symidx: i_115_1, tracked: true } |     a2:Freed { symidx: temp_89_cmp_118_0, tracked: true } |     fa0:Freed { symidx: x_113_0, tracked: true } |     fa1:Freed { symidx: y_113_0, tracked: true } |     fa2:Freed { symidx: sum_115_1, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                     370  label while.exit_119: 
.while.exit_119:
              #                     595  untrack y_113_0 
              #                    occupy fa1 with y_113_0
              #                    release fa1 with y_113_0
              #                     594  untrack i_115_1 
              #                    occupy a1 with i_115_1
              #                    release a1 with i_115_1
              #                     593  untrack x_113_0 
              #                    occupy fa0 with x_113_0
              #                    release fa0 with x_113_0
              #                     330  (nop) 
              #                     332  temp_75_arithop_115_0 = Div f32 sum_115_1, 24._0 
              #                    occupy fa2 with sum_115_1
              #                    occupy fa0 with 24._0
              #                    occupy a0 with _anonymous_of_24._0_0
    li      a0, 1103101952
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with temp_75_arithop_115_0
    fdiv.s  fa1,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa1
              #                     596  untrack sum_115_1 
              #                    occupy fa2 with sum_115_1
              #                    release fa2 with sum_115_1
              #                     333  ret temp_75_arithop_115_0 
              #                    load from ra_sample_0 in mem
    ld      ra,72(sp)
              #                    load from s0_sample_0 in mem
    ld      s0,64(sp)
              #                    occupy fa1 with temp_75_arithop_115_0
              #                    store to temp_75_arithop_115_0 in mem offset legal
    fsw     fa1,44(sp)
              #                    release fa1 with temp_75_arithop_115_0
              #                    occupy fa0 with temp_75_arithop_115_0
              #                    load from temp_75_arithop_115_0 in mem


    flw     fa0,44(sp)
    addi    sp,sp,80
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     59   Define write_pgm_0 "" -> write_pgm_ret_0 
    .globl write_pgm
    .type write_pgm,@function
write_pgm:
              #                    mem layout:|ra_write_pgm:8 at 64|s0_write_pgm:8 at 56|y _s127 _i1:4 at 52|x _s140 _i1:4 at 48|temp_90_arithop _s140 _i0:4 at 44|temp_91_ _s144 _i0:4 at 40|temp_92_ _s144 _i0:4 at 36|temp_94_arithop _s144 _i0:4 at 32|temp_96_arithop _s144 _i0:4 at 28|temp_97_ret_of_sample _s144 _i0:4 at 24|temp_98_arithop _s144 _i0:4 at 20|temp_99_ _s144 _i0:4 at 16|p _s144 _i2:4 at 12|temp_100_arithop _s144 _i0:4 at 8|temp_101_cmp _s138 _i0:1 at 7|temp_102_cmp _s142 _i0:1 at 6|temp_103_cmp _s147 _i0:1 at 5|none:5 at 0
    addi    sp,sp,-72
              #                    store to ra_write_pgm_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_write_pgm_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                     383  alloc i32 [y_127] 
              #                     385  alloc i32 [x_140] 
              #                     387  alloc i32 [temp_90_arithop_140] 
              #                     390  alloc f32 [temp_91__144] 
              #                     393  alloc f32 [xx_144] 
              #                     394  alloc f32 [temp_92__144] 
              #                     397  alloc f32 [yy_144] 
              #                     398  alloc f32 [temp_93__144] 
              #                     400  alloc f32 [temp_94_arithop_144] 
              #                     402  alloc f32 [temp_95__144] 
              #                     404  alloc f32 [temp_96_arithop_144] 
              #                     406  alloc f32 [temp_97_ret_of_sample_144] 
              #                     408  alloc f32 [temp_98_arithop_144] 
              #                     410  alloc i32 [temp_99__144] 
              #                     413  alloc i32 [p_144] 
              #                     416  alloc i32 [temp_100_arithop_144] 
              #                     420  alloc i1 [temp_101_cmp_138] 
              #                     427  alloc i1 [temp_102_cmp_142] 
              #                     433  alloc i1 [temp_103_cmp_147] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     373   Call void putch_0(80_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_80_0_0
    li      a0, 80
              #                    arg load ended


    call    putch
              #                     374   Call void putch_0(50_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_50_0_0
    li      a0, 50
              #                    arg load ended


    call    putch
              #                     375   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     376   Call void putint_0(158_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_158_0_0
    li      a0, 158
              #                    arg load ended


    call    putint
              #                     377   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     378   Call void putint_0(160_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_160_0_0
    li      a0, 160
              #                    arg load ended


    call    putint
              #                     379   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     380   Call void putint_0(255_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_255_0_0
    li      a0, 255
              #                    arg load ended


    call    putint
              #                     381   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     382  (nop) 
              #                     476  y_127_1 = i32 0_0 
              #                    occupy a0 with y_127_1
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_139 
    j       .while.head_139
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     422  label while.head_139: 
.while.head_139:
              #                     421  temp_101_cmp_138_0 = icmp i32 Slt y_127_1, 160_0 
              #                    occupy a0 with y_127_1
              #                    occupy a1 with 160_0
    li      a1, 160
              #                    occupy a2 with temp_101_cmp_138_0
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     425  br i1 temp_101_cmp_138_0, label while.body_139, label while.exit_139 
              #                    occupy a2 with temp_101_cmp_138_0
              #                    free a2
              #                    occupy a2 with temp_101_cmp_138_0
    bnez    a2, .while.body_139
              #                    free a2
    j       .while.exit_139
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |     a2:Freed { symidx: temp_101_cmp_138_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     423  label while.body_139: 
.while.body_139:
              #                     384  (nop) 
              #                     395  temp_92__144_0 = sitofp i32 y_127_1 to f32 
              #                    occupy a0 with y_127_1
              #                    occupy fa0 with temp_92__144_0
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                     477  x_140_1 = i32 0_0 
              #                    occupy a1 with x_140_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_143 
    j       .while.head_143
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |     a1:Freed { symidx: x_140_1, tracked: true } |     a2:Freed { symidx: temp_101_cmp_138_0, tracked: true } |     fa0:Freed { symidx: temp_92__144_0, tracked: true } |  released_gpr_count:15,released_fpr_count:23
              #                     429  label while.head_143: 
.while.head_143:
              #                     428  temp_102_cmp_142_0 = icmp i32 Slt x_140_1, 158_0 
              #                    occupy a1 with x_140_1
              #                    occupy a3 with 158_0
    li      a3, 158
              #                    occupy a4 with temp_102_cmp_142_0
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     432  br i1 temp_102_cmp_142_0, label while.body_143, label while.exit_143 
              #                    occupy a4 with temp_102_cmp_142_0
              #                    free a4
              #                    occupy a4 with temp_102_cmp_142_0
    bnez    a4, .while.body_143
              #                    free a4
    j       .while.exit_143
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |     a1:Freed { symidx: x_140_1, tracked: true } |     a2:Freed { symidx: temp_101_cmp_138_0, tracked: true } |     a4:Freed { symidx: temp_102_cmp_142_0, tracked: true } |     fa0:Freed { symidx: temp_92__144_0, tracked: true } |  released_gpr_count:13,released_fpr_count:23
              #                     430  label while.body_143: 
.while.body_143:
              #                     391  temp_91__144_0 = sitofp i32 x_140_1 to f32 
              #                    occupy a1 with x_140_1
              #                    occupy fa1 with temp_91__144_0
    fcvt.s.w fa1,a1,rtz
              #                    free a1
              #                    free fa1
              #                     392  (nop) 
              #                     396  (nop) 
              #                     399  (nop) 
              #                     401  temp_94_arithop_144_0 = Div f32 temp_91__144_0, 158._0 
              #                    occupy fa1 with temp_91__144_0
              #                    occupy fa2 with 158._0
              #                    occupy a3 with _anonymous_of_158._0_0
    li      a3, 1126039552
    fmv.w.x fa2, a3
              #                    free a3
              #                    occupy fa3 with temp_94_arithop_144_0
    fdiv.s  fa3,fa1,fa2
              #                    free fa1
              #                    free fa2
              #                    free fa3
              #                     403  (nop) 
              #                     405  temp_96_arithop_144_0 = Div f32 temp_92__144_0, 160._0 
              #                    occupy fa0 with temp_92__144_0
              #                    occupy fa4 with 160._0
              #                    occupy a5 with _anonymous_of_160._0_0
    li      a5, 1126170624
    fmv.w.x fa4, a5
              #                    free a5
              #                    occupy fa5 with temp_96_arithop_144_0
    fdiv.s  fa5,fa0,fa4
              #                    free fa0
              #                    free fa4
              #                    free fa5
              #                     407  temp_97_ret_of_sample_144_0 =  Call f32 sample_0(temp_94_arithop_144_0, temp_96_arithop_144_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with y_127_1
              #                    store to y_127_1 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with y_127_1
              #                    occupy a1 with x_140_1
              #                    store to x_140_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with x_140_1
              #                    occupy a2 with temp_101_cmp_138_0
              #                    store to temp_101_cmp_138_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_101_cmp_138_0
              #                    occupy a4 with temp_102_cmp_142_0
              #                    store to temp_102_cmp_142_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_102_cmp_142_0
              #                    occupy fa0 with temp_92__144_0
              #                    store to temp_92__144_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_92__144_0
              #                    occupy fa1 with temp_91__144_0
              #                    store to temp_91__144_0 in mem offset legal
    fsw     fa1,40(sp)
              #                    release fa1 with temp_91__144_0
              #                    occupy fa3 with temp_94_arithop_144_0
              #                    store to temp_94_arithop_144_0 in mem offset legal
    fsw     fa3,32(sp)
              #                    release fa3 with temp_94_arithop_144_0
              #                    occupy fa5 with temp_96_arithop_144_0
              #                    store to temp_96_arithop_144_0 in mem offset legal
    fsw     fa5,28(sp)
              #                    release fa5 with temp_96_arithop_144_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_94_arithop_144_0_0
              #                    load from temp_94_arithop_144_0 in mem


    flw     fa0,32(sp)
              #                    occupy fa1 with _anonymous_of_temp_96_arithop_144_0_0
              #                    load from temp_96_arithop_144_0 in mem


    flw     fa1,28(sp)
              #                    arg load ended


    call    sample
              #                     409  temp_98_arithop_144_0 = Mul f32 temp_97_ret_of_sample_144_0, 255.0_0 
              #                    occupy fa0 with temp_97_ret_of_sample_144_0
              #                    occupy fa1 with 255.0_0
              #                    occupy a0 with _anonymous_of_255.0_0_0
    li      a0, 1132396544
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_98_arithop_144_0
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     411  temp_99__144_0 = fptosi f32 temp_98_arithop_144_0 to i32 
              #                    occupy fa2 with temp_98_arithop_144_0
              #                    occupy a1 with temp_99__144_0
    fcvt.w.s a1,fa2,rtz
              #                    free fa2
              #                    free a1
              #                     412  (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a1:Freed { symidx: temp_99__144_0, tracked: true } |     fa0:Freed { symidx: temp_97_ret_of_sample_144_0, tracked: true } |     fa2:Freed { symidx: temp_98_arithop_144_0, tracked: true } |  released_gpr_count:15,released_fpr_count:21
              #                          label L1_0: 
.L1_0:
              #                     434  temp_103_cmp_147_0 = icmp i32 Sgt temp_99__144_0, 255_0 
              #                    occupy a1 with temp_99__144_0
              #                    occupy a0 with 255_0
    li      a0, 255
              #                    occupy a2 with temp_103_cmp_147_0
    slt     a2,a0,a1
              #                    free a1
              #                    free a0
              #                    free a2
              #                     437  br i1 temp_103_cmp_147_0, label branch_true_148, label UP_41_0 
              #                    occupy a2 with temp_103_cmp_147_0
              #                    free a2
              #                    occupy a2 with temp_103_cmp_147_0
    bnez    a2, .branch_true_148
              #                    free a2
    j       .UP_41_0
              #                    regtab     a1:Freed { symidx: temp_99__144_0, tracked: true } |     a2:Freed { symidx: temp_103_cmp_147_0, tracked: true } |     fa0:Freed { symidx: temp_97_ret_of_sample_144_0, tracked: true } |     fa2:Freed { symidx: temp_98_arithop_144_0, tracked: true } |  released_gpr_count:13,released_fpr_count:21
              #                     435  label branch_true_148: 
.branch_true_148:
              #                     605  untrack temp_97_ret_of_sample_144_0 
              #                    occupy fa0 with temp_97_ret_of_sample_144_0
              #                    release fa0 with temp_97_ret_of_sample_144_0
              #                     604  untrack temp_103_cmp_147_0 
              #                    occupy a2 with temp_103_cmp_147_0
              #                    release a2 with temp_103_cmp_147_0
              #                     603  untrack temp_102_cmp_142_0 
              #                     602  untrack temp_96_arithop_144_0 
              #                     601  untrack temp_91__144_0 
              #                     600  untrack temp_99__144_0 
              #                    occupy a1 with temp_99__144_0
              #                    release a1 with temp_99__144_0
              #                     599  untrack temp_98_arithop_144_0 
              #                    occupy fa2 with temp_98_arithop_144_0
              #                    release fa2 with temp_98_arithop_144_0
              #                     598  untrack temp_94_arithop_144_0 
              #                     419  (nop) 
              #                     478  p_144_2 = i32 255_0 
              #                    occupy a0 with p_144_2
    li      a0, 255
              #                    free a0
              #                          jump label: branch_false_148 
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: p_144_2, tracked: true } |  released_gpr_count:14,released_fpr_count:23
              #                     436  label branch_false_148: 
.branch_false_148:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: p_144_2, tracked: true } |  released_gpr_count:14,released_fpr_count:23
              #                          label L2_0: 
.L2_0:
              #                     414   Call void putint_0(p_144_2) 
              #                    saved register dumping to mem
              #                    occupy a0 with p_144_2
              #                    store to p_144_2 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with p_144_2
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_144_2_0
              #                    load from p_144_2 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    putint
              #                     415   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     417  temp_100_arithop_144_0 = Add i32 x_140_1, 1_0 
              #                    occupy a0 with x_140_1
              #                    load from x_140_1 in mem


    lw      a0,48(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_100_arithop_144_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     418  (nop) 
              #                     479  x_140_1 = i32 temp_100_arithop_144_0 
              #                    occupy a2 with temp_100_arithop_144_0
              #                    occupy a0 with x_140_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_143 
              #                    occupy a0 with x_140_1
              #                    store to x_140_1 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with x_140_1
              #                    occupy a1 with x_140_1
              #                    load from x_140_1 in mem


    lw      a1,48(sp)
              #                    occupy fa0 with temp_92__144_0
              #                    load from temp_92__144_0 in mem


    flw     fa0,36(sp)
              #                    occupy a2 with temp_100_arithop_144_0
              #                    store to temp_100_arithop_144_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_100_arithop_144_0
              #                    occupy a2 with temp_101_cmp_138_0
              #                    load from temp_101_cmp_138_0 in mem


    lb      a2,7(sp)
              #                    occupy a0 with y_127_1
              #                    load from y_127_1 in mem


    lw      a0,52(sp)
    j       .while.head_143
              #                    regtab     a1:Freed { symidx: temp_99__144_0, tracked: true } |     a2:Freed { symidx: temp_103_cmp_147_0, tracked: true } |     fa0:Freed { symidx: temp_97_ret_of_sample_144_0, tracked: true } |     fa2:Freed { symidx: temp_98_arithop_144_0, tracked: true } |  released_gpr_count:13,released_fpr_count:21
              #                     475  label UP_41_0: 
.UP_41_0:
              #                     480  p_144_2 = i32 temp_99__144_0 
              #                    occupy a1 with temp_99__144_0
              #                    occupy a0 with p_144_2
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_false_148 
              #                    occupy a1 with temp_99__144_0
              #                    store to temp_99__144_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with temp_99__144_0
              #                    occupy fa2 with temp_98_arithop_144_0
              #                    store to temp_98_arithop_144_0 in mem offset legal
    fsw     fa2,20(sp)
              #                    release fa2 with temp_98_arithop_144_0
              #                    occupy fa0 with temp_97_ret_of_sample_144_0
              #                    store to temp_97_ret_of_sample_144_0 in mem offset legal
    fsw     fa0,24(sp)
              #                    release fa0 with temp_97_ret_of_sample_144_0
              #                    occupy a2 with temp_103_cmp_147_0
              #                    store to temp_103_cmp_147_0 in mem offset legal
    sb      a2,5(sp)
              #                    release a2 with temp_103_cmp_147_0
    j       .branch_false_148
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |     a1:Freed { symidx: x_140_1, tracked: true } |     a2:Freed { symidx: temp_101_cmp_138_0, tracked: true } |     a4:Freed { symidx: temp_102_cmp_142_0, tracked: true } |     fa0:Freed { symidx: temp_92__144_0, tracked: true } |  released_gpr_count:13,released_fpr_count:23
              #                     431  label while.exit_143: 
.while.exit_143:
              #                     386   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with y_127_1
              #                    store to y_127_1 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with y_127_1
              #                    occupy a1 with x_140_1
              #                    store to x_140_1 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with x_140_1
              #                    occupy a2 with temp_101_cmp_138_0
              #                    store to temp_101_cmp_138_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_101_cmp_138_0
              #                    occupy a4 with temp_102_cmp_142_0
              #                    store to temp_102_cmp_142_0 in mem offset legal
    sb      a4,6(sp)
              #                    release a4 with temp_102_cmp_142_0
              #                    occupy fa0 with temp_92__144_0
              #                    store to temp_92__144_0 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_92__144_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     388  temp_90_arithop_140_0 = Add i32 y_127_1, 1_0 
              #                    occupy a0 with y_127_1
              #                    load from y_127_1 in mem


    lw      a0,52(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_90_arithop_140_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     389  (nop) 
              #                     481  y_127_1 = i32 temp_90_arithop_140_0 
              #                    occupy a2 with temp_90_arithop_140_0
              #                    occupy a0 with y_127_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_139 
              #                    occupy a2 with temp_90_arithop_140_0
              #                    store to temp_90_arithop_140_0 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with temp_90_arithop_140_0
    j       .while.head_139
              #                    regtab     a0:Freed { symidx: y_127_1, tracked: true } |     a2:Freed { symidx: temp_101_cmp_138_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     424  label while.exit_139: 
.while.exit_139:
              #                     597  untrack y_127_1 
              #                    occupy a0 with y_127_1
              #                    release a0 with y_127_1
              #                     426  ret 
              #                    load from ra_write_pgm_0 in mem
    ld      ra,64(sp)
              #                    load from s0_write_pgm_0 in mem
    ld      s0,56(sp)
    addi    sp,sp,72
    ret
.section ___var
    .data
    .align 4
    .globl seed
              #                     44   global i32 seed_0 
    .type seed,@object
seed:
    .word 0
    .align 4
    .globl RAND_MAX
              #                     41   global i32 RAND_MAX_0 
    .type RAND_MAX,@object
RAND_MAX:
    .word 100000006
    .align 4
    .globl EPSILON
              #                     38   global f32 EPSILON_0 
    .type EPSILON,@object
EPSILON:
    .word 897988541
    .align 4
    .globl MAX_DISTANCE
              #                     35   global f32 MAX_DISTANCE_0 
    .type MAX_DISTANCE,@object
MAX_DISTANCE:
    .word 1073741824
    .align 4
    .globl MAX_STEP
              #                     32   global i32 MAX_STEP_0 
    .type MAX_STEP,@object
MAX_STEP:
    .word 10
    .align 4
    .globl TWO_PI
              #                     29   global f32 TWO_PI_0 
    .type TWO_PI,@object
TWO_PI:
    .word 1086918619
    .align 4
    .globl PI
              #                     26   global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl N
              #                     23   global i32 N_0 
    .type N,@object
N:
    .word 24
    .align 4
    .globl H
              #                     20   global i32 H_0 
    .type H,@object
H:
    .word 160
    .align 4
    .globl W
              #                     17   global i32 W_0 
    .type W,@object
W:
    .word 158
