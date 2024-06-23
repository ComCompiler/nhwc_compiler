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
              #                          Define ifWhile_0 [] -> ifWhile_ret_0 
    .globl ifWhile
    .type ifWhile,@function
ifWhile:
              #                    mem layout:|ra_ifWhile:8 at 40|s0_ifWhile:8 at 32|a:4 at 28|b:4 at 24|temp_0_cmp:1 at 23|temp_1_cmp:1 at 22|none:2 at 20|temp_2_arithop:4 at 16|temp_3_arithop:4 at 12|temp_4_cmp:1 at 11|none:3 at 8|temp_5_arithop:4 at 4|temp_6_arithop:4 at 0
    addi    sp,sp,-48
              #                    store to ra_ifWhile_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_ifWhile_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i32 temp_2_arithop_27 
              #                          alloc i32 temp_3_arithop_24 
              #                          alloc i1 temp_4_cmp_30 
              #                          alloc i32 temp_5_arithop_32 
              #                          alloc i32 temp_6_arithop_32 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 0_0 
              #                    occupy a0 with a_17
    li      a0, 0
              #                    free a0
              #                          new_var b_17:i32 
              #                          b_17 = i32 3_0 
              #                    occupy a1 with b_17
    li      a1, 3
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Eq a_17, 5_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 5_0
    li      a2, 5
              #                    occupy a3 with temp_0_cmp_22
    xor     a3,a0,a2
    seqz    a3, a3
              #                    free a0
              #                    free a2
              #                    free a3
              #                          br i1 temp_0_cmp_22, label branch_true_23, label branch_false_23 
              #                    occupy a3 with temp_0_cmp_22
              #                    free a3
              #                    occupy a3 with temp_0_cmp_22
    bnez    a3, .branch_true_23
              #                    free a3
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label branch_true_23: 
.branch_true_23:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Eq b_17, 2_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a4 with temp_1_cmp_25
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
              #                    free a2
              #                    free a4
              #                          br i1 temp_1_cmp_25, label while.body_26, label while.exit_26 
              #                    occupy a4 with temp_1_cmp_25
              #                    free a4
              #                    occupy a4 with temp_1_cmp_25
    bnez    a4, .while.body_26
              #                    free a4
    j       .while.exit_26
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label while.body_26: 
.while.body_26:
              #                          new_var temp_2_arithop_27:i32 
              #                          temp_2_arithop_27 = Add i32 b_17, 2_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a5 with temp_2_arithop_27
    add     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          b_17 = i32 temp_2_arithop_27 
              #                    occupy a5 with temp_2_arithop_27
              #                    occupy a1 with b_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: branch_true_23 
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a4,22(sp)
              #                    release a4 with temp_1_cmp_25
              #                    store to temp_2_arithop_27 in mem offset legal
    sw      a5,16(sp)
              #                    release a5 with temp_2_arithop_27
    j       .branch_true_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label while.exit_26: 
.while.exit_26:
              #                          new_var temp_3_arithop_24:i32 
              #                          temp_3_arithop_24 = Add i32 b_17, 25_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 25_0
    li      a2, 25
              #                    occupy a5 with temp_3_arithop_24
    add     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          b_17 = i32 temp_3_arithop_24 
              #                    occupy a5 with temp_3_arithop_24
              #                    occupy a1 with b_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          jump label: while.exit_31 
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                          new_var temp_4_cmp_30:i1 
              #                          temp_4_cmp_30 = icmp i32 Slt a_17, 5_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 5_0
    li      a2, 5
              #                    occupy a4 with temp_4_cmp_30
    slt     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                          br i1 temp_4_cmp_30, label while.body_31, label while.exit_31 
              #                    occupy a4 with temp_4_cmp_30
              #                    free a4
              #                    occupy a4 with temp_4_cmp_30
    bnez    a4, .while.body_31
              #                    free a4
              #                    store to temp_4_cmp_30 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_4_cmp_30
              #                    occupy a4 with _anonymous_of_temp_1_cmp_25_0
              #                    load from temp_1_cmp_25 in mem
    lb      a4,22(sp)
              #                    occupy a5 with _anonymous_of_temp_3_arithop_24_0
              #                    load from temp_3_arithop_24 in mem


    lw      a5,12(sp)
    j       .while.exit_31
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_4_cmp_30, tracked: true } | 
              #                          label while.body_31: 
.while.body_31:
              #                          new_var temp_5_arithop_32:i32 
              #                          temp_5_arithop_32 = Mul i32 b_17, 2_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a5 with temp_5_arithop_32
    mul     a5,a1,a2
              #                    free a1
              #                    free a2
              #                    free a5
              #                          b_17 = i32 temp_5_arithop_32 
              #                    occupy a5 with temp_5_arithop_32
              #                    occupy a1 with b_17
    mv      a1, a5
              #                    free a5
              #                    free a1
              #                          new_var temp_6_arithop_32:i32 
              #                          temp_6_arithop_32 = Add i32 a_17, 1_0 
              #                    occupy a0 with a_17
              #                    occupy a6 with 1_0
    li      a6, 1
              #                    occupy a7 with temp_6_arithop_32
    add     a7,a0,a6
              #                    free a0
              #                    free a6
              #                    free a7
              #                          a_17 = i32 temp_6_arithop_32 
              #                    occupy a7 with temp_6_arithop_32
              #                    occupy a0 with a_17
    mv      a0, a7
              #                    free a7
              #                    free a0
              #                          jump label: branch_false_23 
              #                    store to temp_4_cmp_30 in mem offset legal
    sb      a4,11(sp)
              #                    release a4 with temp_4_cmp_30
              #                    store to temp_5_arithop_32 in mem offset legal
    sw      a5,4(sp)
              #                    release a5 with temp_5_arithop_32
              #                    store to temp_6_arithop_32 in mem offset legal
    sw      a7,0(sp)
              #                    release a7 with temp_6_arithop_32
    j       .branch_false_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_24, tracked: true } | 
              #                          label while.exit_31: 
.while.exit_31:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_24, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ret b_17 
              #                    load from ra_ifWhile_0 in mem
    ld      ra,40(sp)
              #                    load from s0_ifWhile_0 in mem
    ld      s0,32(sp)
              #                    store to b_17 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with b_17
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,24(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_arithop_24, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_7_ret_of_ifWhile:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_7_ret_of_ifWhile_37 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_7_ret_of_ifWhile_37:i32 
              #                          temp_7_ret_of_ifWhile_37 =  Call i32 ifWhile_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    ifWhile
              #                    store to temp_7_ret_of_ifWhile_37 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_7_ret_of_ifWhile_37 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_7_ret_of_ifWhile_37 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_7_ret_of_ifWhile_37
              #                    occupy a0 with temp_7_ret_of_ifWhile_37
              #                    load from temp_7_ret_of_ifWhile_37 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
