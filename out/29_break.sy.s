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
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 32|s0_main:8 at 24|i:4 at 20|sum:4 at 16|temp_0_cmp:1 at 15|temp_1_cmp:1 at 14|none:2 at 12|temp_2_arithop:4 at 8|temp_3_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_main_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 i_17 
              #                          alloc i32 sum_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i32 temp_2_arithop_24 
              #                          alloc i32 temp_3_arithop_24 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var i_17:i32 
              #                          i_17 = i32 0_0 
              #                    occupy a0 with i_17
    li      a0, 0
              #                    free a0
              #                          new_var sum_17:i32 
              #                          sum_17 = i32 0_0 
              #                    occupy a1 with sum_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Slt i_17, 100_0 
              #                    occupy a0 with i_17
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_0_cmp_22
    slt     a3,a0,a2
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a3 with temp_0_cmp_22
              #                    free a3
              #                    occupy a3 with temp_0_cmp_22
    bnez    a3, .while.body_23
              #                    free a3
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Eq i_17, 50_0 
              #                    occupy a0 with i_17
              #                    occupy a2 with 50_0
    li      a2, 50
              #                    occupy a4 with temp_1_cmp_25
    xor     a4,a0,a2
    seqz    a4, a4
              #                    free a0
              #                    free a2
              #                    free a4
              #                          br i1 temp_1_cmp_25, label branch_true_26, label branch_false_26 
              #                    occupy a4 with temp_1_cmp_25
              #                    free a4
              #                    occupy a4 with temp_1_cmp_25
    bnez    a4, .branch_true_26
              #                    free a4
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label branch_true_26: 
.branch_true_26:
              #                          jump label: while.exit_23 
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_1_cmp_25
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                          ret sum_17 
              #                    load from ra_main_0 in mem
    ld      ra,32(sp)
              #                    load from s0_main_0 in mem
    ld      s0,24(sp)
              #                    store to sum_17 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with sum_17
              #                    store to i_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with i_17
              #                    occupy a0 with sum_17
              #                    load from sum_17 in mem


    lw      a0,16(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label branch_false_26: 
.branch_false_26:
              #                    regtab     a0:Freed { symidx: i_17, tracked: true } |     a1:Freed { symidx: sum_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_2_arithop_24:i32 
              #                          temp_2_arithop_24 = Add i32 sum_17, i_17 
              #                    occupy a1 with sum_17
              #                    occupy a0 with i_17
              #                    occupy a2 with temp_2_arithop_24
    add     a2,a1,a0
              #                    free a1
              #                    free a0
              #                    free a2
              #                          sum_17 = i32 temp_2_arithop_24 
              #                    occupy a2 with temp_2_arithop_24
              #                    occupy a1 with sum_17
    mv      a1, a2
              #                    free a2
              #                    free a1
              #                          new_var temp_3_arithop_24:i32 
              #                          temp_3_arithop_24 = Add i32 i_17, 1_0 
              #                    occupy a0 with i_17
              #                    occupy a5 with 1_0
    li      a5, 1
              #                    occupy a6 with temp_3_arithop_24
    add     a6,a0,a5
              #                    free a0
              #                    free a5
              #                    free a6
              #                          i_17 = i32 temp_3_arithop_24 
              #                    occupy a6 with temp_3_arithop_24
              #                    occupy a0 with i_17
    mv      a0, a6
              #                    free a6
              #                    free a0
              #                          jump label: while.head_23 
              #                    store to temp_0_cmp_22 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_0_cmp_22
              #                    store to temp_2_arithop_24 in mem offset legal
    sw      a2,8(sp)
              #                    release a2 with temp_2_arithop_24
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_1_cmp_25
              #                    store to temp_3_arithop_24 in mem offset legal
    sw      a6,4(sp)
              #                    release a6 with temp_3_arithop_24
    j       .while.head_23
