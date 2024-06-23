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
              #                          Define move_0 [x_16, y_16] -> move_ret_0 
    .globl move
    .type move,@function
move:
              #                    mem layout:|ra_move:8 at 16|s0_move:8 at 8|x:4 at 4|y:4 at 0
    addi    sp,sp,-24
              #                    store to ra_move_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_move_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                    regtab     a0:Freed { symidx: x_16, tracked: true } |     a1:Freed { symidx: y_16, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                           Call void putint_0(x_16) 
              #                    saved register dumping to mem
              #                    store to x_16 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with x_16
              #                    store to y_16 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with y_16
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_16_0
              #                    load from x_16 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                           Call void putint_0(y_16) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_16_0
              #                    load from y_16 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                           Call void putch_0(44_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_44_0_0
    li      a0, 44
              #                    arg load ended


    call    putch
              #                           Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                    regtab 
              #                    regtab 
              #                          Define hanoi_0 [n_24, one_24, two_24, three_24] -> hanoi_ret_0 
    .globl hanoi
    .type hanoi,@function
hanoi:
              #                    mem layout:|ra_hanoi:8 at 40|s0_hanoi:8 at 32|n:4 at 28|one:4 at 24|two:4 at 20|three:4 at 16|temp_0_cmp:1 at 15|none:3 at 12|temp_1_arithop:4 at 8|temp_2_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-48
              #                    store to ra_hanoi_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_hanoi_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i1 temp_0_cmp_27 
              #                          alloc i32 temp_1_arithop_30 
              #                          alloc i32 temp_2_arithop_30 
              #                    regtab     a0:Freed { symidx: n_24, tracked: true } |     a1:Freed { symidx: one_24, tracked: true } |     a2:Freed { symidx: two_24, tracked: true } |     a3:Freed { symidx: three_24, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_0_cmp_27:i1 
              #                          temp_0_cmp_27 = icmp i32 Eq n_24, 1_0 
              #                    occupy a0 with n_24
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_0_cmp_27
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                          br i1 temp_0_cmp_27, label branch_true_28, label branch_false_28 
              #                    occupy a5 with temp_0_cmp_27
              #                    free a5
              #                    occupy a5 with temp_0_cmp_27
    bnez    a5, .branch_true_28
              #                    free a5
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: n_24, tracked: true } |     a1:Freed { symidx: one_24, tracked: true } |     a2:Freed { symidx: two_24, tracked: true } |     a3:Freed { symidx: three_24, tracked: true } |     a5:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label branch_true_28: 
.branch_true_28:
              #                           Call void move_0(one_24, three_24) 
              #                    saved register dumping to mem
              #                    store to n_24 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with n_24
              #                    store to one_24 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with one_24
              #                    store to two_24 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with two_24
              #                    store to three_24 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with three_24
              #                    store to temp_0_cmp_27 in mem offset legal
    sb      a5,15(sp)
              #                    release a5 with temp_0_cmp_27
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_one_24_0
              #                    load from one_24 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_three_24_0
              #                    load from three_24 in mem


    lw      a1,16(sp)
              #                    arg load ended


    call    move
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: n_24, tracked: true } |     a1:Freed { symidx: one_24, tracked: true } |     a2:Freed { symidx: two_24, tracked: true } |     a3:Freed { symidx: three_24, tracked: true } |     a5:Freed { symidx: temp_0_cmp_27, tracked: true } | 
              #                          label branch_false_28: 
.branch_false_28:
              #                          new_var temp_1_arithop_30:i32 
              #                          temp_1_arithop_30 = Sub i32 n_24, 1_0 
              #                    occupy a0 with n_24
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a6 with temp_1_arithop_30
              #                    regtab:    a0:Occupied { symidx: n_24, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: one_24, tracked: true } |     a2:Freed { symidx: two_24, tracked: true } |     a3:Freed { symidx: three_24, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Freed { symidx: temp_0_cmp_27, tracked: true } |     a6:Occupied { symidx: temp_1_arithop_30, tracked: true, occupy_count: 1 } | 


    sub     a6,a0,a4
              #                    free a0
              #                    free a4
              #                    free a6
              #                           Call void hanoi_0(temp_1_arithop_30, one_24, three_24, two_24) 
              #                    saved register dumping to mem
              #                    store to n_24 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with n_24
              #                    store to one_24 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with one_24
              #                    store to two_24 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with two_24
              #                    store to three_24 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with three_24
              #                    store to temp_0_cmp_27 in mem offset legal
    sb      a5,15(sp)
              #                    release a5 with temp_0_cmp_27
              #                    store to temp_1_arithop_30 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_1_arithop_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_arithop_30_0
              #                    load from temp_1_arithop_30 in mem


    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_one_24_0
              #                    load from one_24 in mem


    lw      a1,24(sp)
              #                    occupy a2 with _anonymous_of_three_24_0
              #                    load from three_24 in mem


    lw      a2,16(sp)
              #                    occupy a3 with _anonymous_of_two_24_0
              #                    load from two_24 in mem


    lw      a3,20(sp)
              #                    arg load ended


    call    hanoi
              #                           Call void move_0(one_24, three_24) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_one_24_0
              #                    load from one_24 in mem


    lw      a0,24(sp)
              #                    occupy a1 with _anonymous_of_three_24_0
              #                    load from three_24 in mem


    lw      a1,16(sp)
              #                    arg load ended


    call    move
              #                          new_var temp_2_arithop_30:i32 
              #                          temp_2_arithop_30 = Sub i32 n_24, 1_0 
              #                    occupy a0 with n_24
              #                    load from n_24 in mem


    lw      a0,28(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_2_arithop_30
              #                    regtab:    a0:Occupied { symidx: n_24, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_2_arithop_30, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                           Call void hanoi_0(temp_2_arithop_30, two_24, one_24, three_24) 
              #                    saved register dumping to mem
              #                    store to n_24 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with n_24
              #                    store to temp_2_arithop_30 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_2_arithop_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_arithop_30_0
              #                    load from temp_2_arithop_30 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_two_24_0
              #                    load from two_24 in mem


    lw      a1,20(sp)
              #                    occupy a2 with _anonymous_of_one_24_0
              #                    load from one_24 in mem


    lw      a2,24(sp)
              #                    occupy a3 with _anonymous_of_three_24_0
              #                    load from three_24 in mem


    lw      a3,16(sp)
              #                    arg load ended


    call    hanoi
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_3_ret_of_getint:4 at 20|n:4 at 16|temp_4_cmp:1 at 15|none:3 at 12|temp_5_ret_of_getint:4 at 8|temp_6_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_3_ret_of_getint_35 
              #                          alloc i32 n_35 
              #                          alloc i1 temp_4_cmp_37 
              #                          alloc i32 temp_5_ret_of_getint_39 
              #                          alloc i32 temp_6_arithop_39 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_3_ret_of_getint_35:i32 
              #                          temp_3_ret_of_getint_35 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_3_ret_of_getint_35 in mem offset legal
    sw      a0,20(sp)
              #                          n_35 = i32 temp_3_ret_of_getint_35 
              #                    occupy a0 with temp_3_ret_of_getint_35
              #                    occupy a1 with n_35
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_35, tracked: true } |     a1:Freed { symidx: n_35, tracked: true } | 
              #                          label while.head_38: 
.while.head_38:
              #                          new_var temp_4_cmp_37:i1 
              #                          temp_4_cmp_37 = icmp i32 Sgt n_35, 0_0 
              #                    occupy a1 with n_35
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_4_cmp_37
    slt     a3,a2,a1
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_4_cmp_37, label while.body_38, label while.exit_38 
              #                    occupy a3 with temp_4_cmp_37
              #                    free a3
              #                    occupy a3 with temp_4_cmp_37
    bnez    a3, .while.body_38
              #                    free a3
    j       .while.exit_38
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_35, tracked: true } |     a1:Freed { symidx: n_35, tracked: true } |     a3:Freed { symidx: temp_4_cmp_37, tracked: true } | 
              #                          label while.body_38: 
.while.body_38:
              #                          new_var temp_5_ret_of_getint_39:i32 
              #                          temp_5_ret_of_getint_39 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_3_ret_of_getint_35 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_3_ret_of_getint_35
              #                    store to n_35 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with n_35
              #                    store to temp_4_cmp_37 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_4_cmp_37
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_5_ret_of_getint_39 in mem offset legal
    sw      a0,8(sp)
              #                           Call void hanoi_0(temp_5_ret_of_getint_39, 1_0, 2_0, 3_0) 
              #                    saved register dumping to mem
              #                    store to temp_5_ret_of_getint_39 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_5_ret_of_getint_39
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_5_ret_of_getint_39_0
              #                    load from temp_5_ret_of_getint_39 in mem


    lw      a0,8(sp)
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    occupy a2 with _anonymous_of_2_0_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_3_0_0
    li      a3, 3
              #                    arg load ended


    call    hanoi
              #                           Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                          new_var temp_6_arithop_39:i32 
              #                          temp_6_arithop_39 = Sub i32 n_35, 1_0 
              #                    occupy a0 with n_35
              #                    load from n_35 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_6_arithop_39
              #                    regtab:    a0:Occupied { symidx: n_35, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_6_arithop_39, tracked: true, occupy_count: 1 } | 


    sub     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          n_35 = i32 temp_6_arithop_39 
              #                    occupy a2 with temp_6_arithop_39
              #                    occupy a0 with n_35
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_38 
              #                    store to n_35 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_35
              #                    store to temp_6_arithop_39 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_6_arithop_39
              #                    occupy a1 with _anonymous_of_n_35_0
              #                    load from n_35 in mem


    lw      a1,16(sp)
              #                    occupy a0 with _anonymous_of_temp_3_ret_of_getint_35_0
              #                    load from temp_3_ret_of_getint_35 in mem


    lw      a0,20(sp)
    j       .while.head_38
              #                    regtab     a0:Freed { symidx: temp_3_ret_of_getint_35, tracked: true } |     a1:Freed { symidx: n_35, tracked: true } |     a3:Freed { symidx: temp_4_cmp_37, tracked: true } | 
              #                          label while.exit_38: 
.while.exit_38:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    store to temp_3_ret_of_getint_35 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with temp_3_ret_of_getint_35
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: n_35, tracked: true } |     a3:Freed { symidx: temp_4_cmp_37, tracked: true } | 
