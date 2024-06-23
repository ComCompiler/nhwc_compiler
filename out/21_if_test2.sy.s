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
              #                          Define ifElseIf_0 [] -> ifElseIf_ret_0 
    .globl ifElseIf
    .type ifElseIf,@function
ifElseIf:
              #                    mem layout:|ra_ifElseIf:8 at 40|s0_ifElseIf:8 at 32|a:4 at 28|b:4 at 24|temp_0_cmp:1 at 23|temp_1_cmp:1 at 22|temp_2_logic:1 at 21|temp_3_cmp:1 at 20|temp_4_cmp:1 at 19|temp_5_logic:1 at 18|temp_6_cmp:1 at 17|temp_7_cmp:1 at 16|temp_8_logic:1 at 15|none:3 at 12|temp_9_arithop:4 at 8|temp_10_:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_ifElseIf_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_ifElseIf_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i1 temp_1_cmp_22 
              #                          alloc i1 temp_2_logic_22 
              #                          alloc i1 temp_3_cmp_27 
              #                          alloc i1 temp_4_cmp_27 
              #                          alloc i1 temp_5_logic_27 
              #                          alloc i1 temp_6_cmp_30 
              #                          alloc i1 temp_7_cmp_30 
              #                          alloc i1 temp_8_logic_30 
              #                          alloc i32 temp_9_arithop_30 
              #                          alloc i32 temp_10__30 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 5_0 
              #                    occupy a0 with a_17
    li      a0, 5
              #                    free a0
              #                          new_var b_17:i32 
              #                          b_17 = i32 10_0 
              #                    occupy a1 with b_17
    li      a1, 10
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Eq b_17, 0xb_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 0xb_0
    li      a2, 0xb
              #                    occupy a3 with temp_0_cmp_22
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_1_cmp_22:i1 
              #                          temp_1_cmp_22 = icmp i32 Eq a_17, 6_0 
              #                    occupy a0 with a_17
              #                    occupy a4 with 6_0
    li      a4, 6
              #                    occupy a5 with temp_1_cmp_22
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          new_var temp_2_logic_22:i1 
              #                          temp_2_logic_22 = Or i1 temp_1_cmp_22, temp_0_cmp_22 
              #                    occupy a5 with temp_1_cmp_22
              #                    occupy a3 with temp_0_cmp_22
              #                    occupy a3 with temp_0_cmp_22
              #                    free a5
              #                    free a3
              #                    free a3
              #                          br i1 temp_2_logic_22, label branch_true_23, label branch_false_23 
              #                    occupy a6 with temp_2_logic_22
              #                    load from temp_2_logic_22 in mem
    lb      a6,21(sp)
              #                    free a6
              #                    occupy a6 with temp_2_logic_22
    bnez    a6, .branch_true_23
              #                    free a6
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } | 
              #                          label branch_true_23: 
.branch_true_23:
              #                          ret a_17 
              #                    load from ra_ifElseIf_0 in mem
    ld      ra,40(sp)
              #                    load from s0_ifElseIf_0 in mem
    ld      s0,32(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,28(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                          new_var temp_3_cmp_27:i1 
              #                          temp_3_cmp_27 = icmp i32 Eq a_17, 1_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a4 with temp_3_cmp_27
    xor     a4,a0,a2
    seqz    a4, a4
              #                    free a0
              #                    free a2
              #                    free a4
              #                          new_var temp_4_cmp_27:i1 
              #                          temp_4_cmp_27 = icmp i32 Eq b_17, 10_0 
              #                    occupy a1 with b_17
              #                    occupy a7 with 10_0
    li      a7, 10
              #                    occupy s1 with temp_4_cmp_27
    xor     s1,a1,a7
    seqz    s1, s1
              #                    free a1
              #                    free a7
              #                    free s1
              #                          new_var temp_5_logic_27:i1 
              #                          temp_5_logic_27 = And i1 temp_4_cmp_27, temp_3_cmp_27 
              #                    occupy s1 with temp_4_cmp_27
              #                    occupy a4 with temp_3_cmp_27
              #                    occupy s2 with temp_5_logic_27
    and     s2,s1,a4
              #                    free s1
              #                    free a4
              #                    free s2
              #                          br i1 temp_5_logic_27, label branch_true_28, label branch_false_28 
              #                    occupy s2 with temp_5_logic_27
              #                    free s2
              #                    occupy s2 with temp_5_logic_27
    bnez    s2, .branch_true_28
              #                    free s2
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                          a_17 = i32 25_0 
              #                    occupy a0 with a_17
    li      a0, 25
              #                    free a0
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                          new_var temp_6_cmp_30:i1 
              #                          temp_6_cmp_30 = icmp i32 Eq a_17, -5_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with -5_0
    li      a2, -5
              #                    occupy a7 with temp_6_cmp_30
    xor     a7,a0,a2
    seqz    a7, a7
              #                    free a0
              #                    free a2
              #                    free a7
              #                          new_var temp_7_cmp_30:i1 
              #                          temp_7_cmp_30 = icmp i32 Eq b_17, 10_0 
              #                    occupy a1 with b_17
              #                    occupy s3 with 10_0
    li      s3, 10
              #                    occupy s4 with temp_7_cmp_30
    xor     s4,a1,s3
    seqz    s4, s4
              #                    free a1
              #                    free s3
              #                    free s4
              #                          new_var temp_8_logic_30:i1 
              #                          temp_8_logic_30 = And i1 temp_7_cmp_30, temp_6_cmp_30 
              #                    occupy s4 with temp_7_cmp_30
              #                    occupy a7 with temp_6_cmp_30
              #                    occupy s5 with temp_8_logic_30
    and     s5,s4,a7
              #                    free s4
              #                    free a7
              #                    free s5
              #                          br i1 temp_8_logic_30, label branch_true_31, label branch_false_31 
              #                    occupy s5 with temp_8_logic_30
              #                    free s5
              #                    occupy s5 with temp_8_logic_30
    bnez    s5, .branch_true_31
              #                    free s5
    j       .branch_false_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     a7:Freed { symidx: temp_6_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } |     s4:Freed { symidx: temp_7_cmp_30, tracked: true } |     s5:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label branch_true_31: 
.branch_true_31:
              #                          new_var temp_9_arithop_30:i32 
              #                          temp_9_arithop_30 = Add i32 a_17, 15_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 15_0
    li      a2, 15
              #                    occupy s3 with temp_9_arithop_30
    add     s3,a0,a2
              #                    free a0
              #                    free a2
              #                    free s3
              #                          a_17 = i32 temp_9_arithop_30 
              #                    occupy s3 with temp_9_arithop_30
              #                    occupy a0 with a_17
    mv      a0, s3
              #                    free s3
              #                    free a0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     a7:Freed { symidx: temp_6_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } |     s4:Freed { symidx: temp_7_cmp_30, tracked: true } |     s5:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label branch_false_31: 
.branch_false_31:
              #                          new_var temp_10__30:i32 
              #                          temp_10__30 = Sub i32 0_0, a_17 
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a0 with a_17
              #                    occupy s3 with temp_10__30
              #                    regtab:    a0:Occupied { symidx: a_17, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     a7:Freed { symidx: temp_6_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } |     s3:Occupied { symidx: temp_10__30, tracked: true, occupy_count: 1 } |     s4:Freed { symidx: temp_7_cmp_30, tracked: true } |     s5:Freed { symidx: temp_8_logic_30, tracked: true } | 


    sub     s3,a2,a0
              #                    free a2
              #                    free a0
              #                    free s3
              #                          a_17 = i32 temp_10__30 
              #                    occupy s3 with temp_10__30
              #                    occupy a0 with a_17
    mv      a0, s3
              #                    free s3
              #                    free a0
              #                          jump label: L3_0 
              #                    store to temp_10__30 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_10__30
              #                    occupy s3 with _anonymous_of_temp_9_arithop_30_0
              #                    load from temp_9_arithop_30 in mem


    lw      s3,8(sp)
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     a7:Freed { symidx: temp_6_cmp_30, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } |     s3:Freed { symidx: temp_9_arithop_30, tracked: true } |     s4:Freed { symidx: temp_7_cmp_30, tracked: true } |     s5:Freed { symidx: temp_8_logic_30, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          ret a_17 
              #                    load from ra_ifElseIf_0 in mem
    ld      ra,40(sp)
              #                    load from s0_ifElseIf_0 in mem
    ld      s0,32(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,28(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_3_cmp_27, tracked: true } |     a5:Freed { symidx: temp_1_cmp_22, tracked: true } |     a6:Freed { symidx: temp_2_logic_22, tracked: true } |     s1:Freed { symidx: temp_4_cmp_27, tracked: true } |     s2:Freed { symidx: temp_5_logic_27, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_11_ret_of_ifElseIf:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_11_ret_of_ifElseIf_36 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_11_ret_of_ifElseIf_36:i32 
              #                          temp_11_ret_of_ifElseIf_36 =  Call i32 ifElseIf_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ifElseIf
              #                    store to temp_11_ret_of_ifElseIf_36 in mem offset legal
    sw      a0,4(sp)
              #                           Call void putint_0(temp_11_ret_of_ifElseIf_36) 
              #                    saved register dumping to mem
              #                    store to temp_11_ret_of_ifElseIf_36 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_11_ret_of_ifElseIf_36
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_11_ret_of_ifElseIf_36_0
              #                    load from temp_11_ret_of_ifElseIf_36 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
