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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|a:4 at 36|temp_0_:4 at 32|temp_1_arithop:4 at 28|b:4 at 24|c:4 at 20|temp_2_f32_to_bool:1 at 19|temp_3_i32_to_bool:1 at 18|temp_4_i32_to_bool:1 at 17|none:1 at 16|temp_5_:4 at 12|temp_6_arithop:4 at 8|temp_7_:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 a_17 
              #                          alloc f32 temp_0__17 
              #                          alloc f32 temp_1_arithop_17 
              #                          alloc f32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i1 temp_2_f32_to_bool_21 
              #                          alloc i1 temp_3_i32_to_bool_21 
              #                          alloc i1 temp_4_i32_to_bool_21 
              #                          alloc f32 temp_5__23 
              #                          alloc f32 temp_6_arithop_23 
              #                          alloc i32 temp_7__23 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                          a_17 = i32 3_0 
              #                    occupy a0 with a_17
    li      a0, 3
              #                    free a0
              #                          new_var temp_0__17:f32 
              #                          temp_0__17 = sitofp i32 a_17 to f32 
              #                    occupy a0 with a_17
              #                    occupy fa0 with temp_0__17
    fcvt.s.w fa0,a0,rtz
              #                    free a0
              #                    free fa0
              #                          new_var temp_1_arithop_17:f32 
              #                          temp_1_arithop_17 = Mul f32 temp_0__17, 2.3_0 
              #                    occupy fa0 with temp_0__17
              #                    occupy fa1 with 2.3_0
              #                    occupy a1 with _anonymous_of_2.3_0_0
    li      a1, 1075000115
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy fa2 with temp_1_arithop_17
    fmul.s  fa2,fa0,fa1
              #                    free fa0
              #                    free fa1
              #                    free fa2
              #                          b_17 = f32 temp_1_arithop_17 
              #                    occupy fa2 with temp_1_arithop_17
              #                    occupy fa3 with b_17
    fmv.s   fa3, fa2
              #                    free fa2
              #                    free fa3
              #                          c_17 = i32 1_0 
              #                    occupy a2 with c_17
    li      a2, 1
              #                    free a2
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |  released_gpr_count:16,released_fpr_count:20
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_4_i32_to_bool_21:i1 
              #                          temp_4_i32_to_bool_21 = icmp i32 Ne a_17, 0_0 
              #                    occupy a0 with a_17
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a3 with temp_4_i32_to_bool_21
    xor     a3,a0,a1
    snez    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                          br i1 temp_4_i32_to_bool_21, label branch_short_circuit_c_true_72, label branch_short_circuit_p_false_70 
              #                    occupy a3 with temp_4_i32_to_bool_21
              #                    free a3
              #                    occupy a3 with temp_4_i32_to_bool_21
    bnez    a3, .branch_short_circuit_c_true_72
              #                    free a3
    j       .branch_short_circuit_p_false_70
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_4_i32_to_bool_21, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |  released_gpr_count:14,released_fpr_count:20
              #                          label branch_short_circuit_c_true_72: 
.branch_short_circuit_c_true_72:
              #                          new_var temp_5__23:f32 
              #                          temp_5__23 = sitofp i32 c_17 to f32 
              #                    occupy a2 with c_17
              #                    occupy fa1 with temp_5__23
    fcvt.s.w fa1,a2,rtz
              #                    free a2
              #                    free fa1
              #                          new_var temp_6_arithop_23:f32 
              #                          temp_6_arithop_23 = Add f32 b_17, temp_5__23 
              #                    occupy fa3 with b_17
              #                    occupy fa1 with temp_5__23
              #                    occupy fa4 with temp_6_arithop_23
    fadd.s  fa4,fa3,fa1
              #                    free fa3
              #                    free fa1
              #                    free fa4
              #                          new_var temp_7__23:i32 
              #                          temp_7__23 = fptosi f32 temp_6_arithop_23 to i32 
              #                    occupy fa4 with temp_6_arithop_23
              #                    occupy a1 with temp_7__23
    fcvt.w.s a1,fa4,rtz
              #                    free fa4
              #                    free a1
              #                          a_17 = i32 temp_7__23 
              #                    occupy a1 with temp_7__23
              #                    occupy a0 with a_17
    mv      a0, a1
              #                    free a1
              #                    free a0
              #                          jump label: branch_short_circuit_c_false_72 
    j       .branch_short_circuit_c_false_72
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_7__23, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_4_i32_to_bool_21, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa1:Freed { symidx: temp_5__23, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |     fa4:Freed { symidx: temp_6_arithop_23, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                          label branch_short_circuit_c_false_72: 
.branch_short_circuit_c_false_72:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: temp_7__23, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_4_i32_to_bool_21, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa1:Freed { symidx: temp_5__23, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |     fa4:Freed { symidx: temp_6_arithop_23, tracked: true } |  released_gpr_count:13,released_fpr_count:18
              #                          label L2_0: 
.L2_0:
              #                          ret a_17 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with a_17
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,36(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_4_i32_to_bool_21, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |  released_gpr_count:14,released_fpr_count:20
              #                          label branch_short_circuit_p_false_70: 
.branch_short_circuit_p_false_70:
              #                          new_var temp_2_f32_to_bool_21:i1 
              #                          temp_2_f32_to_bool_21 = fcmp f32 One b_17, 0.0_0 
              #                    occupy fa3 with b_17
              #                    occupy fa1 with 0.0_0
              #                    occupy a1 with _anonymous_of_0.0_0_0
    li      a1, 0
    fmv.w.x fa1, a1
              #                    free a1
              #                    occupy a4 with temp_2_f32_to_bool_21
    feq.s   a4,fa3,fa1
    seqz    a4, a4
              #                    free fa3
              #                    free fa1
              #                    free a4
              #                          br i1 temp_3_i32_to_bool_21, label branch_short_circuit_p_true_72, label branch_short_circuit_c_false_72 
              #                    occupy a5 with temp_3_i32_to_bool_21
              #                    load from temp_3_i32_to_bool_21 in mem
    lb      a5,18(sp)
              #                    free a5
              #                    occupy a5 with temp_3_i32_to_bool_21
    bnez    a5, .branch_short_circuit_p_true_72
              #                    free a5
              #                    occupy a1 with temp_7__23
              #                    load from temp_7__23 in mem


    lw      a1,4(sp)
              #                    occupy fa4 with temp_6_arithop_23
              #                    load from temp_6_arithop_23 in mem


    flw     fa4,8(sp)
              #                    occupy a5 with temp_3_i32_to_bool_21
              #                    store to temp_3_i32_to_bool_21 in mem offset legal
    sb      a5,18(sp)
              #                    release a5 with temp_3_i32_to_bool_21
              #                    occupy a4 with temp_2_f32_to_bool_21
              #                    store to temp_2_f32_to_bool_21 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_2_f32_to_bool_21
              #                    occupy fa1 with temp_5__23
              #                    load from temp_5__23 in mem


    flw     fa1,12(sp)
    j       .branch_short_circuit_c_false_72
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: temp_4_i32_to_bool_21, tracked: true } |     a4:Freed { symidx: temp_2_f32_to_bool_21, tracked: true } |     a5:Freed { symidx: temp_3_i32_to_bool_21, tracked: true } |     fa0:Freed { symidx: temp_0__17, tracked: true } |     fa2:Freed { symidx: temp_1_arithop_17, tracked: true } |     fa3:Freed { symidx: b_17, tracked: true } |  released_gpr_count:11,released_fpr_count:19
              #                          label branch_short_circuit_p_true_72: 
.branch_short_circuit_p_true_72:
              #                          new_var temp_3_i32_to_bool_21:i1 
              #                          temp_3_i32_to_bool_21 = icmp i32 Ne c_17, 0_0 
              #                    occupy a2 with c_17
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a5 with temp_3_i32_to_bool_21
    xor     a5,a2,a1
    snez    a5, a5
              #                    free a2
              #                    free a1
              #                    free a5
              #                          br i1 temp_2_f32_to_bool_21, label branch_short_circuit_c_true_72, label branch_short_circuit_c_false_72 
              #                    occupy a4 with temp_2_f32_to_bool_21
              #                    free a4
              #                    occupy a5 with temp_3_i32_to_bool_21
              #                    store to temp_3_i32_to_bool_21 in mem offset legal
    sb      a5,18(sp)
              #                    release a5 with temp_3_i32_to_bool_21
              #                    occupy a4 with temp_2_f32_to_bool_21
              #                    store to temp_2_f32_to_bool_21 in mem offset legal
    sb      a4,19(sp)
              #                    release a4 with temp_2_f32_to_bool_21
              #                    occupy a1 with temp_2_f32_to_bool_21
              #                    load from temp_2_f32_to_bool_21 in mem
    lb      a1,19(sp)
    bnez    a1, .branch_short_circuit_c_true_72
              #                    free a1
              #                    occupy a1 with temp_2_f32_to_bool_21
              #                    store to temp_2_f32_to_bool_21 in mem offset legal
    sb      a1,19(sp)
              #                    release a1 with temp_2_f32_to_bool_21
              #                    occupy a1 with temp_7__23
              #                    load from temp_7__23 in mem


    lw      a1,4(sp)
              #                    occupy fa4 with temp_6_arithop_23
              #                    load from temp_6_arithop_23 in mem


    flw     fa4,8(sp)
              #                    occupy fa1 with temp_5__23
              #                    load from temp_5__23 in mem


    flw     fa1,12(sp)
    j       .branch_short_circuit_c_false_72
