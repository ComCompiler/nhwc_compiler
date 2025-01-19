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
              #                     20   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|i _s19 _i1:4 at 28|temp_0_value_from_ptr _s19 _i0:4 at 24|temp_2_arithop _s24 _i0:4 at 20|temp_3_value_from_ptr _s24 _i0:4 at 16|temp_4_arithop _s24 _i0:4 at 12|temp_6_arithop _s24 _i0:4 at 8|temp_7_cmp _s22 _i0:1 at 7|none:7 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                     57   k_0_1 = chi k_0_0:20 
              #                     22   alloc i32 [i_19] 
              #                     25   alloc i32 [temp_0_value_from_ptr_19] 
              #                     30   alloc i32 [temp_1_value_from_ptr_19] 
              #                     34   alloc i32 [temp_2_arithop_24] 
              #                     37   alloc i32 [temp_3_value_from_ptr_24] 
              #                     40   alloc i32 [temp_4_arithop_24] 
              #                     42   alloc i32 [temp_5_value_from_ptr_24] 
              #                     45   alloc i32 [temp_6_arithop_24] 
              #                     49   alloc i1 [temp_7_cmp_22] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     21   (nop) 
              #                     23   store 1_0:i32 *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with 1_0
    li      a1, 1
    sw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                     24   k_0_2 = chi k_0_1:23 
              #                     61   i_19_1 = i32 0_0 
              #                    occupy a2 with i_19_1
    li      a2, 0
              #                    free a2
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a2:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:16,released_fpr_count:24
              #                     51   label while.head_23: 
.while.head_23:
              #                     50   temp_7_cmp_22_0 = icmp i32 Sle i_19_1, 9_0 
              #                    occupy a2 with i_19_1
              #                    occupy a0 with 9_0
    li      a0, 9
              #                    occupy a1 with temp_7_cmp_22_0
    slt     a1,a0,a2
    xori    a1,a1,1
              #                    free a2
              #                    free a0
              #                    free a1
              #                     54   br i1 temp_7_cmp_22_0, label while.body_23, label while.exit_23 
              #                    occupy a1 with temp_7_cmp_22_0
              #                    free a1
              #                    occupy a1 with temp_7_cmp_22_0
    bnez    a1, .while.body_23
              #                    free a1
    j       .while.exit_23
              #                    regtab     a1:Freed { symidx: temp_7_cmp_22_0, tracked: true } |     a2:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     52   label while.body_23: 
.while.body_23:
              #                     35   temp_2_arithop_24_0 = Add i32 i_19_1, 1_0 
              #                    occupy a2 with i_19_1
              #                    occupy a0 with 1_0
    li      a0, 1
              #                    occupy a3 with temp_2_arithop_24_0
    ADDW    a3,a2,a0
              #                    free a2
              #                    free a0
              #                    free a3
              #                     36   (nop) 
              #                     38   temp_3_value_from_ptr_24_0 = load *k_0:ptr->i32 
              #                    occupy a4 with *k_0
              #                       load label k as ptr to reg
    la      a4, k
              #                    occupy reg a4 with *k_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                     39   mu k_0_3:38 
              #                     41   (nop) 
              #                     43   (nop) 
              #                     44   mu k_0_3:43 
              #                     46   temp_6_arithop_24_0 = Mul i32 temp_3_value_from_ptr_24_0, 2_0 
              #                    occupy a6 with temp_6_arithop_24_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
    slliw a6,a5,1
              #                    free a5
              #                    free a6
              #                     47   store temp_6_arithop_24_0:i32 *k_0:ptr->i32 
              #                    occupy a7 with *k_0
              #                       load label k as ptr to reg
    la      a7, k
              #                    occupy reg a7 with *k_0
              #                    occupy a6 with temp_6_arithop_24_0
    sw      a6,0(a7)
              #                    free a6
              #                    free a7
              #                     48   k_0_4 = chi k_0_3:47 
              #                     62   i_19_1 = i32 temp_2_arithop_24_0 
              #                    occupy a3 with temp_2_arithop_24_0
              #                    occupy a2 with i_19_1
    mv      a2, a3
              #                    free a3
              #                    free a2
              #                          jump label: while.head_23 
              #                    occupy a6 with temp_6_arithop_24_0
              #                    store to temp_6_arithop_24_0 in mem offset legal
    sw      a6,8(sp)
              #                    release a6 with temp_6_arithop_24_0
              #                    occupy a1 with temp_7_cmp_22_0
              #                    store to temp_7_cmp_22_0 in mem offset legal
    sb      a1,7(sp)
              #                    release a1 with temp_7_cmp_22_0
              #                    occupy a3 with temp_2_arithop_24_0
              #                    store to temp_2_arithop_24_0 in mem offset legal
    sw      a3,20(sp)
              #                    release a3 with temp_2_arithop_24_0
              #                    occupy a5 with temp_3_value_from_ptr_24_0
              #                    store to temp_3_value_from_ptr_24_0 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_3_value_from_ptr_24_0
    j       .while.head_23
              #                    regtab     a1:Freed { symidx: temp_7_cmp_22_0, tracked: true } |     a2:Freed { symidx: i_19_1, tracked: true } |  released_gpr_count:14,released_fpr_count:24
              #                     53   label while.exit_23: 
.while.exit_23:
              #                     63   untrack i_19_1 
              #                    occupy a2 with i_19_1
              #                    release a2 with i_19_1
              #                     26   temp_0_value_from_ptr_19_0 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a2 with temp_0_value_from_ptr_19_0
    lw      a2,0(a0)
              #                    free a2
              #                    free a0
              #                     27   mu k_0_3:26 
              #                     28    Call void putint_0(temp_0_value_from_ptr_19_0) 
              #                    saved register dumping to mem
              #                    occupy a1 with temp_7_cmp_22_0
              #                    store to temp_7_cmp_22_0 in mem offset legal
    sb      a1,7(sp)
              #                    release a1 with temp_7_cmp_22_0
              #                    occupy a2 with temp_0_value_from_ptr_19_0
              #                    store to temp_0_value_from_ptr_19_0 in mem offset legal
    sw      a2,24(sp)
              #                    release a2 with temp_0_value_from_ptr_19_0
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_0_value_from_ptr_19_0_0
              #                    load from temp_0_value_from_ptr_19_0 in mem


    lw      a0,24(sp)
              #                    arg load ended


    call    putint
              #                     31   (nop) 
              #                     32   mu k_0_3:31 
              #                     58   mu k_0_3:33 
              #                     33   ret temp_0_value_from_ptr_19_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with temp_0_value_from_ptr_19_0
              #                    load from temp_0_value_from_ptr_19_0 in mem


    lw      a0,24(sp)
    addi    sp,sp,48
              #                    free a0
    ret
.section ___var
    .data
    .align 4
    .globl n
              #                     18   global i32 n_0 
    .type n,@object
n:
    .word 10
    .align 4
    .globl k
              #                     15   global i32 k_0 
    .type k,@object
k:
    .word 0
