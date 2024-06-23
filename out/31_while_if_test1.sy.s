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
              #                          Define whileIf_0 [] -> whileIf_ret_0 
    .globl whileIf
    .type whileIf,@function
whileIf:
              #                    mem layout:|ra_whileIf:8 at 32|s0_whileIf:8 at 24|a:4 at 20|b:4 at 16|temp_0_cmp:1 at 15|temp_1_cmp:1 at 14|none:2 at 12|temp_2_arithop:4 at 8|temp_3_cmp:1 at 7|none:3 at 4|temp_4_arithop:4 at 0
    addi    sp,sp,-40
              #                    store to ra_whileIf_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_whileIf_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i32 temp_2_arithop_24 
              #                          alloc i1 temp_3_cmp_29 
              #                          alloc i32 temp_4_arithop_33 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 0_0 
              #                    occupy a0 with a_17
    li      a0, 0
              #                    free a0
              #                          new_var b_17:i32 
              #                          b_17 = i32 0_0 
              #                    occupy a1 with b_17
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Slt a_17, 100_0 
              #                    occupy a0 with a_17
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
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_1_cmp_25:i1 
              #                          temp_1_cmp_25 = icmp i32 Eq a_17, 5_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 5_0
    li      a2, 5
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
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label branch_true_26: 
.branch_true_26:
              #                          b_17 = i32 25_0 
              #                    occupy a1 with b_17
    li      a1, 25
              #                    free a1
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label branch_false_26: 
.branch_false_26:
              #                          new_var temp_3_cmp_29:i1 
              #                          temp_3_cmp_29 = icmp i32 Eq a_17, 10_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a5 with temp_3_cmp_29
    xor     a5,a0,a2
    seqz    a5, a5
              #                    free a0
              #                    free a2
              #                    free a5
              #                          br i1 temp_3_cmp_29, label branch_true_30, label branch_false_30 
              #                    occupy a5 with temp_3_cmp_29
              #                    free a5
              #                    occupy a5 with temp_3_cmp_29
    bnez    a5, .branch_true_30
              #                    free a5
    j       .branch_false_30
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_cmp_29, tracked: true } | 
              #                          label branch_true_30: 
.branch_true_30:
              #                          b_17 = i32 42_0 
              #                    occupy a1 with b_17
    li      a1, 42
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_cmp_29, tracked: true } | 
              #                          label branch_false_30: 
.branch_false_30:
              #                          new_var temp_4_arithop_33:i32 
              #                          temp_4_arithop_33 = Mul i32 a_17, 2_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 2_0
    li      a2, 2
              #                    occupy a6 with temp_4_arithop_33
    mul     a6,a0,a2
              #                    free a0
              #                    free a2
              #                    free a6
              #                          b_17 = i32 temp_4_arithop_33 
              #                    occupy a6 with temp_4_arithop_33
              #                    occupy a1 with b_17
    mv      a1, a6
              #                    free a6
              #                    free a1
              #                          jump label: L2_0 
              #                    store to temp_4_arithop_33 in mem offset legal
    sw      a6,0(sp)
              #                    release a6 with temp_4_arithop_33
    j       .L2_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } |     a5:Freed { symidx: temp_3_cmp_29, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_2_arithop_24:i32 
              #                          temp_2_arithop_24 = Add i32 a_17, 1_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 1_0
    li      a2, 1
              #                    occupy a5 with temp_2_arithop_24
    add     a5,a0,a2
              #                    free a0
              #                    free a2
              #                    free a5
              #                          a_17 = i32 temp_2_arithop_24 
              #                    occupy a5 with temp_2_arithop_24
              #                    occupy a0 with a_17
    mv      a0, a5
              #                    free a5
              #                    free a0
              #                          jump label: while.head_23 
              #                    store to temp_1_cmp_25 in mem offset legal
    sb      a4,14(sp)
              #                    release a4 with temp_1_cmp_25
              #                    store to temp_0_cmp_22 in mem offset legal
    sb      a3,15(sp)
              #                    release a3 with temp_0_cmp_22
              #                    store to temp_2_arithop_24 in mem offset legal
    sw      a5,8(sp)
              #                    release a5 with temp_2_arithop_24
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                          ret b_17 
              #                    load from ra_whileIf_0 in mem
    ld      ra,32(sp)
              #                    load from s0_whileIf_0 in mem
    ld      s0,24(sp)
              #                    store to b_17 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with b_17
              #                    store to a_17 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with a_17
              #                    occupy a0 with b_17
              #                    load from b_17 in mem


    lw      a0,16(sp)
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_5_ret_of_whileIf:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_5_ret_of_whileIf_38 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_5_ret_of_whileIf_38:i32 
              #                          temp_5_ret_of_whileIf_38 =  Call i32 whileIf_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    whileIf
              #                    store to temp_5_ret_of_whileIf_38 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_5_ret_of_whileIf_38 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_5_ret_of_whileIf_38 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_5_ret_of_whileIf_38
              #                    occupy a0 with temp_5_ret_of_whileIf_38
              #                    load from temp_5_ret_of_whileIf_38 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
