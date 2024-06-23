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
              #                    mem layout:|ra_main:8 at 48|s0_main:8 at 40|i:4 at 36|temp_0_cmp:1 at 35|none:3 at 32|temp_1_arithop:4 at 28|temp_2_ptr2globl:4 at 24|temp_3_arithop:4 at 20|temp_4_ptr2globl:4 at 16|temp_5_arithop:4 at 12|temp_6_ptr2globl:4 at 8|temp_7_ptr2globl:4 at 4|none:4 at 0
    addi    sp,sp,-56
              #                    store to ra_main_0 in mem offset legal
    sd      ra,48(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,40(sp)
    addi    s0,sp,56
              #                          alloc i32 i_19 
              #                          alloc i1 temp_0_cmp_22 
              #                          alloc i32 temp_1_arithop_24 
              #                          alloc i32 temp_2_ptr2globl_24 
              #                          alloc i32 temp_3_arithop_24 
              #                          alloc i32 temp_4_ptr2globl_24 
              #                          alloc i32 temp_5_arithop_24 
              #                          alloc i32 temp_6_ptr2globl_19 
              #                          alloc i32 temp_7_ptr2globl_19 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          i_19 = i32 0_0 
              #                    occupy a0 with i_19
    li      a0, 0
              #                    free a0
              #                          store 1_0:i32 *k_0:ptr->i32 
              #                    occupy a1 with *k_0
              #                       load label k as ptr to reg
    la      a1, k
              #                    occupy reg a1 with *k_0
              #                    occupy a2 with 1_0
    li      a2, 1
    sw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          jump label: while.head_23 
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } | 
              #                          label while.head_23: 
.while.head_23:
              #                          new_var temp_0_cmp_22:i1 
              #                          temp_0_cmp_22 = icmp i32 Sle i_19, 9_0 
              #                    occupy a0 with i_19
              #                    occupy a1 with 9_0
    li      a1, 9
              #                    occupy a2 with temp_0_cmp_22
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_0_cmp_22, label while.body_23, label while.exit_23 
              #                    occupy a2 with temp_0_cmp_22
              #                    free a2
              #                    occupy a2 with temp_0_cmp_22
    bnez    a2, .while.body_23
              #                    free a2
    j       .while.exit_23
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.body_23: 
.while.body_23:
              #                          new_var temp_1_arithop_24:i32 
              #                          temp_1_arithop_24 = Add i32 i_19, 1_0 
              #                    occupy a0 with i_19
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a3 with temp_1_arithop_24
    add     a3,a0,a1
              #                    free a0
              #                    free a1
              #                    free a3
              #                          i_19 = i32 temp_1_arithop_24 
              #                    occupy a3 with temp_1_arithop_24
              #                    occupy a0 with i_19
    mv      a0, a3
              #                    free a3
              #                    free a0
              #                          new_var temp_2_ptr2globl_24:i32 
              #                          temp_2_ptr2globl_24 = load *k_0:ptr->i32 
              #                    occupy a4 with *k_0
              #                       load label k as ptr to reg
    la      a4, k
              #                    occupy reg a4 with *k_0
              #                    occupy a5 with temp_2_ptr2globl_24
    lw      a5,0(a4)
              #                    free a5
              #                    free a4
              #                          new_var temp_3_arithop_24:i32 
              #                          temp_3_arithop_24 = Add i32 temp_2_ptr2globl_24, 1_0 
              #                    occupy a5 with temp_2_ptr2globl_24
              #                    found literal reg Some(a1) already exist with 1_0
              #                    occupy a1 with 1_0
              #                    occupy a6 with temp_3_arithop_24
    add     a6,a5,a1
              #                    free a5
              #                    free a1
              #                    free a6
              #                          new_var temp_4_ptr2globl_24:i32 
              #                          temp_4_ptr2globl_24 = load *k_0:ptr->i32 
              #                    occupy a7 with *k_0
              #                       load label k as ptr to reg
    la      a7, k
              #                    occupy reg a7 with *k_0
              #                    occupy s1 with temp_4_ptr2globl_24
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_5_arithop_24:i32 
              #                          temp_5_arithop_24 = Mul i32 temp_4_ptr2globl_24, 2_0 
              #                    occupy s1 with temp_4_ptr2globl_24
              #                    occupy s2 with 2_0
    li      s2, 2
              #                    occupy s3 with temp_5_arithop_24
    mul     s3,s1,s2
              #                    free s1
              #                    free s2
              #                    free s3
              #                          store temp_5_arithop_24:i32 *k_0:ptr->i32 
              #                    occupy s4 with *k_0
              #                       load label k as ptr to reg
    la      s4, k
              #                    occupy reg s4 with *k_0
              #                    occupy s3 with temp_5_arithop_24
    sw      s3,0(s4)
              #                    free s3
              #                    free s4
              #                          jump label: while.head_23 
              #                    store to temp_0_cmp_22 in mem offset legal
    sb      a2,35(sp)
              #                    release a2 with temp_0_cmp_22
              #                    store to temp_3_arithop_24 in mem offset legal
    sw      a6,20(sp)
              #                    release a6 with temp_3_arithop_24
              #                    store to temp_5_arithop_24 in mem offset legal
    sw      s3,12(sp)
              #                    release s3 with temp_5_arithop_24
              #                    store to temp_2_ptr2globl_24 in mem offset legal
    sw      a5,24(sp)
              #                    release a5 with temp_2_ptr2globl_24
              #                    store to temp_1_arithop_24 in mem offset legal
    sw      a3,28(sp)
              #                    release a3 with temp_1_arithop_24
              #                    store to temp_4_ptr2globl_24 in mem offset legal
    sw      s1,16(sp)
              #                    release s1 with temp_4_ptr2globl_24
    j       .while.head_23
              #                    regtab     a0:Freed { symidx: i_19, tracked: true } |     a2:Freed { symidx: temp_0_cmp_22, tracked: true } | 
              #                          label while.exit_23: 
.while.exit_23:
              #                          new_var temp_6_ptr2globl_19:i32 
              #                          temp_6_ptr2globl_19 = load *k_0:ptr->i32 
              #                    occupy a1 with *k_0
              #                       load label k as ptr to reg
    la      a1, k
              #                    occupy reg a1 with *k_0
              #                    occupy a3 with temp_6_ptr2globl_19
    lw      a3,0(a1)
              #                    free a3
              #                    free a1
              #                           Call void putint_0(temp_6_ptr2globl_19) 
              #                    saved register dumping to mem
              #                    store to i_19 in mem offset legal
    sw      a0,36(sp)
              #                    release a0 with i_19
              #                    store to temp_0_cmp_22 in mem offset legal
    sb      a2,35(sp)
              #                    release a2 with temp_0_cmp_22
              #                    store to temp_6_ptr2globl_19 in mem offset legal
    sw      a3,8(sp)
              #                    release a3 with temp_6_ptr2globl_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_6_ptr2globl_19_0
              #                    load from temp_6_ptr2globl_19 in mem


    lw      a0,8(sp)
              #                    arg load ended


    call    putint
              #                          new_var temp_7_ptr2globl_19:i32 
              #                          temp_7_ptr2globl_19 = load *k_0:ptr->i32 
              #                    occupy a0 with *k_0
              #                       load label k as ptr to reg
    la      a0, k
              #                    occupy reg a0 with *k_0
              #                    occupy a1 with temp_7_ptr2globl_19
    lw      a1,0(a0)
              #                    free a1
              #                    free a0
              #                          ret temp_7_ptr2globl_19 
              #                    load from ra_main_0 in mem
    ld      ra,48(sp)
              #                    load from s0_main_0 in mem
    ld      s0,40(sp)
              #                    store to temp_7_ptr2globl_19 in mem offset legal
    sw      a1,4(sp)
              #                    release a1 with temp_7_ptr2globl_19
              #                    occupy a0 with temp_7_ptr2globl_19
              #                    load from temp_7_ptr2globl_19 in mem


    lw      a0,4(sp)
    addi    sp,sp,56
              #                    free a0
    ret
              #                    regtab 
.section ___var
    .data
    .align 4
    .globl n
              #                          global i32 n_0 
    .type n,@object
n:
    .word 10
    .align 4
    .globl k
              #                          global i32 k_0 
    .type k,@object
k:
    .word 0
