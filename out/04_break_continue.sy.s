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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 112|s0_main:8 at 104|sum:4 at 100|i:4 at 96|temp_0_cmp:1 at 95|none:3 at 92|j:4 at 88|temp_1_cmp:1 at 87|none:3 at 84|k:4 at 80|temp_2_cmp:1 at 79|none:3 at 76|m:4 at 72|temp_3_cmp:1 at 71|none:3 at 68|temp_4_arithop:4 at 64|temp_5_cmp:1 at 63|temp_6_:1 at 62|temp_7_booltrans:1 at 61|temp_8_logicnot:1 at 60|temp_9_:1 at 59|temp_10_logic:1 at 58|none:2 at 56|temp_11_arithop:4 at 52|temp_12_cmp:1 at 51|none:3 at 48|n:4 at 44|temp_13_cmp:1 at 43|none:3 at 40|temp_14_arithop:4 at 36|temp_15_arithop:4 at 32|temp_16_arithop:4 at 28|temp_17_arithop:4 at 24|temp_18_:1 at 23|temp_19_:1 at 22|none:2 at 20|temp_20_arithop:4 at 16|temp_21_arithop:4 at 12|temp_22_arithop:4 at 8|temp_23_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-120
              #                    store to ra_main_0 in mem offset legal
    sd      ra,112(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,104(sp)
    addi    s0,sp,120
              #                          alloc i32 sum_17 
              #                          alloc i32 i_17 
              #                          alloc i1 temp_0_cmp_20 
              #                          alloc i32 j_22 
              #                          alloc i1 temp_1_cmp_24 
              #                          alloc i32 k_26 
              #                          alloc i1 temp_2_cmp_28 
              #                          alloc i32 m_30 
              #                          alloc i1 temp_3_cmp_32 
              #                          alloc i32 temp_4_arithop_35 
              #                          alloc i1 temp_5_cmp_35 
              #                          alloc i1 temp_6__370 
              #                          alloc i1 temp_7_booltrans_39 
              #                          alloc i1 temp_8_logicnot_39 
              #                          alloc i1 temp_9__39 
              #                          alloc i1 temp_10_logic_39 
              #                          alloc i32 temp_11_arithop_41 
              #                          alloc i1 temp_12_cmp_41 
              #                          alloc i32 n_34 
              #                          alloc i1 temp_13_cmp_52 
              #                          alloc i32 temp_14_arithop_54 
              #                          alloc i32 temp_15_arithop_54 
              #                          alloc i32 temp_16_arithop_34 
              #                          alloc i32 temp_17_arithop_34 
              #                          alloc i1 temp_18__752 
              #                          alloc i1 temp_19__781 
              #                          alloc i32 temp_20_arithop_30 
              #                          alloc i32 temp_21_arithop_26 
              #                          alloc i32 temp_22_arithop_26 
              #                          alloc i32 temp_23_arithop_22 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          sum_17 = i32 0_0 
              #                    occupy a0 with sum_17
    li      a0, 0
              #                    free a0
              #                          i_17 = i32 0_0 
              #                    occupy a1 with i_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } | 
              #                          label while.head_21: 
.while.head_21:
              #                          new_var temp_0_cmp_20:i1 
              #                          temp_0_cmp_20 = icmp i32 Slt i_17, 20_0 
              #                    occupy a1 with i_17
              #                    occupy a2 with 20_0
    li      a2, 20
              #                    occupy a3 with temp_0_cmp_20
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_20, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_0_cmp_20
              #                    free a3
              #                    occupy a3 with temp_0_cmp_20
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label while.body_21: 
.while.body_21:
              #                          j_22 = i32 0_0 
              #                    occupy a2 with j_22
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label while.head_25: 
.while.head_25:
              #                          new_var temp_1_cmp_24:i1 
              #                          temp_1_cmp_24 = icmp i32 Slt j_22, 10_0 
              #                    occupy a2 with j_22
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy a5 with temp_1_cmp_24
    slt     a5,a2,a4
              #                    free a2
              #                    free a4
              #                    free a5
              #                          br i1 temp_1_cmp_24, label while.body_25, label while.exit_25 
              #                    occupy a5 with temp_1_cmp_24
              #                    free a5
              #                    occupy a5 with temp_1_cmp_24
    bnez    a5, .while.body_25
              #                    free a5
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          k_26 = i32 0_0 
              #                    occupy a4 with k_26
    li      a4, 0
              #                    free a4
              #                          jump label: while.head_29 
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label while.head_29: 
.while.head_29:
              #                          new_var temp_2_cmp_28:i1 
              #                          temp_2_cmp_28 = icmp i32 Slt k_26, 5_0 
              #                    occupy a4 with k_26
              #                    occupy a6 with 5_0
    li      a6, 5
              #                    occupy a7 with temp_2_cmp_28
    slt     a7,a4,a6
              #                    free a4
              #                    free a6
              #                    free a7
              #                          br i1 temp_2_cmp_28, label while.body_29, label while.exit_29 
              #                    occupy a7 with temp_2_cmp_28
              #                    free a7
              #                    occupy a7 with temp_2_cmp_28
    bnez    a7, .while.body_29
              #                    free a7
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } | 
              #                          label while.body_29: 
.while.body_29:
              #                          m_30 = i32 0_0 
              #                    occupy a6 with m_30
    li      a6, 0
              #                    free a6
              #                          jump label: while.head_33 
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } | 
              #                          label while.head_33: 
.while.head_33:
              #                          new_var temp_3_cmp_32:i1 
              #                          temp_3_cmp_32 = icmp i32 Slt m_30, 3_0 
              #                    occupy a6 with m_30
              #                    occupy s1 with 3_0
    li      s1, 3
              #                    occupy s2 with temp_3_cmp_32
    slt     s2,a6,s1
              #                    free a6
              #                    free s1
              #                    free s2
              #                          br i1 temp_3_cmp_32, label while.body_33, label while.exit_33 
              #                    occupy s2 with temp_3_cmp_32
              #                    free s2
              #                    occupy s2 with temp_3_cmp_32
    bnez    s2, .while.body_33
              #                    free s2
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_4_arithop_35:i32 
              #                          temp_4_arithop_35 = Add i32 m_30, 1_0 
              #                    occupy a6 with m_30
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_4_arithop_35
    add     s3,a6,s1
              #                    free a6
              #                    free s1
              #                    free s3
              #                          new_var temp_5_cmp_35:i1 
              #                          temp_5_cmp_35 = icmp i32 Sge temp_4_arithop_35, 3_0 
              #                    occupy s3 with temp_4_arithop_35
              #                    occupy s4 with 3_0
    li      s4, 3
              #                    occupy s5 with temp_5_cmp_35
    slt     s5,s3,s4
    xori    s5,s5,1
              #                    free s3
              #                    free s4
              #                    free s5
              #                          br i1 temp_5_cmp_35, label branch_true_36, label branch_false_36 
              #                    occupy s5 with temp_5_cmp_35
              #                    free s5
              #                    occupy s5 with temp_5_cmp_35
    bnez    s5, .branch_true_36
              #                    free s5
    j       .branch_false_36
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label branch_true_36: 
.branch_true_36:
              #                          new_var temp_6__370:i1 
              #                          temp_6__370 = icmp i32 Ne m_30, 0_0 
              #                    occupy a6 with m_30
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s4 with temp_6__370
    xor     s4,a6,s1
    snez    s4, s4
              #                    free a6
              #                    free s1
              #                    free s4
              #                          br i1 temp_6__370, label branch_true_38, label branch_false_38 
              #                    occupy s4 with temp_6__370
              #                    free s4
              #                    occupy s4 with temp_6__370
    bnez    s4, .branch_true_38
              #                    free s4
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label branch_true_38: 
.branch_true_38:
              #                          new_var temp_7_booltrans_39:i1 
              #                          temp_7_booltrans_39 = icmp i1 Ne m_30, 0_0 
              #                    occupy a6 with m_30
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s6 with temp_7_booltrans_39
    xor     s6,a6,s1
    snez    s6, s6
              #                    free a6
              #                    free s1
              #                    free s6
              #                          new_var temp_8_logicnot_39:i1 
              #                          temp_8_logicnot_39 = xor i1 temp_7_booltrans_39, true 
              #                    occupy s6 with temp_7_booltrans_39
              #                    occupy s7 with temp_8_logicnot_39
    seqz    s7, s6
              #                    free s6
              #                    free s7
              #                          new_var temp_9__39:i1 
              #                          temp_9__39 = icmp i32 Ne m_30, 0_0 
              #                    occupy a6 with m_30
              #                    found literal reg Some(s1) already exist with 0_0
              #                    occupy s1 with 0_0
              #                    occupy s8 with temp_9__39
    xor     s8,a6,s1
    snez    s8, s8
              #                    free a6
              #                    free s1
              #                    free s8
              #                          new_var temp_10_logic_39:i1 
              #                          temp_10_logic_39 = Or i1 temp_9__39, temp_8_logicnot_39 
              #                    occupy s8 with temp_9__39
              #                    occupy s7 with temp_8_logicnot_39
              #                    occupy s7 with temp_8_logicnot_39
              #                    free s8
              #                    free s7
              #                    free s7
              #                          br i1 temp_10_logic_39, label branch_true_40, label branch_false_40 
              #                    occupy s9 with temp_10_logic_39
              #                    load from temp_10_logic_39 in mem
    lb      s9,58(sp)
              #                    free s9
              #                    occupy s9 with temp_10_logic_39
    bnez    s9, .branch_true_40
              #                    free s9
    j       .branch_false_40
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_7_booltrans_39, tracked: true } |     s7:Freed { symidx: temp_8_logicnot_39, tracked: true } |     s8:Freed { symidx: temp_9__39, tracked: true } |     s9:Freed { symidx: temp_10_logic_39, tracked: true } | 
              #                          label branch_true_40: 
.branch_true_40:
              #                          new_var temp_11_arithop_41:i32 
              #                          temp_11_arithop_41 = Sub i32 m_30, -1_0 
              #                    occupy a6 with m_30
              #                    occupy s1 with -1_0
    li      s1, -1
              #                    occupy s10 with temp_11_arithop_41
              #                    regtab:    a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Occupied { symidx: m_30, tracked: true, occupy_count: 1 } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s10:Occupied { symidx: temp_11_arithop_41, tracked: true, occupy_count: 1 } |     s1:Occupied { symidx: -1_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_7_booltrans_39, tracked: true } |     s7:Freed { symidx: temp_8_logicnot_39, tracked: true } |     s8:Freed { symidx: temp_9__39, tracked: true } |     s9:Freed { symidx: temp_10_logic_39, tracked: true } | 


    sub     s10,a6,s1
              #                    free a6
              #                    free s1
              #                    free s10
              #                          new_var temp_12_cmp_41:i1 
              #                          temp_12_cmp_41 = icmp i32 Sge temp_11_arithop_41, 3_0 
              #                    occupy s10 with temp_11_arithop_41
              #                    occupy s11 with 3_0
    li      s11, 3
              #                    occupy s1 with temp_12_cmp_41
    slt     s1,s10,s11
    xori    s1,s1,1
              #                    free s10
              #                    free s11
              #                    free s1
              #                          br i1 temp_12_cmp_41, label branch_true_42, label branch_false_42 
              #                    occupy s1 with temp_12_cmp_41
              #                    free s1
              #                    occupy s1 with temp_12_cmp_41
    bnez    s1, .branch_true_42
              #                    free s1
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s10:Freed { symidx: temp_11_arithop_41, tracked: true } |     s1:Freed { symidx: temp_12_cmp_41, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_7_booltrans_39, tracked: true } |     s7:Freed { symidx: temp_8_logicnot_39, tracked: true } |     s8:Freed { symidx: temp_9__39, tracked: true } |     s9:Freed { symidx: temp_10_logic_39, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          jump label: while.exit_33 
              #                    store to temp_8_logicnot_39 in mem offset legal
    sb      s7,60(sp)
              #                    release s7 with temp_8_logicnot_39
              #                    store to temp_10_logic_39 in mem offset legal
    sb      s9,58(sp)
              #                    release s9 with temp_10_logic_39
              #                    store to temp_9__39 in mem offset legal
    sb      s8,59(sp)
              #                    release s8 with temp_9__39
              #                    store to temp_11_arithop_41 in mem offset legal
    sw      s10,52(sp)
              #                    release s10 with temp_11_arithop_41
              #                    store to temp_7_booltrans_39 in mem offset legal
    sb      s6,61(sp)
              #                    release s6 with temp_7_booltrans_39
              #                    store to temp_12_cmp_41 in mem offset legal
    sb      s1,51(sp)
              #                    release s1 with temp_12_cmp_41
              #                    store to temp_6__370 in mem offset legal
    sb      s4,62(sp)
              #                    release s4 with temp_6__370
              #                    store to temp_5_cmp_35 in mem offset legal
    sb      s5,63(sp)
              #                    release s5 with temp_5_cmp_35
              #                    store to temp_4_arithop_35 in mem offset legal
    sw      s3,64(sp)
              #                    release s3 with temp_4_arithop_35
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          new_var temp_18__752:i1 
              #                          temp_18__752 = icmp i32 Ne 1_0, 0_0 
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s4 with temp_18__752
    xor     s4,s1,s3
    snez    s4, s4
              #                    free s1
              #                    free s3
              #                    free s4
              #                          br i1 temp_18__752, label while.body_62, label while.exit_62 
              #                    occupy s4 with temp_18__752
              #                    free s4
              #                    occupy s4 with temp_18__752
    bnez    s4, .while.body_62
              #                    free s4
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s4:Freed { symidx: temp_18__752, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_19__781:i1 
              #                          temp_19__781 = icmp i32 Ne 1_0, 0_0 
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with 0_0
    li      s3, 0
              #                    occupy s5 with temp_19__781
    xor     s5,s1,s3
    snez    s5, s5
              #                    free s1
              #                    free s3
              #                    free s5
              #                          br i1 temp_19__781, label while.body_65, label while.exit_65 
              #                    occupy s5 with temp_19__781
              #                    free s5
              #                    occupy s5 with temp_19__781
    bnez    s5, .while.body_65
              #                    free s5
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s4:Freed { symidx: temp_18__752, tracked: true } |     s5:Freed { symidx: temp_19__781, tracked: true } | 
              #                          label while.body_65: 
.while.body_65:
              #                          jump label: while.exit_65 
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s4:Freed { symidx: temp_18__752, tracked: true } |     s5:Freed { symidx: temp_19__781, tracked: true } | 
              #                          label while.exit_65: 
.while.exit_65:
              #                          jump label: while.exit_65 
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s4:Freed { symidx: temp_18__752, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          new_var temp_20_arithop_30:i32 
              #                          temp_20_arithop_30 = Add i32 k_26, 1_0 
              #                    occupy a4 with k_26
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy s3 with temp_20_arithop_30
    add     s3,a4,s1
              #                    free a4
              #                    free s1
              #                    free s3
              #                          k_26 = i32 temp_20_arithop_30 
              #                    occupy s3 with temp_20_arithop_30
              #                    occupy a4 with k_26
    mv      a4, s3
              #                    free s3
              #                    free a4
              #                          jump label: while.head_29 
              #                    store to temp_2_cmp_28 in mem offset legal
    sb      a7,79(sp)
              #                    release a7 with temp_2_cmp_28
              #                    store to m_30 in mem offset legal
    sw      a6,72(sp)
              #                    release a6 with m_30
              #                    store to temp_18__752 in mem offset legal
    sb      s4,23(sp)
              #                    release s4 with temp_18__752
              #                    store to temp_3_cmp_32 in mem offset legal
    sb      s2,71(sp)
              #                    release s2 with temp_3_cmp_32
              #                    store to temp_20_arithop_30 in mem offset legal
    sw      s3,16(sp)
              #                    release s3 with temp_20_arithop_30
    j       .while.head_29
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s10:Freed { symidx: temp_11_arithop_41, tracked: true } |     s1:Freed { symidx: temp_12_cmp_41, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_7_booltrans_39, tracked: true } |     s7:Freed { symidx: temp_8_logicnot_39, tracked: true } |     s8:Freed { symidx: temp_9__39, tracked: true } |     s9:Freed { symidx: temp_10_logic_39, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_7_booltrans_39, tracked: true } |     s7:Freed { symidx: temp_8_logicnot_39, tracked: true } |     s8:Freed { symidx: temp_9__39, tracked: true } |     s9:Freed { symidx: temp_10_logic_39, tracked: true } | 
              #                          label branch_false_40: 
.branch_false_40:
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s4:Freed { symidx: temp_6__370, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label branch_false_38: 
.branch_false_38:
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label branch_false_36: 
.branch_false_36:
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          n_34 = i32 0_0 
              #                    occupy s1 with n_34
    li      s1, 0
              #                    free s1
              #                          jump label: while.head_53 
    j       .while.head_53
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s1:Freed { symidx: n_34, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } | 
              #                          label while.head_53: 
.while.head_53:
              #                          new_var temp_13_cmp_52:i1 
              #                          temp_13_cmp_52 = icmp i32 Slt n_34, 2_0 
              #                    occupy s1 with n_34
              #                    occupy s4 with 2_0
    li      s4, 2
              #                    occupy s6 with temp_13_cmp_52
    slt     s6,s1,s4
              #                    free s1
              #                    free s4
              #                    free s6
              #                          br i1 temp_13_cmp_52, label while.body_53, label while.exit_53 
              #                    occupy s6 with temp_13_cmp_52
              #                    free s6
              #                    occupy s6 with temp_13_cmp_52
    bnez    s6, .while.body_53
              #                    free s6
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s1:Freed { symidx: n_34, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_13_cmp_52, tracked: true } | 
              #                          label while.body_53: 
.while.body_53:
              #                          new_var temp_14_arithop_54:i32 
              #                          temp_14_arithop_54 = Add i32 n_34, 1_0 
              #                    occupy s1 with n_34
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_14_arithop_54
    add     s7,s1,s4
              #                    free s1
              #                    free s4
              #                    free s7
              #                          n_34 = i32 temp_14_arithop_54 
              #                    occupy s7 with temp_14_arithop_54
              #                    occupy s1 with n_34
    mv      s1, s7
              #                    free s7
              #                    free s1
              #                          jump label: while.exit_53 
              #                    store to temp_14_arithop_54 in mem offset legal
    sw      s7,36(sp)
              #                    release s7 with temp_14_arithop_54
    j       .while.exit_53
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: m_30, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } |     s1:Freed { symidx: n_34, tracked: true } |     s2:Freed { symidx: temp_3_cmp_32, tracked: true } |     s3:Freed { symidx: temp_4_arithop_35, tracked: true } |     s5:Freed { symidx: temp_5_cmp_35, tracked: true } |     s6:Freed { symidx: temp_13_cmp_52, tracked: true } | 
              #                          label while.exit_53: 
.while.exit_53:
              #                          new_var temp_16_arithop_34:i32 
              #                          temp_16_arithop_34 = Add i32 m_30, 1_0 
              #                    occupy a6 with m_30
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s7 with temp_16_arithop_34
    add     s7,a6,s4
              #                    free a6
              #                    free s4
              #                    free s7
              #                          m_30 = i32 temp_16_arithop_34 
              #                    occupy s7 with temp_16_arithop_34
              #                    occupy a6 with m_30
    mv      a6, s7
              #                    free s7
              #                    free a6
              #                          new_var temp_17_arithop_34:i32 
              #                          temp_17_arithop_34 = Add i32 sum_17, 1_0 
              #                    occupy a0 with sum_17
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s8 with temp_17_arithop_34
    add     s8,a0,s4
              #                    free a0
              #                    free s4
              #                    free s8
              #                          sum_17 = i32 temp_17_arithop_34 
              #                    occupy s8 with temp_17_arithop_34
              #                    occupy a0 with sum_17
    mv      a0, s8
              #                    free s8
              #                    free a0
              #                          jump label: while.head_33 
              #                    store to temp_16_arithop_34 in mem offset legal
    sw      s7,28(sp)
              #                    release s7 with temp_16_arithop_34
              #                    store to temp_17_arithop_34 in mem offset legal
    sw      s8,24(sp)
              #                    release s8 with temp_17_arithop_34
              #                    store to temp_13_cmp_52 in mem offset legal
    sb      s6,43(sp)
              #                    release s6 with temp_13_cmp_52
              #                    store to n_34 in mem offset legal
    sw      s1,44(sp)
              #                    release s1 with n_34
              #                    store to temp_3_cmp_32 in mem offset legal
    sb      s2,71(sp)
              #                    release s2 with temp_3_cmp_32
              #                    store to temp_5_cmp_35 in mem offset legal
    sb      s5,63(sp)
              #                    release s5 with temp_5_cmp_35
              #                    store to temp_4_arithop_35 in mem offset legal
    sw      s3,64(sp)
              #                    release s3 with temp_4_arithop_35
    j       .while.head_33
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a4:Freed { symidx: k_26, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_28, tracked: true } | 
              #                          label while.exit_29: 
.while.exit_29:
              #                          new_var temp_21_arithop_26:i32 
              #                          temp_21_arithop_26 = Add i32 j_22, 1_0 
              #                    occupy a2 with j_22
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy s1 with temp_21_arithop_26
    add     s1,a2,a6
              #                    free a2
              #                    free a6
              #                    free s1
              #                          j_22 = i32 temp_21_arithop_26 
              #                    occupy s1 with temp_21_arithop_26
              #                    occupy a2 with j_22
    mv      a2, s1
              #                    free s1
              #                    free a2
              #                          jump label: while.exit_29 
              #                    store to temp_21_arithop_26 in mem offset legal
    sw      s1,12(sp)
              #                    release s1 with temp_21_arithop_26
    j       .while.exit_29
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a2:Freed { symidx: j_22, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          new_var temp_23_arithop_22:i32 
              #                          temp_23_arithop_22 = Add i32 i_17, 1_0 
              #                    occupy a1 with i_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_23_arithop_22
    add     a6,a1,a4
              #                    free a1
              #                    free a4
              #                    free a6
              #                          i_17 = i32 temp_23_arithop_22 
              #                    occupy a6 with temp_23_arithop_22
              #                    occupy a1 with i_17
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: while.head_21 
              #                    store to j_22 in mem offset legal
    sw      a2,88(sp)
              #                    release a2 with j_22
              #                    store to temp_23_arithop_22 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_23_arithop_22
              #                    store to temp_0_cmp_20 in mem offset legal
    sb      a3,95(sp)
              #                    release a3 with temp_0_cmp_20
              #                    store to temp_1_cmp_24 in mem offset legal
    sb      a5,87(sp)
              #                    release a5 with temp_1_cmp_24
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label while.exit_21: 
.while.exit_21:
              #                          ret sum_17 
              #                    load from ra_main_0 in mem
    ld      ra,112(sp)
              #                    load from s0_main_0 in mem
    ld      s0,104(sp)
              #                    store to sum_17 in mem offset legal
    sw      a0,100(sp)
              #                    release a0 with sum_17
              #                    occupy a0 with sum_17
              #                    load from sum_17 in mem


    lw      a0,100(sp)
    addi    sp,sp,120
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_20, tracked: true } | 
