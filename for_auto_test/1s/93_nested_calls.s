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
              #                     16   Define func1_0 "x_16_0,y_16_0,z_16_0," -> func1_ret_0 
    .globl func1
    .type func1,@function
func1:
              #                    mem layout:|ra_func1:8 at 40|s0_func1:8 at 32|x _s16 _i0:4 at 28|y _s16 _i0:4 at 24|z _s16 _i0:4 at 20|temp_0_arithop _s23 _i0:4 at 16|temp_1_ret_of_func1 _s23 _i0:4 at 12|temp_2_arithop _s21 _i0:4 at 8|temp_3_cmp _s19 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_func1_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_func1_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     25   alloc i32 [temp_0_arithop_23] 
              #                     27   alloc i32 [temp_1_ret_of_func1_23] 
              #                     31   alloc i32 [temp_2_arithop_21] 
              #                     34   alloc i1 [temp_3_cmp_19] 
              #                    regtab     a0:Freed { symidx: x_16_0, tracked: true } |     a1:Freed { symidx: y_16_0, tracked: true } |     a2:Freed { symidx: z_16_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L7_0: 
.L7_0:
              #                     35   temp_3_cmp_19_0 = icmp i32 Eq z_16_0, 0_0 
              #                    occupy a2 with z_16_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_3_cmp_19_0
    xor     a4,a2,a3
    seqz    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                     38   br i1 temp_3_cmp_19_0, label branch_true_20, label branch_false_20 
              #                    occupy a4 with temp_3_cmp_19_0
              #                    free a4
              #                    occupy a4 with temp_3_cmp_19_0
    bnez    a4, .branch_true_20
              #                    free a4
    j       .branch_false_20
              #                    regtab     a0:Freed { symidx: x_16_0, tracked: true } |     a1:Freed { symidx: y_16_0, tracked: true } |     a2:Freed { symidx: z_16_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_19_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     36   label branch_true_20: 
.branch_true_20:
              #                     341  untrack temp_1_ret_of_func1_23_0 
              #                     340  untrack temp_0_arithop_23_0 
              #                     339  untrack temp_3_cmp_19_0 
              #                    occupy a4 with temp_3_cmp_19_0
              #                    release a4 with temp_3_cmp_19_0
              #                     338  untrack z_16_0 
              #                    occupy a2 with z_16_0
              #                    release a2 with z_16_0
              #                     32   temp_2_arithop_21_0 = Mul i32 x_16_0, y_16_0 
              #                    occupy a2 with temp_2_arithop_21_0
              #                    occupy a0 with x_16_0
              #                    occupy a1 with y_16_0
    mulw    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     345  untrack y_16_0 
              #                    occupy a1 with y_16_0
              #                    release a1 with y_16_0
              #                     344  untrack x_16_0 
              #                    occupy a0 with x_16_0
              #                    release a0 with x_16_0
              #                     33   ret temp_2_arithop_21_0 
              #                    load from ra_func1_0 in mem
    ld      ra,40(sp)
              #                    load from s0_func1_0 in mem
    ld      s0,32(sp)
              #                    occupy a2 with temp_2_arithop_21_0
              #                    store to temp_2_arithop_21_0 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_2_arithop_21_0
              #                    occupy a0 with temp_2_arithop_21_0
              #                    load from temp_2_arithop_21_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_16_0, tracked: true } |     a1:Freed { symidx: y_16_0, tracked: true } |     a2:Freed { symidx: z_16_0, tracked: true } |     a4:Freed { symidx: temp_3_cmp_19_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     37   label branch_false_20: 
.branch_false_20:
              #                     343  untrack temp_3_cmp_19_0 
              #                    occupy a4 with temp_3_cmp_19_0
              #                    release a4 with temp_3_cmp_19_0
              #                     342  untrack temp_2_arithop_21_0 
              #                     26   temp_0_arithop_23_0 = Sub i32 y_16_0, z_16_0 
              #                    occupy a1 with y_16_0
              #                    occupy a2 with z_16_0
              #                    occupy a3 with temp_0_arithop_23_0
              #                    regtab:    a0:Freed { symidx: x_16_0, tracked: true } |     a1:Occupied { symidx: y_16_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: z_16_0, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: temp_0_arithop_23_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     349  untrack z_16_0 
              #                    occupy a2 with z_16_0
              #                    release a2 with z_16_0
              #                     348  untrack y_16_0 
              #                    occupy a1 with y_16_0
              #                    release a1 with y_16_0
              #                     28   temp_1_ret_of_func1_23_0 =  Call i32 func1_0(x_16_0, temp_0_arithop_23_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with x_16_0
              #                    store to x_16_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with x_16_0
              #                    occupy a3 with temp_0_arithop_23_0
              #                    store to temp_0_arithop_23_0 in mem offset legal
    sw      a3,16(sp)
              #                    release a3 with temp_0_arithop_23_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_x_16_0_0
              #                    load from x_16_0 in mem


    lw      a0,28(sp)
              #                    occupy a1 with _anonymous_of_temp_0_arithop_23_0_0
              #                    load from temp_0_arithop_23_0 in mem


    lw      a1,16(sp)
              #                    occupy a2 with _anonymous_of_0_0_0
    li      a2, 0
              #                    arg load ended


    call    func1
              #                     347  untrack temp_0_arithop_23_0 
              #                     346  untrack x_16_0 
              #                     29   ret temp_1_ret_of_func1_23_0 
              #                    load from ra_func1_0 in mem
    ld      ra,40(sp)
              #                    load from s0_func1_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with temp_1_ret_of_func1_23_0
              #                    store to temp_1_ret_of_func1_23_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_1_ret_of_func1_23_0
              #                    occupy a0 with temp_1_ret_of_func1_23_0
              #                    load from temp_1_ret_of_func1_23_0 in mem


    lw      a0,12(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define func2_0 "x_25_0,y_25_0," -> func2_ret_0 
    .globl func2
    .type func2,@function
func2:
              #                    mem layout:|ra_func2:8 at 32|s0_func2:8 at 24|x _s25 _i0:4 at 20|y _s25 _i0:4 at 16|temp_4_arithop _s30 _i0:4 at 12|temp_5_ret_of_func2 _s30 _i0:4 at 8|temp_6_ _s637 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_func2_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_func2_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     45   alloc i32 [temp_4_arithop_30] 
              #                     47   alloc i32 [temp_5_ret_of_func2_30] 
              #                     50   alloc i1 [temp_6__637] 
              #                    regtab     a0:Freed { symidx: x_25_0, tracked: true } |     a1:Freed { symidx: y_25_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L6_0: 
.L6_0:
              #                     51   temp_6__637_0 = icmp i32 Ne y_25_0, 0_0 
              #                    occupy a1 with y_25_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_6__637_0
    xor     a3,a1,a2
    snez    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     54   br i1 temp_6__637_0, label branch_true_29, label branch_false_29 
              #                    occupy a3 with temp_6__637_0
              #                    free a3
              #                    occupy a3 with temp_6__637_0
    bnez    a3, .branch_true_29
              #                    free a3
    j       .branch_false_29
              #                    regtab     a0:Freed { symidx: x_25_0, tracked: true } |     a1:Freed { symidx: y_25_0, tracked: true } |     a3:Freed { symidx: temp_6__637_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     52   label branch_true_29: 
.branch_true_29:
              #                     350  untrack temp_6__637_0 
              #                    occupy a3 with temp_6__637_0
              #                    release a3 with temp_6__637_0
              #                     46   temp_4_arithop_30_0 = Mod i32 x_25_0, y_25_0 
              #                    occupy a0 with x_25_0
              #                    occupy a1 with y_25_0
              #                    occupy a2 with temp_4_arithop_30_0
    rem     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     356  untrack y_25_0 
              #                    occupy a1 with y_25_0
              #                    release a1 with y_25_0
              #                     355  untrack x_25_0 
              #                    occupy a0 with x_25_0
              #                    release a0 with x_25_0
              #                     48   temp_5_ret_of_func2_30_0 =  Call i32 func2_0(temp_4_arithop_30_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_4_arithop_30_0
              #                    store to temp_4_arithop_30_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_4_arithop_30_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_4_arithop_30_0_0
              #                    load from temp_4_arithop_30_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    arg load ended


    call    func2
              #                     357  untrack temp_4_arithop_30_0 
              #                     49   ret temp_5_ret_of_func2_30_0 
              #                    load from ra_func2_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func2_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with temp_5_ret_of_func2_30_0
              #                    store to temp_5_ret_of_func2_30_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_5_ret_of_func2_30_0
              #                    occupy a0 with temp_5_ret_of_func2_30_0
              #                    load from temp_5_ret_of_func2_30_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_25_0, tracked: true } |     a1:Freed { symidx: y_25_0, tracked: true } |     a3:Freed { symidx: temp_6__637_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     53   label branch_false_29: 
.branch_false_29:
              #                     354  untrack temp_6__637_0 
              #                    occupy a3 with temp_6__637_0
              #                    release a3 with temp_6__637_0
              #                     353  untrack temp_5_ret_of_func2_30_0 
              #                     352  untrack temp_4_arithop_30_0 
              #                     351  untrack y_25_0 
              #                    occupy a1 with y_25_0
              #                    release a1 with y_25_0
              #                     43   ret x_25_0 
              #                    load from ra_func2_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func2_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with x_25_0
              #                    store to x_25_0 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with x_25_0
              #                    occupy a0 with x_25_0
              #                    load from x_25_0 in mem


    lw      a0,20(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     18   Define func3_0 "x_34_0,y_34_0," -> func3_ret_0 
    .globl func3
    .type func3,@function
func3:
              #                    mem layout:|ra_func3:8 at 32|s0_func3:8 at 24|x _s34 _i0:4 at 20|y _s34 _i0:4 at 16|temp_7_arithop _s41 _i0:4 at 12|temp_8_ret_of_func3 _s41 _i0:4 at 8|temp_9_arithop _s39 _i0:4 at 4|temp_10_cmp _s37 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-40
              #                    store to ra_func3_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_func3_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     59   alloc i32 [temp_7_arithop_41] 
              #                     61   alloc i32 [temp_8_ret_of_func3_41] 
              #                     65   alloc i32 [temp_9_arithop_39] 
              #                     68   alloc i1 [temp_10_cmp_37] 
              #                    regtab     a0:Freed { symidx: x_34_0, tracked: true } |     a1:Freed { symidx: y_34_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     69   temp_10_cmp_37_0 = icmp i32 Eq y_34_0, 0_0 
              #                    occupy a1 with y_34_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_10_cmp_37_0
    xor     a3,a1,a2
    seqz    a3, a3
              #                    free a1
              #                    free a2
              #                    free a3
              #                     72   br i1 temp_10_cmp_37_0, label branch_true_38, label branch_false_38 
              #                    occupy a3 with temp_10_cmp_37_0
              #                    free a3
              #                    occupy a3 with temp_10_cmp_37_0
    bnez    a3, .branch_true_38
              #                    free a3
    j       .branch_false_38
              #                    regtab     a0:Freed { symidx: x_34_0, tracked: true } |     a1:Freed { symidx: y_34_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_37_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     70   label branch_true_38: 
.branch_true_38:
              #                     361  untrack temp_7_arithop_41_0 
              #                     360  untrack y_34_0 
              #                    occupy a1 with y_34_0
              #                    release a1 with y_34_0
              #                     359  untrack temp_10_cmp_37_0 
              #                    occupy a3 with temp_10_cmp_37_0
              #                    release a3 with temp_10_cmp_37_0
              #                     358  untrack temp_8_ret_of_func3_41_0 
              #                     66   temp_9_arithop_39_0 = Add i32 x_34_0, 1_0 
              #                    occupy a0 with x_34_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_9_arithop_39_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     364  untrack x_34_0 
              #                    occupy a0 with x_34_0
              #                    release a0 with x_34_0
              #                     67   ret temp_9_arithop_39_0 
              #                    load from ra_func3_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func3_0 in mem
    ld      s0,24(sp)
              #                    occupy a2 with temp_9_arithop_39_0
              #                    store to temp_9_arithop_39_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with temp_9_arithop_39_0
              #                    occupy a0 with temp_9_arithop_39_0
              #                    load from temp_9_arithop_39_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: x_34_0, tracked: true } |     a1:Freed { symidx: y_34_0, tracked: true } |     a3:Freed { symidx: temp_10_cmp_37_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     71   label branch_false_38: 
.branch_false_38:
              #                     363  untrack temp_10_cmp_37_0 
              #                    occupy a3 with temp_10_cmp_37_0
              #                    release a3 with temp_10_cmp_37_0
              #                     362  untrack temp_9_arithop_39_0 
              #                     60   temp_7_arithop_41_0 = Add i32 x_34_0, y_34_0 
              #                    occupy a0 with x_34_0
              #                    occupy a1 with y_34_0
              #                    occupy a2 with temp_7_arithop_41_0
    ADDW    a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     366  untrack y_34_0 
              #                    occupy a1 with y_34_0
              #                    release a1 with y_34_0
              #                     365  untrack x_34_0 
              #                    occupy a0 with x_34_0
              #                    release a0 with x_34_0
              #                     62   temp_8_ret_of_func3_41_0 =  Call i32 func3_0(temp_7_arithop_41_0, 0_0) 
              #                    saved register dumping to mem
              #                    occupy a2 with temp_7_arithop_41_0
              #                    store to temp_7_arithop_41_0 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_7_arithop_41_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_7_arithop_41_0_0
              #                    load from temp_7_arithop_41_0 in mem


    lw      a0,12(sp)
              #                    occupy a1 with _anonymous_of_0_0_0
    li      a1, 0
              #                    arg load ended


    call    func3
              #                     367  untrack temp_7_arithop_41_0 
              #                     63   ret temp_8_ret_of_func3_41_0 
              #                    load from ra_func3_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func3_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with temp_8_ret_of_func3_41_0
              #                    store to temp_8_ret_of_func3_41_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_8_ret_of_func3_41_0
              #                    occupy a0 with temp_8_ret_of_func3_41_0
              #                    load from temp_8_ret_of_func3_41_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     19   Define func4_0 "x_43_0,y_43_0,z_43_0," -> func4_ret_0 
    .globl func4
    .type func4,@function
func4:
              #                    mem layout:|ra_func4:8 at 24|s0_func4:8 at 16|x _s43 _i0:4 at 12|y _s43 _i0:4 at 8|z _s43 _i0:4 at 4|temp_11_ _s992 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-32
              #                    store to ra_func4_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_func4_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     80   alloc i1 [temp_11__992] 
              #                    regtab     a0:Freed { symidx: x_43_0, tracked: true } |     a1:Freed { symidx: y_43_0, tracked: true } |     a2:Freed { symidx: z_43_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     81   temp_11__992_0 = icmp i32 Ne x_43_0, 0_0 
              #                    occupy a0 with x_43_0
              #                    occupy a3 with 0_0
    li      a3, 0
              #                    occupy a4 with temp_11__992_0
    xor     a4,a0,a3
    snez    a4, a4
              #                    free a0
              #                    free a3
              #                    free a4
              #                     368  untrack x_43_0 
              #                    occupy a0 with x_43_0
              #                    release a0 with x_43_0
              #                     84   br i1 temp_11__992_0, label branch_true_47, label branch_false_47 
              #                    occupy a4 with temp_11__992_0
              #                    free a4
              #                    occupy a4 with temp_11__992_0
    bnez    a4, .branch_true_47
              #                    free a4
    j       .branch_false_47
              #                    regtab     a1:Freed { symidx: y_43_0, tracked: true } |     a2:Freed { symidx: z_43_0, tracked: true } |     a4:Freed { symidx: temp_11__992_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     82   label branch_true_47: 
.branch_true_47:
              #                     370  untrack z_43_0 
              #                    occupy a2 with z_43_0
              #                    release a2 with z_43_0
              #                     369  untrack temp_11__992_0 
              #                    occupy a4 with temp_11__992_0
              #                    release a4 with temp_11__992_0
              #                     79   ret y_43_0 
              #                    load from ra_func4_0 in mem
    ld      ra,24(sp)
              #                    load from s0_func4_0 in mem
    ld      s0,16(sp)
              #                    occupy a1 with y_43_0
              #                    store to y_43_0 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with y_43_0
              #                    occupy a0 with y_43_0
              #                    load from y_43_0 in mem


    lw      a0,8(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_43_0, tracked: true } |     a2:Freed { symidx: z_43_0, tracked: true } |     a4:Freed { symidx: temp_11__992_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     83   label branch_false_47: 
.branch_false_47:
              #                     372  untrack y_43_0 
              #                    occupy a1 with y_43_0
              #                    release a1 with y_43_0
              #                     371  untrack temp_11__992_0 
              #                    occupy a4 with temp_11__992_0
              #                    release a4 with temp_11__992_0
              #                     77   ret z_43_0 
              #                    load from ra_func4_0 in mem
    ld      ra,24(sp)
              #                    load from s0_func4_0 in mem
    ld      s0,16(sp)
              #                    occupy a2 with z_43_0
              #                    store to z_43_0 in mem offset legal
    sw      a2,4(sp)
              #                    release a2 with z_43_0
              #                    occupy a0 with z_43_0
              #                    load from z_43_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     20   Define func5_0 "x_52_0," -> func5_ret_0 
    .globl func5
    .type func5,@function
func5:
              #                    mem layout:|ra_func5:8 at 16|s0_func5:8 at 8|x _s52 _i0:4 at 4|temp_12_ _s54 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_func5_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_func5_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     89   alloc i32 [temp_12__54] 
              #                    regtab     a0:Freed { symidx: x_52_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     90   temp_12__54_0 = Sub i32 0_0, x_52_0 
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a0 with x_52_0
              #                    occupy a2 with temp_12__54_0
              #                    regtab:    a0:Occupied { symidx: x_52_0, tracked: true, occupy_count: 1 } |     a1:Occupied { symidx: 0_0, tracked: false, occupy_count: 1 } |     a2:Occupied { symidx: temp_12__54_0, tracked: true, occupy_count: 1 } |  released_gpr_count:16,released_fpr_count:24


    subw    a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                     373  untrack x_52_0 
              #                    occupy a0 with x_52_0
              #                    release a0 with x_52_0
              #                     91   ret temp_12__54_0 
              #                    load from ra_func5_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func5_0 in mem
    ld      s0,8(sp)
              #                    occupy a2 with temp_12__54_0
              #                    store to temp_12__54_0 in mem offset legal
    sw      a2,0(sp)
              #                    release a2 with temp_12__54_0
              #                    occupy a0 with temp_12__54_0
              #                    load from temp_12__54_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     21   Define func6_0 "x_56_0,y_56_0," -> func6_ret_0 
    .globl func6
    .type func6,@function
func6:
              #                    mem layout:|ra_func6:8 at 24|s0_func6:8 at 16|x _s56 _i0:4 at 12|y _s56 _i0:4 at 8|temp_13_i32_to_bool _s59 _i0:1 at 7|temp_14_i32_to_bool _s59 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-32
              #                    store to ra_func6_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_func6_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     98   alloc i1 [temp_13_i32_to_bool_59] 
              #                     100  alloc i1 [temp_14_i32_to_bool_59] 
              #                    regtab     a0:Freed { symidx: x_56_0, tracked: true } |     a1:Freed { symidx: y_56_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     99   temp_13_i32_to_bool_59_0 = icmp i32 Ne x_56_0, 0_0 
              #                    occupy a0 with x_56_0
              #                    occupy a2 with 0_0
    li      a2, 0
              #                    occupy a3 with temp_13_i32_to_bool_59_0
    xor     a3,a0,a2
    snez    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                     374  untrack x_56_0 
              #                    occupy a0 with x_56_0
              #                    release a0 with x_56_0
              #                     107  br i1 temp_13_i32_to_bool_59_0, label branch_short_circuit_p_true_223, label branch_short_circuit_c_false_223 
              #                    occupy a3 with temp_13_i32_to_bool_59_0
              #                    free a3
              #                    occupy a3 with temp_13_i32_to_bool_59_0
    bnez    a3, .branch_short_circuit_p_true_223
              #                    free a3
    j       .branch_short_circuit_c_false_223
              #                    regtab     a1:Freed { symidx: y_56_0, tracked: true } |     a3:Freed { symidx: temp_13_i32_to_bool_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     104  label branch_short_circuit_p_true_223: 
.branch_short_circuit_p_true_223:
              #                     378  untrack temp_13_i32_to_bool_59_0 
              #                    occupy a3 with temp_13_i32_to_bool_59_0
              #                    release a3 with temp_13_i32_to_bool_59_0
              #                     101  temp_14_i32_to_bool_59_0 = icmp i32 Ne y_56_0, 0_0 
              #                    occupy a1 with y_56_0
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a2 with temp_14_i32_to_bool_59_0
    xor     a2,a1,a0
    snez    a2, a2
              #                    free a1
              #                    free a0
              #                    free a2
              #                     379  untrack y_56_0 
              #                    occupy a1 with y_56_0
              #                    release a1 with y_56_0
              #                     106  br i1 temp_14_i32_to_bool_59_0, label branch_short_circuit_c_true_223, label branch_short_circuit_c_false_223 
              #                    occupy a2 with temp_14_i32_to_bool_59_0
              #                    free a2
              #                    occupy a2 with temp_14_i32_to_bool_59_0
    bnez    a2, .branch_short_circuit_c_true_223
              #                    free a2
              #                    occupy a2 with temp_14_i32_to_bool_59_0
              #                    store to temp_14_i32_to_bool_59_0 in mem offset legal
    sb      a2,6(sp)
              #                    release a2 with temp_14_i32_to_bool_59_0
              #                    occupy a1 with y_56_0
              #                    load from y_56_0 in mem


    lw      a1,8(sp)
              #                    occupy a3 with temp_13_i32_to_bool_59_0
              #                    load from temp_13_i32_to_bool_59_0 in mem


    lb      a3,7(sp)
    j       .branch_short_circuit_c_false_223
              #                    regtab     a2:Freed { symidx: temp_14_i32_to_bool_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     102  label branch_short_circuit_c_true_223: 
.branch_short_circuit_c_true_223:
              #                     380  untrack temp_14_i32_to_bool_59_0 
              #                    occupy a2 with temp_14_i32_to_bool_59_0
              #                    release a2 with temp_14_i32_to_bool_59_0
              #                     97   ret 1_0 
              #                    load from ra_func6_0 in mem
    ld      ra,24(sp)
              #                    load from s0_func6_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: y_56_0, tracked: true } |     a3:Freed { symidx: temp_13_i32_to_bool_59_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     103  label branch_short_circuit_c_false_223: 
.branch_short_circuit_c_false_223:
              #                     381  untrack temp_14_i32_to_bool_59_0 
              #                     377  untrack y_56_0 
              #                    occupy a1 with y_56_0
              #                    release a1 with y_56_0
              #                     376  untrack temp_13_i32_to_bool_59_0 
              #                    occupy a3 with temp_13_i32_to_bool_59_0
              #                    release a3 with temp_13_i32_to_bool_59_0
              #                     375  untrack temp_14_i32_to_bool_59_0 
              #                     95   ret 0_0 
              #                    load from ra_func6_0 in mem
    ld      ra,24(sp)
              #                    load from s0_func6_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     22   Define func7_0 "x_65_0," -> func7_ret_0 
    .globl func7
    .type func7,@function
func7:
              #                    mem layout:|ra_func7:8 at 16|s0_func7:8 at 8|x _s65 _i0:4 at 4|temp_15_booltrans _s68 _i0:1 at 3|temp_16_logicnot _s68 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-24
              #                    store to ra_func7_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_func7_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     115  alloc i1 [temp_15_booltrans_68] 
              #                     117  alloc i1 [temp_16_logicnot_68] 
              #                    regtab     a0:Freed { symidx: x_65_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     116  temp_15_booltrans_68_0 = icmp i32 Ne x_65_0, 0_0 
              #                    occupy a0 with x_65_0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_15_booltrans_68_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     383  untrack x_65_0 
              #                    occupy a0 with x_65_0
              #                    release a0 with x_65_0
              #                     118  temp_16_logicnot_68_0 = xor i1 temp_15_booltrans_68_0, true 
              #                    occupy a2 with temp_15_booltrans_68_0
              #                    occupy a0 with temp_16_logicnot_68_0
    seqz    a0, a2
              #                    free a2
              #                    free a0
              #                     382  untrack temp_15_booltrans_68_0 
              #                    occupy a2 with temp_15_booltrans_68_0
              #                    release a2 with temp_15_booltrans_68_0
              #                     121  br i1 temp_16_logicnot_68_0, label branch_true_69, label branch_false_69 
              #                    occupy a0 with temp_16_logicnot_68_0
              #                    free a0
              #                    occupy a0 with temp_16_logicnot_68_0
    bnez    a0, .branch_true_69
              #                    free a0
    j       .branch_false_69
              #                    regtab     a0:Freed { symidx: temp_16_logicnot_68_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     119  label branch_true_69: 
.branch_true_69:
              #                     384  untrack temp_16_logicnot_68_0 
              #                    occupy a0 with temp_16_logicnot_68_0
              #                    release a0 with temp_16_logicnot_68_0
              #                     114  ret 1_0 
              #                    load from ra_func7_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func7_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_16_logicnot_68_0, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     120  label branch_false_69: 
.branch_false_69:
              #                     385  untrack temp_16_logicnot_68_0 
              #                    occupy a0 with temp_16_logicnot_68_0
              #                    release a0 with temp_16_logicnot_68_0
              #                     112  ret 0_0 
              #                    load from ra_func7_0 in mem
    ld      ra,16(sp)
              #                    load from s0_func7_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     23   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 464|s0_main:8 at 456|temp_17_ret_of_getint _s75 _i0:4 at 452|temp_18_ret_of_getint _s75 _i0:4 at 448|temp_19_ret_of_getint _s75 _i0:4 at 444|temp_20_ret_of_getint _s75 _i0:4 at 440|arr:40 at 400|i _s75 _i1:4 at 396|temp_21_ret_of_func7 _s75 _i0:4 at 392|temp_22_ret_of_func5 _s75 _i0:4 at 388|temp_23_ret_of_func6 _s75 _i0:4 at 384|temp_24_ret_of_func2 _s75 _i0:4 at 380|temp_25_ret_of_func3 _s75 _i0:4 at 376|temp_26_ret_of_func5 _s75 _i0:4 at 372|none:4 at 368|temp_27_ptr_of_arr_75:8 at 360|temp_28_ele_of_arr_75 _s75 _i0:4 at 356|none:4 at 352|temp_29_ptr_of_arr_75:8 at 344|temp_30_ele_of_arr_75 _s75 _i0:4 at 340|temp_31_ret_of_func5 _s75 _i0:4 at 336|temp_32_ptr_of_arr_75:8 at 328|temp_33_ele_of_arr_75 _s75 _i0:4 at 324|none:4 at 320|temp_34_ptr_of_arr_75:8 at 312|temp_35_ele_of_arr_75 _s75 _i0:4 at 308|temp_36_ret_of_func7 _s75 _i0:4 at 304|temp_37_ret_of_func6 _s75 _i0:4 at 300|none:4 at 296|temp_38_ptr_of_arr_75:8 at 288|temp_39_ele_of_arr_75 _s75 _i0:4 at 284|none:4 at 280|temp_40_ptr_of_arr_75:8 at 272|temp_41_ele_of_arr_75 _s75 _i0:4 at 268|temp_42_ret_of_func7 _s75 _i0:4 at 264|temp_43_ret_of_func2 _s75 _i0:4 at 260|temp_44_ret_of_func4 _s75 _i0:4 at 256|temp_45_ptr_of_arr_75:8 at 248|temp_46_ele_of_arr_75 _s75 _i0:4 at 244|temp_47_ret_of_func3 _s75 _i0:4 at 240|temp_48_ptr_of_arr_75:8 at 232|temp_49_ele_of_arr_75 _s75 _i0:4 at 228|temp_50_ret_of_func2 _s75 _i0:4 at 224|temp_51_ptr_of_arr_75:8 at 216|temp_52_ele_of_arr_75 _s75 _i0:4 at 212|none:4 at 208|temp_53_ptr_of_arr_75:8 at 200|temp_54_ele_of_arr_75 _s75 _i0:4 at 196|temp_55_ret_of_func7 _s75 _i0:4 at 192|temp_56_ret_of_func3 _s75 _i0:4 at 188|temp_57_ret_of_func1 _s75 _i0:4 at 184|temp_58_ret_of_func4 _s75 _i0:4 at 180|temp_59_ret_of_func7 _s75 _i0:4 at 176|temp_60_ret_of_func3 _s75 _i0:4 at 172|temp_61_ret_of_func2 _s75 _i0:4 at 168|temp_62_ret_of_func3 _s75 _i0:4 at 164|none:4 at 160|temp_63_ptr_of_arr_75:8 at 152|temp_65_ptr_of_arr_75:8 at 144|temp_67_ret_of_func1 _s75 _i0:4 at 140|none:4 at 136|temp_68_ptr_of_arr_75:8 at 128|temp_70_ret_of_func2 _s75 _i0:4 at 124|none:4 at 120|temp_71_ptr_of_arr_75:8 at 112|temp_73_ptr_of_arr_75:8 at 104|temp_75_ptr_of_arr_75:8 at 96|temp_77_ret_of_func5 _s75 _i0:4 at 92|temp_78_ret_of_func3 _s75 _i0:4 at 88|temp_79_ptr_of_arr_75:8 at 80|temp_81_ret_of_func5 _s75 _i0:4 at 76|temp_82_ret_of_func2 _s75 _i0:4 at 72|temp_83_ptr_of_arr_75:8 at 64|temp_85_ptr_of_arr_75:8 at 56|temp_87_ret_of_func7 _s75 _i0:4 at 52|temp_88_ret_of_func1 _s75 _i0:4 at 48|temp_89_ptr_of_arr_75:8 at 40|temp_91_ret_of_func5 _s75 _i0:4 at 36|temp_92_ret_of_func2 _s75 _i0:4 at 32|temp_93_ret_of_func3 _s75 _i0:4 at 28|temp_94_ret_of_func1 _s75 _i0:4 at 24|temp_95_ptr_of_arr_75:8 at 16|temp_96_ret_of_getint _s81 _i0:4 at 12|temp_97_arithop _s81 _i0:4 at 8|temp_98_cmp _s79 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-472
              #                    store to ra_main_0 in mem offset legal
    sd      ra,464(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,456(sp)
    addi    s0,sp,472
              #                     125  alloc i32 [temp_17_ret_of_getint_75] 
              #                     128  alloc i32 [i1_75] 
              #                     129  alloc i32 [temp_18_ret_of_getint_75] 
              #                     132  alloc i32 [i2_75] 
              #                     133  alloc i32 [temp_19_ret_of_getint_75] 
              #                     136  alloc i32 [i3_75] 
              #                     137  alloc i32 [temp_20_ret_of_getint_75] 
              #                     140  alloc i32 [i4_75] 
              #                     142  alloc Array:i32:[Some(10_0)] [arr_75] 
              #                     144  alloc i32 [i_75] 
              #                     145  alloc i32 [temp_21_ret_of_func7_75] 
              #                     147  alloc i32 [temp_22_ret_of_func5_75] 
              #                     149  alloc i32 [temp_23_ret_of_func6_75] 
              #                     151  alloc i32 [temp_24_ret_of_func2_75] 
              #                     153  alloc i32 [temp_25_ret_of_func3_75] 
              #                     155  alloc i32 [temp_26_ret_of_func5_75] 
              #                     157  alloc ptr->i32 [temp_27_ptr_of_arr_75_75] 
              #                     159  alloc i32 [temp_28_ele_of_arr_75_75] 
              #                     162  alloc ptr->i32 [temp_29_ptr_of_arr_75_75] 
              #                     164  alloc i32 [temp_30_ele_of_arr_75_75] 
              #                     167  alloc i32 [temp_31_ret_of_func5_75] 
              #                     169  alloc ptr->i32 [temp_32_ptr_of_arr_75_75] 
              #                     171  alloc i32 [temp_33_ele_of_arr_75_75] 
              #                     174  alloc ptr->i32 [temp_34_ptr_of_arr_75_75] 
              #                     176  alloc i32 [temp_35_ele_of_arr_75_75] 
              #                     179  alloc i32 [temp_36_ret_of_func7_75] 
              #                     181  alloc i32 [temp_37_ret_of_func6_75] 
              #                     183  alloc ptr->i32 [temp_38_ptr_of_arr_75_75] 
              #                     185  alloc i32 [temp_39_ele_of_arr_75_75] 
              #                     188  alloc ptr->i32 [temp_40_ptr_of_arr_75_75] 
              #                     190  alloc i32 [temp_41_ele_of_arr_75_75] 
              #                     193  alloc i32 [temp_42_ret_of_func7_75] 
              #                     195  alloc i32 [temp_43_ret_of_func2_75] 
              #                     197  alloc i32 [temp_44_ret_of_func4_75] 
              #                     199  alloc ptr->i32 [temp_45_ptr_of_arr_75_75] 
              #                     201  alloc i32 [temp_46_ele_of_arr_75_75] 
              #                     204  alloc i32 [temp_47_ret_of_func3_75] 
              #                     206  alloc ptr->i32 [temp_48_ptr_of_arr_75_75] 
              #                     208  alloc i32 [temp_49_ele_of_arr_75_75] 
              #                     211  alloc i32 [temp_50_ret_of_func2_75] 
              #                     213  alloc ptr->i32 [temp_51_ptr_of_arr_75_75] 
              #                     215  alloc i32 [temp_52_ele_of_arr_75_75] 
              #                     218  alloc ptr->i32 [temp_53_ptr_of_arr_75_75] 
              #                     220  alloc i32 [temp_54_ele_of_arr_75_75] 
              #                     223  alloc i32 [temp_55_ret_of_func7_75] 
              #                     225  alloc i32 [temp_56_ret_of_func3_75] 
              #                     227  alloc i32 [temp_57_ret_of_func1_75] 
              #                     229  alloc i32 [temp_58_ret_of_func4_75] 
              #                     231  alloc i32 [temp_59_ret_of_func7_75] 
              #                     233  alloc i32 [temp_60_ret_of_func3_75] 
              #                     235  alloc i32 [temp_61_ret_of_func2_75] 
              #                     237  alloc i32 [temp_62_ret_of_func3_75] 
              #                     239  alloc ptr->i32 [temp_63_ptr_of_arr_75_75] 
              #                     241  alloc i32 [temp_64_ele_of_arr_75_75] 
              #                     244  alloc ptr->i32 [temp_65_ptr_of_arr_75_75] 
              #                     246  alloc i32 [temp_66_ele_of_arr_75_75] 
              #                     249  alloc i32 [temp_67_ret_of_func1_75] 
              #                     251  alloc ptr->i32 [temp_68_ptr_of_arr_75_75] 
              #                     253  alloc i32 [temp_69_ele_of_arr_75_75] 
              #                     256  alloc i32 [temp_70_ret_of_func2_75] 
              #                     258  alloc ptr->i32 [temp_71_ptr_of_arr_75_75] 
              #                     260  alloc i32 [temp_72_ele_of_arr_75_75] 
              #                     263  alloc ptr->i32 [temp_73_ptr_of_arr_75_75] 
              #                     265  alloc i32 [temp_74_ele_of_arr_75_75] 
              #                     268  alloc ptr->i32 [temp_75_ptr_of_arr_75_75] 
              #                     270  alloc i32 [temp_76_ele_of_arr_75_75] 
              #                     273  alloc i32 [temp_77_ret_of_func5_75] 
              #                     275  alloc i32 [temp_78_ret_of_func3_75] 
              #                     277  alloc ptr->i32 [temp_79_ptr_of_arr_75_75] 
              #                     279  alloc i32 [temp_80_ele_of_arr_75_75] 
              #                     282  alloc i32 [temp_81_ret_of_func5_75] 
              #                     284  alloc i32 [temp_82_ret_of_func2_75] 
              #                     286  alloc ptr->i32 [temp_83_ptr_of_arr_75_75] 
              #                     288  alloc i32 [temp_84_ele_of_arr_75_75] 
              #                     291  alloc ptr->i32 [temp_85_ptr_of_arr_75_75] 
              #                     293  alloc i32 [temp_86_ele_of_arr_75_75] 
              #                     296  alloc i32 [temp_87_ret_of_func7_75] 
              #                     298  alloc i32 [temp_88_ret_of_func1_75] 
              #                     300  alloc ptr->i32 [temp_89_ptr_of_arr_75_75] 
              #                     302  alloc i32 [temp_90_ele_of_arr_75_75] 
              #                     305  alloc i32 [temp_91_ret_of_func5_75] 
              #                     307  alloc i32 [temp_92_ret_of_func2_75] 
              #                     309  alloc i32 [temp_93_ret_of_func3_75] 
              #                     311  alloc i32 [temp_94_ret_of_func1_75] 
              #                     314  alloc i32 [a_75] 
              #                     317  alloc ptr->i32 [temp_95_ptr_of_arr_75_81] 
              #                     319  alloc i32 [temp_96_ret_of_getint_81] 
              #                     323  alloc i32 [temp_97_arithop_81] 
              #                     326  alloc i1 [temp_98_cmp_79] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     126  temp_17_ret_of_getint_75_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     127  (nop) 
              #                     130  temp_18_ret_of_getint_75_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_17_ret_of_getint_75_0
              #                    store to temp_17_ret_of_getint_75_0 in mem offset legal
    sw      a0,452(sp)
              #                    release a0 with temp_17_ret_of_getint_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     131  (nop) 
              #                     134  temp_19_ret_of_getint_75_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_18_ret_of_getint_75_0
              #                    store to temp_18_ret_of_getint_75_0 in mem offset legal
    sw      a0,448(sp)
              #                    release a0 with temp_18_ret_of_getint_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     135  (nop) 
              #                     138  temp_20_ret_of_getint_75_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_19_ret_of_getint_75_0
              #                    store to temp_19_ret_of_getint_75_0 in mem offset legal
    sw      a0,444(sp)
              #                    release a0 with temp_19_ret_of_getint_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     139  (nop) 
              #                     141   
              #                     143  (nop) 
              #                     336  i_75_1 = i32 0_0 
              #                    occupy a1 with i_75_1
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_80 
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_getint_75_0, tracked: true } |     a1:Freed { symidx: i_75_1, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     328  label while.head_80: 
.while.head_80:
              #                     327  temp_98_cmp_79_0 = icmp i32 Slt i_75_1, 10_0 
              #                    occupy a1 with i_75_1
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with temp_98_cmp_79_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     331  br i1 temp_98_cmp_79_0, label while.body_80, label while.exit_80 
              #                    occupy a3 with temp_98_cmp_79_0
              #                    free a3
              #                    occupy a3 with temp_98_cmp_79_0
    bnez    a3, .while.body_80
              #                    free a3
    j       .while.exit_80
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_getint_75_0, tracked: true } |     a1:Freed { symidx: i_75_1, tracked: true } |     a3:Freed { symidx: temp_98_cmp_79_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     329  label while.body_80: 
.while.body_80:
              #                     318  temp_95_ptr_of_arr_75_81 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(i_75_1)] 
              #                    occupy a2 with temp_95_ptr_of_arr_75_81
    li      a2, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
              #                    occupy a1 with i_75_1
    mv      a4, a1
              #                    free a1
    add     a2,a2,a4
              #                    free a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,400
              #                    free a2
              #                     320  temp_96_ret_of_getint_81_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_ret_of_getint_75_0
              #                    store to temp_20_ret_of_getint_75_0 in mem offset legal
    sw      a0,440(sp)
              #                    release a0 with temp_20_ret_of_getint_75_0
              #                    occupy a1 with i_75_1
              #                    store to i_75_1 in mem offset legal
    sw      a1,396(sp)
              #                    release a1 with i_75_1
              #                    occupy a2 with temp_95_ptr_of_arr_75_81
              #                    store to temp_95_ptr_of_arr_75_81 in mem offset legal
    sd      a2,16(sp)
              #                    release a2 with temp_95_ptr_of_arr_75_81
              #                    occupy a3 with temp_98_cmp_79_0
              #                    store to temp_98_cmp_79_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_98_cmp_79_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     321  store temp_96_ret_of_getint_81_0:i32 temp_95_ptr_of_arr_75_81:ptr->i32 
              #                    occupy a1 with temp_95_ptr_of_arr_75_81
              #                    load from temp_95_ptr_of_arr_75_81 in mem
    ld      a1,16(sp)
              #                    occupy a0 with temp_96_ret_of_getint_81_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     322  arr_75_2 = chi arr_75_1:321 
              #                     324  temp_97_arithop_81_0 = Add i32 i_75_1, 1_0 
              #                    occupy a2 with i_75_1
              #                    load from i_75_1 in mem


    lw      a2,396(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_97_arithop_81_0
    ADDW    a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                     325  (nop) 
              #                     337  i_75_1 = i32 temp_97_arithop_81_0 
              #                    occupy a4 with temp_97_arithop_81_0
              #                    occupy a2 with i_75_1
    mv      a2, a4
              #                    free a4
              #                    free a2
              #                          jump label: while.head_80 
              #                    occupy a0 with temp_96_ret_of_getint_81_0
              #                    store to temp_96_ret_of_getint_81_0 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with temp_96_ret_of_getint_81_0
              #                    occupy a0 with temp_20_ret_of_getint_75_0
              #                    load from temp_20_ret_of_getint_75_0 in mem


    lw      a0,440(sp)
              #                    occupy a4 with temp_97_arithop_81_0
              #                    store to temp_97_arithop_81_0 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_97_arithop_81_0
              #                    occupy a2 with i_75_1
              #                    store to i_75_1 in mem offset legal
    sw      a2,396(sp)
              #                    release a2 with i_75_1
              #                    occupy a1 with temp_95_ptr_of_arr_75_81
              #                    store to temp_95_ptr_of_arr_75_81 in mem offset legal
    sd      a1,16(sp)
              #                    release a1 with temp_95_ptr_of_arr_75_81
              #                    occupy a1 with i_75_1
              #                    load from i_75_1 in mem


    lw      a1,396(sp)
    j       .while.head_80
              #                    regtab     a0:Freed { symidx: temp_20_ret_of_getint_75_0, tracked: true } |     a1:Freed { symidx: i_75_1, tracked: true } |     a3:Freed { symidx: temp_98_cmp_79_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     330  label while.exit_80: 
.while.exit_80:
              #                     386  untrack i_75_1 
              #                    occupy a1 with i_75_1
              #                    release a1 with i_75_1
              #                     146  temp_21_ret_of_func7_75_0 =  Call i32 func7_0(temp_17_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_20_ret_of_getint_75_0
              #                    store to temp_20_ret_of_getint_75_0 in mem offset legal
    sw      a0,440(sp)
              #                    release a0 with temp_20_ret_of_getint_75_0
              #                    occupy a3 with temp_98_cmp_79_0
              #                    store to temp_98_cmp_79_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_98_cmp_79_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_17_ret_of_getint_75_0_0
              #                    load from temp_17_ret_of_getint_75_0 in mem


    lw      a0,452(sp)
              #                    arg load ended


    call    func7
              #                     148  temp_22_ret_of_func5_75_0 =  Call i32 func5_0(temp_18_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_21_ret_of_func7_75_0
              #                    store to temp_21_ret_of_func7_75_0 in mem offset legal
    sw      a0,392(sp)
              #                    release a0 with temp_21_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_ret_of_getint_75_0_0
              #                    load from temp_18_ret_of_getint_75_0 in mem


    lw      a0,448(sp)
              #                    arg load ended


    call    func5
              #                     150  temp_23_ret_of_func6_75_0 =  Call i32 func6_0(temp_21_ret_of_func7_75_0, temp_22_ret_of_func5_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_22_ret_of_func5_75_0
              #                    store to temp_22_ret_of_func5_75_0 in mem offset legal
    sw      a0,388(sp)
              #                    release a0 with temp_22_ret_of_func5_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_21_ret_of_func7_75_0_0
              #                    load from temp_21_ret_of_func7_75_0 in mem


    lw      a0,392(sp)
              #                    occupy a1 with _anonymous_of_temp_22_ret_of_func5_75_0_0
              #                    load from temp_22_ret_of_func5_75_0 in mem


    lw      a1,388(sp)
              #                    arg load ended


    call    func6
              #                     436  untrack temp_22_ret_of_func5_75_0 
              #                     419  untrack temp_21_ret_of_func7_75_0 
              #                     152  temp_24_ret_of_func2_75_0 =  Call i32 func2_0(temp_23_ret_of_func6_75_0, temp_19_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_23_ret_of_func6_75_0
              #                    store to temp_23_ret_of_func6_75_0 in mem offset legal
    sw      a0,384(sp)
              #                    release a0 with temp_23_ret_of_func6_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_23_ret_of_func6_75_0_0
              #                    load from temp_23_ret_of_func6_75_0 in mem


    lw      a0,384(sp)
              #                    occupy a1 with _anonymous_of_temp_19_ret_of_getint_75_0_0
              #                    load from temp_19_ret_of_getint_75_0 in mem


    lw      a1,444(sp)
              #                    arg load ended


    call    func2
              #                     404  untrack temp_23_ret_of_func6_75_0 
              #                     154  temp_25_ret_of_func3_75_0 =  Call i32 func3_0(temp_24_ret_of_func2_75_0, temp_20_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_24_ret_of_func2_75_0
              #                    store to temp_24_ret_of_func2_75_0 in mem offset legal
    sw      a0,380(sp)
              #                    release a0 with temp_24_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_24_ret_of_func2_75_0_0
              #                    load from temp_24_ret_of_func2_75_0 in mem


    lw      a0,380(sp)
              #                    occupy a1 with _anonymous_of_temp_20_ret_of_getint_75_0_0
              #                    load from temp_20_ret_of_getint_75_0 in mem


    lw      a1,440(sp)
              #                    arg load ended


    call    func3
              #                     425  untrack temp_24_ret_of_func2_75_0 
              #                     156  temp_26_ret_of_func5_75_0 =  Call i32 func5_0(temp_25_ret_of_func3_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_25_ret_of_func3_75_0
              #                    store to temp_25_ret_of_func3_75_0 in mem offset legal
    sw      a0,376(sp)
              #                    release a0 with temp_25_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_25_ret_of_func3_75_0_0
              #                    load from temp_25_ret_of_func3_75_0 in mem


    lw      a0,376(sp)
              #                    arg load ended


    call    func5
              #                     411  untrack temp_25_ret_of_func3_75_0 
              #                     158  temp_27_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(0_0)] 
              #                    occupy a1 with temp_27_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 0
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     160  temp_28_ele_of_arr_75_75_0 = load temp_27_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_27_ptr_of_arr_75_75
              #                    occupy a3 with temp_28_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     418  untrack temp_27_ptr_of_arr_75_75 
              #                    occupy a1 with temp_27_ptr_of_arr_75_75
              #                    release a1 with temp_27_ptr_of_arr_75_75
              #                     161  mu arr_75_1:160 
              #                     163  temp_29_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(1_0)] 
              #                    occupy a1 with temp_29_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 1
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     165  temp_30_ele_of_arr_75_75_0 = load temp_29_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_29_ptr_of_arr_75_75
              #                    occupy a5 with temp_30_ele_of_arr_75_75_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     441  untrack temp_29_ptr_of_arr_75_75 
              #                    occupy a1 with temp_29_ptr_of_arr_75_75
              #                    release a1 with temp_29_ptr_of_arr_75_75
              #                     166  mu arr_75_1:165 
              #                     168  temp_31_ret_of_func5_75_0 =  Call i32 func5_0(temp_30_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_26_ret_of_func5_75_0
              #                    store to temp_26_ret_of_func5_75_0 in mem offset legal
    sw      a0,372(sp)
              #                    release a0 with temp_26_ret_of_func5_75_0
              #                    occupy a3 with temp_28_ele_of_arr_75_75_0
              #                    store to temp_28_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,356(sp)
              #                    release a3 with temp_28_ele_of_arr_75_75_0
              #                    occupy a5 with temp_30_ele_of_arr_75_75_0
              #                    store to temp_30_ele_of_arr_75_75_0 in mem offset legal
    sw      a5,340(sp)
              #                    release a5 with temp_30_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_30_ele_of_arr_75_75_0_0
              #                    load from temp_30_ele_of_arr_75_75_0 in mem


    lw      a0,340(sp)
              #                    arg load ended


    call    func5
              #                     170  temp_32_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(2_0)] 
              #                    occupy a1 with temp_32_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 2
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     172  temp_33_ele_of_arr_75_75_0 = load temp_32_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_32_ptr_of_arr_75_75
              #                    occupy a3 with temp_33_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     402  untrack temp_32_ptr_of_arr_75_75 
              #                    occupy a1 with temp_32_ptr_of_arr_75_75
              #                    release a1 with temp_32_ptr_of_arr_75_75
              #                     173  mu arr_75_1:172 
              #                     175  temp_34_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(3_0)] 
              #                    occupy a1 with temp_34_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 3
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     177  temp_35_ele_of_arr_75_75_0 = load temp_34_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_34_ptr_of_arr_75_75
              #                    occupy a5 with temp_35_ele_of_arr_75_75_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     438  untrack temp_34_ptr_of_arr_75_75 
              #                    occupy a1 with temp_34_ptr_of_arr_75_75
              #                    release a1 with temp_34_ptr_of_arr_75_75
              #                     178  mu arr_75_1:177 
              #                     180  temp_36_ret_of_func7_75_0 =  Call i32 func7_0(temp_35_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_31_ret_of_func5_75_0
              #                    store to temp_31_ret_of_func5_75_0 in mem offset legal
    sw      a0,336(sp)
              #                    release a0 with temp_31_ret_of_func5_75_0
              #                    occupy a3 with temp_33_ele_of_arr_75_75_0
              #                    store to temp_33_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,324(sp)
              #                    release a3 with temp_33_ele_of_arr_75_75_0
              #                    occupy a5 with temp_35_ele_of_arr_75_75_0
              #                    store to temp_35_ele_of_arr_75_75_0 in mem offset legal
    sw      a5,308(sp)
              #                    release a5 with temp_35_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_35_ele_of_arr_75_75_0_0
              #                    load from temp_35_ele_of_arr_75_75_0 in mem


    lw      a0,308(sp)
              #                    arg load ended


    call    func7
              #                     182  temp_37_ret_of_func6_75_0 =  Call i32 func6_0(temp_33_ele_of_arr_75_75_0, temp_36_ret_of_func7_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_36_ret_of_func7_75_0
              #                    store to temp_36_ret_of_func7_75_0 in mem offset legal
    sw      a0,304(sp)
              #                    release a0 with temp_36_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_33_ele_of_arr_75_75_0_0
              #                    load from temp_33_ele_of_arr_75_75_0 in mem


    lw      a0,324(sp)
              #                    occupy a1 with _anonymous_of_temp_36_ret_of_func7_75_0_0
              #                    load from temp_36_ret_of_func7_75_0 in mem


    lw      a1,304(sp)
              #                    arg load ended


    call    func6
              #                     431  untrack temp_36_ret_of_func7_75_0 
              #                     184  temp_38_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(4_0)] 
              #                    occupy a1 with temp_38_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 4
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     186  temp_39_ele_of_arr_75_75_0 = load temp_38_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_38_ptr_of_arr_75_75
              #                    occupy a3 with temp_39_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     423  untrack temp_38_ptr_of_arr_75_75 
              #                    occupy a1 with temp_38_ptr_of_arr_75_75
              #                    release a1 with temp_38_ptr_of_arr_75_75
              #                     187  mu arr_75_1:186 
              #                     189  temp_40_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(5_0)] 
              #                    occupy a1 with temp_40_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 5
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     191  temp_41_ele_of_arr_75_75_0 = load temp_40_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_40_ptr_of_arr_75_75
              #                    occupy a5 with temp_41_ele_of_arr_75_75_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     406  untrack temp_40_ptr_of_arr_75_75 
              #                    occupy a1 with temp_40_ptr_of_arr_75_75
              #                    release a1 with temp_40_ptr_of_arr_75_75
              #                     192  mu arr_75_1:191 
              #                     194  temp_42_ret_of_func7_75_0 =  Call i32 func7_0(temp_41_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_37_ret_of_func6_75_0
              #                    store to temp_37_ret_of_func6_75_0 in mem offset legal
    sw      a0,300(sp)
              #                    release a0 with temp_37_ret_of_func6_75_0
              #                    occupy a3 with temp_39_ele_of_arr_75_75_0
              #                    store to temp_39_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,284(sp)
              #                    release a3 with temp_39_ele_of_arr_75_75_0
              #                    occupy a5 with temp_41_ele_of_arr_75_75_0
              #                    store to temp_41_ele_of_arr_75_75_0 in mem offset legal
    sw      a5,268(sp)
              #                    release a5 with temp_41_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_41_ele_of_arr_75_75_0_0
              #                    load from temp_41_ele_of_arr_75_75_0 in mem


    lw      a0,268(sp)
              #                    arg load ended


    call    func7
              #                     196  temp_43_ret_of_func2_75_0 =  Call i32 func2_0(temp_39_ele_of_arr_75_75_0, temp_42_ret_of_func7_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_42_ret_of_func7_75_0
              #                    store to temp_42_ret_of_func7_75_0 in mem offset legal
    sw      a0,264(sp)
              #                    release a0 with temp_42_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39_ele_of_arr_75_75_0_0
              #                    load from temp_39_ele_of_arr_75_75_0 in mem


    lw      a0,284(sp)
              #                    occupy a1 with _anonymous_of_temp_42_ret_of_func7_75_0_0
              #                    load from temp_42_ret_of_func7_75_0 in mem


    lw      a1,264(sp)
              #                    arg load ended


    call    func2
              #                     395  untrack temp_42_ret_of_func7_75_0 
              #                     198  temp_44_ret_of_func4_75_0 =  Call i32 func4_0(temp_31_ret_of_func5_75_0, temp_37_ret_of_func6_75_0, temp_43_ret_of_func2_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_43_ret_of_func2_75_0
              #                    store to temp_43_ret_of_func2_75_0 in mem offset legal
    sw      a0,260(sp)
              #                    release a0 with temp_43_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_31_ret_of_func5_75_0_0
              #                    load from temp_31_ret_of_func5_75_0 in mem


    lw      a0,336(sp)
              #                    occupy a1 with _anonymous_of_temp_37_ret_of_func6_75_0_0
              #                    load from temp_37_ret_of_func6_75_0 in mem


    lw      a1,300(sp)
              #                    occupy a2 with _anonymous_of_temp_43_ret_of_func2_75_0_0
              #                    load from temp_43_ret_of_func2_75_0 in mem


    lw      a2,260(sp)
              #                    arg load ended


    call    func4
              #                     437  untrack temp_37_ret_of_func6_75_0 
              #                     435  untrack temp_31_ret_of_func5_75_0 
              #                     410  untrack temp_43_ret_of_func2_75_0 
              #                     200  temp_45_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(6_0)] 
              #                    occupy a1 with temp_45_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 6
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     202  temp_46_ele_of_arr_75_75_0 = load temp_45_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_45_ptr_of_arr_75_75
              #                    occupy a3 with temp_46_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     434  untrack temp_45_ptr_of_arr_75_75 
              #                    occupy a1 with temp_45_ptr_of_arr_75_75
              #                    release a1 with temp_45_ptr_of_arr_75_75
              #                     203  mu arr_75_1:202 
              #                     205  temp_47_ret_of_func3_75_0 =  Call i32 func3_0(temp_44_ret_of_func4_75_0, temp_46_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_44_ret_of_func4_75_0
              #                    store to temp_44_ret_of_func4_75_0 in mem offset legal
    sw      a0,256(sp)
              #                    release a0 with temp_44_ret_of_func4_75_0
              #                    occupy a3 with temp_46_ele_of_arr_75_75_0
              #                    store to temp_46_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,244(sp)
              #                    release a3 with temp_46_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_44_ret_of_func4_75_0_0
              #                    load from temp_44_ret_of_func4_75_0 in mem


    lw      a0,256(sp)
              #                    occupy a1 with _anonymous_of_temp_46_ele_of_arr_75_75_0_0
              #                    load from temp_46_ele_of_arr_75_75_0 in mem


    lw      a1,244(sp)
              #                    arg load ended


    call    func3
              #                     432  untrack temp_44_ret_of_func4_75_0 
              #                     207  temp_48_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(7_0)] 
              #                    occupy a1 with temp_48_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 7
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     209  temp_49_ele_of_arr_75_75_0 = load temp_48_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_48_ptr_of_arr_75_75
              #                    occupy a3 with temp_49_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     442  untrack temp_48_ptr_of_arr_75_75 
              #                    occupy a1 with temp_48_ptr_of_arr_75_75
              #                    release a1 with temp_48_ptr_of_arr_75_75
              #                     210  mu arr_75_1:209 
              #                     212  temp_50_ret_of_func2_75_0 =  Call i32 func2_0(temp_47_ret_of_func3_75_0, temp_49_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_47_ret_of_func3_75_0
              #                    store to temp_47_ret_of_func3_75_0 in mem offset legal
    sw      a0,240(sp)
              #                    release a0 with temp_47_ret_of_func3_75_0
              #                    occupy a3 with temp_49_ele_of_arr_75_75_0
              #                    store to temp_49_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,228(sp)
              #                    release a3 with temp_49_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_47_ret_of_func3_75_0_0
              #                    load from temp_47_ret_of_func3_75_0 in mem


    lw      a0,240(sp)
              #                    occupy a1 with _anonymous_of_temp_49_ele_of_arr_75_75_0_0
              #                    load from temp_49_ele_of_arr_75_75_0 in mem


    lw      a1,228(sp)
              #                    arg load ended


    call    func2
              #                     393  untrack temp_47_ret_of_func3_75_0 
              #                     214  temp_51_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(8_0)] 
              #                    occupy a1 with temp_51_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a2 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a2, 8
    add     a1,a1,a2
              #                    free a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     216  temp_52_ele_of_arr_75_75_0 = load temp_51_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_51_ptr_of_arr_75_75
              #                    occupy a3 with temp_52_ele_of_arr_75_75_0
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                     439  untrack temp_51_ptr_of_arr_75_75 
              #                    occupy a1 with temp_51_ptr_of_arr_75_75
              #                    release a1 with temp_51_ptr_of_arr_75_75
              #                     217  mu arr_75_1:216 
              #                     219  temp_53_ptr_of_arr_75_75 = GEP arr_75_1:Array:i32:[Some(10_0)] [Some(9_0)] 
              #                    occupy a1 with temp_53_ptr_of_arr_75_75
    li      a1, 0
              #                    occupy a4 with _anonymous_of_temp_idx_mul_weight_reg_0_0
    li      a4, 9
    add     a1,a1,a4
              #                    free a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,400
              #                    free a1
              #                     221  temp_54_ele_of_arr_75_75_0 = load temp_53_ptr_of_arr_75_75:ptr->i32 
              #                    occupy a1 with temp_53_ptr_of_arr_75_75
              #                    occupy a5 with temp_54_ele_of_arr_75_75_0
    lw      a5,0(a1)
              #                    free a5
              #                    free a1
              #                     408  untrack temp_53_ptr_of_arr_75_75 
              #                    occupy a1 with temp_53_ptr_of_arr_75_75
              #                    release a1 with temp_53_ptr_of_arr_75_75
              #                     222  mu arr_75_1:221 
              #                     224  temp_55_ret_of_func7_75_0 =  Call i32 func7_0(temp_54_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_50_ret_of_func2_75_0
              #                    store to temp_50_ret_of_func2_75_0 in mem offset legal
    sw      a0,224(sp)
              #                    release a0 with temp_50_ret_of_func2_75_0
              #                    occupy a3 with temp_52_ele_of_arr_75_75_0
              #                    store to temp_52_ele_of_arr_75_75_0 in mem offset legal
    sw      a3,212(sp)
              #                    release a3 with temp_52_ele_of_arr_75_75_0
              #                    occupy a5 with temp_54_ele_of_arr_75_75_0
              #                    store to temp_54_ele_of_arr_75_75_0 in mem offset legal
    sw      a5,196(sp)
              #                    release a5 with temp_54_ele_of_arr_75_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_54_ele_of_arr_75_75_0_0
              #                    load from temp_54_ele_of_arr_75_75_0 in mem


    lw      a0,196(sp)
              #                    arg load ended


    call    func7
              #                     226  temp_56_ret_of_func3_75_0 =  Call i32 func3_0(temp_52_ele_of_arr_75_75_0, temp_55_ret_of_func7_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_55_ret_of_func7_75_0
              #                    store to temp_55_ret_of_func7_75_0 in mem offset legal
    sw      a0,192(sp)
              #                    release a0 with temp_55_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_ele_of_arr_75_75_0_0
              #                    load from temp_52_ele_of_arr_75_75_0 in mem


    lw      a0,212(sp)
              #                    occupy a1 with _anonymous_of_temp_55_ret_of_func7_75_0_0
              #                    load from temp_55_ret_of_func7_75_0 in mem


    lw      a1,192(sp)
              #                    arg load ended


    call    func3
              #                     415  untrack temp_55_ret_of_func7_75_0 
              #                     228  temp_57_ret_of_func1_75_0 =  Call i32 func1_0(temp_50_ret_of_func2_75_0, temp_56_ret_of_func3_75_0, temp_17_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_56_ret_of_func3_75_0
              #                    store to temp_56_ret_of_func3_75_0 in mem offset legal
    sw      a0,188(sp)
              #                    release a0 with temp_56_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_50_ret_of_func2_75_0_0
              #                    load from temp_50_ret_of_func2_75_0 in mem


    lw      a0,224(sp)
              #                    occupy a1 with _anonymous_of_temp_56_ret_of_func3_75_0_0
              #                    load from temp_56_ret_of_func3_75_0 in mem


    lw      a1,188(sp)
              #                    occupy a2 with _anonymous_of_temp_17_ret_of_getint_75_0_0
              #                    load from temp_17_ret_of_getint_75_0 in mem


    lw      a2,452(sp)
              #                    arg load ended


    call    func1
              #                     399  untrack temp_56_ret_of_func3_75_0 
              #                     396  untrack temp_50_ret_of_func2_75_0 
              #                     230  temp_58_ret_of_func4_75_0 =  Call i32 func4_0(temp_26_ret_of_func5_75_0, temp_28_ele_of_arr_75_75_0, temp_57_ret_of_func1_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_57_ret_of_func1_75_0
              #                    store to temp_57_ret_of_func1_75_0 in mem offset legal
    sw      a0,184(sp)
              #                    release a0 with temp_57_ret_of_func1_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_26_ret_of_func5_75_0_0
              #                    load from temp_26_ret_of_func5_75_0 in mem


    lw      a0,372(sp)
              #                    occupy a1 with _anonymous_of_temp_28_ele_of_arr_75_75_0_0
              #                    load from temp_28_ele_of_arr_75_75_0 in mem


    lw      a1,356(sp)
              #                    occupy a2 with _anonymous_of_temp_57_ret_of_func1_75_0_0
              #                    load from temp_57_ret_of_func1_75_0 in mem


    lw      a2,184(sp)
              #                    arg load ended


    call    func4
              #                     401  untrack temp_26_ret_of_func5_75_0 
              #                     388  untrack temp_57_ret_of_func1_75_0 
              #                     232  temp_59_ret_of_func7_75_0 =  Call i32 func7_0(temp_19_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_58_ret_of_func4_75_0
              #                    store to temp_58_ret_of_func4_75_0 in mem offset legal
    sw      a0,180(sp)
              #                    release a0 with temp_58_ret_of_func4_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_19_ret_of_getint_75_0_0
              #                    load from temp_19_ret_of_getint_75_0 in mem


    lw      a0,444(sp)
              #                    arg load ended


    call    func7
              #                     397  untrack temp_19_ret_of_getint_75_0 
              #                     234  temp_60_ret_of_func3_75_0 =  Call i32 func3_0(temp_59_ret_of_func7_75_0, temp_20_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_59_ret_of_func7_75_0
              #                    store to temp_59_ret_of_func7_75_0 in mem offset legal
    sw      a0,176(sp)
              #                    release a0 with temp_59_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_59_ret_of_func7_75_0_0
              #                    load from temp_59_ret_of_func7_75_0 in mem


    lw      a0,176(sp)
              #                    occupy a1 with _anonymous_of_temp_20_ret_of_getint_75_0_0
              #                    load from temp_20_ret_of_getint_75_0 in mem


    lw      a1,440(sp)
              #                    arg load ended


    call    func3
              #                     429  untrack temp_59_ret_of_func7_75_0 
              #                     428  untrack temp_20_ret_of_getint_75_0 
              #                     236  temp_61_ret_of_func2_75_0 =  Call i32 func2_0(temp_18_ret_of_getint_75_0, temp_60_ret_of_func3_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_60_ret_of_func3_75_0
              #                    store to temp_60_ret_of_func3_75_0 in mem offset legal
    sw      a0,172(sp)
              #                    release a0 with temp_60_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_18_ret_of_getint_75_0_0
              #                    load from temp_18_ret_of_getint_75_0 in mem


    lw      a0,448(sp)
              #                    occupy a1 with _anonymous_of_temp_60_ret_of_func3_75_0_0
              #                    load from temp_60_ret_of_func3_75_0 in mem


    lw      a1,172(sp)
              #                    arg load ended


    call    func2
              #                     421  untrack temp_18_ret_of_getint_75_0 
              #                     409  untrack temp_60_ret_of_func3_75_0 
              #                     238  temp_62_ret_of_func3_75_0 =  Call i32 func3_0(temp_58_ret_of_func4_75_0, temp_61_ret_of_func2_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_61_ret_of_func2_75_0
              #                    store to temp_61_ret_of_func2_75_0 in mem offset legal
    sw      a0,168(sp)
              #                    release a0 with temp_61_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_58_ret_of_func4_75_0_0
              #                    load from temp_58_ret_of_func4_75_0 in mem


    lw      a0,180(sp)
              #                    occupy a1 with _anonymous_of_temp_61_ret_of_func2_75_0_0
              #                    load from temp_61_ret_of_func2_75_0 in mem


    lw      a1,168(sp)
              #                    arg load ended


    call    func3
              #                     417  untrack temp_58_ret_of_func4_75_0 
              #                     414  untrack temp_61_ret_of_func2_75_0 
              #                     240  (nop) 
              #                     242  (nop) 
              #                     243  mu arr_75_1:242 
              #                     245  (nop) 
              #                     247  (nop) 
              #                     248  mu arr_75_1:247 
              #                     250  temp_67_ret_of_func1_75_0 =  Call i32 func1_0(temp_62_ret_of_func3_75_0, temp_28_ele_of_arr_75_75_0, temp_30_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_62_ret_of_func3_75_0
              #                    store to temp_62_ret_of_func3_75_0 in mem offset legal
    sw      a0,164(sp)
              #                    release a0 with temp_62_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_62_ret_of_func3_75_0_0
              #                    load from temp_62_ret_of_func3_75_0 in mem


    lw      a0,164(sp)
              #                    occupy a1 with _anonymous_of_temp_28_ele_of_arr_75_75_0_0
              #                    load from temp_28_ele_of_arr_75_75_0 in mem


    lw      a1,356(sp)
              #                    occupy a2 with _anonymous_of_temp_30_ele_of_arr_75_75_0_0
              #                    load from temp_30_ele_of_arr_75_75_0 in mem


    lw      a2,340(sp)
              #                    arg load ended


    call    func1
              #                     440  untrack temp_62_ret_of_func3_75_0 
              #                     391  untrack temp_30_ele_of_arr_75_75_0 
              #                     387  untrack temp_28_ele_of_arr_75_75_0 
              #                     252  (nop) 
              #                     254  (nop) 
              #                     255  mu arr_75_1:254 
              #                     257  temp_70_ret_of_func2_75_0 =  Call i32 func2_0(temp_67_ret_of_func1_75_0, temp_33_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_67_ret_of_func1_75_0
              #                    store to temp_67_ret_of_func1_75_0 in mem offset legal
    sw      a0,140(sp)
              #                    release a0 with temp_67_ret_of_func1_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_67_ret_of_func1_75_0_0
              #                    load from temp_67_ret_of_func1_75_0 in mem


    lw      a0,140(sp)
              #                    occupy a1 with _anonymous_of_temp_33_ele_of_arr_75_75_0_0
              #                    load from temp_33_ele_of_arr_75_75_0 in mem


    lw      a1,324(sp)
              #                    arg load ended


    call    func2
              #                     427  untrack temp_67_ret_of_func1_75_0 
              #                     420  untrack temp_33_ele_of_arr_75_75_0 
              #                     259  (nop) 
              #                     261  (nop) 
              #                     262  mu arr_75_1:261 
              #                     264  (nop) 
              #                     266  (nop) 
              #                     267  mu arr_75_1:266 
              #                     269  (nop) 
              #                     271  (nop) 
              #                     272  mu arr_75_1:271 
              #                     274  temp_77_ret_of_func5_75_0 =  Call i32 func5_0(temp_41_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_70_ret_of_func2_75_0
              #                    store to temp_70_ret_of_func2_75_0 in mem offset legal
    sw      a0,124(sp)
              #                    release a0 with temp_70_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_41_ele_of_arr_75_75_0_0
              #                    load from temp_41_ele_of_arr_75_75_0 in mem


    lw      a0,268(sp)
              #                    arg load ended


    call    func5
              #                     430  untrack temp_41_ele_of_arr_75_75_0 
              #                     276  temp_78_ret_of_func3_75_0 =  Call i32 func3_0(temp_39_ele_of_arr_75_75_0, temp_77_ret_of_func5_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_77_ret_of_func5_75_0
              #                    store to temp_77_ret_of_func5_75_0 in mem offset legal
    sw      a0,92(sp)
              #                    release a0 with temp_77_ret_of_func5_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_39_ele_of_arr_75_75_0_0
              #                    load from temp_39_ele_of_arr_75_75_0 in mem


    lw      a0,284(sp)
              #                    occupy a1 with _anonymous_of_temp_77_ret_of_func5_75_0_0
              #                    load from temp_77_ret_of_func5_75_0 in mem


    lw      a1,92(sp)
              #                    arg load ended


    call    func3
              #                     416  untrack temp_39_ele_of_arr_75_75_0 
              #                     412  untrack temp_77_ret_of_func5_75_0 
              #                     278  (nop) 
              #                     280  (nop) 
              #                     281  mu arr_75_1:280 
              #                     283  temp_81_ret_of_func5_75_0 =  Call i32 func5_0(temp_46_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_78_ret_of_func3_75_0
              #                    store to temp_78_ret_of_func3_75_0 in mem offset legal
    sw      a0,88(sp)
              #                    release a0 with temp_78_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_46_ele_of_arr_75_75_0_0
              #                    load from temp_46_ele_of_arr_75_75_0 in mem


    lw      a0,244(sp)
              #                    arg load ended


    call    func5
              #                     400  untrack temp_46_ele_of_arr_75_75_0 
              #                     285  temp_82_ret_of_func2_75_0 =  Call i32 func2_0(temp_78_ret_of_func3_75_0, temp_81_ret_of_func5_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_81_ret_of_func5_75_0
              #                    store to temp_81_ret_of_func5_75_0 in mem offset legal
    sw      a0,76(sp)
              #                    release a0 with temp_81_ret_of_func5_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_78_ret_of_func3_75_0_0
              #                    load from temp_78_ret_of_func3_75_0 in mem


    lw      a0,88(sp)
              #                    occupy a1 with _anonymous_of_temp_81_ret_of_func5_75_0_0
              #                    load from temp_81_ret_of_func5_75_0 in mem


    lw      a1,76(sp)
              #                    arg load ended


    call    func2
              #                     424  untrack temp_78_ret_of_func3_75_0 
              #                     390  untrack temp_81_ret_of_func5_75_0 
              #                     287  (nop) 
              #                     289  (nop) 
              #                     290  mu arr_75_1:289 
              #                     292  (nop) 
              #                     294  (nop) 
              #                     295  mu arr_75_1:294 
              #                     297  temp_87_ret_of_func7_75_0 =  Call i32 func7_0(temp_52_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_82_ret_of_func2_75_0
              #                    store to temp_82_ret_of_func2_75_0 in mem offset legal
    sw      a0,72(sp)
              #                    release a0 with temp_82_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_52_ele_of_arr_75_75_0_0
              #                    load from temp_52_ele_of_arr_75_75_0 in mem


    lw      a0,212(sp)
              #                    arg load ended


    call    func7
              #                     443  untrack temp_52_ele_of_arr_75_75_0 
              #                     299  temp_88_ret_of_func1_75_0 =  Call i32 func1_0(temp_82_ret_of_func2_75_0, temp_49_ele_of_arr_75_75_0, temp_87_ret_of_func7_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_87_ret_of_func7_75_0
              #                    store to temp_87_ret_of_func7_75_0 in mem offset legal
    sw      a0,52(sp)
              #                    release a0 with temp_87_ret_of_func7_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_82_ret_of_func2_75_0_0
              #                    load from temp_82_ret_of_func2_75_0 in mem


    lw      a0,72(sp)
              #                    occupy a1 with _anonymous_of_temp_49_ele_of_arr_75_75_0_0
              #                    load from temp_49_ele_of_arr_75_75_0 in mem


    lw      a1,228(sp)
              #                    occupy a2 with _anonymous_of_temp_87_ret_of_func7_75_0_0
              #                    load from temp_87_ret_of_func7_75_0 in mem


    lw      a2,52(sp)
              #                    arg load ended


    call    func1
              #                     426  untrack temp_87_ret_of_func7_75_0 
              #                     403  untrack temp_49_ele_of_arr_75_75_0 
              #                     394  untrack temp_82_ret_of_func2_75_0 
              #                     301  (nop) 
              #                     303  (nop) 
              #                     304  mu arr_75_1:303 
              #                     306  temp_91_ret_of_func5_75_0 =  Call i32 func5_0(temp_54_ele_of_arr_75_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_88_ret_of_func1_75_0
              #                    store to temp_88_ret_of_func1_75_0 in mem offset legal
    sw      a0,48(sp)
              #                    release a0 with temp_88_ret_of_func1_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_54_ele_of_arr_75_75_0_0
              #                    load from temp_54_ele_of_arr_75_75_0 in mem


    lw      a0,196(sp)
              #                    arg load ended


    call    func5
              #                     392  untrack temp_54_ele_of_arr_75_75_0 
              #                     308  temp_92_ret_of_func2_75_0 =  Call i32 func2_0(temp_88_ret_of_func1_75_0, temp_91_ret_of_func5_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_91_ret_of_func5_75_0
              #                    store to temp_91_ret_of_func5_75_0 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with temp_91_ret_of_func5_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_88_ret_of_func1_75_0_0
              #                    load from temp_88_ret_of_func1_75_0 in mem


    lw      a0,48(sp)
              #                    occupy a1 with _anonymous_of_temp_91_ret_of_func5_75_0_0
              #                    load from temp_91_ret_of_func5_75_0 in mem


    lw      a1,36(sp)
              #                    arg load ended


    call    func2
              #                     413  untrack temp_88_ret_of_func1_75_0 
              #                     407  untrack temp_91_ret_of_func5_75_0 
              #                     310  temp_93_ret_of_func3_75_0 =  Call i32 func3_0(temp_92_ret_of_func2_75_0, temp_17_ret_of_getint_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_92_ret_of_func2_75_0
              #                    store to temp_92_ret_of_func2_75_0 in mem offset legal
    sw      a0,32(sp)
              #                    release a0 with temp_92_ret_of_func2_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_92_ret_of_func2_75_0_0
              #                    load from temp_92_ret_of_func2_75_0 in mem


    lw      a0,32(sp)
              #                    occupy a1 with _anonymous_of_temp_17_ret_of_getint_75_0_0
              #                    load from temp_17_ret_of_getint_75_0 in mem


    lw      a1,452(sp)
              #                    arg load ended


    call    func3
              #                     433  untrack temp_17_ret_of_getint_75_0 
              #                     405  untrack temp_92_ret_of_func2_75_0 
              #                     312  temp_94_ret_of_func1_75_0 =  Call i32 func1_0(temp_70_ret_of_func2_75_0, temp_35_ele_of_arr_75_75_0, temp_93_ret_of_func3_75_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_93_ret_of_func3_75_0
              #                    store to temp_93_ret_of_func3_75_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_93_ret_of_func3_75_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_70_ret_of_func2_75_0_0
              #                    load from temp_70_ret_of_func2_75_0 in mem


    lw      a0,124(sp)
              #                    occupy a1 with _anonymous_of_temp_35_ele_of_arr_75_75_0_0
              #                    load from temp_35_ele_of_arr_75_75_0 in mem


    lw      a1,308(sp)
              #                    occupy a2 with _anonymous_of_temp_93_ret_of_func3_75_0_0
              #                    load from temp_93_ret_of_func3_75_0 in mem


    lw      a2,28(sp)
              #                    arg load ended


    call    func1
              #                     422  untrack temp_35_ele_of_arr_75_75_0 
              #                     398  untrack temp_93_ret_of_func3_75_0 
              #                     389  untrack temp_70_ret_of_func2_75_0 
              #                     313  (nop) 
              #                     316  ret temp_94_ret_of_func1_75_0 
              #                    load from ra_main_0 in mem
    ld      ra,464(sp)
              #                    load from s0_main_0 in mem
    ld      s0,456(sp)
              #                    occupy a0 with temp_94_ret_of_func1_75_0
              #                    store to temp_94_ret_of_func1_75_0 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_94_ret_of_func1_75_0
              #                    occupy a0 with temp_94_ret_of_func1_75_0
              #                    load from temp_94_ret_of_func1_75_0 in mem


    lw      a0,24(sp)
    addi    sp,sp,472
              #                    free a0
    ret
