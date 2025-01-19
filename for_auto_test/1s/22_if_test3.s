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
              #                     16   Define ififElse_0 "" -> ififElse_ret_0 
    .globl ififElse
    .type ififElse,@function
ififElse:
              #                    mem layout:|ra_ififElse:8 at 24|s0_ififElse:8 at 16|a _s17 _i0:4 at 12|a _s17 _i3:4 at 8|a _s17 _i5:4 at 4|b _s17 _i0:4 at 0
    addi    sp,sp,-32
              #                    store to ra_ififElse_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_ififElse_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     26   alloc i32 [temp_0_arithop_24] 
              #                     30   alloc i1 [temp_1_cmp_22] 
              #                     37   alloc i1 [temp_2_cmp_24] 
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
              #                     38   (nop) 
              #                          jump label: branch_true_25 
    j       .branch_true_25
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   label branch_true_25: 
.branch_true_25:
              #                     29   (nop) 
              #                     52   a_17_3 = i32 25_0 
              #                    occupy a0 with a_17_3
    li      a0, 25
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     42   label gather_7: 
.gather_7:
              #                     53   a_17_5 = i32 a_17_3 
              #                    occupy a0 with a_17_3
              #                    occupy a1 with a_17_5
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     57   untrack a_17_3 
              #                    occupy a0 with a_17_3
              #                    release a0 with a_17_3
              #                          jump label: branch_false_23 
    j       .branch_false_23
              #                    regtab     a1:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     33   label branch_false_23: 
.branch_false_23:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a1:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     25   ret a_17_5 
              #                    load from ra_ififElse_0 in mem
    ld      ra,24(sp)
              #                    load from s0_ififElse_0 in mem
    ld      s0,16(sp)
              #                    occupy a1 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with a_17_5
              #                    occupy a0 with a_17_5
              #                    load from a_17_5 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     40   label branch_false_25: 
.branch_false_25:
              #                     27   (nop) 
              #                     28   (nop) 
              #                     54   a_17_3 = i32 20_0 
              #                    occupy a1 with a_17_3
    li      a1, 20
              #                    free a1
              #                          jump label: gather_7 
              #                    occupy a1 with a_17_3
              #                    store to a_17_3 in mem offset legal
    sw      a1,8(sp)
              #                    release a1 with a_17_3
              #                    occupy a0 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17_5
              #                    occupy a0 with a_17_3
              #                    load from a_17_3 in mem


    lw      a0,8(sp)
    j       .gather_7
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     51   label UP_12_0: 
.UP_12_0:
              #                     56   untrack a_17_3 
              #                    occupy a0 with a_17_3
              #                    release a0 with a_17_3
              #                     55   a_17_5 = i32 5_0 
              #                    occupy a0 with a_17_5
    li      a0, 5
              #                    free a0
              #                          jump label: branch_false_23 
              #                    occupy a0 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17_5
              #                    occupy a1 with a_17_5
              #                    load from a_17_5 in mem


    lw      a1,4(sp)
    j       .branch_false_23
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_3_ret_of_ififElse _s30 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     44   alloc i32 [temp_3_ret_of_ififElse_30] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     45   temp_3_ret_of_ififElse_30_0 =  Call i32 ififElse_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ififElse
              #                     46   ret temp_3_ret_of_ififElse_30_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_3_ret_of_ififElse_30_0
              #                    store to temp_3_ret_of_ififElse_30_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_3_ret_of_ififElse_30_0
              #                    occupy a0 with temp_3_ret_of_ififElse_30_0
              #                    load from temp_3_ret_of_ififElse_30_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
