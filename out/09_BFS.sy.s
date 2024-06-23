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
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
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
              #                    occupy a7 with _anonymous_of_temp_2_cmp_25_0
              #                    load from temp_2_cmp_25 in mem
    lb      a7,38(sp)
              #                    occupy a2 with _anonymous_of_x_22_0
              #                    load from x_22 in mem


    lw      a2,44(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_25_0
              #                    load from temp_1_cmp_25 in mem
    lb      a5,39(sp)
              #                    occupy a3 with _anonymous_of_f_22_0
              #                    load from f_22 in mem


    lw      a3,40(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_22_0
              #                    load from temp_0_ret_of_getch_22 in mem


    lw      a0,52(sp)
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
              #                    mem layout:|ra_add_edge:8 at 152|s0_add_edge:8 at 144|from:4 at 140|To:4 at 136|temp_15_ptr2globl:4 at 132|none:4 at 128|temp_16_index_ptr:8 at 120|temp_17_ptr2globl:4 at 116|none:4 at 112|temp_18_index_ptr:8 at 104|temp_19_array_ptr:8 at 96|temp_20_array_ele:4 at 92|none:4 at 88|temp_21_index_ptr:8 at 80|temp_22_ptr2globl:4 at 76|temp_23_ptr2globl:4 at 72|temp_24_arithop:4 at 68|temp_25_ptr2globl:4 at 64|temp_26_index_ptr:8 at 56|temp_27_ptr2globl:4 at 52|none:4 at 48|temp_28_index_ptr:8 at 40|temp_29_array_ptr:8 at 32|temp_30_array_ele:4 at 28|none:4 at 24|temp_31_index_ptr:8 at 16|temp_32_ptr2globl:4 at 12|temp_33_ptr2globl:4 at 8|temp_34_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-160
              #                    store to ra_add_edge_0 in mem offset legal
    sd      ra,152(sp)
              #                    store to s0_add_edge_0 in mem offset legal
    sd      s0,144(sp)
    addi    s0,sp,160
              #                          alloc i32 temp_15_ptr2globl_43 
              #                          alloc ptr->i32 temp_16_index_ptr_43 
              #                          alloc i32 temp_17_ptr2globl_43 
              #                          alloc ptr->i32 temp_18_index_ptr_43 
              #                          alloc ptr->i32 temp_19_array_ptr_43 
              #                          alloc i32 temp_20_array_ele_43 
              #                          alloc ptr->i32 temp_21_index_ptr_43 
              #                          alloc i32 temp_22_ptr2globl_43 
              #                          alloc i32 temp_23_ptr2globl_43 
              #                          alloc i32 temp_24_arithop_43 
              #                          alloc i32 temp_25_ptr2globl_43 
              #                          alloc ptr->i32 temp_26_index_ptr_43 
              #                          alloc i32 temp_27_ptr2globl_43 
              #                          alloc ptr->i32 temp_28_index_ptr_43 
              #                          alloc ptr->i32 temp_29_array_ptr_43 
              #                          alloc i32 temp_30_array_ele_43 
              #                          alloc ptr->i32 temp_31_index_ptr_43 
              #                          alloc i32 temp_32_ptr2globl_43 
              #                          alloc i32 temp_33_ptr2globl_43 
              #                          alloc i32 temp_34_arithop_43 
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
              #                          temp_16_index_ptr_43 = getelementptr *to_0:ptr->i32 [Some(temp_15_ptr2globl_43)] 
              #                    occupy a4 with temp_16_index_ptr_43
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a3 with temp_15_ptr2globl_43
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a3
              #                    free a5
              #                    free a3
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *to_0
              #                       load label to as ptr to reg
    la      a7, to
              #                    occupy reg a7 with *to_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          store To_41:i32 temp_16_index_ptr_43:ptr->i32 
              #                    occupy a4 with temp_16_index_ptr_43
              #                    occupy a1 with To_41
    sw      a1,0(a4)
              #                    free a1
              #                    free a4
              #                          mu *to_0:122 
              #                          *to_0 = chi *to_0:122 
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
              #                          temp_18_index_ptr_43 = getelementptr *next_0:ptr->i32 [Some(temp_17_ptr2globl_43)] 
              #                    occupy s3 with temp_18_index_ptr_43
    li      s3, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy s2 with temp_17_ptr2globl_43
              #                    occupy s4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s4,a5,s2
              #                    free a5
              #                    free s2
    add     s3,s3,s4
              #                    free s4
    slli s3,s3,2
              #                    occupy s5 with *next_0
              #                       load label next as ptr to reg
    la      s5, next
              #                    occupy reg s5 with *next_0
    add     s3,s3,s5
              #                    free s5
              #                    free s3
              #                          new_var temp_19_array_ptr_43:ptr->i32 
              #                          temp_19_array_ptr_43 = getelementptr *head_0:ptr->i32 [Some(from_41)] 
              #                    occupy s6 with temp_19_array_ptr_43
    li      s6, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a5,a0
              #                    free a5
              #                    free a0
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *head_0
              #                       load label head as ptr to reg
    la      s8, head
              #                    occupy reg s8 with *head_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_20_array_ele_43:i32 
              #                          temp_20_array_ele_43 = load temp_19_array_ptr_43:ptr->i32 
              #                    occupy s6 with temp_19_array_ptr_43
              #                    occupy s9 with temp_20_array_ele_43
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          store temp_20_array_ele_43:i32 temp_18_index_ptr_43:ptr->i32 
              #                    occupy s3 with temp_18_index_ptr_43
              #                    occupy s9 with temp_20_array_ele_43
    sw      s9,0(s3)
              #                    free s9
              #                    free s3
              #                          mu *next_0:137 
              #                          *next_0 = chi *next_0:137 
              #                          new_var temp_21_index_ptr_43:ptr->i32 
              #                          temp_21_index_ptr_43 = getelementptr *head_0:ptr->i32 [Some(from_41)] 
              #                    occupy s10 with temp_21_index_ptr_43
    li      s10, 0
              #                    found literal reg Some(a5) already exist with 1_0
              #                    occupy a5 with 1_0
              #                    occupy a0 with from_41
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,a5,a0
              #                    free a5
              #                    free a0
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
              #                    occupy a2 with *head_0
              #                       load label head as ptr to reg
    la      a2, head
              #                    occupy reg a2 with *head_0
    add     s10,s10,a2
              #                    free a2
              #                    free s10
              #                          new_var temp_22_ptr2globl_43:i32 
              #                          temp_22_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a5 with temp_22_ptr2globl_43
    lw      a5,0(a2)
              #                    free a5
              #                    free a2
              #                          store temp_22_ptr2globl_43:i32 temp_21_index_ptr_43:ptr->i32 
              #                    occupy s10 with temp_21_index_ptr_43
              #                    occupy a5 with temp_22_ptr2globl_43
    sw      a5,0(s10)
              #                    free a5
              #                    free s10
              #                          mu *head_0:146 
              #                          *head_0 = chi *head_0:146 
              #                          new_var temp_23_ptr2globl_43:i32 
              #                          temp_23_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a6 with temp_23_ptr2globl_43
    lw      a6,0(a2)
              #                    free a6
              #                    free a2
              #                          new_var temp_24_arithop_43:i32 
              #                          temp_24_arithop_43 = Add i32 temp_23_ptr2globl_43, 1_0 
              #                    occupy a6 with temp_23_ptr2globl_43
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a7 with temp_24_arithop_43
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_24_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy a7 with temp_24_arithop_43
    sw      a7,0(a2)
              #                    free a7
              #                    free a2
              #                          new_var temp_25_ptr2globl_43:i32 
              #                          temp_25_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a2 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a2, cnt
              #                    occupy reg a2 with *cnt_0
              #                    occupy s1 with temp_25_ptr2globl_43
    lw      s1,0(a2)
              #                    free s1
              #                    free a2
              #                          new_var temp_26_index_ptr_43:ptr->i32 
              #                          temp_26_index_ptr_43 = getelementptr *to_0:ptr->i32 [Some(temp_25_ptr2globl_43)] 
              #                    occupy a2 with temp_26_index_ptr_43
    li      a2, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s1 with temp_25_ptr2globl_43
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,s4,s1
              #                    free s4
              #                    free s1
    add     a2,a2,s5
              #                    free s5
    slli a2,a2,2
              #                    occupy s4 with *to_0
              #                       load label to as ptr to reg
    la      s4, to
              #                    occupy reg s4 with *to_0
    add     a2,a2,s4
              #                    free s4
              #                    free a2
              #                          store from_41:i32 temp_26_index_ptr_43:ptr->i32 
              #                    occupy a2 with temp_26_index_ptr_43
              #                    occupy a0 with from_41
    sw      a0,0(a2)
              #                    free a0
              #                    free a2
              #                          mu *to_0:162 
              #                          *to_0 = chi *to_0:162 
              #                          new_var temp_27_ptr2globl_43:i32 
              #                          temp_27_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy s4 with *cnt_0
              #                       load label cnt as ptr to reg
    la      s4, cnt
              #                    occupy reg s4 with *cnt_0
              #                    occupy s5 with temp_27_ptr2globl_43
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_28_index_ptr_43:ptr->i32 
              #                          temp_28_index_ptr_43 = getelementptr *next_0:ptr->i32 [Some(temp_27_ptr2globl_43)] 
              #                    occupy s4 with temp_28_index_ptr_43
    li      s4, 0
              #                    occupy s7 with 1_0
    li      s7, 1
              #                    occupy s5 with temp_27_ptr2globl_43
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,s7,s5
              #                    free s7
              #                    free s5
    add     s4,s4,s8
              #                    free s8
    slli s4,s4,2
              #                    occupy s7 with *next_0
              #                       load label next as ptr to reg
    la      s7, next
              #                    occupy reg s7 with *next_0
    add     s4,s4,s7
              #                    free s7
              #                    free s4
              #                          new_var temp_29_array_ptr_43:ptr->i32 
              #                          temp_29_array_ptr_43 = getelementptr *head_0:ptr->i32 [Some(To_41)] 
              #                    occupy s7 with temp_29_array_ptr_43
    li      s7, 0
              #                    occupy s8 with 1_0
    li      s8, 1
              #                    occupy a1 with To_41
              #                    occupy s11 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s11,s8,a1
              #                    free s8
              #                    free a1
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
              #                    occupy s8 with *head_0
              #                       load label head as ptr to reg
    la      s8, head
              #                    occupy reg s8 with *head_0
    add     s7,s7,s8
              #                    free s8
              #                    free s7
              #                          new_var temp_30_array_ele_43:i32 
              #                          temp_30_array_ele_43 = load temp_29_array_ptr_43:ptr->i32 
              #                    occupy s7 with temp_29_array_ptr_43
              #                    occupy s8 with temp_30_array_ele_43
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          store temp_30_array_ele_43:i32 temp_28_index_ptr_43:ptr->i32 
              #                    occupy s4 with temp_28_index_ptr_43
              #                    occupy s8 with temp_30_array_ele_43
    sw      s8,0(s4)
              #                    free s8
              #                    free s4
              #                          mu *next_0:177 
              #                          *next_0 = chi *next_0:177 
              #                          new_var temp_31_index_ptr_43:ptr->i32 
              #                          temp_31_index_ptr_43 = getelementptr *head_0:ptr->i32 [Some(To_41)] 
              #                    occupy s11 with temp_31_index_ptr_43
    li      s11, 0
              #                    store to from_41 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with from_41
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a1 with To_41
              #                    store to temp_26_index_ptr_43 in mem offset legal
    sd      a2,56(sp)
              #                    release a2 with temp_26_index_ptr_43
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a0 with *head_0
              #                       load label head as ptr to reg
    la      a0, head
              #                    occupy reg a0 with *head_0
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_32_ptr2globl_43:i32 
              #                          temp_32_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a2 with temp_32_ptr2globl_43
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          store temp_32_ptr2globl_43:i32 temp_31_index_ptr_43:ptr->i32 
              #                    occupy s11 with temp_31_index_ptr_43
              #                    occupy a2 with temp_32_ptr2globl_43
    sw      a2,0(s11)
              #                    free a2
              #                    free s11
              #                          mu *head_0:186 
              #                          *head_0 = chi *head_0:186 
              #                          new_var temp_33_ptr2globl_43:i32 
              #                          temp_33_ptr2globl_43 = load *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    store to To_41 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with To_41
              #                    occupy a1 with temp_33_ptr2globl_43
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_34_arithop_43:i32 
              #                          temp_34_arithop_43 = Add i32 temp_33_ptr2globl_43, 1_0 
              #                    occupy a1 with temp_33_ptr2globl_43
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_32_ptr2globl_43 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_32_ptr2globl_43
              #                    occupy a2 with temp_34_arithop_43
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          store temp_34_arithop_43:i32 *cnt_0:ptr->i32 
              #                    occupy a0 with *cnt_0
              #                       load label cnt as ptr to reg
    la      a0, cnt
              #                    occupy reg a0 with *cnt_0
              #                    occupy a2 with temp_34_arithop_43
    sw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                    regtab     a1:Freed { symidx: temp_33_ptr2globl_43, tracked: true } |     a2:Freed { symidx: temp_34_arithop_43, tracked: true } |     a3:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a4:Freed { symidx: temp_16_index_ptr_43, tracked: true } |     a5:Freed { symidx: temp_22_ptr2globl_43, tracked: true } |     a6:Freed { symidx: temp_23_ptr2globl_43, tracked: true } |     a7:Freed { symidx: temp_24_arithop_43, tracked: true } |     s10:Freed { symidx: temp_21_index_ptr_43, tracked: true } |     s11:Freed { symidx: temp_31_index_ptr_43, tracked: true } |     s1:Freed { symidx: temp_25_ptr2globl_43, tracked: true } |     s2:Freed { symidx: temp_17_ptr2globl_43, tracked: true } |     s3:Freed { symidx: temp_18_index_ptr_43, tracked: true } |     s4:Freed { symidx: temp_28_index_ptr_43, tracked: true } |     s5:Freed { symidx: temp_27_ptr2globl_43, tracked: true } |     s6:Freed { symidx: temp_19_array_ptr_43, tracked: true } |     s7:Freed { symidx: temp_29_array_ptr_43, tracked: true } |     s8:Freed { symidx: temp_30_array_ele_43, tracked: true } |     s9:Freed { symidx: temp_20_array_ele_43, tracked: true } | 
              #                    regtab 
              #                          Define init_0 [] -> init_ret_0 
    .globl init
    .type init,@function
init:
              #                    mem layout:|ra_init:8 at 32|s0_init:8 at 24|i:4 at 20|temp_35_cmp:1 at 19|none:3 at 16|temp_36_index_ptr:8 at 8|temp_37_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_init_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_init_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 i_53 
              #                          alloc i1 temp_35_cmp_55 
              #                          alloc ptr->i32 temp_36_index_ptr_57 
              #                          alloc i32 temp_37_arithop_57 
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
              #                          new_var temp_35_cmp_55:i1 
              #                          temp_35_cmp_55 = icmp i32 Slt i_53, 1005_0 
              #                    occupy a0 with i_53
              #                    occupy a1 with 1005_0
    li      a1, 1005
              #                    occupy a2 with temp_35_cmp_55
    slt     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_35_cmp_55, label while.body_56, label while.exit_56 
              #                    occupy a2 with temp_35_cmp_55
              #                    free a2
              #                    occupy a2 with temp_35_cmp_55
    bnez    a2, .while.body_56
              #                    free a2
    j       .while.exit_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55, tracked: true } | 
              #                          label while.body_56: 
.while.body_56:
              #                          new_var temp_36_index_ptr_57:ptr->i32 
              #                          temp_36_index_ptr_57 = getelementptr *head_0:ptr->i32 [Some(i_53)] 
              #                    occupy a1 with temp_36_index_ptr_57
    li      a1, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a0 with i_53
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a4,a3,a0
              #                    free a3
              #                    free a0
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
              #                    occupy a5 with *head_0
              #                       load label head as ptr to reg
    la      a5, head
              #                    occupy reg a5 with *head_0
    add     a1,a1,a5
              #                    free a5
              #                    free a1
              #                          store -1_0:i32 temp_36_index_ptr_57:ptr->i32 
              #                    occupy a1 with temp_36_index_ptr_57
              #                    occupy a6 with -1_0
    li      a6, -1
    sw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          mu *head_0:209 
              #                          *head_0 = chi *head_0:209 
              #                          new_var temp_37_arithop_57:i32 
              #                          temp_37_arithop_57 = Add i32 i_53, 1_0 
              #                    occupy a0 with i_53
              #                    found literal reg Some(a3) already exist with 1_0
              #                    occupy a3 with 1_0
              #                    occupy a7 with temp_37_arithop_57
    add     a7,a0,a3
              #                    free a0
              #                    free a3
              #                    free a7
              #                          i_53 = i32 temp_37_arithop_57 
              #                    occupy a7 with temp_37_arithop_57
              #                    occupy a0 with i_53
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_56 
              #                    store to temp_36_index_ptr_57 in mem offset legal
    sd      a1,8(sp)
              #                    release a1 with temp_36_index_ptr_57
              #                    store to temp_37_arithop_57 in mem offset legal
    sw      a7,4(sp)
              #                    release a7 with temp_37_arithop_57
              #                    store to temp_35_cmp_55 in mem offset legal
    sb      a2,19(sp)
              #                    release a2 with temp_35_cmp_55
    j       .while.head_56
              #                    regtab     a0:Freed { symidx: i_53, tracked: true } |     a2:Freed { symidx: temp_35_cmp_55, tracked: true } | 
              #                          label while.exit_56: 
.while.exit_56:
              #                    regtab 
              #                          Define inqueue_0 [x_60] -> inqueue_ret_0 
    .globl inqueue
    .type inqueue,@function
inqueue:
              #                    mem layout:|ra_inqueue:8 at 48|s0_inqueue:8 at 40|x:4 at 36|none:4 at 32|temp_38_index_ptr:8 at 24|temp_39_ptr2globl:4 at 20|temp_40_arithop:4 at 16|temp_41_ptr2globl:4 at 12|none:4 at 8|temp_42_index_ptr:8 at 0
    addi    sp,sp,-56
              #                    store to ra_inqueue_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_inqueue_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc ptr->i32 temp_38_index_ptr_62 
              #                          alloc i32 temp_39_ptr2globl_62 
              #                          alloc i32 temp_40_arithop_62 
              #                          alloc i32 temp_41_ptr2globl_62 
              #                          alloc ptr->i32 temp_42_index_ptr_62 
              #                    regtab     a0:Freed { symidx: x_60, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_38_index_ptr_62:ptr->i32 
              #                          temp_38_index_ptr_62 = getelementptr *inq_0:ptr->i32 [Some(x_60)] 
              #                    occupy a1 with temp_38_index_ptr_62
    li      a1, 0
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a0 with x_60
              #                    occupy a3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a3,a2,a0
              #                    free a2
              #                    free a0
    add     a1,a1,a3
              #                    free a3
    slli a1,a1,2
              #                    occupy a4 with *inq_0
              #                       load label inq as ptr to reg
    la      a4, inq
              #                    occupy reg a4 with *inq_0
    add     a1,a1,a4
              #                    free a4
              #                    free a1
              #                          store 1_0:i32 temp_38_index_ptr_62:ptr->i32 
              #                    occupy a1 with temp_38_index_ptr_62
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          mu *inq_0:219 
              #                          *inq_0 = chi *inq_0:219 
              #                          new_var temp_39_ptr2globl_62:i32 
              #                          temp_39_ptr2globl_62 = load *tail_0:ptr->i32 
              #                    occupy a5 with *tail_0
              #                       load label tail as ptr to reg
    la      a5, tail
              #                    occupy reg a5 with *tail_0
              #                    occupy a6 with temp_39_ptr2globl_62
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_40_arithop_62:i32 
              #                          temp_40_arithop_62 = Add i32 temp_39_ptr2globl_62, 1_0 
              #                    occupy a6 with temp_39_ptr2globl_62
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a7 with temp_40_arithop_62
    add     a7,a6,a2
              #                    free a6
              #                    free a2
              #                    free a7
              #                          store temp_40_arithop_62:i32 *tail_0:ptr->i32 
              #                    occupy s1 with *tail_0
              #                       load label tail as ptr to reg
    la      s1, tail
              #                    occupy reg s1 with *tail_0
              #                    occupy a7 with temp_40_arithop_62
    sw      a7,0(s1)
              #                    free a7
              #                    free s1
              #                          new_var temp_41_ptr2globl_62:i32 
              #                          temp_41_ptr2globl_62 = load *tail_0:ptr->i32 
              #                    occupy s2 with *tail_0
              #                       load label tail as ptr to reg
    la      s2, tail
              #                    occupy reg s2 with *tail_0
              #                    occupy s3 with temp_41_ptr2globl_62
    lw      s3,0(s2)
              #                    free s3
              #                    free s2
              #                          new_var temp_42_index_ptr_62:ptr->i32 
              #                          temp_42_index_ptr_62 = getelementptr *que_0:ptr->i32 [Some(temp_41_ptr2globl_62)] 
              #                    occupy s4 with temp_42_index_ptr_62
    li      s4, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s3 with temp_41_ptr2globl_62
              #                    occupy s5 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s5,a2,s3
              #                    free a2
              #                    free s3
    add     s4,s4,s5
              #                    free s5
    slli s4,s4,2
              #                    occupy s6 with *que_0
              #                       load label que as ptr to reg
    la      s6, que
              #                    occupy reg s6 with *que_0
    add     s4,s4,s6
              #                    free s6
              #                    free s4
              #                          store x_60:i32 temp_42_index_ptr_62:ptr->i32 
              #                    occupy s4 with temp_42_index_ptr_62
              #                    occupy a0 with x_60
    sw      a0,0(s4)
              #                    free a0
              #                    free s4
              #                          mu *que_0:235 
              #                          *que_0 = chi *que_0:235 
              #                    regtab     a0:Freed { symidx: x_60, tracked: true } |     a1:Freed { symidx: temp_38_index_ptr_62, tracked: true } |     a6:Freed { symidx: temp_39_ptr2globl_62, tracked: true } |     a7:Freed { symidx: temp_40_arithop_62, tracked: true } |     s3:Freed { symidx: temp_41_ptr2globl_62, tracked: true } |     s4:Freed { symidx: temp_42_index_ptr_62, tracked: true } | 
              #                    regtab 
              #                          Define pop_queue_0 [] -> pop_queue_ret_0 
    .globl pop_queue
    .type pop_queue,@function
pop_queue:
              #                    mem layout:|ra_pop_queue:8 at 64|s0_pop_queue:8 at 56|temp_43_ptr2globl:4 at 52|temp_44_arithop:4 at 48|temp_45_ptr2globl:4 at 44|none:4 at 40|temp_46_array_ptr:8 at 32|temp_47_array_ele:4 at 28|res:4 at 24|temp_48_ptr2globl:4 at 20|none:4 at 16|temp_49_array_ptr:8 at 8|temp_50_array_ele:4 at 4|none:4 at 0
    addi    sp,sp,-72
              #                    store to ra_pop_queue_0 in mem offset legal
    sd      ra,64(sp)
              #                    store to s0_pop_queue_0 in mem offset legal
    sd      s0,56(sp)
    addi    s0,sp,72
              #                          alloc i32 temp_43_ptr2globl_67 
              #                          alloc i32 temp_44_arithop_67 
              #                          alloc i32 temp_45_ptr2globl_67 
              #                          alloc ptr->i32 temp_46_array_ptr_67 
              #                          alloc i32 temp_47_array_ele_67 
              #                          alloc i32 res_67 
              #                          alloc i32 temp_48_ptr2globl_67 
              #                          alloc ptr->i32 temp_49_array_ptr_67 
              #                          alloc i32 temp_50_array_ele_67 
              #                    regtab 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_43_ptr2globl_67:i32 
              #                          temp_43_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy a0 with *h_0
              #                       load label h as ptr to reg
    la      a0, h
              #                    occupy reg a0 with *h_0
              #                    occupy a1 with temp_43_ptr2globl_67
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_44_arithop_67:i32 
              #                          temp_44_arithop_67 = Add i32 temp_43_ptr2globl_67, 1_0 
              #                    occupy a1 with temp_43_ptr2globl_67
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_44_arithop_67
    add     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_44_arithop_67:i32 *h_0:ptr->i32 
              #                    occupy a4 with *h_0
              #                       load label h as ptr to reg
    la      a4, h
              #                    occupy reg a4 with *h_0
              #                    occupy a3 with temp_44_arithop_67
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          new_var temp_45_ptr2globl_67:i32 
              #                          temp_45_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy a5 with *h_0
              #                       load label h as ptr to reg
    la      a5, h
              #                    occupy reg a5 with *h_0
              #                    occupy a6 with temp_45_ptr2globl_67
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_46_array_ptr_67:ptr->i32 
              #                          temp_46_array_ptr_67 = getelementptr *que_0:ptr->i32 [Some(temp_45_ptr2globl_67)] 
              #                    occupy a7 with temp_46_array_ptr_67
    li      a7, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy a6 with temp_45_ptr2globl_67
              #                    occupy s1 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s1,a2,a6
              #                    free a2
              #                    free a6
    add     a7,a7,s1
              #                    free s1
    slli a7,a7,2
              #                    occupy s2 with *que_0
              #                       load label que as ptr to reg
    la      s2, que
              #                    occupy reg s2 with *que_0
    add     a7,a7,s2
              #                    free s2
              #                    free a7
              #                          new_var temp_47_array_ele_67:i32 
              #                          temp_47_array_ele_67 = load temp_46_array_ptr_67:ptr->i32 
              #                    occupy a7 with temp_46_array_ptr_67
              #                    occupy s3 with temp_47_array_ele_67
    lw      s3,0(a7)
              #                    free s3
              #                    free a7
              #                          res_67 = i32 temp_47_array_ele_67 
              #                    occupy s3 with temp_47_array_ele_67
              #                    occupy s4 with res_67
    mv      s4, s3
              #                    free s3
              #                    free s4
              #                          new_var temp_48_ptr2globl_67:i32 
              #                          temp_48_ptr2globl_67 = load *h_0:ptr->i32 
              #                    occupy s5 with *h_0
              #                       load label h as ptr to reg
    la      s5, h
              #                    occupy reg s5 with *h_0
              #                    occupy s6 with temp_48_ptr2globl_67
    lw      s6,0(s5)
              #                    free s6
              #                    free s5
              #                          new_var temp_49_array_ptr_67:ptr->i32 
              #                          temp_49_array_ptr_67 = getelementptr *que_0:ptr->i32 [Some(temp_48_ptr2globl_67)] 
              #                    occupy s7 with temp_49_array_ptr_67
    li      s7, 0
              #                    found literal reg Some(a2) already exist with 1_0
              #                    occupy a2 with 1_0
              #                    occupy s6 with temp_48_ptr2globl_67
              #                    occupy s8 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s8,a2,s6
              #                    free a2
              #                    free s6
    add     s7,s7,s8
              #                    free s8
    slli s7,s7,2
              #                    occupy s9 with *que_0
              #                       load label que as ptr to reg
    la      s9, que
              #                    occupy reg s9 with *que_0
    add     s7,s7,s9
              #                    free s9
              #                    free s7
              #                          new_var temp_50_array_ele_67:i32 
              #                          temp_50_array_ele_67 = load temp_49_array_ptr_67:ptr->i32 
              #                    occupy s7 with temp_49_array_ptr_67
              #                    occupy s10 with temp_50_array_ele_67
    lw      s10,0(s7)
              #                    free s10
              #                    free s7
              #                          ret temp_50_array_ele_67 
              #                    load from ra_pop_queue_0 in mem
    ld      ra,64(sp)
              #                    load from s0_pop_queue_0 in mem
    ld      s0,56(sp)
              #                    store to temp_50_array_ele_67 in mem offset legal
    sw      s10,4(sp)
              #                    release s10 with temp_50_array_ele_67
              #                    occupy a0 with temp_50_array_ele_67
              #                    load from temp_50_array_ele_67 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_43_ptr2globl_67, tracked: true } |     a3:Freed { symidx: temp_44_arithop_67, tracked: true } |     a6:Freed { symidx: temp_45_ptr2globl_67, tracked: true } |     a7:Freed { symidx: temp_46_array_ptr_67, tracked: true } |     s3:Freed { symidx: temp_47_array_ele_67, tracked: true } |     s4:Freed { symidx: res_67, tracked: true } |     s6:Freed { symidx: temp_48_ptr2globl_67, tracked: true } |     s7:Freed { symidx: temp_49_array_ptr_67, tracked: true } | 
              #                    regtab 
              #                          Define same_0 [s_71, t_71] -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 176|s0_same:8 at 168|s:4 at 164|t:4 at 160|res:4 at 156|temp_51_ptr2globl:4 at 152|temp_52_ptr2globl:4 at 148|temp_53_cmp:1 at 147|none:3 at 144|temp_54_ret_of_pop_queue:4 at 140|x:4 at 136|temp_55_cmp:1 at 135|none:7 at 128|temp_56_array_ptr:8 at 120|temp_57_array_ele:4 at 116|i:4 at 112|temp_58_cmp:1 at 111|none:7 at 104|temp_59_array_ptr:8 at 96|temp_60_array_ele:4 at 92|none:4 at 88|temp_61_array_ptr:8 at 80|temp_62_array_ele:4 at 76|temp_63_booltrans:1 at 75|temp_64_logicnot:1 at 74|none:2 at 72|temp_65_array_ptr:8 at 64|temp_66_array_ele:4 at 60|none:4 at 56|temp_67_array_ptr:8 at 48|temp_68_array_ele:4 at 44|i:4 at 40|temp_69_ptr2globl:4 at 36|temp_70_cmp:1 at 35|none:3 at 32|temp_71_array_ptr:8 at 24|temp_72_array_ele:4 at 20|none:4 at 16|temp_73_index_ptr:8 at 8|temp_74_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-184
              #                    store to ra_same_0 in mem offset legal
    sd      ra,176(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,168(sp)
    addi    s0,sp,184
              #                          alloc i32 res_73 
              #                          alloc i32 temp_51_ptr2globl_78 
              #                          alloc i32 temp_52_ptr2globl_78 
              #                          alloc i1 temp_53_cmp_78 
              #                          alloc i32 temp_54_ret_of_pop_queue_80 
              #                          alloc i32 x_80 
              #                          alloc i1 temp_55_cmp_82 
              #                          alloc ptr->i32 temp_56_array_ptr_80 
              #                          alloc i32 temp_57_array_ele_80 
              #                          alloc i32 i_80 
              #                          alloc i1 temp_58_cmp_86 
              #                          alloc ptr->i32 temp_59_array_ptr_89 
              #                          alloc i32 temp_60_array_ele_89 
              #                          alloc ptr->i32 temp_61_array_ptr_89 
              #                          alloc i32 temp_62_array_ele_89 
              #                          alloc i1 temp_63_booltrans_89 
              #                          alloc i1 temp_64_logicnot_89 
              #                          alloc ptr->i32 temp_65_array_ptr_89 
              #                          alloc i32 temp_66_array_ele_89 
              #                          alloc ptr->i32 temp_67_array_ptr_88 
              #                          alloc i32 temp_68_array_ele_88 
              #                          alloc i32 i_73 
              #                          alloc i32 temp_69_ptr2globl_94 
              #                          alloc i1 temp_70_cmp_94 
              #                          alloc ptr->i32 temp_71_array_ptr_96 
              #                          alloc i32 temp_72_array_ele_96 
              #                          alloc ptr->i32 temp_73_index_ptr_96 
              #                          alloc i32 temp_74_arithop_96 
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
              #                    store to s_71 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with s_71
              #                    store to t_71 in mem offset legal
    sw      a1,160(sp)
              #                    release a1 with t_71
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_s_71_0
              #                    load from s_71 in mem


    lw      a0,164(sp)
              #                    arg load ended


    call    inqueue
              #                          res_73 = i32 0_0 
              #                    occupy a0 with res_73
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_79 
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } | 
              #                          label while.head_79: 
.while.head_79:
              #                          new_var temp_51_ptr2globl_78:i32 
              #                          temp_51_ptr2globl_78 = load *tail_0:ptr->i32 
              #                    occupy a1 with *tail_0
              #                       load label tail as ptr to reg
    la      a1, tail
              #                    occupy reg a1 with *tail_0
              #                    occupy a2 with temp_51_ptr2globl_78
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_52_ptr2globl_78:i32 
              #                          temp_52_ptr2globl_78 = load *h_0:ptr->i32 
              #                    occupy a3 with *h_0
              #                       load label h as ptr to reg
    la      a3, h
              #                    occupy reg a3 with *h_0
              #                    occupy a4 with temp_52_ptr2globl_78
    lw      a4,0(a3)
              #                    free a4
              #                    free a3
              #                          new_var temp_53_cmp_78:i1 
              #                          temp_53_cmp_78 = icmp i32 Slt temp_52_ptr2globl_78, temp_51_ptr2globl_78 
              #                    occupy a4 with temp_52_ptr2globl_78
              #                    occupy a2 with temp_51_ptr2globl_78
              #                    occupy a5 with temp_53_cmp_78
    slt     a5,a4,a2
              #                    free a4
              #                    free a2
              #                    free a5
              #                          br i1 temp_53_cmp_78, label while.body_79, label while.exit_79 
              #                    occupy a5 with temp_53_cmp_78
              #                    free a5
              #                    occupy a5 with temp_53_cmp_78
    bnez    a5, .while.body_79
              #                    free a5
    j       .while.exit_79
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } | 
              #                          label while.body_79: 
.while.body_79:
              #                          new_var temp_54_ret_of_pop_queue_80:i32 
              #                          temp_54_ret_of_pop_queue_80 =  Call i32 pop_queue_0() 
              #                    saved register dumping to mem
              #                    store to res_73 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with res_73
              #                    store to temp_51_ptr2globl_78 in mem offset legal
    sw      a2,152(sp)
              #                    release a2 with temp_51_ptr2globl_78
              #                    store to temp_52_ptr2globl_78 in mem offset legal
    sw      a4,148(sp)
              #                    release a4 with temp_52_ptr2globl_78
              #                    store to temp_53_cmp_78 in mem offset legal
    sb      a5,147(sp)
              #                    release a5 with temp_53_cmp_78
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    pop_queue
              #                    store to temp_54_ret_of_pop_queue_80 in mem offset legal
    sw      a0,140(sp)
              #                          x_80 = i32 temp_54_ret_of_pop_queue_80 
              #                    occupy a0 with temp_54_ret_of_pop_queue_80
              #                    occupy a1 with x_80
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_55_cmp_82:i1 
              #                          temp_55_cmp_82 = icmp i32 Eq x_80, t_71 
              #                    occupy a1 with x_80
              #                    occupy a2 with t_71
              #                    load from t_71 in mem


    lw      a2,160(sp)
              #                    occupy a3 with temp_55_cmp_82
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_55_cmp_82, label branch_true_83, label branch_false_83 
              #                    occupy a3 with temp_55_cmp_82
              #                    free a3
              #                    occupy a3 with temp_55_cmp_82
    bnez    a3, .branch_true_83
              #                    free a3
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } | 
              #                          label branch_true_83: 
.branch_true_83:
              #                          res_73 = i32 1_0 
              #                    occupy a4 with res_73
    li      a4, 1
              #                    free a4
              #                          jump label: branch_false_83 
              #                    store to res_73 in mem offset legal
    sw      a4,156(sp)
              #                    release a4 with res_73
    j       .branch_false_83
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } | 
              #                          label branch_false_83: 
.branch_false_83:
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_56_array_ptr_80:ptr->i32 
              #                          temp_56_array_ptr_80 = getelementptr *head_0:ptr->i32 [Some(x_80)] 
              #                    occupy a4 with temp_56_array_ptr_80
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a1 with x_80
              #                    occupy a6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     a6,a5,a1
              #                    free a5
              #                    free a1
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with *head_0
              #                       load label head as ptr to reg
    la      a7, head
              #                    occupy reg a7 with *head_0
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_57_array_ele_80:i32 
              #                          temp_57_array_ele_80 = load temp_56_array_ptr_80:ptr->i32 
              #                    occupy a4 with temp_56_array_ptr_80
              #                    occupy s1 with temp_57_array_ele_80
    lw      s1,0(a4)
              #                    free s1
              #                    free a4
              #                          i_80 = i32 temp_57_array_ele_80 
              #                    occupy s1 with temp_57_array_ele_80
              #                    occupy s2 with i_80
    mv      s2, s1
              #                    free s1
              #                    free s2
              #                          jump label: while.head_87 
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } |     a4:Freed { symidx: temp_56_array_ptr_80, tracked: true } |     s1:Freed { symidx: temp_57_array_ele_80, tracked: true } |     s2:Freed { symidx: i_80, tracked: true } | 
              #                          label while.head_87: 
.while.head_87:
              #                          new_var temp_58_cmp_86:i1 
              #                          temp_58_cmp_86 = icmp i32 Ne i_80, -1_0 
              #                    occupy s2 with i_80
              #                    occupy a5 with -1_0
    li      a5, -1
              #                    occupy a6 with temp_58_cmp_86
    xor     a6,s2,a5
    snez    a6, a6
              #                    free s2
              #                    free a5
              #                    free a6
              #                          br i1 temp_58_cmp_86, label while.body_87, label while.head_79 
              #                    occupy a6 with temp_58_cmp_86
              #                    free a6
              #                    occupy a6 with temp_58_cmp_86
    bnez    a6, .while.body_87
              #                    free a6
              #                    store to temp_54_ret_of_pop_queue_80 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_54_ret_of_pop_queue_80
              #                    store to x_80 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with x_80
              #                    store to temp_55_cmp_82 in mem offset legal
    sb      a3,135(sp)
              #                    release a3 with temp_55_cmp_82
              #                    store to t_71 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with t_71
              #                    store to i_80 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with i_80
              #                    store to temp_56_array_ptr_80 in mem offset legal
    sd      a4,120(sp)
              #                    release a4 with temp_56_array_ptr_80
              #                    store to temp_57_array_ele_80 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with temp_57_array_ele_80
              #                    store to temp_58_cmp_86 in mem offset legal
    sb      a6,111(sp)
              #                    release a6 with temp_58_cmp_86
              #                    occupy a0 with _anonymous_of_res_73_0
              #                    load from res_73 in mem


    lw      a0,156(sp)
    j       .while.head_79
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } |     a4:Freed { symidx: temp_56_array_ptr_80, tracked: true } |     a6:Freed { symidx: temp_58_cmp_86, tracked: true } |     s1:Freed { symidx: temp_57_array_ele_80, tracked: true } |     s2:Freed { symidx: i_80, tracked: true } | 
              #                          label while.body_87: 
.while.body_87:
              #                          new_var temp_59_array_ptr_89:ptr->i32 
              #                          temp_59_array_ptr_89 = getelementptr *to_0:ptr->i32 [Some(i_80)] 
              #                    occupy a5 with temp_59_array_ptr_89
    li      a5, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy s2 with i_80
              #                    occupy s3 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s3,a7,s2
              #                    free a7
              #                    free s2
    add     a5,a5,s3
              #                    free s3
    slli a5,a5,2
              #                    occupy s4 with *to_0
              #                       load label to as ptr to reg
    la      s4, to
              #                    occupy reg s4 with *to_0
    add     a5,a5,s4
              #                    free s4
              #                    free a5
              #                          new_var temp_60_array_ele_89:i32 
              #                          temp_60_array_ele_89 = load temp_59_array_ptr_89:ptr->i32 
              #                    occupy a5 with temp_59_array_ptr_89
              #                    occupy s5 with temp_60_array_ele_89
    lw      s5,0(a5)
              #                    free s5
              #                    free a5
              #                          new_var temp_61_array_ptr_89:ptr->i32 
              #                          temp_61_array_ptr_89 = getelementptr *inq_0:ptr->i32 [Some(temp_60_array_ele_89)] 
              #                    occupy s6 with temp_61_array_ptr_89
    li      s6, 0
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy s5 with temp_60_array_ele_89
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,a7,s5
              #                    free a7
              #                    free s5
    add     s6,s6,s7
              #                    free s7
    slli s6,s6,2
              #                    occupy s8 with *inq_0
              #                       load label inq as ptr to reg
    la      s8, inq
              #                    occupy reg s8 with *inq_0
    add     s6,s6,s8
              #                    free s8
              #                    free s6
              #                          new_var temp_62_array_ele_89:i32 
              #                          temp_62_array_ele_89 = load temp_61_array_ptr_89:ptr->i32 
              #                    occupy s6 with temp_61_array_ptr_89
              #                    occupy s9 with temp_62_array_ele_89
    lw      s9,0(s6)
              #                    free s9
              #                    free s6
              #                          new_var temp_63_booltrans_89:i1 
              #                          temp_63_booltrans_89 = icmp i1 Ne temp_62_array_ele_89, 0_0 
              #                    occupy s9 with temp_62_array_ele_89
              #                    occupy s10 with 0_0
    li      s10, 0
              #                    occupy s11 with temp_63_booltrans_89
    xor     s11,s9,s10
    snez    s11, s11
              #                    free s9
              #                    free s10
              #                    free s11
              #                          new_var temp_64_logicnot_89:i1 
              #                          temp_64_logicnot_89 = xor i1 temp_63_booltrans_89, true 
              #                    occupy s11 with temp_63_booltrans_89
              #                    occupy a7 with temp_64_logicnot_89
    seqz    a7, s11
              #                    free s11
              #                    free a7
              #                          br i1 temp_64_logicnot_89, label branch_true_90, label branch_false_90 
              #                    occupy a7 with temp_64_logicnot_89
              #                    free a7
              #                    occupy a7 with temp_64_logicnot_89
    bnez    a7, .branch_true_90
              #                    free a7
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } |     a4:Freed { symidx: temp_56_array_ptr_80, tracked: true } |     a5:Freed { symidx: temp_59_array_ptr_89, tracked: true } |     a6:Freed { symidx: temp_58_cmp_86, tracked: true } |     a7:Freed { symidx: temp_64_logicnot_89, tracked: true } |     s11:Freed { symidx: temp_63_booltrans_89, tracked: true } |     s1:Freed { symidx: temp_57_array_ele_80, tracked: true } |     s2:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_89, tracked: true } |     s6:Freed { symidx: temp_61_array_ptr_89, tracked: true } |     s9:Freed { symidx: temp_62_array_ele_89, tracked: true } | 
              #                          label branch_true_90: 
.branch_true_90:
              #                          new_var temp_65_array_ptr_89:ptr->i32 
              #                          temp_65_array_ptr_89 = getelementptr *to_0:ptr->i32 [Some(i_80)] 
              #                    occupy s3 with temp_65_array_ptr_89
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s2 with i_80
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s2
              #                    free s4
              #                    free s2
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy s8 with *to_0
              #                       load label to as ptr to reg
    la      s8, to
              #                    occupy reg s8 with *to_0
    add     s3,s3,s8
              #                    free s8
              #                    free s3
              #                          new_var temp_66_array_ele_89:i32 
              #                          temp_66_array_ele_89 = load temp_65_array_ptr_89:ptr->i32 
              #                    occupy s3 with temp_65_array_ptr_89
              #                    occupy s10 with temp_66_array_ele_89
    lw      s10,0(s3)
              #                    free s10
              #                    free s3
              #                           Call void inqueue_0(temp_66_array_ele_89) 
              #                    saved register dumping to mem
              #                    store to temp_57_array_ele_80 in mem offset legal
    sw      s1,116(sp)
              #                    release s1 with temp_57_array_ele_80
              #                    store to i_80 in mem offset legal
    sw      s2,112(sp)
              #                    release s2 with i_80
              #                    store to temp_65_array_ptr_89 in mem offset legal
    sd      s3,64(sp)
              #                    release s3 with temp_65_array_ptr_89
              #                    store to temp_60_array_ele_89 in mem offset legal
    sw      s5,92(sp)
              #                    release s5 with temp_60_array_ele_89
              #                    store to temp_61_array_ptr_89 in mem offset legal
    sd      s6,80(sp)
              #                    release s6 with temp_61_array_ptr_89
              #                    store to temp_62_array_ele_89 in mem offset legal
    sw      s9,76(sp)
              #                    release s9 with temp_62_array_ele_89
              #                    store to temp_66_array_ele_89 in mem offset legal
    sw      s10,60(sp)
              #                    release s10 with temp_66_array_ele_89
              #                    store to temp_63_booltrans_89 in mem offset legal
    sb      s11,75(sp)
              #                    release s11 with temp_63_booltrans_89
              #                    store to temp_54_ret_of_pop_queue_80 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_54_ret_of_pop_queue_80
              #                    store to x_80 in mem offset legal
    sw      a1,136(sp)
              #                    release a1 with x_80
              #                    store to t_71 in mem offset legal
    sw      a2,160(sp)
              #                    release a2 with t_71
              #                    store to temp_55_cmp_82 in mem offset legal
    sb      a3,135(sp)
              #                    release a3 with temp_55_cmp_82
              #                    store to temp_56_array_ptr_80 in mem offset legal
    sd      a4,120(sp)
              #                    release a4 with temp_56_array_ptr_80
              #                    store to temp_59_array_ptr_89 in mem offset legal
    sd      a5,96(sp)
              #                    release a5 with temp_59_array_ptr_89
              #                    store to temp_58_cmp_86 in mem offset legal
    sb      a6,111(sp)
              #                    release a6 with temp_58_cmp_86
              #                    store to temp_64_logicnot_89 in mem offset legal
    sb      a7,74(sp)
              #                    release a7 with temp_64_logicnot_89
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_66_array_ele_89_0
              #                    load from temp_66_array_ele_89 in mem


    lw      a0,60(sp)
              #                    arg load ended


    call    inqueue
              #                          jump label: branch_false_90 
              #                    occupy a0 with _anonymous_of_temp_54_ret_of_pop_queue_80_0
              #                    load from temp_54_ret_of_pop_queue_80 in mem


    lw      a0,140(sp)
              #                    occupy a7 with _anonymous_of_temp_64_logicnot_89_0
              #                    load from temp_64_logicnot_89 in mem
    lb      a7,74(sp)
              #                    occupy a1 with _anonymous_of_x_80_0
              #                    load from x_80 in mem


    lw      a1,136(sp)
              #                    occupy s9 with _anonymous_of_temp_62_array_ele_89_0
              #                    load from temp_62_array_ele_89 in mem


    lw      s9,76(sp)
              #                    occupy s5 with _anonymous_of_temp_60_array_ele_89_0
              #                    load from temp_60_array_ele_89 in mem


    lw      s5,92(sp)
              #                    occupy a5 with _anonymous_of_temp_59_array_ptr_89_0
              #                    load from temp_59_array_ptr_89 in mem
    ld      a5,96(sp)
              #                    occupy s11 with _anonymous_of_temp_63_booltrans_89_0
              #                    load from temp_63_booltrans_89 in mem
    lb      s11,75(sp)
              #                    occupy a3 with _anonymous_of_temp_55_cmp_82_0
              #                    load from temp_55_cmp_82 in mem
    lb      a3,135(sp)
              #                    occupy a2 with _anonymous_of_t_71_0
              #                    load from t_71 in mem


    lw      a2,160(sp)
              #                    occupy s6 with _anonymous_of_temp_61_array_ptr_89_0
              #                    load from temp_61_array_ptr_89 in mem
    ld      s6,80(sp)
              #                    occupy s2 with _anonymous_of_i_80_0
              #                    load from i_80 in mem


    lw      s2,112(sp)
              #                    occupy a4 with _anonymous_of_temp_56_array_ptr_80_0
              #                    load from temp_56_array_ptr_80 in mem
    ld      a4,120(sp)
              #                    occupy s1 with _anonymous_of_temp_57_array_ele_80_0
              #                    load from temp_57_array_ele_80 in mem


    lw      s1,116(sp)
              #                    occupy a6 with _anonymous_of_temp_58_cmp_86_0
              #                    load from temp_58_cmp_86 in mem
    lb      a6,111(sp)
    j       .branch_false_90
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } |     a4:Freed { symidx: temp_56_array_ptr_80, tracked: true } |     a5:Freed { symidx: temp_59_array_ptr_89, tracked: true } |     a6:Freed { symidx: temp_58_cmp_86, tracked: true } |     a7:Freed { symidx: temp_64_logicnot_89, tracked: true } |     s11:Freed { symidx: temp_63_booltrans_89, tracked: true } |     s1:Freed { symidx: temp_57_array_ele_80, tracked: true } |     s2:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_89, tracked: true } |     s6:Freed { symidx: temp_61_array_ptr_89, tracked: true } |     s9:Freed { symidx: temp_62_array_ele_89, tracked: true } | 
              #                          label branch_false_90: 
.branch_false_90:
              #                    regtab     a0:Freed { symidx: temp_54_ret_of_pop_queue_80, tracked: true } |     a1:Freed { symidx: x_80, tracked: true } |     a2:Freed { symidx: t_71, tracked: true } |     a3:Freed { symidx: temp_55_cmp_82, tracked: true } |     a4:Freed { symidx: temp_56_array_ptr_80, tracked: true } |     a5:Freed { symidx: temp_59_array_ptr_89, tracked: true } |     a6:Freed { symidx: temp_58_cmp_86, tracked: true } |     a7:Freed { symidx: temp_64_logicnot_89, tracked: true } |     s11:Freed { symidx: temp_63_booltrans_89, tracked: true } |     s1:Freed { symidx: temp_57_array_ele_80, tracked: true } |     s2:Freed { symidx: i_80, tracked: true } |     s5:Freed { symidx: temp_60_array_ele_89, tracked: true } |     s6:Freed { symidx: temp_61_array_ptr_89, tracked: true } |     s9:Freed { symidx: temp_62_array_ele_89, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          new_var temp_67_array_ptr_88:ptr->i32 
              #                          temp_67_array_ptr_88 = getelementptr *next_0:ptr->i32 [Some(i_80)] 
              #                    occupy s3 with temp_67_array_ptr_88
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s2 with i_80
              #                    occupy s7 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s7,s4,s2
              #                    free s4
              #                    free s2
    add     s3,s3,s7
              #                    free s7
    slli s3,s3,2
              #                    occupy s8 with *next_0
              #                       load label next as ptr to reg
    la      s8, next
              #                    occupy reg s8 with *next_0
    add     s3,s3,s8
              #                    free s8
              #                    free s3
              #                          new_var temp_68_array_ele_88:i32 
              #                          temp_68_array_ele_88 = load temp_67_array_ptr_88:ptr->i32 
              #                    occupy s3 with temp_67_array_ptr_88
              #                    occupy s10 with temp_68_array_ele_88
    lw      s10,0(s3)
              #                    free s10
              #                    free s3
              #                          i_80 = i32 temp_68_array_ele_88 
              #                    occupy s10 with temp_68_array_ele_88
              #                    occupy s2 with i_80
    mv      s2, s10
              #                    free s10
              #                    free s2
              #                          jump label: while.head_87 
              #                    store to temp_68_array_ele_88 in mem offset legal
    sw      s10,44(sp)
              #                    release s10 with temp_68_array_ele_88
              #                    store to temp_64_logicnot_89 in mem offset legal
    sb      a7,74(sp)
              #                    release a7 with temp_64_logicnot_89
              #                    store to temp_62_array_ele_89 in mem offset legal
    sw      s9,76(sp)
              #                    release s9 with temp_62_array_ele_89
              #                    store to temp_60_array_ele_89 in mem offset legal
    sw      s5,92(sp)
              #                    release s5 with temp_60_array_ele_89
              #                    store to temp_59_array_ptr_89 in mem offset legal
    sd      a5,96(sp)
              #                    release a5 with temp_59_array_ptr_89
              #                    store to temp_63_booltrans_89 in mem offset legal
    sb      s11,75(sp)
              #                    release s11 with temp_63_booltrans_89
              #                    store to temp_61_array_ptr_89 in mem offset legal
    sd      s6,80(sp)
              #                    release s6 with temp_61_array_ptr_89
              #                    store to temp_67_array_ptr_88 in mem offset legal
    sd      s3,48(sp)
              #                    release s3 with temp_67_array_ptr_88
              #                    store to temp_58_cmp_86 in mem offset legal
    sb      a6,111(sp)
              #                    release a6 with temp_58_cmp_86
    j       .while.head_87
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } | 
              #                          label while.exit_79: 
.while.exit_79:
              #                          i_73 = i32 0_0 
              #                    occupy a1 with i_73
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_95 
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: i_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } | 
              #                          label while.head_95: 
.while.head_95:
              #                          new_var temp_69_ptr2globl_94:i32 
              #                          temp_69_ptr2globl_94 = load *tail_0:ptr->i32 
              #                    occupy a3 with *tail_0
              #                       load label tail as ptr to reg
    la      a3, tail
              #                    occupy reg a3 with *tail_0
              #                    occupy a6 with temp_69_ptr2globl_94
    lw      a6,0(a3)
              #                    free a6
              #                    free a3
              #                          new_var temp_70_cmp_94:i1 
              #                          temp_70_cmp_94 = icmp i32 Sle i_73, temp_69_ptr2globl_94 
              #                    occupy a1 with i_73
              #                    occupy a6 with temp_69_ptr2globl_94
              #                    occupy a7 with temp_70_cmp_94
    slt     a7,a6,a1
    xori    a7,a7,1
              #                    free a1
              #                    free a6
              #                    free a7
              #                          br i1 temp_70_cmp_94, label while.body_95, label while.exit_95 
              #                    occupy a7 with temp_70_cmp_94
              #                    free a7
              #                    occupy a7 with temp_70_cmp_94
    bnez    a7, .while.body_95
              #                    free a7
    j       .while.exit_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: i_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } |     a6:Freed { symidx: temp_69_ptr2globl_94, tracked: true } |     a7:Freed { symidx: temp_70_cmp_94, tracked: true } | 
              #                          label while.body_95: 
.while.body_95:
              #                          new_var temp_71_array_ptr_96:ptr->i32 
              #                          temp_71_array_ptr_96 = getelementptr *que_0:ptr->i32 [Some(i_73)] 
              #                    occupy a3 with temp_71_array_ptr_96
    li      a3, 0
              #                    occupy s1 with 1_0
    li      s1, 1
              #                    occupy a1 with i_73
              #                    occupy s2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s2,s1,a1
              #                    free s1
              #                    free a1
    add     a3,a3,s2
              #                    free s2
    slli a3,a3,2
              #                    occupy s3 with *que_0
              #                       load label que as ptr to reg
    la      s3, que
              #                    occupy reg s3 with *que_0
    add     a3,a3,s3
              #                    free s3
              #                    free a3
              #                          new_var temp_72_array_ele_96:i32 
              #                          temp_72_array_ele_96 = load temp_71_array_ptr_96:ptr->i32 
              #                    occupy a3 with temp_71_array_ptr_96
              #                    occupy s4 with temp_72_array_ele_96
    lw      s4,0(a3)
              #                    free s4
              #                    free a3
              #                          new_var temp_73_index_ptr_96:ptr->i32 
              #                          temp_73_index_ptr_96 = getelementptr *inq_0:ptr->i32 [Some(temp_72_array_ele_96)] 
              #                    occupy s5 with temp_73_index_ptr_96
    li      s5, 0
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s4 with temp_72_array_ele_96
              #                    occupy s6 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    mul     s6,s1,s4
              #                    free s1
              #                    free s4
    add     s5,s5,s6
              #                    free s6
    slli s5,s5,2
              #                    occupy s7 with *inq_0
              #                       load label inq as ptr to reg
    la      s7, inq
              #                    occupy reg s7 with *inq_0
    add     s5,s5,s7
              #                    free s7
              #                    free s5
              #                          store 0_0:i32 temp_73_index_ptr_96:ptr->i32 
              #                    occupy s5 with temp_73_index_ptr_96
              #                    occupy s8 with 0_0
    li      s8, 0
    sw      s8,0(s5)
              #                    free s8
              #                    free s5
              #                          mu *inq_0:370 
              #                          *inq_0 = chi *inq_0:370 
              #                          new_var temp_74_arithop_96:i32 
              #                          temp_74_arithop_96 = Add i32 i_73, 1_0 
              #                    occupy a1 with i_73
              #                    found literal reg Some(s1) already exist with 1_0
              #                    occupy s1 with 1_0
              #                    occupy s9 with temp_74_arithop_96
    add     s9,a1,s1
              #                    free a1
              #                    free s1
              #                    free s9
              #                          i_73 = i32 temp_74_arithop_96 
              #                    occupy s9 with temp_74_arithop_96
              #                    occupy a1 with i_73
    mv      a1, s9
              #                    free s9
              #                    free a1
              #                          jump label: while.head_95 
              #                    store to temp_70_cmp_94 in mem offset legal
    sb      a7,35(sp)
              #                    release a7 with temp_70_cmp_94
              #                    store to temp_74_arithop_96 in mem offset legal
    sw      s9,4(sp)
              #                    release s9 with temp_74_arithop_96
              #                    store to temp_73_index_ptr_96 in mem offset legal
    sd      s5,8(sp)
              #                    release s5 with temp_73_index_ptr_96
              #                    store to temp_71_array_ptr_96 in mem offset legal
    sd      a3,24(sp)
              #                    release a3 with temp_71_array_ptr_96
              #                    store to temp_72_array_ele_96 in mem offset legal
    sw      s4,20(sp)
              #                    release s4 with temp_72_array_ele_96
              #                    store to temp_69_ptr2globl_94 in mem offset legal
    sw      a6,36(sp)
              #                    release a6 with temp_69_ptr2globl_94
    j       .while.head_95
              #                    regtab     a0:Freed { symidx: res_73, tracked: true } |     a1:Freed { symidx: i_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } |     a6:Freed { symidx: temp_69_ptr2globl_94, tracked: true } |     a7:Freed { symidx: temp_70_cmp_94, tracked: true } | 
              #                          label while.exit_95: 
.while.exit_95:
              #                          ret res_73 
              #                    load from ra_same_0 in mem
    ld      ra,176(sp)
              #                    load from s0_same_0 in mem
    ld      s0,168(sp)
              #                    store to res_73 in mem offset legal
    sw      a0,156(sp)
              #                    release a0 with res_73
              #                    occupy a0 with res_73
              #                    load from res_73 in mem


    lw      a0,156(sp)
    addi    sp,sp,184
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: i_73, tracked: true } |     a2:Freed { symidx: temp_51_ptr2globl_78, tracked: true } |     a4:Freed { symidx: temp_52_ptr2globl_78, tracked: true } |     a5:Freed { symidx: temp_53_cmp_78, tracked: true } |     a6:Freed { symidx: temp_69_ptr2globl_94, tracked: true } |     a7:Freed { symidx: temp_70_cmp_94, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_75_ret_of_quick_read:4 at 76|temp_76_ret_of_quick_read:4 at 72|temp_77_ptr2globl:4 at 68|temp_78_:1 at 67|none:3 at 64|temp_79_ret_of_getch:4 at 60|ch:4 at 56|temp_80_cmp:1 at 55|temp_81_cmp:1 at 54|temp_82_logic:1 at 53|none:1 at 52|temp_83_ret_of_getch:4 at 48|temp_84_cmp:1 at 47|none:3 at 44|temp_85_ret_of_quick_read:4 at 40|x:4 at 36|temp_86_ret_of_quick_read:4 at 32|y:4 at 28|temp_87_ret_of_same:4 at 24|temp_88_ptr2globl:4 at 20|temp_89_arithop:4 at 16|temp_90_ret_of_quick_read:4 at 12|x:4 at 8|temp_91_ret_of_quick_read:4 at 4|y:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_75_ret_of_quick_read_101 
              #                          alloc i32 temp_76_ret_of_quick_read_101 
              #                          alloc i32 temp_77_ptr2globl_105 
              #                          alloc i1 temp_78__2579 
              #                          alloc i32 temp_79_ret_of_getch_107 
              #                          alloc i32 ch_107 
              #                          alloc i1 temp_80_cmp_109 
              #                          alloc i1 temp_81_cmp_109 
              #                          alloc i1 temp_82_logic_109 
              #                          alloc i32 temp_83_ret_of_getch_111 
              #                          alloc i1 temp_84_cmp_113 
              #                          alloc i32 temp_85_ret_of_quick_read_115 
              #                          alloc i32 x_115 
              #                          alloc i32 temp_86_ret_of_quick_read_115 
              #                          alloc i32 y_115 
              #                          alloc i32 temp_87_ret_of_same_115 
              #                          alloc i32 temp_88_ptr2globl_107 
              #                          alloc i32 temp_89_arithop_107 
              #                          alloc i32 temp_90_ret_of_quick_read_119 
              #                          alloc i32 x_119 
              #                          alloc i32 temp_91_ret_of_quick_read_119 
              #                          alloc i32 y_119 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_75_ret_of_quick_read_101:i32 
              #                          temp_75_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_75_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                          store temp_75_ret_of_quick_read_101:i32 *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a0 with temp_75_ret_of_quick_read_101
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_76_ret_of_quick_read_101:i32 
              #                          temp_76_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_75_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_75_ret_of_quick_read_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_76_ret_of_quick_read_101 in mem offset legal
    sw      a0,72(sp)
              #                          store temp_76_ret_of_quick_read_101:i32 *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a0 with temp_76_ret_of_quick_read_101
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                           Call void init_0() 
              #                    saved register dumping to mem
              #                    store to temp_76_ret_of_quick_read_101 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_76_ret_of_quick_read_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    init
              #                          jump label: while.head_106 
    j       .while.head_106
              #                    regtab 
              #                          label while.head_106: 
.while.head_106:
              #                          new_var temp_77_ptr2globl_105:i32 
              #                          temp_77_ptr2globl_105 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_77_ptr2globl_105
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_78__2579:i1 
              #                          temp_78__2579 = icmp i32 Ne temp_77_ptr2globl_105, 0_0 
              #                    occupy a1 with temp_77_ptr2globl_105
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_78__2579
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_78__2579, label while.body_106, label while.exit_106 
              #                    occupy a3 with temp_78__2579
              #                    free a3
              #                    occupy a3 with temp_78__2579
    bnez    a3, .while.body_106
              #                    free a3
    j       .while.exit_106
              #                    regtab     a1:Freed { symidx: temp_77_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_78__2579, tracked: true } | 
              #                          label while.body_106: 
.while.body_106:
              #                          new_var temp_79_ret_of_getch_107:i32 
              #                          temp_79_ret_of_getch_107 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_77_ptr2globl_105 in mem offset legal
    sw      a1,68(sp)
              #                    release a1 with temp_77_ptr2globl_105
              #                    store to temp_78__2579 in mem offset legal
    sb      a3,67(sp)
              #                    release a3 with temp_78__2579
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_79_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                          ch_107 = i32 temp_79_ret_of_getch_107 
              #                    occupy a0 with temp_79_ret_of_getch_107
              #                    occupy a1 with ch_107
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } | 
              #                          label while.head_110: 
.while.head_110:
              #                          new_var temp_80_cmp_109:i1 
              #                          temp_80_cmp_109 = icmp i32 Ne ch_107, 85_0 
              #                    occupy a1 with ch_107
              #                    occupy a2 with 85_0
    li      a2, 85
              #                    occupy a3 with temp_80_cmp_109
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                          new_var temp_81_cmp_109:i1 
              #                          temp_81_cmp_109 = icmp i32 Ne ch_107, 81_0 
              #                    occupy a1 with ch_107
              #                    occupy a4 with 81_0
    li      a4, 81
              #                    occupy a5 with temp_81_cmp_109
    xor     a5,a1,a4
    snez    a5, a5
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_82_logic_109:i1 
              #                          temp_82_logic_109 = And i1 temp_81_cmp_109, temp_80_cmp_109 
              #                    occupy a5 with temp_81_cmp_109
              #                    occupy a3 with temp_80_cmp_109
              #                    occupy a6 with temp_82_logic_109
    and     a6,a5,a3
              #                    free a5
              #                    free a3
              #                    free a6
              #                          br i1 temp_82_logic_109, label while.body_110, label while.exit_110 
              #                    occupy a6 with temp_82_logic_109
              #                    free a6
              #                    occupy a6 with temp_82_logic_109
    bnez    a6, .while.body_110
              #                    free a6
    j       .while.exit_110
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_80_cmp_109, tracked: true } |     a5:Freed { symidx: temp_81_cmp_109, tracked: true } |     a6:Freed { symidx: temp_82_logic_109, tracked: true } | 
              #                          label while.body_110: 
.while.body_110:
              #                          new_var temp_83_ret_of_getch_111:i32 
              #                          temp_83_ret_of_getch_111 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_79_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_79_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_80_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_80_cmp_109
              #                    store to temp_81_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_81_cmp_109
              #                    store to temp_82_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_82_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_83_ret_of_getch_111 in mem offset legal
    sw      a0,48(sp)
              #                          ch_107 = i32 temp_83_ret_of_getch_111 
              #                    occupy a0 with temp_83_ret_of_getch_111
              #                    occupy a1 with ch_107
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_110 
              #                    store to temp_83_ret_of_getch_111 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_83_ret_of_getch_111
              #                    occupy a0 with _anonymous_of_temp_79_ret_of_getch_107_0
              #                    load from temp_79_ret_of_getch_107 in mem


    lw      a0,60(sp)
    j       .while.head_110
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_80_cmp_109, tracked: true } |     a5:Freed { symidx: temp_81_cmp_109, tracked: true } |     a6:Freed { symidx: temp_82_logic_109, tracked: true } | 
              #                          label while.exit_110: 
.while.exit_110:
              #                          new_var temp_84_cmp_113:i1 
              #                          temp_84_cmp_113 = icmp i32 Eq ch_107, 81_0 
              #                    occupy a1 with ch_107
              #                    occupy a2 with 81_0
    li      a2, 81
              #                    occupy a4 with temp_84_cmp_113
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_84_cmp_113, label branch_true_114, label branch_false_114 
              #                    occupy a4 with temp_84_cmp_113
              #                    free a4
              #                    occupy a4 with temp_84_cmp_113
    bnez    a4, .branch_true_114
              #                    free a4
    j       .branch_false_114
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_80_cmp_109, tracked: true } |     a4:Freed { symidx: temp_84_cmp_113, tracked: true } |     a5:Freed { symidx: temp_81_cmp_109, tracked: true } |     a6:Freed { symidx: temp_82_logic_109, tracked: true } | 
              #                          label branch_true_114: 
.branch_true_114:
              #                          new_var temp_85_ret_of_quick_read_115:i32 
              #                          temp_85_ret_of_quick_read_115 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_79_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_79_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_80_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_80_cmp_109
              #                    store to temp_84_cmp_113 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_84_cmp_113
              #                    store to temp_81_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_81_cmp_109
              #                    store to temp_82_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_82_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_85_ret_of_quick_read_115 in mem offset legal
    sw      a0,40(sp)
              #                          x_115 = i32 temp_85_ret_of_quick_read_115 
              #                    occupy a0 with temp_85_ret_of_quick_read_115
              #                    occupy a1 with x_115
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_86_ret_of_quick_read_115:i32 
              #                          temp_86_ret_of_quick_read_115 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_85_ret_of_quick_read_115 in mem offset legal
    sw      a0,40(sp)
              #                    release a0 with temp_85_ret_of_quick_read_115
              #                    store to x_115 in mem offset legal
    sw      a1,36(sp)
              #                    release a1 with x_115
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_86_ret_of_quick_read_115 in mem offset legal
    sw      a0,32(sp)
              #                          y_115 = i32 temp_86_ret_of_quick_read_115 
              #                    occupy a0 with temp_86_ret_of_quick_read_115
              #                    occupy a1 with y_115
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_87_ret_of_same_115:i32 
              #                          temp_87_ret_of_same_115 =  Call i32 same_0(x_115, y_115) 
              #                    saved register dumping to mem
              #                    store to temp_86_ret_of_quick_read_115 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_86_ret_of_quick_read_115
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
              #                    store to temp_87_ret_of_same_115 in mem offset legal
    sw      a0,24(sp)
              #                           Call void putint_0(temp_87_ret_of_same_115) 
              #                    saved register dumping to mem
              #                    store to temp_87_ret_of_same_115 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_87_ret_of_same_115
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_87_ret_of_same_115_0
              #                    load from temp_87_ret_of_same_115 in mem


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
              #                    regtab     a0:Freed { symidx: temp_79_ret_of_getch_107, tracked: true } |     a1:Freed { symidx: ch_107, tracked: true } |     a3:Freed { symidx: temp_80_cmp_109, tracked: true } |     a4:Freed { symidx: temp_84_cmp_113, tracked: true } |     a5:Freed { symidx: temp_81_cmp_109, tracked: true } |     a6:Freed { symidx: temp_82_logic_109, tracked: true } | 
              #                          label branch_false_114: 
.branch_false_114:
              #                          new_var temp_90_ret_of_quick_read_119:i32 
              #                          temp_90_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_79_ret_of_getch_107 in mem offset legal
    sw      a0,60(sp)
              #                    release a0 with temp_79_ret_of_getch_107
              #                    store to ch_107 in mem offset legal
    sw      a1,56(sp)
              #                    release a1 with ch_107
              #                    store to temp_80_cmp_109 in mem offset legal
    sb      a3,55(sp)
              #                    release a3 with temp_80_cmp_109
              #                    store to temp_84_cmp_113 in mem offset legal
    sb      a4,47(sp)
              #                    release a4 with temp_84_cmp_113
              #                    store to temp_81_cmp_109 in mem offset legal
    sb      a5,54(sp)
              #                    release a5 with temp_81_cmp_109
              #                    store to temp_82_logic_109 in mem offset legal
    sb      a6,53(sp)
              #                    release a6 with temp_82_logic_109
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_90_ret_of_quick_read_119 in mem offset legal
    sw      a0,12(sp)
              #                          x_119 = i32 temp_90_ret_of_quick_read_119 
              #                    occupy a0 with temp_90_ret_of_quick_read_119
              #                    occupy a1 with x_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_91_ret_of_quick_read_119:i32 
              #                          temp_91_ret_of_quick_read_119 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_90_ret_of_quick_read_119 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_90_ret_of_quick_read_119
              #                    store to x_119 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with x_119
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_91_ret_of_quick_read_119 in mem offset legal
    sw      a0,4(sp)
              #                          y_119 = i32 temp_91_ret_of_quick_read_119 
              #                    occupy a0 with temp_91_ret_of_quick_read_119
              #                    occupy a1 with y_119
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void add_edge_0(x_119, y_119) 
              #                    saved register dumping to mem
              #                    store to temp_91_ret_of_quick_read_119 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_91_ret_of_quick_read_119
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
              #                          new_var temp_88_ptr2globl_107:i32 
              #                          temp_88_ptr2globl_107 = load *m_0:ptr->i32 
              #                    occupy a0 with *m_0
              #                       load label m as ptr to reg
    la      a0, m
              #                    occupy reg a0 with *m_0
              #                    occupy a1 with temp_88_ptr2globl_107
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_89_arithop_107:i32 
              #                          temp_89_arithop_107 = Sub i32 temp_88_ptr2globl_107, 1_0 
              #                    occupy a1 with temp_88_ptr2globl_107
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_89_arithop_107
              #                    regtab:    a0:Freed { symidx: *m_0, tracked: false } |     a1:Occupied { symidx: temp_88_ptr2globl_107, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_89_arithop_107, tracked: true, occupy_count: 1 } | 


    sub     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          store temp_89_arithop_107:i32 *m_0:ptr->i32 
              #                    occupy a4 with *m_0
              #                       load label m as ptr to reg
    la      a4, m
              #                    occupy reg a4 with *m_0
              #                    occupy a3 with temp_89_arithop_107
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          jump label: while.head_106 
              #                    store to temp_89_arithop_107 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_89_arithop_107
              #                    store to temp_88_ptr2globl_107 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_88_ptr2globl_107
    j       .while.head_106
              #                    regtab     a1:Freed { symidx: temp_77_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_78__2579, tracked: true } | 
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
              #                    regtab     a1:Freed { symidx: temp_77_ptr2globl_105, tracked: true } |     a3:Freed { symidx: temp_78__2579, tracked: true } | 
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
