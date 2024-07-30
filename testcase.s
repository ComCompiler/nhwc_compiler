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
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|sum:4 at 20|i:4 at 16|temp_0_arithop:4 at 12|temp_1_arithop:4 at 8|temp_2_cmp:1 at 7|none:7 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                     18   alloc i32 sum_17 
              #                     20   alloc i32 i_17 
              #                     23   alloc i32 temp_0_arithop_22 
              #                     27   alloc i32 temp_1_arithop_22 
              #                     31   alloc i1 temp_2_cmp_20 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
    nop
              #                     19   (nop) 
    nop
              #                     42   sum_17 = i32 0_0 
              #                    occupy a0 with sum_17
    li      a0, 0
              #                    free a0
              #                     43   i_17 = i32 0_0 
              #                    occupy a1 with i_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_21 
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |  released_gpr_count:17,released_fpr_count:24
              #                     34   label while.head_21: 
.while.head_21:
              #                     32   new_var temp_2_cmp_20:i1 
              #                     33   temp_2_cmp_20 = icmp i32 Slt i_17, 10_0 
              #                    occupy a1 with i_17
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a3 with temp_2_cmp_20
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                     37   br i1 temp_2_cmp_20, label while.body_21, label while.exit_21 
              #                    occupy a3 with temp_2_cmp_20
              #                    free a3
              #                    occupy a3 with temp_2_cmp_20
    bnez    a3, .while.body_21
              #                    free a3
    j       .while.exit_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a3:Freed { symidx: temp_2_cmp_20, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     35   label while.body_21: 
.while.body_21:
              #                     24   new_var temp_0_arithop_22:i32 
              #                     25   temp_0_arithop_22 = Add i32 sum_17, i_17 
              #                    occupy a0 with sum_17
              #                    occupy a1 with i_17
              #                    occupy a2 with temp_0_arithop_22
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                     26   sum_17 = i32 temp_0_arithop_22 
              #                    occupy a2 with temp_0_arithop_22
              #                    occupy a0 with sum_17
    mv      a0, a2
              #                    free a2
              #                    free a0
              #                     28   new_var temp_1_arithop_22:i32 
              #                     29   temp_1_arithop_22 = Add i32 i_17, 1_0 
              #                    occupy a1 with i_17
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_1_arithop_22
    add     a5,a1,a4
              #                    free a1
              #                    free a4
              #                    free a5
              #                     30   i_17 = i32 temp_1_arithop_22 
              #                    occupy a5 with temp_1_arithop_22
              #                    occupy a1 with i_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: while.head_21 
              #                    occupy a5 with temp_1_arithop_22
              #                    store to temp_1_arithop_22 in mem offset legal
    sw      a5,8(sp)
              #                    release a5 with temp_1_arithop_22
              #                    occupy a2 with temp_0_arithop_22
              #                    store to temp_0_arithop_22 in mem offset legal
    sw      a2,12(sp)
              #                    release a2 with temp_0_arithop_22
              #                    occupy a3 with temp_2_cmp_20
              #                    store to temp_2_cmp_20 in mem offset legal
    sb      a3,7(sp)
              #                    release a3 with temp_2_cmp_20
    j       .while.head_21
              #                    regtab     a0:Freed { symidx: sum_17, tracked: true } |     a1:Freed { symidx: i_17, tracked: true } |     a3:Freed { symidx: temp_2_cmp_20, tracked: true } |  released_gpr_count:15,released_fpr_count:24
              #                     36   label while.exit_21: 
.while.exit_21:
              #                     22   ret sum_17 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    occupy a0 with sum_17
              #                    store to sum_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with sum_17
              #                    occupy a0 with sum_17
              #                    load from sum_17 in mem


    lw      a0,20(sp)
    addi    sp,sp,40
              #                    free a0
    ret
