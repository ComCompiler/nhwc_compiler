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
              #                     18   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|temp_0_ret_of_getint _s19 _i0:4 at 28|temp_1_ret_of_getint _s19 _i0:4 at 24|c _s19 _i0:4 at 20|c _s19 _i2:4 at 16|temp_2_value_from_ptr _s23 _i0:4 at 12|temp_3_value_from_ptr _s23 _i0:4 at 8|temp_4_cmp _s23 _i0:1 at 7|temp_6_cmp _s23 _i0:1 at 6|none:6 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     55   b_0_1 = chi b_0_0:18 
              #                     56   a_0_1 = chi a_0_0:18 
              #                     19   alloc i32 [temp_0_ret_of_getint_19] 
              #                     23   alloc i32 [temp_1_ret_of_getint_19] 
              #                     27   alloc i32 [c_19] 
              #                     33   alloc i32 [temp_2_value_from_ptr_23] 
              #                     36   alloc i32 [temp_3_value_from_ptr_23] 
              #                     39   alloc i1 [temp_4_cmp_23] 
              #                     41   alloc i32 [temp_5_value_from_ptr_23] 
              #                     44   alloc i1 [temp_6_cmp_23] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     20   temp_0_ret_of_getint_19_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     21   store temp_0_ret_of_getint_19_0:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_0_ret_of_getint_19_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     63   untrack temp_0_ret_of_getint_19_0 
              #                    occupy a0 with temp_0_ret_of_getint_19_0
              #                    release a0 with temp_0_ret_of_getint_19_0
              #                     22   a_0_2 = chi a_0_1:21 
              #                     24   temp_1_ret_of_getint_19_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     25   store temp_1_ret_of_getint_19_0:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with temp_1_ret_of_getint_19_0
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                     62   untrack temp_1_ret_of_getint_19_0 
              #                    occupy a0 with temp_1_ret_of_getint_19_0
              #                    release a0 with temp_1_ret_of_getint_19_0
              #                     26   b_0_2 = chi b_0_1:25 
              #                     28    
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     34   temp_2_value_from_ptr_23_0 = load *b_0:ptr->i32 
              #                    occupy a0 with *b_0
              #                       load label b as ptr to reg
    la      a0, b
              #                    occupy reg a0 with *b_0
              #                    occupy a1 with temp_2_value_from_ptr_23_0
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     35   mu b_0_2:34 
              #                     37   temp_3_value_from_ptr_23_0 = load *a_0:ptr->i32 
              #                    occupy a2 with *a_0
              #                       load label a as ptr to reg
    la      a2, a
              #                    occupy reg a2 with *a_0
              #                    occupy a3 with temp_3_value_from_ptr_23_0
    lw      a3,0(a2)
              #                    free a3
              #                    free a2
              #                     38   mu a_0_2:37 
              #                     40   temp_4_cmp_23_0 = icmp i32 Eq temp_3_value_from_ptr_23_0, temp_2_value_from_ptr_23_0 
              #                    occupy a3 with temp_3_value_from_ptr_23_0
              #                    occupy a1 with temp_2_value_from_ptr_23_0
              #                    occupy a4 with temp_4_cmp_23_0
    xor     a4,a3,a1
    seqz    a4, a4
              #                    free a3
              #                    free a1
              #                    free a4
              #                     64   untrack temp_2_value_from_ptr_23_0 
              #                    occupy a1 with temp_2_value_from_ptr_23_0
              #                    release a1 with temp_2_value_from_ptr_23_0
              #                     51   br i1 temp_4_cmp_23_0, label branch_short_circuit_p_true_93, label branch_short_circuit_c_false_93 
              #                    occupy a4 with temp_4_cmp_23_0
              #                    free a4
              #                    occupy a4 with temp_4_cmp_23_0
    bnez    a4, .branch_short_circuit_p_true_93
              #                    free a4
    j       .branch_short_circuit_c_false_93
              #                    regtab     a3:Freed { symidx: temp_3_value_from_ptr_23_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     48   label branch_short_circuit_p_true_93: 
.branch_short_circuit_p_true_93:
              #                     68   untrack temp_4_cmp_23_0 
              #                    occupy a4 with temp_4_cmp_23_0
              #                    release a4 with temp_4_cmp_23_0
              #                     42   (nop) 
              #                     43   mu a_0_2:42 
              #                     45   temp_6_cmp_23_0 = icmp i32 Ne temp_3_value_from_ptr_23_0, 3_0 
              #                    occupy a3 with temp_3_value_from_ptr_23_0
              #                    occupy a0 with 3_0
    li      a0, 3
              #                    occupy a1 with temp_6_cmp_23_0
    xor     a1,a3,a0
    snez    a1, a1
              #                    free a3
              #                    free a0
              #                    free a1
              #                     69   untrack temp_3_value_from_ptr_23_0 
              #                    occupy a3 with temp_3_value_from_ptr_23_0
              #                    release a3 with temp_3_value_from_ptr_23_0
              #                     50   br i1 temp_6_cmp_23_0, label branch_short_circuit_c_true_93, label branch_short_circuit_c_false_93 
              #                    occupy a1 with temp_6_cmp_23_0
              #                    free a1
              #                    occupy a1 with temp_6_cmp_23_0
    bnez    a1, .branch_short_circuit_c_true_93
              #                    free a1
              #                    occupy a3 with temp_3_value_from_ptr_23_0
              #                    load from temp_3_value_from_ptr_23_0 in mem


    lw      a3,8(sp)
              #                    occupy a4 with temp_4_cmp_23_0
              #                    load from temp_4_cmp_23_0 in mem


    lb      a4,7(sp)
              #                    occupy a1 with temp_6_cmp_23_0
              #                    store to temp_6_cmp_23_0 in mem offset legal
    sb      a1,6(sp)
              #                    release a1 with temp_6_cmp_23_0
    j       .branch_short_circuit_c_false_93
              #                    regtab     a1:Freed { symidx: temp_6_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     46   label branch_short_circuit_c_true_93: 
.branch_short_circuit_c_true_93:
              #                     70   untrack temp_6_cmp_23_0 
              #                    occupy a1 with temp_6_cmp_23_0
              #                    release a1 with temp_6_cmp_23_0
              #                     32   (nop) 
              #                     61   c_19_2 = i32 1_0 
              #                    occupy a0 with c_19_2
    li      a0, 1
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab     a0:Freed { symidx: c_19_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     52   label gather_7: 
.gather_7:
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: c_19_2, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     57   mu b_0_2:31 
              #                     58   mu a_0_2:31 
              #                     31   ret c_19_2 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with c_19_2
              #                    store to c_19_2 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with c_19_2
              #                    occupy a0 with c_19_2
              #                    load from c_19_2 in mem


    lw      a0,16(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_3_value_from_ptr_23_0, tracked: true } |     a4:Freed { symidx: temp_4_cmp_23_0, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     47   label branch_short_circuit_c_false_93: 
.branch_short_circuit_c_false_93:
              #                     71   untrack temp_6_cmp_23_0 
              #                     67   untrack temp_4_cmp_23_0 
              #                    occupy a4 with temp_4_cmp_23_0
              #                    release a4 with temp_4_cmp_23_0
              #                     66   untrack temp_3_value_from_ptr_23_0 
              #                    occupy a3 with temp_3_value_from_ptr_23_0
              #                    release a3 with temp_3_value_from_ptr_23_0
              #                     65   untrack temp_6_cmp_23_0 
              #                     29   (nop) 
              #                     60   c_19_2 = i32 0_0 
              #                    occupy a0 with c_19_2
    li      a0, 0
              #                    free a0
              #                          jump label: gather_7 
    j       .gather_7
.section ___var
    .data
    .align 4
    .globl b
              #                     16   global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                     15   global i32 a_0 
    .type a,@object
a:
    .word 0
