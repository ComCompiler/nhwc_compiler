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
              #                          Define quick_read_0 [] -> quick_read_ret_0 
    .globl quick_read
    .type quick_read,@function
quick_read:
              #                    mem layout:|ra_quick_read:8 at 64|s0_quick_read:8 at 56|temp_0_ret_of_getch:4 at 52|ch:4 at 48|x:4 at 44|f:4 at 40|temp_1_cmp:1 at 39|temp_2_cmp:1 at 38|temp_3_logic:1 at 37|temp_4_cmp:1 at 36|temp_5_ret_of_getch:4 at 32|temp_6_cmp:1 at 31|temp_7_cmp:1 at 30|temp_8_logic:1 at 29|none:1 at 28|temp_9_arithop:4 at 24|temp_10_arithop:4 at 20|temp_11_arithop:4 at 16|temp_12_ret_of_getch:4 at 12|temp_13_:1 at 11|none:3 at 8|temp_14_:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_quick_read_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_quick_read_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_0_ret_of_getch_22 
              #                          alloc i32 ch_22 
              #                          alloc i32 x_22 
              #                          alloc i32 f_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i1 temp_2_cmp_25 
              #                          alloc i1 temp_3_logic_25 
              #                          alloc i1 temp_4_cmp_28 
              #                          alloc i32 temp_5_ret_of_getch_27 
              #                          alloc i1 temp_6_cmp_32 
              #                          alloc i1 temp_7_cmp_32 
              #                          alloc i1 temp_8_logic_32 
              #                          alloc i32 temp_9_arithop_34 
              #                          alloc i32 temp_10_arithop_34 
              #                          alloc i32 temp_11_arithop_34 
              #                          alloc i32 temp_12_ret_of_getch_34 
              #                          alloc i1 temp_13__416 
              #                          alloc i32 temp_14__37 
              #                    regtab 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_0_ret_of_getch_22:i32 
              #                          temp_0_ret_of_getch_22 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                          ch_22 = i32 temp_0_ret_of_getch_22 
              #                    occupy a0 with temp_0_ret_of_getch_22
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          x_22 = i32 0_0 
              #                    occupy a2 with x_22
    li      a2, 0
              #                    free a2
              #                          f_22 = i32 0_0 
              #                    occupy a3 with f_22
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_26 
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } | 
              #                          label while.head_26: 
.while.head_26:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Sgt ch_22, 57_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a5 with temp_1_cmp_25
    slt     a5,a4,a1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_25:i1 
              #                          temp_2_cmp_25 = icmp i32 Slt ch_22, 48_0 
              #                    occupy a1 with ch_22
              #                    occupy a6 with 48_0
    li      a6, 48
              #                    occupy a7 with temp_2_cmp_25
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          new_var temp_3_logic_25:i1 
              #                          temp_3_logic_25 = Or i1 temp_2_cmp_25, temp_1_cmp_25 
              #                    occupy a7 with temp_2_cmp_25
              #                    occupy a5 with temp_1_cmp_25
              #                    occupy a5 with temp_1_cmp_25
              #                    free a7
              #                    free a5
              #                    free a5
              #                          br i1 temp_3_logic_25, label while.body_26, label while.exit_26 
              #                    occupy s1 with temp_3_logic_25
              #                    load from temp_3_logic_25 in mem
    lb      s1,37(sp)
              #                    free s1
              #                    occupy s1 with temp_3_logic_25
    bnez    s1, .while.body_26
              #                    free s1
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var temp_4_cmp_28:i1 
              #                          temp_4_cmp_28 = icmp i32 Eq ch_22, 45_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a6 with temp_4_cmp_28
    xor     a6,a1,a4
    seqz    a6, a6
              #                    free a1
              #                    free a4
              #                    free a6
              #                          br i1 temp_4_cmp_28, label branch_true_29, label branch_false_29 
              #                    occupy a6 with temp_4_cmp_28
              #                    free a6
              #                    occupy a6 with temp_4_cmp_28
    bnez    a6, .branch_true_29
              #                    free a6
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label branch_true_29: 
.branch_true_29:
              #                          f_22 = i32 1_0 
              #                    occupy a3 with f_22
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_29 
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label branch_false_29: 
.branch_false_29:
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_4_cmp_28, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                          new_var temp_5_ret_of_getch_27:i32 
              #                          temp_5_ret_of_getch_27 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_25 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_25
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    store to ch_22 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to f_22 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_22
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_4_cmp_28 in mem offset legal
    sb      a6,36(sp)
              #                    release a6 with temp_4_cmp_28
              #                    store to temp_2_cmp_25 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_5_ret_of_getch_27 in mem offset legal
    sw      a0,32(sp)
              #                          ch_22 = i32 temp_5_ret_of_getch_27 
              #                    occupy a0 with temp_5_ret_of_getch_27
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_26 
              #                    store to temp_5_ret_of_getch_27 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_5_ret_of_getch_27
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
    j       .while.head_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                          new_var temp_6_cmp_32:i1 
              #                          temp_6_cmp_32 = icmp i32 Sle ch_22, 57_0 
              #                    occupy a1 with ch_22
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_6_cmp_32
    slt     a6,a4,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a4
              #                    free a6
              #                          new_var temp_7_cmp_32:i1 
              #                          temp_7_cmp_32 = icmp i32 Sge ch_22, 48_0 
              #                    occupy a1 with ch_22
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_7_cmp_32
    slt     s3,a1,s2
    xori    s3,s3,1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          new_var temp_8_logic_32:i1 
              #                          temp_8_logic_32 = And i1 temp_7_cmp_32, temp_6_cmp_32 
              #                    occupy s3 with temp_7_cmp_32
              #                    occupy a6 with temp_6_cmp_32
              #                    occupy s4 with temp_8_logic_32
    and     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_8_logic_32, label while.body_33, label while.exit_33 
              #                    occupy s4 with temp_8_logic_32
              #                    free s4
              #                    occupy s4 with temp_8_logic_32
    bnez    s4, .while.body_33
              #                    free s4
    j       .while.exit_33
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label while.body_33: 
.while.body_33:
              #                          new_var temp_9_arithop_34:i32 
              #                          temp_9_arithop_34 = Mul i32 x_22, 10_0 
              #                    occupy a2 with x_22
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s2 with temp_9_arithop_34
    mul     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_10_arithop_34:i32 
              #                          temp_10_arithop_34 = Add i32 temp_9_arithop_34, ch_22 
              #                    occupy s2 with temp_9_arithop_34
              #                    occupy a1 with ch_22
              #                    occupy s5 with temp_10_arithop_34
    add     s5,s2,a1
              #                    free s2
              #                    free a1
              #                    free s5
              #                          new_var temp_11_arithop_34:i32 
              #                          temp_11_arithop_34 = Sub i32 temp_10_arithop_34, 48_0 
              #                    occupy s5 with temp_10_arithop_34
              #                    occupy s6 with 48_0
    li      s6, 48
              #                    occupy s7 with temp_11_arithop_34
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a4:Freed { symidx: 10_0, tracked: false } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_9_arithop_34, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } |     s5:Occupied { symidx: temp_10_arithop_34, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s7:Occupied { symidx: temp_11_arithop_34, tracked: true, occupy_count: 1 } | 


    sub     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          x_22 = i32 temp_11_arithop_34 
              #                    occupy s7 with temp_11_arithop_34
              #                    occupy a2 with x_22
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_12_ret_of_getch_34:i32 
              #                          temp_12_ret_of_getch_34 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_25 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_25
              #                    store to temp_9_arithop_34 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_9_arithop_34
              #                    store to temp_7_cmp_32 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_7_cmp_32
              #                    store to temp_8_logic_32 in mem offset legal
    sb      s4,29(sp)
              #                    release s4 with temp_8_logic_32
              #                    store to temp_10_arithop_34 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_10_arithop_34
              #                    store to temp_11_arithop_34 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_11_arithop_34
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    store to ch_22 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_22
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to f_22 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_22
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_25
              #                    store to temp_6_cmp_32 in mem offset legal
    sb      a6,31(sp)
              #                    release a6 with temp_6_cmp_32
              #                    store to temp_2_cmp_25 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_34 in mem offset legal
    sw      a0,12(sp)
              #                          ch_22 = i32 temp_12_ret_of_getch_34 
              #                    occupy a0 with temp_12_ret_of_getch_34
              #                    occupy a1 with ch_22
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_26 
              #                    store to temp_12_ret_of_getch_34 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_12_ret_of_getch_34
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_25_0
              #                    load from temp_1_cmp_25 in mem
    lb      a5,39(sp)
              #                    occupy a7 with _anonymous_of_temp_2_cmp_25_0
              #                    load from temp_2_cmp_25 in mem
    lb      a7,38(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_25_0
              #                    load from temp_3_logic_25 in mem
    lb      s1,37(sp)
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label while.exit_33: 
.while.exit_33:
              #                          new_var temp_13__416:i1 
              #                          temp_13__416 = icmp i32 Ne f_22, 0_0 
              #                    occupy a3 with f_22
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy s2 with temp_13__416
    xor     s2,a3,a4
    snez    s2, s2
              #                    free a3
              #                    free a4
              #                    free s2
              #                          br i1 temp_13__416, label branch_true_38, label branch_false_38 
              #                    occupy s2 with temp_13__416
              #                    free s2
              #                    occupy s2 with temp_13__416
    bnez    s2, .branch_true_38
              #                    free s2
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label branch_true_38: 
.branch_true_38:
              #                          new_var temp_14__37:i32 
              #                          temp_14__37 = Sub i32 0_0, x_22 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a2 with x_22
              #                    occupy s5 with temp_14__37
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Occupied { symidx: x_22, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: f_22, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } |     s5:Occupied { symidx: temp_14__37, tracked: true, occupy_count: 1 } | 


    sub     s5,a4,a2
              #                    free a4
              #                    free a2
              #                    free s5
              #                          ret temp_14__37 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to temp_14__37 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_14__37
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    occupy a0 with temp_14__37
              #                    load from temp_14__37 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_22, tracked: true } |     a1:Freed { symidx: ch_22, tracked: true } |     a2:Freed { symidx: x_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label branch_false_38: 
.branch_false_38:
              #                          ret x_22 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to x_22 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_22
              #                    store to temp_0_ret_of_getch_22 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_22
              #                    occupy a0 with x_22
              #                    load from x_22 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                          label L12_0: 
.L12_0:
              #                    regtab     a1:Freed { symidx: ch_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                    regtab 
              #                          Define sortA_0 [a_41] -> sortA_ret_0 
    .globl sortA
    .type sortA,@function
sortA:
              #                    mem layout:|ra_sortA:8 at 136|s0_sortA:8 at 128|a:8 at 120|i:4 at 116|j:4 at 112|temp_15_ptr2globl:4 at 108|temp_16_cmp:1 at 107|none:3 at 104|temp_17_arithop:4 at 100|temp_18_ptr2globl:4 at 96|temp_19_cmp:1 at 95|none:7 at 88|temp_20_array_ptr:8 at 80|temp_21_array_ele:4 at 76|none:4 at 72|temp_22_array_ptr:8 at 64|temp_23_array_ele:4 at 60|temp_24_cmp:1 at 59|none:3 at 56|temp_25_array_ptr:8 at 48|temp_26_array_ele:4 at 44|t:4 at 40|temp_27_index_ptr:8 at 32|temp_28_array_ptr:8 at 24|temp_29_array_ele:4 at 20|none:4 at 16|temp_30_index_ptr:8 at 8|temp_31_arithop:4 at 4|temp_32_arithop:4 at 0
    addi    sp,sp,-144
              #                    store to ra_sortA_0 in mem offset legal
    sd      ra,136(sp)
              #                    store to s0_sortA_0 in mem offset legal
    sd      s0,128(sp)
    addi    s0,sp,144
              #                          new_var a_41:ptr->i32 
              #                          alloc i32 i_43 
              #                          alloc i32 j_43 
              #                          alloc i32 temp_15_ptr2globl_45 
              #                          alloc i1 temp_16_cmp_45 
              #                          alloc i32 temp_17_arithop_47 
              #                          alloc i32 temp_18_ptr2globl_49 
              #                          alloc i1 temp_19_cmp_49 
              #                          alloc ptr->i32 temp_20_array_ptr_52 
              #                          alloc i32 temp_21_array_ele_52 
              #                          alloc ptr->i32 temp_22_array_ptr_52 
              #                          alloc i32 temp_23_array_ele_52 
              #                          alloc i1 temp_24_cmp_52 
              #                          alloc ptr->i32 temp_25_array_ptr_54 
              #                          alloc i32 temp_26_array_ele_54 
              #                          alloc i32 t_54 
              #                          alloc ptr->i32 temp_27_index_ptr_54 
              #                          alloc ptr->i32 temp_28_array_ptr_54 
              #                          alloc i32 temp_29_array_ele_54 
              #                          alloc ptr->i32 temp_30_index_ptr_54 
              #                          alloc i32 temp_31_arithop_51 
              #                          alloc i32 temp_32_arithop_47 
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          i_43 = i32 0_0 
              #                    occupy a1 with i_43
    li      a1, 0
              #                    free a1
              #                          new_var j_43:i32 
              #                          jump label: while.head_46 
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } | 
              #                          label while.head_46: 
.while.head_46:
              #                          new_var temp_15_ptr2globl_45:i32 
              #                          temp_15_ptr2globl_45 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_15_ptr2globl_45
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_16_cmp_45:i1 
              #                          temp_16_cmp_45 = icmp i32 Slt i_43, temp_15_ptr2globl_45 
              #                    occupy a1 with i_43
              #                    occupy a3 with temp_15_ptr2globl_45
              #                    occupy a4 with temp_16_cmp_45
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_16_cmp_45, label while.body_46, label while.exit_46 
              #                    occupy a4 with temp_16_cmp_45
              #                    free a4
              #                    occupy a4 with temp_16_cmp_45
    bnez    a4, .while.body_46
              #                    free a4
    j       .while.exit_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } | 
              #                          label while.body_46: 
.while.body_46:
              #                          new_var temp_17_arithop_47:i32 
              #                          temp_17_arithop_47 = Add i32 i_43, 1_0 
              #                    occupy a1 with i_43
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_17_arithop_47
    add     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          j_43 = i32 temp_17_arithop_47 
              #                    occupy a5 with temp_17_arithop_47
              #                    occupy a6 with j_43
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          jump label: while.head_50 
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } | 
              #                          label while.head_50: 
.while.head_50:
              #                          new_var temp_18_ptr2globl_49:i32 
              #                          temp_18_ptr2globl_49 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a7 with temp_18_ptr2globl_49
    lw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_19_cmp_49:i1 
              #                          temp_19_cmp_49 = icmp i32 Slt j_43, temp_18_ptr2globl_49 
              #                    occupy a6 with j_43
              #                    occupy a7 with temp_18_ptr2globl_49
              #                    occupy s1 with temp_19_cmp_49
    slt     s1,a6,a7
              #                    free a6
              #                    free a7
              #                    free s1
              #                          br i1 temp_19_cmp_49, label while.body_50, label while.exit_50 
              #                    occupy s1 with temp_19_cmp_49
              #                    free s1
              #                    occupy s1 with temp_19_cmp_49
    bnez    s1, .while.body_50
              #                    free s1
    j       .while.exit_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } |     a7:Freed { symidx: temp_18_ptr2globl_49, tracked: true } |     s1:Freed { symidx: temp_19_cmp_49, tracked: true } | 
              #                          label while.body_50: 
.while.body_50:
              #                          new_var temp_20_array_ptr_52:ptr->i32 
              #                          temp_20_array_ptr_52 = getelementptr a_41:ptr->i32 [Some(j_43)] 
              #                    occupy a2 with temp_20_array_ptr_52
    li      a2, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a6 with j_43
              #                    occupy s3 with _anonymous_of_a_41_0
    mul     s3,s2,a6
              #                    free s2
              #                    free a6
    add     a2,a2,s3
              #                    free s3
    slli a2,a2,2
              #                    occupy a0 with a_41
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_21_array_ele_52:i32 
              #                          temp_21_array_ele_52 = load temp_20_array_ptr_52:ptr->i32 
              #                    occupy a2 with temp_20_array_ptr_52
              #                    occupy s4 with temp_21_array_ele_52
    lw      s4,0(a2)
              #                    free s4
              #                    free a2
              #                          new_var temp_22_array_ptr_52:ptr->i32 
              #                          temp_22_array_ptr_52 = getelementptr a_41:ptr->i32 [Some(i_43)] 
              #                    occupy s5 with temp_22_array_ptr_52
    li      s5, 0
              #                    found literal reg Some(s2) already exist with 1_0
              #                    occupy s2 with 1_0
              #                    occupy a1 with i_43
              #                    occupy s6 with _anonymous_of_a_41_0
    mul     s6,s2,a1
              #                    free s2
              #                    free a1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with a_41
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_23_array_ele_52:i32 
              #                          temp_23_array_ele_52 = load temp_22_array_ptr_52:ptr->i32 
              #                    occupy s5 with temp_22_array_ptr_52
              #                    occupy s7 with temp_23_array_ele_52
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_24_cmp_52:i1 
              #                          temp_24_cmp_52 = icmp i32 Sgt temp_23_array_ele_52, temp_21_array_ele_52 
              #                    occupy s7 with temp_23_array_ele_52
              #                    occupy s4 with temp_21_array_ele_52
              #                    occupy s8 with temp_24_cmp_52
    slt     s8,s4,s7
              #                    free s7
              #                    free s4
              #                    free s8
              #                          br i1 temp_24_cmp_52, label branch_true_53, label branch_false_53 
              #                    occupy s8 with temp_24_cmp_52
              #                    free s8
              #                    occupy s8 with temp_24_cmp_52
    bnez    s8, .branch_true_53
              #                    free s8
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a2:Freed { symidx: temp_20_array_ptr_52, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } |     a7:Freed { symidx: temp_18_ptr2globl_49, tracked: true } |     s1:Freed { symidx: temp_19_cmp_49, tracked: true } |     s4:Freed { symidx: temp_21_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_23_array_ele_52, tracked: true } |     s8:Freed { symidx: temp_24_cmp_52, tracked: true } | 
              #                          label branch_true_53: 
.branch_true_53:
              #                          new_var temp_25_array_ptr_54:ptr->i32 
              #                          temp_25_array_ptr_54 = getelementptr a_41:ptr->i32 [Some(i_43)] 
              #                    occupy s2 with temp_25_array_ptr_54
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a1 with i_43
              #                    occupy s6 with _anonymous_of_a_41_0
    mul     s6,s3,a1
              #                    free s3
              #                    free a1
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
              #                    occupy a0 with a_41
    add     s2,s2,a0
              #                    free a0
              #                    free s2
              #                          new_var temp_26_array_ele_54:i32 
              #                          temp_26_array_ele_54 = load temp_25_array_ptr_54:ptr->i32 
              #                    occupy s2 with temp_25_array_ptr_54
              #                    occupy s9 with temp_26_array_ele_54
    lw      s9,0(s2)
              #                    free s9
              #                    free s2
              #                          t_54 = i32 temp_26_array_ele_54 
              #                    occupy s9 with temp_26_array_ele_54
              #                    occupy s10 with t_54
    mv      s10, s9
              #                    free s9
              #                    free s10
              #                          new_var temp_27_index_ptr_54:ptr->i32 
              #                          temp_27_index_ptr_54 = getelementptr a_41:ptr->i32 [Some(i_43)] 
              #                    occupy s11 with temp_27_index_ptr_54
    li      s11, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a1 with i_43
              #                    occupy s6 with _anonymous_of_a_41_0
    mul     s6,s3,a1
              #                    free s3
              #                    free a1
    add     s11,s11,s6
              #                    free s6
    slli s11,s11,2
              #                    occupy a0 with a_41
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_28_array_ptr_54:ptr->i32 
              #                          temp_28_array_ptr_54 = getelementptr a_41:ptr->i32 [Some(j_43)] 
              #                    occupy s3 with temp_28_array_ptr_54
    li      s3, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a6 with j_43
              #                    store to a_41 in mem offset legal
    sd      a0,120(sp)
              #                    release a0 with a_41
              #                    occupy a0 with _anonymous_of_a_41_0
    mul     a0,s6,a6
              #                    free s6
              #                    free a6
    add     s3,s3,a0
              #                    free a0
    slli s3,s3,2
              #                    occupy a0 with a_41
              #                    load from a_41 in mem
    ld      a0,120(sp)
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          new_var temp_29_array_ele_54:i32 
              #                          temp_29_array_ele_54 = load temp_28_array_ptr_54:ptr->i32 
              #                    occupy s3 with temp_28_array_ptr_54
              #                    occupy s6 with temp_29_array_ele_54
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          store temp_29_array_ele_54:i32 temp_27_index_ptr_54:ptr->i32 
              #                    occupy s11 with temp_27_index_ptr_54
              #                    occupy s6 with temp_29_array_ele_54
    sw      s6,0(s11)
              #                    free s6
              #                    free s11
              #                          mu a_41:175 
              #                          a_41 = chi a_41:175 
              #                          new_var temp_30_index_ptr_54:ptr->i32 
              #                          temp_30_index_ptr_54 = getelementptr a_41:ptr->i32 [Some(j_43)] 
              #                    store to a_41 in mem offset legal
    sd      a0,120(sp)
              #                    release a0 with a_41
              #                    occupy a0 with temp_30_index_ptr_54
    li      a0, 0
              #                    store to i_43 in mem offset legal
    sw      a1,116(sp)
              #                    release a1 with i_43
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a6 with j_43
              #                    store to temp_20_array_ptr_52 in mem offset legal
    sd      a2,80(sp)
              #                    release a2 with temp_20_array_ptr_52
              #                    occupy a2 with _anonymous_of_a_41_0
    mul     a2,a1,a6
              #                    free a1
              #                    free a6
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
              #                    occupy a1 with a_41
              #                    load from a_41 in mem
    ld      a1,120(sp)
    add     a0,a0,a1
              #                    free a1
              #                    free a0
              #                          store t_54:i32 temp_30_index_ptr_54:ptr->i32 
              #                    occupy a0 with temp_30_index_ptr_54
              #                    occupy s10 with t_54
    sw      s10,0(a0)
              #                    free s10
              #                    free a0
              #                          mu a_41:181 
              #                          a_41 = chi a_41:181 
              #                          jump label: branch_false_53 
              #                    store to temp_25_array_ptr_54 in mem offset legal
    sd      s2,48(sp)
              #                    release s2 with temp_25_array_ptr_54
              #                    store to temp_28_array_ptr_54 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_28_array_ptr_54
              #                    store to t_54 in mem offset legal
    sw      s10,40(sp)
              #                    release s10 with t_54
              #                    store to temp_26_array_ele_54 in mem offset legal
    sw      s9,44(sp)
              #                    release s9 with temp_26_array_ele_54
              #                    store to temp_30_index_ptr_54 in mem offset legal
    sd      a0,8(sp)
              #                    release a0 with temp_30_index_ptr_54
              #                    store to temp_29_array_ele_54 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_29_array_ele_54
              #                    store to a_41 in mem offset legal
    sd      a1,120(sp)
              #                    release a1 with a_41
              #                    store to temp_27_index_ptr_54 in mem offset legal
    sd      s11,32(sp)
              #                    release s11 with temp_27_index_ptr_54
              #                    occupy a2 with _anonymous_of_temp_20_array_ptr_52_0
              #                    load from temp_20_array_ptr_52 in mem
    ld      a2,80(sp)
              #                    occupy a0 with _anonymous_of_a_41_0
              #                    load from a_41 in mem
    ld      a0,120(sp)
              #                    occupy a1 with _anonymous_of_i_43_0
              #                    load from i_43 in mem


    lw      a1,116(sp)
    j       .branch_false_53
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a2:Freed { symidx: temp_20_array_ptr_52, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } |     a7:Freed { symidx: temp_18_ptr2globl_49, tracked: true } |     s1:Freed { symidx: temp_19_cmp_49, tracked: true } |     s4:Freed { symidx: temp_21_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_23_array_ele_52, tracked: true } |     s8:Freed { symidx: temp_24_cmp_52, tracked: true } | 
              #                          label branch_false_53: 
.branch_false_53:
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a2:Freed { symidx: temp_20_array_ptr_52, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } |     a7:Freed { symidx: temp_18_ptr2globl_49, tracked: true } |     s1:Freed { symidx: temp_19_cmp_49, tracked: true } |     s4:Freed { symidx: temp_21_array_ele_52, tracked: true } |     s5:Freed { symidx: temp_22_array_ptr_52, tracked: true } |     s7:Freed { symidx: temp_23_array_ele_52, tracked: true } |     s8:Freed { symidx: temp_24_cmp_52, tracked: true } | 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_31_arithop_51:i32 
              #                          temp_31_arithop_51 = Add i32 j_43, 1_0 
              #                    occupy a6 with j_43
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy s3 with temp_31_arithop_51
    add     s3,a6,s2
              #                    free a6
              #                    free s2
              #                    free s3
              #                          j_43 = i32 temp_31_arithop_51 
              #                    occupy s3 with temp_31_arithop_51
              #                    occupy a6 with j_43
    mv      a6, s3
              #                    free s3
              #                    free a6
              #                          jump label: while.head_50 
              #                    store to temp_18_ptr2globl_49 in mem offset legal
    sw      a7,96(sp)
              #                    release a7 with temp_18_ptr2globl_49
              #                    store to temp_24_cmp_52 in mem offset legal
    sb      s8,59(sp)
              #                    release s8 with temp_24_cmp_52
              #                    store to temp_22_array_ptr_52 in mem offset legal
    sd      s5,64(sp)
              #                    release s5 with temp_22_array_ptr_52
              #                    store to temp_20_array_ptr_52 in mem offset legal
    sd      a2,80(sp)
              #                    release a2 with temp_20_array_ptr_52
              #                    store to temp_31_arithop_51 in mem offset legal
    sw      s3,4(sp)
              #                    release s3 with temp_31_arithop_51
              #                    store to temp_23_array_ele_52 in mem offset legal
    sw      s7,60(sp)
              #                    release s7 with temp_23_array_ele_52
              #                    store to temp_19_cmp_49 in mem offset legal
    sb      s1,95(sp)
              #                    release s1 with temp_19_cmp_49
              #                    store to temp_21_array_ele_52 in mem offset legal
    sw      s4,76(sp)
              #                    release s4 with temp_21_array_ele_52
    j       .while.head_50
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } |     a5:Freed { symidx: temp_17_arithop_47, tracked: true } |     a6:Freed { symidx: j_43, tracked: true } |     a7:Freed { symidx: temp_18_ptr2globl_49, tracked: true } |     s1:Freed { symidx: temp_19_cmp_49, tracked: true } | 
              #                          label while.exit_50: 
.while.exit_50:
              #                          new_var temp_32_arithop_47:i32 
              #                          temp_32_arithop_47 = Add i32 i_43, 1_0 
              #                    occupy a1 with i_43
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy s2 with temp_32_arithop_47
    add     s2,a1,a2
              #                    free a1
              #                    free a2
              #                    free s2
              #                          i_43 = i32 temp_32_arithop_47 
              #                    occupy s2 with temp_32_arithop_47
              #                    occupy a1 with i_43
    mv      a1, s2
              #                    free s2
              #                    free a1
              #                          jump label: while.head_46 
              #                    store to temp_18_ptr2globl_49 in mem offset legal
    sw      a7,96(sp)
              #                    release a7 with temp_18_ptr2globl_49
              #                    store to temp_32_arithop_47 in mem offset legal
    sw      s2,0(sp)
              #                    release s2 with temp_32_arithop_47
              #                    store to temp_17_arithop_47 in mem offset legal
    sw      a5,100(sp)
              #                    release a5 with temp_17_arithop_47
              #                    store to temp_19_cmp_49 in mem offset legal
    sb      s1,95(sp)
              #                    release s1 with temp_19_cmp_49
              #                    store to j_43 in mem offset legal
    sw      a6,112(sp)
              #                    release a6 with j_43
              #                    store to temp_16_cmp_45 in mem offset legal
    sb      a4,107(sp)
              #                    release a4 with temp_16_cmp_45
              #                    store to temp_15_ptr2globl_45 in mem offset legal
    sw      a3,108(sp)
              #                    release a3 with temp_15_ptr2globl_45
    j       .while.head_46
              #                    regtab     a0:Freed { symidx: a_41, tracked: true } |     a1:Freed { symidx: i_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_45, tracked: true } |     a4:Freed { symidx: temp_16_cmp_45, tracked: true } | 
              #                          label while.exit_46: 
.while.exit_46:
              #                    regtab 
              #                          Define sortB_0 [a_60] -> sortB_ret_0 
    .globl sortB
    .type sortB,@function
sortB:
              #                    mem layout:|ra_sortB:8 at 3200336|s0_sortB:8 at 3200328|a:8 at 3200320|i:4 at 3200316|mx:4 at 3200312|temp_33_ptr2globl:4 at 3200308|temp_34_cmp:1 at 3200307|none:3 at 3200304|temp_35_array_ptr:8 at 3200296|temp_36_array_ele:4 at 3200292|none:4 at 3200288|temp_37_index_ptr:8 at 3200280|temp_38_array_ptr:8 at 3200272|temp_39_array_ele:4 at 3200268|temp_40_ptr2globl:1600080 at 1600188|none:4 at 1600184|temp_41_array_ptr:8 at 1600176|temp_42_array_ele:4 at 1600172|temp_43_arithop:4 at 1600168|temp_44_array_ptr:8 at 1600160|temp_45_array_ele:4 at 1600156|temp_46_cmp:1 at 1600155|none:3 at 1600152|temp_47_array_ptr:8 at 1600144|temp_48_array_ele:4 at 1600140|temp_49_arithop:4 at 1600136|now:4 at 1600132|temp_50_cmp:1 at 1600131|none:3 at 1600128|temp_51_ptr2globl:1600080 at 48|temp_52_array_ptr:8 at 40|temp_53_array_ele:4 at 36|j:4 at 32|temp_54_:1 at 31|none:7 at 24|temp_55_index_ptr:8 at 16|temp_56_arithop:4 at 12|temp_57_arithop:4 at 8|temp_58_arithop:4 at 4|none:4 at 0
              #                    occupy a1 with -3200344_0
    li      a1, -3200344
    li      a1, -3200344
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_sortB_0 in mem offset_illegal
              #                    occupy a2 with 3200336_0
    li      a2, 3200336
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_sortB_0 in mem offset_illegal
              #                    occupy a3 with 3200328_0
    li      a3, 3200328
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 3200344_0
    li      a4, 3200344
    li      a4, 3200344
    add     s0,a4,sp
              #                    free a4
              #                          new_var a_60:ptr->i32 
              #                          alloc i32 i_62 
              #                          alloc i32 mx_62 
              #                          alloc i32 temp_33_ptr2globl_64 
              #                          alloc i1 temp_34_cmp_64 
              #                          alloc ptr->i32 temp_35_array_ptr_66 
              #                          alloc i32 temp_36_array_ele_66 
              #                          alloc ptr->i32 temp_37_index_ptr_66 
              #                          alloc ptr->i32 temp_38_array_ptr_66 
              #                          alloc i32 temp_39_array_ele_66 
              #                          alloc Array:i32:[Some(400020_0)] temp_40_ptr2globl_66 
              #                          alloc ptr->i32 temp_41_array_ptr_66 
              #                          alloc i32 temp_42_array_ele_66 
              #                          alloc i32 temp_43_arithop_66 
              #                          alloc ptr->i32 temp_44_array_ptr_68 
              #                          alloc i32 temp_45_array_ele_68 
              #                          alloc i1 temp_46_cmp_68 
              #                          alloc ptr->i32 temp_47_array_ptr_68 
              #                          alloc i32 temp_48_array_ele_68 
              #                          alloc i32 temp_49_arithop_66 
              #                          alloc i32 now_62 
              #                          alloc i1 temp_50_cmp_74 
              #                          alloc Array:i32:[Some(400020_0)] temp_51_ptr2globl_76 
              #                          alloc ptr->i32 temp_52_array_ptr_76 
              #                          alloc i32 temp_53_array_ele_76 
              #                          alloc i32 j_76 
              #                          alloc i1 temp_54__1618 
              #                          alloc ptr->i32 temp_55_index_ptr_80 
              #                          alloc i32 temp_56_arithop_80 
              #                          alloc i32 temp_57_arithop_80 
              #                          alloc i32 temp_58_arithop_76 
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          i_62 = i32 0_0 
              #                    occupy a1 with i_62
    li      a1, 0
              #                    free a1
              #                          mx_62 = i32 -100_0 
              #                    occupy a2 with mx_62
    li      a2, -100
              #                    free a2
              #                          jump label: while.head_65 
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } | 
              #                          label while.head_65: 
.while.head_65:
              #                          new_var temp_33_ptr2globl_64:i32 
              #                          temp_33_ptr2globl_64 = load *n_0:ptr->i32 
              #                    occupy a3 with *n_0
              #                       load label n as ptr to reg
    la      a3, n
              #                    occupy reg a3 with *n_0
              #                    occupy a4 with temp_33_ptr2globl_64
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_34_cmp_64:i1 
              #                          temp_34_cmp_64 = icmp i32 Slt i_62, temp_33_ptr2globl_64 
              #                    occupy a1 with i_62
              #                    occupy a4 with temp_33_ptr2globl_64
              #                    occupy a5 with temp_34_cmp_64
    slt     a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                          br i1 temp_34_cmp_64, label while.body_65, label while.exit_65 
              #                    occupy a5 with temp_34_cmp_64
              #                    free a5
              #                    occupy a5 with temp_34_cmp_64
    bnez    a5, .while.body_65
              #                    free a5
    j       .while.exit_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } | 
              #                          label while.body_65: 
.while.body_65:
              #                          new_var temp_35_array_ptr_66:ptr->i32 
              #                          temp_35_array_ptr_66 = getelementptr a_60:ptr->i32 [Some(i_62)] 
              #                    occupy a3 with temp_35_array_ptr_66
    li      a3, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a1 with i_62
              #                    occupy a7 with _anonymous_of_a_60_0
    mul     a7,a6,a1
              #                    free a6
              #                    free a1
    add     a3,a3,a7
              #                    free a7
    slli a3,a3,2
              #                    occupy a0 with a_60
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_36_array_ele_66:i32 
              #                          temp_36_array_ele_66 = load temp_35_array_ptr_66:ptr->i32 
              #                    occupy a3 with temp_35_array_ptr_66
              #                    occupy s1 with temp_36_array_ele_66
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_37_index_ptr_66:ptr->i32 
              #                          temp_37_index_ptr_66 = getelementptr cnt_0:Array:i32:[Some(400020_0)] [Some(temp_36_array_ele_66)] 
              #                    occupy s2 with temp_37_index_ptr_66
    li      s2, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s1 with temp_36_array_ele_66
              #                    occupy s3 with _anonymous_of_cnt_0_0
    mul     s3,a6,s1
              #                    free a6
              #                    free s1
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
              #                    occupy s4 with _anonymous_of_cnt_0_0
    la      s4, cnt
    add     s2,s2,s4
              #                    free s4
              #                    free s2
              #                          new_var temp_38_array_ptr_66:ptr->i32 
              #                          temp_38_array_ptr_66 = getelementptr a_60:ptr->i32 [Some(i_62)] 
              #                    occupy s5 with temp_38_array_ptr_66
    li      s5, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a1 with i_62
              #                    occupy s6 with _anonymous_of_a_60_0
    mul     s6,a6,a1
              #                    free a6
              #                    free a1
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy a0 with a_60
    add     s5,s5,a0
              #                    free a0
              #                    free s5
              #                          new_var temp_39_array_ele_66:i32 
              #                          temp_39_array_ele_66 = load temp_38_array_ptr_66:ptr->i32 
              #                    occupy s5 with temp_38_array_ptr_66
              #                    occupy s7 with temp_39_array_ele_66
    lw      s7,0(s5)
              #                    free s7
              #                    free s5
              #                          new_var temp_40_ptr2globl_66:Array:i32:[Some(400020_0)] 
              #                          temp_40_ptr2globl_66 = load *cnt_0:ptr->i32 
              #                    occupy s8 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s8, cnt
              #                    occupy reg s8 with *cnt_0
              #                    occupy s9 with temp_40_ptr2globl_66
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_41_array_ptr_66:ptr->i32 
              #                          temp_41_array_ptr_66 = getelementptr temp_40_ptr2globl_66:Array:i32:[Some(400020_0)] [Some(temp_39_array_ele_66)] 
              #                    occupy s10 with temp_41_array_ptr_66
    li      s10, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s7 with temp_39_array_ele_66
              #                    occupy s11 with _anonymous_of_temp_40_ptr2globl_66_0
    mul     s11,a6,s7
              #                    free a6
              #                    free s7
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a6 with 1600188_0
    li      a6, 1600188
    li      a6, 1600188
    add     s10,a6,s10
              #                    free a6
              #                    free s10
              #                          new_var temp_42_array_ele_66:i32 
              #                          temp_42_array_ele_66 = load temp_41_array_ptr_66:ptr->i32 
              #                    occupy s10 with temp_41_array_ptr_66
              #                    occupy a6 with temp_42_array_ele_66
    lw      a6,0(s10)
              #                    free a6
              #                    free s10
              #                          new_var temp_43_arithop_66:i32 
              #                          temp_43_arithop_66 = Add i32 temp_42_array_ele_66, 1_0 
              #                    occupy a6 with temp_42_array_ele_66
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s3 with temp_43_arithop_66
    add     s3,a6,a7
              #                    free a6
              #                    free a7
              #                    free s3
              #                          store temp_43_arithop_66:i32 temp_37_index_ptr_66:ptr->i32 
              #                    occupy s2 with temp_37_index_ptr_66
              #                    occupy s3 with temp_43_arithop_66
    sw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          mu cnt_0:234 
              #                          cnt_0 = chi cnt_0:234 
              #                          jump label: L6_0 
    j       .L6_0
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: temp_35_array_ptr_66, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_66, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_66, tracked: true } |     s1:Freed { symidx: temp_36_array_ele_66, tracked: true } |     s2:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s3:Freed { symidx: temp_43_arithop_66, tracked: true } |     s5:Freed { symidx: temp_38_array_ptr_66, tracked: true } |     s7:Freed { symidx: temp_39_array_ele_66, tracked: true } |     s9:Freed { symidx: temp_40_ptr2globl_66, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_44_array_ptr_68:ptr->i32 
              #                          temp_44_array_ptr_68 = getelementptr a_60:ptr->i32 [Some(i_62)] 
              #                    occupy a7 with temp_44_array_ptr_68
    li      a7, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a1 with i_62
              #                    occupy s6 with _anonymous_of_a_60_0
    mul     s6,s4,a1
              #                    free s4
              #                    free a1
    add     a7,a7,s6
              #                    free s6
    slli a7,a7,2
              #                    occupy a0 with a_60
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          new_var temp_45_array_ele_68:i32 
              #                          temp_45_array_ele_68 = load temp_44_array_ptr_68:ptr->i32 
              #                    occupy a7 with temp_44_array_ptr_68
              #                    occupy s8 with temp_45_array_ele_68
    lw      s8,0(a7)
              #                    free s8
              #                    free a7
              #                          new_var temp_46_cmp_68:i1 
              #                          temp_46_cmp_68 = icmp i32 Sgt temp_45_array_ele_68, mx_62 
              #                    occupy s8 with temp_45_array_ele_68
              #                    occupy a2 with mx_62
              #                    occupy s11 with temp_46_cmp_68
    slt     s11,a2,s8
              #                    free s8
              #                    free a2
              #                    free s11
              #                          br i1 temp_46_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy s11 with temp_46_cmp_68
              #                    free s11
              #                    occupy s11 with temp_46_cmp_68
    bnez    s11, .branch_true_69
              #                    free s11
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: temp_35_array_ptr_66, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_66, tracked: true } |     a7:Freed { symidx: temp_44_array_ptr_68, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_66, tracked: true } |     s11:Freed { symidx: temp_46_cmp_68, tracked: true } |     s1:Freed { symidx: temp_36_array_ele_66, tracked: true } |     s2:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s3:Freed { symidx: temp_43_arithop_66, tracked: true } |     s5:Freed { symidx: temp_38_array_ptr_66, tracked: true } |     s7:Freed { symidx: temp_39_array_ele_66, tracked: true } |     s8:Freed { symidx: temp_45_array_ele_68, tracked: true } |     s9:Freed { symidx: temp_40_ptr2globl_66, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_47_array_ptr_68:ptr->i32 
              #                          temp_47_array_ptr_68 = getelementptr a_60:ptr->i32 [Some(i_62)] 
              #                    occupy s4 with temp_47_array_ptr_68
    li      s4, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a1 with i_62
              #                    store to a_60 in mem offset_illegal
              #                    occupy a0 with 3200320_0
    li      a0, 3200320
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with a_60
              #                    occupy a0 with _anonymous_of_a_60_0
    mul     a0,s6,a1
              #                    free s6
              #                    free a1
    add     s4,s4,a0
              #                    free a0
    slli s4,s4,2
              #                    occupy a0 with a_60
              #                    load from a_60 in mem
              #                    occupy a0 with a_60
    add     a0,sp,a0
    ld      a0,0(a0)
              #                    free a0
    add     s4,s4,a0
              #                    free a0
              #                    free s4
              #                          new_var temp_48_array_ele_68:i32 
              #                          temp_48_array_ele_68 = load temp_47_array_ptr_68:ptr->i32 
              #                    occupy s4 with temp_47_array_ptr_68
              #                    occupy s6 with temp_48_array_ele_68
    lw      s6,0(s4)
              #                    free s6
              #                    free s4
              #                          mx_62 = i32 temp_48_array_ele_68 
              #                    occupy s6 with temp_48_array_ele_68
              #                    occupy a2 with mx_62
    mv      a2, s6
              #                    free s6
              #                    free a2
              #                          jump label: branch_false_69 
              #                    store to temp_47_array_ptr_68 in mem offset_illegal
              #                    occupy s4 with 1600144_0
    li      s4, 1600144
    add     s4,sp,s4
    sd      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_47_array_ptr_68
              #                    store to temp_48_array_ele_68 in mem offset_illegal
              #                    occupy s4 with 1600140_0
    li      s4, 1600140
    add     s4,sp,s4
    sw      s6,0(s4)
              #                    free s4
              #                    release s6 with temp_48_array_ele_68
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: temp_35_array_ptr_66, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_66, tracked: true } |     a7:Freed { symidx: temp_44_array_ptr_68, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_66, tracked: true } |     s11:Freed { symidx: temp_46_cmp_68, tracked: true } |     s1:Freed { symidx: temp_36_array_ele_66, tracked: true } |     s2:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s3:Freed { symidx: temp_43_arithop_66, tracked: true } |     s5:Freed { symidx: temp_38_array_ptr_66, tracked: true } |     s7:Freed { symidx: temp_39_array_ele_66, tracked: true } |     s8:Freed { symidx: temp_45_array_ele_68, tracked: true } |     s9:Freed { symidx: temp_40_ptr2globl_66, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: temp_35_array_ptr_66, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_42_array_ele_66, tracked: true } |     a7:Freed { symidx: temp_44_array_ptr_68, tracked: true } |     s10:Freed { symidx: temp_41_array_ptr_66, tracked: true } |     s11:Freed { symidx: temp_46_cmp_68, tracked: true } |     s1:Freed { symidx: temp_36_array_ele_66, tracked: true } |     s2:Freed { symidx: temp_37_index_ptr_66, tracked: true } |     s3:Freed { symidx: temp_43_arithop_66, tracked: true } |     s5:Freed { symidx: temp_38_array_ptr_66, tracked: true } |     s7:Freed { symidx: temp_39_array_ele_66, tracked: true } |     s8:Freed { symidx: temp_45_array_ele_68, tracked: true } |     s9:Freed { symidx: temp_40_ptr2globl_66, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_49_arithop_66:i32 
              #                          temp_49_arithop_66 = Add i32 i_62, 1_0 
              #                    occupy a1 with i_62
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s6 with temp_49_arithop_66
    add     s6,a1,s4
              #                    free a1
              #                    free s4
              #                    free s6
              #                          i_62 = i32 temp_49_arithop_66 
              #                    occupy s6 with temp_49_arithop_66
              #                    occupy a1 with i_62
    mv      a1, s6
              #                    free s6
              #                    free a1
              #                          jump label: while.head_65 
              #                    store to temp_45_array_ele_68 in mem offset_illegal
              #                    occupy s8 with 1600156_0
    li      s8, 1600156
    add     s8,sp,s8
    sw      s8,0(s8)
              #                    free s8
              #                    release s8 with temp_45_array_ele_68
              #                    store to temp_43_arithop_66 in mem offset_illegal
              #                    occupy s3 with 1600168_0
    li      s3, 1600168
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_43_arithop_66
              #                    store to temp_40_ptr2globl_66 in mem offset_illegal
              #                    occupy s3 with 1600188_0
    li      s3, 1600188
    add     s3,sp,s3
    sw      s9,0(s3)
              #                    free s3
              #                    release s9 with temp_40_ptr2globl_66
              #                    store to temp_41_array_ptr_66 in mem offset_illegal
              #                    occupy s8 with 1600176_0
    li      s8, 1600176
    add     s8,sp,s8
    sd      s10,0(s8)
              #                    free s8
              #                    release s10 with temp_41_array_ptr_66
              #                    store to temp_42_array_ele_66 in mem offset_illegal
              #                    occupy a6 with 1600172_0
    li      a6, 1600172
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_42_array_ele_66
              #                    store to temp_36_array_ele_66 in mem offset_illegal
              #                    occupy a6 with 3200292_0
    li      a6, 3200292
    add     a6,sp,a6
    sw      s1,0(a6)
              #                    free a6
              #                    release s1 with temp_36_array_ele_66
              #                    store to temp_33_ptr2globl_64 in mem offset_illegal
              #                    occupy a4 with 3200308_0
    li      a4, 3200308
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_33_ptr2globl_64
              #                    store to temp_34_cmp_64 in mem offset_illegal
              #                    occupy a4 with 3200307_0
    li      a4, 3200307
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_34_cmp_64
              #                    store to temp_37_index_ptr_66 in mem offset_illegal
              #                    occupy a5 with 3200280_0
    li      a5, 3200280
    add     a5,sp,a5
    sd      s2,0(a5)
              #                    free a5
              #                    release s2 with temp_37_index_ptr_66
              #                    store to temp_46_cmp_68 in mem offset_illegal
              #                    occupy s1 with 1600155_0
    li      s1, 1600155
    add     s1,sp,s1
    sb      s11,0(s1)
              #                    free s1
              #                    release s11 with temp_46_cmp_68
              #                    store to temp_38_array_ptr_66 in mem offset_illegal
              #                    occupy s2 with 3200272_0
    li      s2, 3200272
    add     s2,sp,s2
    sd      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_38_array_ptr_66
              #                    store to temp_44_array_ptr_68 in mem offset_illegal
              #                    occupy a7 with 1600160_0
    li      a7, 1600160
    add     a7,sp,a7
    sd      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_44_array_ptr_68
              #                    store to temp_39_array_ele_66 in mem offset_illegal
              #                    occupy a7 with 3200268_0
    li      a7, 3200268
    add     a7,sp,a7
    sw      s7,0(a7)
              #                    free a7
              #                    release s7 with temp_39_array_ele_66
              #                    store to temp_35_array_ptr_66 in mem offset_illegal
              #                    occupy a3 with 3200296_0
    li      a3, 3200296
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_35_array_ptr_66
              #                    store to temp_49_arithop_66 in mem offset_illegal
              #                    occupy a3 with 1600136_0
    li      a3, 1600136
    add     a3,sp,a3
    sw      s6,0(a3)
              #                    free a3
              #                    release s6 with temp_49_arithop_66
    j       .while.head_65
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } | 
              #                          label while.exit_65: 
.while.exit_65:
              #                          i_62 = i32 0_0 
              #                    occupy a1 with i_62
    li      a1, 0
              #                    free a1
              #                          now_62 = i32 0_0 
              #                    occupy a3 with now_62
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_75 
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } | 
              #                          label while.head_75: 
.while.head_75:
              #                          new_var temp_50_cmp_74:i1 
              #                          temp_50_cmp_74 = icmp i32 Sle i_62, mx_62 
              #                    occupy a1 with i_62
              #                    occupy a2 with mx_62
              #                    occupy a6 with temp_50_cmp_74
    slt     a6,a2,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a2
              #                    free a6
              #                          br i1 temp_50_cmp_74, label while.body_75, label while.exit_75 
              #                    occupy a6 with temp_50_cmp_74
              #                    free a6
              #                    occupy a6 with temp_50_cmp_74
    bnez    a6, .while.body_75
              #                    free a6
    j       .while.exit_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } | 
              #                          label while.body_75: 
.while.body_75:
              #                          new_var temp_51_ptr2globl_76:Array:i32:[Some(400020_0)] 
              #                          temp_51_ptr2globl_76 = load *cnt_0:ptr->i32 
              #                    occupy a7 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a7, cnt
              #                    occupy reg a7 with *cnt_0
              #                    occupy s1 with temp_51_ptr2globl_76
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_52_array_ptr_76:ptr->i32 
              #                          temp_52_array_ptr_76 = getelementptr temp_51_ptr2globl_76:Array:i32:[Some(400020_0)] [Some(i_62)] 
              #                    occupy s2 with temp_52_array_ptr_76
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a1 with i_62
              #                    occupy s4 with _anonymous_of_temp_51_ptr2globl_76_0
    mul     s4,s3,a1
              #                    free s3
              #                    free a1
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,48
              #                    free s2
              #                          new_var temp_53_array_ele_76:i32 
              #                          temp_53_array_ele_76 = load temp_52_array_ptr_76:ptr->i32 
              #                    occupy s2 with temp_52_array_ptr_76
              #                    occupy s5 with temp_53_array_ele_76
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          j_76 = i32 temp_53_array_ele_76 
              #                    occupy s5 with temp_53_array_ele_76
              #                    occupy s6 with j_76
    mv      s6, s5
              #                    free s5
              #                    free s6
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } |     s1:Freed { symidx: temp_51_ptr2globl_76, tracked: true } |     s2:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s6:Freed { symidx: j_76, tracked: true } | 
              #                          label while.head_79: 
.while.head_79:
              #                          new_var temp_54__1618:i1 
              #                          temp_54__1618 = icmp i32 Ne j_76, 0_0 
              #                    occupy s6 with j_76
              #                    occupy a7 with 0_0
    li      a7, 0
              #                    occupy s3 with temp_54__1618
    xor     s3,s6,a7
    snez    s3, s3
              #                    free s6
              #                    free a7
              #                    free s3
              #                          br i1 temp_54__1618, label while.body_79, label while.exit_79 
              #                    occupy s3 with temp_54__1618
              #                    free s3
              #                    occupy s3 with temp_54__1618
    bnez    s3, .while.body_79
              #                    free s3
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } |     s1:Freed { symidx: temp_51_ptr2globl_76, tracked: true } |     s2:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_54__1618, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s6:Freed { symidx: j_76, tracked: true } | 
              #                          label while.body_79: 
.while.body_79:
              #                          new_var temp_55_index_ptr_80:ptr->i32 
              #                          temp_55_index_ptr_80 = getelementptr a_60:ptr->i32 [Some(now_62)] 
              #                    occupy a7 with temp_55_index_ptr_80
    li      a7, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a3 with now_62
              #                    occupy s7 with _anonymous_of_a_60_0
    mul     s7,s4,a3
              #                    free s4
              #                    free a3
    add     a7,a7,s7
              #                    free s7
    slli a7,a7,2
              #                    occupy a0 with a_60
    add     a7,a7,a0
              #                    free a0
              #                    free a7
              #                          store i_62:i32 temp_55_index_ptr_80:ptr->i32 
              #                    occupy a7 with temp_55_index_ptr_80
              #                    occupy a1 with i_62
    sw      a1,0(a7)
              #                    free a1
              #                    free a7
              #                          mu a_60:293 
              #                          a_60 = chi a_60:293 
              #                          new_var temp_56_arithop_80:i32 
              #                          temp_56_arithop_80 = Add i32 now_62, 1_0 
              #                    occupy a3 with now_62
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s8 with temp_56_arithop_80
    add     s8,a3,s4
              #                    free a3
              #                    free s4
              #                    free s8
              #                          now_62 = i32 temp_56_arithop_80 
              #                    occupy s8 with temp_56_arithop_80
              #                    occupy a3 with now_62
    mv      a3, s8
              #                    free s8
              #                    free a3
              #                          new_var temp_57_arithop_80:i32 
              #                          temp_57_arithop_80 = Sub i32 j_76, 1_0 
              #                    occupy s6 with j_76
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s9 with temp_57_arithop_80
              #                    regtab:    a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } |     a7:Freed { symidx: temp_55_index_ptr_80, tracked: true } |     s1:Freed { symidx: temp_51_ptr2globl_76, tracked: true } |     s2:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_54__1618, tracked: true } |     s4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     s5:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s6:Occupied { symidx: j_76, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: _anonymous_of_a_60_0, tracked: false } |     s8:Freed { symidx: temp_56_arithop_80, tracked: true } |     s9:Occupied { symidx: temp_57_arithop_80, tracked: true, occupy_count: 1 } | 


    sub     s9,s6,s4
              #                    free s6
              #                    free s4
              #                    free s9
              #                          j_76 = i32 temp_57_arithop_80 
              #                    occupy s9 with temp_57_arithop_80
              #                    occupy s6 with j_76
    mv      s6, s9
              #                    free s9
              #                    free s6
              #                          jump label: while.head_79 
              #                    store to temp_56_arithop_80 in mem offset legal
    sw      s8,12(sp)
              #                    release s8 with temp_56_arithop_80
              #                    store to temp_54__1618 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_54__1618
              #                    store to temp_57_arithop_80 in mem offset legal
    sw      s9,8(sp)
              #                    release s9 with temp_57_arithop_80
              #                    store to temp_55_index_ptr_80 in mem offset legal
    sd      a7,16(sp)
              #                    release a7 with temp_55_index_ptr_80
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } |     s1:Freed { symidx: temp_51_ptr2globl_76, tracked: true } |     s2:Freed { symidx: temp_52_array_ptr_76, tracked: true } |     s3:Freed { symidx: temp_54__1618, tracked: true } |     s5:Freed { symidx: temp_53_array_ele_76, tracked: true } |     s6:Freed { symidx: j_76, tracked: true } | 
              #                          label while.exit_79: 
.while.exit_79:
              #                          new_var temp_58_arithop_76:i32 
              #                          temp_58_arithop_76 = Add i32 i_62, 1_0 
              #                    occupy a1 with i_62
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s4 with temp_58_arithop_76
    add     s4,a1,a7
              #                    free a1
              #                    free a7
              #                    free s4
              #                          i_62 = i32 temp_58_arithop_76 
              #                    occupy s4 with temp_58_arithop_76
              #                    occupy a1 with i_62
    mv      a1, s4
              #                    free s4
              #                    free a1
              #                          jump label: while.head_75 
              #                    store to temp_54__1618 in mem offset legal
    sb      s3,31(sp)
              #                    release s3 with temp_54__1618
              #                    store to temp_50_cmp_74 in mem offset_illegal
              #                    occupy a6 with 1600131_0
    li      a6, 1600131
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_50_cmp_74
              #                    store to temp_51_ptr2globl_76 in mem offset legal
    sw      s1,48(sp)
              #                    release s1 with temp_51_ptr2globl_76
              #                    store to temp_52_array_ptr_76 in mem offset legal
    sd      s2,40(sp)
              #                    release s2 with temp_52_array_ptr_76
              #                    store to temp_53_array_ele_76 in mem offset legal
    sw      s5,36(sp)
              #                    release s5 with temp_53_array_ele_76
              #                    store to temp_58_arithop_76 in mem offset legal
    sw      s4,4(sp)
              #                    release s4 with temp_58_arithop_76
              #                    store to j_76 in mem offset legal
    sw      s6,32(sp)
              #                    release s6 with j_76
    j       .while.head_75
              #                    regtab     a0:Freed { symidx: a_60, tracked: true } |     a1:Freed { symidx: i_62, tracked: true } |     a2:Freed { symidx: mx_62, tracked: true } |     a3:Freed { symidx: now_62, tracked: true } |     a4:Freed { symidx: temp_33_ptr2globl_64, tracked: true } |     a5:Freed { symidx: temp_34_cmp_64, tracked: true } |     a6:Freed { symidx: temp_50_cmp_74, tracked: true } | 
              #                          label while.exit_75: 
.while.exit_75:
              #                    regtab 
              #                          Define sortC_0 [a_85] -> sortC_ret_0 
    .globl sortC
    .type sortC,@function
sortC:
              #                    mem layout:|ra_sortC:8 at 144|s0_sortC:8 at 136|a:8 at 128|i:4 at 124|temp_59_ptr2globl:4 at 120|temp_60_cmp:1 at 119|none:3 at 116|id:4 at 112|temp_61_arithop:4 at 108|j:4 at 104|temp_62_ptr2globl:4 at 100|temp_63_cmp:1 at 99|none:3 at 96|temp_64_array_ptr:8 at 88|temp_65_array_ele:4 at 84|none:4 at 80|temp_66_array_ptr:8 at 72|temp_67_array_ele:4 at 68|temp_68_cmp:1 at 67|none:3 at 64|temp_69_arithop:4 at 60|none:4 at 56|temp_70_array_ptr:8 at 48|temp_71_array_ele:4 at 44|t:4 at 40|temp_72_index_ptr:8 at 32|temp_73_array_ptr:8 at 24|temp_74_array_ele:4 at 20|none:4 at 16|temp_75_index_ptr:8 at 8|temp_76_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-152
              #                    store to ra_sortC_0 in mem offset legal
    sd      ra,144(sp)
              #                    store to s0_sortC_0 in mem offset legal
    sd      s0,136(sp)
    addi    s0,sp,152
              #                          new_var a_85:ptr->i32 
              #                          alloc i32 i_87 
              #                          alloc i32 temp_59_ptr2globl_89 
              #                          alloc i1 temp_60_cmp_89 
              #                          alloc i32 id_91 
              #                          alloc i32 temp_61_arithop_91 
              #                          alloc i32 j_91 
              #                          alloc i32 temp_62_ptr2globl_93 
              #                          alloc i1 temp_63_cmp_93 
              #                          alloc ptr->i32 temp_64_array_ptr_96 
              #                          alloc i32 temp_65_array_ele_96 
              #                          alloc ptr->i32 temp_66_array_ptr_96 
              #                          alloc i32 temp_67_array_ele_96 
              #                          alloc i1 temp_68_cmp_96 
              #                          alloc i32 temp_69_arithop_95 
              #                          alloc ptr->i32 temp_70_array_ptr_91 
              #                          alloc i32 temp_71_array_ele_91 
              #                          alloc i32 t_91 
              #                          alloc ptr->i32 temp_72_index_ptr_91 
              #                          alloc ptr->i32 temp_73_array_ptr_91 
              #                          alloc i32 temp_74_array_ele_91 
              #                          alloc ptr->i32 temp_75_index_ptr_91 
              #                          alloc i32 temp_76_arithop_91 
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          i_87 = i32 0_0 
              #                    occupy a1 with i_87
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_90 
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } | 
              #                          label while.head_90: 
.while.head_90:
              #                          new_var temp_59_ptr2globl_89:i32 
              #                          temp_59_ptr2globl_89 = load *n_0:ptr->i32 
              #                    occupy a2 with *n_0
              #                       load label n as ptr to reg
    la      a2, n
              #                    occupy reg a2 with *n_0
              #                    occupy a3 with temp_59_ptr2globl_89
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_60_cmp_89:i1 
              #                          temp_60_cmp_89 = icmp i32 Slt i_87, temp_59_ptr2globl_89 
              #                    occupy a1 with i_87
              #                    occupy a3 with temp_59_ptr2globl_89
              #                    occupy a4 with temp_60_cmp_89
    slt     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          br i1 temp_60_cmp_89, label while.body_90, label while.exit_90 
              #                    occupy a4 with temp_60_cmp_89
              #                    free a4
              #                    occupy a4 with temp_60_cmp_89
    bnez    a4, .while.body_90
              #                    free a4
    j       .while.exit_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } | 
              #                          label while.body_90: 
.while.body_90:
              #                          id_91 = i32 i_87 
              #                    occupy a1 with i_87
              #                    occupy a2 with id_91
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          new_var temp_61_arithop_91:i32 
              #                          temp_61_arithop_91 = Add i32 i_87, 1_0 
              #                    occupy a1 with i_87
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_61_arithop_91
    add     a6,a1,a5
              #                    free a1
              #                    free a5
              #                    free a6
              #                          j_91 = i32 temp_61_arithop_91 
              #                    occupy a6 with temp_61_arithop_91
              #                    occupy a7 with j_91
    mv      a7, a6
              #                    free a6
              #                    free a7
              #                          jump label: while.head_94 
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } | 
              #                          label while.head_94: 
.while.head_94:
              #                          new_var temp_62_ptr2globl_93:i32 
              #                          temp_62_ptr2globl_93 = load *n_0:ptr->i32 
              #                    occupy a5 with *n_0
              #                       load label n as ptr to reg
    la      a5, n
              #                    occupy reg a5 with *n_0
              #                    occupy s1 with temp_62_ptr2globl_93
    lw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                          new_var temp_63_cmp_93:i1 
              #                          temp_63_cmp_93 = icmp i32 Slt j_91, temp_62_ptr2globl_93 
              #                    occupy a7 with j_91
              #                    occupy s1 with temp_62_ptr2globl_93
              #                    occupy s2 with temp_63_cmp_93
    slt     s2,a7,s1
              #                    free a7
              #                    free s1
              #                    free s2
              #                          br i1 temp_63_cmp_93, label while.body_94, label while.exit_94 
              #                    occupy s2 with temp_63_cmp_93
              #                    free s2
              #                    occupy s2 with temp_63_cmp_93
    bnez    s2, .while.body_94
              #                    free s2
    j       .while.exit_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } |     s1:Freed { symidx: temp_62_ptr2globl_93, tracked: true } |     s2:Freed { symidx: temp_63_cmp_93, tracked: true } | 
              #                          label while.body_94: 
.while.body_94:
              #                          new_var temp_64_array_ptr_96:ptr->i32 
              #                          temp_64_array_ptr_96 = getelementptr a_85:ptr->i32 [Some(id_91)] 
              #                    occupy a5 with temp_64_array_ptr_96
    li      a5, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a2 with id_91
              #                    occupy s4 with _anonymous_of_a_85_0
    mul     s4,s3,a2
              #                    free s3
              #                    free a2
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy a0 with a_85
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          new_var temp_65_array_ele_96:i32 
              #                          temp_65_array_ele_96 = load temp_64_array_ptr_96:ptr->i32 
              #                    occupy a5 with temp_64_array_ptr_96
              #                    occupy s5 with temp_65_array_ele_96
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          new_var temp_66_array_ptr_96:ptr->i32 
              #                          temp_66_array_ptr_96 = getelementptr a_85:ptr->i32 [Some(j_91)] 
              #                    occupy s6 with temp_66_array_ptr_96
    li      s6, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a7 with j_91
              #                    occupy s7 with _anonymous_of_a_85_0
    mul     s7,s3,a7
              #                    free s3
              #                    free a7
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy a0 with a_85
    add     s6,s6,a0
              #                    free a0
              #                    free s6
              #                          new_var temp_67_array_ele_96:i32 
              #                          temp_67_array_ele_96 = load temp_66_array_ptr_96:ptr->i32 
              #                    occupy s6 with temp_66_array_ptr_96
              #                    occupy s8 with temp_67_array_ele_96
    lw      s8,0(s6)
              #                    free s8
              #                    free s6
              #                          new_var temp_68_cmp_96:i1 
              #                          temp_68_cmp_96 = icmp i32 Slt temp_67_array_ele_96, temp_65_array_ele_96 
              #                    occupy s8 with temp_67_array_ele_96
              #                    occupy s5 with temp_65_array_ele_96
              #                    occupy s9 with temp_68_cmp_96
    slt     s9,s8,s5
              #                    free s8
              #                    free s5
              #                    free s9
              #                          br i1 temp_68_cmp_96, label branch_true_97, label branch_false_97 
              #                    occupy s9 with temp_68_cmp_96
              #                    free s9
              #                    occupy s9 with temp_68_cmp_96
    bnez    s9, .branch_true_97
              #                    free s9
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a5:Freed { symidx: temp_64_array_ptr_96, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } |     s1:Freed { symidx: temp_62_ptr2globl_93, tracked: true } |     s2:Freed { symidx: temp_63_cmp_93, tracked: true } |     s5:Freed { symidx: temp_65_array_ele_96, tracked: true } |     s6:Freed { symidx: temp_66_array_ptr_96, tracked: true } |     s8:Freed { symidx: temp_67_array_ele_96, tracked: true } |     s9:Freed { symidx: temp_68_cmp_96, tracked: true } | 
              #                          label branch_true_97: 
.branch_true_97:
              #                          id_91 = i32 j_91 
              #                    occupy a7 with j_91
              #                    occupy a2 with id_91
    mv      a2, a7
              #                    free a7
              #                    free a2
              #                          jump label: branch_false_97 
    j       .branch_false_97
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a5:Freed { symidx: temp_64_array_ptr_96, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } |     s1:Freed { symidx: temp_62_ptr2globl_93, tracked: true } |     s2:Freed { symidx: temp_63_cmp_93, tracked: true } |     s5:Freed { symidx: temp_65_array_ele_96, tracked: true } |     s6:Freed { symidx: temp_66_array_ptr_96, tracked: true } |     s8:Freed { symidx: temp_67_array_ele_96, tracked: true } |     s9:Freed { symidx: temp_68_cmp_96, tracked: true } | 
              #                          label branch_false_97: 
.branch_false_97:
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a5:Freed { symidx: temp_64_array_ptr_96, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } |     s1:Freed { symidx: temp_62_ptr2globl_93, tracked: true } |     s2:Freed { symidx: temp_63_cmp_93, tracked: true } |     s5:Freed { symidx: temp_65_array_ele_96, tracked: true } |     s6:Freed { symidx: temp_66_array_ptr_96, tracked: true } |     s8:Freed { symidx: temp_67_array_ele_96, tracked: true } |     s9:Freed { symidx: temp_68_cmp_96, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_69_arithop_95:i32 
              #                          temp_69_arithop_95 = Add i32 j_91, 1_0 
              #                    occupy a7 with j_91
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy s4 with temp_69_arithop_95
    add     s4,a7,s3
              #                    free a7
              #                    free s3
              #                    free s4
              #                          j_91 = i32 temp_69_arithop_95 
              #                    occupy s4 with temp_69_arithop_95
              #                    occupy a7 with j_91
    mv      a7, s4
              #                    free s4
              #                    free a7
              #                          jump label: while.head_94 
              #                    store to temp_64_array_ptr_96 in mem offset legal
    sd      a5,88(sp)
              #                    release a5 with temp_64_array_ptr_96
              #                    store to temp_63_cmp_93 in mem offset legal
    sb      s2,99(sp)
              #                    release s2 with temp_63_cmp_93
              #                    store to temp_67_array_ele_96 in mem offset legal
    sw      s8,68(sp)
              #                    release s8 with temp_67_array_ele_96
              #                    store to temp_69_arithop_95 in mem offset legal
    sw      s4,60(sp)
              #                    release s4 with temp_69_arithop_95
              #                    store to temp_65_array_ele_96 in mem offset legal
    sw      s5,84(sp)
              #                    release s5 with temp_65_array_ele_96
              #                    store to temp_68_cmp_96 in mem offset legal
    sb      s9,67(sp)
              #                    release s9 with temp_68_cmp_96
              #                    store to temp_66_array_ptr_96 in mem offset legal
    sd      s6,72(sp)
              #                    release s6 with temp_66_array_ptr_96
              #                    store to temp_62_ptr2globl_93 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_62_ptr2globl_93
    j       .while.head_94
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a2:Freed { symidx: id_91, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } |     a6:Freed { symidx: temp_61_arithop_91, tracked: true } |     a7:Freed { symidx: j_91, tracked: true } |     s1:Freed { symidx: temp_62_ptr2globl_93, tracked: true } |     s2:Freed { symidx: temp_63_cmp_93, tracked: true } | 
              #                          label while.exit_94: 
.while.exit_94:
              #                          new_var temp_70_array_ptr_91:ptr->i32 
              #                          temp_70_array_ptr_91 = getelementptr a_85:ptr->i32 [Some(i_87)] 
              #                    occupy a5 with temp_70_array_ptr_91
    li      a5, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a1 with i_87
              #                    occupy s4 with _anonymous_of_a_85_0
    mul     s4,s3,a1
              #                    free s3
              #                    free a1
    add     a5,a5,s4
              #                    free s4
    slli a5,a5,2
              #                    occupy a0 with a_85
    add     a5,a5,a0
              #                    free a0
              #                    free a5
              #                          new_var temp_71_array_ele_91:i32 
              #                          temp_71_array_ele_91 = load temp_70_array_ptr_91:ptr->i32 
              #                    occupy a5 with temp_70_array_ptr_91
              #                    occupy s5 with temp_71_array_ele_91
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          t_91 = i32 temp_71_array_ele_91 
              #                    occupy s5 with temp_71_array_ele_91
              #                    occupy s6 with t_91
    mv      s6, s5
              #                    free s5
              #                    free s6
              #                          new_var temp_72_index_ptr_91:ptr->i32 
              #                          temp_72_index_ptr_91 = getelementptr a_85:ptr->i32 [Some(i_87)] 
              #                    occupy s7 with temp_72_index_ptr_91
    li      s7, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a1 with i_87
              #                    occupy s8 with _anonymous_of_a_85_0
    mul     s8,s3,a1
              #                    free s3
              #                    free a1
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy a0 with a_85
    add     s7,s7,a0
              #                    free a0
              #                    free s7
              #                          new_var temp_73_array_ptr_91:ptr->i32 
              #                          temp_73_array_ptr_91 = getelementptr a_85:ptr->i32 [Some(id_91)] 
              #                    occupy s9 with temp_73_array_ptr_91
    li      s9, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a2 with id_91
              #                    occupy s10 with _anonymous_of_a_85_0
    mul     s10,s3,a2
              #                    free s3
              #                    free a2
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy a0 with a_85
    add     s9,s9,a0
              #                    free a0
              #                    free s9
              #                          new_var temp_74_array_ele_91:i32 
              #                          temp_74_array_ele_91 = load temp_73_array_ptr_91:ptr->i32 
              #                    occupy s9 with temp_73_array_ptr_91
              #                    occupy s11 with temp_74_array_ele_91
    lw      s11,0(s9)
              #                    free s11
              #                    free s9
              #                          store temp_74_array_ele_91:i32 temp_72_index_ptr_91:ptr->i32 
              #                    occupy s7 with temp_72_index_ptr_91
              #                    occupy s11 with temp_74_array_ele_91
    sw      s11,0(s7)
              #                    free s11
              #                    free s7
              #                          mu a_85:379 
              #                          a_85 = chi a_85:379 
              #                          new_var temp_75_index_ptr_91:ptr->i32 
              #                          temp_75_index_ptr_91 = getelementptr a_85:ptr->i32 [Some(id_91)] 
              #                    occupy s3 with temp_75_index_ptr_91
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a2 with id_91
              #                    occupy s8 with _anonymous_of_a_85_0
    mul     s8,s4,a2
              #                    free s4
              #                    free a2
    add     s3,s3,s8
              #                    free s8
    slli s3,s3,2
              #                    occupy a0 with a_85
    add     s3,s3,a0
              #                    free a0
              #                    free s3
              #                          store t_91:i32 temp_75_index_ptr_91:ptr->i32 
              #                    occupy s3 with temp_75_index_ptr_91
              #                    occupy s6 with t_91
    sw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          mu a_85:385 
              #                          a_85 = chi a_85:385 
              #                          new_var temp_76_arithop_91:i32 
              #                          temp_76_arithop_91 = Add i32 i_87, 1_0 
              #                    occupy a1 with i_87
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s8 with temp_76_arithop_91
    add     s8,a1,s4
              #                    free a1
              #                    free s4
              #                    free s8
              #                          i_87 = i32 temp_76_arithop_91 
              #                    occupy s8 with temp_76_arithop_91
              #                    occupy a1 with i_87
    mv      a1, s8
              #                    free s8
              #                    free a1
              #                          jump label: while.head_90 
              #                    store to temp_70_array_ptr_91 in mem offset legal
    sd      a5,48(sp)
              #                    release a5 with temp_70_array_ptr_91
              #                    store to id_91 in mem offset legal
    sw      a2,112(sp)
              #                    release a2 with id_91
              #                    store to temp_63_cmp_93 in mem offset legal
    sb      s2,99(sp)
              #                    release s2 with temp_63_cmp_93
              #                    store to temp_72_index_ptr_91 in mem offset legal
    sd      s7,32(sp)
              #                    release s7 with temp_72_index_ptr_91
              #                    store to j_91 in mem offset legal
    sw      a7,104(sp)
              #                    release a7 with j_91
              #                    store to temp_76_arithop_91 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_76_arithop_91
              #                    store to temp_74_array_ele_91 in mem offset legal
    sw      s11,20(sp)
              #                    release s11 with temp_74_array_ele_91
              #                    store to temp_75_index_ptr_91 in mem offset legal
    sd      s3,8(sp)
              #                    release s3 with temp_75_index_ptr_91
              #                    store to temp_60_cmp_89 in mem offset legal
    sb      a4,119(sp)
              #                    release a4 with temp_60_cmp_89
              #                    store to temp_71_array_ele_91 in mem offset legal
    sw      s5,44(sp)
              #                    release s5 with temp_71_array_ele_91
              #                    store to temp_73_array_ptr_91 in mem offset legal
    sd      s9,24(sp)
              #                    release s9 with temp_73_array_ptr_91
              #                    store to temp_59_ptr2globl_89 in mem offset legal
    sw      a3,120(sp)
              #                    release a3 with temp_59_ptr2globl_89
              #                    store to temp_61_arithop_91 in mem offset legal
    sw      a6,108(sp)
              #                    release a6 with temp_61_arithop_91
              #                    store to t_91 in mem offset legal
    sw      s6,40(sp)
              #                    release s6 with t_91
              #                    store to temp_62_ptr2globl_93 in mem offset legal
    sw      s1,100(sp)
              #                    release s1 with temp_62_ptr2globl_93
    j       .while.head_90
              #                    regtab     a0:Freed { symidx: a_85, tracked: true } |     a1:Freed { symidx: i_87, tracked: true } |     a3:Freed { symidx: temp_59_ptr2globl_89, tracked: true } |     a4:Freed { symidx: temp_60_cmp_89, tracked: true } | 
              #                          label while.exit_90: 
.while.exit_90:
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 4800504|s0_main:8 at 4800496|temp_77_ret_of_quick_read:4 at 4800492|i:4 at 4800488|temp_78_ptr2globl:4 at 4800484|temp_79_cmp:1 at 4800483|none:3 at 4800480|temp_80_index_ptr:8 at 4800472|temp_81_ret_of_quick_read:4 at 4800468|none:4 at 4800464|temp_82_index_ptr:8 at 4800456|temp_83_ptr2globl:400020 at 4400436|none:4 at 4400432|temp_84_array_ptr:8 at 4400424|temp_85_array_ele:4 at 4400420|none:4 at 4400416|temp_86_index_ptr:8 at 4400408|temp_87_ptr2globl:400020 at 4000388|none:4 at 4000384|temp_88_array_ptr:8 at 4000376|temp_89_array_ele:4 at 4000372|temp_90_arithop:4 at 4000368|temp_91_ptr2globl:400020 at 3600348|temp_92_ptr2globl:400020 at 3200328|temp_93_ptr2globl:400020 at 2800308|temp_94_ptr2globl:4 at 2800304|temp_95_arithop:4 at 2800300|temp_96_:1 at 2800299|none:3 at 2800296|temp_97_index_ptr:8 at 2800288|temp_98_ptr2globl:400020 at 2400268|none:4 at 2400264|temp_99_array_ptr:8 at 2400256|temp_100_array_ele:4 at 2400252|temp_101_ptr2globl:400020 at 2000232|temp_102_array_ptr:8 at 2000224|temp_103_array_ele:4 at 2000220|temp_104_arithop:4 at 2000216|temp_105_index_ptr:8 at 2000208|temp_106_ptr2globl:400020 at 1600188|none:4 at 1600184|temp_107_array_ptr:8 at 1600176|temp_108_array_ele:4 at 1600172|temp_109_ptr2globl:400020 at 1200152|temp_110_array_ptr:8 at 1200144|temp_111_array_ele:4 at 1200140|temp_112_ptr2globl:400020 at 800120|temp_113_array_ptr:8 at 800112|temp_114_array_ele:4 at 800108|temp_115_arithop:4 at 800104|temp_116_arithop:4 at 800100|temp_117_arithop:4 at 800096|temp_118_ptr2globl:4 at 800092|temp_119_arithop:4 at 800088|temp_120_:1 at 800087|none:3 at 800084|temp_121_ptr2globl:400020 at 400064|temp_122_array_ptr:8 at 400056|temp_123_array_ele:4 at 400052|temp_124_:1 at 400051|none:3 at 400048|temp_125_ptr2globl:400020 at 28|none:4 at 24|temp_126_array_ptr:8 at 16|temp_127_array_ele:4 at 12|temp_128_:1 at 11|none:3 at 8|temp_129_arithop:4 at 4|temp_130_:4 at 0
              #                    occupy a0 with -4800512_0
    li      a0, -4800512
    li      a0, -4800512
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_main_0 in mem offset_illegal
              #                    occupy a1 with 4800504_0
    li      a1, 4800504
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_main_0 in mem offset_illegal
              #                    occupy a2 with 4800496_0
    li      a2, 4800496
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 4800512_0
    li      a3, 4800512
    li      a3, 4800512
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_77_ret_of_quick_read_105 
              #                          alloc i32 i_105 
              #                          alloc i32 temp_78_ptr2globl_108 
              #                          alloc i1 temp_79_cmp_108 
              #                          alloc ptr->i32 temp_80_index_ptr_110 
              #                          alloc i32 temp_81_ret_of_quick_read_110 
              #                          alloc ptr->i32 temp_82_index_ptr_110 
              #                          alloc Array:i32:[Some(100005_0)] temp_83_ptr2globl_110 
              #                          alloc ptr->i32 temp_84_array_ptr_110 
              #                          alloc i32 temp_85_array_ele_110 
              #                          alloc ptr->i32 temp_86_index_ptr_110 
              #                          alloc Array:i32:[Some(100005_0)] temp_87_ptr2globl_110 
              #                          alloc ptr->i32 temp_88_array_ptr_110 
              #                          alloc i32 temp_89_array_ele_110 
              #                          alloc i32 temp_90_arithop_110 
              #                          alloc Array:i32:[Some(100005_0)] temp_91_ptr2globl_105 
              #                          alloc Array:i32:[Some(100005_0)] temp_92_ptr2globl_105 
              #                          alloc Array:i32:[Some(100005_0)] temp_93_ptr2globl_105 
              #                          alloc i32 temp_94_ptr2globl_119 
              #                          alloc i32 temp_95_arithop_119 
              #                          alloc i1 temp_96__2980 
              #                          alloc ptr->i32 temp_97_index_ptr_121 
              #                          alloc Array:i32:[Some(100005_0)] temp_98_ptr2globl_121 
              #                          alloc ptr->i32 temp_99_array_ptr_121 
              #                          alloc i32 temp_100_array_ele_121 
              #                          alloc Array:i32:[Some(100005_0)] temp_101_ptr2globl_121 
              #                          alloc ptr->i32 temp_102_array_ptr_121 
              #                          alloc i32 temp_103_array_ele_121 
              #                          alloc i32 temp_104_arithop_121 
              #                          alloc ptr->i32 temp_105_index_ptr_121 
              #                          alloc Array:i32:[Some(100005_0)] temp_106_ptr2globl_121 
              #                          alloc ptr->i32 temp_107_array_ptr_121 
              #                          alloc i32 temp_108_array_ele_121 
              #                          alloc Array:i32:[Some(100005_0)] temp_109_ptr2globl_121 
              #                          alloc ptr->i32 temp_110_array_ptr_121 
              #                          alloc i32 temp_111_array_ele_121 
              #                          alloc Array:i32:[Some(100005_0)] temp_112_ptr2globl_121 
              #                          alloc ptr->i32 temp_113_array_ptr_121 
              #                          alloc i32 temp_114_array_ele_121 
              #                          alloc i32 temp_115_arithop_121 
              #                          alloc i32 temp_116_arithop_121 
              #                          alloc i32 temp_117_arithop_121 
              #                          alloc i32 temp_118_ptr2globl_126 
              #                          alloc i32 temp_119_arithop_126 
              #                          alloc i1 temp_120__3308 
              #                          alloc Array:i32:[Some(100005_0)] temp_121_ptr2globl_129 
              #                          alloc ptr->i32 temp_122_array_ptr_129 
              #                          alloc i32 temp_123_array_ele_129 
              #                          alloc i1 temp_124__3344 
              #                          alloc Array:i32:[Some(100005_0)] temp_125_ptr2globl_132 
              #                          alloc ptr->i32 temp_126_array_ptr_132 
              #                          alloc i32 temp_127_array_ele_132 
              #                          alloc i1 temp_128__3413 
              #                          alloc i32 temp_129_arithop_128 
              #                          alloc i32 temp_130__105 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_77_ret_of_quick_read_105:i32 
              #                          temp_77_ret_of_quick_read_105 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_77_ret_of_quick_read_105 in mem offset_illegal
              #                    occupy a0 with 4800492_0
    li      a0, 4800492
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_77_ret_of_quick_read_105:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_77_ret_of_quick_read_105
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          i_105 = i32 0_0 
              #                    occupy a2 with i_105
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_109 
    j       .while.head_109
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_quick_read_105, tracked: true } |     a2:Freed { symidx: i_105, tracked: true } | 
              #                          label while.head_109: 
.while.head_109:
              #                          new_var temp_78_ptr2globl_108:i32 
              #                          temp_78_ptr2globl_108 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_78_ptr2globl_108
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_79_cmp_108:i1 
              #                          temp_79_cmp_108 = icmp i32 Ne i_105, temp_78_ptr2globl_108 
              #                    occupy a2 with i_105
              #                    occupy a3 with temp_78_ptr2globl_108
              #                    occupy a4 with temp_79_cmp_108
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          br i1 temp_79_cmp_108, label while.body_109, label while.exit_109 
              #                    occupy a4 with temp_79_cmp_108
              #                    free a4
              #                    occupy a4 with temp_79_cmp_108
    bnez    a4, .while.body_109
              #                    free a4
    j       .while.exit_109
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_quick_read_105, tracked: true } |     a2:Freed { symidx: i_105, tracked: true } |     a3:Freed { symidx: temp_78_ptr2globl_108, tracked: true } |     a4:Freed { symidx: temp_79_cmp_108, tracked: true } | 
              #                          label while.body_109: 
.while.body_109:
              #                          new_var temp_80_index_ptr_110:ptr->i32 
              #                          temp_80_index_ptr_110 = getelementptr a_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy a1 with temp_80_index_ptr_110
    li      a1, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_105
              #                    occupy a6 with _anonymous_of_a_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a1,a1,a6
              #                    free a6
    slli a1,a1,2
              #                    occupy a7 with _anonymous_of_a_0_0
    la      a7, a
    add     a1,a1,a7
              #                    free a7
              #                    free a1
              #                          new_var temp_81_ret_of_quick_read_110:i32 
              #                          temp_81_ret_of_quick_read_110 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_77_ret_of_quick_read_105 in mem offset_illegal
              #                    occupy a0 with 4800492_0
    li      a0, 4800492
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ret_of_quick_read_105
              #                    store to temp_80_index_ptr_110 in mem offset_illegal
              #                    occupy a0 with 4800472_0
    li      a0, 4800472
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_80_index_ptr_110
              #                    store to i_105 in mem offset_illegal
              #                    occupy a1 with 4800488_0
    li      a1, 4800488
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with i_105
              #                    store to temp_78_ptr2globl_108 in mem offset_illegal
              #                    occupy a2 with 4800484_0
    li      a2, 4800484
    add     a2,sp,a2
    sw      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_78_ptr2globl_108
              #                    store to temp_79_cmp_108 in mem offset_illegal
              #                    occupy a3 with 4800483_0
    li      a3, 4800483
    add     a3,sp,a3
    sb      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_79_cmp_108
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_81_ret_of_quick_read_110 in mem offset_illegal
              #                    occupy a0 with 4800468_0
    li      a0, 4800468
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          store temp_81_ret_of_quick_read_110:i32 temp_80_index_ptr_110:ptr->i32 
              #                    occupy a4 with temp_80_index_ptr_110
              #                    load from temp_80_index_ptr_110 in mem
              #                    occupy a4 with temp_80_index_ptr_110
    add     a4,sp,a4
    ld      a4,0(a4)
              #                    free a4
              #                    occupy a0 with temp_81_ret_of_quick_read_110
    sw      a0,0(a4)
              #                    free a0
              #                    free a4
              #                          mu a_0:415 
              #                          a_0 = chi a_0:415 
              #                          new_var temp_82_index_ptr_110:ptr->i32 
              #                          temp_82_index_ptr_110 = getelementptr b_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy a5 with temp_82_index_ptr_110
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with i_105
              #                    load from i_105 in mem

              #                    occupy a7 with i_105
    add     a7,sp,a7
    lw      a7,0(a7)
              #                    free a7
              #                    occupy s1 with _anonymous_of_b_0_0
    mul     s1,a6,a7
              #                    free a6
              #                    free a7
    add     a5,a5,s1
              #                    free s1
    slli a5,a5,2
              #                    occupy s2 with _anonymous_of_b_0_0
    la      s2, b
    add     a5,a5,s2
              #                    free s2
              #                    free a5
              #                          new_var temp_83_ptr2globl_110:Array:i32:[Some(100005_0)] 
              #                          temp_83_ptr2globl_110 = load *a_0:ptr->i32 
              #                    occupy s3 with *a_0
              #                       load label a as ptr to reg
    la      s3, a
              #                    occupy reg s3 with *a_0
              #                    occupy s4 with temp_83_ptr2globl_110
    lw      s4,0(s3)
              #                    free s4
              #                    free s3
              #                          new_var temp_84_array_ptr_110:ptr->i32 
              #                          temp_84_array_ptr_110 = getelementptr temp_83_ptr2globl_110:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s5 with temp_84_array_ptr_110
    li      s5, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with i_105
              #                    occupy s6 with _anonymous_of_temp_83_ptr2globl_110_0
    mul     s6,a6,a7
              #                    free a6
              #                    free a7
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
    add     s5,s5,sp
              #                    occupy s7 with 4400436_0
    li      s7, 4400436
    li      s7, 4400436
    add     s5,s7,s5
              #                    free s7
              #                    free s5
              #                          new_var temp_85_array_ele_110:i32 
              #                          temp_85_array_ele_110 = load temp_84_array_ptr_110:ptr->i32 
              #                    occupy s5 with temp_84_array_ptr_110
              #                    occupy s8 with temp_85_array_ele_110
    lw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          store temp_85_array_ele_110:i32 temp_82_index_ptr_110:ptr->i32 
              #                    occupy a5 with temp_82_index_ptr_110
              #                    occupy s8 with temp_85_array_ele_110
    sw      s8,0(a5)
              #                    free s8
              #                    free a5
              #                          mu b_0:430 
              #                          b_0 = chi b_0:430 
              #                          new_var temp_86_index_ptr_110:ptr->i32 
              #                          temp_86_index_ptr_110 = getelementptr c_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s9 with temp_86_index_ptr_110
    li      s9, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with i_105
              #                    occupy s10 with _anonymous_of_c_0_0
    mul     s10,a6,a7
              #                    free a6
              #                    free a7
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
              #                    occupy s11 with _anonymous_of_c_0_0
    la      s11, c
    add     s9,s9,s11
              #                    free s11
              #                    free s9
              #                          new_var temp_87_ptr2globl_110:Array:i32:[Some(100005_0)] 
              #                          temp_87_ptr2globl_110 = load *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a2 with temp_87_ptr2globl_110
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_88_array_ptr_110:ptr->i32 
              #                          temp_88_array_ptr_110 = getelementptr temp_87_ptr2globl_110:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy a1 with temp_88_array_ptr_110
    li      a1, 0
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy a7 with i_105
              #                    occupy a3 with _anonymous_of_temp_87_ptr2globl_110_0
    mul     a3,a6,a7
              #                    free a6
              #                    free a7
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
    add     a1,a1,sp
              #                    occupy a3 with 4000388_0
    li      a3, 4000388
    li      a3, 4000388
    add     a1,a3,a1
              #                    free a3
              #                    free a1
              #                          new_var temp_89_array_ele_110:i32 
              #                          temp_89_array_ele_110 = load temp_88_array_ptr_110:ptr->i32 
              #                    occupy a1 with temp_88_array_ptr_110
              #                    occupy a3 with temp_89_array_ele_110
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          store temp_89_array_ele_110:i32 temp_86_index_ptr_110:ptr->i32 
              #                    occupy s9 with temp_86_index_ptr_110
              #                    occupy a3 with temp_89_array_ele_110
    sw      a3,0(s9)
              #                    free a3
              #                    free s9
              #                          mu c_0:445 
              #                          c_0 = chi c_0:445 
              #                          new_var temp_90_arithop_110:i32 
              #                          temp_90_arithop_110 = Add i32 i_105, 1_0 
              #                    occupy a7 with i_105
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s1 with temp_90_arithop_110
    add     s1,a7,a6
              #                    free a7
              #                    free a6
              #                    free s1
              #                          i_105 = i32 temp_90_arithop_110 
              #                    occupy s1 with temp_90_arithop_110
              #                    occupy a7 with i_105
    mv      a7, s1
              #                    free s1
              #                    free a7
              #                          jump label: while.head_109 
              #                    store to i_105 in mem offset_illegal
              #                    occupy a6 with 4800488_0
    li      a6, 4800488
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with i_105
              #                    store to temp_90_arithop_110 in mem offset_illegal
              #                    occupy a7 with 4000368_0
    li      a7, 4000368
    add     a7,sp,a7
    sw      s1,0(a7)
              #                    free a7
              #                    release s1 with temp_90_arithop_110
              #                    store to temp_80_index_ptr_110 in mem offset_illegal
              #                    occupy a4 with 4800472_0
    li      a4, 4800472
    add     a4,sp,a4
    sd      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_80_index_ptr_110
              #                    store to temp_86_index_ptr_110 in mem offset_illegal
              #                    occupy a4 with 4400408_0
    li      a4, 4400408
    add     a4,sp,a4
    sd      s9,0(a4)
              #                    free a4
              #                    release s9 with temp_86_index_ptr_110
              #                    store to temp_81_ret_of_quick_read_110 in mem offset_illegal
              #                    occupy a0 with 4800468_0
    li      a0, 4800468
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_81_ret_of_quick_read_110
              #                    store to temp_83_ptr2globl_110 in mem offset_illegal
              #                    found literal reg Some(s7) already exist with 4400436_0
              #                    occupy s7 with 4400436_0
    add     s7,sp,s7
    sw      s4,0(s7)
              #                    free s7
              #                    release s4 with temp_83_ptr2globl_110
              #                    store to temp_88_array_ptr_110 in mem offset_illegal
              #                    occupy a0 with 4000376_0
    li      a0, 4000376
    add     a0,sp,a0
    sd      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_88_array_ptr_110
              #                    store to temp_82_index_ptr_110 in mem offset_illegal
              #                    occupy a1 with 4800456_0
    li      a1, 4800456
    add     a1,sp,a1
    sd      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_82_index_ptr_110
              #                    store to temp_84_array_ptr_110 in mem offset_illegal
              #                    occupy a5 with 4400424_0
    li      a5, 4400424
    add     a5,sp,a5
    sd      s5,0(a5)
              #                    free a5
              #                    release s5 with temp_84_array_ptr_110
              #                    store to temp_89_array_ele_110 in mem offset_illegal
              #                    occupy a3 with 4000372_0
    li      a3, 4000372
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_89_array_ele_110
              #                    store to temp_85_array_ele_110 in mem offset_illegal
              #                    occupy a3 with 4400420_0
    li      a3, 4400420
    add     a3,sp,a3
    sw      s8,0(a3)
              #                    free a3
              #                    release s8 with temp_85_array_ele_110
              #                    store to temp_87_ptr2globl_110 in mem offset_illegal
              #                    occupy a2 with 4000388_0
    li      a2, 4000388
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_87_ptr2globl_110
              #                    occupy a0 with _anonymous_of_temp_77_ret_of_quick_read_105_0
              #                    load from temp_77_ret_of_quick_read_105 in mem

              #                    occupy a2 with temp_77_ret_of_quick_read_105
    li      a2, 4800492
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    store to temp_77_ret_of_quick_read_105 in mem offset_illegal
              #                    occupy a1 with 4800492_0
    li      a1, 4800492
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_77_ret_of_quick_read_105
              #                    occupy a2 with _anonymous_of_i_105_0
              #                    load from i_105 in mem

              #                    occupy a3 with i_105
    li      a3, 4800488
    add     a3,sp,a3
    lw      a2,0(a3)
              #                    free a3
    j       .while.head_109
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_quick_read_105, tracked: true } |     a2:Freed { symidx: i_105, tracked: true } |     a3:Freed { symidx: temp_78_ptr2globl_108, tracked: true } |     a4:Freed { symidx: temp_79_cmp_108, tracked: true } | 
              #                          label while.exit_109: 
.while.exit_109:
              #                          new_var temp_91_ptr2globl_105:Array:i32:[Some(100005_0)] 
              #                          temp_91_ptr2globl_105 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a5 with temp_91_ptr2globl_105
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                           Call void sortA_0(temp_91_ptr2globl_105) 
              #                    saved register dumping to mem
              #                    store to temp_77_ret_of_quick_read_105 in mem offset_illegal
              #                    occupy a0 with 4800492_0
    li      a0, 4800492
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ret_of_quick_read_105
              #                    store to i_105 in mem offset_illegal
              #                    occupy a0 with 4800488_0
    li      a0, 4800488
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with i_105
              #                    store to temp_78_ptr2globl_108 in mem offset_illegal
              #                    occupy a1 with 4800484_0
    li      a1, 4800484
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_78_ptr2globl_108
              #                    store to temp_79_cmp_108 in mem offset_illegal
              #                    occupy a2 with 4800483_0
    li      a2, 4800483
    add     a2,sp,a2
    sb      a4,0(a2)
              #                    free a2
              #                    release a4 with temp_79_cmp_108
              #                    store to temp_91_ptr2globl_105 in mem offset_illegal
              #                    occupy a3 with 3600348_0
    li      a3, 3600348
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_91_ptr2globl_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_91_ptr2globl_105_0
              #                    load from temp_91_ptr2globl_105 in mem
              #                    occupy a4 with temp_91_ptr2globl_105
    li      a4, 3600348
    add     a4,sp,a4
    lw      a0,0(a4)
              #                    free a4
              #                    arg load ended


    call    sortA
              #                          new_var temp_92_ptr2globl_105:Array:i32:[Some(100005_0)] 
              #                          temp_92_ptr2globl_105 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a5 with temp_92_ptr2globl_105
    lw      a5,0(a0)
              #                    free a5
              #                    free a0
              #                           Call void sortB_0(temp_92_ptr2globl_105) 
              #                    saved register dumping to mem
              #                    store to temp_91_ptr2globl_105 in mem offset_illegal
              #                    occupy a0 with 3600348_0
    li      a0, 3600348
    add     a0,sp,a0
    sw      a4,0(a0)
              #                    free a0
              #                    release a4 with temp_91_ptr2globl_105
              #                    store to temp_92_ptr2globl_105 in mem offset_illegal
              #                    occupy a1 with 3200328_0
    li      a1, 3200328
    add     a1,sp,a1
    sw      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_92_ptr2globl_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_92_ptr2globl_105_0
              #                    load from temp_92_ptr2globl_105 in mem
              #                    occupy a2 with temp_92_ptr2globl_105
    li      a2, 3200328
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    arg load ended


    call    sortB
              #                          new_var temp_93_ptr2globl_105:Array:i32:[Some(100005_0)] 
              #                          temp_93_ptr2globl_105 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a3 with temp_93_ptr2globl_105
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                           Call void sortC_0(temp_93_ptr2globl_105) 
              #                    saved register dumping to mem
              #                    store to temp_92_ptr2globl_105 in mem offset_illegal
              #                    occupy a0 with 3200328_0
    li      a0, 3200328
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_92_ptr2globl_105
              #                    store to temp_93_ptr2globl_105 in mem offset_illegal
              #                    occupy a1 with 2800308_0
    li      a1, 2800308
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_93_ptr2globl_105
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_93_ptr2globl_105_0
              #                    load from temp_93_ptr2globl_105 in mem
              #                    occupy a2 with temp_93_ptr2globl_105
    li      a2, 2800308
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    arg load ended


    call    sortC
              #                          i_105 = i32 0_0 
              #                    occupy a0 with i_105
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_120 
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } | 
              #                          label while.head_120: 
.while.head_120:
              #                          new_var temp_94_ptr2globl_119:i32 
              #                          temp_94_ptr2globl_119 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a3 with temp_94_ptr2globl_119
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                          new_var temp_95_arithop_119:i32 
              #                          temp_95_arithop_119 = Sub i32 temp_94_ptr2globl_119, i_105 
              #                    occupy a3 with temp_94_ptr2globl_119
              #                    occupy a0 with i_105
              #                    occupy a4 with temp_95_arithop_119
              #                    regtab:    a0:Occupied { symidx: i_105, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: *n_0, tracked: false } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Occupied { symidx: temp_94_ptr2globl_119, tracked: true, occupy_count: 1 } |     a4:Occupied { symidx: temp_95_arithop_119, tracked: true, occupy_count: 1 } | 


    sub     a4,a3,a0
              #                    free a3
              #                    free a0
              #                    free a4
              #                          new_var temp_96__2980:i1 
              #                          temp_96__2980 = icmp i32 Ne temp_95_arithop_119, 0_0 
              #                    occupy a4 with temp_95_arithop_119
              #                    occupy a5 with 0_0
    li      a5, 0
              #                    occupy a6 with temp_96__2980
    xor     a6,a4,a5
    snez    a6, a6
              #                    free a4
              #                    free a5
              #                    free a6
              #                          br i1 temp_96__2980, label while.body_120, label while.exit_120 
              #                    occupy a6 with temp_96__2980
              #                    free a6
              #                    occupy a6 with temp_96__2980
    bnez    a6, .while.body_120
              #                    free a6
    j       .while.exit_120
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } | 
              #                          label while.body_120: 
.while.body_120:
              #                          new_var temp_97_index_ptr_121:ptr->i32 
              #                          temp_97_index_ptr_121 = getelementptr b_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy a1 with temp_97_index_ptr_121
    li      a1, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a0 with i_105
              #                    occupy a7 with _anonymous_of_b_0_0
    mul     a7,a5,a0
              #                    free a5
              #                    free a0
    add     a1,a1,a7
              #                    free a7
    slli a1,a1,2
              #                    occupy s1 with _anonymous_of_b_0_0
    la      s1, b
    add     a1,a1,s1
              #                    free s1
              #                    free a1
              #                          new_var temp_98_ptr2globl_121:Array:i32:[Some(100005_0)] 
              #                          temp_98_ptr2globl_121 = load *a_0:ptr->i32 
              #                    occupy s2 with *a_0
              #                       load label a as ptr to reg
    la      s2, a
              #                    occupy reg s2 with *a_0
              #                    occupy s3 with temp_98_ptr2globl_121
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_99_array_ptr_121:ptr->i32 
              #                          temp_99_array_ptr_121 = getelementptr temp_98_ptr2globl_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s4 with temp_99_array_ptr_121
    li      s4, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with i_105
              #                    occupy s5 with _anonymous_of_temp_98_ptr2globl_121_0
    mul     s5,a5,a0
              #                    free a5
              #                    free a0
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
    add     s4,s4,sp
              #                    occupy s6 with 2400268_0
    li      s6, 2400268
    li      s6, 2400268
    add     s4,s6,s4
              #                    free s6
              #                    free s4
              #                          new_var temp_100_array_ele_121:i32 
              #                          temp_100_array_ele_121 = load temp_99_array_ptr_121:ptr->i32 
              #                    occupy s4 with temp_99_array_ptr_121
              #                    occupy s7 with temp_100_array_ele_121
    lw      s7,0(s4)
              #                    free s7
              #                    free s4
              #                          new_var temp_101_ptr2globl_121:Array:i32:[Some(100005_0)] 
              #                          temp_101_ptr2globl_121 = load *b_0:ptr->i32 
              #                    occupy s8 with *b_0
              #                       load label b as ptr to reg
    la      s8, b
              #                    occupy reg s8 with *b_0
              #                    occupy s9 with temp_101_ptr2globl_121
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_102_array_ptr_121:ptr->i32 
              #                          temp_102_array_ptr_121 = getelementptr temp_101_ptr2globl_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s10 with temp_102_array_ptr_121
    li      s10, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with i_105
              #                    occupy s11 with _anonymous_of_temp_101_ptr2globl_121_0
    mul     s11,a5,a0
              #                    free a5
              #                    free a0
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a5 with 2000232_0
    li      a5, 2000232
    li      a5, 2000232
    add     s10,a5,s10
              #                    free a5
              #                    free s10
              #                          new_var temp_103_array_ele_121:i32 
              #                          temp_103_array_ele_121 = load temp_102_array_ptr_121:ptr->i32 
              #                    occupy s10 with temp_102_array_ptr_121
              #                    occupy a5 with temp_103_array_ele_121
    lw      a5,0(s10)
              #                    free a5
              #                    free s10
              #                          new_var temp_104_arithop_121:i32 
              #                          temp_104_arithop_121 = Sub i32 temp_103_array_ele_121, temp_100_array_ele_121 
              #                    occupy a5 with temp_103_array_ele_121
              #                    occupy s7 with temp_100_array_ele_121
              #                    occupy a7 with temp_104_arithop_121
              #                    regtab:    a0:Freed { symidx: i_105, tracked: true } |     a1:Freed { symidx: temp_97_index_ptr_121, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Occupied { symidx: temp_103_array_ele_121, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Occupied { symidx: temp_104_arithop_121, tracked: true, occupy_count: 1 } |     s10:Freed { symidx: temp_102_array_ptr_121, tracked: true } |     s11:Freed { symidx: _anonymous_of_temp_101_ptr2globl_121_0, tracked: false } |     s1:Freed { symidx: _anonymous_of_b_0_0, tracked: false } |     s2:Freed { symidx: *a_0, tracked: false } |     s3:Freed { symidx: temp_98_ptr2globl_121, tracked: true } |     s4:Freed { symidx: temp_99_array_ptr_121, tracked: true } |     s5:Freed { symidx: _anonymous_of_temp_98_ptr2globl_121_0, tracked: false } |     s6:Freed { symidx: 2400268_0, tracked: false } |     s7:Occupied { symidx: temp_100_array_ele_121, tracked: true, occupy_count: 1 } |     s8:Freed { symidx: *b_0, tracked: false } |     s9:Freed { symidx: temp_101_ptr2globl_121, tracked: true } | 


    sub     a7,a5,s7
              #                    free a5
              #                    free s7
              #                    free a7
              #                          store temp_104_arithop_121:i32 temp_97_index_ptr_121:ptr->i32 
              #                    occupy a1 with temp_97_index_ptr_121
              #                    occupy a7 with temp_104_arithop_121
    sw      a7,0(a1)
              #                    free a7
              #                    free a1
              #                          mu b_0:503 
              #                          b_0 = chi b_0:503 
              #                          new_var temp_105_index_ptr_121:ptr->i32 
              #                          temp_105_index_ptr_121 = getelementptr c_0:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s1 with temp_105_index_ptr_121
    li      s1, 0
              #                    occupy s2 with 1_0
    li      s2, 1
              #                    occupy a0 with i_105
              #                    occupy s5 with _anonymous_of_c_0_0
    mul     s5,s2,a0
              #                    free s2
              #                    free a0
    add     s1,s1,s5
              #                    free s5
    slli s1,s1,2
              #                    occupy s2 with _anonymous_of_c_0_0
    la      s2, c
    add     s1,s1,s2
              #                    free s2
              #                    free s1
              #                          new_var temp_106_ptr2globl_121:Array:i32:[Some(100005_0)] 
              #                          temp_106_ptr2globl_121 = load *a_0:ptr->i32 
              #                    occupy s2 with *a_0
              #                       load label a as ptr to reg
    la      s2, a
              #                    occupy reg s2 with *a_0
              #                    occupy s5 with temp_106_ptr2globl_121
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          new_var temp_107_array_ptr_121:ptr->i32 
              #                          temp_107_array_ptr_121 = getelementptr temp_106_ptr2globl_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s2 with temp_107_array_ptr_121
    li      s2, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a0 with i_105
              #                    occupy s8 with _anonymous_of_temp_106_ptr2globl_121_0
    mul     s8,s6,a0
              #                    free s6
              #                    free a0
    add     s2,s2,s8
              #                    free s8
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s6 with 1600188_0
    li      s6, 1600188
    li      s6, 1600188
    add     s2,s6,s2
              #                    free s6
              #                    free s2
              #                          new_var temp_108_array_ele_121:i32 
              #                          temp_108_array_ele_121 = load temp_107_array_ptr_121:ptr->i32 
              #                    occupy s2 with temp_107_array_ptr_121
              #                    occupy s6 with temp_108_array_ele_121
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_109_ptr2globl_121:Array:i32:[Some(100005_0)] 
              #                          temp_109_ptr2globl_121 = load *b_0:ptr->i32 
              #                    occupy s8 with *b_0
              #                       load label b as ptr to reg
    la      s8, b
              #                    occupy reg s8 with *b_0
              #                    occupy s11 with temp_109_ptr2globl_121
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          new_var temp_110_array_ptr_121:ptr->i32 
              #                          temp_110_array_ptr_121 = getelementptr temp_109_ptr2globl_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s8 with temp_110_array_ptr_121
    li      s8, 0
              #                    store to i_105 in mem offset_illegal
              #                    occupy a0 with 4800488_0
    li      a0, 4800488
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_105
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_97_index_ptr_121 in mem offset_illegal
              #                    occupy a1 with 2800288_0
    li      a1, 2800288
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_97_index_ptr_121
              #                    occupy a1 with i_105
              #                    load from i_105 in mem

              #                    occupy a1 with i_105
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_93_ptr2globl_105 in mem offset_illegal
              #                    occupy a2 with 2800308_0
    li      a2, 2800308
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_93_ptr2globl_105
              #                    occupy a2 with _anonymous_of_temp_109_ptr2globl_121_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s8,s8,a2
              #                    free a2
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy a0 with 1200152_0
    li      a0, 1200152
    li      a0, 1200152
    add     s8,a0,s8
              #                    free a0
              #                    free s8
              #                          new_var temp_111_array_ele_121:i32 
              #                          temp_111_array_ele_121 = load temp_110_array_ptr_121:ptr->i32 
              #                    occupy s8 with temp_110_array_ptr_121
              #                    occupy a0 with temp_111_array_ele_121
    lw      a0,0(s8)
              #                    free a0
              #                    free s8
              #                          new_var temp_112_ptr2globl_121:Array:i32:[Some(100005_0)] 
              #                          temp_112_ptr2globl_121 = load *c_0:ptr->i32 
              #                    occupy a2 with *c_0
              #                       load label c as ptr to reg
    la      a2, c
              #                    occupy reg a2 with *c_0
              #                    store to temp_111_array_ele_121 in mem offset_illegal
              #                    occupy a0 with 1200140_0
    li      a0, 1200140
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_111_array_ele_121
              #                    occupy a0 with temp_112_ptr2globl_121
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_113_array_ptr_121:ptr->i32 
              #                          temp_113_array_ptr_121 = getelementptr temp_112_ptr2globl_121:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy a2 with temp_113_array_ptr_121
    li      a2, 0
              #                    store to temp_112_ptr2globl_121 in mem offset_illegal
              #                    occupy a0 with 800120_0
    li      a0, 800120
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_112_ptr2globl_121
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with i_105
              #                    store to temp_94_ptr2globl_119 in mem offset_illegal
              #                    occupy a3 with 2800304_0
    li      a3, 2800304
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_94_ptr2globl_119
              #                    occupy a3 with _anonymous_of_temp_112_ptr2globl_121_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
    add     a2,a2,sp
              #                    occupy a0 with 800120_0
    li      a0, 800120
    li      a0, 800120
    add     a2,a0,a2
              #                    free a0
              #                    free a2
              #                          new_var temp_114_array_ele_121:i32 
              #                          temp_114_array_ele_121 = load temp_113_array_ptr_121:ptr->i32 
              #                    occupy a2 with temp_113_array_ptr_121
              #                    occupy a0 with temp_114_array_ele_121
    lw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          new_var temp_115_arithop_121:i32 
              #                          temp_115_arithop_121 = Sub i32 temp_114_array_ele_121, temp_111_array_ele_121 
              #                    occupy a0 with temp_114_array_ele_121
              #                    occupy a3 with temp_111_array_ele_121
              #                    load from temp_111_array_ele_121 in mem

              #                    occupy a3 with temp_111_array_ele_121
    add     a3,sp,a3
    lw      a3,0(a3)
              #                    free a3
              #                    store to i_105 in mem offset_illegal
              #                    occupy a1 with 4800488_0
    li      a1, 4800488
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_105
              #                    occupy a1 with temp_115_arithop_121
              #                    regtab:    a0:Occupied { symidx: temp_114_array_ele_121, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_115_arithop_121, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_113_array_ptr_121, tracked: true } |     a3:Occupied { symidx: temp_111_array_ele_121, tracked: true, occupy_count: 1 } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_103_array_ele_121, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_104_arithop_121, tracked: true } |     s10:Freed { symidx: temp_102_array_ptr_121, tracked: true } |     s11:Freed { symidx: temp_109_ptr2globl_121, tracked: true } |     s1:Freed { symidx: temp_105_index_ptr_121, tracked: true } |     s2:Freed { symidx: temp_107_array_ptr_121, tracked: true } |     s3:Freed { symidx: temp_98_ptr2globl_121, tracked: true } |     s4:Freed { symidx: temp_99_array_ptr_121, tracked: true } |     s5:Freed { symidx: temp_106_ptr2globl_121, tracked: true } |     s6:Freed { symidx: temp_108_array_ele_121, tracked: true } |     s7:Freed { symidx: temp_100_array_ele_121, tracked: true } |     s8:Freed { symidx: temp_110_array_ptr_121, tracked: true } |     s9:Freed { symidx: temp_101_ptr2globl_121, tracked: true } | 


    sub     a1,a0,a3
              #                    free a0
              #                    free a3
              #                    free a1
              #                          new_var temp_116_arithop_121:i32 
              #                          temp_116_arithop_121 = Sub i32 temp_115_arithop_121, temp_108_array_ele_121 
              #                    occupy a1 with temp_115_arithop_121
              #                    occupy s6 with temp_108_array_ele_121
              #                    store to temp_114_array_ele_121 in mem offset_illegal
              #                    occupy a0 with 800108_0
    li      a0, 800108
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_114_array_ele_121
              #                    occupy a0 with temp_116_arithop_121
              #                    regtab:    a0:Occupied { symidx: temp_116_arithop_121, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: temp_115_arithop_121, tracked: true, occupy_count: 1 } |     a2:Freed { symidx: temp_113_array_ptr_121, tracked: true } |     a3:Freed { symidx: temp_111_array_ele_121, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_103_array_ele_121, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_104_arithop_121, tracked: true } |     s10:Freed { symidx: temp_102_array_ptr_121, tracked: true } |     s11:Freed { symidx: temp_109_ptr2globl_121, tracked: true } |     s1:Freed { symidx: temp_105_index_ptr_121, tracked: true } |     s2:Freed { symidx: temp_107_array_ptr_121, tracked: true } |     s3:Freed { symidx: temp_98_ptr2globl_121, tracked: true } |     s4:Freed { symidx: temp_99_array_ptr_121, tracked: true } |     s5:Freed { symidx: temp_106_ptr2globl_121, tracked: true } |     s6:Occupied { symidx: temp_108_array_ele_121, tracked: true, occupy_count: 1 } |     s7:Freed { symidx: temp_100_array_ele_121, tracked: true } |     s8:Freed { symidx: temp_110_array_ptr_121, tracked: true } |     s9:Freed { symidx: temp_101_ptr2globl_121, tracked: true } | 


    sub     a0,a1,s6
              #                    free a1
              #                    free s6
              #                    free a0
              #                          store temp_116_arithop_121:i32 temp_105_index_ptr_121:ptr->i32 
              #                    occupy s1 with temp_105_index_ptr_121
              #                    occupy a0 with temp_116_arithop_121
    sw      a0,0(s1)
              #                    free a0
              #                    free s1
              #                          mu c_0:542 
              #                          c_0 = chi c_0:542 
              #                          new_var temp_117_arithop_121:i32 
              #                          temp_117_arithop_121 = Add i32 i_105, 1_0 
              #                    store to temp_116_arithop_121 in mem offset_illegal
              #                    occupy a0 with 800100_0
    li      a0, 800100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_116_arithop_121
              #                    occupy a0 with i_105
              #                    load from i_105 in mem

              #                    occupy a0 with i_105
    add     a0,sp,a0
    lw      a0,0(a0)
              #                    free a0
              #                    store to temp_115_arithop_121 in mem offset_illegal
              #                    occupy a1 with 800104_0
    li      a1, 800104
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_115_arithop_121
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_113_array_ptr_121 in mem offset_illegal
              #                    occupy a2 with 800112_0
    li      a2, 800112
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_113_array_ptr_121
              #                    occupy a2 with temp_117_arithop_121
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          i_105 = i32 temp_117_arithop_121 
              #                    occupy a2 with temp_117_arithop_121
              #                    occupy a0 with i_105
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_120 
              #                    store to temp_96__2980 in mem offset_illegal
              #                    occupy a6 with 2800299_0
    li      a6, 2800299
    add     a6,sp,a6
    sb      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_96__2980
              #                    store to temp_104_arithop_121 in mem offset_illegal
              #                    occupy a6 with 2000216_0
    li      a6, 2000216
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_104_arithop_121
              #                    store to temp_105_index_ptr_121 in mem offset_illegal
              #                    occupy a7 with 2000208_0
    li      a7, 2000208
    add     a7,sp,a7
    sd      s1,0(a7)
              #                    free a7
              #                    release s1 with temp_105_index_ptr_121
              #                    store to temp_108_array_ele_121 in mem offset_illegal
              #                    occupy s1 with 1600172_0
    li      s1, 1600172
    add     s1,sp,s1
    sw      s6,0(s1)
              #                    free s1
              #                    release s6 with temp_108_array_ele_121
              #                    store to temp_95_arithop_119 in mem offset_illegal
              #                    occupy a4 with 2800300_0
    li      a4, 2800300
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_95_arithop_119
              #                    store to temp_101_ptr2globl_121 in mem offset_illegal
              #                    occupy a4 with 2000232_0
    li      a4, 2000232
    add     a4,sp,a4
    sw      s9,0(a4)
              #                    free a4
              #                    release s9 with temp_101_ptr2globl_121
              #                    store to temp_98_ptr2globl_121 in mem offset_illegal
              #                    occupy s3 with 2400268_0
    li      s3, 2400268
    add     s3,sp,s3
    sw      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_98_ptr2globl_121
              #                    store to temp_99_array_ptr_121 in mem offset_illegal
              #                    occupy s3 with 2400256_0
    li      s3, 2400256
    add     s3,sp,s3
    sd      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_99_array_ptr_121
              #                    store to temp_102_array_ptr_121 in mem offset_illegal
              #                    occupy a1 with 2000224_0
    li      a1, 2000224
    add     a1,sp,a1
    sd      s10,0(a1)
              #                    free a1
              #                    release s10 with temp_102_array_ptr_121
              #                    store to temp_103_array_ele_121 in mem offset_illegal
              #                    occupy a5 with 2000220_0
    li      a5, 2000220
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_103_array_ele_121
              #                    store to temp_107_array_ptr_121 in mem offset_illegal
              #                    occupy a5 with 1600176_0
    li      a5, 1600176
    add     a5,sp,a5
    sd      s2,0(a5)
              #                    free a5
              #                    release s2 with temp_107_array_ptr_121
              #                    store to temp_106_ptr2globl_121 in mem offset_illegal
              #                    occupy s2 with 1600188_0
    li      s2, 1600188
    add     s2,sp,s2
    sw      s5,0(s2)
              #                    free s2
              #                    release s5 with temp_106_ptr2globl_121
              #                    store to temp_111_array_ele_121 in mem offset_illegal
              #                    occupy a3 with 1200140_0
    li      a3, 1200140
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_111_array_ele_121
              #                    store to temp_110_array_ptr_121 in mem offset_illegal
              #                    occupy a3 with 1200144_0
    li      a3, 1200144
    add     a3,sp,a3
    sd      s8,0(a3)
              #                    free a3
              #                    release s8 with temp_110_array_ptr_121
              #                    store to temp_100_array_ele_121 in mem offset_illegal
              #                    occupy s4 with 2400252_0
    li      s4, 2400252
    add     s4,sp,s4
    sw      s7,0(s4)
              #                    free s4
              #                    release s7 with temp_100_array_ele_121
              #                    store to temp_109_ptr2globl_121 in mem offset_illegal
              #                    occupy s5 with 1200152_0
    li      s5, 1200152
    add     s5,sp,s5
    sw      s11,0(s5)
              #                    free s5
              #                    release s11 with temp_109_ptr2globl_121
              #                    store to temp_117_arithop_121 in mem offset_illegal
              #                    occupy a2 with 800096_0
    li      a2, 800096
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_117_arithop_121
              #                    occupy a2 with _anonymous_of_temp_93_ptr2globl_105_0
              #                    load from temp_93_ptr2globl_105 in mem
              #                    occupy a1 with temp_93_ptr2globl_105
    li      a1, 2800308
    add     a1,sp,a1
    lw      a2,0(a1)
              #                    free a1
    j       .while.head_120
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } | 
              #                          label while.exit_120: 
.while.exit_120:
              #                          i_105 = i32 0_0 
              #                    occupy a0 with i_105
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_127 
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } | 
              #                          label while.head_127: 
.while.head_127:
              #                          new_var temp_118_ptr2globl_126:i32 
              #                          temp_118_ptr2globl_126 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a5 with temp_118_ptr2globl_126
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                          new_var temp_119_arithop_126:i32 
              #                          temp_119_arithop_126 = Sub i32 i_105, temp_118_ptr2globl_126 
              #                    occupy a0 with i_105
              #                    occupy a5 with temp_118_ptr2globl_126
              #                    occupy a7 with temp_119_arithop_126
              #                    regtab:    a0:Occupied { symidx: i_105, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: *n_0, tracked: false } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Occupied { symidx: temp_118_ptr2globl_126, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Occupied { symidx: temp_119_arithop_126, tracked: true, occupy_count: 1 } | 


    sub     a7,a0,a5
              #                    free a0
              #                    free a5
              #                    free a7
              #                          new_var temp_120__3308:i1 
              #                          temp_120__3308 = icmp i32 Ne temp_119_arithop_126, 0_0 
              #                    occupy a7 with temp_119_arithop_126
              #                    occupy s1 with 0_0
    li      s1, 0
              #                    occupy s2 with temp_120__3308
    xor     s2,a7,s1
    snez    s2, s2
              #                    free a7
              #                    free s1
              #                    free s2
              #                          br i1 temp_120__3308, label while.body_127, label while.exit_127 
              #                    occupy s2 with temp_120__3308
              #                    free s2
              #                    occupy s2 with temp_120__3308
    bnez    s2, .while.body_127
              #                    free s2
    j       .while.exit_127
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } | 
              #                          label while.body_127: 
.while.body_127:
              #                          new_var temp_121_ptr2globl_129:Array:i32:[Some(100005_0)] 
              #                          temp_121_ptr2globl_129 = load *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy s1 with temp_121_ptr2globl_129
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_122_array_ptr_129:ptr->i32 
              #                          temp_122_array_ptr_129 = getelementptr temp_121_ptr2globl_129:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s3 with temp_122_array_ptr_129
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a0 with i_105
              #                    occupy s5 with _anonymous_of_temp_121_ptr2globl_129_0
    mul     s5,s4,a0
              #                    free s4
              #                    free a0
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s6 with 400064_0
    li      s6, 400064
    li      s6, 400064
    add     s3,s6,s3
              #                    free s6
              #                    free s3
              #                          new_var temp_123_array_ele_129:i32 
              #                          temp_123_array_ele_129 = load temp_122_array_ptr_129:ptr->i32 
              #                    occupy s3 with temp_122_array_ptr_129
              #                    occupy s7 with temp_123_array_ele_129
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          new_var temp_124__3344:i1 
              #                          temp_124__3344 = icmp i32 Ne temp_123_array_ele_129, 0_0 
              #                    occupy s7 with temp_123_array_ele_129
              #                    occupy s8 with 0_0
    li      s8, 0
              #                    occupy s9 with temp_124__3344
    xor     s9,s7,s8
    snez    s9, s9
              #                    free s7
              #                    free s8
              #                    free s9
              #                          br i1 temp_124__3344, label branch_true_130, label branch_false_130 
              #                    occupy s9 with temp_124__3344
              #                    free s9
              #                    occupy s9 with temp_124__3344
    bnez    s9, .branch_true_130
              #                    free s9
    j       .branch_false_130
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label branch_true_130: 
.branch_true_130:
              #                          ret 1_0 
              #                    load from ra_main_0 in mem
              #                    occupy a1 with ra_main_0
    li      a1, 4800504
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_main_0 in mem
              #                    occupy s4 with s0_main_0
    li      s4, 4800496
    add     s4,sp,s4
    ld      s0,0(s4)
              #                    free s4
              #                    store to i_105 in mem offset_illegal
              #                    occupy a0 with 4800488_0
    li      a0, 4800488
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_105
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s5 with 4800512_0
    li      s5, 4800512
    li      s5, 4800512
    add     sp,s5,sp
              #                    free s5
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label branch_false_130: 
.branch_false_130:
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_125_ptr2globl_132:Array:i32:[Some(100005_0)] 
              #                          temp_125_ptr2globl_132 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy s4 with temp_125_ptr2globl_132
    lw      s4,0(a1)
              #                    free s4
              #                    free a1
              #                          new_var temp_126_array_ptr_132:ptr->i32 
              #                          temp_126_array_ptr_132 = getelementptr temp_125_ptr2globl_132:Array:i32:[Some(100005_0)] [Some(i_105)] 
              #                    occupy s5 with temp_126_array_ptr_132
    li      s5, 0
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy a0 with i_105
              #                    occupy s8 with _anonymous_of_temp_125_ptr2globl_132_0
    mul     s8,s6,a0
              #                    free s6
              #                    free a0
    add     s5,s5,s8
              #                    free s8
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,28
              #                    free s5
              #                          new_var temp_127_array_ele_132:i32 
              #                          temp_127_array_ele_132 = load temp_126_array_ptr_132:ptr->i32 
              #                    occupy s5 with temp_126_array_ptr_132
              #                    occupy s10 with temp_127_array_ele_132
    lw      s10,0(s5)
              #                    free s10
              #                    free s5
              #                          new_var temp_128__3413:i1 
              #                          temp_128__3413 = icmp i32 Ne temp_127_array_ele_132, 0_0 
              #                    occupy s10 with temp_127_array_ele_132
              #                    occupy s11 with 0_0
    li      s11, 0
              #                    occupy a1 with temp_128__3413
    xor     a1,s10,s11
    snez    a1, a1
              #                    free s10
              #                    free s11
              #                    free a1
              #                          br i1 temp_128__3413, label branch_true_133, label branch_false_133 
              #                    occupy a1 with temp_128__3413
              #                    free a1
              #                    occupy a1 with temp_128__3413
    bnez    a1, .branch_true_133
              #                    free a1
    j       .branch_false_133
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a1:Freed { symidx: temp_128__3413, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s10:Freed { symidx: temp_127_array_ele_132, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s4:Freed { symidx: temp_125_ptr2globl_132, tracked: true } |     s5:Freed { symidx: temp_126_array_ptr_132, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label branch_true_133: 
.branch_true_133:
              #                          ret 2_0 
              #                    load from ra_main_0 in mem
              #                    occupy s6 with ra_main_0
    li      s6, 4800504
    add     s6,sp,s6
    ld      ra,0(s6)
              #                    free s6
              #                    load from s0_main_0 in mem
              #                    occupy s8 with s0_main_0
    li      s8, 4800496
    add     s8,sp,s8
    ld      s0,0(s8)
              #                    free s8
              #                    store to i_105 in mem offset_illegal
              #                    occupy a0 with 4800488_0
    li      a0, 4800488
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_105
              #                    occupy a0 with 2_0
    li      a0, 2
              #                    occupy s11 with 4800512_0
    li      s11, 4800512
    li      s11, 4800512
    add     sp,s11,sp
              #                    free s11
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a1:Freed { symidx: temp_128__3413, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s10:Freed { symidx: temp_127_array_ele_132, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s4:Freed { symidx: temp_125_ptr2globl_132, tracked: true } |     s5:Freed { symidx: temp_126_array_ptr_132, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label branch_false_133: 
.branch_false_133:
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a1:Freed { symidx: temp_128__3413, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s10:Freed { symidx: temp_127_array_ele_132, tracked: true } |     s1:Freed { symidx: temp_121_ptr2globl_129, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Freed { symidx: temp_122_array_ptr_129, tracked: true } |     s4:Freed { symidx: temp_125_ptr2globl_132, tracked: true } |     s5:Freed { symidx: temp_126_array_ptr_132, tracked: true } |     s7:Freed { symidx: temp_123_array_ele_129, tracked: true } |     s9:Freed { symidx: temp_124__3344, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_129_arithop_128:i32 
              #                          temp_129_arithop_128 = Add i32 i_105, 1_0 
              #                    occupy a0 with i_105
              #                    occupy s6 with 1_0
    li      s6, 1
              #                    occupy s8 with temp_129_arithop_128
    add     s8,a0,s6
              #                    free a0
              #                    free s6
              #                    free s8
              #                          i_105 = i32 temp_129_arithop_128 
              #                    occupy s8 with temp_129_arithop_128
              #                    occupy a0 with i_105
    mv      a0, s8
              #                    free s8
              #                    free a0
              #                          jump label: while.head_127 
              #                    store to temp_119_arithop_126 in mem offset_illegal
              #                    occupy a7 with 800088_0
    li      a7, 800088
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_119_arithop_126
              #                    store to temp_121_ptr2globl_129 in mem offset_illegal
              #                    occupy a7 with 400064_0
    li      a7, 400064
    add     a7,sp,a7
    sw      s1,0(a7)
              #                    free a7
              #                    release s1 with temp_121_ptr2globl_129
              #                    store to temp_124__3344 in mem offset_illegal
              #                    occupy s1 with 400051_0
    li      s1, 400051
    add     s1,sp,s1
    sb      s9,0(s1)
              #                    free s1
              #                    release s9 with temp_124__3344
              #                    store to temp_122_array_ptr_129 in mem offset_illegal
              #                    occupy s3 with 400056_0
    li      s3, 400056
    add     s3,sp,s3
    sd      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_122_array_ptr_129
              #                    store to temp_125_ptr2globl_132 in mem offset legal
    sw      s4,28(sp)
              #                    release s4 with temp_125_ptr2globl_132
              #                    store to temp_128__3413 in mem offset legal
    sb      a1,11(sp)
              #                    release a1 with temp_128__3413
              #                    store to temp_127_array_ele_132 in mem offset legal
    sw      s10,12(sp)
              #                    release s10 with temp_127_array_ele_132
              #                    store to temp_118_ptr2globl_126 in mem offset_illegal
              #                    occupy a1 with 800092_0
    li      a1, 800092
    add     a1,sp,a1
    sw      a5,0(a1)
              #                    free a1
              #                    release a5 with temp_118_ptr2globl_126
              #                    store to temp_120__3308 in mem offset_illegal
              #                    occupy a5 with 800087_0
    li      a5, 800087
    add     a5,sp,a5
    sb      s2,0(a5)
              #                    free a5
              #                    release s2 with temp_120__3308
              #                    store to temp_126_array_ptr_132 in mem offset legal
    sd      s5,16(sp)
              #                    release s5 with temp_126_array_ptr_132
              #                    store to temp_129_arithop_128 in mem offset legal
    sw      s8,4(sp)
              #                    release s8 with temp_129_arithop_128
              #                    store to temp_123_array_ele_129 in mem offset_illegal
              #                    occupy s2 with 400052_0
    li      s2, 400052
    add     s2,sp,s2
    sw      s7,0(s2)
              #                    free s2
              #                    release s7 with temp_123_array_ele_129
    j       .while.head_127
              #                    regtab     a0:Freed { symidx: i_105, tracked: true } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } | 
              #                          label while.exit_127: 
.while.exit_127:
              #                          new_var temp_130__105:i32 
              #                          temp_130__105 = Sub i32 0_0, 123_0 
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s1 with 123_0
    li      s1, 123
              #                    occupy s3 with temp_130__105
              #                    regtab:    a0:Freed { symidx: i_105, tracked: true } |     a1:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s1:Occupied { symidx: 123_0, tracked: false, occupy_count: 1 } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s3:Occupied { symidx: temp_130__105, tracked: true, occupy_count: 1 } | 


    sub     s3,a1,s1
              #                    free a1
              #                    free s1
              #                    free s3
              #                          ret temp_130__105 
              #                    load from ra_main_0 in mem
              #                    occupy s4 with ra_main_0
    li      s4, 4800504
    add     s4,sp,s4
    ld      ra,0(s4)
              #                    free s4
              #                    load from s0_main_0 in mem
              #                    occupy s5 with s0_main_0
    li      s5, 4800496
    add     s5,sp,s5
    ld      s0,0(s5)
              #                    free s5
              #                    store to temp_130__105 in mem offset legal
    sw      s3,0(sp)
              #                    release s3 with temp_130__105
              #                    store to i_105 in mem offset_illegal
              #                    occupy a0 with 4800488_0
    li      a0, 4800488
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_105
              #                    occupy a0 with temp_130__105
              #                    load from temp_130__105 in mem


    lw      a0,0(sp)
              #                    occupy s3 with 4800512_0
    li      s3, 4800512
    li      s3, 4800512
    add     sp,s3,sp
              #                    free s3
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_93_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_94_ptr2globl_119, tracked: true } |     a4:Freed { symidx: temp_95_arithop_119, tracked: true } |     a5:Freed { symidx: temp_118_ptr2globl_126, tracked: true } |     a6:Freed { symidx: temp_96__2980, tracked: true } |     a7:Freed { symidx: temp_119_arithop_126, tracked: true } |     s2:Freed { symidx: temp_120__3308, tracked: true } |     s4:Freed { symidx: ra_main_0, tracked: true } |     s5:Freed { symidx: s0_main_0, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl c
              #                          global Array:i32:[Some(100005_0)] c_0 
    .type c,@object
c:
    .zero 400020
    .align 4
    .globl b
              #                          global Array:i32:[Some(100005_0)] b_0 
    .type b,@object
b:
    .zero 400020
    .align 4
    .globl a
              #                          global Array:i32:[Some(100005_0)] a_0 
    .type a,@object
a:
    .zero 400020
    .align 4
    .globl x
              #                          global Array:i32:[Some(100005_0)] x_0 
    .type x,@object
x:
    .zero 400020
    .align 4
    .globl cnt
              #                          global Array:i32:[Some(400020_0)] cnt_0 
    .type cnt,@object
cnt:
    .zero 1600080
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 100005
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
