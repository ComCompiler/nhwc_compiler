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
              #                     16   Define reverse_0 "n_16_0," -> reverse_ret_0 
    .globl reverse
    .type reverse,@function
reverse:
              #                    mem layout:|ra_reverse:8 at 40|s0_reverse:8 at 32|n _s16 _i0:4 at 28|next _s18 _i0:4 at 24|next _s18 _i2:4 at 20|temp_0_ret_of_getint _s25 _i0:4 at 16|temp_1_arithop _s25 _i0:4 at 12|temp_2_ret_of_getint _s22 _i0:4 at 8|temp_3_cmp _s20 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_reverse_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_reverse_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     18   alloc i32 [next_18] 
              #                     20   alloc i32 [temp_0_ret_of_getint_25] 
              #                     23   alloc i32 [temp_1_arithop_25] 
              #                     27   alloc i32 [temp_2_ret_of_getint_22] 
              #                     31   alloc i1 [temp_3_cmp_20] 
              #                    regtab     a0:Freed { symidx: n_16_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     19    
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: n_16_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L2_0: 
.L2_0:
              #                     32   temp_3_cmp_20_0 = icmp i32 Sle n_16_0, 1_0 
              #                    occupy a0 with n_16_0
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_3_cmp_20_0
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     35   br i1 temp_3_cmp_20_0, label branch_true_21, label branch_false_21 
              #                    occupy a2 with temp_3_cmp_20_0
              #                    free a2
              #                    occupy a2 with temp_3_cmp_20_0
    bnez    a2, .branch_true_21
              #                    free a2
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: n_16_0, tracked: true } |     a2:Freed { symidx: temp_3_cmp_20_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     33   label branch_true_21: 
.branch_true_21:
              #                     50   untrack temp_3_cmp_20_0 
              #                    occupy a2 with temp_3_cmp_20_0
              #                    release a2 with temp_3_cmp_20_0
              #                     49   untrack temp_0_ret_of_getint_25_0 
              #                     48   untrack temp_1_arithop_25_0 
              #                     47   untrack n_16_0 
              #                    occupy a0 with n_16_0
              #                    release a0 with n_16_0
              #                     28   temp_2_ret_of_getint_22_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     29   (nop) 
              #                     30    Call void putint_0(temp_2_ret_of_getint_22_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_2_ret_of_getint_22_0
              #                    store to temp_2_ret_of_getint_22_0 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_2_ret_of_getint_22_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_2_ret_of_getint_22_0_0
              #                    load from temp_2_ret_of_getint_22_0 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    putint
              #                     53   untrack temp_2_ret_of_getint_22_0 
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     36   label gather_7: 
.gather_7:
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     38   label exit_2: 
.exit_2:
              #                     37   ret 
              #                    load from ra_reverse_0 in mem
    ld      ra,40(sp)
              #                    load from s0_reverse_0 in mem
    ld      s0,32(sp)
    addi    sp,sp,48
    ret
              #                    regtab     a0:Freed { symidx: n_16_0, tracked: true } |     a2:Freed { symidx: temp_3_cmp_20_0, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     34   label branch_false_21: 
.branch_false_21:
              #                     52   untrack temp_3_cmp_20_0 
              #                    occupy a2 with temp_3_cmp_20_0
              #                    release a2 with temp_3_cmp_20_0
              #                     51   untrack temp_2_ret_of_getint_22_0 
              #                     21   temp_0_ret_of_getint_25_0 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    occupy a0 with n_16_0
              #                    store to n_16_0 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with n_16_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                     22   (nop) 
              #                     24   temp_1_arithop_25_0 = Sub i32 n_16_0, 1_0 
              #                    occupy a1 with n_16_0
              #                    load from n_16_0 in mem


    lw      a1,28(sp)
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a3 with temp_1_arithop_25_0
              #                    regtab:    a0:Freed { symidx: temp_0_ret_of_getint_25_0, tracked: true } |     a1:Occupied { symidx: n_16_0, tracked: true, occupy_count: 1 } |     a2:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a3:Occupied { symidx: temp_1_arithop_25_0, tracked: true, occupy_count: 1 } |  released_gpr_count:14,released_fpr_count:24


    subw    a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     55   untrack n_16_0 
              #                    occupy a1 with n_16_0
              #                    release a1 with n_16_0
              #                     25    Call void reverse_0(temp_1_arithop_25_0) 
              #                    saved register dumping to mem
              #                    occupy a0 with temp_0_ret_of_getint_25_0
              #                    store to temp_0_ret_of_getint_25_0 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_0_ret_of_getint_25_0
              #                    occupy a3 with temp_1_arithop_25_0
              #                    store to temp_1_arithop_25_0 in mem offset legal
    sw      a3,12(sp)
              #                    release a3 with temp_1_arithop_25_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_1_arithop_25_0_0
              #                    load from temp_1_arithop_25_0 in mem


    lw      a0,12(sp)
              #                    arg load ended


    call    reverse
              #                     54   untrack temp_1_arithop_25_0 
              #                     26    Call void putint_0(temp_0_ret_of_getint_25_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_ret_of_getint_25_0_0
              #                    load from temp_0_ret_of_getint_25_0 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                     56   untrack temp_0_ret_of_getint_25_0 
              #                          jump label: gather_7 
    j       .gather_7
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     40   alloc i32 [i_30] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     39   (nop) 
              #                     41    Call void reverse_0(200_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_200_0_0
    li      a0, 200
              #                    arg load ended


    call    reverse
              #                     43   ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,16
              #                    free a0
    ret
