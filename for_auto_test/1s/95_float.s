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
              #                     66   Define float_abs_0 "x_21_0," -> float_abs_ret_0 
    .globl float_abs
    .type float_abs,@function
float_abs:
              #                    mem layout:|ra_float_abs:8 at 24|s0_float_abs:8 at 16|x _s21 _i0:4 at 12|temp_5_ _s24 _i0:4 at 8|temp_7_cmp _s24 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-32
              #                    store to ra_float_abs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_float_abs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     77   alloc f32 [temp_5__24] 
              #                     80   alloc f32 [temp_6__24] 
              #                     82   alloc i1 [temp_7_cmp_24] 
              #                    regtab     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:19,released_fpr_count:23
              #                          label L12_0: 
.L12_0:
              #                     81   (nop) 
              #                     83   temp_7_cmp_24_0 = fcmp f32 Olt x_21_0, 0._0 
              #                    occupy fa0 with x_21_0
              #                    occupy fa1 with 0._0
              #                    occupy a0 with _anonymous_of_0._0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_7_cmp_24_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     86   br i1 temp_7_cmp_24_0, label branch_true_25, label branch_false_25 
              #                    occupy a1 with temp_7_cmp_24_0
              #                    free a1
              #                    occupy a1 with temp_7_cmp_24_0
    bnez    a1, .branch_true_25
              #                    free a1
    j       .branch_false_25
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24_0, tracked: true } |     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     84   label branch_true_25: 
.branch_true_25:
              #                     311  untrack temp_7_cmp_24_0 
              #                    occupy a1 with temp_7_cmp_24_0
              #                    release a1 with temp_7_cmp_24_0
              #                     78   temp_5__24_0 = Sub f32 0.0_0, x_21_0 
              #                    occupy fa1 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with x_21_0
              #                    occupy fa2 with temp_5__24_0
    fsub.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     314  untrack x_21_0 
              #                    occupy fa0 with x_21_0
              #                    release fa0 with x_21_0
              #                     79   ret temp_5__24_0 
              #                    load from ra_float_abs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_float_abs_0 in mem
    ld      s0,16(sp)
              #                    occupy fa2 with temp_5__24_0
              #                    store to temp_5__24_0 in mem offset legal
    fsw     fa2,8(sp)
              #                    release fa2 with temp_5__24_0
              #                    occupy fa0 with temp_5__24_0
              #                    load from temp_5__24_0 in mem


    flw     fa0,8(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24_0, tracked: true } |     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:17,released_fpr_count:22
              #                     85   label branch_false_25: 
.branch_false_25:
              #                     313  untrack temp_7_cmp_24_0 
              #                    occupy a1 with temp_7_cmp_24_0
              #                    release a1 with temp_7_cmp_24_0
              #                     312  untrack temp_5__24_0 
              #                          jump label: L13_0 
    j       .L13_0
              #                    regtab     fa0:Freed { symidx: x_21_0, tracked: true } |  released_gpr_count:18,released_fpr_count:22
              #                          label L13_0: 
.L13_0:
              #                     75   ret x_21_0 
              #                    load from ra_float_abs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_float_abs_0 in mem
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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     67   Define circle_area_0 "radius_28_0," -> circle_area_ret_0 
    .globl circle_area
    .type circle_area,@function
circle_area:
              #                    mem layout:|ra_circle_area:8 at 32|s0_circle_area:8 at 24|radius _s28 _i0:4 at 20|temp_8_arithop _s30 _i0:4 at 16|temp_9_ _s30 _i0:4 at 12|temp_10_arithop _s30 _i0:4 at 8|temp_12_arithop _s30 _i0:4 at 4|temp_14_arithop _s30 _i0:4 at 0
    addi    sp,sp,-40
              #                    store to ra_circle_area_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_circle_area_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     89   alloc i32 [temp_8_arithop_30] 
              #                     91   alloc f32 [temp_9__30] 
              #                     93   alloc f32 [temp_10_arithop_30] 
              #                     95   alloc f32 [temp_11__30] 
              #                     97   alloc f32 [temp_12_arithop_30] 
              #                     99   alloc f32 [temp_13__30] 
              #                     101  alloc f32 [temp_14_arithop_30] 
              #                    regtab     a0:Freed { symidx: radius_28_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L11_0: 
.L11_0:
              #                     90   temp_8_arithop_30_0 = Mul i32 radius_28_0, radius_28_0 
              #                    occupy a1 with temp_8_arithop_30_0
              #                    occupy a0 with radius_28_0
              #                    occupy a0 with radius_28_0
    mulw    a1,a0,a0
              #                    free a0
              #                    free a0
              #                    free a1
              #                     316  untrack radius_28_0 
              #                    occupy a0 with radius_28_0
              #                    release a0 with radius_28_0
              #                     92   temp_9__30_0 = sitofp i32 temp_8_arithop_30_0 to f32 
              #                    occupy a1 with temp_8_arithop_30_0
              #                    occupy fa0 with temp_9__30_0
    fcvt.s.w fa0,a1,rtz
              #                    free a1
              #                    free fa0
              #                     318  untrack temp_8_arithop_30_0 
              #                    occupy a1 with temp_8_arithop_30_0
              #                    release a1 with temp_8_arithop_30_0
              #                     94   temp_10_arithop_30_0 = Mul f32 temp_9__30_0, 3.1415927_0 
              #                    occupy fa0 with temp_9__30_0
              #                    occupy fa1 with 3.1415927_0
              #                    occupy a0 with _anonymous_of_3.1415927_0_0
    li      a0, 1078530011
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa2 with temp_10_arithop_30_0
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     315  untrack temp_9__30_0 
              #                    occupy fa0 with temp_9__30_0
              #                    release fa0 with temp_9__30_0
              #                     96   (nop) 
              #                     98   temp_12_arithop_30_0 = Mul f32 temp_10_arithop_30_0, 2._0 
              #                    occupy fa2 with temp_10_arithop_30_0
              #                    occupy fa0 with 2._0
              #                    occupy a1 with _anonymous_of_2._0_0
    li      a1, 1073741824
    fmv.w.x fa0, a1
              #                    free a1
              #                    occupy fa3 with temp_12_arithop_30_0
    fmul.s  fa3,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa3
              #                     319  untrack temp_10_arithop_30_0 
              #                    occupy fa2 with temp_10_arithop_30_0
              #                    release fa2 with temp_10_arithop_30_0
              #                     100  (nop) 
              #                     102  temp_14_arithop_30_0 = Div f32 temp_12_arithop_30_0, 2._0 
              #                    occupy fa3 with temp_12_arithop_30_0
              #                    found literal reg Some(fa0) already exist with 2._0
              #                    occupy fa0 with 2._0
              #                    occupy fa2 with temp_14_arithop_30_0
    fdiv.s  fa2,fa3,fa0
              #                    free fa3
              #                    free fa0
              #                    free fa2
              #                     317  untrack temp_12_arithop_30_0 
              #                    occupy fa3 with temp_12_arithop_30_0
              #                    release fa3 with temp_12_arithop_30_0
              #                     103  ret temp_14_arithop_30_0 
              #                    load from ra_circle_area_0 in mem
    ld      ra,32(sp)
              #                    load from s0_circle_area_0 in mem
    ld      s0,24(sp)
              #                    occupy fa2 with temp_14_arithop_30_0
              #                    store to temp_14_arithop_30_0 in mem offset legal
    fsw     fa2,0(sp)
              #                    release fa2 with temp_14_arithop_30_0
              #                    occupy fa0 with temp_14_arithop_30_0
              #                    load from temp_14_arithop_30_0 in mem


    flw     fa0,0(sp)
    addi    sp,sp,40
              #                    free fa0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     68   Define float_eq_0 "a_32_0,b_32_0," -> float_eq_ret_0 
    .globl float_eq
    .type float_eq,@function
float_eq:
              #                    mem layout:|ra_float_eq:8 at 32|s0_float_eq:8 at 24|a _s32 _i0:4 at 20|b _s32 _i0:4 at 16|temp_16_arithop _s35 _i0:4 at 12|temp_17_ret_of_float_abs _s35 _i0:4 at 8|temp_18_cmp _s35 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_float_eq_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_float_eq_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     108  alloc i32 [temp_15__38] 
              #                     111  alloc f32 [temp_16_arithop_35] 
              #                     113  alloc f32 [temp_17_ret_of_float_abs_35] 
              #                     115  alloc i1 [temp_18_cmp_35] 
              #                    regtab     fa0:Freed { symidx: a_32_0, tracked: true } |     fa1:Freed { symidx: b_32_0, tracked: true } |  released_gpr_count:19,released_fpr_count:22
              #                          label L10_0: 
.L10_0:
              #                     112  temp_16_arithop_35_0 = Sub f32 a_32_0, b_32_0 
              #                    occupy fa0 with a_32_0
              #                    occupy fa1 with b_32_0
              #                    occupy fa2 with temp_16_arithop_35_0
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     323  untrack a_32_0 
              #                    occupy fa0 with a_32_0
              #                    release fa0 with a_32_0
              #                     320  untrack b_32_0 
              #                    occupy fa1 with b_32_0
              #                    release fa1 with b_32_0
              #                     114  temp_17_ret_of_float_abs_35_0 =  Call f32 float_abs_0(temp_16_arithop_35_0) 
              #                    saved register dumping to mem
              #                    occupy fa2 with temp_16_arithop_35_0
              #                    store to temp_16_arithop_35_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_16_arithop_35_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_16_arithop_35_0_0
              #                    load from temp_16_arithop_35_0 in mem


    flw     fa0,12(sp)
              #                    arg load ended


    call    float_abs
              #                     322  untrack temp_16_arithop_35_0 
              #                     116  temp_18_cmp_35_0 = fcmp f32 Olt temp_17_ret_of_float_abs_35_0, 0.000001_0 
              #                    occupy fa0 with temp_17_ret_of_float_abs_35_0
              #                    occupy fa1 with 0.000001_0
              #                    occupy a0 with _anonymous_of_0.000001_0_0
    li      a0, 897988541
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_18_cmp_35_0
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                     321  untrack temp_17_ret_of_float_abs_35_0 
              #                    occupy fa0 with temp_17_ret_of_float_abs_35_0
              #                    release fa0 with temp_17_ret_of_float_abs_35_0
              #                     119  br i1 temp_18_cmp_35_0, label branch_true_36, label branch_false_36 
              #                    occupy a1 with temp_18_cmp_35_0
              #                    free a1
              #                    occupy a1 with temp_18_cmp_35_0
    bnez    a1, .branch_true_36
              #                    free a1
    j       .branch_false_36
              #                    regtab     a1:Freed { symidx: temp_18_cmp_35_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     117  label branch_true_36: 
.branch_true_36:
              #                     324  untrack temp_18_cmp_35_0 
              #                    occupy a1 with temp_18_cmp_35_0
              #                    release a1 with temp_18_cmp_35_0
              #                     109  (nop) 
              #                     110  ret 1_0 
              #                    load from ra_float_eq_0 in mem
    ld      ra,32(sp)
              #                    load from s0_float_eq_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_18_cmp_35_0, tracked: true } |  released_gpr_count:17,released_fpr_count:23
              #                     118  label branch_false_36: 
.branch_false_36:
              #                     325  untrack temp_18_cmp_35_0 
              #                    occupy a1 with temp_18_cmp_35_0
              #                    release a1 with temp_18_cmp_35_0
              #                     106  ret 0_0 
              #                    load from ra_float_eq_0 in mem
    ld      ra,32(sp)
              #                    load from s0_float_eq_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     69   Define error_0 "" -> error_ret_0 
    .globl error
    .type error,@function
error:
              #                    mem layout:|ra_error:8 at 8|s0_error:8 at 0
    addi    sp,sp,-16
              #                    store to ra_error_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_error_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L9_0: 
.L9_0:
              #                     123   Call void putch_0(101_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_101_0_0
    li      a0, 101
              #                    arg load ended


    call    putch
              #                     124   Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                     125   Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                     126   Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     127   Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                     128   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: exit_17 
    j       .exit_17
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     130  label exit_17: 
.exit_17:
              #                     129  ret 
              #                    load from ra_error_0 in mem
    ld      ra,8(sp)
              #                    load from s0_error_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     70   Define ok_0 "" -> ok_ret_0 
    .globl ok
    .type ok,@function
ok:
              #                    mem layout:|ra_ok:8 at 8|s0_ok:8 at 0
    addi    sp,sp,-16
              #                    store to ra_ok_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_ok_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L8_0: 
.L8_0:
              #                     131   Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                     132   Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                     133   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          jump label: exit_20 
    j       .exit_20
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     135  label exit_20: 
.exit_20:
              #                     134  ret 
              #                    load from ra_ok_0 in mem
    ld      ra,8(sp)
              #                    load from s0_ok_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     71   Define assert_0 "cond_54_0," -> assert_ret_0 
    .globl assert
    .type assert,@function
assert:
              #                    mem layout:|ra_assert:8 at 16|s0_assert:8 at 8|cond _s54 _i0:4 at 4|temp_19_booltrans _s57 _i0:1 at 3|temp_20_logicnot _s57 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_assert_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_assert_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     138  alloc i1 [temp_19_booltrans_57] 
              #                     140  alloc i1 [temp_20_logicnot_57] 
              #                    regtab     a0:Freed { symidx: cond_54_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     139  temp_19_booltrans_57_0 = icmp i32 Ne cond_54_0, 0_0 
              #                    occupy a0 with cond_54_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_19_booltrans_57_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     326  untrack cond_54_0 
              #                    occupy a0 with cond_54_0
              #                    release a0 with cond_54_0
              #                     141  temp_20_logicnot_57_0 = xor i1 temp_19_booltrans_57_0, true 
              #                    occupy a2 with temp_19_booltrans_57_0
              #                    occupy a0 with temp_20_logicnot_57_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     327  untrack temp_19_booltrans_57_0 
              #                    occupy a2 with temp_19_booltrans_57_0
              #                    release a2 with temp_19_booltrans_57_0
              #                     144  br i1 temp_20_logicnot_57_0, label branch_true_58, label branch_false_58 
              #                    occupy a0 with temp_20_logicnot_57_0
              #                    free a0
              #                    occupy a0 with temp_20_logicnot_57_0
    bnez    a0, .branch_true_58
              #                    free a0
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: temp_20_logicnot_57_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     142  label branch_true_58: 
.branch_true_58:
              #                     328  untrack temp_20_logicnot_57_0 
              #                    occupy a0 with temp_20_logicnot_57_0
              #                    release a0 with temp_20_logicnot_57_0
              #                     137   Call void error_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: gather_27 
    j       .gather_27
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     145  label gather_27: 
.gather_27:
              #                          jump label: exit_23 
    j       .exit_23
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     147  label exit_23: 
.exit_23:
              #                     146  ret 
              #                    load from ra_assert_0 in mem
    ld      ra,16(sp)
              #                    load from s0_assert_0 in mem
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
              #                    regtab     a0:Freed { symidx: temp_20_logicnot_57_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     143  label branch_false_58: 
.branch_false_58:
              #                     329  untrack temp_20_logicnot_57_0 
              #                    occupy a0 with temp_20_logicnot_57_0
              #                    release a0 with temp_20_logicnot_57_0
              #                     136   Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: gather_27 
    j       .gather_27
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     72   Define assert_not_0 "cond_63_0," -> assert_not_ret_0 
    .globl assert_not
    .type assert_not,@function
assert_not:
              #                    mem layout:|ra_assert_not:8 at 16|s0_assert_not:8 at 8|cond _s63 _i0:4 at 4|temp_21_ _s1818 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-24
              #                    store to ra_assert_not_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_assert_not_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     150  alloc i1 [temp_21__1818] 
              #                    regtab     a0:Freed { symidx: cond_63_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     151  temp_21__1818_0 = icmp i32 Ne cond_63_0, 0_0 
              #                    occupy a0 with cond_63_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_21__1818_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     330  untrack cond_63_0 
              #                    occupy a0 with cond_63_0
              #                    release a0 with cond_63_0
              #                     154  br i1 temp_21__1818_0, label branch_true_67, label branch_false_67 
              #                    occupy a2 with temp_21__1818_0
              #                    free a2
              #                    occupy a2 with temp_21__1818_0
    bnez    a2, .branch_true_67
              #                    free a2
    j       .branch_false_67
              #                    regtab     a2:Freed { symidx: temp_21__1818_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     152  label branch_true_67: 
.branch_true_67:
              #                     331  untrack temp_21__1818_0 
              #                    occupy a2 with temp_21__1818_0
              #                    release a2 with temp_21__1818_0
              #                     149   Call void error_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: gather_33 
    j       .gather_33
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     155  label gather_33: 
.gather_33:
              #                          jump label: exit_29 
    j       .exit_29
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     157  label exit_29: 
.exit_29:
              #                     156  ret 
              #                    load from ra_assert_not_0 in mem
    ld      ra,16(sp)
              #                    load from s0_assert_not_0 in mem
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
              #                    regtab     a2:Freed { symidx: temp_21__1818_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     153  label branch_false_67: 
.branch_false_67:
              #                     332  untrack temp_21__1818_0 
              #                    occupy a2 with temp_21__1818_0
              #                    release a2 with temp_21__1818_0
              #                     148   Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: gather_33 
    j       .gather_33
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     73   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 208|s0_main:8 at 200|temp_22_ret_of_float_eq _s73 _i0:4 at 196|temp_23_ret_of_float_eq _s73 _i0:4 at 192|temp_24_ret_of_float_eq _s73 _i0:4 at 188|temp_26_ret_of_circle_area _s73 _i0:4 at 184|temp_27_ret_of_circle_area _s73 _i0:4 at 180|temp_28_ret_of_float_eq _s73 _i0:4 at 176|temp_29_ret_of_float_eq _s73 _i0:4 at 172|i _s73 _i1:4 at 168|p _s73 _i1:4 at 164|none:4 at 160|temp_30_array_init_ptr:8 at 152|temp_31_array_init_ptr:8 at 144|temp_32_array_init_ptr:8 at 136|arr:40 at 96|temp_33_ele_ptr_of_arr_73:8 at 88|temp_34_ret_of_getfarray _s73 _i0:4 at 84|none:4 at 80|temp_35_ele_ptr_of_arr_73:8 at 72|temp_36_ret_of_getfloat _s96 _i0:4 at 68|temp_37_arithop _s96 _i0:4 at 64|temp_38_arithop _s96 _i0:4 at 60|temp_39_ _s96 _i0:4 at 56|temp_40_ret_of_circle_area _s96 _i0:4 at 52|none:4 at 48|temp_41_ptr_of_arr_73:8 at 40|temp_42_ptr_of_arr_73:8 at 32|temp_43_ele_of_arr_73 _s96 _i0:4 at 28|temp_44_arithop _s96 _i0:4 at 24|temp_45_ _s96 _i0:4 at 20|temp_46_ _s96 _i0:4 at 16|temp_47_arithop _s96 _i0:4 at 12|temp_48_ _s96 _i0:4 at 8|temp_49_arithop _s96 _i0:4 at 4|temp_53_booltrans _s82 _i0:1 at 3|temp_54_logicnot _s82 _i0:1 at 2|temp_59_cmp _s94 _i0:1 at 1|none:1 at 0
    addi    sp,sp,-216
              #                    store to ra_main_0 in mem offset legal
    sd      ra,208(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,200(sp)
    addi    s0,sp,216
              #                     158  alloc i32 [temp_22_ret_of_float_eq_73] 
              #                     161  alloc i32 [temp_23_ret_of_float_eq_73] 
              #                     164  alloc i32 [temp_24_ret_of_float_eq_73] 
              #                     167  alloc i32 [temp_25__73] 
              #                     169  alloc f32 [temp_26_ret_of_circle_area_73] 
              #                     171  alloc f32 [temp_27_ret_of_circle_area_73] 
              #                     173  alloc i32 [temp_28_ret_of_float_eq_73] 
              #                     176  alloc i32 [temp_29_ret_of_float_eq_73] 
              #                     180  alloc i32 [i_73] 
              #                     182  alloc i32 [p_73] 
              #                     184  alloc ptr->f32 [temp_30_array_init_ptr_73] 
              #                     187  alloc ptr->f32 [temp_31_array_init_ptr_73] 
              #                     191  alloc ptr->f32 [temp_32_array_init_ptr_73] 
              #                     195  alloc Array:f32:[Some(10_0)] [arr_73] 
              #                     196  alloc ptr->f32 [temp_33_ele_ptr_of_arr_73_73] 
              #                     198  alloc i32 [temp_34_ret_of_getfarray_73] 
              #                     201  alloc i32 [len_73] 
              #                     202  alloc ptr->f32 [temp_35_ele_ptr_of_arr_73_73] 
              #                     207  alloc f32 [temp_36_ret_of_getfloat_96] 
              #                     210  alloc f32 [input_96] 
              #                     211  alloc f32 [temp_37_arithop_96] 
              #                     213  alloc f32 [temp_38_arithop_96] 
              #                     216  alloc f32 [area_96] 
              #                     217  alloc i32 [temp_39__96] 
              #                     219  alloc f32 [temp_40_ret_of_circle_area_96] 
              #                     222  alloc f32 [area_trunc_96] 
              #                     223  alloc ptr->f32 [temp_41_ptr_of_arr_73_96] 
              #                     225  alloc ptr->f32 [temp_42_ptr_of_arr_73_96] 
              #                     227  alloc f32 [temp_43_ele_of_arr_73_96] 
              #                     230  alloc f32 [temp_44_arithop_96] 
              #                     236  alloc i32 [temp_45__96] 
              #                     240  alloc f32 [temp_46__96] 
              #                     242  alloc f32 [temp_47_arithop_96] 
              #                     244  alloc i32 [temp_48__96] 
              #                     247  alloc i32 [temp_49_arithop_96] 
              #                     254  alloc i1 [temp_50__2374] 
              #                     259  alloc i1 [temp_51_booltrans_82] 
              #                     261  alloc i1 [temp_52_logicnot_82] 
              #                     263  alloc i1 [temp_53_booltrans_82] 
              #                     265  alloc i1 [temp_54_logicnot_82] 
              #                     270  alloc i1 [temp_55_f32_to_bool_85] 
              #                     272  alloc i1 [temp_56_i32_to_bool_85] 
              #                     280  alloc i1 [temp_57_i32_to_bool_88] 
              #                     282  alloc i1 [temp_58_f32_to_bool_88] 
              #                     290  alloc i1 [temp_59_cmp_94] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     159  temp_22_ret_of_float_eq_73_0 =  Call i32 float_eq_0(0.078125_0, -33000._0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_0.078125_0_0
              #                    occupy a0 with _anonymous_of_0.078125_0_0
    li      a0, 1033895936
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with _anonymous_of_-33000._0_0
              #                    occupy a1 with _anonymous_of_-33000._0_0
    li      a1, 3338725376
    fmv.w.x fa1, a1
              #                    free a1
              #                    arg load ended


    call    float_eq
              #                     160   Call void assert_not_0(temp_22_ret_of_float_eq_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_ret_of_float_eq_73_0
              #                    store to temp_22_ret_of_float_eq_73_0 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_22_ret_of_float_eq_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_22_ret_of_float_eq_73_0_0
              #                    load from temp_22_ret_of_float_eq_73_0 in mem


    lw      a0,196(sp)
              #                    arg load ended


    call    assert_not
              #                     333  untrack temp_22_ret_of_float_eq_73_0 
              #                     162  temp_23_ret_of_float_eq_73_0 =  Call i32 float_eq_0(95.03319_0, 34.55752_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_95.03319_0_0
              #                    occupy a0 with _anonymous_of_95.03319_0_0
    li      a0, 1119752446
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with _anonymous_of_34.55752_0_0
              #                    occupy a1 with _anonymous_of_34.55752_0_0
    li      a1, 1107966695
    fmv.w.x fa1, a1
              #                    free a1
              #                    arg load ended


    call    float_eq
              #                     163   Call void assert_not_0(temp_23_ret_of_float_eq_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_23_ret_of_float_eq_73_0
              #                    store to temp_23_ret_of_float_eq_73_0 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_23_ret_of_float_eq_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_ret_of_float_eq_73_0_0
              #                    load from temp_23_ret_of_float_eq_73_0 in mem


    lw      a0,192(sp)
              #                    arg load ended


    call    assert_not
              #                     335  untrack temp_23_ret_of_float_eq_73_0 
              #                     165  temp_24_ret_of_float_eq_73_0 =  Call i32 float_eq_0(34.55752_0, 34.55752_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_34.55752_0_0
              #                    occupy a0 with _anonymous_of_34.55752_0_0
    li      a0, 1107966695
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with _anonymous_of_34.55752_0_0
              #                    occupy a1 with _anonymous_of_34.55752_0_0
    li      a1, 1107966695
    fmv.w.x fa1, a1
              #                    free a1
              #                    arg load ended


    call    float_eq
              #                     166   Call void assert_0(temp_24_ret_of_float_eq_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_float_eq_73_0
              #                    store to temp_24_ret_of_float_eq_73_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_24_ret_of_float_eq_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_ret_of_float_eq_73_0_0
              #                    load from temp_24_ret_of_float_eq_73_0 in mem


    lw      a0,188(sp)
              #                    arg load ended


    call    assert
              #                     337  untrack temp_24_ret_of_float_eq_73_0 
              #                     168  (nop) 
              #                     170  temp_26_ret_of_circle_area_73_0 =  Call f32 circle_area_0(5_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    circle_area
              #                     172  temp_27_ret_of_circle_area_73_0 =  Call f32 circle_area_0(5_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_26_ret_of_circle_area_73_0
              #                    store to temp_26_ret_of_circle_area_73_0 in mem offset legal
    fsw     fa0,184(sp)
              #                    release fa0 with temp_26_ret_of_circle_area_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_5_0_0
    li      a0, 5
              #                    arg load ended


    call    circle_area
              #                     174  temp_28_ret_of_float_eq_73_0 =  Call i32 float_eq_0(temp_26_ret_of_circle_area_73_0, temp_27_ret_of_circle_area_73_0) 
              #                    saved register dumping to mem
              #                    occupy fa0 with temp_27_ret_of_circle_area_73_0
              #                    store to temp_27_ret_of_circle_area_73_0 in mem offset legal
    fsw     fa0,180(sp)
              #                    release fa0 with temp_27_ret_of_circle_area_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_26_ret_of_circle_area_73_0_0
              #                    load from temp_26_ret_of_circle_area_73_0 in mem


    flw     fa0,184(sp)
              #                    occupy fa1 with _anonymous_of_temp_27_ret_of_circle_area_73_0_0
              #                    load from temp_27_ret_of_circle_area_73_0 in mem


    flw     fa1,180(sp)
              #                    arg load ended


    call    float_eq
              #                     339  untrack temp_26_ret_of_circle_area_73_0 
              #                     334  untrack temp_27_ret_of_circle_area_73_0 
              #                     175   Call void assert_0(temp_28_ret_of_float_eq_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_28_ret_of_float_eq_73_0
              #                    store to temp_28_ret_of_float_eq_73_0 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_28_ret_of_float_eq_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_ret_of_float_eq_73_0_0
              #                    load from temp_28_ret_of_float_eq_73_0 in mem


    lw      a0,176(sp)
              #                    arg load ended


    call    assert
              #                     336  untrack temp_28_ret_of_float_eq_73_0 
              #                     177  temp_29_ret_of_float_eq_73_0 =  Call i32 float_eq_0(233._0, 4095._0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_233._0_0
              #                    occupy a0 with _anonymous_of_233._0_0
    li      a0, 1130954752
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with _anonymous_of_4095._0_0
              #                    occupy a1 with _anonymous_of_4095._0_0
    li      a1, 1166012416
    fmv.w.x fa1, a1
              #                    free a1
              #                    arg load ended


    call    float_eq
              #                     178   Call void assert_not_0(temp_29_ret_of_float_eq_73_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_29_ret_of_float_eq_73_0
              #                    store to temp_29_ret_of_float_eq_73_0 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_29_ret_of_float_eq_73_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_ret_of_float_eq_73_0_0
              #                    load from temp_29_ret_of_float_eq_73_0 in mem


    lw      a0,172(sp)
              #                    arg load ended


    call    assert_not
              #                     338  untrack temp_29_ret_of_float_eq_73_0 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     255  (nop) 
              #                          jump label: branch_true_80 
    j       .branch_true_80
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     256  label branch_true_80: 
.branch_true_80:
              #                     253   Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_false_80 
    j       .branch_false_80
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     257  label branch_false_80: 
.branch_false_80:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     260  (nop) 
              #                     262  (nop) 
              #                     264  temp_53_booltrans_82_0 = icmp i1 Ne false_0, 0_0 
              #                    occupy a0 with false_0
    li      a0, 0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_53_booltrans_82_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     266  temp_54_logicnot_82_0 = xor i1 temp_53_booltrans_82_0, true 
              #                    occupy a2 with temp_53_booltrans_82_0
              #                    occupy a3 with temp_54_logicnot_82_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     340  untrack temp_53_booltrans_82_0 
              #                    occupy a2 with temp_53_booltrans_82_0
              #                    release a2 with temp_53_booltrans_82_0
              #                     269  br i1 temp_54_logicnot_82_0, label branch_true_83, label branch_false_83 
              #                    occupy a3 with temp_54_logicnot_82_0
              #                    free a3
              #                    occupy a3 with temp_54_logicnot_82_0
    bnez    a3, .branch_true_83
              #                    free a3
    j       .branch_false_83
              #                    regtab     a3:Freed { symidx: temp_54_logicnot_82_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     267  label branch_true_83: 
.branch_true_83:
              #                     341  untrack temp_54_logicnot_82_0 
              #                    occupy a3 with temp_54_logicnot_82_0
              #                    release a3 with temp_54_logicnot_82_0
              #                     252   Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_false_83 
              #                    occupy a3 with temp_54_logicnot_82_0
              #                    load from temp_54_logicnot_82_0 in mem


    lb      a3,2(sp)
    j       .branch_false_83
              #                    regtab     a3:Freed { symidx: temp_54_logicnot_82_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     268  label branch_false_83: 
.branch_false_83:
              #                     342  untrack temp_54_logicnot_82_0 
              #                    occupy a3 with temp_54_logicnot_82_0
              #                    release a3 with temp_54_logicnot_82_0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     271  (nop) 
              #                          jump label: branch_short_circuit_c_false_486 
    j       .branch_short_circuit_c_false_486
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     276  label branch_short_circuit_p_true_486: 
.branch_short_circuit_p_true_486:
              #                     273  (nop) 
              #                          jump label: branch_short_circuit_c_true_486 
    j       .branch_short_circuit_c_true_486
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     274  label branch_short_circuit_c_true_486: 
.branch_short_circuit_c_true_486:
              #                     251   Call void error_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: branch_short_circuit_c_false_486 
    j       .branch_short_circuit_c_false_486
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     275  label branch_short_circuit_c_false_486: 
.branch_short_circuit_c_false_486:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     281  (nop) 
              #                          jump label: branch_short_circuit_p_false_494 
    j       .branch_short_circuit_p_false_494
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     284  label branch_short_circuit_c_true_494: 
.branch_short_circuit_c_true_494:
              #                     250   Call void ok_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_short_circuit_c_false_494 
    j       .branch_short_circuit_c_false_494
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     285  label branch_short_circuit_c_false_494: 
.branch_short_circuit_c_false_494:
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     179  (nop) 
              #                     181  (nop) 
              #                     183   
              #                     185  temp_30_array_init_ptr_73 = GEP arr_73_0:Array:f32:[Some(10_0)] [] 
              #                    occupy a0 with temp_30_array_init_ptr_73
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
              #                    free a0
              #                     186   Call void memset_0(temp_30_array_init_ptr_73, 0_0, 40_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_30_array_init_ptr_73
              #                    store to temp_30_array_init_ptr_73 in mem offset legal
    sd      a0,152(sp)
              #                    release a0 with temp_30_array_init_ptr_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_array_init_ptr_73_0
              #                    load from temp_30_array_init_ptr_73 in mem
    ld      a0,152(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_40_0_0
    li      a2, 40
              #                    arg load ended


    call    memset
              #                     344  untrack temp_30_array_init_ptr_73 
              #                     298  mu arr_73_0:186 
              #                     299  arr_73_1 = chi arr_73_0:186 
              #                     188  temp_31_array_init_ptr_73 = GEP arr_73_1:Array:f32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a0 with temp_31_array_init_ptr_73
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a1, 1
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
              #                    free a0
              #                     189  store 2._0:f32 temp_31_array_init_ptr_73:ptr->f32 
              #                    occupy a0 with temp_31_array_init_ptr_73
              #                    occupy fa0 with 2._0
              #                    occupy a2 with _anonymous_of_2._0_0
    li      a2, 1073741824
    fmv.w.x fa0, a2
              #                    free a2
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                     346  untrack temp_31_array_init_ptr_73 
              #                    occupy a0 with temp_31_array_init_ptr_73
              #                    release a0 with temp_31_array_init_ptr_73
              #                     190  arr_73_2 = chi arr_73_1:189 
              #                     192  temp_32_array_init_ptr_73 = GEP arr_73_2:Array:f32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a0 with temp_32_array_init_ptr_73
    li      a0, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a3, 0
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
              #                    free a0
              #                     193  store 1._0:f32 temp_32_array_init_ptr_73:ptr->f32 
              #                    occupy a0 with temp_32_array_init_ptr_73
              #                    occupy fa1 with 1._0
              #                    occupy a4 with _anonymous_of_1._0_0
    li      a4, 1065353216
    fmv.w.x fa1, a4
              #                    free a4
    fsw     fa1,0(a0)
              #                    free fa1
              #                    free a0
              #                     343  untrack temp_32_array_init_ptr_73 
              #                    occupy a0 with temp_32_array_init_ptr_73
              #                    release a0 with temp_32_array_init_ptr_73
              #                     194  arr_73_3 = chi arr_73_2:193 
              #                     197  temp_33_ele_ptr_of_arr_73_73 = GEP arr_73_3:Array:f32:[Some(10_0)] [] 
              #                    occupy a0 with temp_33_ele_ptr_of_arr_73_73
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
              #                    free a0
              #                     199  temp_34_ret_of_getfarray_73_0 =  Call i32 getfarray_0(temp_33_ele_ptr_of_arr_73_73) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_33_ele_ptr_of_arr_73_73
              #                    store to temp_33_ele_ptr_of_arr_73_73 in mem offset legal
    sd      a0,88(sp)
              #                    release a0 with temp_33_ele_ptr_of_arr_73_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_ele_ptr_of_arr_73_73_0
              #                    load from temp_33_ele_ptr_of_arr_73_73 in mem
    ld      a0,88(sp)
              #                    arg load ended


    call    getfarray
              #                     345  untrack temp_33_ele_ptr_of_arr_73_73 
              #                     300  mu arr_73_3:199 
              #                     301  arr_73_4 = chi arr_73_3:199 
              #                     200  (nop) 
              #                     307  i_73_1 = i32 1_0 
              #                    occupy a1 with i_73_1
    li      a1, 1
              #                    free a1
              #                     308  p_73_1 = i32 0_0 
              #                    occupy a2 with p_73_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_34_ret_of_getfarray_73_0, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: p_73_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     292  label while.head_95: 
.while.head_95:
              #                     291  temp_59_cmp_94_0 = icmp i32 Slt i_73_1, 1000000000_0 
              #                    occupy a1 with i_73_1
              #                    occupy a3 with 1000000000_0
    li      a3, 1000000000
              #                    occupy a4 with temp_59_cmp_94_0
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                     295  br i1 temp_59_cmp_94_0, label while.body_95, label while.exit_95 
              #                    occupy a4 with temp_59_cmp_94_0
              #                    free a4
              #                    occupy a4 with temp_59_cmp_94_0
    bnez    a4, .while.body_95
              #                    free a4
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: temp_34_ret_of_getfarray_73_0, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: p_73_1, tracked: true } |     a4:Freed { symidx: temp_59_cmp_94_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     293  label while.body_95: 
.while.body_95:
              #                     208  temp_36_ret_of_getfloat_96_0 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_34_ret_of_getfarray_73_0
              #                    store to temp_34_ret_of_getfarray_73_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_34_ret_of_getfarray_73_0
              #                    occupy a1 with i_73_1
              #                    store to i_73_1 in mem offset legal
    sw      a1,168(sp)
              #                    release a1 with i_73_1
              #                    occupy a2 with p_73_1
              #                    store to p_73_1 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with p_73_1
              #                    occupy a4 with temp_59_cmp_94_0
              #                    store to temp_59_cmp_94_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_59_cmp_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                     209  (nop) 
              #                     212  temp_37_arithop_96_0 = Mul f32 3.1415927_0, temp_36_ret_of_getfloat_96_0 
              #                    occupy fa1 with 3.1415927_0
              #                    occupy a0 with _anonymous_of_3.1415927_0_0
    li      a0, 1078530011
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy fa0 with temp_36_ret_of_getfloat_96_0
              #                    occupy fa2 with temp_37_arithop_96_0
    fmul.s  fa2,fa1,fa0
              #                    free fa1
              #                    free fa0
              #                    free fa2
              #                     214  temp_38_arithop_96_0 = Mul f32 temp_37_arithop_96_0, temp_36_ret_of_getfloat_96_0 
              #                    occupy fa2 with temp_37_arithop_96_0
              #                    occupy fa0 with temp_36_ret_of_getfloat_96_0
              #                    occupy fa3 with temp_38_arithop_96_0
    fmul.s  fa3,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa3
              #                     215  (nop) 
              #                     218  temp_39__96_0 = fptosi f32 temp_36_ret_of_getfloat_96_0 to i32 
              #                    occupy fa0 with temp_36_ret_of_getfloat_96_0
              #                    occupy a1 with temp_39__96_0
    fcvt.w.s a1,fa0,rtz
              #                    free fa0
              #                    free a1
              #                     220  temp_40_ret_of_circle_area_96_0 =  Call f32 circle_area_0(temp_39__96_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_39__96_0
              #                    store to temp_39__96_0 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with temp_39__96_0
              #                    occupy fa0 with temp_36_ret_of_getfloat_96_0
              #                    store to temp_36_ret_of_getfloat_96_0 in mem offset legal
    fsw     fa0,68(sp)
              #                    release fa0 with temp_36_ret_of_getfloat_96_0
              #                    occupy fa2 with temp_37_arithop_96_0
              #                    store to temp_37_arithop_96_0 in mem offset legal
    fsw     fa2,64(sp)
              #                    release fa2 with temp_37_arithop_96_0
              #                    occupy fa3 with temp_38_arithop_96_0
              #                    store to temp_38_arithop_96_0 in mem offset legal
    fsw     fa3,60(sp)
              #                    release fa3 with temp_38_arithop_96_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39__96_0_0
              #                    load from temp_39__96_0 in mem


    lw      a0,56(sp)
              #                    arg load ended


    call    circle_area
              #                     221  (nop) 
              #                     224  temp_41_ptr_of_arr_73_96 = GEP arr_73_5:Array:f32:[Some(10_0)] [Some(p_73_1)] 
              #                    occupy a0 with temp_41_ptr_of_arr_73_96
    li      a0, 0
              #                    occupy a1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a2 with p_73_1
              #                    load from p_73_1 in mem


    lw      a2,164(sp)
    mv      a1, a2
              #                    free a2
    add     a0,a0,a1
              #                    free a1
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,96
              #                    free a0
              #                     226  (nop) 
              #                     228  temp_43_ele_of_arr_73_96_0 = load temp_41_ptr_of_arr_73_96:ptr->f32 
              #                    occupy a0 with temp_41_ptr_of_arr_73_96
              #                    occupy fa1 with temp_43_ele_of_arr_73_96_0
    flw     fa1,0(a0)
              #                    free fa1
              #                    free a0
              #                     229  mu arr_73_5:228 
              #                     231  temp_44_arithop_96_0 = Add f32 temp_43_ele_of_arr_73_96_0, temp_36_ret_of_getfloat_96_0 
              #                    occupy fa1 with temp_43_ele_of_arr_73_96_0
              #                    occupy fa2 with temp_36_ret_of_getfloat_96_0
              #                    load from temp_36_ret_of_getfloat_96_0 in mem


    flw     fa2,68(sp)
              #                    occupy fa3 with temp_44_arithop_96_0
    fadd.s  fa3,fa1,fa2
              #                    free fa1
              #                    free fa2
              #                    free fa3
              #                     232  store temp_44_arithop_96_0:f32 temp_41_ptr_of_arr_73_96:ptr->f32 
              #                    occupy a0 with temp_41_ptr_of_arr_73_96
              #                    occupy fa3 with temp_44_arithop_96_0
    fsw     fa3,0(a0)
              #                    free fa3
              #                    free a0
              #                     233  arr_73_6 = chi arr_73_5:232 
              #                     234   Call void putfloat_0(temp_38_arithop_96_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_41_ptr_of_arr_73_96
              #                    store to temp_41_ptr_of_arr_73_96 in mem offset legal
    sd      a0,40(sp)
              #                    release a0 with temp_41_ptr_of_arr_73_96
              #                    occupy a2 with p_73_1
              #                    store to p_73_1 in mem offset legal
    sw      a2,164(sp)
              #                    release a2 with p_73_1
              #                    occupy fa0 with temp_40_ret_of_circle_area_96_0
              #                    store to temp_40_ret_of_circle_area_96_0 in mem offset legal
    fsw     fa0,52(sp)
              #                    release fa0 with temp_40_ret_of_circle_area_96_0
              #                    occupy fa1 with temp_43_ele_of_arr_73_96_0
              #                    store to temp_43_ele_of_arr_73_96_0 in mem offset legal
    fsw     fa1,28(sp)
              #                    release fa1 with temp_43_ele_of_arr_73_96_0
              #                    occupy fa2 with temp_36_ret_of_getfloat_96_0
              #                    store to temp_36_ret_of_getfloat_96_0 in mem offset legal
    fsw     fa2,68(sp)
              #                    release fa2 with temp_36_ret_of_getfloat_96_0
              #                    occupy fa3 with temp_44_arithop_96_0
              #                    store to temp_44_arithop_96_0 in mem offset legal
    fsw     fa3,24(sp)
              #                    release fa3 with temp_44_arithop_96_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_38_arithop_96_0_0
              #                    load from temp_38_arithop_96_0 in mem


    flw     fa0,60(sp)
              #                    arg load ended


    call    putfloat
              #                     235   Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     237  temp_45__96_0 = fptosi f32 temp_40_ret_of_circle_area_96_0 to i32 
              #                    occupy fa0 with temp_40_ret_of_circle_area_96_0
              #                    load from temp_40_ret_of_circle_area_96_0 in mem


    flw     fa0,52(sp)
              #                    occupy a0 with temp_45__96_0
    fcvt.w.s a0,fa0,rtz
              #                    free fa0
              #                    free a0
              #                     238   Call void putint_0(temp_45__96_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_45__96_0
              #                    store to temp_45__96_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_45__96_0
              #                    occupy fa0 with temp_40_ret_of_circle_area_96_0
              #                    store to temp_40_ret_of_circle_area_96_0 in mem offset legal
    fsw     fa0,52(sp)
              #                    release fa0 with temp_40_ret_of_circle_area_96_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_45__96_0_0
              #                    load from temp_45__96_0 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    putint
              #                     239   Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     241  temp_46__96_0 = sitofp i32 i_73_1 to f32 
              #                    occupy a0 with i_73_1
              #                    load from i_73_1 in mem


    lw      a0,168(sp)
              #                    occupy fa0 with temp_46__96_0
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                     243  temp_47_arithop_96_0 = Mul f32 temp_46__96_0, 10._0 
              #                    occupy fa0 with temp_46__96_0
              #                    occupy fa1 with 10._0
              #                    occupy a1 with _anonymous_of_10._0_0
    li      a1, 1092616192
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy fa2 with temp_47_arithop_96_0
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                     245  temp_48__96_0 = fptosi f32 temp_47_arithop_96_0 to i32 
              #                    occupy fa2 with temp_47_arithop_96_0
              #                    occupy a2 with temp_48__96_0
    fcvt.w.s a2,fa2,rtz
              #                    free fa2
              #                    free a2
              #                     246  (nop) 
              #                     248  temp_49_arithop_96_0 = Add i32 p_73_1, 1_0 
              #                    occupy a3 with p_73_1
              #                    load from p_73_1 in mem


    lw      a3,164(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_49_arithop_96_0
    ADDW    a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                     249  (nop) 
              #                     309  i_73_1 = i32 temp_48__96_0 
              #                    occupy a2 with temp_48__96_0
              #                    occupy a0 with i_73_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     310  p_73_1 = i32 temp_49_arithop_96_0 
              #                    occupy a5 with temp_49_arithop_96_0
              #                    occupy a3 with p_73_1
    mv      a3, a5
              #                    free a5
              #                    free a3
              #                          jump label: while.head_95 
              #                    occupy a2 with temp_48__96_0
              #                    store to temp_48__96_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_48__96_0
              #                    occupy a3 with p_73_1
              #                    store to p_73_1 in mem offset legal
    sw      a3,164(sp)
              #                    release a3 with p_73_1
              #                    occupy a2 with p_73_1
              #                    load from p_73_1 in mem


    lw      a2,164(sp)
              #                    occupy a0 with i_73_1
              #                    store to i_73_1 in mem offset legal
    sw      a0,168(sp)
              #                    release a0 with i_73_1
              #                    occupy a0 with temp_34_ret_of_getfarray_73_0
              #                    load from temp_34_ret_of_getfarray_73_0 in mem


    lw      a0,84(sp)
              #                    occupy fa0 with temp_46__96_0
              #                    store to temp_46__96_0 in mem offset legal
    fsw     fa0,16(sp)
              #                    release fa0 with temp_46__96_0
              #                    occupy fa2 with temp_47_arithop_96_0
              #                    store to temp_47_arithop_96_0 in mem offset legal
    fsw     fa2,12(sp)
              #                    release fa2 with temp_47_arithop_96_0
              #                    occupy a5 with temp_49_arithop_96_0
              #                    store to temp_49_arithop_96_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_49_arithop_96_0
              #                    occupy a1 with i_73_1
              #                    load from i_73_1 in mem


    lw      a1,168(sp)
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: temp_34_ret_of_getfarray_73_0, tracked: true } |     a1:Freed { symidx: i_73_1, tracked: true } |     a2:Freed { symidx: p_73_1, tracked: true } |     a4:Freed { symidx: temp_59_cmp_94_0, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     294  label while.exit_95: 
.while.exit_95:
              #                     348  untrack i_73_1 
              #                    occupy a1 with i_73_1
              #                    release a1 with i_73_1
              #                     347  untrack p_73_1 
              #                    occupy a2 with p_73_1
              #                    release a2 with p_73_1
              #                     203  temp_35_ele_ptr_of_arr_73_73 = GEP arr_73_5:Array:f32:[Some(10_0)] [] 
              #                    occupy a1 with temp_35_ele_ptr_of_arr_73_73
    li      a1, 0
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,96
              #                    free a1
              #                     204   Call void putfarray_0(temp_34_ret_of_getfarray_73_0, temp_35_ele_ptr_of_arr_73_73) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_34_ret_of_getfarray_73_0
              #                    store to temp_34_ret_of_getfarray_73_0 in mem offset legal
    sw      a0,84(sp)
              #                    release a0 with temp_34_ret_of_getfarray_73_0
              #                    occupy a1 with temp_35_ele_ptr_of_arr_73_73
              #                    store to temp_35_ele_ptr_of_arr_73_73 in mem offset legal
    sd      a1,72(sp)
              #                    release a1 with temp_35_ele_ptr_of_arr_73_73
              #                    occupy a4 with temp_59_cmp_94_0
              #                    store to temp_59_cmp_94_0 in mem offset legal
    sb      a4,1(sp)
              #                    release a4 with temp_59_cmp_94_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_34_ret_of_getfarray_73_0_0
              #                    load from temp_34_ret_of_getfarray_73_0 in mem


    lw      a0,84(sp)
              #                    occupy a1 with _anonymous_of_temp_35_ele_ptr_of_arr_73_73_0
              #                    load from temp_35_ele_ptr_of_arr_73_73 in mem
    ld      a1,72(sp)
              #                    arg load ended


    call    putfarray
              #                     350  untrack temp_35_ele_ptr_of_arr_73_73 
              #                     349  untrack temp_34_ret_of_getfarray_73_0 
              #                     302  mu arr_73_5:204 
              #                     303  arr_73_7 = chi arr_73_5:204 
              #                     206  ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,208(sp)
              #                    load from s0_main_0 in mem
    ld      s0,200(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,216
              #                    free a0
    ret
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     286  label branch_short_circuit_p_false_494: 
.branch_short_circuit_p_false_494:
              #                     283  (nop) 
              #                          jump label: branch_short_circuit_c_true_494 
    j       .branch_short_circuit_c_true_494
.section ___var
    .data
    .align 4
    .globl FIVE
              #                     64   global i32 FIVE_0 
    .type FIVE,@object
FIVE:
    .word 5
    .align 4
    .globl THREE
              #                     61   global i32 THREE_0 
    .type THREE,@object
THREE:
    .word 3
    .align 4
    .globl TWO
              #                     57   global i32 TWO_0 
    .type TWO,@object
TWO:
    .word 2
    .align 4
    .globl MAX
              #                     53   global i32 MAX_0 
    .type MAX,@object
MAX:
    .word 1000000000
    .align 4
    .globl CONV2
              #                     49   global f32 CONV2_0 
    .type CONV2,@object
CONV2:
    .word 1166012416
    .align 4
    .globl CONV1
              #                     45   global f32 CONV1_0 
    .type CONV1,@object
CONV1:
    .word 1130954752
    .align 4
    .globl EVAL3
              #                     41   global f32 EVAL3_0 
    .type EVAL3,@object
EVAL3:
    .word 1107966695
    .align 4
    .globl EVAL2
              #                     38   global f32 EVAL2_0 
    .type EVAL2,@object
EVAL2:
    .word 1107966695
    .align 4
    .globl EVAL1
              #                     35   global f32 EVAL1_0 
    .type EVAL1,@object
EVAL1:
    .word 1119752446
    .align 4
    .globl FACT
              #                     32   global f32 FACT_0 
    .type FACT,@object
FACT:
    .word 3338725376
    .align 4
    .globl HEX2
              #                     29   global f32 HEX2_0 
    .type HEX2,@object
HEX2:
    .word 1033895936
    .align 4
    .globl PI_HEX
              #                     26   global f32 PI_HEX_0 
    .type PI_HEX,@object
PI_HEX:
    .word 1078530011
    .align 4
    .globl EPS
              #                     23   global f32 EPS_0 
    .type EPS,@object
EPS:
    .word 897988541
    .align 4
    .globl PI
              #                     20   global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl RADIUS
              #                     17   global f32 RADIUS_0 
    .type RADIUS,@object
RADIUS:
    .word 1085276160
