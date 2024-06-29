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
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|a:4 at 36|b:4 at 32|c:4 at 28|d:4 at 24|e:4 at 20|f:4 at 16|temp_0_logic:1 at 15|temp_1_:1 at 14|temp_2_:1 at 13|temp_3_logic:1 at 12|temp_4_logic:1 at 11|temp_5_:1 at 10|temp_6_:1 at 9|temp_7_logic:1 at 8|temp_8_cmp:1 at 7|temp_9_logic:1 at 6|temp_10_cmp:1 at 5|temp_11_cmp:1 at 4|temp_12_booltrans:1 at 3|temp_13_logicnot:1 at 2|none:2 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 c_17 
              #                          alloc i32 d_17 
              #                          alloc i32 e_17 
              #                          alloc i32 f_17 
              #                          alloc i1 temp_0_logic_24 
              #                          alloc i1 temp_1__27 
              #                          alloc i1 temp_2__27 
              #                          alloc i1 temp_3_logic_27 
              #                          alloc i1 temp_4_logic_30 
              #                          alloc i1 temp_5__34 
              #                          alloc i1 temp_6__34 
              #                          alloc i1 temp_7_logic_34 
              #                          alloc i1 temp_8_cmp_38 
              #                          alloc i1 temp_9_logic_41 
              #                          alloc i1 temp_10_cmp_45 
              #                          alloc i1 temp_11_cmp_48 
              #                          alloc i1 temp_12_booltrans_51 
              #                          alloc i1 temp_13_logicnot_51 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          a_17 = i32 1_0 
              #                    occupy a0 with a_17
    li      a0, 1
              #                    free a0
              #                          b_17 = i32 2_0 
              #                    occupy a1 with b_17
    li      a1, 2
              #                    free a1
              #                          c_17 = i32 3_0 
              #                    occupy a2 with c_17
    li      a2, 3
              #                    free a2
              #                          d_17 = i32 4_0 
              #                    occupy a3 with d_17
    li      a3, 4
              #                    free a3
              #                          e_17 = i32 5_0 
              #                    occupy a4 with e_17
    li      a4, 5
              #                    free a4
              #                          f_17 = i32 6_0 
              #                    occupy a5 with f_17
    li      a5, 6
              #                    free a5
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_logic_24:i1 
              #                          temp_0_logic_24 = And i1 true_0, true_0 
              #                    occupy a6 with true_0
    li      a6, 1
              #                    occupy a7 with true_0
    li      a7, 1
              #                    occupy s1 with temp_0_logic_24
    and     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_0_logic_24, label branch_true_25, label branch_false_25 
              #                    occupy s1 with temp_0_logic_24
              #                    free s1
              #                    occupy s1 with temp_0_logic_24
    bnez    s1, .branch_true_25
              #                    free s1
    j       .branch_false_25
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } | 
              #                          label branch_true_25: 
.branch_true_25:
              #                          new_var temp_1__27:i1 
              #                          temp_1__27 = icmp i32 Ne 5_0, 0_0 
              #                    occupy a6 with 5_0
    li      a6, 5
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s2 with temp_1__27
    xor     s2,a6,a7
    snez    s2, s2
              #                    free a6
              #                    free a7
              #                    free s2
              #                          new_var temp_2__27:i1 
              #                          temp_1__27 = icmp i32 Ne -2_0, 0_0 
              #                    occupy s3 with -2_0
    li      s3, -2
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s2 with temp_1__27
    xor     s2,s3,a7
    snez    s2, s2
              #                    free s3
              #                    free a7
              #                    free s2
              #                          new_var temp_3_logic_27:i1 
              #                          temp_3_logic_27 = Or i1 temp_1__27, temp_2__27 
              #                    occupy s2 with temp_1__27
              #                    occupy s4 with temp_2__27
              #                    load from temp_2__27 in mem
    lb      s4,13(sp)
              #                    occupy s5 with temp_3_logic_27
    or      s5,s2,s4
              #                    free s2
              #                    free s4
              #                    free s5
              #                          br i1 temp_3_logic_27, label branch_true_28, label branch_false_28 
              #                    occupy s5 with temp_3_logic_27
              #                    free s5
              #                    occupy s5 with temp_3_logic_27
    bnez    s5, .branch_true_28
              #                    free s5
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                          new_var temp_4_logic_30:i1 
              #                          temp_4_logic_30 = And i1 true_0, true_0 
              #                    occupy a6 with true_0
    li      a6, 1
              #                    occupy a7 with true_0
    li      a7, 1
              #                    occupy s3 with temp_4_logic_30
    and     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          br i1 temp_4_logic_30, label branch_true_31, label branch_false_31 
              #                    occupy s3 with temp_4_logic_30
              #                    free s3
              #                    occupy s3 with temp_4_logic_30
    bnez    s3, .branch_true_31
              #                    free s3
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          ret 3_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 3_0
    li      a0, 3
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_5__34:i1 
              #                          temp_5__34 = icmp i32 Ne 5_0, 0_0 
              #                    occupy a6 with 5_0
    li      a6, 5
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s6 with temp_5__34
    xor     s6,a6,a7
    snez    s6, s6
              #                    free a6
              #                    free a7
              #                    free s6
              #                          new_var temp_6__34:i1 
              #                          temp_5__34 = icmp i32 Ne 0_0, 0_0 
              #                    found literal reg Some(a7) already exist with 0_0
              #                    occupy a7 with 0_0
              #                    occupy s7 with 0_0
    li      s7, 0
              #                    occupy s6 with temp_5__34
    xor     s6,a7,s7
    snez    s6, s6
              #                    free a7
              #                    free s7
              #                    free s6
              #                          new_var temp_7_logic_34:i1 
              #                          temp_7_logic_34 = And i1 temp_5__34, temp_6__34 
              #                    occupy s6 with temp_5__34
              #                    occupy s8 with temp_6__34
              #                    load from temp_6__34 in mem
    lb      s8,9(sp)
              #                    occupy s9 with temp_7_logic_34
    and     s9,s6,s8
              #                    free s6
              #                    free s8
              #                    free s9
              #                          br i1 temp_7_logic_34, label branch_true_35, label branch_false_35 
              #                    occupy s9 with temp_7_logic_34
              #                    free s9
              #                    occupy s9 with temp_7_logic_34
    bnez    s9, .branch_true_35
              #                    free s9
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          ret 4_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                          new_var temp_8_cmp_38:i1 
              #                          temp_8_cmp_38 = icmp i32 Sge 2_0, 3_0 
              #                    occupy a6 with 2_0
    li      a6, 2
              #                    occupy a7 with 3_0
    li      a7, 3
              #                    occupy s7 with temp_8_cmp_38
    slt     s7,a6,a7
    xori    s7,s7,1
              #                    free a6
              #                    free a7
              #                    free s7
              #                          br i1 temp_8_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy s7 with temp_8_cmp_38
              #                    free s7
              #                    occupy s7 with temp_8_cmp_38
    bnez    s7, .branch_true_39
              #                    free s7
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                          new_var temp_9_logic_41:i1 
              #                          temp_9_logic_41 = Or i1 false_0, false_0 
              #                    occupy a6 with false_0
    li      a6, 0
              #                    occupy a7 with false_0
    li      a7, 0
              #                    occupy s10 with temp_9_logic_41
    or      s10,a6,a7
              #                    free a6
              #                    free a7
              #                    free s10
              #                          br i1 temp_9_logic_41, label branch_true_42, label branch_false_42 
              #                    occupy s10 with temp_9_logic_41
              #                    free s10
              #                    occupy s10 with temp_9_logic_41
    bnez    s10, .branch_true_42
              #                    free s10
    j       .branch_false_42
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_42: 
.branch_true_42:
              #                          ret 6_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 6_0
    li      a0, 6
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_42: 
.branch_false_42:
              #                          new_var temp_10_cmp_45:i1 
              #                          temp_10_cmp_45 = icmp i32 Ne 3_0, 6_0 
              #                    occupy a6 with 3_0
    li      a6, 3
              #                    occupy a7 with 6_0
    li      a7, 6
              #                    occupy s11 with temp_10_cmp_45
    xor     s11,a6,a7
    snez    s11, s11
              #                    free a6
              #                    free a7
              #                    free s11
              #                          br i1 temp_10_cmp_45, label branch_true_46, label branch_false_46 
              #                    occupy s11 with temp_10_cmp_45
              #                    free s11
              #                    occupy s11 with temp_10_cmp_45
    bnez    s11, .branch_true_46
              #                    free s11
    j       .branch_false_46
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_46: 
.branch_true_46:
              #                          new_var temp_11_cmp_48:i1 
              #                          temp_11_cmp_48 = icmp i32 Sgt 10_0, 22_0 
              #                    occupy a6 with 10_0
    li      a6, 10
              #                    occupy a7 with 22_0
    li      a7, 22
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with temp_11_cmp_48
    slt     a0,a7,a6
              #                    free a6
              #                    free a7
              #                    free a0
              #                          br i1 temp_11_cmp_48, label branch_true_49, label branch_false_49 
              #                    occupy a0 with temp_11_cmp_48
              #                    free a0
              #                    occupy a0 with temp_11_cmp_48
    bnez    a0, .branch_true_49
              #                    free a0
    j       .branch_false_49
              #                    regtab     a0:Freed { symidx: temp_11_cmp_48, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_49: 
.branch_true_49:
              #                          new_var temp_12_booltrans_51:i1 
              #                          temp_12_booltrans_51 = icmp i32 Ne 6_0, 0_0 
              #                    occupy a6 with 6_0
    li      a6, 6
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    store to temp_11_cmp_48 in mem offset legal
    sb      a0,4(sp)
              #                    release a0 with temp_11_cmp_48
              #                    occupy a0 with temp_12_booltrans_51
    xor     a0,a6,a7
    snez    a0, a0
              #                    free a6
              #                    free a7
              #                    free a0
              #                          new_var temp_13_logicnot_51:i1 
              #                          temp_13_logicnot_51 = xor i1 temp_12_booltrans_51, true 
              #                    occupy a0 with temp_12_booltrans_51
              #                    occupy a6 with temp_13_logicnot_51
    seqz    a6, a0
              #                    free a0
              #                    free a6
              #                          br i1 temp_13_logicnot_51, label branch_true_52, label branch_false_52 
              #                    occupy a6 with temp_13_logicnot_51
              #                    free a6
              #                    occupy a6 with temp_13_logicnot_51
    bnez    a6, .branch_true_52
              #                    free a6
    j       .branch_false_52
              #                    regtab     a0:Freed { symidx: temp_12_booltrans_51, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     a6:Freed { symidx: temp_13_logicnot_51, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_true_52: 
.branch_true_52:
              #                          ret 9_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to temp_12_booltrans_51 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_12_booltrans_51
              #                    occupy a0 with 9_0
    li      a0, 9
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_12_booltrans_51, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     a6:Freed { symidx: temp_13_logicnot_51, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_52: 
.branch_false_52:
              #                          ret 10_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to temp_12_booltrans_51 in mem offset legal
    sb      a0,3(sp)
              #                    release a0 with temp_12_booltrans_51
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     a6:Freed { symidx: temp_13_logicnot_51, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_11_cmp_48, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_49: 
.branch_false_49:
              #                          ret 8_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to temp_11_cmp_48 in mem offset legal
    sb      a0,4(sp)
              #                    release a0 with temp_11_cmp_48
              #                    occupy a0 with 8_0
    li      a0, 8
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_46: 
.branch_false_46:
              #                          ret 7_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 7_0
    li      a0, 7
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s10:Freed { symidx: temp_9_logic_41, tracked: true } |     s11:Freed { symidx: temp_10_cmp_45, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                          ret 5_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s3:Freed { symidx: temp_4_logic_30, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } |     s6:Freed { symidx: temp_5__34, tracked: true } |     s7:Freed { symidx: temp_8_cmp_38, tracked: true } |     s8:Freed { symidx: temp_6__34, tracked: true } |     s9:Freed { symidx: temp_7_logic_34, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                          ret 2_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 2_0
    li      a0, 2
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } |     s2:Freed { symidx: temp_1__27, tracked: true } |     s4:Freed { symidx: temp_2__27, tracked: true } |     s5:Freed { symidx: temp_3_logic_27, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } | 
              #                          label branch_false_25: 
.branch_false_25:
              #                          ret 1_0 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: c_17, tracked: true } |     a3:Freed { symidx: d_17, tracked: true } |     a4:Freed { symidx: e_17, tracked: true } |     a5:Freed { symidx: f_17, tracked: true } |     s1:Freed { symidx: temp_0_logic_24, tracked: true } | 
