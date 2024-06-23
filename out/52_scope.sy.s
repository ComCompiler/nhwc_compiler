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
              #                          Define func_0 [] -> func_ret_0 
    .globl func
    .type func,@function
func:
              #                    mem layout:|ra_func:8 at 32|s0_func:8 at 24|temp_0_ptr2globl:4 at 20|b:4 at 16|a:4 at 12|temp_1_cmp:1 at 11|none:3 at 8|temp_2_arithop:4 at 4|none:4 at 0
    addi    sp,sp,-40
              #                    store to ra_func_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_func_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 temp_0_ptr2globl_18 
              #                          alloc i32 b_18 
              #                          alloc i32 a_18 
              #                          alloc i1 temp_1_cmp_21 
              #                          alloc i32 temp_2_arithop_23 
              #                    regtab 
              #                          label L4_0: 
.L4_0:
              #                          new_var temp_0_ptr2globl_18:i32 
              #                          temp_0_ptr2globl_18 = load *a_0:ptr->i32 
              #                    occupy a0 with *a_0
              #                       load label a as ptr to reg
    la      a0, a
              #                    occupy reg a0 with *a_0
              #                    occupy a1 with temp_0_ptr2globl_18
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          b_18 = i32 temp_0_ptr2globl_18 
              #                    occupy a1 with temp_0_ptr2globl_18
              #                    occupy a2 with b_18
    mv      a2, a1
              #                    free a1
              #                    free a2
              #                          a_18 = i32 1_0 
              #                    occupy a3 with a_18
    li      a3, 1
              #                    free a3
              #                          jump label: L5_0 
    j       .L5_0
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a3:Freed { symidx: a_18, tracked: true } | 
              #                          label L5_0: 
.L5_0:
              #                          new_var temp_1_cmp_21:i1 
              #                          temp_1_cmp_21 = icmp i32 Eq a_18, b_18 
              #                    occupy a3 with a_18
              #                    occupy a2 with b_18
              #                    occupy a0 with temp_1_cmp_21
    xor     a0,a3,a2
    seqz    a0, a0
              #                    free a3
              #                    free a2
              #                    free a0
              #                          br i1 temp_1_cmp_21, label branch_true_22, label branch_false_22 
              #                    occupy a0 with temp_1_cmp_21
              #                    free a0
              #                    occupy a0 with temp_1_cmp_21
    bnez    a0, .branch_true_22
              #                    free a0
    j       .branch_false_22
              #                    regtab     a0:Freed { symidx: temp_1_cmp_21, tracked: true } |     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a3:Freed { symidx: a_18, tracked: true } | 
              #                          label branch_true_22: 
.branch_true_22:
              #                          new_var temp_2_arithop_23:i32 
              #                          temp_2_arithop_23 = Add i32 a_18, 1_0 
              #                    occupy a3 with a_18
              #                    occupy a4 with 1_0
    li      a4, 1
              #                    occupy a5 with temp_2_arithop_23
    add     a5,a3,a4
              #                    free a3
              #                    free a4
              #                    free a5
              #                          a_18 = i32 temp_2_arithop_23 
              #                    occupy a5 with temp_2_arithop_23
              #                    occupy a3 with a_18
    mv      a3, a5
              #                    free a5
              #                    free a3
              #                          ret 1_0 
              #                    load from ra_func_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func_0 in mem
    ld      s0,24(sp)
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a0,11(sp)
              #                    release a0 with temp_1_cmp_21
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a0:Freed { symidx: temp_1_cmp_21, tracked: true } |     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a3:Freed { symidx: a_18, tracked: true } | 
              #                          label branch_false_22: 
.branch_false_22:
              #                          ret 0_0 
              #                    load from ra_func_0 in mem
    ld      ra,32(sp)
              #                    load from s0_func_0 in mem
    ld      s0,24(sp)
              #                    store to temp_1_cmp_21 in mem offset legal
    sb      a0,11(sp)
              #                    release a0 with temp_1_cmp_21
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,40
              #                    free a0
    ret
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a3:Freed { symidx: a_18, tracked: true } | 
              #                          label L6_0: 
.L6_0:
              #                    regtab     a1:Freed { symidx: temp_0_ptr2globl_18, tracked: true } |     a2:Freed { symidx: b_18, tracked: true } |     a3:Freed { symidx: a_18, tracked: true } | 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|result:4 at 28|i:4 at 24|temp_3_cmp:1 at 23|none:3 at 20|temp_4_ret_of_func:4 at 16|temp_5_cmp:1 at 15|none:3 at 12|temp_6_arithop:4 at 8|temp_7_arithop:4 at 4|temp_8_cmp:1 at 3|none:3 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 result_28 
              #                          alloc i32 i_28 
              #                          alloc i1 temp_3_cmp_31 
              #                          alloc i32 temp_4_ret_of_func_34 
              #                          alloc i1 temp_5_cmp_34 
              #                          alloc i32 temp_6_arithop_34 
              #                          alloc i32 temp_7_arithop_33 
              #                          alloc i1 temp_8_cmp_38 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          result_28 = i32 0_0 
              #                    occupy a0 with result_28
    li      a0, 0
              #                    free a0
              #                          i_28 = i32 0_0 
              #                    occupy a1 with i_28
    li      a1, 0
              #                    free a1
              #                          jump label: while.head_32 
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: result_28, tracked: true } |     a1:Freed { symidx: i_28, tracked: true } | 
              #                          label while.head_32: 
.while.head_32:
              #                          new_var temp_3_cmp_31:i1 
              #                          temp_3_cmp_31 = icmp i32 Slt i_28, 100_0 
              #                    occupy a1 with i_28
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a3 with temp_3_cmp_31
    slt     a3,a1,a2
              #                    free a1
              #                    free a2
              #                    free a3
              #                          br i1 temp_3_cmp_31, label while.body_32, label while.exit_32 
              #                    occupy a3 with temp_3_cmp_31
              #                    free a3
              #                    occupy a3 with temp_3_cmp_31
    bnez    a3, .while.body_32
              #                    free a3
    j       .while.exit_32
              #                    regtab     a0:Freed { symidx: result_28, tracked: true } |     a1:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: temp_3_cmp_31, tracked: true } | 
              #                          label while.body_32: 
.while.body_32:
              #                          new_var temp_4_ret_of_func_34:i32 
              #                          temp_4_ret_of_func_34 =  Call i32 func_0() 
              #                    saved register dumping to mem
              #                    store to result_28 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with result_28
              #                    store to i_28 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with i_28
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_3_cmp_31
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    func
              #                    store to temp_4_ret_of_func_34 in mem offset legal
    sw      a0,16(sp)
              #                          new_var temp_5_cmp_34:i1 
              #                          temp_5_cmp_34 = icmp i32 Eq temp_4_ret_of_func_34, 1_0 
              #                    occupy a0 with temp_4_ret_of_func_34
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_5_cmp_34
    xor     a2,a0,a1
    seqz    a2, a2
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_5_cmp_34, label branch_true_35, label branch_false_35 
              #                    occupy a2 with temp_5_cmp_34
              #                    free a2
              #                    occupy a2 with temp_5_cmp_34
    bnez    a2, .branch_true_35
              #                    free a2
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_func_34, tracked: true } |     a2:Freed { symidx: temp_5_cmp_34, tracked: true } | 
              #                          label branch_true_35: 
.branch_true_35:
              #                          new_var temp_6_arithop_34:i32 
              #                          temp_6_arithop_34 = Add i32 result_28, 1_0 
              #                    occupy a1 with result_28
              #                    load from result_28 in mem


    lw      a1,28(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_6_arithop_34
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          result_28 = i32 temp_6_arithop_34 
              #                    occupy a4 with temp_6_arithop_34
              #                    occupy a1 with result_28
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: branch_false_35 
              #                    store to temp_6_arithop_34 in mem offset legal
    sw      a4,8(sp)
              #                    release a4 with temp_6_arithop_34
              #                    store to result_28 in mem offset legal
    sw      a1,28(sp)
              #                    release a1 with result_28
    j       .branch_false_35
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_func_34, tracked: true } |     a2:Freed { symidx: temp_5_cmp_34, tracked: true } | 
              #                          label branch_false_35: 
.branch_false_35:
              #                    regtab     a0:Freed { symidx: temp_4_ret_of_func_34, tracked: true } |     a2:Freed { symidx: temp_5_cmp_34, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_7_arithop_33:i32 
              #                          temp_7_arithop_33 = Add i32 i_28, 1_0 
              #                    occupy a1 with i_28
              #                    load from i_28 in mem


    lw      a1,24(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_7_arithop_33
    add     a4,a1,a3
              #                    free a1
              #                    free a3
              #                    free a4
              #                          i_28 = i32 temp_7_arithop_33 
              #                    occupy a4 with temp_7_arithop_33
              #                    occupy a1 with i_28
    mv      a1, a4
              #                    free a4
              #                    free a1
              #                          jump label: while.head_32 
              #                    store to temp_7_arithop_33 in mem offset legal
    sw      a4,4(sp)
              #                    release a4 with temp_7_arithop_33
              #                    store to temp_5_cmp_34 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_5_cmp_34
              #                    store to temp_4_ret_of_func_34 in mem offset legal
    sw      a0,16(sp)
              #                    release a0 with temp_4_ret_of_func_34
              #                    occupy a0 with _anonymous_of_result_28_0
              #                    load from result_28 in mem


    lw      a0,28(sp)
    j       .while.head_32
              #                    regtab     a0:Freed { symidx: result_28, tracked: true } |     a1:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: temp_3_cmp_31, tracked: true } | 
              #                          label while.exit_32: 
.while.exit_32:
              #                          new_var temp_8_cmp_38:i1 
              #                          temp_8_cmp_38 = icmp i32 Slt result_28, 100_0 
              #                    occupy a0 with result_28
              #                    occupy a2 with 100_0
    li      a2, 100
              #                    occupy a4 with temp_8_cmp_38
    slt     a4,a0,a2
              #                    free a0
              #                    free a2
              #                    free a4
              #                          br i1 temp_8_cmp_38, label branch_true_39, label branch_false_39 
              #                    occupy a4 with temp_8_cmp_38
              #                    free a4
              #                    occupy a4 with temp_8_cmp_38
    bnez    a4, .branch_true_39
              #                    free a4
    j       .branch_false_39
              #                    regtab     a0:Freed { symidx: result_28, tracked: true } |     a1:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: temp_3_cmp_31, tracked: true } |     a4:Freed { symidx: temp_8_cmp_38, tracked: true } | 
              #                          label branch_true_39: 
.branch_true_39:
              #                           Call void putint_0(1_0) 
              #                    saved register dumping to mem
              #                    store to result_28 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with result_28
              #                    store to i_28 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with i_28
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_3_cmp_31
              #                    store to temp_8_cmp_38 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_8_cmp_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_1_0_0
    li      a0, 1
              #                    arg load ended


    call    putint
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: result_28, tracked: true } |     a1:Freed { symidx: i_28, tracked: true } |     a3:Freed { symidx: temp_3_cmp_31, tracked: true } |     a4:Freed { symidx: temp_8_cmp_38, tracked: true } | 
              #                          label branch_false_39: 
.branch_false_39:
              #                           Call void putint_0(0_0) 
              #                    saved register dumping to mem
              #                    store to result_28 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with result_28
              #                    store to i_28 in mem offset legal
    sw      a1,24(sp)
              #                    release a1 with i_28
              #                    store to temp_3_cmp_31 in mem offset legal
    sb      a3,23(sp)
              #                    release a3 with temp_3_cmp_31
              #                    store to temp_8_cmp_38 in mem offset legal
    sb      a4,3(sp)
              #                    release a4 with temp_8_cmp_38
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_0_0_0
    li      a0, 0
              #                    arg load ended


    call    putint
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab 
              #                          label L2_0: 
.L2_0:
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 7
