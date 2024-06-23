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
              #                          Define deepWhileBr_0 [a_16, b_16] -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
              #                    mem layout:|ra_deepWhileBr:8 at 64|s0_deepWhileBr:8 at 56|a:4 at 52|b:4 at 48|c:4 at 44|temp_0_arithop:4 at 40|temp_1_cmp:1 at 39|none:3 at 36|d:4 at 32|temp_2_cmp:1 at 31|none:3 at 28|temp_3_arithop:4 at 24|temp_4_cmp:1 at 23|none:3 at 20|e:4 at 16|temp_5_arithop:4 at 12|temp_6_cmp:1 at 11|none:3 at 8|temp_7_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_deepWhileBr_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_deepWhileBr_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 c_18 
              #                          alloc i32 temp_0_arithop_18 
              #                          alloc i1 temp_1_cmp_21 
              #                          alloc i32 d_23 
              #                          alloc i1 temp_2_cmp_26 
              #                          alloc i32 temp_3_arithop_28 
              #                          alloc i1 temp_4_cmp_30 
              #                          alloc i32 e_32 
              #                          alloc i32 temp_5_arithop_32 
              #                          alloc i1 temp_6_cmp_35 
              #                          alloc i32 temp_7_arithop_37 
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var c_18:i32 
              #                          new_var temp_0_arithop_18:i32 
              #                          temp_0_arithop_18 = Add i32 a_16, b_16 
              #                    occupy a0 with a_16
              #                    occupy a1 with b_16
              #                    occupy a2 with temp_0_arithop_18
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_18 = i32 temp_0_arithop_18 
              #                    occupy a2 with temp_0_arithop_18
              #                    occupy a3 with c_18
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          jump label: while.head_22 
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } | 
              #                          label while.head_22: 
.while.head_22:
              #                          new_var temp_1_cmp_21:i1 
              #                          temp_1_cmp_21 = icmp i32 Slt c_18, 75_0 
              #                    occupy a3 with c_18
              #                    occupy a4 with 75_0
    li      a4, 75
              #                    occupy a5 with temp_1_cmp_21
    slt     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          br i1 temp_1_cmp_21, label while.body_22, label while.exit_22 
              #                    occupy a5 with temp_1_cmp_21
              #                    free a5
              #                    occupy a5 with temp_1_cmp_21
    bnez    a5, .while.body_22
              #                    free a5
    j       .while.exit_22
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label while.body_22: 
.while.body_22:
              #                          new_var d_23:i32 
              #                          d_23 = i32 42_0 
              #                    occupy a4 with d_23
    li      a4, 42
              #                    free a4
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_2_cmp_26:i1 
              #                          temp_2_cmp_26 = icmp i32 Slt c_18, 100_0 
              #                    occupy a3 with c_18
              #                    occupy a6 with 100_0
    li      a6, 100
              #                    occupy a7 with temp_2_cmp_26
    slt     a7,a3,a6
              #                    free a3
              #                    free a6
              #                    free a7
              #                          br i1 temp_2_cmp_26, label branch_true_27, label branch_false_27 
              #                    occupy a7 with temp_2_cmp_26
              #                    free a7
              #                    occupy a7 with temp_2_cmp_26
    bnez    a7, .branch_true_27
              #                    free a7
    j       .branch_false_27
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } | 
              #                          label branch_true_27: 
.branch_true_27:
              #                          new_var temp_3_arithop_28:i32 
              #                          temp_3_arithop_28 = Add i32 c_18, d_23 
              #                    occupy a3 with c_18
              #                    occupy a4 with d_23
              #                    occupy a6 with temp_3_arithop_28
    add     a6,a3,a4
              #                    free a3
              #                    free a4
              #                    free a6
              #                          c_18 = i32 temp_3_arithop_28 
              #                    occupy a6 with temp_3_arithop_28
              #                    occupy a3 with c_18
    mv      a3, a6
              #                    free a6
              #                    free a3
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_4_cmp_30:i1 
              #                          temp_4_cmp_30 = icmp i32 Sgt c_18, 99_0 
              #                    occupy a3 with c_18
              #                    occupy s1 with 99_0
    li      s1, 99
              #                    occupy s2 with temp_4_cmp_30
    slt     s2,s1,a3
              #                    free a3
              #                    free s1
              #                    free s2
              #                          br i1 temp_4_cmp_30, label branch_true_31, label branch_false_31 
              #                    occupy s2 with temp_4_cmp_30
              #                    free s2
              #                    occupy s2 with temp_4_cmp_30
    bnez    s2, .branch_true_31
              #                    free s2
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_4_cmp_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var e_32:i32 
              #                          new_var temp_5_arithop_32:i32 
              #                          temp_5_arithop_32 = Mul i32 d_23, 2_0 
              #                    occupy a4 with d_23
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s3 with temp_5_arithop_32
    mul     s3,a4,s1
              #                    free a4
              #                    free s1
              #                    free s3
              #                          e_32 = i32 temp_5_arithop_32 
              #                    occupy s3 with temp_5_arithop_32
              #                    occupy s4 with e_32
    mv      s4, s3
              #                    free s3
              #                    free s4
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_4_cmp_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_32, tracked: true } |     s4:Freed { symidx: e_32, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_6_cmp_35:i1 
              #                          temp_6_cmp_35 = icmp i32 Eq 1_0, 1_0 
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s6 with temp_6_cmp_35
    xor     s6,s1,s5
    seqz    s6, s6
              #                    free s1
              #                    free s5
              #                    free s6
              #                          br i1 temp_6_cmp_35, label branch_true_36, label branch_false_36 
              #                    occupy s6 with temp_6_cmp_35
              #                    free s6
              #                    occupy s6 with temp_6_cmp_35
    bnez    s6, .branch_true_36
              #                    free s6
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_4_cmp_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_32, tracked: true } |     s4:Freed { symidx: e_32, tracked: true } |     s6:Freed { symidx: temp_6_cmp_35, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_7_arithop_37:i32 
              #                          temp_7_arithop_37 = Mul i32 e_32, 2_0 
              #                    occupy s4 with e_32
              #                    occupy s1 with 2_0
    li      s1, 2
              #                    occupy s5 with temp_7_arithop_37
    mul     s5,s4,s1
              #                    free s4
              #                    free s1
              #                    free s5
              #                          c_18 = i32 temp_7_arithop_37 
              #                    occupy s5 with temp_7_arithop_37
              #                    occupy a3 with c_18
    mv      a3, s5
              #                    free s5
              #                    free a3
              #                          jump label: branch_false_36 
              #                    store to temp_7_arithop_37 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_7_arithop_37
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_4_cmp_30, tracked: true } |     s3:Freed { symidx: temp_5_arithop_32, tracked: true } |     s4:Freed { symidx: e_32, tracked: true } |     s6:Freed { symidx: temp_6_cmp_35, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a6:Freed { symidx: temp_3_arithop_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } |     s2:Freed { symidx: temp_4_cmp_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a4:Freed { symidx: d_23, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } |     a7:Freed { symidx: temp_2_cmp_26, tracked: true } | 
              #                          label branch_false_27: 
.branch_false_27:
              #                          jump label: while.head_22 
              #                    store to d_23 in mem offset legal
    sw      a4,32(sp)
              #                    release a4 with d_23
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_21
              #                    store to temp_2_cmp_26 in mem offset legal
    sb      a7,31(sp)
              #                    release a7 with temp_2_cmp_26
    j       .while.head_22
              #                    regtab     a0:Freed { symidx: a_16, tracked: true } |     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a3:Freed { symidx: c_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                          label while.exit_22: 
.while.exit_22:
              #                          ret c_18 
              #                    load from ra_deepWhileBr_0 in mem
    ld      ra,64(sp)
              #                    load from s0_deepWhileBr_0 in mem
    ld      s0,56(sp)
              #                    store to c_18 in mem offset legal
    sw      a3,44(sp)
              #                    release a3 with c_18
              #                    store to a_16 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with a_16
              #                    occupy a0 with c_18
              #                    load from c_18 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_16, tracked: true } |     a2:Freed { symidx: temp_0_arithop_18, tracked: true } |     a5:Freed { symidx: temp_1_cmp_21, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|p:4 at 4|temp_8_ret_of_deepWhileBr:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 p_41 
              #                          alloc i32 temp_8_ret_of_deepWhileBr_41 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var p_41:i32 
              #                          p_41 = i32 2_0 
              #                    occupy a0 with p_41
    li      a0, 2
              #                    free a0
              #                          new_var temp_8_ret_of_deepWhileBr_41:i32 
              #                          temp_8_ret_of_deepWhileBr_41 =  Call i32 deepWhileBr_0(p_41, p_41) 
              #                    saved register dumping to mem
              #                    store to p_41 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with p_41
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_p_41_0
              #                    load from p_41 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_p_41_0
              #                    load from p_41 in mem


    lw      a1,4(sp)
              #                    arg load ended


    call    deepWhileBr
              #                    store to temp_8_ret_of_deepWhileBr_41 in mem offset legal
    sw      a0,0(sp)
              #                          ret temp_8_ret_of_deepWhileBr_41 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_8_ret_of_deepWhileBr_41 in mem offset legal
    sw      a0,0(sp)
              #                    release a0 with temp_8_ret_of_deepWhileBr_41
              #                    occupy a0 with temp_8_ret_of_deepWhileBr_41
              #                    load from temp_8_ret_of_deepWhileBr_41 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
