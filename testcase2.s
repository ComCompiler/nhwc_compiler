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
              #                    mem layout:|ra_ifWhile:8 at 40|s0_ifWhile:8 at 32|a:4 at 28|b:4 at 24|temp_0_arithop:4 at 20|temp_1_arithop:4 at 16|temp_2_arithop:4 at 12|temp_3_arithop:4 at 8|temp_4_cmp:1 at 7|temp_5_cmp:1 at 6|temp_6_cmp:1 at 5|none:5 at 0
    addi    sp,sp,-48
              #                    store to ra_ifWhile_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_ifWhile_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     18   alloc i32 a_17 
              #                     21   alloc i32 b_17 
              #                     26   alloc i32 temp_0_arithop_32 
              #                     30   alloc i32 temp_1_arithop_32 
              #                     34   alloc i32 temp_2_arithop_24 
              #                     38   alloc i32 temp_3_arithop_27 
              #                     42   alloc i1 temp_4_cmp_22 
              #                     48   alloc i1 temp_5_cmp_30 
              #                     56   alloc i1 temp_6_cmp_25 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19   new_var a_17:i32 
              #                     20   (nop) 
    nop
              #                     22   new_var b_17:i32 
              #                     23   (nop) 
    nop
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     43   new_var temp_4_cmp_22:i1 
              #                     44   temp_4_cmp_22 = icmp i32 Eq 0_0, 5_0 
              #                    occupy a0 with 0_0
    li      a0, 0
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a2 with temp_4_cmp_22
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     47   br i1 temp_4_cmp_22, label branch_true_23, label branch_false_23 
              #                    occupy a2 with temp_4_cmp_22
              #                    free a2
              #                    occupy a2 with temp_4_cmp_22
    bnez    a2, .branch_true_23
              #                    free a2
    j       .branch_false_23
              #                    regtab     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     74   b_17 = i32 3_0 
              #                    occupy a0 with b_17
    li      a0, 3
              #                    free a0
              #                          jump label: branch_true_23 
              #                    occupy a0 with b_17
              #                    store to b_17 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17
    j       .branch_true_23
              #                    regtab     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     45   label branch_true_23: 
.branch_true_23:
              #                     57   new_var temp_6_cmp_25:i1 
              #                     58   temp_6_cmp_25 = icmp i32 Eq b_17, 2_0 
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,24(sp)
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a3 with temp_6_cmp_25
    xor     a3,a0,a1
    seqz    a3, a3
              #                    free a0
              #                    free a1
              #                    free a3
              #                     61   br i1 temp_6_cmp_25, label while.body_26, label while.exit_26 
              #                    occupy a3 with temp_6_cmp_25
              #                    free a3
              #                    occupy a3 with temp_6_cmp_25
    bnez    a3, .while.body_26
              #                    free a3
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_6_cmp_25, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     59   label while.body_26: 
.while.body_26:
              #                     39   new_var temp_3_arithop_27:i32 
              #                     40   temp_3_arithop_27 = Add i32 b_17, 2_0 
              #                    occupy a0 with b_17
              #                    occupy a1 with 2_0
    li      a1, 2
              #                    occupy a4 with temp_3_arithop_27
    add     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     41   b_17 = i32 temp_3_arithop_27 
              #                    occupy a4 with temp_3_arithop_27
              #                    occupy a0 with b_17
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: branch_true_23 
              #                    occupy a3 with temp_6_cmp_25
              #                    store to temp_6_cmp_25 in mem offset legal
    sb      a3,5(sp)
              #                    release a3 with temp_6_cmp_25
              #                    occupy a4 with temp_3_arithop_27
              #                    store to temp_3_arithop_27 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_3_arithop_27
              #                    occupy a0 with b_17
              #                    store to b_17 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17
    j       .branch_true_23
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_6_cmp_25, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     60   label while.exit_26: 
.while.exit_26:
              #                     35   new_var temp_2_arithop_24:i32 
              #                     36   temp_2_arithop_24 = Add i32 b_17, 25_0 
              #                    occupy a0 with b_17
              #                    occupy a1 with 25_0
    li      a1, 25
              #                    occupy a4 with temp_2_arithop_24
    add     a4,a0,a1
              #                    free a0
              #                    free a1
              #                    free a4
              #                     37   b_17 = i32 temp_2_arithop_24 
              #                    occupy a4 with temp_2_arithop_24
              #                    occupy a0 with b_17
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: while.exit_31 
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_6_cmp_25, tracked: true } |     a4:Freed { symidx: temp_2_arithop_24, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                     52   label while.exit_31: 
.while.exit_31:
              #                          jump label: L4_0 
    j       .L4_0
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_6_cmp_25, tracked: true } |     a4:Freed { symidx: temp_2_arithop_24, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L4_0: 
.L4_0:
              #                     25   ret b_17 
              #                    load from ra_ifWhile_0 in mem
    ld      ra,40(sp)
              #                    load from s0_ifWhile_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with b_17
              #                    store to b_17 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,24(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_6_cmp_25, tracked: true } |     a4:Freed { symidx: temp_2_arithop_24, tracked: true } |  released_gpr_count:11,released_fpr_count:24
              #                          label L5_0: 
.L5_0:
              #                     75   a_17 = i32 0_0 
              #                    occupy a1 with a_17
    li      a1, 0
              #                    free a1
              #                     76   b_17 = i32 3_0 
              #                    occupy a0 with b_17
    li      a0, 3
              #                    free a0
              #                          jump label: branch_false_23 
              #                    occupy a3 with temp_6_cmp_25
              #                    store to temp_6_cmp_25 in mem offset legal
    sb      a3,5(sp)
              #                    release a3 with temp_6_cmp_25
              #                    occupy a4 with temp_2_arithop_24
              #                    store to temp_2_arithop_24 in mem offset legal
    sw      a4,12(sp)
              #                    release a4 with temp_2_arithop_24
              #                    occupy a1 with a_17
              #                    store to a_17 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with a_17
              #                    occupy a0 with b_17
              #                    store to b_17 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with b_17
    j       .branch_false_23
              #                    regtab     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     46   label branch_false_23: 
.branch_false_23:
              #                     49   new_var temp_5_cmp_30:i1 
              #                     50   temp_5_cmp_30 = icmp i32 Slt a_17, 5_0 
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,28(sp)
              #                    occupy a1 with 5_0
    li      a1, 5
              #                    occupy a3 with temp_5_cmp_30
    slt     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                     53   br i1 temp_5_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a3 with temp_5_cmp_30
              #                    free a3
              #                    occupy a3 with temp_5_cmp_30
    bnez    a3, .while.body_31
              #                    free a3
              #                    occupy a3 with temp_5_cmp_30
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_5_cmp_30
              #                    occupy a3 with temp_6_cmp_25
              #                    load from temp_6_cmp_25 in mem
    lb      a3,5(sp)
              #                    occupy a4 with temp_2_arithop_24
              #                    load from temp_2_arithop_24 in mem


    lw      a4,12(sp)
              #                    occupy a0 with a_17
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,24(sp)
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a2:Freed { symidx: temp_4_cmp_22, tracked: true } |     a3:Freed { symidx: temp_5_cmp_30, tracked: true } |  released_gpr_count:13,released_fpr_count:24
              #                     51   label while.body_31: 
.while.body_31:
              #                     27   new_var temp_0_arithop_32:i32 
              #                     28   temp_0_arithop_32 = Mul i32 b_17, 2_0 
              #                    occupy a1 with temp_0_arithop_32
              #                    occupy a4 with b_17
              #                    load from b_17 in mem


    lw      a4,24(sp)
              #                    occupy a5 with 2_0
    li      a5, 2
    mul     a1,a4,a5
              #                    free a4
              #                    free a5
              #                    free a1
              #                     29   b_17 = i32 temp_0_arithop_32 
              #                    occupy a1 with temp_0_arithop_32
              #                    occupy a4 with b_17
    mv      a4, a1
              #                    free a1
              #                    free a4
              #                     31   new_var temp_1_arithop_32:i32 
              #                     32   temp_1_arithop_32 = Add i32 a_17, 1_0 
              #                    occupy a0 with a_17
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_1_arithop_32
    add     a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                     33   a_17 = i32 temp_1_arithop_32 
              #                    occupy a7 with temp_1_arithop_32
              #                    occupy a0 with a_17
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: branch_false_23 
              #                    occupy a3 with temp_5_cmp_30
              #                    store to temp_5_cmp_30 in mem offset legal
    sb      a3,6(sp)
              #                    release a3 with temp_5_cmp_30
              #                    occupy a4 with b_17
              #                    store to b_17 in mem offset legal
    sw      a4,24(sp)
              #                    release a4 with b_17
              #                    occupy a1 with temp_0_arithop_32
              #                    store to temp_0_arithop_32 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with temp_0_arithop_32
              #                    occupy a0 with a_17
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a7 with temp_1_arithop_32
              #                    store to temp_1_arithop_32 in mem offset legal
    sw      a7,16(sp)
              #                    release a7 with temp_1_arithop_32
    j       .branch_false_23
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_7_ret_of_ifWhile:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     63   alloc i32 temp_7_ret_of_ifWhile_37 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     64   new_var temp_7_ret_of_ifWhile_37:i32 
              #                     65   temp_7_ret_of_ifWhile_37 =  Call i32 ifWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ifWhile
              #                     66   ret temp_7_ret_of_ifWhile_37 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_7_ret_of_ifWhile_37
              #                    store to temp_7_ret_of_ifWhile_37 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7_ret_of_ifWhile_37
              #                    occupy a0 with temp_7_ret_of_ifWhile_37
              #                    load from temp_7_ret_of_ifWhile_37 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
