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
              #                     16   Define doubleWhile_0 "" -> doubleWhile_ret_0 
    .globl doubleWhile
    .type doubleWhile,@function
doubleWhile:
              #                    mem layout:|ra_doubleWhile:8 at 48|s0_doubleWhile:8 at 40|i _s17 _i0:4 at 36|i _s17 _i2:4 at 32|j _s17 _i0:4 at 28|j _s17 _i2:4 at 24|j _s17 _i3:4 at 20|temp_0_arithop _s24 _i0:4 at 16|temp_1_arithop _s24 _i0:4 at 12|temp_2_arithop _s28 _i0:4 at 8|temp_3_cmp _s22 _i0:1 at 7|temp_4_cmp _s26 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-56
              #                    store to ra_doubleWhile_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_doubleWhile_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                     18   alloc i32 [i_17] 
              #                     21   alloc i32 [j_17] 
              #                     26   alloc i32 [temp_0_arithop_24] 
              #                     29   alloc i32 [temp_1_arithop_24] 
              #                     32   alloc i32 [temp_2_arithop_28] 
              #                     35   alloc i1 [temp_3_cmp_22] 
              #                     43   alloc i1 [temp_4_cmp_26] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20   (nop) 
              #                     22    
              #                     23   (nop) 
              #                     58   j_17_2 = i32 7_0 
              #                    occupy a0 with j_17_2
    li      a0, 7
              #                    free a0
              #                     59   i_17_2 = i32 5_0 
              #                    occupy a1 with i_17_2
    li      a1, 5
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     37   label while.head_23: 
.while.head_23:
              #                     36   temp_3_cmp_22_0 = icmp i32 Slt i_17_2, 100_0 
              #                    occupy a1 with i_17_2
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_3_cmp_22_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     40   br i1 temp_3_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a3 with temp_3_cmp_22_0
              #                    free a3
              #                    occupy a3 with temp_3_cmp_22_0
    bnez    a3, .while.body_23
              #                    free a3
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     38   label while.body_23: 
.while.body_23:
              #                     27   temp_0_arithop_24_0 = Add i32 i_17_2, 30_0 
              #                    occupy a1 with i_17_2
              #                    occupy a2 with 30_0
    li      a2, 30
              #                    occupy a4 with temp_0_arithop_24_0
    ADDW    a4,a1,a2
              #                    free a1
              #                    free a2
              #                    free a4
              #                     28   (nop) 
              #                     60   j_17_3 = i32 j_17_2 
              #                    occupy a0 with j_17_2
              #                    occupy a5 with j_17_3
    mv      a5, a0
              #                    free a0
              #                    free a5
              #                          jump label: while.head_27 
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24_0, tracked: true } |     a5:Freed { symidx: j_17_3, tracked: true } |  released_gpr_count:12,released_fpr_count:24
              #                     45   label while.head_27: 
.while.head_27:
              #                     44   temp_4_cmp_26_0 = icmp i32 Slt j_17_3, 100_0 
              #                    occupy a5 with j_17_3
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a6 with temp_4_cmp_26_0
    slt     a6,a5,a2
              #                    free a5
              #                    free a2
              #                    free a6
              #                     48   br i1 temp_4_cmp_26_0, label while.body_27, label while.exit_27 
              #                    occupy a6 with temp_4_cmp_26_0
              #                    free a6
              #                    occupy a6 with temp_4_cmp_26_0
    bnez    a6, .while.body_27
              #                    free a6
    j       .while.exit_27
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24_0, tracked: true } |     a5:Freed { symidx: j_17_3, tracked: true } |     a6:Freed { symidx: temp_4_cmp_26_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     46   label while.body_27: 
.while.body_27:
              #                     33   temp_2_arithop_28_0 = Add i32 j_17_3, 6_0 
              #                    occupy a5 with j_17_3
              #                    occupy a2 with 6_0
    li      a2, 6
              #                    occupy a7 with temp_2_arithop_28_0
    ADDW    a7,a5,a2
              #                    free a5
              #                    free a2
              #                    free a7
              #                     34   (nop) 
              #                     61   j_17_3 = i32 temp_2_arithop_28_0 
              #                    occupy a7 with temp_2_arithop_28_0
              #                    occupy a5 with j_17_3
    mv      a5, a7
              #                    free a7
              #                    free a5
              #                          jump label: while.head_27 
              #                    occupy a6 with temp_4_cmp_26_0
              #                    store to temp_4_cmp_26_0 in mem offset legal
    sb      a6,6(sp)
              #                    release a6 with temp_4_cmp_26_0
              #                    occupy a7 with temp_2_arithop_28_0
              #                    store to temp_2_arithop_28_0 in mem offset legal
    sw      a7,8(sp)
              #                    release a7 with temp_2_arithop_28_0
    j       .while.head_27
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24_0, tracked: true } |     a5:Freed { symidx: j_17_3, tracked: true } |     a6:Freed { symidx: temp_4_cmp_26_0, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                     47   label while.exit_27: 
.while.exit_27:
              #                     30   temp_1_arithop_24_0 = Sub i32 j_17_3, 100_0 
              #                    occupy a5 with j_17_3
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a7 with temp_1_arithop_24_0
              #                    regtab:    a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a2:Occupied { symidx: 100_0, tracked: false, occupy_count: 1 } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |     a4:Freed { symidx: temp_0_arithop_24_0, tracked: true } |     a5:Occupied { symidx: j_17_3, tracked: true, occupy_count: 1 } |     a6:Freed { symidx: temp_4_cmp_26_0, tracked: true } |     a7:Occupied { symidx: temp_1_arithop_24_0, tracked: true, occupy_count: 1 } |  released_gpr_count:8,released_fpr_count:24


    subw    a7,a5,a2
              #                    free a5
              #                    free a2
              #                    free a7
              #                     31   (nop) 
              #                     62   i_17_2 = i32 temp_0_arithop_24_0 
              #                    occupy a4 with temp_0_arithop_24_0
              #                    occupy a1 with i_17_2
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                     63   j_17_2 = i32 temp_1_arithop_24_0 
              #                    occupy a7 with temp_1_arithop_24_0
              #                    occupy a0 with j_17_2
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: while.head_23 
              #                    occupy a6 with temp_4_cmp_26_0
              #                    store to temp_4_cmp_26_0 in mem offset legal
    sb      a6,6(sp)
              #                    release a6 with temp_4_cmp_26_0
              #                    occupy a5 with j_17_3
              #                    store to j_17_3 in mem offset legal
    sw      a5,20(sp)
              #                    release a5 with j_17_3
              #                    occupy a3 with temp_3_cmp_22_0
              #                    store to temp_3_cmp_22_0 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_3_cmp_22_0
              #                    occupy a7 with temp_1_arithop_24_0
              #                    store to temp_1_arithop_24_0 in mem offset legal
    sw      a7,12(sp)
              #                    release a7 with temp_1_arithop_24_0
              #                    occupy a4 with temp_0_arithop_24_0
              #                    store to temp_0_arithop_24_0 in mem offset legal
    sw      a4,16(sp)
              #                    release a4 with temp_0_arithop_24_0
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: j_17_2, tracked: true } |     a1:Freed { symidx: i_17_2, tracked: true } |     a3:Freed { symidx: temp_3_cmp_22_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     39   label while.exit_23: 
.while.exit_23:
              #                     64   untrack i_17_2 
              #                    occupy a1 with i_17_2
              #                    release a1 with i_17_2
              #                     25   ret j_17_2 
              #                    load from ra_doubleWhile_0 in mem
    ld      ra,48(sp)
              #                    load from s0_doubleWhile_0 in mem
    ld      s0,40(sp)
              #                    occupy a0 with j_17_2
              #                    store to j_17_2 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with j_17_2
              #                    occupy a0 with j_17_2
              #                    load from j_17_2 in mem


    lw      a0,24(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_5_ret_of_doubleWhile _s33 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     50   alloc i32 [temp_5_ret_of_doubleWhile_33] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     51   temp_5_ret_of_doubleWhile_33_0 =  Call i32 doubleWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    doubleWhile
              #                     52   ret temp_5_ret_of_doubleWhile_33_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_5_ret_of_doubleWhile_33_0
              #                    store to temp_5_ret_of_doubleWhile_33_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_5_ret_of_doubleWhile_33_0
              #                    occupy a0 with temp_5_ret_of_doubleWhile_33_0
              #                    load from temp_5_ret_of_doubleWhile_33_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
