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
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|a _s17 _i0:4 at 20|b _s17 _i0:4 at 16|c _s17 _i0:4 at 12|d _s17 _i0:4 at 8|result _s17 _i0:4 at 4|result _s17 _i3:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     17   alloc i32 [a_17] 
              #                     19   alloc i32 [b_17] 
              #                     21   alloc i32 [c_17] 
              #                     23   alloc i32 [d_17] 
              #                     25   alloc i32 [result_17] 
              #                     37   alloc i32 [temp_0_arithop_28] 
              #                     39   alloc i1 [temp_1_cmp_28] 
              #                     41   alloc i32 [temp_2_arithop_28] 
              #                     43   alloc i1 [temp_3_cmp_28] 
              #                     45   alloc i32 [temp_4_arithop_28] 
              #                     47   alloc i32 [temp_5_arithop_28] 
              #                     49   alloc i1 [temp_6_cmp_28] 
              #                     60   alloc i32 [temp_7_arithop_32] 
              #                     62   alloc i32 [temp_8_arithop_32] 
              #                     64   alloc i1 [temp_9_cmp_32] 
              #                     66   alloc i32 [temp_10_arithop_32] 
              #                     68   alloc i1 [temp_11_cmp_32] 
              #                     70   alloc i32 [temp_12_arithop_32] 
              #                     72   alloc i32 [temp_13_arithop_32] 
              #                     74   alloc i1 [temp_14_cmp_32] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     18    
              #                     20    
              #                     22    
              #                     24    
              #                     26    
              #                     27   (nop) 
              #                     28   (nop) 
              #                     29   (nop) 
              #                     30   (nop) 
              #                     31   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     38   (nop) 
              #                     40   (nop) 
              #                          jump label: branch_short_circuit_c_true_128 
    j       .branch_short_circuit_c_true_128
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     51   label branch_short_circuit_c_true_128: 
.branch_short_circuit_c_true_128:
              #                     36    Call void putint_0(2_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_2_0_0
    li      a0, 2
              #                    arg load ended


    call    putint
              #                          jump label: branch_short_circuit_c_false_128 
    j       .branch_short_circuit_c_false_128
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     52   label branch_short_circuit_c_false_128: 
.branch_short_circuit_c_false_128:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     61   (nop) 
              #                     63   (nop) 
              #                     65   (nop) 
              #                          jump label: branch_short_circuit_p_false_147 
    j       .branch_short_circuit_p_false_147
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     76   label branch_short_circuit_c_true_156: 
.branch_short_circuit_c_true_156:
              #                     34   (nop) 
              #                     35    Call void putint_0(4_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_4_0_0
    li      a0, 4
              #                    arg load ended


    call    putint
              #                          jump label: branch_short_circuit_c_false_156 
    j       .branch_short_circuit_c_false_156
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     77   label branch_short_circuit_c_false_156: 
.branch_short_circuit_c_false_156:
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L3_0: 
.L3_0:
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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     81   label branch_short_circuit_p_false_147: 
.branch_short_circuit_p_false_147:
              #                     67   (nop) 
              #                     69   (nop) 
              #                          jump label: branch_short_circuit_c_false_156 
    j       .branch_short_circuit_c_false_156
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     78   label branch_short_circuit_p_true_156: 
.branch_short_circuit_p_true_156:
              #                     71   (nop) 
              #                     73   (nop) 
              #                     75   (nop) 
              #                          jump label: branch_short_circuit_c_true_156 
    j       .branch_short_circuit_c_true_156
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     56   label branch_short_circuit_p_false_119: 
.branch_short_circuit_p_false_119:
              #                     42   (nop) 
              #                     44   (nop) 
              #                          jump label: branch_short_circuit_c_false_128 
    j       .branch_short_circuit_c_false_128
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     53   label branch_short_circuit_p_true_128: 
.branch_short_circuit_p_true_128:
              #                     46   (nop) 
              #                     48   (nop) 
              #                     50   (nop) 
              #                          jump label: branch_short_circuit_c_false_128 
    j       .branch_short_circuit_c_false_128
