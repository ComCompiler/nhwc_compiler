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
              #                          Define if_if_Else_0 [] -> if_if_Else_ret_0 
    .globl if_if_Else
    .type if_if_Else,@function
if_if_Else:
              #                    mem layout:|ra_if_if_Else:8 at 24|s0_if_if_Else:8 at 16|a:4 at 12|b:4 at 8|temp_0_cmp:1 at 7|temp_1_cmp:1 at 6|none:2 at 4|temp_2_arithop:4 at 0
    addi    sp,sp,-32
              #                    store to ra_if_if_Else_0 in mem offset legal
    sd      ra,24(sp)
              #                    store to s0_if_if_Else_0 in mem offset legal
    sd      s0,16(sp)
    addi    s0,sp,32
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i1 temp_1_cmp_25 
              #                          alloc i32 temp_2_arithop_22 
              #                    regtab 
              #                          label L1_0: 
.L1_0:
              #                          new_var a_17:i32 
              #                          a_17 = i32 5_0 
              #                    occupy a0 with a_17
    li      a0, 5
              #                    free a0
              #                          new_var b_17:i32 
              #                          b_17 = i32 10_0 
              #                    occupy a1 with b_17
    li      a1, 10
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
              #                          temp_1_cmp_25 = icmp i32 Eq b_17, 10_0 
              #                    occupy a1 with b_17
              #                    occupy a2 with 10_0
    li      a2, 10
              #                    occupy a4 with temp_1_cmp_25
    xor     a4,a1,a2
    seqz    a4, a4
              #                    free a1
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
              #                          a_17 = i32 25_0 
              #                    occupy a0 with a_17
    li      a0, 25
              #                    free a0
              #                          jump label: branch_false_26 
    j       .branch_false_26
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_1_cmp_25, tracked: true } | 
              #                          label branch_false_26: 
.branch_false_26:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label branch_false_23: 
.branch_false_23:
              #                          new_var temp_2_arithop_22:i32 
              #                          temp_2_arithop_22 = Add i32 a_17, 15_0 
              #                    occupy a0 with a_17
              #                    occupy a2 with 15_0
    li      a2, 15
              #                    occupy a4 with temp_2_arithop_22
    add     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                          a_17 = i32 temp_2_arithop_22 
              #                    occupy a4 with temp_2_arithop_22
              #                    occupy a0 with a_17
    mv      a0, a4
              #                    free a4
              #                    free a0
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_2_arithop_22, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_2_arithop_22, tracked: true } | 
              #                          label L4_0: 
.L4_0:
              #                          ret a_17 
              #                    load from ra_if_if_Else_0 in mem
    ld      ra,24(sp)
              #                    load from s0_if_if_Else_0 in mem
    ld      s0,16(sp)
              #                    store to a_17 in mem offset legal
    sw      a0,12(sp)
              #                    release a0 with a_17
              #                    occupy a0 with a_17
              #                    load from a_17 in mem


    lw      a0,12(sp)
    addi    sp,sp,32
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: b_17, tracked: true } |     a3:Freed { symidx: temp_0_cmp_22, tracked: true } |     a4:Freed { symidx: temp_2_arithop_22, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_3_ret_of_if_if_Else:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 temp_3_ret_of_if_if_Else_31 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_3_ret_of_if_if_Else_31:i32 
              #                          temp_3_ret_of_if_if_Else_31 =  Call i32 if_if_Else_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    if_if_Else
              #                    store to temp_3_ret_of_if_if_Else_31 in mem offset legal
    sw      a0,4(sp)
              #                          ret temp_3_ret_of_if_if_Else_31 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    store to temp_3_ret_of_if_if_Else_31 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_3_ret_of_if_if_Else_31
              #                    occupy a0 with temp_3_ret_of_if_if_Else_31
              #                    load from temp_3_ret_of_if_if_Else_31 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
