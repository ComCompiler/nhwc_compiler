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
              #                          label L11_0: 
.L11_0:
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
              #                          label L12_0: 
.L12_0:
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
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
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
              #                    occupy s1 with _anonymous_of_temp_3_logic_25_0
              #                    load from temp_3_logic_25 in mem
    lb      s1,37(sp)
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
              #                    occupy a7 with _anonymous_of_temp_2_cmp_25_0
              #                    load from temp_2_cmp_25 in mem
    lb      a7,38(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_25_0
              #                    load from temp_1_cmp_25 in mem
    lb      a5,39(sp)
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
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
              #                          label L13_0: 
.L13_0:
              #                    regtab     a1:Freed { symidx: ch_22, tracked: true } |     a3:Freed { symidx: f_22, tracked: true } |     a5:Freed { symidx: temp_1_cmp_25, tracked: true } |     a6:Freed { symidx: temp_6_cmp_32, tracked: true } |     a7:Freed { symidx: temp_2_cmp_25, tracked: true } |     s1:Freed { symidx: temp_3_logic_25, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_32, tracked: true } |     s4:Freed { symidx: temp_8_logic_32, tracked: true } | 
              #                    regtab 
              #                          Define add_edge_0 [from_41, To_41] -> add_edge_ret_0 
    .globl add_edge
    .type add_edge,@function
add_edge:
              #                    mem layout:|ra_add_edge:8 at 8200|s0_add_edge:8 at 8192|from:4 at 8188|To:4 at 8184|temp_15_ptr2globl:4 at 8180|none:4 at 8176|temp_16_index_ptr:8 at 8168|temp_17_ptr2globl:4 at 8164|none:4 at 8160|temp_18_index_ptr:8 at 8152|temp_19_ptr2globl:4020 at 4132|none:4 at 4128|temp_20_array_ptr:8 at 4120|temp_21_array_ele:4 at 4116|none:4 at 4112|temp_22_index_ptr:8 at 4104|temp_23_ptr2globl:4 at 4100|temp_24_ptr2globl:4 at 4096|temp_25_arithop:4 at 4092|temp_26_ptr2globl:4 at 4088|temp_27_index_ptr:8 at 4080|temp_28_ptr2globl:4 at 4076|none:4 at 4072|temp_29_index_ptr:8 at 4064|temp_30_ptr2globl:4020 at 44|none:4 at 40|temp_31_array_ptr:8 at 32|temp_32_array_ele:4 at 28|none:4 at 24|temp_33_index_ptr:8 at 16|temp_34_ptr2globl:4 at 12|temp_35_ptr2globl:4 at 8|temp_36_arithop:4 at 4|none:4 at 0
              #                    occupy a2 with -8208_0
    li      a2, -8208
    li      a2, -8208
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_add_edge_0 in mem offset_illegal
              #                    occupy a3 with 8200_0
    li      a3, 8200
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_add_edge_0 in mem offset_illegal
              #                    occupy a4 with 8192_0
    li      a4, 8192
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 8208_0
    li      a5, 8208
    li      a5, 8208
    add     s0,a5,sp
              #                    free a5
              #                          alloc i32 temp_15_ptr2globl_43 
              #                          alloc ptr->i32 temp_16_index_ptr_43 
              #                          alloc i32 temp_17_ptr2globl_43 
              #                          alloc ptr->i32 temp_18_index_ptr_43 
              #                          alloc Array:i32:[Some(1005_0)] temp_19_ptr2globl_43 
              #                          alloc ptr->i32 temp_20_array_ptr_43 
              #                          alloc i32 temp_21_array_ele_43 
              #                          alloc ptr->i32 temp_22_index_ptr_43 
              #                          alloc i32 temp_23_ptr2globl_43 
              #                          alloc i32 temp_24_ptr2globl_43 
              #                          alloc i32 temp_25_arithop_43 
              #                          alloc i32 temp_26_ptr2globl_43 
              #                          alloc ptr->i32 temp_27_index_ptr_43 
              #                          alloc i32 temp_28_ptr2globl_43 
              #                          alloc ptr->i32 temp_29_index_ptr_43 
              #                          alloc Array:i32:[Some(1005_0)] temp_30_ptr2globl_43 
              #                          alloc ptr->i32 temp_31_array_ptr_43 
              #                          alloc i32 temp_32_array_ele_43 
              #                          alloc ptr->i32 temp_33_index_ptr_43 
              #                          alloc i32 temp_34_ptr2globl_43 
              #                          alloc i32 temp_35_ptr2globl_43 
              #                          alloc i32 temp_36_arithop_43 
              #                    regtab     a0:Freed { symidx: from_41, tracked: true } |     a1:Freed { symidx: To_41, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_15_ptr2globl_43:i32 
              #                          temp_15_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a3 with temp_15_ptr2globl_43
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_16_index_ptr_43:ptr->i32 
              #                          temp_16_index_ptr_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_15_ptr2globl_43)] 
              #                    occupy a4 with temp_16_index_ptr_43
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_15_ptr2globl_43
              #                    occupy a6 with _anonymous_of_to_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_to_0_0
    la      a7, to
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store To_41:i32 temp_16_index_ptr_43:ptr->i32 
              #                    occupy a4 with temp_16_index_ptr_43
              #                    occupy a1 with To_41
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu to_0:122 
              #                          to_0 = chi to_0:122 
              #                          new_var temp_17_ptr2globl_43:i32 
              #                          temp_17_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy s1 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s1, cnt
              #                    occupy reg s1 with *cnt_0
              #                    occupy s2 with temp_17_ptr2globl_43
    lw      s2,0(s1)
              #                    free s2
              #                    free s1
              #                          new_var temp_18_index_ptr_43:ptr->i32 
              #                          temp_18_index_ptr_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_17_ptr2globl_43)] 
              #                    occupy s3 with temp_18_index_ptr_43
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_17_ptr2globl_43
              #                    occupy s4 with _anonymous_of_next_0_0
    mul     s4,a5,s2
              #                    free a5
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with _anonymous_of_next_0_0
    la      s5, next
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_19_ptr2globl_43:Array:i32:[Some(1005_0)] 
              #                          temp_19_ptr2globl_43 = load *head_0:ptr->i32 
              #                    occupy s6 with *head_0
              #                       load label head as ptr to reg
    la      s6, head
              #                    occupy reg s6 with *head_0
              #                    occupy s7 with temp_19_ptr2globl_43
    lw      s7,0(s6)
              #                    free s7
              #                    free s6
              #                          new_var temp_20_array_ptr_43:ptr->i32 
              #                          temp_20_array_ptr_43 = getelementptr temp_19_ptr2globl_43:Array:i32:[Some(1005_0)] [Some(from_41)] 
              #                    occupy s8 with temp_20_array_ptr_43
    li      s8, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
              #                    occupy s9 with _anonymous_of_temp_19_ptr2globl_43_0
    mul     s9,a5,a0
              #                    free a5
              #                    free a0
    add     s8,s8,s9
              #                    free s9
    slli s8,s8,2
    add     s8,s8,sp
              #                    occupy s10 with 4132_0
    li      s10, 4132
    li      s10, 4132
    add     s8,s10,s8
              #                    free s10
              #                    free s8
              #                          new_var temp_21_array_ele_43:i32 
              #                          temp_21_array_ele_43 = load temp_20_array_ptr_43:ptr->i32 
              #                    occupy s8 with temp_20_array_ptr_43
              #                    occupy s11 with temp_21_array_ele_43
    lw      s11,0(s8)
              #                    free s11
              #                    free s8
              #                          store temp_21_array_ele_43:i32 temp_18_index_ptr_43:ptr->i32 
              #                    occupy s3 with temp_18_index_ptr_43
              #                    occupy s11 with temp_21_array_ele_43
    sw      s11,0(s3)
              #                    free s11
              #                    free s3
              #                          mu next_0:140 
              #                          next_0 = chi next_0:140 
              #                          new_var temp_22_index_ptr_43:ptr->i32 
              #                          temp_22_index_ptr_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(from_41)] 
              #                    occupy a2 with temp_22_index_ptr_43
    li      a2, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
              #                    occupy a6 with _anonymous_of_head_0_0
    mul     a6,a5,a0
              #                    free a5
              #                    free a0
    add     a2,a2,a6
              #                    free a6
    slli a2,a2,2
              #                    occupy a5 with _anonymous_of_head_0_0
    la      a5, head
    add     a2,a2,a5
              #                    free a5
              #                    free a2
              #                          new_var temp_23_ptr2globl_43:i32 
              #                          temp_23_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a5 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a5, cnt
              #                    occupy reg a5 with *cnt_0
              #                    occupy a6 with temp_23_ptr2globl_43
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          store temp_23_ptr2globl_43:i32 temp_22_index_ptr_43:ptr->i32 
              #                    occupy a2 with temp_22_index_ptr_43
              #                    occupy a6 with temp_23_ptr2globl_43
    sw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          mu head_0:149 
              #                          head_0 = chi head_0:149 
              #                          new_var temp_24_ptr2globl_43:i32 
              #                          temp_24_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a5 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a5, cnt
              #                    occupy reg a5 with *cnt_0
              #                    occupy a7 with temp_24_ptr2globl_43
    lw      a7,0(a5)
              #                    free a7
              #                    free a5
              #                          new_var temp_25_arithop_43:i32 
              #                          temp_25_arithop_43 = Add i32 temp_24_ptr2globl_43, 1_0 
              #                    occupy a7 with temp_24_ptr2globl_43
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy s1 with temp_25_arithop_43
    add     s1,a7,a5
              #                    free a7
              #                    free a5
              #                    free s1
              #                          store temp_25_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a5 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a5, cnt
              #                    occupy reg a5 with *cnt_0
              #                    occupy s1 with temp_25_arithop_43
    sw      s1,0(a5)
              #                    free s1
              #                    free a5
              #                          new_var temp_26_ptr2globl_43:i32 
              #                          temp_26_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a5 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a5, cnt
              #                    occupy reg a5 with *cnt_0
              #                    occupy s4 with temp_26_ptr2globl_43
    lw      s4,0(a5)
              #                    free s4
              #                    free a5
              #                          new_var temp_27_index_ptr_43:ptr->i32 
              #                          temp_27_index_ptr_43 = getelementptr to_0:Array:i32:[Some(5005_0)] [Some(temp_26_ptr2globl_43)] 
              #                    occupy a5 with temp_27_index_ptr_43
    li      a5, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s4 with temp_26_ptr2globl_43
              #                    occupy s6 with _anonymous_of_to_0_0
    mul     s6,s5,s4
              #                    free s5
              #                    free s4
    add     a5,a5,s6
              #                    free s6
    slli a5,a5,2
              #                    occupy s5 with _anonymous_of_to_0_0
    la      s5, to
    add     a5,a5,s5
              #                    free s5
              #                    free a5
              #                          store from_41:i32 temp_27_index_ptr_43:ptr->i32 
              #                    occupy a5 with temp_27_index_ptr_43
              #                    occupy a0 with from_41
    sw      a0,0(a5)
              #                    free a0
              #                    free a5
              #                          mu to_0:165 
              #                          to_0 = chi to_0:165 
              #                          new_var temp_28_ptr2globl_43:i32 
              #                          temp_28_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy s5 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s5, cnt
              #                    occupy reg s5 with *cnt_0
              #                    occupy s6 with temp_28_ptr2globl_43
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_29_index_ptr_43:ptr->i32 
              #                          temp_29_index_ptr_43 = getelementptr next_0:Array:i32:[Some(5005_0)] [Some(temp_28_ptr2globl_43)] 
              #                    occupy s5 with temp_29_index_ptr_43
    li      s5, 0
              #                    occupy s9 with 1_0
    li      s9, 1
              #                    occupy s6 with temp_28_ptr2globl_43
              #                    occupy s10 with _anonymous_of_next_0_0
    mul     s10,s9,s6
              #                    free s9
              #                    free s6
    add     s5,s5,s10
              #                    free s10
    slli s5,s5,2
              #                    occupy s9 with _anonymous_of_next_0_0
    la      s9, next
    add     s5,s5,s9
              #                    free s9
              #                    free s5
              #                          new_var temp_30_ptr2globl_43:Array:i32:[Some(1005_0)] 
              #                          temp_30_ptr2globl_43 = load *head_0:ptr->i32 
              #                    occupy s9 with *head_0
              #                       load label head as ptr to reg
    la      s9, head
              #                    occupy reg s9 with *head_0
              #                    occupy s10 with temp_30_ptr2globl_43
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_31_array_ptr_43:ptr->i32 
              #                          temp_31_array_ptr_43 = getelementptr temp_30_ptr2globl_43:Array:i32:[Some(1005_0)] [Some(To_41)] 
              #                    occupy s9 with temp_31_array_ptr_43
    li      s9, 0
              #                    store to from_41 in mem offset_illegal
              #                    occupy a0 with 8188_0
    li      a0, 8188
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with from_41
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with To_41
              #                    store to temp_22_index_ptr_43 in mem offset_illegal
              #                    occupy a2 with 4104_0
    li      a2, 4104
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_22_index_ptr_43
              #                    occupy a2 with _anonymous_of_temp_30_ptr2globl_43_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s9,s9,a2
              #                    free a2
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,44
              #                    free s9
              #                          new_var temp_32_array_ele_43:i32 
              #                          temp_32_array_ele_43 = load temp_31_array_ptr_43:ptr->i32 
              #                    occupy s9 with temp_31_array_ptr_43
              #                    occupy a0 with temp_32_array_ele_43
    lw      a0,0(s9)
              #                    free a0
              #                    free s9
              #                          store temp_32_array_ele_43:i32 temp_29_index_ptr_43:ptr->i32 
              #                    occupy s5 with temp_29_index_ptr_43
              #                    occupy a0 with temp_32_array_ele_43
    sw      a0,0(s5)
              #                    free a0
              #                    free s5
              #                          mu next_0:183 
              #                          next_0 = chi next_0:183 
              #                          new_var temp_33_index_ptr_43:ptr->i32 
              #                          temp_33_index_ptr_43 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(To_41)] 
              #                    occupy a2 with temp_33_index_ptr_43
    li      a2, 0
              #                    store to temp_32_array_ele_43 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_32_array_ele_43
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with To_41
              #                    store to temp_15_ptr2globl_43 in mem offset_illegal
              #                    occupy a3 with 8180_0
    li      a3, 8180
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_15_ptr2globl_43
              #                    occupy a3 with _anonymous_of_head_0_0
    mul     a3,a0,a1
              #                    free a0
              #                    free a1
    add     a2,a2,a3
              #                    free a3
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_head_0_0
    la      a0, head
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          new_var temp_34_ptr2globl_43:i32 
              #                          temp_34_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a3 with temp_34_ptr2globl_43
    lw      a3,0(a0)
              #                    free a3
              #                    free a0
              #                          store temp_34_ptr2globl_43:i32 temp_33_index_ptr_43:ptr->i32 
              #                    occupy a2 with temp_33_index_ptr_43
              #                    occupy a3 with temp_34_ptr2globl_43
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          mu head_0:192 
              #                          head_0 = chi head_0:192 
              #                          new_var temp_35_ptr2globl_43:i32 
              #                          temp_35_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    store to To_41 in mem offset_illegal
              #                    occupy a1 with 8184_0
    li      a1, 8184
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with To_41
              #                    occupy a1 with temp_35_ptr2globl_43
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_36_arithop_43:i32 
              #                          temp_36_arithop_43 = Add i32 temp_35_ptr2globl_43, 1_0 
              #                    occupy a1 with temp_35_ptr2globl_43
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_33_index_ptr_43 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_33_index_ptr_43
              #                    occupy a2 with temp_36_arithop_43
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          store temp_36_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a2 with temp_36_arithop_43
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                    regtab     a1:Freed { symidx: temp_35_ptr2globl_43, tracked: true } |     a2:Freed { symidx: temp_36_arithop_43, tracked: true } |     a3:Freed { symidx: temp_34_ptr2globl_43, tracked: true } |     a4:Freed { symidx: temp_16_index_ptr_43, tracked: true } |     a5:Freed { symidx: temp_27_index_ptr_43, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_43, tracked: true } |     a7:Freed { symidx: temp_24_ptr2globl_43, tracked: true } |     s10:Freed { symidx: temp_30_ptr2globl_43, tracked: true } |     s11:Freed { symidx: temp_21_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_25_arithop_43, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_43, tracked: true } |     s3:Freed { symidx: temp_18_index_ptr_43, tracked: true } |     s4:Freed { symidx: temp_26_ptr2globl_43, tracked: true } |     s5:Freed { symidx: temp_29_index_ptr_43, tracked: true } |     s6:Freed { symidx: temp_28_ptr2globl_43, tracked: true } |     s7:Freed { symidx: temp_19_ptr2globl_43, tracked: true } |     s8:Freed { symidx: temp_20_array_ptr_43, tracked: true } |     s9:Freed { symidx: temp_31_array_ptr_43, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 32|s0_init:8 at 24|i:4 at 20|temp_37_cmp:1 at 19|none:3 at 16|temp_38_index_ptr:8 at 8|temp_39_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_init_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 i_53 
              #                          alloc i1 temp_37_cmp_55 
              #                          alloc ptr->i32 temp_38_index_ptr_57 
              #                          alloc i32 temp_39_arithop_57 
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          i_53 = i32 0_0 
              #                    occupy a0 with i_53
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_56 
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } | 
              #                          label while.head_56: 
.while.head_56:
              #                          new_var temp_37_cmp_55:i1 
              #                          temp_37_cmp_55 = icmp i32 Slt i_53, 1005_0 
              #                    occupy a0 with i_53
              #                    occupy a1 with 1005_0
    li      a1, 1005
              #                    occupy a2 with temp_37_cmp_55
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_37_cmp_55, label while.body_56, label while.exit_56 
              #                    occupy a2 with temp_37_cmp_55
              #                    free a2
              #                    occupy a2 with temp_37_cmp_55
    bnez    a2, .while.body_56
              #                    free a2
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_37_cmp_55, tracked: true } | 
              #                          label while.body_56: 
.while.body_56:
              #                          new_var temp_38_index_ptr_57:ptr->i32 
              #                          temp_38_index_ptr_57 = getelementptr head_0:Array:i32:[Some(1005_0)] [Some(i_53)] 
              #                    occupy a1 with temp_38_index_ptr_57
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with i_53
              #                    occupy a4 with _anonymous_of_head_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with _anonymous_of_head_0_0
    la      a5, head
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          store -1_0:i32 temp_38_index_ptr_57:ptr->i32 
              #                    occupy a1 with temp_38_index_ptr_57
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          mu head_0:215 
              #                          head_0 = chi head_0:215 
              #                          new_var temp_39_arithop_57:i32 
              #                          temp_39_arithop_57 = Add i32 i_53, 1_0 
              #                    occupy a0 with i_53
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_39_arithop_57
    add     a7,a0,a3
              #                    free a0
              #                    free a3
              #                    free a7
              #                          i_53 = i32 temp_39_arithop_57 
              #                    occupy a7 with temp_39_arithop_57
              #                    occupy a0 with i_53
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_56 
              #                    store to temp_39_arithop_57 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_39_arithop_57
              #                    store to temp_38_index_ptr_57 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_38_index_ptr_57
              #                    store to temp_37_cmp_55 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_37_cmp_55
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_37_cmp_55, tracked: true } | 
              #                          label while.exit_56: 
.while.exit_56:
              #                    regtab 
              #                          Define inqueue_0 [x_60] -> inqueue_ret_0 
    .globl inqueue
    .type inqueue,@function
inqueue:
              #                    mem layout:|ra_inqueue:8 at 48|s0_inqueue:8 at 40|x:4 at 36|none:4 at 32|temp_40_index_ptr:8 at 24|temp_41_ptr2globl:4 at 20|temp_42_arithop:4 at 16|temp_43_ptr2globl:4 at 12|none:4 at 8|temp_44_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_inqueue_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_inqueue_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc ptr->i32 temp_40_index_ptr_62 
              #                          alloc i32 temp_41_ptr2globl_62 
              #                          alloc i32 temp_42_arithop_62 
              #                          alloc i32 temp_43_ptr2globl_62 
              #                          alloc ptr->i32 temp_44_index_ptr_62 
              #                    regtab     a0:Freed { symidx: x_60, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_40_index_ptr_62:ptr->i32 
              #                          temp_40_index_ptr_62 = getelementptr inq_0:Array:i32:[Some(1005_0)] [Some(x_60)] 
              #                    occupy a1 with temp_40_index_ptr_62
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a0 with x_60
              #                    occupy a3 with _anonymous_of_inq_0_0
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with _anonymous_of_inq_0_0
    la      a4, inq
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          store 1_0:i32 temp_40_index_ptr_62:ptr->i32 
              #                    occupy a1 with temp_40_index_ptr_62
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu inq_0:225 
              #                          inq_0 = chi inq_0:225 
              #                          new_var temp_41_ptr2globl_62:i32 
              #                          temp_41_ptr2globl_62 = load *tail_0:ptr->i32 
              #                    occupy a5 with *tail_0
              #                       load label tail as ptr to reg
    la      a5, tail
              #                    occupy reg a5 with *tail_0
              #                    occupy a6 with temp_41_ptr2globl_62
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_42_arithop_62:i32 
              #                          temp_42_arithop_62 = Add i32 temp_41_ptr2globl_62, 1_0 
              #                    occupy a6 with temp_41_ptr2globl_62
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_42_arithop_62
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_42_arithop_62:i32 *tail_0:ptr->i32 
              #                    occupy s1 with *tail_0
              #                       load label tail as ptr to reg
    la      s1, tail
              #                    occupy reg s1 with *tail_0
              #                    occupy a7 with temp_42_arithop_62
    sw      a7,0(s1)
              #                    free a7
              #                    free s1
              #                          new_var temp_43_ptr2globl_62:i32 
              #                          temp_43_ptr2globl_62 = load *tail_0:ptr->i32 
              #                    occupy s2 with *tail_0
              #                       load label tail as ptr to reg
    la      s2, tail
              #                    occupy reg s2 with *tail_0
              #                    occupy s3 with temp_43_ptr2globl_62
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_44_index_ptr_62:ptr->i32 
              #                          temp_44_index_ptr_62 = getelementptr que_0:Array:i32:[Some(1005_0)] [Some(temp_43_ptr2globl_62)] 
              #                    occupy s4 with temp_44_index_ptr_62
    li      s4, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s3 with temp_43_ptr2globl_62
              #                    occupy s5 with _anonymous_of_que_0_0
    mul     s5,a2,s3
              #                    free a2
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with _anonymous_of_que_0_0
    la      s6, que
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          store x_60:i32 temp_44_index_ptr_62:ptr->i32 
              #                    occupy s4 with temp_44_index_ptr_62
              #                    occupy a0 with x_60
    sw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          mu que_0:241 
              #                          que_0 = chi que_0:241 
              #                    regtab     a0:Freed { symidx: x_60, tracked: true } |     a1:Freed { symidx: temp_40_index_ptr_62, tracked: true } |     a6:Freed { symidx: temp_41_ptr2globl_62, tracked: true } |     a7:Freed { symidx: temp_42_arithop_62, tracked: true } |     s3:Freed { symidx: temp_43_ptr2globl_62, tracked: true } |     s4:Freed { symidx: temp_44_index_ptr_62, tracked: true } | 
              #                    regtab 
              #                          Define pop_queue_0 [] -> pop_queue_ret_0 
    .globl pop_queue
    .type pop_queue,@function
pop_queue:
              #                    mem layout:|ra_pop_queue:8 at 8096|s0_pop_queue:8 at 8088|temp_45_ptr2globl:4 at 8084|temp_46_arithop:4 at 8080|temp_47_ptr2globl:4 at 8076|temp_48_ptr2globl:4020 at 4056|temp_49_array_ptr:8 at 4048|temp_50_array_ele:4 at 4044|res:4 at 4040|temp_51_ptr2globl:4 at 4036|temp_52_ptr2globl:4020 at 16|temp_53_array_ptr:8 at 8|temp_54_array_ele:4 at 4|none:4 at 0
              #                    occupy a0 with -8104_0
    li      a0, -8104
    li      a0, -8104
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_pop_queue_0 in mem offset_illegal
              #                    occupy a1 with 8096_0
    li      a1, 8096
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_pop_queue_0 in mem offset_illegal
              #                    occupy a2 with 8088_0
    li      a2, 8088
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 8104_0
    li      a3, 8104
    li      a3, 8104
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 temp_45_ptr2globl_67 
              #                          alloc i32 temp_46_arithop_67 
              #                          alloc i32 temp_47_ptr2globl_67 
              #                          alloc Array:i32:[Some(1005_0)] temp_48_ptr2globl_67 
              #                          alloc ptr->i32 temp_49_array_ptr_67 
              #                          alloc i32 temp_50_array_ele_67 
              #                          alloc i32 res_67 
              #                          alloc i32 temp_51_ptr2globl_67 
              #                          alloc Array:i32:[Some(1005_0)] temp_52_ptr2globl_67 
              #                          alloc ptr->i32 temp_53_array_ptr_67 
              #                          alloc i32 temp_54_array_ele_67 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_45_ptr2globl_67:i32 
              #                          temp_45_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy a0 with *h_0
              #                       load label h as ptr to reg
    la      a0, h
              #                    occupy reg a0 with *h_0
              #                    occupy a1 with temp_45_ptr2globl_67
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_46_arithop_67:i32 
              #                          temp_46_arithop_67 = Add i32 temp_45_ptr2globl_67, 1_0 
              #                    occupy a1 with temp_45_ptr2globl_67
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_46_arithop_67
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_46_arithop_67:i32 *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy a3 with temp_46_arithop_67
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_47_ptr2globl_67:i32 
              #                          temp_47_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy a5 with *h_0
              #                       load label h as ptr to reg
    la      a5, h
              #                    occupy reg a5 with *h_0
              #                    occupy a6 with temp_47_ptr2globl_67
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_48_ptr2globl_67:Array:i32:[Some(1005_0)] 
              #                          temp_48_ptr2globl_67 = load *que_0:ptr->i32 
              #                    occupy a7 with *que_0
              #                       load label que as ptr to reg
    la      a7, que
              #                    occupy reg a7 with *que_0
              #                    occupy s1 with temp_48_ptr2globl_67
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_49_array_ptr_67:ptr->i32 
              #                          temp_49_array_ptr_67 = getelementptr temp_48_ptr2globl_67:Array:i32:[Some(1005_0)] [Some(temp_47_ptr2globl_67)] 
              #                    occupy s2 with temp_49_array_ptr_67
    li      s2, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a6 with temp_47_ptr2globl_67
              #                    occupy s3 with _anonymous_of_temp_48_ptr2globl_67_0
    mul     s3,a2,a6
              #                    free a2
              #                    free a6
    add     s2,s2,s3
              #                    free s3
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s4 with 4056_0
    li      s4, 4056
    li      s4, 4056
    add     s2,s4,s2
              #                    free s4
              #                    free s2
              #                          new_var temp_50_array_ele_67:i32 
              #                          temp_50_array_ele_67 = load temp_49_array_ptr_67:ptr->i32 
              #                    occupy s2 with temp_49_array_ptr_67
              #                    occupy s5 with temp_50_array_ele_67
    lw      s5,0(s2)
              #                    free s5
              #                    free s2
              #                          res_67 = i32 temp_50_array_ele_67 
              #                    occupy s5 with temp_50_array_ele_67
              #                    occupy s6 with res_67
    mv      s6, s5
              #                    free s5
              #                    free s6
              #                          new_var temp_51_ptr2globl_67:i32 
              #                          temp_51_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy s7 with *h_0
              #                       load label h as ptr to reg
    la      s7, h
              #                    occupy reg s7 with *h_0
              #                    occupy s8 with temp_51_ptr2globl_67
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_52_ptr2globl_67:Array:i32:[Some(1005_0)] 
              #                          temp_52_ptr2globl_67 = load *que_0:ptr->i32 
              #                    occupy s9 with *que_0
              #                       load label que as ptr to reg
    la      s9, que
              #                    occupy reg s9 with *que_0
              #                    occupy s10 with temp_52_ptr2globl_67
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_53_array_ptr_67:ptr->i32 
              #                          temp_53_array_ptr_67 = getelementptr temp_52_ptr2globl_67:Array:i32:[Some(1005_0)] [Some(temp_51_ptr2globl_67)] 
              #                    occupy s11 with temp_53_array_ptr_67
    li      s11, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s8 with temp_51_ptr2globl_67
              #                    occupy a0 with _anonymous_of_temp_52_ptr2globl_67_0
    mul     a0,a2,s8
              #                    free a2
              #                    free s8
    add     s11,s11,a0
              #                    free a0
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,16
              #                    free s11
              #                          new_var temp_54_array_ele_67:i32 
              #                          temp_54_array_ele_67 = load temp_53_array_ptr_67:ptr->i32 
              #                    occupy s11 with temp_53_array_ptr_67
              #                    occupy a0 with temp_54_array_ele_67
    lw      a0,0(s11)
              #                    free a0
              #                    free s11
              #                          ret temp_54_array_ele_67 
              #                    load from ra_pop_queue_0 in mem
              #                    occupy a2 with ra_pop_queue_0
    li      a2, 8096
    add     a2,sp,a2
    ld      ra,0(a2)
              #                    free a2
              #                    load from s0_pop_queue_0 in mem
              #                    occupy a4 with s0_pop_queue_0
    li      a4, 8088
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to temp_54_array_ele_67 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_54_array_ele_67
              #                    occupy a0 with temp_54_array_ele_67
              #                    load from temp_54_array_ele_67 in mem


    lw      a0,4(sp)
              #                    occupy a5 with 8104_0
    li      a5, 8104
    li      a5, 8104
    add     sp,a5,sp
              #                    free a5
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_45_ptr2globl_67, tracked: true } |     a2:Freed { symidx: ra_pop_queue_0, tracked: true } |     a3:Freed { symidx: temp_46_arithop_67, tracked: true } |     a4:Freed { symidx: s0_pop_queue_0, tracked: true } |     a6:Freed { symidx: temp_47_ptr2globl_67, tracked: true } |     s10:Freed { symidx: temp_52_ptr2globl_67, tracked: true } |     s11:Freed { symidx: temp_53_array_ptr_67, tracked: true } |     s1:Freed { symidx: temp_48_ptr2globl_67, tracked: true } |     s2:Freed { symidx: temp_49_array_ptr_67, tracked: true } |     s5:Freed { symidx: temp_50_array_ele_67, tracked: true } |     s6:Freed { symidx: res_67, tracked: true } |     s8:Freed { symidx: temp_51_ptr2globl_67, tracked: true } | 
              #                    regtab 
              #                          Define same_0 [s_71, t_71] -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 72288|s0_same:8 at 72280|s:4 at 72276|t:4 at 72272|res:4 at 72268|temp_55_ptr2globl:4 at 72264|temp_56_ptr2globl:4 at 72260|temp_57_cmp:1 at 72259|none:3 at 72256|temp_58_ret_of_pop_queue:4 at 72252|x:4 at 72248|temp_59_cmp:1 at 72247|none:3 at 72244|temp_60_ptr2globl:4020 at 68224|temp_61_array_ptr:8 at 68216|temp_62_array_ele:4 at 68212|i:4 at 68208|temp_63_cmp:1 at 68207|none:3 at 68204|temp_64_ptr2globl:20020 at 48184|temp_65_array_ptr:8 at 48176|temp_66_array_ele:4 at 48172|temp_67_ptr2globl:4020 at 44152|temp_68_array_ptr:8 at 44144|temp_69_array_ele:4 at 44140|temp_70_booltrans:1 at 44139|temp_71_logicnot:1 at 44138|none:2 at 44136|temp_72_ptr2globl:20020 at 24116|none:4 at 24112|temp_73_array_ptr:8 at 24104|temp_74_array_ele:4 at 24100|temp_75_ptr2globl:20020 at 4080|temp_76_array_ptr:8 at 4072|temp_77_array_ele:4 at 4068|i:4 at 4064|temp_78_ptr2globl:4 at 4060|temp_79_cmp:1 at 4059|none:3 at 4056|temp_80_ptr2globl:4020 at 36|none:4 at 32|temp_81_array_ptr:8 at 24|temp_82_array_ele:4 at 20|none:4 at 16|temp_83_index_ptr:8 at 8|temp_84_arithop:4 at 4|none:4 at 0
              #                    occupy a2 with -72296_0
    li      a2, -72296
    li      a2, -72296
    add     sp,a2,sp
              #                    free a2
              #                    store to ra_same_0 in mem offset_illegal
              #                    occupy a3 with 72288_0
    li      a3, 72288
    add     a3,sp,a3
    sd      ra,0(a3)
              #                    free a3
              #                    store to s0_same_0 in mem offset_illegal
              #                    occupy a4 with 72280_0
    li      a4, 72280
    add     a4,sp,a4
    sd      s0,0(a4)
              #                    free a4
              #                    occupy a5 with 72296_0
    li      a5, 72296
    li      a5, 72296
    add     s0,a5,sp
              #                    free a5
              #                          alloc i32 res_73 
              #                          alloc i32 temp_55_ptr2globl_78 
              #                          alloc i32 temp_56_ptr2globl_78 
              #                          alloc i1 temp_57_cmp_78 
              #                          alloc i32 temp_58_ret_of_pop_queue_80 
              #                          alloc i32 x_80 
              #                          alloc i1 temp_59_cmp_82 
              #                          alloc Array:i32:[Some(1005_0)] temp_60_ptr2globl_80 
              #                          alloc ptr->i32 temp_61_array_ptr_80 
              #                          alloc i32 temp_62_array_ele_80 
              #                          alloc i32 i_80 
              #                          alloc i1 temp_63_cmp_86 
              #                          alloc Array:i32:[Some(5005_0)] temp_64_ptr2globl_89 
              #                          alloc ptr->i32 temp_65_array_ptr_89 
              #                          alloc i32 temp_66_array_ele_89 
              #                          alloc Array:i32:[Some(1005_0)] temp_67_ptr2globl_89 
              #                          alloc ptr->i32 temp_68_array_ptr_89 
              #                          alloc i32 temp_69_array_ele_89 
              #                          alloc i1 temp_70_booltrans_89 
              #                          alloc i1 temp_71_logicnot_89 
              #                          alloc Array:i32:[Some(5005_0)] temp_72_ptr2globl_89 
              #                          alloc ptr->i32 temp_73_array_ptr_89 
              #                          alloc i32 temp_74_array_ele_89 
              #                          alloc Array:i32:[Some(5005_0)] temp_75_ptr2globl_88 
              #                          alloc ptr->i32 temp_76_array_ptr_88 
              #                          alloc i32 temp_77_array_ele_88 
              #                          alloc i32 i_73 
              #                          alloc i32 temp_78_ptr2globl_94 
              #                          alloc i1 temp_79_cmp_94 
              #                          alloc Array:i32:[Some(1005_0)] temp_80_ptr2globl_96 
              #                          alloc ptr->i32 temp_81_array_ptr_96 
              #                          alloc i32 temp_82_array_ele_96 
              #                          alloc ptr->i32 temp_83_index_ptr_96 
              #                          alloc i32 temp_84_arithop_96 
              #                    regtab     a0:Freed { symidx: s_71, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          store 0_0:i32 *h_0:ptr->i32 
              #                    occupy a2 with *h_0
              #                       load label h as ptr to reg
    la      a2, h
              #                    occupy reg a2 with *h_0
              #                    occupy a3 with 0_0
    li      a3, 0
    sw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          store 0_0:i32 *tail_0:ptr->i32 
              #                    occupy a4 with *tail_0
              #                       load label tail as ptr to reg
    la      a4, tail
              #                    occupy reg a4 with *tail_0
              #                    found literal reg Some(a3) already exist with 0_0
              #                    occupy a3 with 0_0
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                           Call void inqueue_0(s_71) 
              #                    saved register dumping to mem
              #                    store to s_71 in mem offset_illegal
              #                    occupy a0 with 72276_0
    li      a0, 72276
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with s_71
              #                    store to t_71 in mem offset_illegal
              #                    occupy a0 with 72272_0
    li      a0, 72272
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with t_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_71_0
              #                    load from s_71 in mem

              #                    occupy a1 with s_71
    li      a1, 72276
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    arg load ended


    call    inqueue
              #                          res_73 = i32 0_0 
              #                    occupy a0 with res_73
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } | 
              #                          label while.head_79: 
.while.head_79:
              #                          new_var temp_55_ptr2globl_78:i32 
              #                          temp_55_ptr2globl_78 = load *tail_0:ptr->i32 
              #                    occupy a2 with *tail_0
              #                       load label tail as ptr to reg
    la      a2, tail
              #                    occupy reg a2 with *tail_0
              #                    occupy a3 with temp_55_ptr2globl_78
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                          new_var temp_56_ptr2globl_78:i32 
              #                          temp_56_ptr2globl_78 = load *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy a5 with temp_56_ptr2globl_78
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_57_cmp_78:i1 
              #                          temp_57_cmp_78 = icmp i32 Slt temp_56_ptr2globl_78, temp_55_ptr2globl_78 
              #                    occupy a5 with temp_56_ptr2globl_78
              #                    occupy a3 with temp_55_ptr2globl_78
              #                    occupy a6 with temp_57_cmp_78
    slt     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_57_cmp_78, label while.body_79, label while.exit_79 
              #                    occupy a6 with temp_57_cmp_78
              #                    free a6
              #                    occupy a6 with temp_57_cmp_78
    bnez    a6, .while.body_79
              #                    free a6
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } | 
              #                          label while.body_79: 
.while.body_79:
              #                          new_var temp_58_ret_of_pop_queue_80:i32 
              #                          temp_58_ret_of_pop_queue_80 =  Call i32 pop_queue_0() 
              #                    saved register dumping to mem
              #                    store to res_73 in mem offset_illegal
              #                    occupy a0 with 72268_0
    li      a0, 72268
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with res_73
              #                    store to s_71 in mem offset_illegal
              #                    occupy a0 with 72276_0
    li      a0, 72276
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with s_71
              #                    store to temp_55_ptr2globl_78 in mem offset_illegal
              #                    occupy a1 with 72264_0
    li      a1, 72264
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_55_ptr2globl_78
              #                    store to temp_56_ptr2globl_78 in mem offset_illegal
              #                    occupy a2 with 72260_0
    li      a2, 72260
    add     a2,sp,a2
    sw      a5,0(a2)
              #                    free a2
              #                    release a5 with temp_56_ptr2globl_78
              #                    store to temp_57_cmp_78 in mem offset_illegal
              #                    occupy a3 with 72259_0
    li      a3, 72259
    add     a3,sp,a3
    sb      a6,0(a3)
              #                    free a3
              #                    release a6 with temp_57_cmp_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    pop_queue
              #                    store to temp_58_ret_of_pop_queue_80 in mem offset_illegal
              #                    occupy a0 with 72252_0
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          x_80 = i32 temp_58_ret_of_pop_queue_80 
              #                    occupy a0 with temp_58_ret_of_pop_queue_80
              #                    occupy a4 with x_80
    mv      a4, a0
              #                    free a0
              #                    free a4
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_59_cmp_82:i1 
              #                          temp_59_cmp_82 = icmp i32 Eq x_80, t_71 
              #                    occupy a4 with x_80
              #                    occupy a1 with t_71
              #                    load from t_71 in mem

              #                    occupy a1 with t_71
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a2 with temp_59_cmp_82
    xor     a2,a4,a1
    seqz    a2, a2
              #                    free a4
              #                    free a1
              #                    free a2
              #                          br i1 temp_59_cmp_82, label branch_true_83, label branch_false_83 
              #                    occupy a2 with temp_59_cmp_82
              #                    free a2
              #                    occupy a2 with temp_59_cmp_82
    bnez    a2, .branch_true_83
              #                    free a2
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                          res_73 = i32 1_0 
              #                    occupy a3 with res_73
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_83 
              #                    store to res_73 in mem offset_illegal
              #                    occupy a3 with 72268_0
    li      a3, 72268
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with res_73
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_60_ptr2globl_80:Array:i32:[Some(1005_0)] 
              #                          temp_60_ptr2globl_80 = load *head_0:ptr->i32 
              #                    occupy a3 with *head_0
              #                       load label head as ptr to reg
    la      a3, head
              #                    occupy reg a3 with *head_0
              #                    occupy a5 with temp_60_ptr2globl_80
    lw      a5,0(a3)
              #                    free a5
              #                    free a3
              #                          new_var temp_61_array_ptr_80:ptr->i32 
              #                          temp_61_array_ptr_80 = getelementptr temp_60_ptr2globl_80:Array:i32:[Some(1005_0)] [Some(x_80)] 
              #                    occupy a6 with temp_61_array_ptr_80
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a4 with x_80
              #                    occupy s1 with _anonymous_of_temp_60_ptr2globl_80_0
    mul     s1,a7,a4
              #                    free a7
              #                    free a4
    add     a6,a6,s1
              #                    free s1
    slli a6,a6,2
    add     a6,a6,sp
              #                    occupy s2 with 68224_0
    li      s2, 68224
    li      s2, 68224
    add     a6,s2,a6
              #                    free s2
              #                    free a6
              #                          new_var temp_62_array_ele_80:i32 
              #                          temp_62_array_ele_80 = load temp_61_array_ptr_80:ptr->i32 
              #                    occupy a6 with temp_61_array_ptr_80
              #                    occupy s3 with temp_62_array_ele_80
    lw      s3,0(a6)
              #                    free s3
              #                    free a6
              #                          i_80 = i32 temp_62_array_ele_80 
              #                    occupy s3 with temp_62_array_ele_80
              #                    occupy s4 with i_80
    mv      s4, s3
              #                    free s3
              #                    free s4
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } |     a5:Freed { symidx: temp_60_ptr2globl_80, tracked: true } |     a6:Freed { symidx: temp_61_array_ptr_80, tracked: true } |     s3:Freed { symidx: temp_62_array_ele_80, tracked: true } |     s4:Freed { symidx: i_80, tracked: true } | 
              #                          label while.head_87: 
.while.head_87:
              #                          new_var temp_63_cmp_86:i1 
              #                          temp_63_cmp_86 = icmp i32 Ne i_80, -1_0 
              #                    occupy s4 with i_80
              #                    occupy a3 with -1_0
    li      a3, -1
              #                    occupy a7 with temp_63_cmp_86
    xor     a7,s4,a3
    snez    a7, a7
              #                    free s4
              #                    free a3
              #                    free a7
              #                          br i1 temp_63_cmp_86, label while.body_87, label while.head_79 
              #                    occupy a7 with temp_63_cmp_86
              #                    free a7
              #                    occupy a7 with temp_63_cmp_86
    bnez    a7, .while.body_87
              #                    free a7
              #                    store to temp_60_ptr2globl_80 in mem offset_illegal
              #                    occupy a3 with 68224_0
    li      a3, 68224
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_60_ptr2globl_80
              #                    store to temp_62_array_ele_80 in mem offset_illegal
              #                    occupy a5 with 68212_0
    li      a5, 68212
    add     a5,sp,a5
    sw      s3,0(a5)
              #                    free a5
              #                    release s3 with temp_62_array_ele_80
              #                    store to temp_61_array_ptr_80 in mem offset_illegal
              #                    occupy a6 with 68216_0
    li      a6, 68216
    add     a6,sp,a6
    sd      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_61_array_ptr_80
              #                    store to temp_59_cmp_82 in mem offset_illegal
              #                    occupy a2 with 72247_0
    li      a2, 72247
    add     a2,sp,a2
    sb      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_59_cmp_82
              #                    store to t_71 in mem offset_illegal
              #                    occupy a1 with 72272_0
    li      a1, 72272
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with t_71
              #                    store to x_80 in mem offset_illegal
              #                    occupy a1 with 72248_0
    li      a1, 72248
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with x_80
              #                    store to i_80 in mem offset_illegal
              #                    occupy a2 with 68208_0
    li      a2, 68208
    add     a2,sp,a2
    sw      s4,0(a2)
              #                    free a2
              #                    release s4 with i_80
              #                    store to temp_63_cmp_86 in mem offset_illegal
              #                    occupy a3 with 68207_0
    li      a3, 68207
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_63_cmp_86
              #                    store to temp_58_ret_of_pop_queue_80 in mem offset_illegal
              #                    occupy a0 with 72252_0
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_58_ret_of_pop_queue_80
              #                    occupy a1 with _anonymous_of_s_71_0
              #                    load from s_71 in mem

              #                    occupy a0 with s_71
    li      a0, 72276
    add     a0,sp,a0
    lw      a1,0(a0)
              #                    free a0
              #                    store to s_71 in mem offset_illegal
              #                    occupy a0 with 72276_0
    li      a0, 72276
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with s_71
              #                    occupy a0 with _anonymous_of_res_73_0
              #                    load from res_73 in mem

              #                    occupy a2 with res_73
    li      a2, 72268
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } |     a5:Freed { symidx: temp_60_ptr2globl_80, tracked: true } |     a6:Freed { symidx: temp_61_array_ptr_80, tracked: true } |     a7:Freed { symidx: temp_63_cmp_86, tracked: true } |     s3:Freed { symidx: temp_62_array_ele_80, tracked: true } |     s4:Freed { symidx: i_80, tracked: true } | 
              #                          label while.body_87: 
.while.body_87:
              #                          new_var temp_64_ptr2globl_89:Array:i32:[Some(5005_0)] 
              #                          temp_64_ptr2globl_89 = load *to_0:ptr->i32 
              #                    occupy a3 with *to_0
              #                       load label to as ptr to reg
    la      a3, to
              #                    occupy reg a3 with *to_0
              #                    occupy s1 with temp_64_ptr2globl_89
    lw      s1,0(a3)
              #                    free s1
              #                    free a3
              #                          new_var temp_65_array_ptr_89:ptr->i32 
              #                          temp_65_array_ptr_89 = getelementptr temp_64_ptr2globl_89:Array:i32:[Some(5005_0)] [Some(i_80)] 
              #                    occupy s2 with temp_65_array_ptr_89
    li      s2, 0
              #                    occupy s5 with 1_0
    li      s5, 1
              #                    occupy s4 with i_80
              #                    occupy s6 with _anonymous_of_temp_64_ptr2globl_89_0
    mul     s6,s5,s4
              #                    free s5
              #                    free s4
    add     s2,s2,s6
              #                    free s6
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s7 with 48184_0
    li      s7, 48184
    li      s7, 48184
    add     s2,s7,s2
              #                    free s7
              #                    free s2
              #                          new_var temp_66_array_ele_89:i32 
              #                          temp_66_array_ele_89 = load temp_65_array_ptr_89:ptr->i32 
              #                    occupy s2 with temp_65_array_ptr_89
              #                    occupy s8 with temp_66_array_ele_89
    lw      s8,0(s2)
              #                    free s8
              #                    free s2
              #                          new_var temp_67_ptr2globl_89:Array:i32:[Some(1005_0)] 
              #                          temp_67_ptr2globl_89 = load *inq_0:ptr->i32 
              #                    occupy s9 with *inq_0
              #                       load label inq as ptr to reg
    la      s9, inq
              #                    occupy reg s9 with *inq_0
              #                    occupy s10 with temp_67_ptr2globl_89
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_68_array_ptr_89:ptr->i32 
              #                          temp_68_array_ptr_89 = getelementptr temp_67_ptr2globl_89:Array:i32:[Some(1005_0)] [Some(temp_66_array_ele_89)] 
              #                    occupy s11 with temp_68_array_ptr_89
    li      s11, 0
              #                    found literal reg Some(s5) already exist with 1_0
              #                    occupy s5 with 1_0
              #                    occupy s8 with temp_66_array_ele_89
              #                    occupy a3 with _anonymous_of_temp_67_ptr2globl_89_0
    mul     a3,s5,s8
              #                    free s5
              #                    free s8
    add     s11,s11,a3
              #                    free a3
    slli s11,s11,2
    add     s11,s11,sp
              #                    occupy a3 with 44152_0
    li      a3, 44152
    li      a3, 44152
    add     s11,a3,s11
              #                    free a3
              #                    free s11
              #                          new_var temp_69_array_ele_89:i32 
              #                          temp_69_array_ele_89 = load temp_68_array_ptr_89:ptr->i32 
              #                    occupy s11 with temp_68_array_ptr_89
              #                    occupy a3 with temp_69_array_ele_89
    lw      a3,0(s11)
              #                    free a3
              #                    free s11
              #                          new_var temp_70_booltrans_89:i1 
              #                          temp_70_booltrans_89 = icmp i1 Ne temp_69_array_ele_89, 0_0 
              #                    occupy a3 with temp_69_array_ele_89
              #                    occupy s5 with 0_0
    li      s5, 0
              #                    occupy s6 with temp_70_booltrans_89
    xor     s6,a3,s5
    snez    s6, s6
              #                    free a3
              #                    free s5
              #                    free s6
              #                          new_var temp_71_logicnot_89:i1 
              #                          temp_71_logicnot_89 = xor i1 temp_70_booltrans_89, true 
              #                    occupy s6 with temp_70_booltrans_89
              #                    occupy s5 with temp_71_logicnot_89
    seqz    s5, s6
              #                    free s6
              #                    free s5
              #                          br i1 temp_71_logicnot_89, label branch_true_90, label branch_false_90 
              #                    occupy s5 with temp_71_logicnot_89
              #                    free s5
              #                    occupy s5 with temp_71_logicnot_89
    bnez    s5, .branch_true_90
              #                    free s5
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a3:Freed { symidx: temp_69_array_ele_89, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } |     a5:Freed { symidx: temp_60_ptr2globl_80, tracked: true } |     a6:Freed { symidx: temp_61_array_ptr_80, tracked: true } |     a7:Freed { symidx: temp_63_cmp_86, tracked: true } |     s10:Freed { symidx: temp_67_ptr2globl_89, tracked: true } |     s11:Freed { symidx: temp_68_array_ptr_89, tracked: true } |     s1:Freed { symidx: temp_64_ptr2globl_89, tracked: true } |     s2:Freed { symidx: temp_65_array_ptr_89, tracked: true } |     s3:Freed { symidx: temp_62_array_ele_80, tracked: true } |     s4:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_71_logicnot_89, tracked: true } |     s6:Freed { symidx: temp_70_booltrans_89, tracked: true } |     s8:Freed { symidx: temp_66_array_ele_89, tracked: true } | 
              #                          label branch_true_90: 
.branch_true_90:
              #                          new_var temp_72_ptr2globl_89:Array:i32:[Some(5005_0)] 
              #                          temp_72_ptr2globl_89 = load *to_0:ptr->i32 
              #                    occupy s7 with *to_0
              #                       load label to as ptr to reg
    la      s7, to
              #                    occupy reg s7 with *to_0
              #                    occupy s9 with temp_72_ptr2globl_89
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_73_array_ptr_89:ptr->i32 
              #                          temp_73_array_ptr_89 = getelementptr temp_72_ptr2globl_89:Array:i32:[Some(5005_0)] [Some(i_80)] 
              #                    occupy s7 with temp_73_array_ptr_89
    li      s7, 0
              #                    store to temp_58_ret_of_pop_queue_80 in mem offset_illegal
              #                    occupy a0 with 72252_0
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_58_ret_of_pop_queue_80
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s4 with i_80
              #                    store to t_71 in mem offset_illegal
              #                    occupy a1 with 72272_0
    li      a1, 72272
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with t_71
              #                    occupy a1 with _anonymous_of_temp_72_ptr2globl_89_0
    mul     a1,a0,s4
              #                    free a0
              #                    free s4
    add     s7,s7,a1
              #                    free a1
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy a0 with 24116_0
    li      a0, 24116
    li      a0, 24116
    add     s7,a0,s7
              #                    free a0
              #                    free s7
              #                          new_var temp_74_array_ele_89:i32 
              #                          temp_74_array_ele_89 = load temp_73_array_ptr_89:ptr->i32 
              #                    occupy s7 with temp_73_array_ptr_89
              #                    occupy a0 with temp_74_array_ele_89
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                           Call void inqueue_0(temp_74_array_ele_89) 
              #                    saved register dumping to mem
              #                    store to temp_64_ptr2globl_89 in mem offset_illegal
              #                    occupy s1 with 48184_0
    li      s1, 48184
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_64_ptr2globl_89
              #                    store to temp_65_array_ptr_89 in mem offset_illegal
              #                    occupy s1 with 48176_0
    li      s1, 48176
    add     s1,sp,s1
    sd      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_65_array_ptr_89
              #                    store to temp_62_array_ele_80 in mem offset_illegal
              #                    occupy s2 with 68212_0
    li      s2, 68212
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with temp_62_array_ele_80
              #                    store to i_80 in mem offset_illegal
              #                    occupy s3 with 68208_0
    li      s3, 68208
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with i_80
              #                    store to temp_71_logicnot_89 in mem offset_illegal
              #                    occupy s4 with 44138_0
    li      s4, 44138
    add     s4,sp,s4
    sb      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_71_logicnot_89
              #                    store to temp_70_booltrans_89 in mem offset_illegal
              #                    occupy s5 with 44139_0
    li      s5, 44139
    add     s5,sp,s5
    sb      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_70_booltrans_89
              #                    store to temp_73_array_ptr_89 in mem offset_illegal
              #                    occupy s6 with 24104_0
    li      s6, 24104
    add     s6,sp,s6
    sd      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_73_array_ptr_89
              #                    store to temp_66_array_ele_89 in mem offset_illegal
              #                    occupy s7 with 48172_0
    li      s7, 48172
    add     s7,sp,s7
    sw      s8,0(s7)
              #                    free s7
              #                    release s8 with temp_66_array_ele_89
              #                    store to temp_72_ptr2globl_89 in mem offset_illegal
              #                    occupy s8 with 24116_0
    li      s8, 24116
    add     s8,sp,s8
    sw      s9,0(s8)
              #                    free s8
              #                    release s9 with temp_72_ptr2globl_89
              #                    store to temp_67_ptr2globl_89 in mem offset_illegal
              #                    occupy s9 with 44152_0
    li      s9, 44152
    add     s9,sp,s9
    sw      s10,0(s9)
              #                    free s9
              #                    release s10 with temp_67_ptr2globl_89
              #                    store to temp_68_array_ptr_89 in mem offset_illegal
              #                    occupy s10 with 44144_0
    li      s10, 44144
    add     s10,sp,s10
    sd      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_68_array_ptr_89
              #                    store to temp_74_array_ele_89 in mem offset_illegal
              #                    occupy a0 with 24100_0
    li      a0, 24100
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_74_array_ele_89
              #                    store to temp_59_cmp_82 in mem offset_illegal
              #                    occupy a0 with 72247_0
    li      a0, 72247
    add     a0,sp,a0
    sb      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_59_cmp_82
              #                    store to temp_69_array_ele_89 in mem offset_illegal
              #                    occupy a1 with 44140_0
    li      a1, 44140
    add     a1,sp,a1
    sw      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_69_array_ele_89
              #                    store to x_80 in mem offset_illegal
              #                    occupy a2 with 72248_0
    li      a2, 72248
    add     a2,sp,a2
    sw      a4,0(a2)
              #                    free a2
              #                    release a4 with x_80
              #                    store to temp_60_ptr2globl_80 in mem offset_illegal
              #                    occupy a3 with 68224_0
    li      a3, 68224
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_60_ptr2globl_80
              #                    store to temp_61_array_ptr_80 in mem offset_illegal
              #                    occupy a4 with 68216_0
    li      a4, 68216
    add     a4,sp,a4
    sd      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_61_array_ptr_80
              #                    store to temp_63_cmp_86 in mem offset_illegal
              #                    occupy a5 with 68207_0
    li      a5, 68207
    add     a5,sp,a5
    sb      a7,0(a5)
              #                    free a5
              #                    release a7 with temp_63_cmp_86
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_74_array_ele_89_0
              #                    load from temp_74_array_ele_89 in mem

              #                    occupy a6 with temp_74_array_ele_89
    li      a6, 24100
    add     a6,sp,a6
    lw      a0,0(a6)
              #                    free a6
              #                    arg load ended


    call    inqueue
              #                          jump label: branch_false_90 
              #                    store to temp_74_array_ele_89 in mem offset_illegal
              #                    occupy a0 with 24100_0
    li      a0, 24100
    add     a0,sp,a0
    sw      a6,0(a0)
              #                    free a0
              #                    release a6 with temp_74_array_ele_89
              #                    occupy a5 with _anonymous_of_temp_60_ptr2globl_80_0
              #                    load from temp_60_ptr2globl_80 in mem
              #                    occupy a0 with temp_60_ptr2globl_80
    li      a0, 68224
    add     a0,sp,a0
    lw      a5,0(a0)
              #                    free a0
              #                    occupy s2 with _anonymous_of_temp_65_array_ptr_89_0
              #                    load from temp_65_array_ptr_89 in mem
              #                    occupy a1 with temp_65_array_ptr_89
    li      a1, 48176
    add     a1,sp,a1
    ld      s2,0(a1)
              #                    free a1
              #                    occupy s3 with _anonymous_of_temp_62_array_ele_80_0
              #                    load from temp_62_array_ele_80 in mem

              #                    occupy a2 with temp_62_array_ele_80
    li      a2, 68212
    add     a2,sp,a2
    lw      s3,0(a2)
              #                    free a2
              #                    occupy a6 with _anonymous_of_temp_61_array_ptr_80_0
              #                    load from temp_61_array_ptr_80 in mem
              #                    occupy a3 with temp_61_array_ptr_80
    li      a3, 68216
    add     a3,sp,a3
    ld      a6,0(a3)
              #                    free a3
              #                    store to temp_61_array_ptr_80 in mem offset_illegal
              #                    occupy a3 with 68216_0
    li      a3, 68216
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_61_array_ptr_80
              #                    occupy a3 with _anonymous_of_temp_69_array_ele_89_0
              #                    load from temp_69_array_ele_89 in mem

              #                    occupy a4 with temp_69_array_ele_89
    li      a4, 44140
    add     a4,sp,a4
    lw      a3,0(a4)
              #                    free a4
              #                    occupy s8 with _anonymous_of_temp_66_array_ele_89_0
              #                    load from temp_66_array_ele_89 in mem

              #                    occupy a7 with temp_66_array_ele_89
    li      a7, 48172
    add     a7,sp,a7
    lw      s8,0(a7)
              #                    free a7
              #                    occupy s6 with _anonymous_of_temp_70_booltrans_89_0
              #                    load from temp_70_booltrans_89 in mem
              #                    occupy s1 with temp_70_booltrans_89
    li      s1, 44139
    add     s1,sp,s1
    lb      s6,0(s1)
              #                    free s1
              #                    store to temp_62_array_ele_80 in mem offset_illegal
              #                    occupy a2 with 68212_0
    li      a2, 68212
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_62_array_ele_80
              #                    occupy a2 with _anonymous_of_temp_59_cmp_82_0
              #                    load from temp_59_cmp_82 in mem
              #                    occupy s4 with temp_59_cmp_82
    li      s4, 72247
    add     s4,sp,s4
    lb      a2,0(s4)
              #                    free s4
              #                    occupy s10 with _anonymous_of_temp_67_ptr2globl_89_0
              #                    load from temp_67_ptr2globl_89 in mem
              #                    occupy s5 with temp_67_ptr2globl_89
    li      s5, 44152
    add     s5,sp,s5
    lw      s10,0(s5)
              #                    free s5
              #                    store to temp_65_array_ptr_89 in mem offset_illegal
              #                    occupy a1 with 48176_0
    li      a1, 48176
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_65_array_ptr_89
              #                    occupy a1 with _anonymous_of_t_71_0
              #                    load from t_71 in mem

              #                    occupy s7 with t_71
    li      s7, 72272
    add     s7,sp,s7
    lw      a1,0(s7)
              #                    free s7
              #                    store to temp_69_array_ele_89 in mem offset_illegal
              #                    occupy a4 with 44140_0
    li      a4, 44140
    add     a4,sp,a4
    sw      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_69_array_ele_89
              #                    occupy a4 with _anonymous_of_x_80_0
              #                    load from x_80 in mem

              #                    occupy s9 with x_80
    li      s9, 72248
    add     s9,sp,s9
    lw      a4,0(s9)
              #                    free s9
              #                    store to temp_59_cmp_82 in mem offset_illegal
              #                    occupy s4 with 72247_0
    li      s4, 72247
    add     s4,sp,s4
    sb      s4,0(s4)
              #                    free s4
              #                    release s4 with temp_59_cmp_82
              #                    occupy s4 with _anonymous_of_i_80_0
              #                    load from i_80 in mem

              #                    occupy s11 with i_80
    li      s11, 68208
    add     s11,sp,s11
    lw      s4,0(s11)
              #                    free s11
              #                    store to i_80 in mem offset_illegal
              #                    occupy s11 with 68208_0
    li      s11, 68208
    add     s11,sp,s11
    sw      s11,0(s11)
              #                    free s11
              #                    release s11 with i_80
              #                    occupy s11 with _anonymous_of_temp_68_array_ptr_89_0
              #                    load from temp_68_array_ptr_89 in mem
              #                    store to temp_60_ptr2globl_80 in mem offset_illegal
              #                    occupy a0 with 68224_0
    li      a0, 68224
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_60_ptr2globl_80
              #                    occupy a0 with temp_68_array_ptr_89
    li      a0, 44144
    add     a0,sp,a0
    ld      s11,0(a0)
              #                    free a0
              #                    store to temp_66_array_ele_89 in mem offset_illegal
              #                    occupy a7 with 48172_0
    li      a7, 48172
    add     a7,sp,a7
    sw      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_66_array_ele_89
              #                    occupy a7 with _anonymous_of_temp_63_cmp_86_0
              #                    load from temp_63_cmp_86 in mem
              #                    store to temp_68_array_ptr_89 in mem offset_illegal
              #                    occupy a0 with 44144_0
    li      a0, 44144
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_68_array_ptr_89
              #                    occupy a0 with temp_63_cmp_86
    li      a0, 68207
    add     a0,sp,a0
    lb      a7,0(a0)
              #                    free a0
              #                    store to temp_67_ptr2globl_89 in mem offset_illegal
              #                    occupy s5 with 44152_0
    li      s5, 44152
    add     s5,sp,s5
    sw      s5,0(s5)
              #                    free s5
              #                    release s5 with temp_67_ptr2globl_89
              #                    occupy s5 with _anonymous_of_temp_71_logicnot_89_0
              #                    load from temp_71_logicnot_89 in mem
              #                    store to temp_63_cmp_86 in mem offset_illegal
              #                    occupy a0 with 68207_0
    li      a0, 68207
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_63_cmp_86
              #                    occupy a0 with temp_71_logicnot_89
    li      a0, 44138
    add     a0,sp,a0
    lb      s5,0(a0)
              #                    free a0
              #                    store to temp_71_logicnot_89 in mem offset_illegal
              #                    occupy a0 with 44138_0
    li      a0, 44138
    add     a0,sp,a0
    sb      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_71_logicnot_89
              #                    occupy a0 with _anonymous_of_temp_58_ret_of_pop_queue_80_0
              #                    load from temp_58_ret_of_pop_queue_80 in mem

              #                    store to temp_70_booltrans_89 in mem offset_illegal
              #                    occupy s1 with 44139_0
    li      s1, 44139
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_70_booltrans_89
              #                    occupy s1 with temp_58_ret_of_pop_queue_80
    li      s1, 72252
    add     s1,sp,s1
    lw      a0,0(s1)
              #                    free s1
              #                    store to x_80 in mem offset_illegal
              #                    occupy s9 with 72248_0
    li      s9, 72248
    add     s9,sp,s9
    sw      s9,0(s9)
              #                    free s9
              #                    release s9 with x_80
              #                    store to temp_58_ret_of_pop_queue_80 in mem offset_illegal
              #                    occupy s1 with 72252_0
    li      s1, 72252
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_58_ret_of_pop_queue_80
              #                    occupy s1 with _anonymous_of_temp_64_ptr2globl_89_0
              #                    load from temp_64_ptr2globl_89 in mem
              #                    occupy s9 with temp_64_ptr2globl_89
    li      s9, 48184
    add     s9,sp,s9
    lw      s1,0(s9)
              #                    free s9
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a3:Freed { symidx: temp_69_array_ele_89, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } |     a5:Freed { symidx: temp_60_ptr2globl_80, tracked: true } |     a6:Freed { symidx: temp_61_array_ptr_80, tracked: true } |     a7:Freed { symidx: temp_63_cmp_86, tracked: true } |     s10:Freed { symidx: temp_67_ptr2globl_89, tracked: true } |     s11:Freed { symidx: temp_68_array_ptr_89, tracked: true } |     s1:Freed { symidx: temp_64_ptr2globl_89, tracked: true } |     s2:Freed { symidx: temp_65_array_ptr_89, tracked: true } |     s3:Freed { symidx: temp_62_array_ele_80, tracked: true } |     s4:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_71_logicnot_89, tracked: true } |     s6:Freed { symidx: temp_70_booltrans_89, tracked: true } |     s8:Freed { symidx: temp_66_array_ele_89, tracked: true } | 
              #                          label branch_false_90: 
.branch_false_90:
              #                    regtab     a0:Freed { symidx: temp_58_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: t_71, tracked: true } |     a2:Freed { symidx: temp_59_cmp_82, tracked: true } |     a3:Freed { symidx: temp_69_array_ele_89, tracked: true } |     a4:Freed { symidx: x_80, tracked: true } |     a5:Freed { symidx: temp_60_ptr2globl_80, tracked: true } |     a6:Freed { symidx: temp_61_array_ptr_80, tracked: true } |     a7:Freed { symidx: temp_63_cmp_86, tracked: true } |     s10:Freed { symidx: temp_67_ptr2globl_89, tracked: true } |     s11:Freed { symidx: temp_68_array_ptr_89, tracked: true } |     s1:Freed { symidx: temp_64_ptr2globl_89, tracked: true } |     s2:Freed { symidx: temp_65_array_ptr_89, tracked: true } |     s3:Freed { symidx: temp_62_array_ele_80, tracked: true } |     s4:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_71_logicnot_89, tracked: true } |     s6:Freed { symidx: temp_70_booltrans_89, tracked: true } |     s8:Freed { symidx: temp_66_array_ele_89, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_75_ptr2globl_88:Array:i32:[Some(5005_0)] 
              #                          temp_75_ptr2globl_88 = load *next_0:ptr->i32 
              #                    occupy s7 with *next_0
              #                       load label next as ptr to reg
    la      s7, next
              #                    occupy reg s7 with *next_0
              #                    occupy s9 with temp_75_ptr2globl_88
    lw      s9,0(s7)
              #                    free s9
              #                    free s7
              #                          new_var temp_76_array_ptr_88:ptr->i32 
              #                          temp_76_array_ptr_88 = getelementptr temp_75_ptr2globl_88:Array:i32:[Some(5005_0)] [Some(i_80)] 
              #                    occupy s7 with temp_76_array_ptr_88
    li      s7, 0
              #                    store to temp_58_ret_of_pop_queue_80 in mem offset_illegal
              #                    occupy a0 with 72252_0
    li      a0, 72252
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_58_ret_of_pop_queue_80
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy s4 with i_80
              #                    store to t_71 in mem offset_illegal
              #                    occupy a1 with 72272_0
    li      a1, 72272
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with t_71
              #                    occupy a1 with _anonymous_of_temp_75_ptr2globl_88_0
    mul     a1,a0,s4
              #                    free a0
              #                    free s4
    add     s7,s7,a1
              #                    free a1
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy a0 with 4080_0
    li      a0, 4080
    li      a0, 4080
    add     s7,a0,s7
              #                    free a0
              #                    free s7
              #                          new_var temp_77_array_ele_88:i32 
              #                          temp_77_array_ele_88 = load temp_76_array_ptr_88:ptr->i32 
              #                    occupy s7 with temp_76_array_ptr_88
              #                    occupy a0 with temp_77_array_ele_88
    lw      a0,0(s7)
              #                    free a0
              #                    free s7
              #                          i_80 = i32 temp_77_array_ele_88 
              #                    occupy a0 with temp_77_array_ele_88
              #                    occupy s4 with i_80
    mv      s4, a0
              #                    free a0
              #                    free s4
              #                          jump label: while.head_87 
              #                    store to temp_65_array_ptr_89 in mem offset_illegal
              #                    occupy s2 with 48176_0
    li      s2, 48176
    add     s2,sp,s2
    sd      s2,0(s2)
              #                    free s2
              #                    release s2 with temp_65_array_ptr_89
              #                    store to temp_69_array_ele_89 in mem offset_illegal
              #                    occupy a3 with 44140_0
    li      a3, 44140
    add     a3,sp,a3
    sw      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_69_array_ele_89
              #                    store to temp_66_array_ele_89 in mem offset_illegal
              #                    occupy a3 with 48172_0
    li      a3, 48172
    add     a3,sp,a3
    sw      s8,0(a3)
              #                    free a3
              #                    release s8 with temp_66_array_ele_89
              #                    store to temp_70_booltrans_89 in mem offset_illegal
              #                    occupy s2 with 44139_0
    li      s2, 44139
    add     s2,sp,s2
    sb      s6,0(s2)
              #                    free s2
              #                    release s6 with temp_70_booltrans_89
              #                    store to temp_76_array_ptr_88 in mem offset_illegal
              #                    occupy s6 with 4072_0
    li      s6, 4072
    add     s6,sp,s6
    sd      s7,0(s6)
              #                    free s6
              #                    release s7 with temp_76_array_ptr_88
              #                    store to temp_67_ptr2globl_89 in mem offset_illegal
              #                    occupy s7 with 44152_0
    li      s7, 44152
    add     s7,sp,s7
    sw      s10,0(s7)
              #                    free s7
              #                    release s10 with temp_67_ptr2globl_89
              #                    store to temp_68_array_ptr_89 in mem offset_illegal
              #                    occupy a1 with 44144_0
    li      a1, 44144
    add     a1,sp,a1
    sd      s11,0(a1)
              #                    free a1
              #                    release s11 with temp_68_array_ptr_89
              #                    store to temp_63_cmp_86 in mem offset_illegal
              #                    occupy a7 with 68207_0
    li      a7, 68207
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_63_cmp_86
              #                    store to temp_71_logicnot_89 in mem offset_illegal
              #                    occupy a7 with 44138_0
    li      a7, 44138
    add     a7,sp,a7
    sb      s5,0(a7)
              #                    free a7
              #                    release s5 with temp_71_logicnot_89
              #                    store to temp_77_array_ele_88 in mem offset_illegal
              #                    occupy a0 with 4068_0
    li      a0, 4068
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_array_ele_88
              #                    store to temp_75_ptr2globl_88 in mem offset_illegal
              #                    occupy a0 with 4080_0
    li      a0, 4080
    add     a0,sp,a0
    sw      s9,0(a0)
              #                    free a0
              #                    release s9 with temp_75_ptr2globl_88
              #                    store to temp_64_ptr2globl_89 in mem offset_illegal
              #                    occupy s1 with 48184_0
    li      s1, 48184
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_64_ptr2globl_89
              #                    occupy a1 with _anonymous_of_t_71_0
              #                    load from t_71 in mem

              #                    occupy a3 with t_71
    li      a3, 72272
    add     a3,sp,a3
    lw      a1,0(a3)
              #                    free a3
              #                    occupy a0 with _anonymous_of_temp_58_ret_of_pop_queue_80_0
              #                    load from temp_58_ret_of_pop_queue_80 in mem

              #                    occupy a7 with temp_58_ret_of_pop_queue_80
    li      a7, 72252
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } | 
              #                          label while.exit_79: 
.while.exit_79:
              #                          i_73 = i32 0_0 
              #                    occupy a2 with i_73
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } | 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_78_ptr2globl_94:i32 
              #                          temp_78_ptr2globl_94 = load *tail_0:ptr->i32 
              #                    occupy a4 with *tail_0
              #                       load label tail as ptr to reg
    la      a4, tail
              #                    occupy reg a4 with *tail_0
              #                    occupy a7 with temp_78_ptr2globl_94
    lw      a7,0(a4)
              #                    free a7
              #                    free a4
              #                          new_var temp_79_cmp_94:i1 
              #                          temp_79_cmp_94 = icmp i32 Sle i_73, temp_78_ptr2globl_94 
              #                    occupy a2 with i_73
              #                    occupy a7 with temp_78_ptr2globl_94
              #                    occupy s1 with temp_79_cmp_94
    slt     s1,a7,a2
    xori    s1,s1,1
              #                    free a2
              #                    free a7
              #                    free s1
              #                          br i1 temp_79_cmp_94, label while.body_95, label while.exit_95 
              #                    occupy s1 with temp_79_cmp_94
              #                    free s1
              #                    occupy s1 with temp_79_cmp_94
    bnez    s1, .while.body_95
              #                    free s1
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } |     a7:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     s1:Freed { symidx: temp_79_cmp_94, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_80_ptr2globl_96:Array:i32:[Some(1005_0)] 
              #                          temp_80_ptr2globl_96 = load *que_0:ptr->i32 
              #                    occupy a4 with *que_0
              #                       load label que as ptr to reg
    la      a4, que
              #                    occupy reg a4 with *que_0
              #                    occupy s2 with temp_80_ptr2globl_96
    lw      s2,0(a4)
              #                    free s2
              #                    free a4
              #                          new_var temp_81_array_ptr_96:ptr->i32 
              #                          temp_81_array_ptr_96 = getelementptr temp_80_ptr2globl_96:Array:i32:[Some(1005_0)] [Some(i_73)] 
              #                    occupy s3 with temp_81_array_ptr_96
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a2 with i_73
              #                    occupy s5 with _anonymous_of_temp_80_ptr2globl_96_0
    mul     s5,s4,a2
              #                    free s4
              #                    free a2
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,36
              #                    free s3
              #                          new_var temp_82_array_ele_96:i32 
              #                          temp_82_array_ele_96 = load temp_81_array_ptr_96:ptr->i32 
              #                    occupy s3 with temp_81_array_ptr_96
              #                    occupy s6 with temp_82_array_ele_96
    lw      s6,0(s3)
              #                    free s6
              #                    free s3
              #                          new_var temp_83_index_ptr_96:ptr->i32 
              #                          temp_83_index_ptr_96 = getelementptr inq_0:Array:i32:[Some(1005_0)] [Some(temp_82_array_ele_96)] 
              #                    occupy s7 with temp_83_index_ptr_96
    li      s7, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s6 with temp_82_array_ele_96
              #                    occupy s8 with _anonymous_of_inq_0_0
    mul     s8,s4,s6
              #                    free s4
              #                    free s6
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s9 with _anonymous_of_inq_0_0
    la      s9, inq
    add     s7,s7,s9
              #                    free s9
              #                    free s7
              #                          store 0_0:i32 temp_83_index_ptr_96:ptr->i32 
              #                    occupy s7 with temp_83_index_ptr_96
              #                    occupy s10 with 0_0
    li      s10, 0
    sw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          mu inq_0:400 
              #                          inq_0 = chi inq_0:400 
              #                          new_var temp_84_arithop_96:i32 
              #                          temp_84_arithop_96 = Add i32 i_73, 1_0 
              #                    occupy a2 with i_73
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy s11 with temp_84_arithop_96
    add     s11,a2,s4
              #                    free a2
              #                    free s4
              #                    free s11
              #                          i_73 = i32 temp_84_arithop_96 
              #                    occupy s11 with temp_84_arithop_96
              #                    occupy a2 with i_73
    mv      a2, s11
              #                    free s11
              #                    free a2
              #                          jump label: while.head_95 
              #                    store to temp_80_ptr2globl_96 in mem offset legal
    sw      s2,36(sp)
              #                    release s2 with temp_80_ptr2globl_96
              #                    store to temp_81_array_ptr_96 in mem offset legal
    sd      s3,24(sp)
              #                    release s3 with temp_81_array_ptr_96
              #                    store to temp_82_array_ele_96 in mem offset legal
    sw      s6,20(sp)
              #                    release s6 with temp_82_array_ele_96
              #                    store to temp_83_index_ptr_96 in mem offset legal
    sd      s7,8(sp)
              #                    release s7 with temp_83_index_ptr_96
              #                    store to temp_84_arithop_96 in mem offset legal
    sw      s11,4(sp)
              #                    release s11 with temp_84_arithop_96
              #                    store to temp_78_ptr2globl_94 in mem offset_illegal
              #                    occupy a4 with 4060_0
    li      a4, 4060
    add     a4,sp,a4
    sw      a7,0(a4)
              #                    free a4
              #                    release a7 with temp_78_ptr2globl_94
              #                    store to temp_79_cmp_94 in mem offset_illegal
              #                    occupy a7 with 4059_0
    li      a7, 4059
    add     a7,sp,a7
    sb      s1,0(a7)
              #                    free a7
              #                    release s1 with temp_79_cmp_94
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: s_71, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } |     a7:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     s1:Freed { symidx: temp_79_cmp_94, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          ret res_73 
              #                    load from ra_same_0 in mem
              #                    occupy a4 with ra_same_0
    li      a4, 72288
    add     a4,sp,a4
    ld      ra,0(a4)
              #                    free a4
              #                    load from s0_same_0 in mem
              #                    occupy s2 with s0_same_0
    li      s2, 72280
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to res_73 in mem offset_illegal
              #                    occupy a0 with 72268_0
    li      a0, 72268
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with res_73
              #                    occupy a0 with res_73
              #                    load from res_73 in mem

              #                    occupy s3 with res_73
    li      s3, 72268
    add     s3,sp,s3
    lw      a0,0(s3)
              #                    free s3
              #                    occupy s4 with 72296_0
    li      s4, 72296
    li      s4, 72296
    add     sp,s4,sp
              #                    free s4
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: s_71, tracked: true } |     a2:Freed { symidx: i_73, tracked: true } |     a3:Freed { symidx: temp_55_ptr2globl_78, tracked: true } |     a4:Freed { symidx: ra_same_0, tracked: true } |     a5:Freed { symidx: temp_56_ptr2globl_78, tracked: true } |     a6:Freed { symidx: temp_57_cmp_78, tracked: true } |     a7:Freed { symidx: temp_78_ptr2globl_94, tracked: true } |     s1:Freed { symidx: temp_79_cmp_94, tracked: true } |     s2:Freed { symidx: s0_same_0, tracked: true } |     s3:Freed { symidx: res_73, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_85_ret_of_quick_read:4 at 76|temp_86_ret_of_quick_read:4 at 72|temp_87_ptr2globl:4 at 68|temp_88_:1 at 67|none:3 at 64|temp_89_ret_of_getch:4 at 60|ch:4 at 56|temp_90_cmp:1 at 55|temp_91_cmp:1 at 54|temp_92_logic:1 at 53|none:1 at 52|temp_93_ret_of_getch:4 at 48|temp_94_cmp:1 at 47|none:3 at 44|temp_95_ret_of_quick_read:4 at 40|x:4 at 36|temp_96_ret_of_quick_read:4 at 32|y:4 at 28|temp_97_ret_of_same:4 at 24|temp_98_ptr2globl:4 at 20|temp_99_arithop:4 at 16|temp_100_ret_of_quick_read:4 at 12|x:4 at 8|temp_101_ret_of_quick_read:4 at 4|y:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_85_ret_of_quick_read_101 
              #                          alloc i32 temp_86_ret_of_quick_read_101 
              #                          alloc i32 temp_87_ptr2globl_105 
              #                          alloc i1 temp_88__2579 
              #                          alloc i32 temp_89_ret_of_getch_107 
              #                          alloc i32 ch_107 
              #                          alloc i1 temp_90_cmp_109 
              #                          alloc i1 temp_91_cmp_109 
              #                          alloc i1 temp_92_logic_109 
              #                          alloc i32 temp_93_ret_of_getch_111 
              #                          alloc i1 temp_94_cmp_113 
              #                          alloc i32 temp_95_ret_of_quick_read_115 
              #                          alloc i32 x_115 
              #                          alloc i32 temp_96_ret_of_quick_read_115 
              #                          alloc i32 y_115 
              #                          alloc i32 temp_97_ret_of_same_115 
              #                          alloc i32 temp_98_ptr2globl_107 
              #                          alloc i32 temp_99_arithop_107 
              #                          alloc i32 temp_100_ret_of_quick_read_119 
              #                          alloc i32 x_119 
              #                          alloc i32 temp_101_ret_of_quick_read_119 
              #                          alloc i32 y_119 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_85_ret_of_quick_read_101:i32 
              #                          temp_85_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_85_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_85_ret_of_quick_read_101:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_85_ret_of_quick_read_101
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_86_ret_of_quick_read_101:i32 
              #                          temp_86_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_85_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_85_ret_of_quick_read_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_86_ret_of_quick_read_101 in mem offset legal
    sw      a0,72(sp)
              #                          store temp_86_ret_of_quick_read_101:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_86_ret_of_quick_read_101
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_quick_read_101 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_86_ret_of_quick_read_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                          jump label: while.head_106 
    j       .while.head_106
              #                    regtab 
              #                          label while.head_106: 
.while.head_106:
              #                          new_var temp_87_ptr2globl_105:i32 
              #                          temp_87_ptr2globl_105 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_87_ptr2globl_105
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_88__2579:i1 
              #                          temp_88__2579 = icmp i32 Ne temp_87_ptr2globl_105, 0_0 
              #                    occupy a1 with temp_87_ptr2globl_105
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_88__2579
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_88__2579, label while.body_106, label while.exit_106 
              #                    occupy a3 with temp_88__2579
              #                    free a3
              #                    occupy a3 with temp_88__2579
    bnez    a3, .while.body_106
              #                    free a3
    j       .while.exit_106
              #                    regtab     a1:Freed { symidx: temp_87_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_88__2579, tracked: true } | 
              #                          label while.body_106: 
.while.body_106:
              #                          new_var temp_89_ret_of_getch_107:i32 
              #                          temp_89_ret_of_getch_107 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_87_ptr2globl_105 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_87_ptr2globl_105
              #                    store to temp_88__2579 in mem offset legal
    sb      a3,67(sp)
              #                    release a3 with temp_88__2579
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_89_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                          ch_107 = i32 temp_89_ret_of_getch_107 
              #                    occupy a0 with temp_89_ret_of_getch_107
              #                    occupy a1 with ch_107
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_89_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } | 
              #                          label while.head_110: 
.while.head_110:
              #                          new_var temp_90_cmp_109:i1 
              #                          temp_90_cmp_109 = icmp i32 Ne ch_107, 85_0 
              #                    occupy a1 with ch_107
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a3 with temp_90_cmp_109
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_91_cmp_109:i1 
              #                          temp_91_cmp_109 = icmp i32 Ne ch_107, 81_0 
              #                    occupy a1 with ch_107
              #                    occupy a4 with 81_0
    li      a4, 81
              #                    occupy a5 with temp_91_cmp_109
    xor     a5,a1,a4
    snez    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_92_logic_109:i1 
              #                          temp_92_logic_109 = And i1 temp_91_cmp_109, temp_90_cmp_109 
              #                    occupy a5 with temp_91_cmp_109
              #                    occupy a3 with temp_90_cmp_109
              #                    occupy a6 with temp_92_logic_109
    and     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_92_logic_109, label while.body_110, label while.exit_110 
              #                    occupy a6 with temp_92_logic_109
              #                    free a6
              #                    occupy a6 with temp_92_logic_109
    bnez    a6, .while.body_110
              #                    free a6
    j       .while.exit_110
              #                    regtab     a0:Freed { symidx: temp_89_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_90_cmp_109, tracked: true } |     a5:Freed { symidx: temp_91_cmp_109, tracked: true } |     a6:Freed { symidx: temp_92_logic_109, tracked: true } | 
              #                          label while.body_110: 
.while.body_110:
              #                          new_var temp_93_ret_of_getch_111:i32 
              #                          temp_93_ret_of_getch_111 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_89_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_89_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_90_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_90_cmp_109
              #                    store to temp_91_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_91_cmp_109
              #                    store to temp_92_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_92_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_93_ret_of_getch_111 in mem offset legal
    sw      a0,48(sp)
              #                          ch_107 = i32 temp_93_ret_of_getch_111 
              #                    occupy a0 with temp_93_ret_of_getch_111
              #                    occupy a1 with ch_107
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
              #                    store to temp_93_ret_of_getch_111 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_93_ret_of_getch_111
              #                    occupy a0 with _anonymous_of_temp_89_ret_of_getch_107_0
              #                    load from temp_89_ret_of_getch_107 in mem


    lw      a0,60(sp)
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_89_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_90_cmp_109, tracked: true } |     a5:Freed { symidx: temp_91_cmp_109, tracked: true } |     a6:Freed { symidx: temp_92_logic_109, tracked: true } | 
              #                          label while.exit_110: 
.while.exit_110:
              #                          new_var temp_94_cmp_113:i1 
              #                          temp_94_cmp_113 = icmp i32 Eq ch_107, 81_0 
              #                    occupy a1 with ch_107
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_94_cmp_113
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_94_cmp_113, label branch_true_114, label branch_false_114 
              #                    occupy a4 with temp_94_cmp_113
              #                    free a4
              #                    occupy a4 with temp_94_cmp_113
    bnez    a4, .branch_true_114
              #                    free a4
    j       .branch_false_114
              #                    regtab     a0:Freed { symidx: temp_89_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_90_cmp_109, tracked: true } |     a4:Freed { symidx: temp_94_cmp_113, tracked: true } |     a5:Freed { symidx: temp_91_cmp_109, tracked: true } |     a6:Freed { symidx: temp_92_logic_109, tracked: true } | 
              #                          label branch_true_114: 
.branch_true_114:
              #                          new_var temp_95_ret_of_quick_read_115:i32 
              #                          temp_95_ret_of_quick_read_115 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_89_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_89_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_90_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_90_cmp_109
              #                    store to temp_94_cmp_113 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_94_cmp_113
              #                    store to temp_91_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_91_cmp_109
              #                    store to temp_92_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_92_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_95_ret_of_quick_read_115 in mem offset legal
    sw      a0,40(sp)
              #                          x_115 = i32 temp_95_ret_of_quick_read_115 
              #                    occupy a0 with temp_95_ret_of_quick_read_115
              #                    occupy a1 with x_115
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_96_ret_of_quick_read_115:i32 
              #                          temp_96_ret_of_quick_read_115 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_95_ret_of_quick_read_115 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_95_ret_of_quick_read_115
              #                    store to x_115 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with x_115
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_96_ret_of_quick_read_115 in mem offset legal
    sw      a0,32(sp)
              #                          y_115 = i32 temp_96_ret_of_quick_read_115 
              #                    occupy a0 with temp_96_ret_of_quick_read_115
              #                    occupy a1 with y_115
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_97_ret_of_same_115:i32 
              #                          temp_97_ret_of_same_115 =  Call i32 same_0(x_115, y_115) 
              #                    saved register dumping to mem
              #                    store to temp_96_ret_of_quick_read_115 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_96_ret_of_quick_read_115
              #                    store to y_115 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with y_115
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_115_0
              #                    load from x_115 in mem


    lw      a0,36(sp)
              #                    occupy a1 with _anonymous_of_y_115_0
              #                    load from y_115 in mem


    lw      a1,28(sp)
              #                    arg load ended


    call    same
              #                    store to temp_97_ret_of_same_115 in mem offset legal
    sw      a0,24(sp)
              #                           Call void putint_0(temp_97_ret_of_same_115) 
              #                    saved register dumping to mem
              #                    store to temp_97_ret_of_same_115 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_97_ret_of_same_115
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_97_ret_of_same_115_0
              #                    load from temp_97_ret_of_same_115 in mem


    lw      a0,24(sp)
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
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_89_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_90_cmp_109, tracked: true } |     a4:Freed { symidx: temp_94_cmp_113, tracked: true } |     a5:Freed { symidx: temp_91_cmp_109, tracked: true } |     a6:Freed { symidx: temp_92_logic_109, tracked: true } | 
              #                          label branch_false_114: 
.branch_false_114:
              #                          new_var temp_100_ret_of_quick_read_119:i32 
              #                          temp_100_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_89_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_89_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_90_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_90_cmp_109
              #                    store to temp_94_cmp_113 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_94_cmp_113
              #                    store to temp_91_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_91_cmp_109
              #                    store to temp_92_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_92_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_100_ret_of_quick_read_119 in mem offset legal
    sw      a0,12(sp)
              #                          x_119 = i32 temp_100_ret_of_quick_read_119 
              #                    occupy a0 with temp_100_ret_of_quick_read_119
              #                    occupy a1 with x_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_101_ret_of_quick_read_119:i32 
              #                          temp_101_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_100_ret_of_quick_read_119 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_100_ret_of_quick_read_119
              #                    store to x_119 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with x_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_101_ret_of_quick_read_119 in mem offset legal
    sw      a0,4(sp)
              #                          y_119 = i32 temp_101_ret_of_quick_read_119 
              #                    occupy a0 with temp_101_ret_of_quick_read_119
              #                    occupy a1 with y_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_edge_0(x_119, y_119) 
              #                    saved register dumping to mem
              #                    store to temp_101_ret_of_quick_read_119 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_101_ret_of_quick_read_119
              #                    store to y_119 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with y_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_119_0
              #                    load from x_119 in mem


    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_y_119_0
              #                    load from y_119 in mem


    lw      a1,0(sp)
              #                    arg load ended


    call    add_edge
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_98_ptr2globl_107:i32 
              #                          temp_98_ptr2globl_107 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_98_ptr2globl_107
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_99_arithop_107:i32 
              #                          temp_99_arithop_107 = Sub i32 temp_98_ptr2globl_107, 1_0 
              #                    occupy a1 with temp_98_ptr2globl_107
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_99_arithop_107
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_98_ptr2globl_107, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_99_arithop_107, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_99_arithop_107:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_99_arithop_107
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_106 
              #                    store to temp_98_ptr2globl_107 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_98_ptr2globl_107
              #                    store to temp_99_arithop_107 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_99_arithop_107
    j       .while.head_106
              #                    regtab     a1:Freed { symidx: temp_87_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_88__2579, tracked: true } | 
              #                          label while.exit_106: 
.while.exit_106:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_87_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_88__2579, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl inq
              #                          global Array:i32:[Some(1005_0)] inq_0 
    .type inq,@object
inq:
    .zero 4020
    .align 4
    .globl tail
              #                          global i32 tail_0 
    .type tail,@object
tail:
    .word 0
    .align 4
    .globl h
              #                          global i32 h_0 
    .type h,@object
h:
    .word 0
    .align 4
    .globl que
              #                          global Array:i32:[Some(1005_0)] que_0 
    .type que,@object
que:
    .zero 4020
    .align 4
    .globl cnt
              #                          global i32 cnt_0 
    .type cnt,@object
cnt:
    .word 0
    .align 4
    .globl head
              #                          global Array:i32:[Some(1005_0)] head_0 
    .type head,@object
head:
    .zero 4020
    .align 4
    .globl next
              #                          global Array:i32:[Some(5005_0)] next_0 
    .type next,@object
next:
    .zero 20020
    .align 4
    .globl to
              #                          global Array:i32:[Some(5005_0)] to_0 
    .type to,@object
to:
    .zero 20020
    .align 4
    .globl maxm
              #                          global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 5005
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 1005
    .align 4
    .globl m
              #                          global i32 m_0 
    .type m,@object
m:
    .word 0
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 0
