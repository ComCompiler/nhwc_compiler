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
              #                     16   Define if_if_Else_0 "" -> if_if_Else_ret_0 
    .globl if_if_Else
    .type if_if_Else,@function
if_if_Else:
              #                    mem layout:|ra_if_if_Else:8 at 24|s0_if_if_Else:8 at 16|a _s17 _i0:4 at 12|a _s17 _i3:4 at 8|a _s17 _i4:4 at 4|b _s17 _i0:4 at 0
    addi    sp,sp,-32
              #                    store to ra_if_if_Else_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_if_if_Else_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     24   alloc i32 [temp_0_arithop_22] 
              #                     30   alloc i1 [temp_1_cmp_22] 
              #                     38   alloc i1 [temp_2_cmp_25] 
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
              #                     31   (nop) 
              #                          jump label: branch_true_23 
    j       .branch_true_23
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     32   label branch_true_23: 
.branch_true_23:
              #                     39   (nop) 
              #                          jump label: branch_true_26 
    j       .branch_true_26
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   label branch_true_26: 
.branch_true_26:
              #                     29   (nop) 
              #                     52   a_17_3 = i32 25_0 
              #                    occupy a0 with a_17_3
    li      a0, 25
              #                    free a0
              #                          jump label: branch_false_26 
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     41   label branch_false_26: 
.branch_false_26:
              #                     53   a_17_4 = i32 a_17_3 
              #                    occupy a0 with a_17_3
              #                    occupy a1 with a_17_4
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     57   untrack a_17_3 
              #                    occupy a0 with a_17_3
              #                    release a0 with a_17_3
              #                          jump label: gather_9 
    j       .gather_9
              #                    regtab     a1:Freed { symidx: a_17_4, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     35   label gather_9: 
.gather_9:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a1:Freed { symidx: a_17_4, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     28   ret a_17_4 
              #                    load from ra_if_if_Else_0 in mem
    ld      ra,24(sp)
              #                    load from s0_if_if_Else_0 in mem
    ld      s0,16(sp)
              #                    occupy a1 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with a_17_4
              #                    occupy a0 with a_17_4
              #                    load from a_17_4 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17_4, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     51   label UP_12_0: 
.UP_12_0:
              #                     54   a_17_3 = i32 5_0 
              #                    occupy a1 with a_17_3
    li      a1, 5
              #                    free a1
              #                          jump label: branch_false_26 
              #                    occupy a0 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17_4
              #                    occupy a1 with a_17_3
              #                    store to a_17_3 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with a_17_3
              #                    occupy a0 with a_17_3
              #                    load from a_17_3 in mem


    lw      a0,8(sp)
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     33   label branch_false_23: 
.branch_false_23:
              #                     56   untrack a_17_3 
              #                    occupy a0 with a_17_3
              #                    release a0 with a_17_3
              #                     25   (nop) 
              #                     26   (nop) 
              #                     55   a_17_4 = i32 20_0 
              #                    occupy a0 with a_17_4
    li      a0, 20
              #                    free a0
              #                          jump label: gather_9 
              #                    occupy a0 with a_17_4
              #                    store to a_17_4 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17_4
              #                    occupy a1 with a_17_4
              #                    load from a_17_4 in mem


    lw      a1,4(sp)
    j       .gather_9
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_3_ret_of_if_if_Else _s31 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     44   alloc i32 [temp_3_ret_of_if_if_Else_31] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     45   temp_3_ret_of_if_if_Else_31_0 =  Call i32 if_if_Else_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    if_if_Else
              #                     46   ret temp_3_ret_of_if_if_Else_31_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_3_ret_of_if_if_Else_31_0
              #                    store to temp_3_ret_of_if_if_Else_31_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_3_ret_of_if_if_Else_31_0
              #                    occupy a0 with temp_3_ret_of_if_if_Else_31_0
              #                    load from temp_3_ret_of_if_if_Else_31_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
