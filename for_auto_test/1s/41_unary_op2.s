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
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|a _s17 _i0:4 at 20|a _s17 _i4:4 at 16|b _s17 _i0:4 at 12|temp_5_booltrans _s22 _i0:1 at 11|temp_6_logicnot _s22 _i0:1 at 10|temp_7_booltrans _s22 _i0:1 at 9|temp_8_logicnot _s22 _i0:1 at 8|temp_9_ _s22 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     17   alloc i32 [a_17] 
              #                     19   alloc i32 [b_17] 
              #                     23   alloc i32 [temp_0_arithop_17] 
              #                     25   alloc i32 [temp_1_arithop_17] 
              #                     28   alloc i32 [temp_2_arithop_26] 
              #                     35   alloc i1 [temp_3_booltrans_22] 
              #                     37   alloc i1 [temp_4_logicnot_22] 
              #                     39   alloc i1 [temp_5_booltrans_22] 
              #                     41   alloc i1 [temp_6_logicnot_22] 
              #                     43   alloc i1 [temp_7_booltrans_22] 
              #                     45   alloc i1 [temp_8_logicnot_22] 
              #                     47   alloc i1 [temp_9__22] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     20    
              #                     21   (nop) 
              #                     22   (nop) 
              #                     24   (nop) 
              #                     26   (nop) 
              #                     27   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     36   (nop) 
              #                     38   (nop) 
              #                     40   temp_5_booltrans_22_0 = icmp i1 Ne false_0, 0_0 
              #                    occupy a0 with false_0
    li      a0, 0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_5_booltrans_22_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     42   temp_6_logicnot_22_0 = xor i1 temp_5_booltrans_22_0, true 
              #                    occupy a2 with temp_5_booltrans_22_0
              #                    occupy a3 with temp_6_logicnot_22_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     59   untrack temp_5_booltrans_22_0 
              #                    occupy a2 with temp_5_booltrans_22_0
              #                    release a2 with temp_5_booltrans_22_0
              #                     44   temp_7_booltrans_22_0 = icmp i1 Ne temp_6_logicnot_22_0, 0_0 
              #                    occupy a3 with temp_6_logicnot_22_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_7_booltrans_22_0
    xor     a2,a3,a1
    snez    a2, a2
              #                    free a3
              #                    free a1
              #                    free a2
              #                     61   untrack temp_6_logicnot_22_0 
              #                    occupy a3 with temp_6_logicnot_22_0
              #                    release a3 with temp_6_logicnot_22_0
              #                     46   temp_8_logicnot_22_0 = xor i1 temp_7_booltrans_22_0, true 
              #                    occupy a2 with temp_7_booltrans_22_0
              #                    occupy a3 with temp_8_logicnot_22_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     60   untrack temp_7_booltrans_22_0 
              #                    occupy a2 with temp_7_booltrans_22_0
              #                    release a2 with temp_7_booltrans_22_0
              #                     48   temp_9__22_0 = Sub i1 0_0, temp_8_logicnot_22_0 
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a3 with temp_8_logicnot_22_0
              #                    occupy a2 with temp_9__22_0
    sub     a2,a1,a3
              #                    free a1
              #                    free a3
              #                    free a2
              #                     58   untrack temp_8_logicnot_22_0 
              #                    occupy a3 with temp_8_logicnot_22_0
              #                    release a3 with temp_8_logicnot_22_0
              #                     51   br i1 temp_9__22_0, label branch_true_23, label branch_false_23 
              #                    occupy a2 with temp_9__22_0
              #                    free a2
              #                    occupy a2 with temp_9__22_0
    bnez    a2, .branch_true_23
              #                    free a2
    j       .branch_false_23
              #                    regtab     a2:Freed { symidx: temp_9__22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     49   label branch_true_23: 
.branch_true_23:
              #                     62   untrack temp_9__22_0 
              #                    occupy a2 with temp_9__22_0
              #                    release a2 with temp_9__22_0
              #                     34   (nop) 
              #                     56   a_17_4 = i32 -1_0 
              #                    occupy a0 with a_17_4
    li      a0, -1
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab     a0:Freed { symidx: a_17_4, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     52   label gather_7: 
.gather_7:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17_4, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     31    Call void putint_0(a_17_4) 
              #                    saved register dumping to mem
              #                    occupy a0 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with a_17_4
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_a_17_4_0
              #                    load from a_17_4 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                     64   untrack a_17_4 
              #                     33   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_9__22_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     50   label branch_false_23: 
.branch_false_23:
              #                     63   untrack temp_9__22_0 
              #                    occupy a2 with temp_9__22_0
              #                    release a2 with temp_9__22_0
              #                     29   (nop) 
              #                     30   (nop) 
              #                     57   a_17_4 = i32 4_0 
              #                    occupy a0 with a_17_4
    li      a0, 4
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
