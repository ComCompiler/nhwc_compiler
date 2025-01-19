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
              #                     16   Define ifElseIf_0 "" -> ifElseIf_ret_0 
    .globl ifElseIf
    .type ifElseIf,@function
ifElseIf:
              #                    mem layout:|ra_ifElseIf:8 at 24|s0_ifElseIf:8 at 16|a _s17 _i0:4 at 12|a _s17 _i3:4 at 8|a _s17 _i5:4 at 4|b _s17 _i0:4 at 0
    addi    sp,sp,-32
              #                    store to ra_ifElseIf_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_ifElseIf_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                     18   alloc i32 [a_17] 
              #                     21   alloc i32 [b_17] 
              #                     24   alloc i32 [temp_0__30] 
              #                     29   alloc i32 [temp_1_arithop_30] 
              #                     35   alloc i1 [temp_2_cmp_22] 
              #                     37   alloc i1 [temp_3_cmp_22] 
              #                     45   alloc i1 [temp_4_cmp_27] 
              #                     47   alloc i1 [temp_5_cmp_27] 
              #                     55   alloc i1 [temp_6_cmp_30] 
              #                     57   alloc i1 [temp_7_cmp_30] 
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
              #                     36   (nop) 
              #                          jump label: branch_short_circuit_p_false_107 
    j       .branch_short_circuit_p_false_107
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     39   label branch_short_circuit_c_true_107: 
.branch_short_circuit_c_true_107:
              #                     86   untrack a_17_5 
              #                     85   untrack a_17_3 
              #                     84   untrack a_17_5 
              #                     83   untrack a_17_3 
              #                     34   ret 5_0 
              #                    load from ra_ifElseIf_0 in mem
    ld      ra,24(sp)
              #                    load from s0_ifElseIf_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     41   label branch_short_circuit_p_false_107: 
.branch_short_circuit_p_false_107:
              #                     38   (nop) 
              #                          jump label: branch_short_circuit_c_false_107 
    j       .branch_short_circuit_c_false_107
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     40   label branch_short_circuit_c_false_107: 
.branch_short_circuit_c_false_107:
              #                     46   (nop) 
              #                          jump label: branch_short_circuit_p_true_121 
    j       .branch_short_circuit_p_true_121
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     51   label branch_short_circuit_p_true_121: 
.branch_short_circuit_p_true_121:
              #                     48   (nop) 
              #                          jump label: branch_short_circuit_c_false_121 
    j       .branch_short_circuit_c_false_121
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     49   label branch_short_circuit_c_true_121: 
.branch_short_circuit_c_true_121:
              #                     88   untrack a_17_3 
              #                     32   (nop) 
              #                     82   a_17_5 = i32 25_0 
              #                    occupy a0 with a_17_5
    li      a0, 25
              #                    free a0
              #                          jump label: gather_11 
    j       .gather_11
              #                    regtab     a0:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     66   label gather_11: 
.gather_11:
              #                          jump label: gather_13 
    j       .gather_13
              #                    regtab     a0:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     67   label gather_13: 
.gather_13:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_17_5, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
              #                     28   ret a_17_5 
              #                    load from ra_ifElseIf_0 in mem
    ld      ra,24(sp)
              #                    load from s0_ifElseIf_0 in mem
    ld      s0,16(sp)
              #                    occupy a0 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with a_17_5
              #                    occupy a0 with a_17_5
              #                    load from a_17_5 in mem


    lw      a0,4(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     50   label branch_short_circuit_c_false_121: 
.branch_short_circuit_c_false_121:
              #                     56   (nop) 
              #                          jump label: branch_short_circuit_p_true_133 
    j       .branch_short_circuit_p_true_133
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     61   label branch_short_circuit_p_true_133: 
.branch_short_circuit_p_true_133:
              #                     58   (nop) 
              #                          jump label: branch_short_circuit_c_false_133 
    j       .branch_short_circuit_c_false_133
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     59   label branch_short_circuit_c_true_133: 
.branch_short_circuit_c_true_133:
              #                     30   (nop) 
              #                     31   (nop) 
              #                     81   a_17_3 = i32 20_0 
              #                    occupy a0 with a_17_3
    li      a0, 20
              #                    free a0
              #                          jump label: gather_9 
    j       .gather_9
              #                    regtab     a0:Freed { symidx: a_17_3, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                     65   label gather_9: 
.gather_9:
              #                     80   a_17_5 = i32 a_17_3 
              #                    occupy a0 with a_17_3
              #                    occupy a1 with a_17_5
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                     87   untrack a_17_3 
              #                    occupy a0 with a_17_3
              #                    release a0 with a_17_3
              #                          jump label: gather_11 
              #                    occupy a1 with a_17_5
              #                    store to a_17_5 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with a_17_5
              #                    occupy a0 with a_17_5
              #                    load from a_17_5 in mem


    lw      a0,4(sp)
    j       .gather_11
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     60   label branch_short_circuit_c_false_133: 
.branch_short_circuit_c_false_133:
              #                     25   (nop) 
              #                     26   (nop) 
              #                     79   a_17_3 = i32 -5_0 
              #                    occupy a0 with a_17_3
    li      a0, -5
              #                    free a0
              #                          jump label: gather_9 
    j       .gather_9
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_8_ret_of_ifElseIf _s36 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     70   alloc i32 [temp_8_ret_of_ifElseIf_36] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     71   temp_8_ret_of_ifElseIf_36_0 =  Call i32 ifElseIf_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ifElseIf
              #                     72    Call void putint_0(temp_8_ret_of_ifElseIf_36_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_8_ret_of_ifElseIf_36_0
              #                    store to temp_8_ret_of_ifElseIf_36_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_8_ret_of_ifElseIf_36_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_8_ret_of_ifElseIf_36_0_0
              #                    load from temp_8_ret_of_ifElseIf_36_0 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    putint
              #                     89   untrack temp_8_ret_of_ifElseIf_36_0 
              #                     74   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
