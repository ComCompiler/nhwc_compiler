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
              #                          alloc i32 temp_0_ret_of_getch_21 
              #                          alloc i32 ch_21 
              #                          alloc i32 x_21 
              #                          alloc i32 f_21 
              #                          alloc i1 temp_1_cmp_24 
              #                          alloc i1 temp_2_cmp_24 
              #                          alloc i1 temp_3_logic_24 
              #                          alloc i1 temp_4_cmp_27 
              #                          alloc i32 temp_5_ret_of_getch_26 
              #                          alloc i1 temp_6_cmp_31 
              #                          alloc i1 temp_7_cmp_31 
              #                          alloc i1 temp_8_logic_31 
              #                          alloc i32 temp_9_arithop_33 
              #                          alloc i32 temp_10_arithop_33 
              #                          alloc i32 temp_11_arithop_33 
              #                          alloc i32 temp_12_ret_of_getch_33 
              #                          alloc i1 temp_13__416 
              #                          alloc i32 temp_14__36 
              #                    regtab 
              #                          label L9_0: 
.L9_0:
              #                          new_var temp_0_ret_of_getch_21:i32 
              #                          temp_0_ret_of_getch_21 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_0_ret_of_getch_21 in mem offset legal
    sw      a0,52(sp)
              #                          ch_21 = i32 temp_0_ret_of_getch_21 
              #                    occupy a0 with temp_0_ret_of_getch_21
              #                    occupy a1 with ch_21
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          x_21 = i32 0_0 
              #                    occupy a2 with x_21
    li      a2, 0
              #                    free a2
              #                          f_21 = i32 0_0 
              #                    occupy a3 with f_21
    li      a3, 0
              #                    free a3
              #                          jump label: while.head_25 
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } | 
              #                          label while.head_25: 
.while.head_25:
              #                          new_var temp_1_cmp_24:i1 
              #                          temp_1_cmp_24 = icmp i32 Sgt ch_21, 57_0 
              #                    occupy a1 with ch_21
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a5 with temp_1_cmp_24
    slt     a5,a4,a1
              #                    free a1
              #                    free a4
              #                    free a5
              #                          new_var temp_2_cmp_24:i1 
              #                          temp_2_cmp_24 = icmp i32 Slt ch_21, 48_0 
              #                    occupy a1 with ch_21
              #                    occupy a6 with 48_0
    li      a6, 48
              #                    occupy a7 with temp_2_cmp_24
    slt     a7,a1,a6
              #                    free a1
              #                    free a6
              #                    free a7
              #                          new_var temp_3_logic_24:i1 
              #                          temp_3_logic_24 = Or i1 temp_2_cmp_24, temp_1_cmp_24 
              #                    occupy a7 with temp_2_cmp_24
              #                    occupy a5 with temp_1_cmp_24
              #                    occupy a5 with temp_1_cmp_24
              #                    free a7
              #                    free a5
              #                    free a5
              #                          br i1 temp_3_logic_24, label while.body_25, label while.exit_25 
              #                    occupy s1 with temp_3_logic_24
              #                    load from temp_3_logic_24 in mem
    lb      s1,37(sp)
              #                    free s1
              #                    occupy s1 with temp_3_logic_24
    bnez    s1, .while.body_25
              #                    free s1
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } | 
              #                          label while.body_25: 
.while.body_25:
              #                          new_var temp_4_cmp_27:i1 
              #                          temp_4_cmp_27 = icmp i32 Eq ch_21, 45_0 
              #                    occupy a1 with ch_21
              #                    occupy a4 with 45_0
    li      a4, 45
              #                    occupy a6 with temp_4_cmp_27
    xor     a6,a1,a4
    seqz    a6, a6
              #                    free a1
              #                    free a4
              #                    free a6
              #                          br i1 temp_4_cmp_27, label branch_true_28, label branch_false_28 
              #                    occupy a6 with temp_4_cmp_27
              #                    free a6
              #                    occupy a6 with temp_4_cmp_27
    bnez    a6, .branch_true_28
              #                    free a6
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                          f_21 = i32 1_0 
              #                    occupy a3 with f_21
    li      a3, 1
              #                    free a3
              #                          jump label: branch_false_28 
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_4_cmp_27, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } | 
              #                          label L10_0: 
.L10_0:
              #                          new_var temp_5_ret_of_getch_26:i32 
              #                          temp_5_ret_of_getch_26 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_24 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_24
              #                    store to temp_0_ret_of_getch_21 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_21
              #                    store to ch_21 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_21
              #                    store to x_21 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_21
              #                    store to f_21 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_21
              #                    store to temp_1_cmp_24 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_24
              #                    store to temp_4_cmp_27 in mem offset legal
    sb      a6,36(sp)
              #                    release a6 with temp_4_cmp_27
              #                    store to temp_2_cmp_24 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_5_ret_of_getch_26 in mem offset legal
    sw      a0,32(sp)
              #                          ch_21 = i32 temp_5_ret_of_getch_26 
              #                    occupy a0 with temp_5_ret_of_getch_26
              #                    occupy a1 with ch_21
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_25 
              #                    store to temp_5_ret_of_getch_26 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_5_ret_of_getch_26
              #                    occupy a3 with _anonymous_of_f_21_0
              #                    load from f_21 in mem


    lw      a3,40(sp)
              #                    occupy a2 with _anonymous_of_x_21_0
              #                    load from x_21 in mem


    lw      a2,44(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_21_0
              #                    load from temp_0_ret_of_getch_21 in mem


    lw      a0,52(sp)
    j       .while.head_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } | 
              #                          label while.exit_25: 
.while.exit_25:
              #                          new_var temp_6_cmp_31:i1 
              #                          temp_6_cmp_31 = icmp i32 Sle ch_21, 57_0 
              #                    occupy a1 with ch_21
              #                    occupy a4 with 57_0
    li      a4, 57
              #                    occupy a6 with temp_6_cmp_31
    slt     a6,a4,a1
    xori    a6,a6,1
              #                    free a1
              #                    free a4
              #                    free a6
              #                          new_var temp_7_cmp_31:i1 
              #                          temp_7_cmp_31 = icmp i32 Sge ch_21, 48_0 
              #                    occupy a1 with ch_21
              #                    occupy s2 with 48_0
    li      s2, 48
              #                    occupy s3 with temp_7_cmp_31
    slt     s3,a1,s2
    xori    s3,s3,1
              #                    free a1
              #                    free s2
              #                    free s3
              #                          new_var temp_8_logic_31:i1 
              #                          temp_8_logic_31 = And i1 temp_7_cmp_31, temp_6_cmp_31 
              #                    occupy s3 with temp_7_cmp_31
              #                    occupy a6 with temp_6_cmp_31
              #                    occupy s4 with temp_8_logic_31
    and     s4,s3,a6
              #                    free s3
              #                    free a6
              #                    free s4
              #                          br i1 temp_8_logic_31, label while.body_32, label while.exit_32 
              #                    occupy s4 with temp_8_logic_31
              #                    free s4
              #                    occupy s4 with temp_8_logic_31
    bnez    s4, .while.body_32
              #                    free s4
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          new_var temp_9_arithop_33:i32 
              #                          temp_9_arithop_33 = Mul i32 x_21, 10_0 
              #                    occupy a2 with x_21
              #                    occupy a4 with 10_0
    li      a4, 10
              #                    occupy s2 with temp_9_arithop_33
    mul     s2,a2,a4
              #                    free a2
              #                    free a4
              #                    free s2
              #                          new_var temp_10_arithop_33:i32 
              #                          temp_10_arithop_33 = Add i32 temp_9_arithop_33, ch_21 
              #                    occupy s2 with temp_9_arithop_33
              #                    occupy a1 with ch_21
              #                    occupy s5 with temp_10_arithop_33
    add     s5,s2,a1
              #                    free s2
              #                    free a1
              #                    free s5
              #                          new_var temp_11_arithop_33:i32 
              #                          temp_11_arithop_33 = Sub i32 temp_10_arithop_33, 48_0 
              #                    occupy s5 with temp_10_arithop_33
              #                    occupy s6 with 48_0
    li      s6, 48
              #                    occupy s7 with temp_11_arithop_33
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a4:Freed { symidx: 10_0, tracked: false } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_9_arithop_33, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } |     s5:Occupied { symidx: temp_10_arithop_33, tracked: true, occupy_count: 1 } |     s6:Occupied { symidx: 48_0, tracked: false, occupy_count: 1 } |     s7:Occupied { symidx: temp_11_arithop_33, tracked: true, occupy_count: 1 } | 


    sub     s7,s5,s6
              #                    free s5
              #                    free s6
              #                    free s7
              #                          x_21 = i32 temp_11_arithop_33 
              #                    occupy s7 with temp_11_arithop_33
              #                    occupy a2 with x_21
    mv      a2, s7
              #                    free s7
              #                    free a2
              #                          new_var temp_12_ret_of_getch_33:i32 
              #                          temp_12_ret_of_getch_33 =  Call i32 getch_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_logic_24 in mem offset legal
    sb      s1,37(sp)
              #                    release s1 with temp_3_logic_24
              #                    store to temp_9_arithop_33 in mem offset legal
    sw      s2,24(sp)
              #                    release s2 with temp_9_arithop_33
              #                    store to temp_7_cmp_31 in mem offset legal
    sb      s3,30(sp)
              #                    release s3 with temp_7_cmp_31
              #                    store to temp_8_logic_31 in mem offset legal
    sb      s4,29(sp)
              #                    release s4 with temp_8_logic_31
              #                    store to temp_10_arithop_33 in mem offset legal
    sw      s5,20(sp)
              #                    release s5 with temp_10_arithop_33
              #                    store to temp_11_arithop_33 in mem offset legal
    sw      s7,16(sp)
              #                    release s7 with temp_11_arithop_33
              #                    store to temp_0_ret_of_getch_21 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_21
              #                    store to ch_21 in mem offset legal
    sw      a1,48(sp)
              #                    release a1 with ch_21
              #                    store to x_21 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_21
              #                    store to f_21 in mem offset legal
    sw      a3,40(sp)
              #                    release a3 with f_21
              #                    store to temp_1_cmp_24 in mem offset legal
    sb      a5,39(sp)
              #                    release a5 with temp_1_cmp_24
              #                    store to temp_6_cmp_31 in mem offset legal
    sb      a6,31(sp)
              #                    release a6 with temp_6_cmp_31
              #                    store to temp_2_cmp_24 in mem offset legal
    sb      a7,38(sp)
              #                    release a7 with temp_2_cmp_24
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getch
              #                    store to temp_12_ret_of_getch_33 in mem offset legal
    sw      a0,12(sp)
              #                          ch_21 = i32 temp_12_ret_of_getch_33 
              #                    occupy a0 with temp_12_ret_of_getch_33
              #                    occupy a1 with ch_21
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.exit_25 
              #                    store to temp_12_ret_of_getch_33 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_12_ret_of_getch_33
              #                    occupy a7 with _anonymous_of_temp_2_cmp_24_0
              #                    load from temp_2_cmp_24 in mem
    lb      a7,38(sp)
              #                    occupy a3 with _anonymous_of_f_21_0
              #                    load from f_21 in mem


    lw      a3,40(sp)
              #                    occupy a2 with _anonymous_of_x_21_0
              #                    load from x_21 in mem


    lw      a2,44(sp)
              #                    occupy a5 with _anonymous_of_temp_1_cmp_24_0
              #                    load from temp_1_cmp_24 in mem
    lb      a5,39(sp)
              #                    occupy s1 with _anonymous_of_temp_3_logic_24_0
              #                    load from temp_3_logic_24 in mem
    lb      s1,37(sp)
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getch_21_0
              #                    load from temp_0_ret_of_getch_21 in mem


    lw      a0,52(sp)
    j       .while.exit_25
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                          new_var temp_13__416:i1 
              #                          temp_13__416 = icmp i32 Ne f_21, 0_0 
              #                    occupy a3 with f_21
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy s2 with temp_13__416
    xor     s2,a3,a4
    snez    s2, s2
              #                    free a3
              #                    free a4
              #                    free s2
              #                          br i1 temp_13__416, label branch_true_37, label branch_false_37 
              #                    occupy s2 with temp_13__416
              #                    free s2
              #                    occupy s2 with temp_13__416
    bnez    s2, .branch_true_37
              #                    free s2
    j       .branch_false_37
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                          label branch_true_37: 
.branch_true_37:
              #                          new_var temp_14__36:i32 
              #                          temp_14__36 = Sub i32 0_0, x_21 
              #                    occupy a4 with 0_0
    li      a4, 0
              #                    occupy a2 with x_21
              #                    occupy s5 with temp_14__36
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Occupied { symidx: x_21, tracked: true, occupy_count: 1 } |     a3:Freed { symidx: f_21, tracked: true } |     a4:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } |     s5:Occupied { symidx: temp_14__36, tracked: true, occupy_count: 1 } | 


    sub     s5,a4,a2
              #                    free a4
              #                    free a2
              #                    free s5
              #                          ret temp_14__36 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to temp_14__36 in mem offset legal
    sw      s5,4(sp)
              #                    release s5 with temp_14__36
              #                    store to temp_0_ret_of_getch_21 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_21
              #                    occupy a0 with temp_14__36
              #                    load from temp_14__36 in mem


    lw      a0,4(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_0_ret_of_getch_21, tracked: true } |     a1:Freed { symidx: ch_21, tracked: true } |     a2:Freed { symidx: x_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                          label branch_false_37: 
.branch_false_37:
              #                          ret x_21 
              #                    load from ra_quick_read_0 in mem
    ld      ra,64(sp)
              #                    load from s0_quick_read_0 in mem
    ld      s0,56(sp)
              #                    store to x_21 in mem offset legal
    sw      a2,44(sp)
              #                    release a2 with x_21
              #                    store to temp_0_ret_of_getch_21 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_0_ret_of_getch_21
              #                    occupy a0 with x_21
              #                    load from x_21 in mem


    lw      a0,44(sp)
    addi    sp,sp,72
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: ch_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                          label L11_0: 
.L11_0:
              #                    regtab     a1:Freed { symidx: ch_21, tracked: true } |     a3:Freed { symidx: f_21, tracked: true } |     a5:Freed { symidx: temp_1_cmp_24, tracked: true } |     a6:Freed { symidx: temp_6_cmp_31, tracked: true } |     a7:Freed { symidx: temp_2_cmp_24, tracked: true } |     s1:Freed { symidx: temp_3_logic_24, tracked: true } |     s2:Freed { symidx: temp_13__416, tracked: true } |     s3:Freed { symidx: temp_7_cmp_31, tracked: true } |     s4:Freed { symidx: temp_8_logic_31, tracked: true } | 
              #                    regtab 
              #                          Define find_0 [x_40] -> find_ret_0 
    .globl find
    .type find,@function
find:
              #                    mem layout:|ra_find:8 at 8104|s0_find:8 at 8096|x:4 at 8092|temp_15_ptr2globl:4020 at 4072|temp_16_array_ptr:8 at 4064|temp_17_array_ele:4 at 4060|temp_18_cmp:1 at 4059|none:3 at 4056|temp_19_ptr2globl:4020 at 36|none:4 at 32|temp_20_array_ptr:8 at 24|temp_21_array_ele:4 at 20|temp_22_ret_of_find:4 at 16|asdf:4 at 12|none:4 at 8|temp_23_index_ptr:8 at 0
              #                    occupy a1 with -8112_0
    li      a1, -8112
    li      a1, -8112
    add     sp,a1,sp
              #                    free a1
              #                    store to ra_find_0 in mem offset_illegal
              #                    occupy a2 with 8104_0
    li      a2, 8104
    add     a2,sp,a2
    sd      ra,0(a2)
              #                    free a2
              #                    store to s0_find_0 in mem offset_illegal
              #                    occupy a3 with 8096_0
    li      a3, 8096
    add     a3,sp,a3
    sd      s0,0(a3)
              #                    free a3
              #                    occupy a4 with 8112_0
    li      a4, 8112
    li      a4, 8112
    add     s0,a4,sp
              #                    free a4
              #                          alloc Array:i32:[Some(1005_0)] temp_15_ptr2globl_43 
              #                          alloc ptr->i32 temp_16_array_ptr_43 
              #                          alloc i32 temp_17_array_ele_43 
              #                          alloc i1 temp_18_cmp_43 
              #                          alloc Array:i32:[Some(1005_0)] temp_19_ptr2globl_42 
              #                          alloc ptr->i32 temp_20_array_ptr_42 
              #                          alloc i32 temp_21_array_ele_42 
              #                          alloc i32 temp_22_ret_of_find_42 
              #                          alloc i32 asdf_42 
              #                          alloc ptr->i32 temp_23_index_ptr_42 
              #                    regtab     a0:Freed { symidx: x_40, tracked: true } | 
              #                          label L7_0: 
.L7_0:
              #                          new_var temp_15_ptr2globl_43:Array:i32:[Some(1005_0)] 
              #                          temp_15_ptr2globl_43 = load *fa_0:ptr->i32 
              #                    occupy a1 with *fa_0
              #                       load label fa as ptr to reg
    la      a1, fa
              #                    occupy reg a1 with *fa_0
              #                    occupy a2 with temp_15_ptr2globl_43
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_16_array_ptr_43:ptr->i32 
              #                          temp_16_array_ptr_43 = getelementptr temp_15_ptr2globl_43:Array:i32:[Some(1005_0)] [Some(x_40)] 
              #                    occupy a3 with temp_16_array_ptr_43
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a0 with x_40
              #                    occupy a5 with _anonymous_of_temp_15_ptr2globl_43_0
    mul     a5,a4,a0
              #                    free a4
              #                    free a0
    add     a3,a3,a5
              #                    free a5
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy a6 with 4072_0
    li      a6, 4072
    li      a6, 4072
    add     a3,a6,a3
              #                    free a6
              #                    free a3
              #                          new_var temp_17_array_ele_43:i32 
              #                          temp_17_array_ele_43 = load temp_16_array_ptr_43:ptr->i32 
              #                    occupy a3 with temp_16_array_ptr_43
              #                    occupy a7 with temp_17_array_ele_43
    lw      a7,0(a3)
              #                    free a7
              #                    free a3
              #                          new_var temp_18_cmp_43:i1 
              #                          temp_18_cmp_43 = icmp i32 Eq x_40, temp_17_array_ele_43 
              #                    occupy a0 with x_40
              #                    occupy a7 with temp_17_array_ele_43
              #                    occupy s1 with temp_18_cmp_43
    xor     s1,a0,a7
    seqz    s1, s1
              #                    free a0
              #                    free a7
              #                    free s1
              #                          br i1 temp_18_cmp_43, label branch_true_44, label branch_false_44 
              #                    occupy s1 with temp_18_cmp_43
              #                    free s1
              #                    occupy s1 with temp_18_cmp_43
    bnez    s1, .branch_true_44
              #                    free s1
    j       .branch_false_44
              #                    regtab     a0:Freed { symidx: x_40, tracked: true } |     a2:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a3:Freed { symidx: temp_16_array_ptr_43, tracked: true } |     a7:Freed { symidx: temp_17_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label branch_true_44: 
.branch_true_44:
              #                          ret x_40 
              #                    load from ra_find_0 in mem
              #                    occupy a1 with ra_find_0
    li      a1, 8104
    add     a1,sp,a1
    ld      ra,0(a1)
              #                    free a1
              #                    load from s0_find_0 in mem
              #                    occupy a4 with s0_find_0
    li      a4, 8096
    add     a4,sp,a4
    ld      s0,0(a4)
              #                    free a4
              #                    store to x_40 in mem offset_illegal
              #                    occupy a0 with 8092_0
    li      a0, 8092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_40
              #                    occupy a0 with x_40
              #                    load from x_40 in mem

              #                    occupy a5 with x_40
    li      a5, 8092
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    occupy a6 with 8112_0
    li      a6, 8112
    li      a6, 8112
    add     sp,a6,sp
              #                    free a6
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_40, tracked: true } |     a2:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a3:Freed { symidx: temp_16_array_ptr_43, tracked: true } |     a7:Freed { symidx: temp_17_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label branch_false_44: 
.branch_false_44:
              #                    regtab     a0:Freed { symidx: x_40, tracked: true } |     a2:Freed { symidx: temp_15_ptr2globl_43, tracked: true } |     a3:Freed { symidx: temp_16_array_ptr_43, tracked: true } |     a7:Freed { symidx: temp_17_array_ele_43, tracked: true } |     s1:Freed { symidx: temp_18_cmp_43, tracked: true } | 
              #                          label L8_0: 
.L8_0:
              #                          new_var temp_19_ptr2globl_42:Array:i32:[Some(1005_0)] 
              #                          temp_19_ptr2globl_42 = load *fa_0:ptr->i32 
              #                    occupy a1 with *fa_0
              #                       load label fa as ptr to reg
    la      a1, fa
              #                    occupy reg a1 with *fa_0
              #                    occupy a4 with temp_19_ptr2globl_42
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_20_array_ptr_42:ptr->i32 
              #                          temp_20_array_ptr_42 = getelementptr temp_19_ptr2globl_42:Array:i32:[Some(1005_0)] [Some(x_40)] 
              #                    occupy a5 with temp_20_array_ptr_42
    li      a5, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with x_40
              #                    occupy s2 with _anonymous_of_temp_19_ptr2globl_42_0
    mul     s2,a6,a0
              #                    free a6
              #                    free a0
    add     a5,a5,s2
              #                    free s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,36
              #                    free a5
              #                          new_var temp_21_array_ele_42:i32 
              #                          temp_21_array_ele_42 = load temp_20_array_ptr_42:ptr->i32 
              #                    occupy a5 with temp_20_array_ptr_42
              #                    occupy s3 with temp_21_array_ele_42
    lw      s3,0(a5)
              #                    free s3
              #                    free a5
              #                          new_var temp_22_ret_of_find_42:i32 
              #                          temp_22_ret_of_find_42 =  Call i32 find_0(temp_21_array_ele_42) 
              #                    saved register dumping to mem
              #                    store to temp_18_cmp_43 in mem offset_illegal
              #                    occupy s1 with 4059_0
    li      s1, 4059
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_18_cmp_43
              #                    store to temp_21_array_ele_42 in mem offset legal
    sw      s3,20(sp)
              #                    release s3 with temp_21_array_ele_42
              #                    store to x_40 in mem offset_illegal
              #                    occupy a0 with 8092_0
    li      a0, 8092
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with x_40
              #                    store to temp_15_ptr2globl_43 in mem offset_illegal
              #                    occupy a0 with 4072_0
    li      a0, 4072
    add     a0,sp,a0
    sw      a2,0(a0)
              #                    free a0
              #                    release a2 with temp_15_ptr2globl_43
              #                    store to temp_16_array_ptr_43 in mem offset_illegal
              #                    occupy a1 with 4064_0
    li      a1, 4064
    add     a1,sp,a1
    sd      a3,0(a1)
              #                    free a1
              #                    release a3 with temp_16_array_ptr_43
              #                    store to temp_19_ptr2globl_42 in mem offset legal
    sw      a4,36(sp)
              #                    release a4 with temp_19_ptr2globl_42
              #                    store to temp_20_array_ptr_42 in mem offset legal
    sd      a5,24(sp)
              #                    release a5 with temp_20_array_ptr_42
              #                    store to temp_17_array_ele_43 in mem offset_illegal
              #                    occupy a2 with 4060_0
    li      a2, 4060
    add     a2,sp,a2
    sw      a7,0(a2)
              #                    free a2
              #                    release a7 with temp_17_array_ele_43
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_array_ele_42_0
              #                    load from temp_21_array_ele_42 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                    store to temp_22_ret_of_find_42 in mem offset legal
    sw      a0,16(sp)
              #                          asdf_42 = i32 temp_22_ret_of_find_42 
              #                    occupy a0 with temp_22_ret_of_find_42
              #                    occupy a3 with asdf_42
    mv      a3, a0
              #                    free a0
              #                    free a3
              #                          new_var temp_23_index_ptr_42:ptr->i32 
              #                          temp_23_index_ptr_42 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(x_40)] 
              #                    occupy a4 with temp_23_index_ptr_42
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with x_40
              #                    load from x_40 in mem

              #                    occupy a6 with x_40
    add     a6,sp,a6
    lw      a6,0(a6)
              #                    free a6
              #                    occupy a7 with _anonymous_of_fa_0_0
    mul     a7,a5,a6
              #                    free a5
              #                    free a6
    add     a4,a4,a7
              #                    free a7
    slli a4,a4,2
              #                    occupy s1 with _anonymous_of_fa_0_0
    la      s1, fa
    add     a4,a4,s1
              #                    free s1
              #                    free a4
              #                          store asdf_42:i32 temp_23_index_ptr_42:ptr->i32 
              #                    occupy a4 with temp_23_index_ptr_42
              #                    occupy a3 with asdf_42
    sw      a3,0(a4)
              #                    free a3
              #                    free a4
              #                          mu fa_0:142 
              #                          fa_0 = chi fa_0:142 
              #                          ret asdf_42 
              #                    load from ra_find_0 in mem
              #                    occupy s2 with ra_find_0
    li      s2, 8104
    add     s2,sp,s2
    ld      ra,0(s2)
              #                    free s2
              #                    load from s0_find_0 in mem
              #                    occupy s3 with s0_find_0
    li      s3, 8096
    add     s3,sp,s3
    ld      s0,0(s3)
              #                    free s3
              #                    store to asdf_42 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with asdf_42
              #                    store to temp_22_ret_of_find_42 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_22_ret_of_find_42
              #                    occupy a0 with asdf_42
              #                    load from asdf_42 in mem


    lw      a0,12(sp)
              #                    occupy a3 with 8112_0
    li      a3, 8112
    li      a3, 8112
    add     sp,a3,sp
              #                    free a3
              #                    free a0
    ret
              #                    regtab     a4:Freed { symidx: temp_23_index_ptr_42, tracked: true } |     a6:Freed { symidx: x_40, tracked: true } |     s2:Freed { symidx: ra_find_0, tracked: true } |     s3:Freed { symidx: s0_find_0, tracked: true } | 
              #                    regtab 
              #                          Define same_0 [x_49, y_49] -> same_ret_0 
    .globl same
    .type same,@function
same:
              #                    mem layout:|ra_same:8 at 32|s0_same:8 at 24|x:4 at 20|y:4 at 16|temp_24_ret_of_find:4 at 12|temp_25_ret_of_find:4 at 8|temp_26_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_same_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_same_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_24_ret_of_find_51 
              #                          alloc i32 temp_25_ret_of_find_51 
              #                          alloc i1 temp_26_cmp_54 
              #                    regtab     a0:Freed { symidx: x_49, tracked: true } |     a1:Freed { symidx: y_49, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_24_ret_of_find_51:i32 
              #                          temp_24_ret_of_find_51 =  Call i32 find_0(x_49) 
              #                    saved register dumping to mem
              #                    store to x_49 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_49
              #                    store to y_49 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with y_49
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_49_0
              #                    load from x_49 in mem


    lw      a0,20(sp)
              #                    arg load ended


    call    find
              #                    store to temp_24_ret_of_find_51 in mem offset legal
    sw      a0,12(sp)
              #                          x_49 = i32 temp_24_ret_of_find_51 
              #                    occupy a0 with temp_24_ret_of_find_51
              #                    occupy a1 with x_49
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_25_ret_of_find_51:i32 
              #                          temp_25_ret_of_find_51 =  Call i32 find_0(y_49) 
              #                    saved register dumping to mem
              #                    store to temp_24_ret_of_find_51 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_24_ret_of_find_51
              #                    store to x_49 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with x_49
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_49_0
              #                    load from y_49 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    find
              #                    store to temp_25_ret_of_find_51 in mem offset legal
    sw      a0,8(sp)
              #                          y_49 = i32 temp_25_ret_of_find_51 
              #                    occupy a0 with temp_25_ret_of_find_51
              #                    occupy a1 with y_49
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_find_51, tracked: true } |     a1:Freed { symidx: y_49, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_26_cmp_54:i1 
              #                          temp_26_cmp_54 = icmp i32 Eq x_49, y_49 
              #                    occupy a2 with x_49
              #                    load from x_49 in mem


    lw      a2,20(sp)
              #                    occupy a1 with y_49
              #                    occupy a3 with temp_26_cmp_54
    xor     a3,a2,a1
    seqz    a3, a3
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_26_cmp_54, label branch_true_55, label branch_false_55 
              #                    occupy a3 with temp_26_cmp_54
              #                    free a3
              #                    occupy a3 with temp_26_cmp_54
    bnez    a3, .branch_true_55
              #                    free a3
    j       .branch_false_55
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_find_51, tracked: true } |     a1:Freed { symidx: y_49, tracked: true } |     a2:Freed { symidx: x_49, tracked: true } |     a3:Freed { symidx: temp_26_cmp_54, tracked: true } | 
              #                          label branch_true_55: 
.branch_true_55:
              #                          ret 1_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    store to temp_25_ret_of_find_51 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_25_ret_of_find_51
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_find_51, tracked: true } |     a1:Freed { symidx: y_49, tracked: true } |     a2:Freed { symidx: x_49, tracked: true } |     a3:Freed { symidx: temp_26_cmp_54, tracked: true } | 
              #                          label branch_false_55: 
.branch_false_55:
              #                    regtab     a0:Freed { symidx: temp_25_ret_of_find_51, tracked: true } |     a1:Freed { symidx: y_49, tracked: true } |     a2:Freed { symidx: x_49, tracked: true } |     a3:Freed { symidx: temp_26_cmp_54, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                          ret 0_0 
              #                    load from ra_same_0 in mem
    ld      ra,32(sp)
              #                    load from s0_same_0 in mem
    ld      s0,24(sp)
              #                    store to temp_25_ret_of_find_51 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_25_ret_of_find_51
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_49, tracked: true } |     a2:Freed { symidx: x_49, tracked: true } |     a3:Freed { symidx: temp_26_cmp_54, tracked: true } | 
              #                    regtab 
              #                          Define prim_0 [] -> prim_ret_0 
    .globl prim
    .type prim,@function
prim:
              #                    mem layout:|ra_prim:8 at 52632|s0_prim:8 at 52624|i:4 at 52620|temp_27_ptr2globl:4 at 52616|temp_28_cmp:1 at 52615|none:3 at 52612|temp_29_arithop:4 at 52608|j:4 at 52604|temp_30_ptr2globl:4 at 52600|temp_31_cmp:1 at 52599|none:3 at 52596|temp_32_ptr2globl:4020 at 48576|temp_33_array_ptr:8 at 48568|temp_34_array_ele:4 at 48564|temp_35_ptr2globl:4020 at 44544|temp_36_array_ptr:8 at 44536|temp_37_array_ele:4 at 44532|temp_38_cmp:1 at 44531|none:3 at 44528|temp_39_ptr2globl:4020 at 40508|none:4 at 40504|temp_40_array_ptr:8 at 40496|temp_41_array_ele:4 at 40492|t:4 at 40488|temp_42_index_ptr:8 at 40480|temp_43_ptr2globl:4020 at 36460|none:4 at 36456|temp_44_array_ptr:8 at 36448|temp_45_array_ele:4 at 36444|none:4 at 36440|temp_46_index_ptr:8 at 36432|temp_47_ptr2globl:4020 at 32412|none:4 at 32408|temp_48_array_ptr:8 at 32400|temp_49_array_ele:4 at 32396|none:4 at 32392|temp_50_index_ptr:8 at 32384|temp_51_ptr2globl:4020 at 28364|none:4 at 28360|temp_52_array_ptr:8 at 28352|temp_53_array_ele:4 at 28348|none:4 at 28344|temp_54_index_ptr:8 at 28336|temp_55_ptr2globl:4020 at 24316|none:4 at 24312|temp_56_array_ptr:8 at 24304|temp_57_array_ele:4 at 24300|none:4 at 24296|temp_58_index_ptr:8 at 24288|temp_59_ptr2globl:4020 at 20268|none:4 at 20264|temp_60_array_ptr:8 at 20256|temp_61_array_ele:4 at 20252|none:4 at 20248|temp_62_index_ptr:8 at 20240|temp_63_arithop:4 at 20236|temp_64_arithop:4 at 20232|temp_65_ptr2globl:4 at 20228|temp_66_cmp:1 at 20227|none:3 at 20224|temp_67_index_ptr:8 at 20216|temp_68_arithop:4 at 20212|res:4 at 20208|temp_69_ptr2globl:4 at 20204|temp_70_cmp:1 at 20203|none:3 at 20200|temp_71_ptr2globl:4020 at 16180|none:4 at 16176|temp_72_array_ptr:8 at 16168|temp_73_array_ele:4 at 16164|temp_74_ptr2globl:4020 at 12144|temp_75_array_ptr:8 at 12136|temp_76_array_ele:4 at 12132|temp_77_ret_of_same:4 at 12128|temp_78_:1 at 12127|none:3 at 12124|temp_79_ptr2globl:4020 at 8104|temp_80_array_ptr:8 at 8096|temp_81_array_ele:4 at 8092|temp_82_arithop:4 at 8088|temp_83_ptr2globl:4020 at 4068|none:4 at 4064|temp_84_array_ptr:8 at 4056|temp_85_array_ele:4 at 4052|temp_86_ret_of_find:4 at 4048|temp_87_index_ptr:8 at 4040|temp_88_ptr2globl:4020 at 20|none:4 at 16|temp_89_array_ptr:8 at 8|temp_90_array_ele:4 at 4|temp_91_arithop:4 at 0
              #                    occupy a0 with -52640_0
    li      a0, -52640
    li      a0, -52640
    add     sp,a0,sp
              #                    free a0
              #                    store to ra_prim_0 in mem offset_illegal
              #                    occupy a1 with 52632_0
    li      a1, 52632
    add     a1,sp,a1
    sd      ra,0(a1)
              #                    free a1
              #                    store to s0_prim_0 in mem offset_illegal
              #                    occupy a2 with 52624_0
    li      a2, 52624
    add     a2,sp,a2
    sd      s0,0(a2)
              #                    free a2
              #                    occupy a3 with 52640_0
    li      a3, 52640
    li      a3, 52640
    add     s0,a3,sp
              #                    free a3
              #                          alloc i32 i_59 
              #                          alloc i32 temp_27_ptr2globl_61 
              #                          alloc i1 temp_28_cmp_61 
              #                          alloc i32 temp_29_arithop_63 
              #                          alloc i32 j_63 
              #                          alloc i32 temp_30_ptr2globl_65 
              #                          alloc i1 temp_31_cmp_65 
              #                          alloc Array:i32:[Some(1005_0)] temp_32_ptr2globl_68 
              #                          alloc ptr->i32 temp_33_array_ptr_68 
              #                          alloc i32 temp_34_array_ele_68 
              #                          alloc Array:i32:[Some(1005_0)] temp_35_ptr2globl_68 
              #                          alloc ptr->i32 temp_36_array_ptr_68 
              #                          alloc i32 temp_37_array_ele_68 
              #                          alloc i1 temp_38_cmp_68 
              #                          alloc Array:i32:[Some(1005_0)] temp_39_ptr2globl_70 
              #                          alloc ptr->i32 temp_40_array_ptr_70 
              #                          alloc i32 temp_41_array_ele_70 
              #                          alloc i32 t_70 
              #                          alloc ptr->i32 temp_42_index_ptr_70 
              #                          alloc Array:i32:[Some(1005_0)] temp_43_ptr2globl_70 
              #                          alloc ptr->i32 temp_44_array_ptr_70 
              #                          alloc i32 temp_45_array_ele_70 
              #                          alloc ptr->i32 temp_46_index_ptr_70 
              #                          alloc Array:i32:[Some(1005_0)] temp_47_ptr2globl_70 
              #                          alloc ptr->i32 temp_48_array_ptr_70 
              #                          alloc i32 temp_49_array_ele_70 
              #                          alloc ptr->i32 temp_50_index_ptr_70 
              #                          alloc Array:i32:[Some(1005_0)] temp_51_ptr2globl_70 
              #                          alloc ptr->i32 temp_52_array_ptr_70 
              #                          alloc i32 temp_53_array_ele_70 
              #                          alloc ptr->i32 temp_54_index_ptr_70 
              #                          alloc Array:i32:[Some(1005_0)] temp_55_ptr2globl_70 
              #                          alloc ptr->i32 temp_56_array_ptr_70 
              #                          alloc i32 temp_57_array_ele_70 
              #                          alloc ptr->i32 temp_58_index_ptr_70 
              #                          alloc Array:i32:[Some(1005_0)] temp_59_ptr2globl_70 
              #                          alloc ptr->i32 temp_60_array_ptr_70 
              #                          alloc i32 temp_61_array_ele_70 
              #                          alloc ptr->i32 temp_62_index_ptr_70 
              #                          alloc i32 temp_63_arithop_67 
              #                          alloc i32 temp_64_arithop_63 
              #                          alloc i32 temp_65_ptr2globl_83 
              #                          alloc i1 temp_66_cmp_83 
              #                          alloc ptr->i32 temp_67_index_ptr_85 
              #                          alloc i32 temp_68_arithop_85 
              #                          alloc i32 res_59 
              #                          alloc i32 temp_69_ptr2globl_90 
              #                          alloc i1 temp_70_cmp_90 
              #                          alloc Array:i32:[Some(1005_0)] temp_71_ptr2globl_93 
              #                          alloc ptr->i32 temp_72_array_ptr_93 
              #                          alloc i32 temp_73_array_ele_93 
              #                          alloc Array:i32:[Some(1005_0)] temp_74_ptr2globl_93 
              #                          alloc ptr->i32 temp_75_array_ptr_93 
              #                          alloc i32 temp_76_array_ele_93 
              #                          alloc i32 temp_77_ret_of_same_93 
              #                          alloc i1 temp_78__2236 
              #                          alloc Array:i32:[Some(1005_0)] temp_79_ptr2globl_92 
              #                          alloc ptr->i32 temp_80_array_ptr_92 
              #                          alloc i32 temp_81_array_ele_92 
              #                          alloc i32 temp_82_arithop_92 
              #                          alloc Array:i32:[Some(1005_0)] temp_83_ptr2globl_92 
              #                          alloc ptr->i32 temp_84_array_ptr_92 
              #                          alloc i32 temp_85_array_ele_92 
              #                          alloc i32 temp_86_ret_of_find_92 
              #                          alloc ptr->i32 temp_87_index_ptr_92 
              #                          alloc Array:i32:[Some(1005_0)] temp_88_ptr2globl_92 
              #                          alloc ptr->i32 temp_89_array_ptr_92 
              #                          alloc i32 temp_90_array_ele_92 
              #                          alloc i32 temp_91_arithop_92 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          i_59 = i32 0_0 
              #                    occupy a0 with i_59
    li      a0, 0
              #                    free a0
              #                          jump label: while.head_62 
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } | 
              #                          label while.head_62: 
.while.head_62:
              #                          new_var temp_27_ptr2globl_61:i32 
              #                          temp_27_ptr2globl_61 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a2 with temp_27_ptr2globl_61
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_28_cmp_61:i1 
              #                          temp_28_cmp_61 = icmp i32 Slt i_59, temp_27_ptr2globl_61 
              #                    occupy a0 with i_59
              #                    occupy a2 with temp_27_ptr2globl_61
              #                    occupy a3 with temp_28_cmp_61
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_28_cmp_61, label while.body_62, label while.exit_62 
              #                    occupy a3 with temp_28_cmp_61
              #                    free a3
              #                    occupy a3 with temp_28_cmp_61
    bnez    a3, .while.body_62
              #                    free a3
    j       .while.exit_62
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } | 
              #                          label while.body_62: 
.while.body_62:
              #                          new_var temp_29_arithop_63:i32 
              #                          temp_29_arithop_63 = Add i32 i_59, 1_0 
              #                    occupy a0 with i_59
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a4 with temp_29_arithop_63
    add     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                          j_63 = i32 temp_29_arithop_63 
              #                    occupy a4 with temp_29_arithop_63
              #                    occupy a5 with j_63
    mv      a5, a4
              #                    free a4
              #                    free a5
              #                          jump label: while.head_66 
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } | 
              #                          label while.head_66: 
.while.head_66:
              #                          new_var temp_30_ptr2globl_65:i32 
              #                          temp_30_ptr2globl_65 = load *m_0:ptr->i32 
              #                    occupy a1 with *m_0
              #                       load label m as ptr to reg
    la      a1, m
              #                    occupy reg a1 with *m_0
              #                    occupy a6 with temp_30_ptr2globl_65
    lw      a6,0(a1)
              #                    free a6
              #                    free a1
              #                          new_var temp_31_cmp_65:i1 
              #                          temp_31_cmp_65 = icmp i32 Slt j_63, temp_30_ptr2globl_65 
              #                    occupy a5 with j_63
              #                    occupy a6 with temp_30_ptr2globl_65
              #                    occupy a7 with temp_31_cmp_65
    slt     a7,a5,a6
              #                    free a5
              #                    free a6
              #                    free a7
              #                          br i1 temp_31_cmp_65, label while.body_66, label while.exit_66 
              #                    occupy a7 with temp_31_cmp_65
              #                    free a7
              #                    occupy a7 with temp_31_cmp_65
    bnez    a7, .while.body_66
              #                    free a7
    j       .while.exit_66
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_65, tracked: true } |     a7:Freed { symidx: temp_31_cmp_65, tracked: true } | 
              #                          label while.body_66: 
.while.body_66:
              #                          new_var temp_32_ptr2globl_68:Array:i32:[Some(1005_0)] 
              #                          temp_32_ptr2globl_68 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy s1 with temp_32_ptr2globl_68
    lw      s1,0(a1)
              #                    free s1
              #                    free a1
              #                          new_var temp_33_array_ptr_68:ptr->i32 
              #                          temp_33_array_ptr_68 = getelementptr temp_32_ptr2globl_68:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy s2 with temp_33_array_ptr_68
    li      s2, 0
              #                    occupy s3 with 1_0
    li      s3, 1
              #                    occupy a5 with j_63
              #                    occupy s4 with _anonymous_of_temp_32_ptr2globl_68_0
    mul     s4,s3,a5
              #                    free s3
              #                    free a5
    add     s2,s2,s4
              #                    free s4
    slli s2,s2,2
    add     s2,s2,sp
              #                    occupy s5 with 48576_0
    li      s5, 48576
    li      s5, 48576
    add     s2,s5,s2
              #                    free s5
              #                    free s2
              #                          new_var temp_34_array_ele_68:i32 
              #                          temp_34_array_ele_68 = load temp_33_array_ptr_68:ptr->i32 
              #                    occupy s2 with temp_33_array_ptr_68
              #                    occupy s6 with temp_34_array_ele_68
    lw      s6,0(s2)
              #                    free s6
              #                    free s2
              #                          new_var temp_35_ptr2globl_68:Array:i32:[Some(1005_0)] 
              #                          temp_35_ptr2globl_68 = load *c_0:ptr->i32 
              #                    occupy s7 with *c_0
              #                       load label c as ptr to reg
    la      s7, c
              #                    occupy reg s7 with *c_0
              #                    occupy s8 with temp_35_ptr2globl_68
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_36_array_ptr_68:ptr->i32 
              #                          temp_36_array_ptr_68 = getelementptr temp_35_ptr2globl_68:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s9 with temp_36_array_ptr_68
    li      s9, 0
              #                    found literal reg Some(s3) already exist with 1_0
              #                    occupy s3 with 1_0
              #                    occupy a0 with i_59
              #                    occupy s10 with _anonymous_of_temp_35_ptr2globl_68_0
    mul     s10,s3,a0
              #                    free s3
              #                    free a0
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
              #                    occupy s11 with 44544_0
    li      s11, 44544
    li      s11, 44544
    add     s9,s11,s9
              #                    free s11
              #                    free s9
              #                          new_var temp_37_array_ele_68:i32 
              #                          temp_37_array_ele_68 = load temp_36_array_ptr_68:ptr->i32 
              #                    occupy s9 with temp_36_array_ptr_68
              #                    occupy a1 with temp_37_array_ele_68
    lw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          new_var temp_38_cmp_68:i1 
              #                          temp_38_cmp_68 = icmp i32 Sgt temp_37_array_ele_68, temp_34_array_ele_68 
              #                    occupy a1 with temp_37_array_ele_68
              #                    occupy s6 with temp_34_array_ele_68
              #                    occupy s3 with temp_38_cmp_68
    slt     s3,s6,a1
              #                    free a1
              #                    free s6
              #                    free s3
              #                          br i1 temp_38_cmp_68, label branch_true_69, label branch_false_69 
              #                    occupy s3 with temp_38_cmp_68
              #                    free s3
              #                    occupy s3 with temp_38_cmp_68
    bnez    s3, .branch_true_69
              #                    free s3
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: temp_37_array_ele_68, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_65, tracked: true } |     a7:Freed { symidx: temp_31_cmp_65, tracked: true } |     s1:Freed { symidx: temp_32_ptr2globl_68, tracked: true } |     s2:Freed { symidx: temp_33_array_ptr_68, tracked: true } |     s3:Freed { symidx: temp_38_cmp_68, tracked: true } |     s6:Freed { symidx: temp_34_array_ele_68, tracked: true } |     s8:Freed { symidx: temp_35_ptr2globl_68, tracked: true } |     s9:Freed { symidx: temp_36_array_ptr_68, tracked: true } | 
              #                          label branch_true_69: 
.branch_true_69:
              #                          new_var temp_39_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_39_ptr2globl_70 = load *u_0:ptr->i32 
              #                    occupy s4 with *u_0
              #                       load label u as ptr to reg
    la      s4, u
              #                    occupy reg s4 with *u_0
              #                    occupy s5 with temp_39_ptr2globl_70
    lw      s5,0(s4)
              #                    free s5
              #                    free s4
              #                          new_var temp_40_array_ptr_70:ptr->i32 
              #                          temp_40_array_ptr_70 = getelementptr temp_39_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s7 with temp_40_array_ptr_70
    li      s7, 0
              #                    occupy s10 with 1_0
    li      s10, 1
              #                    occupy a0 with i_59
              #                    occupy s11 with _anonymous_of_temp_39_ptr2globl_70_0
    mul     s11,s10,a0
              #                    free s10
              #                    free a0
    add     s7,s7,s11
              #                    free s11
    slli s7,s7,2
    add     s7,s7,sp
              #                    occupy s4 with 40508_0
    li      s4, 40508
    li      s4, 40508
    add     s7,s4,s7
              #                    free s4
              #                    free s7
              #                          new_var temp_41_array_ele_70:i32 
              #                          temp_41_array_ele_70 = load temp_40_array_ptr_70:ptr->i32 
              #                    occupy s7 with temp_40_array_ptr_70
              #                    occupy s4 with temp_41_array_ele_70
    lw      s4,0(s7)
              #                    free s4
              #                    free s7
              #                          t_70 = i32 temp_41_array_ele_70 
              #                    occupy s4 with temp_41_array_ele_70
              #                    occupy s10 with t_70
    mv      s10, s4
              #                    free s4
              #                    free s10
              #                          new_var temp_42_index_ptr_70:ptr->i32 
              #                          temp_42_index_ptr_70 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s11 with temp_42_index_ptr_70
    li      s11, 0
              #                    store to i_59 in mem offset_illegal
              #                    occupy a0 with 52620_0
    li      a0, 52620
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_59
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    store to temp_37_array_ele_68 in mem offset_illegal
              #                    occupy a1 with 44532_0
    li      a1, 44532
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_37_array_ele_68
              #                    occupy a1 with i_59
              #                    load from i_59 in mem

              #                    occupy a1 with i_59
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    store to temp_27_ptr2globl_61 in mem offset_illegal
              #                    occupy a2 with 52616_0
    li      a2, 52616
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_27_ptr2globl_61
              #                    occupy a2 with _anonymous_of_u_0_0
    mul     a2,a0,a1
              #                    free a0
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
              #                    occupy a0 with _anonymous_of_u_0_0
    la      a0, u
    add     s11,s11,a0
              #                    free a0
              #                    free s11
              #                          new_var temp_43_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_43_ptr2globl_70 = load *u_0:ptr->i32 
              #                    occupy a0 with *u_0
              #                       load label u as ptr to reg
    la      a0, u
              #                    occupy reg a0 with *u_0
              #                    occupy a2 with temp_43_ptr2globl_70
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                          new_var temp_44_array_ptr_70:ptr->i32 
              #                          temp_44_array_ptr_70 = getelementptr temp_43_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a0 with temp_44_array_ptr_70
    li      a0, 0
              #                    store to i_59 in mem offset_illegal
              #                    occupy a1 with 52620_0
    li      a1, 52620
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with i_59
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with j_63
              #                    store to temp_43_ptr2globl_70 in mem offset_illegal
              #                    occupy a2 with 36460_0
    li      a2, 36460
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_43_ptr2globl_70
              #                    occupy a2 with _anonymous_of_temp_43_ptr2globl_70_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 36460_0
    li      a1, 36460
    li      a1, 36460
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_45_array_ele_70:i32 
              #                          temp_45_array_ele_70 = load temp_44_array_ptr_70:ptr->i32 
              #                    occupy a0 with temp_44_array_ptr_70
              #                    occupy a1 with temp_45_array_ele_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_45_array_ele_70:i32 temp_42_index_ptr_70:ptr->i32 
              #                    occupy s11 with temp_42_index_ptr_70
              #                    occupy a1 with temp_45_array_ele_70
    sw      a1,0(s11)
              #                    free a1
              #                    free s11
              #                          mu u_0:241 
              #                          u_0 = chi u_0:241 
              #                          new_var temp_46_index_ptr_70:ptr->i32 
              #                          temp_46_index_ptr_70 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a2 with temp_46_index_ptr_70
    li      a2, 0
              #                    store to temp_44_array_ptr_70 in mem offset_illegal
              #                    occupy a0 with 36448_0
    li      a0, 36448
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_44_array_ptr_70
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_63
              #                    store to temp_45_array_ele_70 in mem offset_illegal
              #                    occupy a1 with 36444_0
    li      a1, 36444
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_45_array_ele_70
              #                    occupy a1 with _anonymous_of_u_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_u_0_0
    la      a0, u
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store t_70:i32 temp_46_index_ptr_70:ptr->i32 
              #                    occupy a2 with temp_46_index_ptr_70
              #                    occupy s10 with t_70
    sw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          mu u_0:247 
              #                          u_0 = chi u_0:247 
              #                          new_var temp_47_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_47_ptr2globl_70 = load *v_0:ptr->i32 
              #                    occupy a0 with *v_0
              #                       load label v as ptr to reg
    la      a0, v
              #                    occupy reg a0 with *v_0
              #                    occupy a1 with temp_47_ptr2globl_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_48_array_ptr_70:ptr->i32 
              #                          temp_48_array_ptr_70 = getelementptr temp_47_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a0 with temp_48_array_ptr_70
    li      a0, 0
              #                    store to temp_47_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 32412_0
    li      a1, 32412
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_47_ptr2globl_70
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_46_index_ptr_70 in mem offset_illegal
              #                    occupy a2 with 36432_0
    li      a2, 36432
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_46_index_ptr_70
              #                    occupy a2 with i_59
              #                    load from i_59 in mem

              #                    occupy a2 with i_59
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy a3 with 52615_0
    li      a3, 52615
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_28_cmp_61
              #                    occupy a3 with _anonymous_of_temp_47_ptr2globl_70_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 32412_0
    li      a1, 32412
    li      a1, 32412
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_49_array_ele_70:i32 
              #                          temp_49_array_ele_70 = load temp_48_array_ptr_70:ptr->i32 
              #                    occupy a0 with temp_48_array_ptr_70
              #                    occupy a1 with temp_49_array_ele_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          t_70 = i32 temp_49_array_ele_70 
              #                    occupy a1 with temp_49_array_ele_70
              #                    occupy s10 with t_70
    mv      s10, a1
              #                    free a1
              #                    free s10
              #                          new_var temp_50_index_ptr_70:ptr->i32 
              #                          temp_50_index_ptr_70 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a3 with temp_50_index_ptr_70
    li      a3, 0
              #                    store to temp_48_array_ptr_70 in mem offset_illegal
              #                    occupy a0 with 32400_0
    li      a0, 32400
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_48_array_ptr_70
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with i_59
              #                    store to temp_49_array_ele_70 in mem offset_illegal
              #                    occupy a1 with 32396_0
    li      a1, 32396
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_49_array_ele_70
              #                    occupy a1 with _anonymous_of_v_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
              #                    occupy a0 with _anonymous_of_v_0_0
    la      a0, v
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_51_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_51_ptr2globl_70 = load *v_0:ptr->i32 
              #                    occupy a0 with *v_0
              #                       load label v as ptr to reg
    la      a0, v
              #                    occupy reg a0 with *v_0
              #                    occupy a1 with temp_51_ptr2globl_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_52_array_ptr_70:ptr->i32 
              #                          temp_52_array_ptr_70 = getelementptr temp_51_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a0 with temp_52_array_ptr_70
    li      a0, 0
              #                    store to temp_51_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 28364_0
    li      a1, 28364
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_51_ptr2globl_70
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with j_63
              #                    store to i_59 in mem offset_illegal
              #                    occupy a2 with 52620_0
    li      a2, 52620
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_59
              #                    occupy a2 with _anonymous_of_temp_51_ptr2globl_70_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 28364_0
    li      a1, 28364
    li      a1, 28364
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_53_array_ele_70:i32 
              #                          temp_53_array_ele_70 = load temp_52_array_ptr_70:ptr->i32 
              #                    occupy a0 with temp_52_array_ptr_70
              #                    occupy a1 with temp_53_array_ele_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_53_array_ele_70:i32 temp_50_index_ptr_70:ptr->i32 
              #                    occupy a3 with temp_50_index_ptr_70
              #                    occupy a1 with temp_53_array_ele_70
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu v_0:272 
              #                          v_0 = chi v_0:272 
              #                          new_var temp_54_index_ptr_70:ptr->i32 
              #                          temp_54_index_ptr_70 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a2 with temp_54_index_ptr_70
    li      a2, 0
              #                    store to temp_52_array_ptr_70 in mem offset_illegal
              #                    occupy a0 with 28352_0
    li      a0, 28352
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_52_array_ptr_70
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_63
              #                    store to temp_53_array_ele_70 in mem offset_illegal
              #                    occupy a1 with 28348_0
    li      a1, 28348
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_53_array_ele_70
              #                    occupy a1 with _anonymous_of_v_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_v_0_0
    la      a0, v
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store t_70:i32 temp_54_index_ptr_70:ptr->i32 
              #                    occupy a2 with temp_54_index_ptr_70
              #                    occupy s10 with t_70
    sw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          mu v_0:278 
              #                          v_0 = chi v_0:278 
              #                          new_var temp_55_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_55_ptr2globl_70 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_55_ptr2globl_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_56_array_ptr_70:ptr->i32 
              #                          temp_56_array_ptr_70 = getelementptr temp_55_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a0 with temp_56_array_ptr_70
    li      a0, 0
              #                    store to temp_55_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 24316_0
    li      a1, 24316
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_55_ptr2globl_70
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    store to temp_54_index_ptr_70 in mem offset_illegal
              #                    occupy a2 with 28336_0
    li      a2, 28336
    add     a2,sp,a2
    sd      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_54_index_ptr_70
              #                    occupy a2 with i_59
              #                    load from i_59 in mem

              #                    occupy a2 with i_59
    add     a2,sp,a2
    lw      a2,0(a2)
              #                    free a2
              #                    store to temp_50_index_ptr_70 in mem offset_illegal
              #                    occupy a3 with 32384_0
    li      a3, 32384
    add     a3,sp,a3
    sd      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_50_index_ptr_70
              #                    occupy a3 with _anonymous_of_temp_55_ptr2globl_70_0
    mul     a3,a1,a2
              #                    free a1
              #                    free a2
    add     a0,a0,a3
              #                    free a3
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 24316_0
    li      a1, 24316
    li      a1, 24316
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_57_array_ele_70:i32 
              #                          temp_57_array_ele_70 = load temp_56_array_ptr_70:ptr->i32 
              #                    occupy a0 with temp_56_array_ptr_70
              #                    occupy a1 with temp_57_array_ele_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          t_70 = i32 temp_57_array_ele_70 
              #                    occupy a1 with temp_57_array_ele_70
              #                    occupy s10 with t_70
    mv      s10, a1
              #                    free a1
              #                    free s10
              #                          new_var temp_58_index_ptr_70:ptr->i32 
              #                          temp_58_index_ptr_70 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a3 with temp_58_index_ptr_70
    li      a3, 0
              #                    store to temp_56_array_ptr_70 in mem offset_illegal
              #                    occupy a0 with 24304_0
    li      a0, 24304
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_56_array_ptr_70
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a2 with i_59
              #                    store to temp_57_array_ele_70 in mem offset_illegal
              #                    occupy a1 with 24300_0
    li      a1, 24300
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_57_array_ele_70
              #                    occupy a1 with _anonymous_of_c_0_0
    mul     a1,a0,a2
              #                    free a0
              #                    free a2
    add     a3,a3,a1
              #                    free a1
    slli a3,a3,2
              #                    occupy a0 with _anonymous_of_c_0_0
    la      a0, c
    add     a3,a3,a0
              #                    free a0
              #                    free a3
              #                          new_var temp_59_ptr2globl_70:Array:i32:[Some(1005_0)] 
              #                          temp_59_ptr2globl_70 = load *c_0:ptr->i32 
              #                    occupy a0 with *c_0
              #                       load label c as ptr to reg
    la      a0, c
              #                    occupy reg a0 with *c_0
              #                    occupy a1 with temp_59_ptr2globl_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          new_var temp_60_array_ptr_70:ptr->i32 
              #                          temp_60_array_ptr_70 = getelementptr temp_59_ptr2globl_70:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a0 with temp_60_array_ptr_70
    li      a0, 0
              #                    store to temp_59_ptr2globl_70 in mem offset_illegal
              #                    occupy a1 with 20268_0
    li      a1, 20268
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_59_ptr2globl_70
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a5 with j_63
              #                    store to i_59 in mem offset_illegal
              #                    occupy a2 with 52620_0
    li      a2, 52620
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_59
              #                    occupy a2 with _anonymous_of_temp_59_ptr2globl_70_0
    mul     a2,a1,a5
              #                    free a1
              #                    free a5
    add     a0,a0,a2
              #                    free a2
    slli a0,a0,2
    add     a0,a0,sp
              #                    occupy a1 with 20268_0
    li      a1, 20268
    li      a1, 20268
    add     a0,a1,a0
              #                    free a1
              #                    free a0
              #                          new_var temp_61_array_ele_70:i32 
              #                          temp_61_array_ele_70 = load temp_60_array_ptr_70:ptr->i32 
              #                    occupy a0 with temp_60_array_ptr_70
              #                    occupy a1 with temp_61_array_ele_70
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          store temp_61_array_ele_70:i32 temp_58_index_ptr_70:ptr->i32 
              #                    occupy a3 with temp_58_index_ptr_70
              #                    occupy a1 with temp_61_array_ele_70
    sw      a1,0(a3)
              #                    free a1
              #                    free a3
              #                          mu c_0:303 
              #                          c_0 = chi c_0:303 
              #                          new_var temp_62_index_ptr_70:ptr->i32 
              #                          temp_62_index_ptr_70 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(j_63)] 
              #                    occupy a2 with temp_62_index_ptr_70
    li      a2, 0
              #                    store to temp_60_array_ptr_70 in mem offset_illegal
              #                    occupy a0 with 20256_0
    li      a0, 20256
    add     a0,sp,a0
    sd      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_60_array_ptr_70
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a5 with j_63
              #                    store to temp_61_array_ele_70 in mem offset_illegal
              #                    occupy a1 with 20252_0
    li      a1, 20252
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_61_array_ele_70
              #                    occupy a1 with _anonymous_of_c_0_0
    mul     a1,a0,a5
              #                    free a0
              #                    free a5
    add     a2,a2,a1
              #                    free a1
    slli a2,a2,2
              #                    occupy a0 with _anonymous_of_c_0_0
    la      a0, c
    add     a2,a2,a0
              #                    free a0
              #                    free a2
              #                          store t_70:i32 temp_62_index_ptr_70:ptr->i32 
              #                    occupy a2 with temp_62_index_ptr_70
              #                    occupy s10 with t_70
    sw      s10,0(a2)
              #                    free s10
              #                    free a2
              #                          mu c_0:309 
              #                          c_0 = chi c_0:309 
              #                          jump label: branch_false_69 
              #                    store to temp_58_index_ptr_70 in mem offset_illegal
              #                    occupy a0 with 24288_0
    li      a0, 24288
    add     a0,sp,a0
    sd      a3,0(a0)
              #                    free a0
              #                    release a3 with temp_58_index_ptr_70
              #                    store to temp_41_array_ele_70 in mem offset_illegal
              #                    occupy a3 with 40492_0
    li      a3, 40492
    add     a3,sp,a3
    sw      s4,0(a3)
              #                    free a3
              #                    release s4 with temp_41_array_ele_70
              #                    store to temp_39_ptr2globl_70 in mem offset_illegal
              #                    occupy s4 with 40508_0
    li      s4, 40508
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_39_ptr2globl_70
              #                    store to temp_40_array_ptr_70 in mem offset_illegal
              #                    occupy s5 with 40496_0
    li      s5, 40496
    add     s5,sp,s5
    sd      s7,0(s5)
              #                    free s5
              #                    release s7 with temp_40_array_ptr_70
              #                    store to t_70 in mem offset_illegal
              #                    occupy s7 with 40488_0
    li      s7, 40488
    add     s7,sp,s7
    sw      s10,0(s7)
              #                    free s7
              #                    release s10 with t_70
              #                    store to temp_62_index_ptr_70 in mem offset_illegal
              #                    occupy a1 with 20240_0
    li      a1, 20240
    add     a1,sp,a1
    sd      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_62_index_ptr_70
              #                    store to temp_42_index_ptr_70 in mem offset_illegal
              #                    occupy a2 with 40480_0
    li      a2, 40480
    add     a2,sp,a2
    sd      s11,0(a2)
              #                    free a2
              #                    release s11 with temp_42_index_ptr_70
              #                    occupy a0 with _anonymous_of_i_59_0
              #                    load from i_59 in mem

              #                    occupy s10 with i_59
    li      s10, 52620
    add     s10,sp,s10
    lw      a0,0(s10)
              #                    free s10
              #                    occupy a3 with _anonymous_of_temp_28_cmp_61_0
              #                    load from temp_28_cmp_61 in mem
              #                    occupy s11 with temp_28_cmp_61
    li      s11, 52615
    add     s11,sp,s11
    lb      a3,0(s11)
              #                    free s11
              #                    store to i_59 in mem offset_illegal
              #                    occupy s4 with 52620_0
    li      s4, 52620
    add     s4,sp,s4
    sw      s10,0(s4)
              #                    free s4
              #                    release s10 with i_59
              #                    occupy a1 with _anonymous_of_temp_37_array_ele_68_0
              #                    load from temp_37_array_ele_68 in mem

              #                    occupy s5 with temp_37_array_ele_68
    li      s5, 44532
    add     s5,sp,s5
    lw      a1,0(s5)
              #                    free s5
              #                    occupy a2 with _anonymous_of_temp_27_ptr2globl_61_0
              #                    load from temp_27_ptr2globl_61 in mem

              #                    occupy s7 with temp_27_ptr2globl_61
    li      s7, 52616
    add     s7,sp,s7
    lw      a2,0(s7)
              #                    free s7
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy s10 with 52615_0
    li      s10, 52615
    add     s10,sp,s10
    sb      s11,0(s10)
              #                    free s10
              #                    release s11 with temp_28_cmp_61
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: temp_37_array_ele_68, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_65, tracked: true } |     a7:Freed { symidx: temp_31_cmp_65, tracked: true } |     s1:Freed { symidx: temp_32_ptr2globl_68, tracked: true } |     s2:Freed { symidx: temp_33_array_ptr_68, tracked: true } |     s3:Freed { symidx: temp_38_cmp_68, tracked: true } |     s6:Freed { symidx: temp_34_array_ele_68, tracked: true } |     s8:Freed { symidx: temp_35_ptr2globl_68, tracked: true } |     s9:Freed { symidx: temp_36_array_ptr_68, tracked: true } | 
              #                          label branch_false_69: 
.branch_false_69:
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: temp_37_array_ele_68, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_65, tracked: true } |     a7:Freed { symidx: temp_31_cmp_65, tracked: true } |     s1:Freed { symidx: temp_32_ptr2globl_68, tracked: true } |     s2:Freed { symidx: temp_33_array_ptr_68, tracked: true } |     s3:Freed { symidx: temp_38_cmp_68, tracked: true } |     s6:Freed { symidx: temp_34_array_ele_68, tracked: true } |     s8:Freed { symidx: temp_35_ptr2globl_68, tracked: true } |     s9:Freed { symidx: temp_36_array_ptr_68, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_63_arithop_67:i32 
              #                          temp_63_arithop_67 = Add i32 j_63, 1_0 
              #                    occupy a5 with j_63
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy s5 with temp_63_arithop_67
    add     s5,a5,s4
              #                    free a5
              #                    free s4
              #                    free s5
              #                          j_63 = i32 temp_63_arithop_67 
              #                    occupy s5 with temp_63_arithop_67
              #                    occupy a5 with j_63
    mv      a5, s5
              #                    free s5
              #                    free a5
              #                          jump label: while.head_66 
              #                    store to temp_63_arithop_67 in mem offset_illegal
              #                    occupy s4 with 20236_0
    li      s4, 20236
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_63_arithop_67
              #                    store to temp_35_ptr2globl_68 in mem offset_illegal
              #                    occupy s5 with 44544_0
    li      s5, 44544
    add     s5,sp,s5
    sw      s8,0(s5)
              #                    free s5
              #                    release s8 with temp_35_ptr2globl_68
              #                    store to temp_31_cmp_65 in mem offset_illegal
              #                    occupy a7 with 52599_0
    li      a7, 52599
    add     a7,sp,a7
    sb      a7,0(a7)
              #                    free a7
              #                    release a7 with temp_31_cmp_65
              #                    store to temp_33_array_ptr_68 in mem offset_illegal
              #                    occupy a7 with 48568_0
    li      a7, 48568
    add     a7,sp,a7
    sd      s2,0(a7)
              #                    free a7
              #                    release s2 with temp_33_array_ptr_68
              #                    store to temp_37_array_ele_68 in mem offset_illegal
              #                    occupy a1 with 44532_0
    li      a1, 44532
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_37_array_ele_68
              #                    store to temp_36_array_ptr_68 in mem offset_illegal
              #                    occupy a1 with 44536_0
    li      a1, 44536
    add     a1,sp,a1
    sd      s9,0(a1)
              #                    free a1
              #                    release s9 with temp_36_array_ptr_68
              #                    store to temp_34_array_ele_68 in mem offset_illegal
              #                    occupy s2 with 48564_0
    li      s2, 48564
    add     s2,sp,s2
    sw      s6,0(s2)
              #                    free s2
              #                    release s6 with temp_34_array_ele_68
              #                    store to temp_38_cmp_68 in mem offset_illegal
              #                    occupy s3 with 44531_0
    li      s3, 44531
    add     s3,sp,s3
    sb      s3,0(s3)
              #                    free s3
              #                    release s3 with temp_38_cmp_68
              #                    store to temp_30_ptr2globl_65 in mem offset_illegal
              #                    occupy a6 with 52600_0
    li      a6, 52600
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_30_ptr2globl_65
              #                    store to temp_32_ptr2globl_68 in mem offset_illegal
              #                    occupy a6 with 48576_0
    li      a6, 48576
    add     a6,sp,a6
    sw      s1,0(a6)
              #                    free a6
              #                    release s1 with temp_32_ptr2globl_68
    j       .while.head_66
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_29_arithop_63, tracked: true } |     a5:Freed { symidx: j_63, tracked: true } |     a6:Freed { symidx: temp_30_ptr2globl_65, tracked: true } |     a7:Freed { symidx: temp_31_cmp_65, tracked: true } | 
              #                          label while.exit_66: 
.while.exit_66:
              #                          new_var temp_64_arithop_63:i32 
              #                          temp_64_arithop_63 = Add i32 i_59, 1_0 
              #                    occupy a0 with i_59
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy s1 with temp_64_arithop_63
    add     s1,a0,a1
              #                    free a0
              #                    free a1
              #                    free s1
              #                          i_59 = i32 temp_64_arithop_63 
              #                    occupy s1 with temp_64_arithop_63
              #                    occupy a0 with i_59
    mv      a0, s1
              #                    free s1
              #                    free a0
              #                          jump label: while.head_62 
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy a3 with 52615_0
    li      a3, 52615
    add     a3,sp,a3
    sb      a3,0(a3)
              #                    free a3
              #                    release a3 with temp_28_cmp_61
              #                    store to temp_31_cmp_65 in mem offset_illegal
              #                    occupy a3 with 52599_0
    li      a3, 52599
    add     a3,sp,a3
    sb      a7,0(a3)
              #                    free a3
              #                    release a7 with temp_31_cmp_65
              #                    store to temp_29_arithop_63 in mem offset_illegal
              #                    occupy a1 with 52608_0
    li      a1, 52608
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_29_arithop_63
              #                    store to temp_30_ptr2globl_65 in mem offset_illegal
              #                    occupy a4 with 52600_0
    li      a4, 52600
    add     a4,sp,a4
    sw      a6,0(a4)
              #                    free a4
              #                    release a6 with temp_30_ptr2globl_65
              #                    store to j_63 in mem offset_illegal
              #                    occupy a5 with 52604_0
    li      a5, 52604
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with j_63
              #                    store to temp_27_ptr2globl_61 in mem offset_illegal
              #                    occupy a2 with 52616_0
    li      a2, 52616
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with temp_27_ptr2globl_61
              #                    store to temp_64_arithop_63 in mem offset_illegal
              #                    occupy a2 with 20232_0
    li      a2, 20232
    add     a2,sp,a2
    sw      s1,0(a2)
              #                    free a2
              #                    release s1 with temp_64_arithop_63
    j       .while.head_62
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } | 
              #                          label while.exit_62: 
.while.exit_62:
              #                          i_59 = i32 1_0 
              #                    occupy a0 with i_59
    li      a0, 1
              #                    free a0
              #                          jump label: while.head_84 
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } | 
              #                          label while.head_84: 
.while.head_84:
              #                          new_var temp_65_ptr2globl_83:i32 
              #                          temp_65_ptr2globl_83 = load *n_0:ptr->i32 
              #                    occupy a1 with *n_0
              #                       load label n as ptr to reg
    la      a1, n
              #                    occupy reg a1 with *n_0
              #                    occupy a4 with temp_65_ptr2globl_83
    lw      a4,0(a1)
              #                    free a4
              #                    free a1
              #                          new_var temp_66_cmp_83:i1 
              #                          temp_66_cmp_83 = icmp i32 Sle i_59, temp_65_ptr2globl_83 
              #                    occupy a0 with i_59
              #                    occupy a4 with temp_65_ptr2globl_83
              #                    occupy a5 with temp_66_cmp_83
    slt     a5,a4,a0
    xori    a5,a5,1
              #                    free a0
              #                    free a4
              #                    free a5
              #                          br i1 temp_66_cmp_83, label while.body_84, label while.exit_84 
              #                    occupy a5 with temp_66_cmp_83
              #                    free a5
              #                    occupy a5 with temp_66_cmp_83
    bnez    a5, .while.body_84
              #                    free a5
    j       .while.exit_84
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } | 
              #                          label while.body_84: 
.while.body_84:
              #                          new_var temp_67_index_ptr_85:ptr->i32 
              #                          temp_67_index_ptr_85 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a1 with temp_67_index_ptr_85
    li      a1, 0
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a0 with i_59
              #                    occupy a7 with _anonymous_of_fa_0_0
    mul     a7,a6,a0
              #                    free a6
              #                    free a0
    add     a1,a1,a7
              #                    free a7
    slli a1,a1,2
              #                    occupy s1 with _anonymous_of_fa_0_0
    la      s1, fa
    add     a1,a1,s1
              #                    free s1
              #                    free a1
              #                          store i_59:i32 temp_67_index_ptr_85:ptr->i32 
              #                    occupy a1 with temp_67_index_ptr_85
              #                    occupy a0 with i_59
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu fa_0:335 
              #                          fa_0 = chi fa_0:335 
              #                          new_var temp_68_arithop_85:i32 
              #                          temp_68_arithop_85 = Add i32 i_59, 1_0 
              #                    occupy a0 with i_59
              #                    found literal reg Some(a6) already exist with 1_0
              #                    occupy a6 with 1_0
              #                    occupy s2 with temp_68_arithop_85
    add     s2,a0,a6
              #                    free a0
              #                    free a6
              #                    free s2
              #                          i_59 = i32 temp_68_arithop_85 
              #                    occupy s2 with temp_68_arithop_85
              #                    occupy a0 with i_59
    mv      a0, s2
              #                    free s2
              #                    free a0
              #                          jump label: while.head_84 
              #                    store to temp_68_arithop_85 in mem offset_illegal
              #                    occupy a7 with 20212_0
    li      a7, 20212
    add     a7,sp,a7
    sw      s2,0(a7)
              #                    free a7
              #                    release s2 with temp_68_arithop_85
              #                    store to temp_67_index_ptr_85 in mem offset_illegal
              #                    occupy a1 with 20216_0
    li      a1, 20216
    add     a1,sp,a1
    sd      a1,0(a1)
              #                    free a1
              #                    release a1 with temp_67_index_ptr_85
              #                    store to temp_65_ptr2globl_83 in mem offset_illegal
              #                    occupy a1 with 20228_0
    li      a1, 20228
    add     a1,sp,a1
    sw      a4,0(a1)
              #                    free a1
              #                    release a4 with temp_65_ptr2globl_83
              #                    store to temp_66_cmp_83 in mem offset_illegal
              #                    occupy a4 with 20227_0
    li      a4, 20227
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_66_cmp_83
    j       .while.head_84
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } | 
              #                          label while.exit_84: 
.while.exit_84:
              #                          i_59 = i32 0_0 
              #                    occupy a0 with i_59
    li      a0, 0
              #                    free a0
              #                          res_59 = i32 0_0 
              #                    occupy a1 with res_59
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_91 
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: res_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } | 
              #                          label while.head_91: 
.while.head_91:
              #                          new_var temp_69_ptr2globl_90:i32 
              #                          temp_69_ptr2globl_90 = load *m_0:ptr->i32 
              #                    occupy a6 with *m_0
              #                       load label m as ptr to reg
    la      a6, m
              #                    occupy reg a6 with *m_0
              #                    occupy a7 with temp_69_ptr2globl_90
    lw      a7,0(a6)
              #                    free a7
              #                    free a6
              #                          new_var temp_70_cmp_90:i1 
              #                          temp_70_cmp_90 = icmp i32 Slt i_59, temp_69_ptr2globl_90 
              #                    occupy a0 with i_59
              #                    occupy a7 with temp_69_ptr2globl_90
              #                    occupy s1 with temp_70_cmp_90
    slt     s1,a0,a7
              #                    free a0
              #                    free a7
              #                    free s1
              #                          br i1 temp_70_cmp_90, label while.body_91, label while.exit_91 
              #                    occupy s1 with temp_70_cmp_90
              #                    free s1
              #                    occupy s1 with temp_70_cmp_90
    bnez    s1, .while.body_91
              #                    free s1
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: res_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } |     a7:Freed { symidx: temp_69_ptr2globl_90, tracked: true } |     s1:Freed { symidx: temp_70_cmp_90, tracked: true } | 
              #                          label while.body_91: 
.while.body_91:
              #                          new_var temp_71_ptr2globl_93:Array:i32:[Some(1005_0)] 
              #                          temp_71_ptr2globl_93 = load *u_0:ptr->i32 
              #                    occupy a6 with *u_0
              #                       load label u as ptr to reg
    la      a6, u
              #                    occupy reg a6 with *u_0
              #                    occupy s2 with temp_71_ptr2globl_93
    lw      s2,0(a6)
              #                    free s2
              #                    free a6
              #                          new_var temp_72_array_ptr_93:ptr->i32 
              #                          temp_72_array_ptr_93 = getelementptr temp_71_ptr2globl_93:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s3 with temp_72_array_ptr_93
    li      s3, 0
              #                    occupy s4 with 1_0
    li      s4, 1
              #                    occupy a0 with i_59
              #                    occupy s5 with _anonymous_of_temp_71_ptr2globl_93_0
    mul     s5,s4,a0
              #                    free s4
              #                    free a0
    add     s3,s3,s5
              #                    free s5
    slli s3,s3,2
    add     s3,s3,sp
              #                    occupy s6 with 16180_0
    li      s6, 16180
    li      s6, 16180
    add     s3,s6,s3
              #                    free s6
              #                    free s3
              #                          new_var temp_73_array_ele_93:i32 
              #                          temp_73_array_ele_93 = load temp_72_array_ptr_93:ptr->i32 
              #                    occupy s3 with temp_72_array_ptr_93
              #                    occupy s7 with temp_73_array_ele_93
    lw      s7,0(s3)
              #                    free s7
              #                    free s3
              #                          new_var temp_74_ptr2globl_93:Array:i32:[Some(1005_0)] 
              #                          temp_74_ptr2globl_93 = load *v_0:ptr->i32 
              #                    occupy s8 with *v_0
              #                       load label v as ptr to reg
    la      s8, v
              #                    occupy reg s8 with *v_0
              #                    occupy s9 with temp_74_ptr2globl_93
    lw      s9,0(s8)
              #                    free s9
              #                    free s8
              #                          new_var temp_75_array_ptr_93:ptr->i32 
              #                          temp_75_array_ptr_93 = getelementptr temp_74_ptr2globl_93:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s10 with temp_75_array_ptr_93
    li      s10, 0
              #                    found literal reg Some(s4) already exist with 1_0
              #                    occupy s4 with 1_0
              #                    occupy a0 with i_59
              #                    occupy s11 with _anonymous_of_temp_74_ptr2globl_93_0
    mul     s11,s4,a0
              #                    free s4
              #                    free a0
    add     s10,s10,s11
              #                    free s11
    slli s10,s10,2
    add     s10,s10,sp
              #                    occupy a6 with 12144_0
    li      a6, 12144
    li      a6, 12144
    add     s10,a6,s10
              #                    free a6
              #                    free s10
              #                          new_var temp_76_array_ele_93:i32 
              #                          temp_76_array_ele_93 = load temp_75_array_ptr_93:ptr->i32 
              #                    occupy s10 with temp_75_array_ptr_93
              #                    occupy a6 with temp_76_array_ele_93
    lw      a6,0(s10)
              #                    free a6
              #                    free s10
              #                          new_var temp_77_ret_of_same_93:i32 
              #                          temp_77_ret_of_same_93 =  Call i32 same_0(temp_73_array_ele_93, temp_76_array_ele_93) 
              #                    saved register dumping to mem
              #                    store to temp_70_cmp_90 in mem offset_illegal
              #                    occupy s1 with 20203_0
    li      s1, 20203
    add     s1,sp,s1
    sb      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_70_cmp_90
              #                    store to temp_71_ptr2globl_93 in mem offset_illegal
              #                    found literal reg Some(s6) already exist with 16180_0
              #                    occupy s6 with 16180_0
    add     s6,sp,s6
    sw      s2,0(s6)
              #                    free s6
              #                    release s2 with temp_71_ptr2globl_93
              #                    store to temp_72_array_ptr_93 in mem offset_illegal
              #                    occupy s1 with 16168_0
    li      s1, 16168
    add     s1,sp,s1
    sd      s3,0(s1)
              #                    free s1
              #                    release s3 with temp_72_array_ptr_93
              #                    store to temp_73_array_ele_93 in mem offset_illegal
              #                    occupy s2 with 16164_0
    li      s2, 16164
    add     s2,sp,s2
    sw      s7,0(s2)
              #                    free s2
              #                    release s7 with temp_73_array_ele_93
              #                    store to temp_74_ptr2globl_93 in mem offset_illegal
              #                    occupy s3 with 12144_0
    li      s3, 12144
    add     s3,sp,s3
    sw      s9,0(s3)
              #                    free s3
              #                    release s9 with temp_74_ptr2globl_93
              #                    store to temp_75_array_ptr_93 in mem offset_illegal
              #                    occupy s4 with 12136_0
    li      s4, 12136
    add     s4,sp,s4
    sd      s10,0(s4)
              #                    free s4
              #                    release s10 with temp_75_array_ptr_93
              #                    store to i_59 in mem offset_illegal
              #                    occupy a0 with 52620_0
    li      a0, 52620
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_59
              #                    store to res_59 in mem offset_illegal
              #                    occupy a0 with 20208_0
    li      a0, 20208
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with res_59
              #                    store to temp_27_ptr2globl_61 in mem offset_illegal
              #                    occupy a1 with 52616_0
    li      a1, 52616
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_27_ptr2globl_61
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy a2 with 52615_0
    li      a2, 52615
    add     a2,sp,a2
    sb      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_28_cmp_61
              #                    store to temp_65_ptr2globl_83 in mem offset_illegal
              #                    occupy a3 with 20228_0
    li      a3, 20228
    add     a3,sp,a3
    sw      a4,0(a3)
              #                    free a3
              #                    release a4 with temp_65_ptr2globl_83
              #                    store to temp_66_cmp_83 in mem offset_illegal
              #                    occupy a4 with 20227_0
    li      a4, 20227
    add     a4,sp,a4
    sb      a5,0(a4)
              #                    free a4
              #                    release a5 with temp_66_cmp_83
              #                    store to temp_76_array_ele_93 in mem offset_illegal
              #                    occupy a5 with 12132_0
    li      a5, 12132
    add     a5,sp,a5
    sw      a6,0(a5)
              #                    free a5
              #                    release a6 with temp_76_array_ele_93
              #                    store to temp_69_ptr2globl_90 in mem offset_illegal
              #                    occupy a6 with 20204_0
    li      a6, 20204
    add     a6,sp,a6
    sw      a7,0(a6)
              #                    free a6
              #                    release a7 with temp_69_ptr2globl_90
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_73_array_ele_93_0
              #                    load from temp_73_array_ele_93 in mem

              #                    occupy a7 with temp_73_array_ele_93
    li      a7, 16164
    add     a7,sp,a7
    lw      a0,0(a7)
              #                    free a7
              #                    occupy a1 with _anonymous_of_temp_76_array_ele_93_0
              #                    load from temp_76_array_ele_93 in mem

              #                    occupy s5 with temp_76_array_ele_93
    li      s5, 12132
    add     s5,sp,s5
    lw      a1,0(s5)
              #                    free s5
              #                    arg load ended


    call    same
              #                    store to temp_77_ret_of_same_93 in mem offset_illegal
              #                    occupy a0 with 12128_0
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_78__2236:i1 
              #                          temp_78__2236 = icmp i32 Ne temp_77_ret_of_same_93, 0_0 
              #                    occupy a0 with temp_77_ret_of_same_93
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy s6 with temp_78__2236
    xor     s6,a0,a1
    snez    s6, s6
              #                    free a0
              #                    free a1
              #                    free s6
              #                          br i1 temp_78__2236, label branch_true_94, label branch_false_94 
              #                    occupy s6 with temp_78__2236
              #                    free s6
              #                    occupy s6 with temp_78__2236
    bnez    s6, .branch_true_94
              #                    free s6
    j       .branch_false_94
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_same_93, tracked: true } |     a7:Freed { symidx: temp_73_array_ele_93, tracked: true } |     s5:Freed { symidx: temp_76_array_ele_93, tracked: true } |     s6:Freed { symidx: temp_78__2236, tracked: true } | 
              #                          label branch_true_94: 
.branch_true_94:
              #                          jump label: while.exit_91 
              #                    store to temp_77_ret_of_same_93 in mem offset_illegal
              #                    occupy a0 with 12128_0
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ret_of_same_93
              #                    store to temp_76_array_ele_93 in mem offset_illegal
              #                    occupy a0 with 12132_0
    li      a0, 12132
    add     a0,sp,a0
    sw      s5,0(a0)
              #                    free a0
              #                    release s5 with temp_76_array_ele_93
              #                    store to temp_73_array_ele_93 in mem offset_illegal
              #                    occupy a1 with 16164_0
    li      a1, 16164
    add     a1,sp,a1
    sw      a7,0(a1)
              #                    free a1
              #                    release a7 with temp_73_array_ele_93
              #                    store to temp_78__2236 in mem offset_illegal
              #                    occupy a1 with 12127_0
    li      a1, 12127
    add     a1,sp,a1
    sb      s6,0(a1)
              #                    free a1
              #                    release s6 with temp_78__2236
              #                    occupy a0 with _anonymous_of_i_59_0
              #                    load from i_59 in mem

              #                    occupy a2 with i_59
    li      a2, 52620
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a3 with _anonymous_of_temp_28_cmp_61_0
              #                    load from temp_28_cmp_61 in mem
              #                    occupy a4 with temp_28_cmp_61
    li      a4, 52615
    add     a4,sp,a4
    lb      a3,0(a4)
              #                    free a4
              #                    occupy a7 with _anonymous_of_temp_69_ptr2globl_90_0
              #                    load from temp_69_ptr2globl_90 in mem

              #                    occupy a5 with temp_69_ptr2globl_90
    li      a5, 20204
    add     a5,sp,a5
    lw      a7,0(a5)
              #                    free a5
              #                    occupy a1 with _anonymous_of_res_59_0
              #                    load from res_59 in mem

              #                    occupy a6 with res_59
    li      a6, 20208
    add     a6,sp,a6
    lw      a1,0(a6)
              #                    free a6
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy a4 with 52615_0
    li      a4, 52615
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_28_cmp_61
              #                    occupy a4 with _anonymous_of_temp_65_ptr2globl_83_0
              #                    load from temp_65_ptr2globl_83 in mem

              #                    occupy s1 with temp_65_ptr2globl_83
    li      s1, 20228
    add     s1,sp,s1
    lw      a4,0(s1)
              #                    free s1
              #                    store to res_59 in mem offset_illegal
              #                    occupy a6 with 20208_0
    li      a6, 20208
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with res_59
              #                    store to temp_69_ptr2globl_90 in mem offset_illegal
              #                    occupy a5 with 20204_0
    li      a5, 20204
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with temp_69_ptr2globl_90
              #                    occupy a5 with _anonymous_of_temp_66_cmp_83_0
              #                    load from temp_66_cmp_83 in mem
              #                    occupy a6 with temp_66_cmp_83
    li      a6, 20227
    add     a6,sp,a6
    lb      a5,0(a6)
              #                    free a6
              #                    store to i_59 in mem offset_illegal
              #                    occupy a2 with 52620_0
    li      a2, 52620
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_59
              #                    occupy a2 with _anonymous_of_temp_27_ptr2globl_61_0
              #                    load from temp_27_ptr2globl_61 in mem

              #                    occupy s2 with temp_27_ptr2globl_61
    li      s2, 52616
    add     s2,sp,s2
    lw      a2,0(s2)
              #                    free s2
              #                    store to temp_65_ptr2globl_83 in mem offset_illegal
              #                    occupy s1 with 20228_0
    li      s1, 20228
    add     s1,sp,s1
    sw      s1,0(s1)
              #                    free s1
              #                    release s1 with temp_65_ptr2globl_83
              #                    occupy s1 with _anonymous_of_temp_70_cmp_90_0
              #                    load from temp_70_cmp_90 in mem
              #                    occupy s3 with temp_70_cmp_90
    li      s3, 20203
    add     s3,sp,s3
    lb      s1,0(s3)
              #                    free s3
    j       .while.exit_91
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_same_93, tracked: true } |     a7:Freed { symidx: temp_73_array_ele_93, tracked: true } |     s5:Freed { symidx: temp_76_array_ele_93, tracked: true } |     s6:Freed { symidx: temp_78__2236, tracked: true } | 
              #                          label branch_false_94: 
.branch_false_94:
              #                    regtab     a0:Freed { symidx: temp_77_ret_of_same_93, tracked: true } |     a7:Freed { symidx: temp_73_array_ele_93, tracked: true } |     s5:Freed { symidx: temp_76_array_ele_93, tracked: true } |     s6:Freed { symidx: temp_78__2236, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          new_var temp_79_ptr2globl_92:Array:i32:[Some(1005_0)] 
              #                          temp_79_ptr2globl_92 = load *c_0:ptr->i32 
              #                    occupy a1 with *c_0
              #                       load label c as ptr to reg
    la      a1, c
              #                    occupy reg a1 with *c_0
              #                    occupy a2 with temp_79_ptr2globl_92
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_80_array_ptr_92:ptr->i32 
              #                          temp_80_array_ptr_92 = getelementptr temp_79_ptr2globl_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy a3 with temp_80_array_ptr_92
    li      a3, 0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with i_59
              #                    load from i_59 in mem

              #                    occupy a5 with i_59
    add     a5,sp,a5
    lw      a5,0(a5)
              #                    free a5
              #                    occupy a6 with _anonymous_of_temp_79_ptr2globl_92_0
    mul     a6,a4,a5
              #                    free a4
              #                    free a5
    add     a3,a3,a6
              #                    free a6
    slli a3,a3,2
    add     a3,a3,sp
              #                    occupy s1 with 8104_0
    li      s1, 8104
    li      s1, 8104
    add     a3,s1,a3
              #                    free s1
              #                    free a3
              #                          new_var temp_81_array_ele_92:i32 
              #                          temp_81_array_ele_92 = load temp_80_array_ptr_92:ptr->i32 
              #                    occupy a3 with temp_80_array_ptr_92
              #                    occupy s2 with temp_81_array_ele_92
    lw      s2,0(a3)
              #                    free s2
              #                    free a3
              #                          new_var temp_82_arithop_92:i32 
              #                          temp_82_arithop_92 = Add i32 res_59, temp_81_array_ele_92 
              #                    occupy s3 with res_59
              #                    load from res_59 in mem

              #                    occupy s3 with res_59
    add     s3,sp,s3
    lw      s3,0(s3)
              #                    free s3
              #                    occupy s2 with temp_81_array_ele_92
              #                    occupy s4 with temp_82_arithop_92
    add     s4,s3,s2
              #                    free s3
              #                    free s2
              #                    free s4
              #                          res_59 = i32 temp_82_arithop_92 
              #                    occupy s4 with temp_82_arithop_92
              #                    occupy s3 with res_59
    mv      s3, s4
              #                    free s4
              #                    free s3
              #                          new_var temp_83_ptr2globl_92:Array:i32:[Some(1005_0)] 
              #                          temp_83_ptr2globl_92 = load *u_0:ptr->i32 
              #                    occupy s7 with *u_0
              #                       load label u as ptr to reg
    la      s7, u
              #                    occupy reg s7 with *u_0
              #                    occupy s8 with temp_83_ptr2globl_92
    lw      s8,0(s7)
              #                    free s8
              #                    free s7
              #                          new_var temp_84_array_ptr_92:ptr->i32 
              #                          temp_84_array_ptr_92 = getelementptr temp_83_ptr2globl_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s9 with temp_84_array_ptr_92
    li      s9, 0
              #                    found literal reg Some(a4) already exist with 1_0
              #                    occupy a4 with 1_0
              #                    occupy a5 with i_59
              #                    occupy s10 with _anonymous_of_temp_83_ptr2globl_92_0
    mul     s10,a4,a5
              #                    free a4
              #                    free a5
    add     s9,s9,s10
              #                    free s10
    slli s9,s9,2
    add     s9,s9,sp
              #                    occupy s11 with 4068_0
    li      s11, 4068
    li      s11, 4068
    add     s9,s11,s9
              #                    free s11
              #                    free s9
              #                          new_var temp_85_array_ele_92:i32 
              #                          temp_85_array_ele_92 = load temp_84_array_ptr_92:ptr->i32 
              #                    occupy s9 with temp_84_array_ptr_92
              #                    occupy a1 with temp_85_array_ele_92
    lw      a1,0(s9)
              #                    free a1
              #                    free s9
              #                          new_var temp_86_ret_of_find_92:i32 
              #                          temp_86_ret_of_find_92 =  Call i32 find_0(temp_85_array_ele_92) 
              #                    saved register dumping to mem
              #                    store to temp_81_array_ele_92 in mem offset_illegal
              #                    occupy s1 with 8092_0
    li      s1, 8092
    add     s1,sp,s1
    sw      s2,0(s1)
              #                    free s1
              #                    release s2 with temp_81_array_ele_92
              #                    store to res_59 in mem offset_illegal
              #                    occupy s2 with 20208_0
    li      s2, 20208
    add     s2,sp,s2
    sw      s3,0(s2)
              #                    free s2
              #                    release s3 with res_59
              #                    store to temp_82_arithop_92 in mem offset_illegal
              #                    occupy s3 with 8088_0
    li      s3, 8088
    add     s3,sp,s3
    sw      s4,0(s3)
              #                    free s3
              #                    release s4 with temp_82_arithop_92
              #                    store to temp_76_array_ele_93 in mem offset_illegal
              #                    occupy s4 with 12132_0
    li      s4, 12132
    add     s4,sp,s4
    sw      s5,0(s4)
              #                    free s4
              #                    release s5 with temp_76_array_ele_93
              #                    store to temp_78__2236 in mem offset_illegal
              #                    occupy s5 with 12127_0
    li      s5, 12127
    add     s5,sp,s5
    sb      s6,0(s5)
              #                    free s5
              #                    release s6 with temp_78__2236
              #                    store to temp_83_ptr2globl_92 in mem offset_illegal
              #                    found literal reg Some(s11) already exist with 4068_0
              #                    occupy s11 with 4068_0
    add     s11,sp,s11
    sw      s8,0(s11)
              #                    free s11
              #                    release s8 with temp_83_ptr2globl_92
              #                    store to temp_84_array_ptr_92 in mem offset_illegal
              #                    occupy s6 with 4056_0
    li      s6, 4056
    add     s6,sp,s6
    sd      s9,0(s6)
              #                    free s6
              #                    release s9 with temp_84_array_ptr_92
              #                    store to temp_77_ret_of_same_93 in mem offset_illegal
              #                    occupy a0 with 12128_0
    li      a0, 12128
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_77_ret_of_same_93
              #                    store to temp_85_array_ele_92 in mem offset_illegal
              #                    occupy a0 with 4052_0
    li      a0, 4052
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with temp_85_array_ele_92
              #                    store to temp_79_ptr2globl_92 in mem offset_illegal
              #                    occupy a1 with 8104_0
    li      a1, 8104
    add     a1,sp,a1
    sw      a2,0(a1)
              #                    free a1
              #                    release a2 with temp_79_ptr2globl_92
              #                    store to temp_80_array_ptr_92 in mem offset_illegal
              #                    occupy a2 with 8096_0
    li      a2, 8096
    add     a2,sp,a2
    sd      a3,0(a2)
              #                    free a2
              #                    release a3 with temp_80_array_ptr_92
              #                    store to i_59 in mem offset_illegal
              #                    occupy a3 with 52620_0
    li      a3, 52620
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with i_59
              #                    store to temp_73_array_ele_93 in mem offset_illegal
              #                    occupy a4 with 16164_0
    li      a4, 16164
    add     a4,sp,a4
    sw      a7,0(a4)
              #                    free a4
              #                    release a7 with temp_73_array_ele_93
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_85_array_ele_92_0
              #                    load from temp_85_array_ele_92 in mem

              #                    occupy a5 with temp_85_array_ele_92
    li      a5, 4052
    add     a5,sp,a5
    lw      a0,0(a5)
              #                    free a5
              #                    arg load ended


    call    find
              #                    store to temp_86_ret_of_find_92 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                          new_var temp_87_index_ptr_92:ptr->i32 
              #                          temp_87_index_ptr_92 = getelementptr fa_0:Array:i32:[Some(1005_0)] [Some(temp_86_ret_of_find_92)] 
              #                    occupy a6 with temp_87_index_ptr_92
    li      a6, 0
              #                    occupy a7 with 1_0
    li      a7, 1
              #                    occupy a0 with temp_86_ret_of_find_92
              #                    occupy s7 with _anonymous_of_fa_0_0
    mul     s7,a7,a0
              #                    free a7
              #                    free a0
    add     a6,a6,s7
              #                    free s7
    slli a6,a6,2
              #                    occupy s8 with _anonymous_of_fa_0_0
    la      s8, fa
    add     a6,a6,s8
              #                    free s8
              #                    free a6
              #                          new_var temp_88_ptr2globl_92:Array:i32:[Some(1005_0)] 
              #                          temp_88_ptr2globl_92 = load *v_0:ptr->i32 
              #                    occupy s9 with *v_0
              #                       load label v as ptr to reg
    la      s9, v
              #                    occupy reg s9 with *v_0
              #                    occupy s10 with temp_88_ptr2globl_92
    lw      s10,0(s9)
              #                    free s10
              #                    free s9
              #                          new_var temp_89_array_ptr_92:ptr->i32 
              #                          temp_89_array_ptr_92 = getelementptr temp_88_ptr2globl_92:Array:i32:[Some(1005_0)] [Some(i_59)] 
              #                    occupy s11 with temp_89_array_ptr_92
    li      s11, 0
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy a1 with i_59
              #                    load from i_59 in mem

              #                    occupy a1 with i_59
    add     a1,sp,a1
    lw      a1,0(a1)
              #                    free a1
              #                    occupy a2 with _anonymous_of_temp_88_ptr2globl_92_0
    mul     a2,a7,a1
              #                    free a7
              #                    free a1
    add     s11,s11,a2
              #                    free a2
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,20
              #                    free s11
              #                          new_var temp_90_array_ele_92:i32 
              #                          temp_90_array_ele_92 = load temp_89_array_ptr_92:ptr->i32 
              #                    occupy s11 with temp_89_array_ptr_92
              #                    occupy a2 with temp_90_array_ele_92
    lw      a2,0(s11)
              #                    free a2
              #                    free s11
              #                          store temp_90_array_ele_92:i32 temp_87_index_ptr_92:ptr->i32 
              #                    occupy a6 with temp_87_index_ptr_92
              #                    occupy a2 with temp_90_array_ele_92
    sw      a2,0(a6)
              #                    free a2
              #                    free a6
              #                          mu fa_0:421 
              #                          fa_0 = chi fa_0:421 
              #                          new_var temp_91_arithop_92:i32 
              #                          temp_91_arithop_92 = Add i32 i_59, 1_0 
              #                    occupy a1 with i_59
              #                    found literal reg Some(a7) already exist with 1_0
              #                    occupy a7 with 1_0
              #                    occupy a3 with temp_91_arithop_92
    add     a3,a1,a7
              #                    free a1
              #                    free a7
              #                    free a3
              #                          i_59 = i32 temp_91_arithop_92 
              #                    occupy a3 with temp_91_arithop_92
              #                    occupy a1 with i_59
    mv      a1, a3
              #                    free a3
              #                    free a1
              #                          jump label: while.head_91 
              #                    store to temp_86_ret_of_find_92 in mem offset_illegal
              #                    occupy a0 with 4048_0
    li      a0, 4048
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with temp_86_ret_of_find_92
              #                    store to temp_91_arithop_92 in mem offset legal
    sw      a3,0(sp)
              #                    release a3 with temp_91_arithop_92
              #                    store to temp_88_ptr2globl_92 in mem offset legal
    sw      s10,20(sp)
              #                    release s10 with temp_88_ptr2globl_92
              #                    store to i_59 in mem offset_illegal
              #                    occupy a0 with 52620_0
    li      a0, 52620
    add     a0,sp,a0
    sw      a1,0(a0)
              #                    free a0
              #                    release a1 with i_59
              #                    store to temp_87_index_ptr_92 in mem offset_illegal
              #                    occupy a1 with 4040_0
    li      a1, 4040
    add     a1,sp,a1
    sd      a6,0(a1)
              #                    free a1
              #                    release a6 with temp_87_index_ptr_92
              #                    store to temp_85_array_ele_92 in mem offset_illegal
              #                    occupy a3 with 4052_0
    li      a3, 4052
    add     a3,sp,a3
    sw      a5,0(a3)
              #                    free a3
              #                    release a5 with temp_85_array_ele_92
              #                    store to temp_90_array_ele_92 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_90_array_ele_92
              #                    store to temp_89_array_ptr_92 in mem offset legal
    sd      s11,8(sp)
              #                    release s11 with temp_89_array_ptr_92
              #                    occupy a0 with _anonymous_of_i_59_0
              #                    load from i_59 in mem

              #                    occupy a2 with i_59
    li      a2, 52620
    add     a2,sp,a2
    lw      a0,0(a2)
              #                    free a2
              #                    occupy a3 with _anonymous_of_temp_28_cmp_61_0
              #                    load from temp_28_cmp_61 in mem
              #                    occupy a4 with temp_28_cmp_61
    li      a4, 52615
    add     a4,sp,a4
    lb      a3,0(a4)
              #                    free a4
              #                    occupy a1 with _anonymous_of_res_59_0
              #                    load from res_59 in mem

              #                    occupy a5 with res_59
    li      a5, 20208
    add     a5,sp,a5
    lw      a1,0(a5)
              #                    free a5
              #                    store to temp_28_cmp_61 in mem offset_illegal
              #                    occupy a4 with 52615_0
    li      a4, 52615
    add     a4,sp,a4
    sb      a4,0(a4)
              #                    free a4
              #                    release a4 with temp_28_cmp_61
              #                    occupy a4 with _anonymous_of_temp_65_ptr2globl_83_0
              #                    load from temp_65_ptr2globl_83 in mem

              #                    occupy a6 with temp_65_ptr2globl_83
    li      a6, 20228
    add     a6,sp,a6
    lw      a4,0(a6)
              #                    free a6
              #                    store to temp_65_ptr2globl_83 in mem offset_illegal
              #                    occupy a6 with 20228_0
    li      a6, 20228
    add     a6,sp,a6
    sw      a6,0(a6)
              #                    free a6
              #                    release a6 with temp_65_ptr2globl_83
              #                    store to res_59 in mem offset_illegal
              #                    occupy a5 with 20208_0
    li      a5, 20208
    add     a5,sp,a5
    sw      a5,0(a5)
              #                    free a5
              #                    release a5 with res_59
              #                    occupy a5 with _anonymous_of_temp_66_cmp_83_0
              #                    load from temp_66_cmp_83 in mem
              #                    occupy a6 with temp_66_cmp_83
    li      a6, 20227
    add     a6,sp,a6
    lb      a5,0(a6)
              #                    free a6
              #                    store to i_59 in mem offset_illegal
              #                    occupy a2 with 52620_0
    li      a2, 52620
    add     a2,sp,a2
    sw      a2,0(a2)
              #                    free a2
              #                    release a2 with i_59
              #                    occupy a2 with _anonymous_of_temp_27_ptr2globl_61_0
              #                    load from temp_27_ptr2globl_61 in mem

              #                    occupy a7 with temp_27_ptr2globl_61
    li      a7, 52616
    add     a7,sp,a7
    lw      a2,0(a7)
              #                    free a7
    j       .while.head_91
              #                    regtab     a0:Freed { symidx: i_59, tracked: true } |     a1:Freed { symidx: res_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } |     a7:Freed { symidx: temp_69_ptr2globl_90, tracked: true } |     s1:Freed { symidx: temp_70_cmp_90, tracked: true } | 
              #                          label while.exit_91: 
.while.exit_91:
              #                          ret res_59 
              #                    load from ra_prim_0 in mem
              #                    occupy a6 with ra_prim_0
    li      a6, 52632
    add     a6,sp,a6
    ld      ra,0(a6)
              #                    free a6
              #                    load from s0_prim_0 in mem
              #                    occupy s2 with s0_prim_0
    li      s2, 52624
    add     s2,sp,s2
    ld      s0,0(s2)
              #                    free s2
              #                    store to res_59 in mem offset_illegal
              #                    occupy a1 with 20208_0
    li      a1, 20208
    add     a1,sp,a1
    sw      a1,0(a1)
              #                    free a1
              #                    release a1 with res_59
              #                    store to i_59 in mem offset_illegal
              #                    occupy a0 with 52620_0
    li      a0, 52620
    add     a0,sp,a0
    sw      a0,0(a0)
              #                    free a0
              #                    release a0 with i_59
              #                    occupy a0 with res_59
              #                    load from res_59 in mem

              #                    occupy a1 with res_59
    li      a1, 20208
    add     a1,sp,a1
    lw      a0,0(a1)
              #                    free a1
              #                    occupy s3 with 52640_0
    li      s3, 52640
    li      s3, 52640
    add     sp,s3,sp
              #                    free s3
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: res_59, tracked: true } |     a2:Freed { symidx: temp_27_ptr2globl_61, tracked: true } |     a3:Freed { symidx: temp_28_cmp_61, tracked: true } |     a4:Freed { symidx: temp_65_ptr2globl_83, tracked: true } |     a5:Freed { symidx: temp_66_cmp_83, tracked: true } |     a6:Freed { symidx: ra_prim_0, tracked: true } |     a7:Freed { symidx: temp_69_ptr2globl_90, tracked: true } |     s1:Freed { symidx: temp_70_cmp_90, tracked: true } |     s2:Freed { symidx: s0_prim_0, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 88|s0_main:8 at 80|temp_92_ret_of_quick_read:4 at 76|n:4 at 72|temp_93_ret_of_quick_read:4 at 68|m:4 at 64|i:4 at 60|temp_94_cmp:1 at 59|none:3 at 56|temp_95_index_ptr:8 at 48|temp_96_ret_of_quick_read:4 at 44|none:4 at 40|temp_97_index_ptr:8 at 32|temp_98_ret_of_quick_read:4 at 28|none:4 at 24|temp_99_index_ptr:8 at 16|temp_100_ret_of_quick_read:4 at 12|temp_101_arithop:4 at 8|temp_102_ret_of_prim:4 at 4|none:4 at 0
    addi    sp,sp,-96
              #                    store to ra_main_0 in mem offset legal
    sd      ra,88(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,80(sp)
    addi    s0,sp,96
              #                          alloc i32 temp_92_ret_of_quick_read_101 
              #                          alloc i32 n_101 
              #                          alloc i32 temp_93_ret_of_quick_read_101 
              #                          alloc i32 m_101 
              #                          alloc i32 i_101 
              #                          alloc i1 temp_94_cmp_104 
              #                          alloc ptr->i32 temp_95_index_ptr_106 
              #                          alloc i32 temp_96_ret_of_quick_read_106 
              #                          alloc ptr->i32 temp_97_index_ptr_106 
              #                          alloc i32 temp_98_ret_of_quick_read_106 
              #                          alloc ptr->i32 temp_99_index_ptr_106 
              #                          alloc i32 temp_100_ret_of_quick_read_106 
              #                          alloc i32 temp_101_arithop_106 
              #                          alloc i32 temp_102_ret_of_prim_101 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_92_ret_of_quick_read_101:i32 
              #                          temp_92_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_92_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                          n_101 = i32 temp_92_ret_of_quick_read_101 
              #                    occupy a0 with temp_92_ret_of_quick_read_101
              #                    occupy a1 with n_101
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_93_ret_of_quick_read_101:i32 
              #                          temp_93_ret_of_quick_read_101 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_92_ret_of_quick_read_101 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_92_ret_of_quick_read_101
              #                    store to n_101 in mem offset legal
    sw      a1,72(sp)
              #                    release a1 with n_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_93_ret_of_quick_read_101 in mem offset legal
    sw      a0,68(sp)
              #                          m_101 = i32 temp_93_ret_of_quick_read_101 
              #                    occupy a0 with temp_93_ret_of_quick_read_101
              #                    occupy a1 with m_101
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          i_101 = i32 0_0 
              #                    occupy a2 with i_101
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_105 
    j       .while.head_105
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_quick_read_101, tracked: true } |     a1:Freed { symidx: m_101, tracked: true } |     a2:Freed { symidx: i_101, tracked: true } | 
              #                          label while.head_105: 
.while.head_105:
              #                          new_var temp_94_cmp_104:i1 
              #                          temp_94_cmp_104 = icmp i32 Slt i_101, m_101 
              #                    occupy a2 with i_101
              #                    occupy a1 with m_101
              #                    occupy a3 with temp_94_cmp_104
    slt     a3,a2,a1
              #                    free a2
              #                    free a1
              #                    free a3
              #                          br i1 temp_94_cmp_104, label while.body_105, label while.exit_105 
              #                    occupy a3 with temp_94_cmp_104
              #                    free a3
              #                    occupy a3 with temp_94_cmp_104
    bnez    a3, .while.body_105
              #                    free a3
    j       .while.exit_105
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_quick_read_101, tracked: true } |     a1:Freed { symidx: m_101, tracked: true } |     a2:Freed { symidx: i_101, tracked: true } |     a3:Freed { symidx: temp_94_cmp_104, tracked: true } | 
              #                          label while.body_105: 
.while.body_105:
              #                          new_var temp_95_index_ptr_106:ptr->i32 
              #                          temp_95_index_ptr_106 = getelementptr u_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
              #                    occupy a4 with temp_95_index_ptr_106
    li      a4, 0
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a2 with i_101
              #                    occupy a6 with _anonymous_of_u_0_0
    mul     a6,a5,a2
              #                    free a5
              #                    free a2
    add     a4,a4,a6
              #                    free a6
    slli a4,a4,2
              #                    occupy a7 with _anonymous_of_u_0_0
    la      a7, u
    add     a4,a4,a7
              #                    free a7
              #                    free a4
              #                          new_var temp_96_ret_of_quick_read_106:i32 
              #                          temp_96_ret_of_quick_read_106 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_93_ret_of_quick_read_101 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_93_ret_of_quick_read_101
              #                    store to m_101 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with m_101
              #                    store to i_101 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with i_101
              #                    store to temp_94_cmp_104 in mem offset legal
    sb      a3,59(sp)
              #                    release a3 with temp_94_cmp_104
              #                    store to temp_95_index_ptr_106 in mem offset legal
    sd      a4,48(sp)
              #                    release a4 with temp_95_index_ptr_106
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_96_ret_of_quick_read_106 in mem offset legal
    sw      a0,44(sp)
              #                          store temp_96_ret_of_quick_read_106:i32 temp_95_index_ptr_106:ptr->i32 
              #                    occupy a1 with temp_95_index_ptr_106
              #                    load from temp_95_index_ptr_106 in mem
    ld      a1,48(sp)
              #                    occupy a0 with temp_96_ret_of_quick_read_106
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu u_0:456 
              #                          u_0 = chi u_0:456 
              #                          new_var temp_97_index_ptr_106:ptr->i32 
              #                          temp_97_index_ptr_106 = getelementptr v_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
              #                    occupy a2 with temp_97_index_ptr_106
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_101
              #                    load from i_101 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_v_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with _anonymous_of_v_0_0
    la      a6, v
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_98_ret_of_quick_read_106:i32 
              #                          temp_98_ret_of_quick_read_106 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_96_ret_of_quick_read_106 in mem offset legal
    sw      a0,44(sp)
              #                    release a0 with temp_96_ret_of_quick_read_106
              #                    store to temp_95_index_ptr_106 in mem offset legal
    sd      a1,48(sp)
              #                    release a1 with temp_95_index_ptr_106
              #                    store to temp_97_index_ptr_106 in mem offset legal
    sd      a2,32(sp)
              #                    release a2 with temp_97_index_ptr_106
              #                    store to i_101 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_98_ret_of_quick_read_106 in mem offset legal
    sw      a0,28(sp)
              #                          store temp_98_ret_of_quick_read_106:i32 temp_97_index_ptr_106:ptr->i32 
              #                    occupy a1 with temp_97_index_ptr_106
              #                    load from temp_97_index_ptr_106 in mem
    ld      a1,32(sp)
              #                    occupy a0 with temp_98_ret_of_quick_read_106
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu v_0:465 
              #                          v_0 = chi v_0:465 
              #                          new_var temp_99_index_ptr_106:ptr->i32 
              #                          temp_99_index_ptr_106 = getelementptr c_0:Array:i32:[Some(1005_0)] [Some(i_101)] 
              #                    occupy a2 with temp_99_index_ptr_106
    li      a2, 0
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with i_101
              #                    load from i_101 in mem


    lw      a4,60(sp)
              #                    occupy a5 with _anonymous_of_c_0_0
    mul     a5,a3,a4
              #                    free a3
              #                    free a4
    add     a2,a2,a5
              #                    free a5
    slli a2,a2,2
              #                    occupy a6 with _anonymous_of_c_0_0
    la      a6, c
    add     a2,a2,a6
              #                    free a6
              #                    free a2
              #                          new_var temp_100_ret_of_quick_read_106:i32 
              #                          temp_100_ret_of_quick_read_106 =  Call i32 quick_read_0() 
              #                    saved register dumping to mem
              #                    store to temp_98_ret_of_quick_read_106 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_98_ret_of_quick_read_106
              #                    store to temp_97_index_ptr_106 in mem offset legal
    sd      a1,32(sp)
              #                    release a1 with temp_97_index_ptr_106
              #                    store to temp_99_index_ptr_106 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_99_index_ptr_106
              #                    store to i_101 in mem offset legal
    sw      a4,60(sp)
              #                    release a4 with i_101
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    quick_read
              #                    store to temp_100_ret_of_quick_read_106 in mem offset legal
    sw      a0,12(sp)
              #                          store temp_100_ret_of_quick_read_106:i32 temp_99_index_ptr_106:ptr->i32 
              #                    occupy a1 with temp_99_index_ptr_106
              #                    load from temp_99_index_ptr_106 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_100_ret_of_quick_read_106
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          mu c_0:474 
              #                          c_0 = chi c_0:474 
              #                          new_var temp_101_arithop_106:i32 
              #                          temp_101_arithop_106 = Add i32 i_101, 1_0 
              #                    occupy a2 with i_101
              #                    load from i_101 in mem


    lw      a2,60(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_101_arithop_106
    add     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                          i_101 = i32 temp_101_arithop_106 
              #                    occupy a4 with temp_101_arithop_106
              #                    occupy a2 with i_101
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_105 
              #                    store to temp_100_ret_of_quick_read_106 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_100_ret_of_quick_read_106
              #                    store to temp_99_index_ptr_106 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_99_index_ptr_106
              #                    store to temp_101_arithop_106 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_101_arithop_106
              #                    occupy a0 with _anonymous_of_temp_93_ret_of_quick_read_101_0
              #                    load from temp_93_ret_of_quick_read_101 in mem


    lw      a0,68(sp)
              #                    occupy a1 with _anonymous_of_m_101_0
              #                    load from m_101 in mem


    lw      a1,64(sp)
    j       .while.head_105
              #                    regtab     a0:Freed { symidx: temp_93_ret_of_quick_read_101, tracked: true } |     a1:Freed { symidx: m_101, tracked: true } |     a2:Freed { symidx: i_101, tracked: true } |     a3:Freed { symidx: temp_94_cmp_104, tracked: true } | 
              #                          label while.exit_105: 
.while.exit_105:
              #                          new_var temp_102_ret_of_prim_101:i32 
              #                          temp_102_ret_of_prim_101 =  Call i32 prim_0() 
              #                    saved register dumping to mem
              #                    store to temp_93_ret_of_quick_read_101 in mem offset legal
    sw      a0,68(sp)
              #                    release a0 with temp_93_ret_of_quick_read_101
              #                    store to m_101 in mem offset legal
    sw      a1,64(sp)
              #                    release a1 with m_101
              #                    store to i_101 in mem offset legal
    sw      a2,60(sp)
              #                    release a2 with i_101
              #                    store to temp_94_cmp_104 in mem offset legal
    sb      a3,59(sp)
              #                    release a3 with temp_94_cmp_104
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    prim
              #                    store to temp_102_ret_of_prim_101 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_102_ret_of_prim_101 
              #                    load from ra_main_0 in mem
    ld      ra,88(sp)
              #                    load from s0_main_0 in mem
    ld      s0,80(sp)
              #                    store to temp_102_ret_of_prim_101 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_102_ret_of_prim_101
              #                    occupy a0 with temp_102_ret_of_prim_101
              #                    load from temp_102_ret_of_prim_101 in mem


    lw      a0,4(sp)
    addi    sp,sp,96
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl fa
              #                          global Array:i32:[Some(1005_0)] fa_0 
    .type fa,@object
fa:
    .zero 4020
    .align 4
    .globl c
              #                          global Array:i32:[Some(1005_0)] c_0 
    .type c,@object
c:
    .zero 4020
    .align 4
    .globl v
              #                          global Array:i32:[Some(1005_0)] v_0 
    .type v,@object
v:
    .zero 4020
    .align 4
    .globl u
              #                          global Array:i32:[Some(1005_0)] u_0 
    .type u,@object
u:
    .zero 4020
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
    .align 4
    .globl maxn
              #                          global i32 maxn_0 
    .type maxn,@object
maxn:
    .word 105
    .align 4
    .globl maxm
              #                          global i32 maxm_0 
    .type maxm,@object
maxm:
    .word 1005
