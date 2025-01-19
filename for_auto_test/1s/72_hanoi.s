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
              #                     16   Define move_0 "x_16_0,y_16_0," -> move_ret_0 
    .globl move
    .type move,@function
move:
              #                    mem layout:|ra_move:8 at 16|s0_move:8 at 8|x _s16 _i0:4 at 4|y _s16 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_move_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_move_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                    regtab     a0:Freed { symidx: x_16_0, tracked: true } |     a1:Freed { symidx: y_16_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     19    Call void putint_0(x_16_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_16_0
              #                    store to x_16_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with x_16_0
              #                    occupy a1 with y_16_0
              #                    store to y_16_0 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with y_16_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_16_0_0
              #                    load from x_16_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     66   untrack x_16_0 
              #                     20    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                     21    Call void putint_0(y_16_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_y_16_0_0
              #                    load from y_16_0 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    putint
              #                     67   untrack y_16_0 
              #                     22    Call void putch_0(44_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_44_0_0
    li      a0, 44
              #                    arg load ended


    call    putch
              #                     23    Call void putch_0(32_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_32_0_0
    li      a0, 32
              #                    arg load ended


    call    putch
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     25   label exit_2: 
.exit_2:
              #                     24   ret 
              #                    load from ra_move_0 in mem
    ld      ra,16(sp)
              #                    load from s0_move_0 in mem
    ld      s0,8(sp)
    addi    sp,sp,24
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define hanoi_0 "n_24_0,one_24_0,two_24_0,three_24_0," -> hanoi_ret_0 
    .globl hanoi
    .type hanoi,@function
hanoi:
              #                    mem layout:|ra_hanoi:8 at 32|s0_hanoi:8 at 24|n _s24 _i0:4 at 20|one _s24 _i0:4 at 16|two _s24 _i0:4 at 12|three _s24 _i0:4 at 8|temp_0_arithop _s30 _i0:4 at 4|temp_2_cmp _s27 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_hanoi_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_hanoi_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     26   alloc i32 [temp_0_arithop_30] 
              #                     30   alloc i32 [temp_1_arithop_30] 
              #                     34   alloc i1 [temp_2_cmp_27] 
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     a1:Freed { symidx: one_24_0, tracked: true } |     a2:Freed { symidx: two_24_0, tracked: true } |     a3:Freed { symidx: three_24_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     35   temp_2_cmp_27_0 = icmp i32 Eq n_24_0, 1_0 
              #                    occupy a0 with n_24_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_2_cmp_27_0
    xor     a5,a0,a4
    seqz    a5, a5
              #                    free a0
              #                    free a4
              #                    free a5
              #                     38   br i1 temp_2_cmp_27_0, label branch_true_28, label branch_false_28 
              #                    occupy a5 with temp_2_cmp_27_0
              #                    free a5
              #                    occupy a5 with temp_2_cmp_27_0
    bnez    a5, .branch_true_28
              #                    free a5
    j       .branch_false_28
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     a1:Freed { symidx: one_24_0, tracked: true } |     a2:Freed { symidx: two_24_0, tracked: true } |     a3:Freed { symidx: three_24_0, tracked: true } |     a5:Freed { symidx: temp_2_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     36   label branch_true_28: 
.branch_true_28:
              #                     71   untrack two_24_0 
              #                    occupy a2 with two_24_0
              #                    release a2 with two_24_0
              #                     70   untrack temp_0_arithop_30_0 
              #                     69   untrack n_24_0 
              #                    occupy a0 with n_24_0
              #                    release a0 with n_24_0
              #                     68   untrack temp_2_cmp_27_0 
              #                    occupy a5 with temp_2_cmp_27_0
              #                    release a5 with temp_2_cmp_27_0
              #                     33    Call void move_0(one_24_0, three_24_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with one_24_0
              #                    store to one_24_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with one_24_0
              #                    occupy a3 with three_24_0
              #                    store to three_24_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with three_24_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_one_24_0_0
              #                    load from one_24_0 in mem


    lw      a0,16(sp)
              #                    occupy a1 with _anonymous_of_three_24_0_0
              #                    load from three_24_0 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    move
              #                     74   untrack one_24_0 
              #                     73   untrack three_24_0 
              #                          jump label: gather_9 
    j       .gather_9
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     39   label gather_9: 
.gather_9:
              #                          jump label: exit_5 
    j       .exit_5
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     41   label exit_5: 
.exit_5:
              #                     40   ret 
              #                    load from ra_hanoi_0 in mem
    ld      ra,32(sp)
              #                    load from s0_hanoi_0 in mem
    ld      s0,24(sp)
    addi    sp,sp,40
    ret
              #                    regtab     a0:Freed { symidx: n_24_0, tracked: true } |     a1:Freed { symidx: one_24_0, tracked: true } |     a2:Freed { symidx: two_24_0, tracked: true } |     a3:Freed { symidx: three_24_0, tracked: true } |     a5:Freed { symidx: temp_2_cmp_27_0, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     37   label branch_false_28: 
.branch_false_28:
              #                     72   untrack temp_2_cmp_27_0 
              #                    occupy a5 with temp_2_cmp_27_0
              #                    release a5 with temp_2_cmp_27_0
              #                     27   temp_0_arithop_30_0 = Sub i32 n_24_0, 1_0 
              #                    occupy a0 with n_24_0
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_0_arithop_30_0
              #                    regtab:    a0:Occupied { symidx: n_24_0, tracked: true, occupy_count: 1 } |     a1:Freed { symidx: one_24_0, tracked: true } |     a2:Freed { symidx: two_24_0, tracked: true } |     a3:Freed { symidx: three_24_0, tracked: true } |     a4:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a5:Occupied { symidx: temp_0_arithop_30_0, tracked: true, occupy_count: 1 } |  released_gpr_count:12,released_fpr_count:24


    subw    a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                     77   untrack n_24_0 
              #                    occupy a0 with n_24_0
              #                    release a0 with n_24_0
              #                     28    Call void hanoi_0(temp_0_arithop_30_0, one_24_0, three_24_0, two_24_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with one_24_0
              #                    store to one_24_0 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with one_24_0
              #                    occupy a2 with two_24_0
              #                    store to two_24_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with two_24_0
              #                    occupy a3 with three_24_0
              #                    store to three_24_0 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with three_24_0
              #                    occupy a5 with temp_0_arithop_30_0
              #                    store to temp_0_arithop_30_0 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_0_arithop_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_arithop_30_0_0
              #                    load from temp_0_arithop_30_0 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_one_24_0_0
              #                    load from one_24_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_three_24_0_0
              #                    load from three_24_0 in mem


    lw      a2,8(sp)
              #                    occupy a3 with _anonymous_of_two_24_0_0
              #                    load from two_24_0 in mem


    lw      a3,12(sp)
              #                    arg load ended


    call    hanoi
              #                     29    Call void move_0(one_24_0, three_24_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_one_24_0_0
              #                    load from one_24_0 in mem


    lw      a0,16(sp)
              #                    occupy a1 with _anonymous_of_three_24_0_0
              #                    load from three_24_0 in mem


    lw      a1,8(sp)
              #                    arg load ended


    call    move
              #                     31   (nop) 
              #                     32    Call void hanoi_0(temp_0_arithop_30_0, two_24_0, one_24_0, three_24_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_arithop_30_0_0
              #                    load from temp_0_arithop_30_0 in mem


    lw      a0,4(sp)
              #                    occupy a1 with _anonymous_of_two_24_0_0
              #                    load from two_24_0 in mem


    lw      a1,12(sp)
              #                    occupy a2 with _anonymous_of_one_24_0_0
              #                    load from one_24_0 in mem


    lw      a2,16(sp)
              #                    occupy a3 with _anonymous_of_three_24_0_0
              #                    load from three_24_0 in mem


    lw      a3,8(sp)
              #                    arg load ended


    call    hanoi
              #                     79   untrack three_24_0 
              #                     78   untrack two_24_0 
              #                     76   untrack one_24_0 
              #                     75   untrack temp_0_arithop_30_0 
              #                          jump label: gather_9 
    j       .gather_9
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|temp_3_ret_of_getint _s35 _i0:4 at 20|n _s35 _i1:4 at 16|temp_4_ret_of_getint _s39 _i0:4 at 12|temp_5_arithop _s39 _i0:4 at 8|temp_6_cmp _s37 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     42   alloc i32 [temp_3_ret_of_getint_35] 
              #                     45   alloc i32 [n_35] 
              #                     48   alloc i32 [temp_4_ret_of_getint_39] 
              #                     52   alloc i32 [temp_5_arithop_39] 
              #                     55   alloc i1 [temp_6_cmp_37] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     43   temp_3_ret_of_getint_35_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     44   (nop) 
              #                     64   n_35_1 = i32 temp_3_ret_of_getint_35_0 
              #                    occupy a0 with temp_3_ret_of_getint_35_0
              #                    occupy a1 with n_35_1
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     80   untrack temp_3_ret_of_getint_35_0 
              #                    occupy a0 with temp_3_ret_of_getint_35_0
              #                    release a0 with temp_3_ret_of_getint_35_0
              #                          jump label: while.head_38 
    j       .while.head_38
              #                    regtab     a1:Freed { symidx: n_35_1, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     57   label while.head_38: 
.while.head_38:
              #                     56   temp_6_cmp_37_0 = icmp i32 Sgt n_35_1, 0_0 
              #                    occupy a1 with n_35_1
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_6_cmp_37_0
    slt     a2,a0,a1
              #                    free a1
              #                    free a0
              #                    free a2
              #                     60   br i1 temp_6_cmp_37_0, label while.body_38, label while.exit_38 
              #                    occupy a2 with temp_6_cmp_37_0
              #                    free a2
              #                    occupy a2 with temp_6_cmp_37_0
    bnez    a2, .while.body_38
              #                    free a2
    j       .while.exit_38
              #                    regtab     a1:Freed { symidx: n_35_1, tracked: true } |     a2:Freed { symidx: temp_6_cmp_37_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     58   label while.body_38: 
.while.body_38:
              #                     49   temp_4_ret_of_getint_39_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a1 with n_35_1
              #                    store to n_35_1 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with n_35_1
              #                    occupy a2 with temp_6_cmp_37_0
              #                    store to temp_6_cmp_37_0 in mem offset legal
    sb      a2,7(sp)
              #                    release a2 with temp_6_cmp_37_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     50    Call void hanoi_0(temp_4_ret_of_getint_39_0, 1_0, 2_0, 3_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_4_ret_of_getint_39_0
              #                    store to temp_4_ret_of_getint_39_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_4_ret_of_getint_39_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_ret_of_getint_39_0_0
              #                    load from temp_4_ret_of_getint_39_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_1_0_0
    li      a1, 1
              #                    occupy a2 with _anonymous_of_2_0_0
    li      a2, 2
              #                    occupy a3 with _anonymous_of_3_0_0
    li      a3, 3
              #                    arg load ended


    call    hanoi
              #                     51    Call void putch_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    putch
              #                     53   temp_5_arithop_39_0 = Sub i32 n_35_1, 1_0 
              #                    occupy a0 with n_35_1
              #                    load from n_35_1 in mem


    lw      a0,16(sp)
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_5_arithop_39_0
              #                    regtab:    a0:Occupied { symidx: n_35_1, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_5_arithop_39_0, tracked: true, occupy_count: 1 } |  released_gpr_count:15,released_fpr_count:24


    subw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     54   (nop) 
              #                     65   n_35_1 = i32 temp_5_arithop_39_0 
              #                    occupy a2 with temp_5_arithop_39_0
              #                    occupy a0 with n_35_1
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                          jump label: while.head_38 
              #                    occupy a0 with n_35_1
              #                    store to n_35_1 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with n_35_1
              #                    occupy a1 with n_35_1
              #                    load from n_35_1 in mem


    lw      a1,16(sp)
              #                    occupy a2 with temp_5_arithop_39_0
              #                    store to temp_5_arithop_39_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_5_arithop_39_0
    j       .while.head_38
              #                    regtab     a1:Freed { symidx: n_35_1, tracked: true } |     a2:Freed { symidx: temp_6_cmp_37_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     59   label while.exit_38: 
.while.exit_38:
              #                     81   untrack n_35_1 
              #                    occupy a1 with n_35_1
              #                    release a1 with n_35_1
              #                     47   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
