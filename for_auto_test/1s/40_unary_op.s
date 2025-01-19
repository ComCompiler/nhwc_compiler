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
              #                    mem layout:|ra_main:8 at 24|s0_main:8 at 16|a _s17 _i0:4 at 12|a _s17 _i3:4 at 8|temp_2_booltrans _s20 _i0:1 at 7|temp_3_logicnot _s20 _i0:1 at 6|temp_4_booltrans _s20 _i0:1 at 5|temp_5_logicnot _s20 _i0:1 at 4|temp_6_ _s20 _i0:1 at 3|none:3 at 0
    addi    sp,sp,-32
              #                    store to ra_main_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     17   alloc i32 [a_17] 
              #                     24   alloc i1 [temp_0_booltrans_20] 
              #                     26   alloc i1 [temp_1_logicnot_20] 
              #                     28   alloc i1 [temp_2_booltrans_20] 
              #                     30   alloc i1 [temp_3_logicnot_20] 
              #                     32   alloc i1 [temp_4_booltrans_20] 
              #                     34   alloc i1 [temp_5_logicnot_20] 
              #                     36   alloc i1 [temp_6__20] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     19   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     25   (nop) 
              #                     27   (nop) 
              #                     29   temp_2_booltrans_20_0 = icmp i1 Ne false_0, 0_0 
              #                    occupy a0 with false_0
    li      a0, 0
              #                    occupy a1 with 0_0
    li      a1, 0
              #                    occupy a2 with temp_2_booltrans_20_0
    xor     a2,a0,a1
    snez    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                     31   temp_3_logicnot_20_0 = xor i1 temp_2_booltrans_20_0, true 
              #                    occupy a2 with temp_2_booltrans_20_0
              #                    occupy a3 with temp_3_logicnot_20_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     48   untrack temp_2_booltrans_20_0 
              #                    occupy a2 with temp_2_booltrans_20_0
              #                    release a2 with temp_2_booltrans_20_0
              #                     33   temp_4_booltrans_20_0 = icmp i1 Ne temp_3_logicnot_20_0, 0_0 
              #                    occupy a3 with temp_3_logicnot_20_0
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a2 with temp_4_booltrans_20_0
    xor     a2,a3,a1
    snez    a2, a2
              #                    free a3
              #                    free a1
              #                    free a2
              #                     50   untrack temp_3_logicnot_20_0 
              #                    occupy a3 with temp_3_logicnot_20_0
              #                    release a3 with temp_3_logicnot_20_0
              #                     35   temp_5_logicnot_20_0 = xor i1 temp_4_booltrans_20_0, true 
              #                    occupy a2 with temp_4_booltrans_20_0
              #                    occupy a3 with temp_5_logicnot_20_0
    seqz    a3, a2
              #                    free a2
              #                    free a3
              #                     49   untrack temp_4_booltrans_20_0 
              #                    occupy a2 with temp_4_booltrans_20_0
              #                    release a2 with temp_4_booltrans_20_0
              #                     37   temp_6__20_0 = Sub i1 0_0, temp_5_logicnot_20_0 
              #                    found literal reg Some(a1) already exist with 0_0
              #                    occupy a1 with 0_0
              #                    occupy a3 with temp_5_logicnot_20_0
              #                    occupy a2 with temp_6__20_0
    sub     a2,a1,a3
              #                    free a1
              #                    free a3
              #                    free a2
              #                     47   untrack temp_5_logicnot_20_0 
              #                    occupy a3 with temp_5_logicnot_20_0
              #                    release a3 with temp_5_logicnot_20_0
              #                     40   br i1 temp_6__20_0, label branch_true_21, label branch_false_21 
              #                    occupy a2 with temp_6__20_0
              #                    free a2
              #                    occupy a2 with temp_6__20_0
    bnez    a2, .branch_true_21
              #                    free a2
    j       .branch_false_21
              #                    regtab     a2:Freed { symidx: temp_6__20_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     38   label branch_true_21: 
.branch_true_21:
              #                     51   untrack temp_6__20_0 
              #                    occupy a2 with temp_6__20_0
              #                    release a2 with temp_6__20_0
              #                     23   (nop) 
              #                     45   a_17_3 = i32 -1_0 
              #                    occupy a0 with a_17_3
    li      a0, -1
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     41   label gather_7: 
.gather_7:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     22   ret a_17_3 
              #                    load from ra_main_0 in mem
    ld      ra,24(sp)
              #                    load from s0_main_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with a_17_3
              #                    store to a_17_3 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with a_17_3
              #                    occupy a0 with a_17_3
              #                    load from a_17_3 in mem


    lw      a0,8(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_6__20_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     39   label branch_false_21: 
.branch_false_21:
              #                     52   untrack temp_6__20_0 
              #                    occupy a2 with temp_6__20_0
              #                    release a2 with temp_6__20_0
              #                     20   (nop) 
              #                     46   a_17_3 = i32 0_0 
              #                    occupy a0 with a_17_3
    li      a0, 0
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
