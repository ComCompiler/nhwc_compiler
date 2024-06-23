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
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|temp_0_ret_of_getint:4 at 28|temp_1_ret_of_getint:4 at 24|c:4 at 20|temp_2_ptr2globl:4 at 16|temp_3_cmp:1 at 15|none:3 at 12|temp_4_ptr2globl:4 at 8|temp_5_ptr2globl:4 at 4|temp_6_cmp:1 at 3|temp_7_logic:1 at 2|none:2 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 temp_0_ret_of_getint_19 
              #                          alloc i32 temp_1_ret_of_getint_19 
              #                          alloc i32 c_19 
              #                          alloc i32 temp_2_ptr2globl_23 
              #                          alloc i1 temp_3_cmp_23 
              #                          alloc i32 temp_4_ptr2globl_23 
              #                          alloc i32 temp_5_ptr2globl_23 
              #                          alloc i1 temp_6_cmp_23 
              #                          alloc i1 temp_7_logic_23 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          new_var temp_0_ret_of_getint_19:i32 
              #                          temp_0_ret_of_getint_19 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,28(sp)
              #                          store temp_0_ret_of_getint_19:i32 *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a0 with temp_0_ret_of_getint_19
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var temp_1_ret_of_getint_19:i32 
              #                          temp_1_ret_of_getint_19 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to temp_0_ret_of_getint_19 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with temp_0_ret_of_getint_19
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_1_ret_of_getint_19 in mem offset legal
    sw      a0,24(sp)
              #                          store temp_1_ret_of_getint_19:i32 *b_0:ptr->i32 
              #                    occupy a1 with *b_0
              #                       load label b as ptr to reg
    la      a1, b
              #                    occupy reg a1 with *b_0
              #                    occupy a0 with temp_1_ret_of_getint_19
    sw      a0,0(a1)
              #                    free a0
              #                    free a1
              #                          new_var c_19:i32 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getint_19, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var temp_2_ptr2globl_23:i32 
              #                          temp_2_ptr2globl_23 = load *a_0:ptr->i32 
              #                    occupy a1 with *a_0
              #                       load label a as ptr to reg
    la      a1, a
              #                    occupy reg a1 with *a_0
              #                    occupy a2 with temp_2_ptr2globl_23
    lw      a2,0(a1)
              #                    free a2
              #                    free a1
              #                          new_var temp_3_cmp_23:i1 
              #                          temp_3_cmp_23 = icmp i32 Ne temp_2_ptr2globl_23, 3_0 
              #                    occupy a2 with temp_2_ptr2globl_23
              #                    occupy a3 with 3_0
    li      a3, 3
              #                    occupy a4 with temp_3_cmp_23
    xor     a4,a2,a3
    snez    a4, a4
              #                    free a2
              #                    free a3
              #                    free a4
              #                          new_var temp_4_ptr2globl_23:i32 
              #                          temp_4_ptr2globl_23 = load *b_0:ptr->i32 
              #                    occupy a5 with *b_0
              #                       load label b as ptr to reg
    la      a5, b
              #                    occupy reg a5 with *b_0
              #                    occupy a6 with temp_4_ptr2globl_23
    lw      a6,0(a5)
              #                    free a6
              #                    free a5
              #                          new_var temp_5_ptr2globl_23:i32 
              #                          temp_5_ptr2globl_23 = load *a_0:ptr->i32 
              #                    occupy a7 with *a_0
              #                       load label a as ptr to reg
    la      a7, a
              #                    occupy reg a7 with *a_0
              #                    occupy s1 with temp_5_ptr2globl_23
    lw      s1,0(a7)
              #                    free s1
              #                    free a7
              #                          new_var temp_6_cmp_23:i1 
              #                          temp_6_cmp_23 = icmp i32 Eq temp_5_ptr2globl_23, temp_4_ptr2globl_23 
              #                    occupy s1 with temp_5_ptr2globl_23
              #                    occupy a6 with temp_4_ptr2globl_23
              #                    occupy s2 with temp_6_cmp_23
    xor     s2,s1,a6
    seqz    s2, s2
              #                    free s1
              #                    free a6
              #                    free s2
              #                          new_var temp_7_logic_23:i1 
              #                          temp_7_logic_23 = And i1 temp_6_cmp_23, temp_3_cmp_23 
              #                    occupy s2 with temp_6_cmp_23
              #                    occupy a4 with temp_3_cmp_23
              #                    occupy s3 with temp_7_logic_23
    and     s3,s2,a4
              #                    free s2
              #                    free a4
              #                    free s3
              #                          br i1 temp_7_logic_23, label branch_true_24, label branch_false_24 
              #                    occupy s3 with temp_7_logic_23
              #                    free s3
              #                    occupy s3 with temp_7_logic_23
    bnez    s3, .branch_true_24
              #                    free s3
    j       .branch_false_24
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getint_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_23, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_ptr2globl_23, tracked: true } |     s1:Freed { symidx: temp_5_ptr2globl_23, tracked: true } |     s2:Freed { symidx: temp_6_cmp_23, tracked: true } |     s3:Freed { symidx: temp_7_logic_23, tracked: true } | 
              #                          label branch_true_24: 
.branch_true_24:
              #                          c_19 = i32 1_0 
              #                    occupy a1 with c_19
    li      a1, 1
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getint_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_23, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_ptr2globl_23, tracked: true } |     s1:Freed { symidx: temp_5_ptr2globl_23, tracked: true } |     s2:Freed { symidx: temp_6_cmp_23, tracked: true } |     s3:Freed { symidx: temp_7_logic_23, tracked: true } | 
              #                          label branch_false_24: 
.branch_false_24:
              #                          c_19 = i32 0_0 
              #                    occupy a1 with c_19
    li      a1, 0
              #                    free a1
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: c_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_23, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_ptr2globl_23, tracked: true } |     s1:Freed { symidx: temp_5_ptr2globl_23, tracked: true } |     s2:Freed { symidx: temp_6_cmp_23, tracked: true } |     s3:Freed { symidx: temp_7_logic_23, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                    regtab     a0:Freed { symidx: temp_1_ret_of_getint_19, tracked: true } |     a1:Freed { symidx: c_19, tracked: true } |     a2:Freed { symidx: temp_2_ptr2globl_23, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_ptr2globl_23, tracked: true } |     s1:Freed { symidx: temp_5_ptr2globl_23, tracked: true } |     s2:Freed { symidx: temp_6_cmp_23, tracked: true } |     s3:Freed { symidx: temp_7_logic_23, tracked: true } | 
              #                          label L3_0: 
.L3_0:
              #                          ret c_19 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    store to c_19 in mem offset legal
    sw      a1,20(sp)
              #                    release a1 with c_19
              #                    store to temp_1_ret_of_getint_19 in mem offset legal
    sw      a0,24(sp)
              #                    release a0 with temp_1_ret_of_getint_19
              #                    occupy a0 with c_19
              #                    load from c_19 in mem


    lw      a0,20(sp)
    addi    sp,sp,48
              #                    free a0
    ret
              #                    regtab     a2:Freed { symidx: temp_2_ptr2globl_23, tracked: true } |     a4:Freed { symidx: temp_3_cmp_23, tracked: true } |     a6:Freed { symidx: temp_4_ptr2globl_23, tracked: true } |     s1:Freed { symidx: temp_5_ptr2globl_23, tracked: true } |     s2:Freed { symidx: temp_6_cmp_23, tracked: true } |     s3:Freed { symidx: temp_7_logic_23, tracked: true } | 
.section ___var
    .data
    .align 4
    .globl b
              #                          global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
              #                          global i32 a_0 
    .type a,@object
a:
    .word 0
