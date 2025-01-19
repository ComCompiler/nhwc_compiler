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
              #                     16   Define ifWhile_0 "" -> ifWhile_ret_0 
    .globl ifWhile
    .type ifWhile,@function
ifWhile:
              #                    mem layout:|ra_ifWhile:8 at 56|s0_ifWhile:8 at 48|a _s17 _i0:4 at 44|a _s17 _i2:4 at 40|a _s17 _i3:4 at 36|b _s17 _i0:4 at 32|b _s17 _i2:4 at 28|b _s17 _i5:4 at 24|b _s17 _i6:4 at 20|temp_0_arithop _s32 _i0:4 at 16|temp_1_arithop _s32 _i0:4 at 12|temp_2_arithop _s24 _i0:4 at 8|temp_3_arithop _s27 _i0:4 at 4|temp_5_cmp _s30 _i0:1 at 3|temp_6_cmp _s25 _i0:1 at 2|none:2 at 0
    addi    sp,sp,-64
              #                    store to ra_ifWhile_0 in mem offset legal
    sd      ra,56(sp)
              #                    store to s0_ifWhile_0 in mem offset legal
    sd      s0,48(sp)
    addi    s0,sp,64
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     26   alloc i32 [temp_0_arithop_32] 
              #                     29   alloc i32 [temp_1_arithop_32] 
              #                     32   alloc i32 [temp_2_arithop_24] 
              #                     35   alloc i32 [temp_3_arithop_27] 
              #                     38   alloc i1 [temp_4_cmp_22] 
              #                     43   alloc i1 [temp_5_cmp_30] 
              #                     50   alloc i1 [temp_6_cmp_25] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                     20   (nop) 
              #                     22    
              #                     23   (nop) 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     39   (nop) 
              #                          jump label: UP_15_0 
    j       .UP_15_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     66   label UP_13_0: 
.UP_13_0:
              #                     78   untrack b_17_6 
              #                     77   untrack a_17_3 
              #                     69   b_17_2 = i32 3_0 
              #                    occupy a0 with b_17_2
    li      a0, 3
              #                    free a0
              #                          jump label: branch_true_23 
    j       .branch_true_23
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     40   label branch_true_23: 
.branch_true_23:
              #                     51   temp_6_cmp_25_0 = icmp i32 Eq b_17_2, 2_0 
              #                    occupy a0 with b_17_2
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a2 with temp_6_cmp_25_0
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     54   br i1 temp_6_cmp_25_0, label while.body_26, label while.exit_26 
              #                    occupy a2 with temp_6_cmp_25_0
              #                    free a2
              #                    occupy a2 with temp_6_cmp_25_0
    bnez    a2, .while.body_26
              #                    free a2
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: temp_6_cmp_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     52   label while.body_26: 
.while.body_26:
              #                     36   temp_3_arithop_27_0 = Add i32 b_17_2, 2_0 
              #                    occupy a0 with b_17_2
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a3 with temp_3_arithop_27_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     37   (nop) 
              #                     70   b_17_2 = i32 temp_3_arithop_27_0 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    occupy a0 with b_17_2
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          jump label: branch_true_23 
              #                    occupy a3 with temp_3_arithop_27_0
              #                    store to temp_3_arithop_27_0 in mem offset legal
    sw      a3,4(sp)
              #                    release a3 with temp_3_arithop_27_0
              #                    occupy a2 with temp_6_cmp_25_0
              #                    store to temp_6_cmp_25_0 in mem offset legal
    sb      a2,2(sp)
              #                    release a2 with temp_6_cmp_25_0
    j       .branch_true_23
              #                    regtab     a0:Freed { symidx: b_17_2, tracked: true } |     a2:Freed { symidx: temp_6_cmp_25_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     53   label while.exit_26: 
.while.exit_26:
              #                     33   temp_2_arithop_24_0 = Add i32 b_17_2, 25_0 
              #                    occupy a0 with b_17_2
              #                    occupy a1 with 25_0
    li      a1, 25
              #                    occupy a3 with temp_2_arithop_24_0
    ADDW    a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     82   untrack b_17_2 
              #                    occupy a0 with b_17_2
              #                    release a0 with b_17_2
              #                     34   (nop) 
              #                     71   b_17_5 = i32 temp_2_arithop_24_0 
              #                    occupy a3 with temp_2_arithop_24_0
              #                    occupy a0 with b_17_5
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                     81   untrack temp_2_arithop_24_0 
              #                    occupy a3 with temp_2_arithop_24_0
              #                    release a3 with temp_2_arithop_24_0
              #                          jump label: while.exit_31 
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: b_17_5, tracked: true } |     a2:Freed { symidx: temp_6_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     46   label while.exit_31: 
.while.exit_31:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: b_17_5, tracked: true } |     a2:Freed { symidx: temp_6_cmp_25_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     25   ret b_17_5 
              #                    load from ra_ifWhile_0 in mem
    ld      ra,56(sp)
              #                    load from s0_ifWhile_0 in mem
    ld      s0,48(sp)
              #                    occupy a0 with b_17_5
              #                    store to b_17_5 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17_5
              #                    occupy a0 with b_17_5
              #                    load from b_17_5 in mem


    lw      a0,24(sp)
    addi    sp,sp,64
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     68   label UP_15_0: 
.UP_15_0:
              #                     80   untrack temp_2_arithop_24_0 
              #                     79   untrack b_17_2 
              #                     72   b_17_6 = i32 3_0 
              #                    occupy a0 with b_17_6
    li      a0, 3
              #                    free a0
              #                     73   a_17_3 = i32 0_0 
              #                    occupy a1 with a_17_3
    li      a1, 0
              #                    free a1
              #                          jump label: branch_false_23 
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: b_17_6, tracked: true } |     a1:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     41   label branch_false_23: 
.branch_false_23:
              #                     44   temp_5_cmp_30_0 = icmp i32 Slt a_17_3, 5_0 
              #                    occupy a1 with a_17_3
              #                    occupy a2 with 5_0
    li      a2, 5
              #                    occupy a3 with temp_5_cmp_30_0
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     47   br i1 temp_5_cmp_30_0, label while.body_31, label UP_2_0 
              #                    occupy a3 with temp_5_cmp_30_0
              #                    free a3
              #                    occupy a3 with temp_5_cmp_30_0
    bnez    a3, .while.body_31
              #                    free a3
    j       .UP_2_0
              #                    regtab     a0:Freed { symidx: b_17_6, tracked: true } |     a1:Freed { symidx: a_17_3, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     45   label while.body_31: 
.while.body_31:
              #                     27   temp_0_arithop_32_0 = Mul i32 b_17_6, 2_0 
              #                    occupy a2 with temp_0_arithop_32_0
              #                    occupy a0 with b_17_6
    slliw a2,a0,1
              #                    free a0
              #                    free a2
              #                     28   (nop) 
              #                     30   temp_1_arithop_32_0 = Add i32 a_17_3, 1_0 
              #                    occupy a1 with a_17_3
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_1_arithop_32_0
    ADDW    a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     31   (nop) 
              #                     74   b_17_6 = i32 temp_0_arithop_32_0 
              #                    occupy a2 with temp_0_arithop_32_0
              #                    occupy a0 with b_17_6
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     75   a_17_3 = i32 temp_1_arithop_32_0 
              #                    occupy a5 with temp_1_arithop_32_0
              #                    occupy a1 with a_17_3
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: branch_false_23 
              #                    occupy a3 with temp_5_cmp_30_0
              #                    store to temp_5_cmp_30_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_5_cmp_30_0
              #                    occupy a2 with temp_0_arithop_32_0
              #                    store to temp_0_arithop_32_0 in mem offset legal
    sw      a2,16(sp)
              #                    release a2 with temp_0_arithop_32_0
              #                    occupy a5 with temp_1_arithop_32_0
              #                    store to temp_1_arithop_32_0 in mem offset legal
    sw      a5,12(sp)
              #                    release a5 with temp_1_arithop_32_0
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: b_17_6, tracked: true } |     a1:Freed { symidx: a_17_3, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30_0, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     67   label UP_2_0: 
.UP_2_0:
              #                     83   untrack a_17_3 
              #                    occupy a1 with a_17_3
              #                    release a1 with a_17_3
              #                     76   b_17_5 = i32 b_17_6 
              #                    occupy a0 with b_17_6
              #                    occupy a1 with b_17_5
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     84   untrack b_17_6 
              #                    occupy a0 with b_17_6
              #                    release a0 with b_17_6
              #                          jump label: while.exit_31 
              #                    occupy a3 with temp_5_cmp_30_0
              #                    store to temp_5_cmp_30_0 in mem offset legal
    sb      a3,3(sp)
              #                    release a3 with temp_5_cmp_30_0
              #                    occupy a2 with temp_6_cmp_25_0
              #                    load from temp_6_cmp_25_0 in mem


    lb      a2,2(sp)
              #                    occupy a1 with b_17_5
              #                    store to b_17_5 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with b_17_5
              #                    occupy a0 with b_17_5
              #                    load from b_17_5 in mem


    lw      a0,24(sp)
    j       .while.exit_31
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_7_ret_of_ifWhile _s37 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     56   alloc i32 [temp_7_ret_of_ifWhile_37] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     57   temp_7_ret_of_ifWhile_37_0 =  Call i32 ifWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ifWhile
              #                     58   ret temp_7_ret_of_ifWhile_37_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_7_ret_of_ifWhile_37_0
              #                    store to temp_7_ret_of_ifWhile_37_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7_ret_of_ifWhile_37_0
              #                    occupy a0 with temp_7_ret_of_ifWhile_37_0
              #                    load from temp_7_ret_of_ifWhile_37_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
