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
              #                    regtab 
              #                          Define float_abs_0 [x_21] -> float_abs_ret_0 
    .globl float_abs
    .type float_abs,@function
float_abs:
              #                    mem layout:|ra_float_abs:8 at 24|s0_float_abs:8 at 16|x:4 at 12|temp_6_:4 at 8|temp_7_cmp:1 at 7|none:3 at 4|temp_8_:4 at 0
    addi    sp,sp,-32
              #                    store to ra_float_abs_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_float_abs_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc f32 temp_6__24 
              #                          alloc i1 temp_7_cmp_24 
              #                          alloc f32 temp_8__24 
              #                    regtab     fa0:Freed { symidx: x_21, tracked: true } | 
              #                          label L15_0: 
.L15_0:
              #                          new_var temp_6__24:f32 
              #                          temp_6__24 = sitofp i32 0_0 to f32 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy fa1 with temp_6__24
    fcvt.s.w fa1,a0,rtz
              #                    free a0
              #                    free fa1
              #                          new_var temp_7_cmp_24:i1 
              #                          temp_7_cmp_24 = fcmp f32 Olt x_21, temp_6__24 
              #                    occupy fa0 with x_21
              #                    occupy fa1 with temp_6__24
              #                    occupy a1 with temp_7_cmp_24
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                          br i1 temp_7_cmp_24, label branch_true_25, label branch_false_25 
              #                    occupy a1 with temp_7_cmp_24
              #                    free a1
              #                    occupy a1 with temp_7_cmp_24
    bnez    a1, .branch_true_25
              #                    free a1
    j       .branch_false_25
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24, tracked: true } |     fa0:Freed { symidx: x_21, tracked: true } |     fa1:Freed { symidx: temp_6__24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          new_var temp_8__24:f32 
              #                          temp_8__24 = Sub f32 0.0_0, x_21 
              #                    occupy fa2 with 0.0_0
              #                    occupy a0 with _anonymous_of_0.0_0_0
    li      a0, 0
    fmv.w.x fa2, a0
              #                    free a0
              #                    occupy fa0 with x_21
              #                    occupy fa3 with temp_8__24
    fsub.s  fa3,fa2,fa0
              #                    free fa2
              #                    free fa0
              #                    free fa3
              #                          ret temp_8__24 
              #                    load from ra_float_abs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_float_abs_0 in mem
    ld      s0,16(sp)
              #                    store to temp_8__24 in mem offset legal
    fsw     fa3,0(sp)
              #                    release fa3 with temp_8__24
              #                    store to x_21 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_21
              #                    occupy fa0 with temp_8__24
              #                    load from temp_8__24 in mem


    flw     fa0,0(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24, tracked: true } |     fa0:Freed { symidx: x_21, tracked: true } |     fa1:Freed { symidx: temp_6__24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24, tracked: true } |     fa0:Freed { symidx: x_21, tracked: true } |     fa1:Freed { symidx: temp_6__24, tracked: true } | 
              #                          label L16_0: 
.L16_0:
              #                          ret x_21 
              #                    load from ra_float_abs_0 in mem
    ld      ra,24(sp)
              #                    load from s0_float_abs_0 in mem
    ld      s0,16(sp)
              #                    store to x_21 in mem offset legal
    fsw     fa0,12(sp)
              #                    release fa0 with x_21
              #                    occupy fa0 with x_21
              #                    load from x_21 in mem


    flw     fa0,12(sp)
    addi    sp,sp,32
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_7_cmp_24, tracked: true } |     fa1:Freed { symidx: temp_6__24, tracked: true } | 
              #                    regtab 
              #                          Define circle_area_0 [radius_28] -> circle_area_ret_0 
    .globl circle_area
    .type circle_area,@function
circle_area:
              #                    mem layout:|ra_circle_area:8 at 56|s0_circle_area:8 at 48|radius:4 at 44|temp_9_arithop:4 at 40|temp_10_:4 at 36|temp_11_arithop:4 at 32|temp_12_:4 at 28|temp_13_arithop:4 at 24|temp_14_:4 at 20|temp_15_arithop:4 at 16|temp_16_arithop:4 at 12|temp_17_:4 at 8|temp_18_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-64
              #                    store to ra_circle_area_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_circle_area_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                          alloc i32 temp_9_arithop_30 
              #                          alloc f32 temp_10__30 
              #                          alloc f32 temp_11_arithop_30 
              #                          alloc f32 temp_12__30 
              #                          alloc f32 temp_13_arithop_30 
              #                          alloc f32 temp_14__30 
              #                          alloc f32 temp_15_arithop_30 
              #                          alloc f32 temp_16_arithop_30 
              #                          alloc f32 temp_17__30 
              #                          alloc f32 temp_18_arithop_30 
              #                    regtab     a0:Freed { symidx: radius_28, tracked: true } | 
              #                          label L14_0: 
.L14_0:
              #                          new_var temp_9_arithop_30:i32 
              #                          temp_9_arithop_30 = Mul i32 radius_28, radius_28 
              #                    occupy a0 with radius_28
              #                    occupy a0 with radius_28
              #                    occupy a1 with temp_9_arithop_30
    mul     a1,a0,a0
              #                    free a0
              #                    free a0
              #                    free a1
              #                          new_var temp_10__30:f32 
              #                          temp_10__30 = sitofp i32 temp_9_arithop_30 to f32 
              #                    occupy a1 with temp_9_arithop_30
              #                    occupy fa0 with temp_10__30
    fcvt.s.w fa0,a1,rtz
              #                    free a1
              #                    free fa0
              #                          new_var temp_11_arithop_30:f32 
              #                          temp_11_arithop_30 = Mul f32 temp_10__30, 03.141592653589793_0 
              #                    occupy fa0 with temp_10__30
              #                    occupy fa1 with 03.141592653589793_0
              #                    occupy a2 with _anonymous_of_03.141592653589793_0_0
    li      a2, 1078530011
    fmv.w.x fa1, a2
              #                    free a2
              #                    occupy fa2 with temp_11_arithop_30
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                          new_var temp_12__30:f32 
              #                          temp_12__30 = sitofp i32 radius_28 to f32 
              #                    occupy a0 with radius_28
              #                    occupy fa3 with temp_12__30
    fcvt.s.w fa3,a0,rtz
              #                    free a0
              #                    free fa3
              #                          new_var temp_13_arithop_30:f32 
              #                          temp_13_arithop_30 = Mul f32 03.141592653589793_0, temp_12__30 
              #                    found literal reg Some(fa1) already exist with 03.141592653589793_0
              #                    occupy fa1 with 03.141592653589793_0
              #                    occupy fa3 with temp_12__30
              #                    occupy fa4 with temp_13_arithop_30
    fmul.s  fa4,fa1,fa3
              #                    free fa1
              #                    free fa3
              #                    free fa4
              #                          new_var temp_14__30:f32 
              #                          temp_14__30 = sitofp i32 radius_28 to f32 
              #                    occupy a0 with radius_28
              #                    occupy fa5 with temp_14__30
    fcvt.s.w fa5,a0,rtz
              #                    free a0
              #                    free fa5
              #                          new_var temp_15_arithop_30:f32 
              #                          temp_15_arithop_30 = Mul f32 temp_13_arithop_30, temp_14__30 
              #                    occupy fa4 with temp_13_arithop_30
              #                    occupy fa5 with temp_14__30
              #                    occupy fa6 with temp_15_arithop_30
    fmul.s  fa6,fa4,fa5
              #                    free fa4
              #                    free fa5
              #                    free fa6
              #                          new_var temp_16_arithop_30:f32 
              #                          temp_16_arithop_30 = Add f32 temp_15_arithop_30, temp_11_arithop_30 
              #                    occupy fa6 with temp_15_arithop_30
              #                    occupy fa2 with temp_11_arithop_30
              #                    occupy fa7 with temp_16_arithop_30
    fadd.s  fa7,fa6,fa2
              #                    free fa6
              #                    free fa2
              #                    free fa7
              #                          new_var temp_17__30:f32 
              #                          temp_17__30 = sitofp i32 2_0 to f32 
              #                    occupy a3 with 2_0
    li      a3, 2
              #                    occupy f8 with temp_17__30
    fcvt.s.w f8,a3,rtz
              #                    free a3
              #                    free f8
              #                          new_var temp_18_arithop_30:f32 
              #                          temp_18_arithop_30 = Div f32 temp_16_arithop_30, temp_17__30 
              #                    occupy fa7 with temp_16_arithop_30
              #                    occupy f8 with temp_17__30
              #                    occupy f9 with temp_18_arithop_30
    fdiv.s  f9,fa7,f8
              #                    free fa7
              #                    free f8
              #                    free f9
              #                          ret temp_18_arithop_30 
              #                    load from ra_circle_area_0 in mem
    ld      ra,56(sp)
              #                    load from s0_circle_area_0 in mem
    ld      s0,48(sp)
              #                    store to temp_18_arithop_30 in mem offset legal
    fsw     f9,4(sp)
              #                    release f9 with temp_18_arithop_30
              #                    store to temp_10__30 in mem offset legal
    fsw     fa0,36(sp)
              #                    release fa0 with temp_10__30
              #                    occupy fa0 with temp_18_arithop_30
              #                    load from temp_18_arithop_30 in mem


    flw     fa0,4(sp)
    addi    sp,sp,64
              #                    free fa0
    ret
              #                    regtab     a0:Freed { symidx: radius_28, tracked: true } |     a1:Freed { symidx: temp_9_arithop_30, tracked: true } |     f8:Freed { symidx: temp_17__30, tracked: true } |     fa2:Freed { symidx: temp_11_arithop_30, tracked: true } |     fa3:Freed { symidx: temp_12__30, tracked: true } |     fa4:Freed { symidx: temp_13_arithop_30, tracked: true } |     fa5:Freed { symidx: temp_14__30, tracked: true } |     fa6:Freed { symidx: temp_15_arithop_30, tracked: true } |     fa7:Freed { symidx: temp_16_arithop_30, tracked: true } | 
              #                    regtab 
              #                          Define float_eq_0 [a_32, b_32] -> float_eq_ret_0 
    .globl float_eq
    .type float_eq,@function
float_eq:
              #                    mem layout:|ra_float_eq:8 at 40|s0_float_eq:8 at 32|a:4 at 28|b:4 at 24|temp_19_arithop:4 at 20|temp_20_ret_of_float_abs:4 at 16|temp_21_cmp:1 at 15|none:3 at 12|temp_22_:4 at 8|temp_23_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_float_eq_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_float_eq_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc f32 temp_19_arithop_35 
              #                          alloc f32 temp_20_ret_of_float_abs_35 
              #                          alloc i1 temp_21_cmp_35 
              #                          alloc f32 temp_22__37 
              #                          alloc f32 temp_23_arithop_37 
              #                    regtab     fa0:Freed { symidx: a_32, tracked: true } |     fa1:Freed { symidx: b_32, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                          new_var temp_19_arithop_35:f32 
              #                          temp_19_arithop_35 = Sub f32 a_32, b_32 
              #                    occupy fa0 with a_32
              #                    occupy fa1 with b_32
              #                    occupy fa2 with temp_19_arithop_35
    fsub.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                          new_var temp_20_ret_of_float_abs_35:f32 
              #                          temp_20_ret_of_float_abs_35 =  Call f32 float_abs_0(temp_19_arithop_35) 
              #                    saved register dumping to mem
              #                    store to a_32 in mem offset legal
    fsw     fa0,28(sp)
              #                    release fa0 with a_32
              #                    store to b_32 in mem offset legal
    fsw     fa1,24(sp)
              #                    release fa1 with b_32
              #                    store to temp_19_arithop_35 in mem offset legal
    fsw     fa2,20(sp)
              #                    release fa2 with temp_19_arithop_35
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_19_arithop_35_0
              #                    load from temp_19_arithop_35 in mem


    flw     fa0,20(sp)
              #                    arg load ended


    call    float_abs
              #                    store to temp_20_ret_of_float_abs_35 in mem offset legal
    fsw     fa0,16(sp)
              #                          new_var temp_21_cmp_35:i1 
              #                          temp_21_cmp_35 = fcmp f32 Olt temp_20_ret_of_float_abs_35, 1e-6_0 
              #                    occupy fa0 with temp_20_ret_of_float_abs_35
              #                    occupy fa1 with 1e-6_0
              #                    occupy a0 with _anonymous_of_1e-6_0_0
    li      a0, 897988541
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_21_cmp_35
    flt.s   a1,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a1
              #                          br i1 temp_21_cmp_35, label branch_true_36, label branch_false_36 
              #                    occupy a1 with temp_21_cmp_35
              #                    free a1
              #                    occupy a1 with temp_21_cmp_35
    bnez    a1, .branch_true_36
              #                    free a1
    j       .branch_false_36
              #                    regtab     a1:Freed { symidx: temp_21_cmp_35, tracked: true } |     fa0:Freed { symidx: temp_20_ret_of_float_abs_35, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_22__37:f32 
              #                          temp_22__37 = sitofp i32 2_0 to f32 
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy fa1 with temp_22__37
    fcvt.s.w fa1,a0,rtz
              #                    free a0
              #                    free fa1
              #                          new_var temp_23_arithop_37:f32 
              #                          temp_23_arithop_37 = Div f32 temp_22__37, 2._0 
              #                    occupy fa1 with temp_22__37
              #                    occupy fa2 with 2._0
              #                    occupy a2 with _anonymous_of_2._0_0
    li      a2, 1073741824
    fmv.w.x fa2, a2
              #                    free a2
              #                    occupy fa3 with temp_23_arithop_37
    fdiv.s  fa3,fa1,fa2
              #                    free fa1
              #                    free fa2
              #                    free fa3
              #                          ret temp_23_arithop_37 
              #                    load from ra_float_eq_0 in mem
    ld      ra,40(sp)
              #                    load from s0_float_eq_0 in mem
    ld      s0,32(sp)
              #                    store to temp_23_arithop_37 in mem offset legal
    fsw     fa3,4(sp)
              #                    release fa3 with temp_23_arithop_37
              #                    store to temp_20_ret_of_float_abs_35 in mem offset legal
    fsw     fa0,16(sp)
              #                    release fa0 with temp_20_ret_of_float_abs_35
              #                    occupy fa0 with temp_23_arithop_37
              #                    load from temp_23_arithop_37 in mem


    flw     fa0,4(sp)
    addi    sp,sp,48
              #                    free fa0
    ret
              #                    regtab     a1:Freed { symidx: temp_21_cmp_35, tracked: true } |     fa0:Freed { symidx: temp_20_ret_of_float_abs_35, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                          ret 0_0 
              #                    load from ra_float_eq_0 in mem
    ld      ra,40(sp)
              #                    load from s0_float_eq_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_21_cmp_35, tracked: true } |     fa0:Freed { symidx: temp_20_ret_of_float_abs_35, tracked: true } | 
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: temp_21_cmp_35, tracked: true } |     fa0:Freed { symidx: temp_20_ret_of_float_abs_35, tracked: true } | 
              #                    regtab 
              #                          Define error_0 [] -> error_ret_0 
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
              #                    regtab 
              #                          label L11_0: 
.L11_0:
              #                           Call void putch_0(101_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_101_0_0
    li      a0, 101
              #                    arg load ended


    call    putch
              #                           Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                           Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(114_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114_0_0
    li      a0, 114
              #                    arg load ended


    call    putch
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                    regtab 
              #                          ret 
              #                    load from ra_error_0 in mem
    ld      ra,8(sp)
              #                    load from s0_error_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
              #                    regtab 
              #                          Define ok_0 [] -> ok_ret_0 
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
              #                    regtab 
              #                          label L10_0: 
.L10_0:
              #                           Call void putch_0(111_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_111_0_0
    li      a0, 111
              #                    arg load ended


    call    putch
              #                           Call void putch_0(107_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_107_0_0
    li      a0, 107
              #                    arg load ended


    call    putch
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                    regtab 
              #                          ret 
              #                    load from ra_ok_0 in mem
    ld      ra,8(sp)
              #                    load from s0_ok_0 in mem
    ld      s0,0(sp)
    addi    sp,sp,16
    ret
              #                    regtab 
              #                          Define assert_0 [cond_54] -> assert_ret_0 
    .globl assert
    .type assert,@function
assert:
              #                    mem layout:|ra_assert:8 at 16|s0_assert:8 at 8|cond:4 at 4|temp_24_booltrans:1 at 3|temp_25_logicnot:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_assert_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_assert_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_24_booltrans_57 
              #                          alloc i1 temp_25_logicnot_57 
              #                    regtab     a0:Freed { symidx: cond_54, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_24_booltrans_57:i1 
              #                          temp_24_booltrans_57 = icmp i32 Ne cond_54, 0_0 
              #                    occupy a0 with cond_54
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_24_booltrans_57
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          new_var temp_25_logicnot_57:i1 
              #                          temp_25_logicnot_57 = xor i1 temp_24_booltrans_57, true 
              #                    occupy a2 with temp_24_booltrans_57
              #                    occupy a3 with temp_25_logicnot_57
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                          br i1 temp_25_logicnot_57, label branch_true_58, label branch_false_58 
              #                    occupy a3 with temp_25_logicnot_57
              #                    free a3
              #                    occupy a3 with temp_25_logicnot_57
    bnez    a3, .branch_true_58
              #                    free a3
    j       .branch_false_58
              #                    regtab     a0:Freed { symidx: cond_54, tracked: true } |     a2:Freed { symidx: temp_24_booltrans_57, tracked: true } |     a3:Freed { symidx: temp_25_logicnot_57, tracked: true } | 
              #                          label branch_true_58: 
.branch_true_58:
              #                           Call void error_0() 
              #                    saved register dumping to mem
              #                    store to cond_54 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with cond_54
              #                    store to temp_24_booltrans_57 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_24_booltrans_57
              #                    store to temp_25_logicnot_57 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_25_logicnot_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab     a0:Freed { symidx: cond_54, tracked: true } |     a2:Freed { symidx: temp_24_booltrans_57, tracked: true } |     a3:Freed { symidx: temp_25_logicnot_57, tracked: true } | 
              #                          label branch_false_58: 
.branch_false_58:
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    store to cond_54 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with cond_54
              #                    store to temp_24_booltrans_57 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_24_booltrans_57
              #                    store to temp_25_logicnot_57 in mem offset legal
    sb      a3,2(sp)
              #                    release a3 with temp_25_logicnot_57
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: L9_0 
    j       .L9_0
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                    regtab 
              #                          ret 
              #                    load from ra_assert_0 in mem
    ld      ra,16(sp)
              #                    load from s0_assert_0 in mem
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
              #                    regtab 
              #                          Define assert_not_0 [cond_63] -> assert_not_ret_0 
    .globl assert_not
    .type assert_not,@function
assert_not:
              #                    mem layout:|ra_assert_not:8 at 16|s0_assert_not:8 at 8|cond:4 at 4|temp_26_:1 at 3|none:3 at 0
    addi    sp,sp,-24
              #                    store to ra_assert_not_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_assert_not_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i1 temp_26__1431 
              #                    regtab     a0:Freed { symidx: cond_63, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_26__1431:i1 
              #                          temp_26__1431 = icmp i32 Ne cond_63, 0_0 
              #                    occupy a0 with cond_63
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_26__1431
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_26__1431, label branch_true_67, label branch_false_67 
              #                    occupy a2 with temp_26__1431
              #                    free a2
              #                    occupy a2 with temp_26__1431
    bnez    a2, .branch_true_67
              #                    free a2
    j       .branch_false_67
              #                    regtab     a0:Freed { symidx: cond_63, tracked: true } |     a2:Freed { symidx: temp_26__1431, tracked: true } | 
              #                          label branch_true_67: 
.branch_true_67:
              #                           Call void error_0() 
              #                    saved register dumping to mem
              #                    store to cond_63 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with cond_63
              #                    store to temp_26__1431 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_26__1431
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab     a0:Freed { symidx: cond_63, tracked: true } |     a2:Freed { symidx: temp_26__1431, tracked: true } | 
              #                          label branch_false_67: 
.branch_false_67:
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    store to cond_63 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with cond_63
              #                    store to temp_26__1431 in mem offset legal
    sb      a2,3(sp)
              #                    release a2 with temp_26__1431
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: L7_0 
    j       .L7_0
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                    regtab 
              #                          ret 
              #                    load from ra_assert_not_0 in mem
    ld      ra,16(sp)
              #                    load from s0_assert_not_0 in mem
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 248|s0_main:8 at 240|temp_27_ret_of_float_eq:4 at 236|temp_28_ret_of_float_eq:4 at 232|temp_29_ret_of_float_eq:4 at 228|temp_30_:4 at 224|temp_31_ret_of_circle_area:4 at 220|temp_32_:4 at 216|temp_33_ret_of_circle_area:4 at 212|temp_34_ret_of_float_eq:4 at 208|temp_35_:4 at 204|temp_36_:4 at 200|temp_37_ret_of_float_eq:4 at 196|temp_38_:1 at 195|temp_39_booltrans:1 at 194|temp_40_logicnot:1 at 193|temp_41_booltrans:1 at 192|temp_42_logicnot:1 at 191|temp_43_:1 at 190|temp_44_:1 at 189|temp_45_logic:1 at 188|temp_46_:1 at 187|temp_47_:1 at 186|temp_48_logic:1 at 185|none:1 at 184|i:4 at 180|p:4 at 176|temp_49_array_init_ptr:8 at 168|temp_50_array_init_ptr:8 at 160|temp_51_array_init_ptr:8 at 152|arr:40 at 112|temp_52_array_ele_ptr:8 at 104|temp_53_ret_of_getfarray:4 at 100|len:4 at 96|temp_54_:4 at 92|temp_55_cmp:1 at 91|none:3 at 88|temp_56_ret_of_getfloat:4 at 84|input:4 at 80|temp_57_arithop:4 at 76|temp_58_arithop:4 at 72|area:4 at 68|temp_59_:4 at 64|temp_60_ret_of_circle_area:4 at 60|area_trunc:4 at 56|temp_61_index_ptr:8 at 48|temp_62_array_ptr:8 at 40|temp_63_array_ele:4 at 36|temp_64_arithop:4 at 32|temp_65_:4 at 28|temp_66_:4 at 24|temp_67_arithop:4 at 20|temp_68_:4 at 16|temp_69_arithop:4 at 12|none:4 at 8|temp_70_array_ele_ptr:8 at 0
    addi    sp,sp,-256
              #                    store to ra_main_0 in mem offset legal
    sd      ra,248(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,240(sp)
    addi    s0,sp,256
              #                          alloc i32 temp_27_ret_of_float_eq_73 
              #                          alloc i32 temp_28_ret_of_float_eq_73 
              #                          alloc i32 temp_29_ret_of_float_eq_73 
              #                          alloc i32 temp_30__73 
              #                          alloc f32 temp_31_ret_of_circle_area_73 
              #                          alloc i32 temp_32__73 
              #                          alloc f32 temp_33_ret_of_circle_area_73 
              #                          alloc i32 temp_34_ret_of_float_eq_73 
              #                          alloc f32 temp_35__73 
              #                          alloc f32 temp_36__73 
              #                          alloc i32 temp_37_ret_of_float_eq_73 
              #                          alloc i1 temp_38__1987 
              #                          alloc i1 temp_39_booltrans_82 
              #                          alloc i1 temp_40_logicnot_82 
              #                          alloc i1 temp_41_booltrans_82 
              #                          alloc i1 temp_42_logicnot_82 
              #                          alloc i1 temp_43__85 
              #                          alloc i1 temp_44__85 
              #                          alloc i1 temp_45_logic_85 
              #                          alloc i1 temp_46__88 
              #                          alloc i1 temp_47__88 
              #                          alloc i1 temp_48_logic_88 
              #                          alloc i32 i_73 
              #                          alloc i32 p_73 
              #                          alloc ptr->f32 temp_49_array_init_ptr_73 
              #                          alloc ptr->f32 temp_50_array_init_ptr_73 
              #                          alloc ptr->f32 temp_51_array_init_ptr_73 
              #                          alloc Array:f32:[Some(10_0)] arr_73 
              #                          alloc ptr->f32 temp_52_array_ele_ptr_73 
              #                          alloc i32 temp_53_ret_of_getfarray_73 
              #                          alloc i32 len_73 
              #                          alloc f32 temp_54__95 
              #                          alloc i1 temp_55_cmp_95 
              #                          alloc f32 temp_56_ret_of_getfloat_97 
              #                          alloc f32 input_97 
              #                          alloc f32 temp_57_arithop_97 
              #                          alloc f32 temp_58_arithop_97 
              #                          alloc f32 area_97 
              #                          alloc i32 temp_59__97 
              #                          alloc f32 temp_60_ret_of_circle_area_97 
              #                          alloc f32 area_trunc_97 
              #                          alloc ptr->f32 temp_61_index_ptr_97 
              #                          alloc ptr->f32 temp_62_array_ptr_97 
              #                          alloc f32 temp_63_array_ele_97 
              #                          alloc f32 temp_64_arithop_97 
              #                          alloc i32 temp_65__97 
              #                          alloc f32 temp_66__97 
              #                          alloc f32 temp_67_arithop_97 
              #                          alloc i32 temp_68__97 
              #                          alloc i32 temp_69_arithop_97 
              #                          alloc ptr->f32 temp_70_array_ele_ptr_73 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_27_ret_of_float_eq_73:i32 
              #                          temp_27_ret_of_float_eq_73 =  Call i32 float_eq_0(0x.AP-3_0, -33000._0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_0x.AP-3_0_0
              #                    occupy a0 with _anonymous_of_0x.AP-3_0_0
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
              #                    store to temp_27_ret_of_float_eq_73 in mem offset legal
    sw      a0,236(sp)
              #                           Call void assert_not_0(temp_27_ret_of_float_eq_73) 
              #                    saved register dumping to mem
              #                    store to temp_27_ret_of_float_eq_73 in mem offset legal
    sw      a0,236(sp)
              #                    release a0 with temp_27_ret_of_float_eq_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_27_ret_of_float_eq_73_0
              #                    load from temp_27_ret_of_float_eq_73 in mem


    lw      a0,236(sp)
              #                    arg load ended


    call    assert_not
              #                          new_var temp_28_ret_of_float_eq_73:i32 
              #                          temp_28_ret_of_float_eq_73 =  Call i32 float_eq_0(95.03319_0, 34.55752_0) 
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
              #                    store to temp_28_ret_of_float_eq_73 in mem offset legal
    sw      a0,232(sp)
              #                           Call void assert_not_0(temp_28_ret_of_float_eq_73) 
              #                    saved register dumping to mem
              #                    store to temp_28_ret_of_float_eq_73 in mem offset legal
    sw      a0,232(sp)
              #                    release a0 with temp_28_ret_of_float_eq_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_28_ret_of_float_eq_73_0
              #                    load from temp_28_ret_of_float_eq_73 in mem


    lw      a0,232(sp)
              #                    arg load ended


    call    assert_not
              #                          new_var temp_29_ret_of_float_eq_73:i32 
              #                          temp_29_ret_of_float_eq_73 =  Call i32 float_eq_0(34.55752_0, 34.55752_0) 
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
              #                    store to temp_29_ret_of_float_eq_73 in mem offset legal
    sw      a0,228(sp)
              #                           Call void assert_0(temp_29_ret_of_float_eq_73) 
              #                    saved register dumping to mem
              #                    store to temp_29_ret_of_float_eq_73 in mem offset legal
    sw      a0,228(sp)
              #                    release a0 with temp_29_ret_of_float_eq_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_29_ret_of_float_eq_73_0
              #                    load from temp_29_ret_of_float_eq_73 in mem


    lw      a0,228(sp)
              #                    arg load ended


    call    assert
              #                          new_var temp_30__73:i32 
              #                          temp_30__73 = fptosi f32 5.5_0 to i32 
              #                    occupy fa0 with 5.5_0
              #                    occupy a0 with _anonymous_of_5.5_0_0
    li      a0, 1085276160
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy a1 with temp_30__73
    fcvt.w.s a1,fa0,rtz
              #                    free fa0
              #                    free a1
              #                          new_var temp_31_ret_of_circle_area_73:f32 
              #                          temp_31_ret_of_circle_area_73 =  Call f32 circle_area_0(temp_30__73) 
              #                    saved register dumping to mem
              #                    store to temp_30__73 in mem offset legal
    sw      a1,224(sp)
              #                    release a1 with temp_30__73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30__73_0
              #                    load from temp_30__73 in mem


    lw      a0,224(sp)
              #                    arg load ended


    call    circle_area
              #                    store to temp_31_ret_of_circle_area_73 in mem offset legal
    fsw     fa0,220(sp)
              #                          new_var temp_32__73:i32 
              #                          temp_32__73 = fptosi f32 5.5_0 to i32 
              #                    occupy fa1 with 5.5_0
              #                    occupy a0 with _anonymous_of_5.5_0_0
    li      a0, 1085276160
    fmv.w.x fa1, a0
              #                    free a0
              #                    occupy a1 with temp_32__73
    fcvt.w.s a1,fa1,rtz
              #                    free fa1
              #                    free a1
              #                          new_var temp_33_ret_of_circle_area_73:f32 
              #                          temp_33_ret_of_circle_area_73 =  Call f32 circle_area_0(temp_32__73) 
              #                    saved register dumping to mem
              #                    store to temp_32__73 in mem offset legal
    sw      a1,216(sp)
              #                    release a1 with temp_32__73
              #                    store to temp_31_ret_of_circle_area_73 in mem offset legal
    fsw     fa0,220(sp)
              #                    release fa0 with temp_31_ret_of_circle_area_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_32__73_0
              #                    load from temp_32__73 in mem


    lw      a0,216(sp)
              #                    arg load ended


    call    circle_area
              #                    store to temp_33_ret_of_circle_area_73 in mem offset legal
    fsw     fa0,212(sp)
              #                          new_var temp_34_ret_of_float_eq_73:i32 
              #                          temp_34_ret_of_float_eq_73 =  Call i32 float_eq_0(temp_31_ret_of_circle_area_73, temp_33_ret_of_circle_area_73) 
              #                    saved register dumping to mem
              #                    store to temp_33_ret_of_circle_area_73 in mem offset legal
    fsw     fa0,212(sp)
              #                    release fa0 with temp_33_ret_of_circle_area_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_31_ret_of_circle_area_73_0
              #                    load from temp_31_ret_of_circle_area_73 in mem


    flw     fa0,220(sp)
              #                    occupy fa1 with _anonymous_of_temp_33_ret_of_circle_area_73_0
              #                    load from temp_33_ret_of_circle_area_73 in mem


    flw     fa1,212(sp)
              #                    arg load ended


    call    float_eq
              #                    store to temp_34_ret_of_float_eq_73 in mem offset legal
    sw      a0,208(sp)
              #                           Call void assert_0(temp_34_ret_of_float_eq_73) 
              #                    saved register dumping to mem
              #                    store to temp_34_ret_of_float_eq_73 in mem offset legal
    sw      a0,208(sp)
              #                    release a0 with temp_34_ret_of_float_eq_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_34_ret_of_float_eq_73_0
              #                    load from temp_34_ret_of_float_eq_73 in mem


    lw      a0,208(sp)
              #                    arg load ended


    call    assert
              #                          new_var temp_35__73:f32 
              #                          temp_35__73 = sitofp i32 233_0 to f32 
              #                    occupy a0 with 233_0
    li      a0, 233
              #                    occupy fa0 with temp_35__73
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                          new_var temp_36__73:f32 
              #                          temp_36__73 = sitofp i32 0xfff_0 to f32 
              #                    occupy a1 with 0xfff_0
    li      a1, 0xfff
              #                    occupy fa1 with temp_36__73
    fcvt.s.w fa1,a1,rtz
              #                    free a1
              #                    free fa1
              #                          new_var temp_37_ret_of_float_eq_73:i32 
              #                          temp_37_ret_of_float_eq_73 =  Call i32 float_eq_0(temp_35__73, temp_36__73) 
              #                    saved register dumping to mem
              #                    store to temp_35__73 in mem offset legal
    fsw     fa0,204(sp)
              #                    release fa0 with temp_35__73
              #                    store to temp_36__73 in mem offset legal
    fsw     fa1,200(sp)
              #                    release fa1 with temp_36__73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_temp_35__73_0
              #                    load from temp_35__73 in mem


    flw     fa0,204(sp)
              #                    occupy fa1 with _anonymous_of_temp_36__73_0
              #                    load from temp_36__73 in mem


    flw     fa1,200(sp)
              #                    arg load ended


    call    float_eq
              #                    store to temp_37_ret_of_float_eq_73 in mem offset legal
    sw      a0,196(sp)
              #                           Call void assert_not_0(temp_37_ret_of_float_eq_73) 
              #                    saved register dumping to mem
              #                    store to temp_37_ret_of_float_eq_73 in mem offset legal
    sw      a0,196(sp)
              #                    release a0 with temp_37_ret_of_float_eq_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_37_ret_of_float_eq_73_0
              #                    load from temp_37_ret_of_float_eq_73 in mem


    lw      a0,196(sp)
              #                    arg load ended


    call    assert_not
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_38__1987:i1 
              #                          temp_38__1987 = fcmp f32 One 1.5_0, 0.0_0 
              #                    occupy fa0 with 1.5_0
              #                    occupy a0 with _anonymous_of_1.5_0_0
    li      a0, 1069547520
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with 0.0_0
              #                    occupy a1 with _anonymous_of_0.0_0_0
    li      a1, 0
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy a2 with temp_38__1987
    feq.s   a2,fa0,fa1
    seqz    a2, a2
              #                    free fa0
              #                    free fa1
              #                    free a2
              #                          br i1 temp_38__1987, label branch_true_80, label branch_false_80 
              #                    occupy a2 with temp_38__1987
              #                    free a2
              #                    occupy a2 with temp_38__1987
    bnez    a2, .branch_true_80
              #                    free a2
    j       .branch_false_80
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } | 
              #                          label branch_true_80: 
.branch_true_80:
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    store to temp_38__1987 in mem offset legal
    sb      a2,195(sp)
              #                    release a2 with temp_38__1987
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_false_80 
              #                    occupy a2 with _anonymous_of_temp_38__1987_0
              #                    load from temp_38__1987 in mem
    lb      a2,195(sp)
    j       .branch_false_80
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } | 
              #                          label branch_false_80: 
.branch_false_80:
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_39_booltrans_82:i1 
              #                          temp_39_booltrans_82 = fcmp f32 One 3.3_0, 0.0_0 
              #                    occupy fa0 with 3.3_0
              #                    occupy a0 with _anonymous_of_3.3_0_0
    li      a0, 1079194419
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with 0.0_0
              #                    occupy a1 with _anonymous_of_0.0_0_0
    li      a1, 0
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy a3 with temp_39_booltrans_82
    feq.s   a3,fa0,fa1
    seqz    a3, a3
              #                    free fa0
              #                    free fa1
              #                    free a3
              #                          new_var temp_40_logicnot_82:i1 
              #                          temp_40_logicnot_82 = xor i1 temp_39_booltrans_82, true 
              #                    occupy a3 with temp_39_booltrans_82
              #                    occupy a4 with temp_40_logicnot_82
    seqz    a4, a3
              #                    free a3
              #                    free a4
              #                          new_var temp_41_booltrans_82:i1 
              #                          temp_41_booltrans_82 = icmp i1 Ne temp_40_logicnot_82, 0_0 
              #                    occupy a4 with temp_40_logicnot_82
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_41_booltrans_82
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                          new_var temp_42_logicnot_82:i1 
              #                          temp_42_logicnot_82 = xor i1 temp_41_booltrans_82, true 
              #                    occupy a6 with temp_41_booltrans_82
              #                    occupy a7 with temp_42_logicnot_82
    seqz    a7, a6
              #                    free a6
              #                    free a7
              #                          br i1 temp_42_logicnot_82, label branch_true_83, label branch_false_83 
              #                    occupy a7 with temp_42_logicnot_82
              #                    free a7
              #                    occupy a7 with temp_42_logicnot_82
    bnez    a7, .branch_true_83
              #                    free a7
    j       .branch_false_83
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    store to temp_38__1987 in mem offset legal
    sb      a2,195(sp)
              #                    release a2 with temp_38__1987
              #                    store to temp_39_booltrans_82 in mem offset legal
    sb      a3,194(sp)
              #                    release a3 with temp_39_booltrans_82
              #                    store to temp_40_logicnot_82 in mem offset legal
    sb      a4,193(sp)
              #                    release a4 with temp_40_logicnot_82
              #                    store to temp_41_booltrans_82 in mem offset legal
    sb      a6,192(sp)
              #                    release a6 with temp_41_booltrans_82
              #                    store to temp_42_logicnot_82 in mem offset legal
    sb      a7,191(sp)
              #                    release a7 with temp_42_logicnot_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_false_83 
              #                    occupy a2 with _anonymous_of_temp_38__1987_0
              #                    load from temp_38__1987 in mem
    lb      a2,195(sp)
              #                    occupy a7 with _anonymous_of_temp_42_logicnot_82_0
              #                    load from temp_42_logicnot_82 in mem
    lb      a7,191(sp)
              #                    occupy a4 with _anonymous_of_temp_40_logicnot_82_0
              #                    load from temp_40_logicnot_82 in mem
    lb      a4,193(sp)
              #                    occupy a3 with _anonymous_of_temp_39_booltrans_82_0
              #                    load from temp_39_booltrans_82 in mem
    lb      a3,194(sp)
              #                    occupy a6 with _anonymous_of_temp_41_booltrans_82_0
              #                    load from temp_41_booltrans_82 in mem
    lb      a6,192(sp)
    j       .branch_false_83
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_43__85:i1 
              #                          temp_43__85 = fcmp f32 One .0_0, 0.0_0 
              #                    occupy fa0 with .0_0
              #                    occupy a0 with _anonymous_of_.0_0_0
    li      a0, 0
    fmv.w.x fa0, a0
              #                    free a0
              #                    occupy fa1 with 0.0_0
              #                    occupy a1 with _anonymous_of_0.0_0_0
    li      a1, 0
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy a5 with temp_43__85
    feq.s   a5,fa0,fa1
    seqz    a5, a5
              #                    free fa0
              #                    free fa1
              #                    free a5
              #                          new_var temp_44__85:i1 
              #                          temp_44__85 = icmp i32 Ne 3_0, 0_0 
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s2 with 0_0
    li      s2, 0
              #                    occupy s3 with temp_44__85
    xor     s3,s1,s2
    snez    s3, s3
              #                    free s1
              #                    free s2
              #                    free s3
              #                          new_var temp_45_logic_85:i1 
              #                          temp_45_logic_85 = And i1 temp_44__85, temp_43__85 
              #                    occupy s3 with temp_44__85
              #                    occupy a5 with temp_43__85
              #                    occupy s4 with temp_45_logic_85
    and     s4,s3,a5
              #                    free s3
              #                    free a5
              #                    free s4
              #                          br i1 temp_45_logic_85, label branch_true_86, label branch_false_86 
              #                    occupy s4 with temp_45_logic_85
              #                    free s4
              #                    occupy s4 with temp_45_logic_85
    bnez    s4, .branch_true_86
              #                    free s4
    j       .branch_false_86
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } | 
              #                          label branch_true_86: 
.branch_true_86:
              #                           Call void error_0() 
              #                    saved register dumping to mem
              #                    store to temp_44__85 in mem offset legal
    sb      s3,189(sp)
              #                    release s3 with temp_44__85
              #                    store to temp_45_logic_85 in mem offset legal
    sb      s4,188(sp)
              #                    release s4 with temp_45_logic_85
              #                    store to temp_38__1987 in mem offset legal
    sb      a2,195(sp)
              #                    release a2 with temp_38__1987
              #                    store to temp_39_booltrans_82 in mem offset legal
    sb      a3,194(sp)
              #                    release a3 with temp_39_booltrans_82
              #                    store to temp_40_logicnot_82 in mem offset legal
    sb      a4,193(sp)
              #                    release a4 with temp_40_logicnot_82
              #                    store to temp_43__85 in mem offset legal
    sb      a5,190(sp)
              #                    release a5 with temp_43__85
              #                    store to temp_41_booltrans_82 in mem offset legal
    sb      a6,192(sp)
              #                    release a6 with temp_41_booltrans_82
              #                    store to temp_42_logicnot_82 in mem offset legal
    sb      a7,191(sp)
              #                    release a7 with temp_42_logicnot_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    error
              #                          jump label: branch_false_86 
              #                    occupy a2 with _anonymous_of_temp_38__1987_0
              #                    load from temp_38__1987 in mem
    lb      a2,195(sp)
              #                    occupy a5 with _anonymous_of_temp_43__85_0
              #                    load from temp_43__85 in mem
    lb      a5,190(sp)
              #                    occupy s3 with _anonymous_of_temp_44__85_0
              #                    load from temp_44__85 in mem
    lb      s3,189(sp)
              #                    occupy a7 with _anonymous_of_temp_42_logicnot_82_0
              #                    load from temp_42_logicnot_82 in mem
    lb      a7,191(sp)
              #                    occupy a4 with _anonymous_of_temp_40_logicnot_82_0
              #                    load from temp_40_logicnot_82 in mem
    lb      a4,193(sp)
              #                    occupy a3 with _anonymous_of_temp_39_booltrans_82_0
              #                    load from temp_39_booltrans_82 in mem
    lb      a3,194(sp)
              #                    occupy s4 with _anonymous_of_temp_45_logic_85_0
              #                    load from temp_45_logic_85 in mem
    lb      s4,188(sp)
              #                    occupy a6 with _anonymous_of_temp_41_booltrans_82_0
              #                    load from temp_41_booltrans_82 in mem
    lb      a6,192(sp)
    j       .branch_false_86
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } | 
              #                          label branch_false_86: 
.branch_false_86:
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_46__88:i1 
              #                          temp_46__88 = icmp i1 Ne 0_0, 0_0 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s1 with temp_46__88
    xor     s1,a0,a1
    snez    s1, s1
              #                    free a0
              #                    free a1
              #                    free s1
              #                          new_var temp_47__88:i1 
              #                          temp_47__88 = fcmp f32 One 0.3_0, 0.0_0 
              #                    occupy fa0 with 0.3_0
              #                    occupy s2 with _anonymous_of_0.3_0_0
    li      s2, 1050253722
    fmv.w.x fa0, s2
              #                    free s2
              #                    occupy fa1 with 0.0_0
              #                    occupy s5 with _anonymous_of_0.0_0_0
    li      s5, 0
    fmv.w.x fa1, s5
              #                    free s5
              #                    occupy s6 with temp_47__88
    feq.s   s6,fa0,fa1
    seqz    s6, s6
              #                    free fa0
              #                    free fa1
              #                    free s6
              #                          new_var temp_48_logic_88:i1 
              #                          temp_48_logic_88 = Or i1 temp_46__88, temp_47__88 
              #                    occupy s1 with temp_46__88
              #                    occupy s6 with temp_47__88
              #                    occupy s7 with temp_48_logic_88
    or      s7,s1,s6
              #                    free s1
              #                    free s6
              #                    free s7
              #                          br i1 temp_48_logic_88, label branch_true_89, label branch_false_89 
              #                    occupy s7 with temp_48_logic_88
              #                    free s7
              #                    occupy s7 with temp_48_logic_88
    bnez    s7, .branch_true_89
              #                    free s7
    j       .branch_false_89
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s1:Freed { symidx: temp_46__88, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } |     s6:Freed { symidx: temp_47__88, tracked: true } |     s7:Freed { symidx: temp_48_logic_88, tracked: true } | 
              #                          label branch_true_89: 
.branch_true_89:
              #                           Call void ok_0() 
              #                    saved register dumping to mem
              #                    store to temp_46__88 in mem offset legal
    sb      s1,187(sp)
              #                    release s1 with temp_46__88
              #                    store to temp_44__85 in mem offset legal
    sb      s3,189(sp)
              #                    release s3 with temp_44__85
              #                    store to temp_45_logic_85 in mem offset legal
    sb      s4,188(sp)
              #                    release s4 with temp_45_logic_85
              #                    store to temp_47__88 in mem offset legal
    sb      s6,186(sp)
              #                    release s6 with temp_47__88
              #                    store to temp_48_logic_88 in mem offset legal
    sb      s7,185(sp)
              #                    release s7 with temp_48_logic_88
              #                    store to temp_38__1987 in mem offset legal
    sb      a2,195(sp)
              #                    release a2 with temp_38__1987
              #                    store to temp_39_booltrans_82 in mem offset legal
    sb      a3,194(sp)
              #                    release a3 with temp_39_booltrans_82
              #                    store to temp_40_logicnot_82 in mem offset legal
    sb      a4,193(sp)
              #                    release a4 with temp_40_logicnot_82
              #                    store to temp_43__85 in mem offset legal
    sb      a5,190(sp)
              #                    release a5 with temp_43__85
              #                    store to temp_41_booltrans_82 in mem offset legal
    sb      a6,192(sp)
              #                    release a6 with temp_41_booltrans_82
              #                    store to temp_42_logicnot_82 in mem offset legal
    sb      a7,191(sp)
              #                    release a7 with temp_42_logicnot_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ok
              #                          jump label: branch_false_89 
              #                    occupy a2 with _anonymous_of_temp_38__1987_0
              #                    load from temp_38__1987 in mem
    lb      a2,195(sp)
              #                    occupy a5 with _anonymous_of_temp_43__85_0
              #                    load from temp_43__85 in mem
    lb      a5,190(sp)
              #                    occupy s3 with _anonymous_of_temp_44__85_0
              #                    load from temp_44__85 in mem
    lb      s3,189(sp)
              #                    occupy s1 with _anonymous_of_temp_46__88_0
              #                    load from temp_46__88 in mem
    lb      s1,187(sp)
              #                    occupy a7 with _anonymous_of_temp_42_logicnot_82_0
              #                    load from temp_42_logicnot_82 in mem
    lb      a7,191(sp)
              #                    occupy s6 with _anonymous_of_temp_47__88_0
              #                    load from temp_47__88 in mem
    lb      s6,186(sp)
              #                    occupy a4 with _anonymous_of_temp_40_logicnot_82_0
              #                    load from temp_40_logicnot_82 in mem
    lb      a4,193(sp)
              #                    occupy s7 with _anonymous_of_temp_48_logic_88_0
              #                    load from temp_48_logic_88 in mem
    lb      s7,185(sp)
              #                    occupy a3 with _anonymous_of_temp_39_booltrans_82_0
              #                    load from temp_39_booltrans_82 in mem
    lb      a3,194(sp)
              #                    occupy s4 with _anonymous_of_temp_45_logic_85_0
              #                    load from temp_45_logic_85 in mem
    lb      s4,188(sp)
              #                    occupy a6 with _anonymous_of_temp_41_booltrans_82_0
              #                    load from temp_41_booltrans_82 in mem
    lb      a6,192(sp)
    j       .branch_false_89
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s1:Freed { symidx: temp_46__88, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } |     s6:Freed { symidx: temp_47__88, tracked: true } |     s7:Freed { symidx: temp_48_logic_88, tracked: true } | 
              #                          label branch_false_89: 
.branch_false_89:
              #                    regtab     a2:Freed { symidx: temp_38__1987, tracked: true } |     a3:Freed { symidx: temp_39_booltrans_82, tracked: true } |     a4:Freed { symidx: temp_40_logicnot_82, tracked: true } |     a5:Freed { symidx: temp_43__85, tracked: true } |     a6:Freed { symidx: temp_41_booltrans_82, tracked: true } |     a7:Freed { symidx: temp_42_logicnot_82, tracked: true } |     s1:Freed { symidx: temp_46__88, tracked: true } |     s3:Freed { symidx: temp_44__85, tracked: true } |     s4:Freed { symidx: temp_45_logic_85, tracked: true } |     s6:Freed { symidx: temp_47__88, tracked: true } |     s7:Freed { symidx: temp_48_logic_88, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                           Call void putint_0(114514_0) 
              #                    saved register dumping to mem
              #                    store to temp_46__88 in mem offset legal
    sb      s1,187(sp)
              #                    release s1 with temp_46__88
              #                    store to temp_44__85 in mem offset legal
    sb      s3,189(sp)
              #                    release s3 with temp_44__85
              #                    store to temp_45_logic_85 in mem offset legal
    sb      s4,188(sp)
              #                    release s4 with temp_45_logic_85
              #                    store to temp_47__88 in mem offset legal
    sb      s6,186(sp)
              #                    release s6 with temp_47__88
              #                    store to temp_48_logic_88 in mem offset legal
    sb      s7,185(sp)
              #                    release s7 with temp_48_logic_88
              #                    store to temp_38__1987 in mem offset legal
    sb      a2,195(sp)
              #                    release a2 with temp_38__1987
              #                    store to temp_39_booltrans_82 in mem offset legal
    sb      a3,194(sp)
              #                    release a3 with temp_39_booltrans_82
              #                    store to temp_40_logicnot_82 in mem offset legal
    sb      a4,193(sp)
              #                    release a4 with temp_40_logicnot_82
              #                    store to temp_43__85 in mem offset legal
    sb      a5,190(sp)
              #                    release a5 with temp_43__85
              #                    store to temp_41_booltrans_82 in mem offset legal
    sb      a6,192(sp)
              #                    release a6 with temp_41_booltrans_82
              #                    store to temp_42_logicnot_82 in mem offset legal
    sb      a7,191(sp)
              #                    release a7 with temp_42_logicnot_82
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_114514_0_0
    li      a0, 114514
              #                    arg load ended


    call    putint
              #                          i_73 = i32 1_0 
              #                    occupy a0 with i_73
    li      a0, 1
              #                    free a0
              #                          p_73 = i32 0_0 
              #                    occupy a1 with p_73
    li      a1, 0
              #                    free a1
              #                          new_var arr_73:Array:f32:[Some(10_0)] 
              #                          new_var temp_49_array_init_ptr_73:ptr->f32 
              #                          temp_49_array_init_ptr_73 = getelementptr arr_73:Array:f32:[Some(10_0)] [] 
              #                    occupy a2 with temp_49_array_init_ptr_73
    li      a2, 0
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,112
              #                    free a2
              #                           Call void memset_0(temp_49_array_init_ptr_73, 0_0, 40_0) 
              #                    saved register dumping to mem
              #                    store to i_73 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_73
              #                    store to p_73 in mem offset legal
    sw      a1,176(sp)
              #                    release a1 with p_73
              #                    store to temp_49_array_init_ptr_73 in mem offset legal
    sd      a2,168(sp)
              #                    release a2 with temp_49_array_init_ptr_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_49_array_init_ptr_73_0
              #                    load from temp_49_array_init_ptr_73 in mem
    ld      a0,168(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    occupy a2 with _anonymous_of_40_0_0
    li      a2, 40
              #                    arg load ended


    call    memset
              #                          new_var temp_50_array_init_ptr_73:ptr->f32 
              #                          temp_50_array_init_ptr_73 = getelementptr arr_73:Array:f32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a0 with temp_50_array_init_ptr_73
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,112
              #                    free a0
              #                          store 1._0:f32 temp_50_array_init_ptr_73:ptr->f32 
              #                    occupy a0 with temp_50_array_init_ptr_73
              #                    occupy fa0 with 1._0
              #                    occupy a4 with _anonymous_of_1._0_0
    li      a4, 1065353216
    fmv.w.x fa0, a4
              #                    free a4
    fsw     fa0,0(a0)
              #                    free fa0
              #                    free a0
              #                          mu arr_73:267 
              #                          arr_73 = chi arr_73:267 
              #                          new_var temp_51_array_init_ptr_73:ptr->f32 
              #                          temp_51_array_init_ptr_73 = getelementptr arr_73:Array:f32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a5 with temp_51_array_init_ptr_73
    li      a5, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a7,a1,a6
              #                    free a1
              #                    free a6
    add     a5,a5,a7
              #                    free a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,112
              #                    free a5
              #                          store 2._0:f32 temp_51_array_init_ptr_73:ptr->f32 
              #                    occupy a5 with temp_51_array_init_ptr_73
              #                    occupy fa1 with 2._0
              #                    occupy s1 with _anonymous_of_2._0_0
    li      s1, 1073741824
    fmv.w.x fa1, s1
              #                    free s1
    fsw     fa1,0(a5)
              #                    free fa1
              #                    free a5
              #                          mu arr_73:273 
              #                          arr_73 = chi arr_73:273 
              #                          new_var temp_52_array_ele_ptr_73:ptr->f32 
              #                          temp_52_array_ele_ptr_73 = getelementptr arr_73:Array:f32:[Some(10_0)] [] 
              #                    occupy s2 with temp_52_array_ele_ptr_73
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,112
              #                    free s2
              #                          new_var temp_53_ret_of_getfarray_73:i32 
              #                          temp_53_ret_of_getfarray_73 =  Call i32 getfarray_0(temp_52_array_ele_ptr_73) 
              #                    saved register dumping to mem
              #                    store to temp_52_array_ele_ptr_73 in mem offset legal
    sd      s2,104(sp)
              #                    release s2 with temp_52_array_ele_ptr_73
              #                    store to temp_50_array_init_ptr_73 in mem offset legal
    sd      a0,160(sp)
              #                    release a0 with temp_50_array_init_ptr_73
              #                    store to temp_51_array_init_ptr_73 in mem offset legal
    sd      a5,152(sp)
              #                    release a5 with temp_51_array_init_ptr_73
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_array_ele_ptr_73_0
              #                    load from temp_52_array_ele_ptr_73 in mem
    ld      a0,104(sp)
              #                    arg load ended


    call    getfarray
              #                    store to temp_53_ret_of_getfarray_73 in mem offset legal
    sw      a0,100(sp)
              #                          len_73 = i32 temp_53_ret_of_getfarray_73 
              #                    occupy a0 with temp_53_ret_of_getfarray_73
              #                    occupy a1 with len_73
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_96 
    j       .while.head_96
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_getfarray_73, tracked: true } |     a1:Freed { symidx: len_73, tracked: true } | 
              #                          label while.head_96: 
.while.head_96:
              #                          new_var temp_54__95:f32 
              #                          temp_54__95 = sitofp i32 i_73 to f32 
              #                    occupy a2 with i_73
              #                    load from i_73 in mem


    lw      a2,180(sp)
              #                    occupy fa0 with temp_54__95
    fcvt.s.w fa0,a2,rtz
              #                    free a2
              #                    free fa0
              #                          new_var temp_55_cmp_95:i1 
              #                          temp_55_cmp_95 = fcmp f32 Olt temp_54__95, 1e9_0 
              #                    occupy fa0 with temp_54__95
              #                    occupy fa1 with 1e9_0
              #                    occupy a3 with _anonymous_of_1e9_0_0
    li      a3, 1315859240
    fmv.w.x fa1, a3
              #                    free a3
              #                    occupy a4 with temp_55_cmp_95
    flt.s   a4,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free a4
              #                          br i1 temp_55_cmp_95, label while.body_96, label while.exit_96 
              #                    occupy a4 with temp_55_cmp_95
              #                    free a4
              #                    occupy a4 with temp_55_cmp_95
    bnez    a4, .while.body_96
              #                    free a4
    j       .while.exit_96
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_getfarray_73, tracked: true } |     a1:Freed { symidx: len_73, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a4:Freed { symidx: temp_55_cmp_95, tracked: true } |     fa0:Freed { symidx: temp_54__95, tracked: true } | 
              #                          label while.body_96: 
.while.body_96:
              #                          new_var temp_56_ret_of_getfloat_97:f32 
              #                          temp_56_ret_of_getfloat_97 =  Call f32 getfloat_0() 
              #                    saved register dumping to mem
              #                    store to temp_53_ret_of_getfarray_73 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_53_ret_of_getfarray_73
              #                    store to len_73 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with len_73
              #                    store to i_73 in mem offset legal
    sw      a2,180(sp)
              #                    release a2 with i_73
              #                    store to temp_55_cmp_95 in mem offset legal
    sb      a4,91(sp)
              #                    release a4 with temp_55_cmp_95
              #                    store to temp_54__95 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with temp_54__95
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getfloat
              #                    store to temp_56_ret_of_getfloat_97 in mem offset legal
    fsw     fa0,84(sp)
              #                          input_97 = f32 temp_56_ret_of_getfloat_97 
              #                    occupy fa0 with temp_56_ret_of_getfloat_97
              #                    occupy fa1 with input_97
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                          new_var temp_57_arithop_97:f32 
              #                          temp_57_arithop_97 = Mul f32 03.141592653589793_0, input_97 
              #                    occupy fa2 with 03.141592653589793_0
              #                    occupy a0 with _anonymous_of_03.141592653589793_0_0
    li      a0, 1078530011
    fmv.w.x fa2, a0
              #                    free a0
              #                    occupy fa1 with input_97
              #                    occupy fa3 with temp_57_arithop_97
    fmul.s  fa3,fa2,fa1
              #                    free fa2
              #                    free fa1
              #                    free fa3
              #                          new_var temp_58_arithop_97:f32 
              #                          temp_58_arithop_97 = Mul f32 temp_57_arithop_97, input_97 
              #                    occupy fa3 with temp_57_arithop_97
              #                    occupy fa1 with input_97
              #                    occupy fa4 with temp_58_arithop_97
    fmul.s  fa4,fa3,fa1
              #                    free fa3
              #                    free fa1
              #                    free fa4
              #                          area_97 = f32 temp_58_arithop_97 
              #                    occupy fa4 with temp_58_arithop_97
              #                    occupy fa5 with area_97
    fmv.s   fa5, fa4
              #                    free fa4
              #                    free fa5
              #                          new_var temp_59__97:i32 
              #                          temp_59__97 = fptosi f32 input_97 to i32 
              #                    occupy fa1 with input_97
              #                    occupy a1 with temp_59__97
    fcvt.w.s a1,fa1,rtz
              #                    free fa1
              #                    free a1
              #                          new_var temp_60_ret_of_circle_area_97:f32 
              #                          temp_60_ret_of_circle_area_97 =  Call f32 circle_area_0(temp_59__97) 
              #                    saved register dumping to mem
              #                    store to temp_59__97 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with temp_59__97
              #                    store to temp_56_ret_of_getfloat_97 in mem offset legal
    fsw     fa0,84(sp)
              #                    release fa0 with temp_56_ret_of_getfloat_97
              #                    store to input_97 in mem offset legal
    fsw     fa1,80(sp)
              #                    release fa1 with input_97
              #                    store to temp_57_arithop_97 in mem offset legal
    fsw     fa3,76(sp)
              #                    release fa3 with temp_57_arithop_97
              #                    store to temp_58_arithop_97 in mem offset legal
    fsw     fa4,72(sp)
              #                    release fa4 with temp_58_arithop_97
              #                    store to area_97 in mem offset legal
    fsw     fa5,68(sp)
              #                    release fa5 with area_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_59__97_0
              #                    load from temp_59__97 in mem


    lw      a0,64(sp)
              #                    arg load ended


    call    circle_area
              #                    store to temp_60_ret_of_circle_area_97 in mem offset legal
    fsw     fa0,60(sp)
              #                          area_trunc_97 = f32 temp_60_ret_of_circle_area_97 
              #                    occupy fa0 with temp_60_ret_of_circle_area_97
              #                    occupy fa1 with area_trunc_97
    fmv.s   fa1, fa0
              #                    free fa0
              #                    free fa1
              #                          new_var temp_61_index_ptr_97:ptr->f32 
              #                          temp_61_index_ptr_97 = getelementptr arr_73:Array:f32:[Some(10_0)] [Some(p_73)] 
              #                    occupy a0 with temp_61_index_ptr_97
    li      a0, 0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with p_73
              #                    load from p_73 in mem


    lw      a2,176(sp)
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,112
              #                    free a0
              #                          new_var temp_62_array_ptr_97:ptr->f32 
              #                          temp_62_array_ptr_97 = getelementptr arr_73:Array:f32:[Some(10_0)] [Some(p_73)] 
              #                    occupy a4 with temp_62_array_ptr_97
    li      a4, 0
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a2 with p_73
              #                    occupy a5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a5,a1,a2
              #                    free a1
              #                    free a2
    add     a4,a4,a5
              #                    free a5
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,112
              #                    free a4
              #                          new_var temp_63_array_ele_97:f32 
              #                          temp_63_array_ele_97 = load temp_62_array_ptr_97:ptr->f32 
              #                    occupy a4 with temp_62_array_ptr_97
              #                    occupy fa2 with temp_63_array_ele_97
    flw     fa2,0(a4)
              #                    free fa2
              #                    free a4
              #                          new_var temp_64_arithop_97:f32 
              #                          temp_64_arithop_97 = Add f32 temp_63_array_ele_97, input_97 
              #                    occupy fa2 with temp_63_array_ele_97
              #                    occupy fa3 with input_97
              #                    load from input_97 in mem


    flw     fa3,80(sp)
              #                    occupy fa4 with temp_64_arithop_97
    fadd.s  fa4,fa2,fa3
              #                    free fa2
              #                    free fa3
              #                    free fa4
              #                          store temp_64_arithop_97:f32 temp_61_index_ptr_97:ptr->f32 
              #                    occupy a0 with temp_61_index_ptr_97
              #                    occupy fa4 with temp_64_arithop_97
    fsw     fa4,0(a0)
              #                    free fa4
              #                    free a0
              #                          mu arr_73:329 
              #                          arr_73 = chi arr_73:329 
              #                           Call void putfloat_0(area_97) 
              #                    saved register dumping to mem
              #                    store to temp_61_index_ptr_97 in mem offset legal
    sd      a0,48(sp)
              #                    release a0 with temp_61_index_ptr_97
              #                    store to p_73 in mem offset legal
    sw      a2,176(sp)
              #                    release a2 with p_73
              #                    store to temp_62_array_ptr_97 in mem offset legal
    sd      a4,40(sp)
              #                    release a4 with temp_62_array_ptr_97
              #                    store to temp_60_ret_of_circle_area_97 in mem offset legal
    fsw     fa0,60(sp)
              #                    release fa0 with temp_60_ret_of_circle_area_97
              #                    store to area_trunc_97 in mem offset legal
    fsw     fa1,56(sp)
              #                    release fa1 with area_trunc_97
              #                    store to temp_63_array_ele_97 in mem offset legal
    fsw     fa2,36(sp)
              #                    release fa2 with temp_63_array_ele_97
              #                    store to input_97 in mem offset legal
    fsw     fa3,80(sp)
              #                    release fa3 with input_97
              #                    store to temp_64_arithop_97 in mem offset legal
    fsw     fa4,32(sp)
              #                    release fa4 with temp_64_arithop_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy fa0 with _anonymous_of_area_97_0
              #                    load from area_97 in mem


    flw     fa0,68(sp)
              #                    arg load ended


    call    putfloat
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          new_var temp_65__97:i32 
              #                          temp_65__97 = fptosi f32 area_trunc_97 to i32 
              #                    occupy fa0 with area_trunc_97
              #                    load from area_trunc_97 in mem


    flw     fa0,56(sp)
              #                    occupy a0 with temp_65__97
    fcvt.w.s a0,fa0,rtz
              #                    free fa0
              #                    free a0
              #                           Call void putint_0(temp_65__97) 
              #                    saved register dumping to mem
              #                    store to temp_65__97 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_65__97
              #                    store to area_trunc_97 in mem offset legal
    fsw     fa0,56(sp)
              #                    release fa0 with area_trunc_97
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_65__97_0
              #                    load from temp_65__97 in mem


    lw      a0,28(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_66__97:f32 
              #                          temp_66__97 = sitofp i32 i_73 to f32 
              #                    occupy a0 with i_73
              #                    load from i_73 in mem


    lw      a0,180(sp)
              #                    occupy fa0 with temp_66__97
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                          new_var temp_67_arithop_97:f32 
              #                          temp_67_arithop_97 = Mul f32 temp_66__97, 10._0 
              #                    occupy fa0 with temp_66__97
              #                    occupy fa1 with 10._0
              #                    occupy a1 with _anonymous_of_10._0_0
    li      a1, 1092616192
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy fa2 with temp_67_arithop_97
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                          new_var temp_68__97:i32 
              #                          temp_68__97 = fptosi f32 temp_67_arithop_97 to i32 
              #                    occupy fa2 with temp_67_arithop_97
              #                    occupy a2 with temp_68__97
    fcvt.w.s a2,fa2,rtz
              #                    free fa2
              #                    free a2
              #                          i_73 = i32 temp_68__97 
              #                    occupy a2 with temp_68__97
              #                    occupy a0 with i_73
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          new_var temp_69_arithop_97:i32 
              #                          temp_69_arithop_97 = Add i32 p_73, 1_0 
              #                    occupy a3 with p_73
              #                    load from p_73 in mem


    lw      a3,176(sp)
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_69_arithop_97
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          p_73 = i32 temp_69_arithop_97 
              #                    occupy a5 with temp_69_arithop_97
              #                    occupy a3 with p_73
    mv      a3, a5
              #                    free a5
              #                    free a3
              #                          jump label: while.head_96 
              #                    store to temp_68__97 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_68__97
              #                    store to temp_69_arithop_97 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_69_arithop_97
              #                    store to i_73 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with i_73
              #                    store to temp_67_arithop_97 in mem offset legal
    fsw     fa2,20(sp)
              #                    release fa2 with temp_67_arithop_97
              #                    store to p_73 in mem offset legal
    sw      a3,176(sp)
              #                    release a3 with p_73
              #                    store to temp_66__97 in mem offset legal
    fsw     fa0,24(sp)
              #                    release fa0 with temp_66__97
              #                    occupy a0 with _anonymous_of_temp_53_ret_of_getfarray_73_0
              #                    load from temp_53_ret_of_getfarray_73 in mem


    lw      a0,100(sp)
              #                    occupy a1 with _anonymous_of_len_73_0
              #                    load from len_73 in mem


    lw      a1,96(sp)
    j       .while.head_96
              #                    regtab     a0:Freed { symidx: temp_53_ret_of_getfarray_73, tracked: true } |     a1:Freed { symidx: len_73, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a4:Freed { symidx: temp_55_cmp_95, tracked: true } |     fa0:Freed { symidx: temp_54__95, tracked: true } | 
              #                          label while.exit_96: 
.while.exit_96:
              #                          new_var temp_70_array_ele_ptr_73:ptr->f32 
              #                          temp_70_array_ele_ptr_73 = getelementptr arr_73:Array:f32:[Some(10_0)] [] 
              #                    occupy a3 with temp_70_array_ele_ptr_73
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,112
              #                    free a3
              #                           Call void putfarray_0(len_73, temp_70_array_ele_ptr_73) 
              #                    saved register dumping to mem
              #                    store to temp_53_ret_of_getfarray_73 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with temp_53_ret_of_getfarray_73
              #                    store to len_73 in mem offset legal
    sw      a1,96(sp)
              #                    release a1 with len_73
              #                    store to i_73 in mem offset legal
    sw      a2,180(sp)
              #                    release a2 with i_73
              #                    store to temp_70_array_ele_ptr_73 in mem offset legal
    sd      a3,0(sp)
              #                    release a3 with temp_70_array_ele_ptr_73
              #                    store to temp_55_cmp_95 in mem offset legal
    sb      a4,91(sp)
              #                    release a4 with temp_55_cmp_95
              #                    store to temp_54__95 in mem offset legal
    fsw     fa0,92(sp)
              #                    release fa0 with temp_54__95
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_len_73_0
              #                    load from len_73 in mem


    lw      a0,96(sp)
              #                    occupy a1 with _anonymous_of_temp_70_array_ele_ptr_73_0
              #                    load from temp_70_array_ele_ptr_73 in mem
    ld      a1,0(sp)
              #                    arg load ended


    call    putfarray
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,248(sp)
              #                    load from s0_main_0 in mem
    ld      s0,240(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,256
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl FIVE
              #                          global i32 FIVE_0 
    .type FIVE,@object
FIVE:
    .word 5
    .align 4
    .globl THREE
              #                          global i32 THREE_0 
    .type THREE,@object
THREE:
    .word 3
    .align 4
    .globl TWO
              #                          global i32 TWO_0 
    .type TWO,@object
TWO:
    .word 2
    .align 4
    .globl MAX
              #                          global i32 MAX_0 
    .type MAX,@object
MAX:
    .word 1000000000
    .align 4
    .globl CONV2
              #                          global f32 CONV2_0 
    .type CONV2,@object
CONV2:
    .word 1166012416
    .align 4
    .globl CONV1
              #                          global f32 CONV1_0 
    .type CONV1,@object
CONV1:
    .word 1130954752
    .align 4
    .globl EVAL3
              #                          global f32 EVAL3_0 
    .type EVAL3,@object
EVAL3:
    .word 1107966695
    .align 4
    .globl EVAL2
              #                          global f32 EVAL2_0 
    .type EVAL2,@object
EVAL2:
    .word 1107966695
    .align 4
    .globl EVAL1
              #                          global f32 EVAL1_0 
    .type EVAL1,@object
EVAL1:
    .word 1119752446
    .align 4
    .globl FACT
              #                          global f32 FACT_0 
    .type FACT,@object
FACT:
    .word 3338725376
    .align 4
    .globl HEX2
              #                          global f32 HEX2_0 
    .type HEX2,@object
HEX2:
    .word 1033895936
    .align 4
    .globl PI_HEX
              #                          global f32 PI_HEX_0 
    .type PI_HEX,@object
PI_HEX:
    .word 1078530011
    .align 4
    .globl EPS
              #                          global f32 EPS_0 
    .type EPS,@object
EPS:
    .word 897988541
    .align 4
    .globl PI
              #                          global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl RADIUS
              #                          global f32 RADIUS_0 
    .type RADIUS,@object
RADIUS:
    .word 1085276160
