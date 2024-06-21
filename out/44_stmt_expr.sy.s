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


.section        .text
    .align 4
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|temp_0:1|none:3|temp_1:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|none:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
                    #      alloc i32 i_19 
                    #      alloc i1 temp_0_22 
                    #      alloc i32 temp_1_24 
                    #      alloc i32 temp_2_24 
                    #      alloc i32 temp_3_24 
                    #      alloc i32 temp_4_24 
                    #      alloc i32 temp_5_24 
                    #      alloc i32 temp_6_19 
                    #      alloc i32 temp_7_19 
                    #      label L0_0: 
.L0_0:
                    #      i_19 = i32 0_0 
    li      a0, 0
                    #      store 1_0:i32 *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a1, k
                    #occupy reg a1 with *k_0
    li      a2, 1
    sd      a2,0(a1)
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Sle i_19, 9_0 
    li      a1, 9
    slt     a2,a1,a0
    xori    a2,a2,1
                    #      br i1 temp_0_22, label while.body_23, label while.exit_23 
    bnez    a2, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_1_24:i32 
                    #      temp_1_24 = Add i32 i_19, 1_0 
    li      a1, 1
    add     a3,a0,a1
                    #      i_19 = i32 temp_1_24 
    mv      a0, a3
                    #      new_var temp_2_24:i32 
                    #      temp_2_24 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a4, k
                    #occupy reg a4 with *k_0
    lw      a5,0(a4)
                    #      new_var temp_3_24:i32 
                    #      temp_3_24 = Add i32 temp_2_24, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    add     a6,a5,a1
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a7, k
                    #occupy reg a7 with *k_0
    lw      s1,0(a7)
                    #      new_var temp_5_24:i32 
                    #      temp_5_24 = Mul i32 temp_4_24, 2_0 
    li      s2, 2
    mul     s3,s1,s2
                    #      store temp_5_24:i32 *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      s4, k
                    #occupy reg s4 with *k_0
    sd      s3,0(s4)
                    #      jump label: while.head_23 
    sw      a5,24(sp)
    sw      s3,12(sp)
    sw      a3,28(sp)
    sw      s1,16(sp)
    sb      a2,35(sp)
    sw      a6,20(sp)
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      new_var temp_6_19:i32 
                    #      temp_6_19 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a1, k
                    #occupy reg a1 with *k_0
    lw      a3,0(a1)
                    #       Call void putint_0(temp_6_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,36(sp)
    mv      a0, a3
                    #arg load ended
    call    putint
                    #      new_var temp_7_19:i32 
                    #      temp_7_19 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a0, k
                    #occupy reg a0 with *k_0
    lw      a4,0(a0)
                    #      ret temp_7_19 
    ld      ra,48(sp)
    ld      s0,40(sp)
    sw      a4,4(sp)
    addi    sp,sp,56
    ret
.section        .data
    .align 4
    .globl n
                    #      global i32 n_0 
    .type n,@object
n:
    .word 10
    .align 4
    .globl k
                    #      global i32 k_0 
    .type k,@object
k:
    .word 0
