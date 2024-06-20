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
                    #mem layout:|ra_main:8|s0_main:8|temp_0:4|temp_1:1|none:3|temp_2:4|temp_3:4|k:4|temp_4:1|none:3|temp_5:4|temp_6:1|none:3|g:4|l:4|temp_7:4|g:4|temp_8:4|temp_9:4|temp_10:4|none:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 temp_0_20 
                    #      alloc i1 temp_1_20 
                    #      alloc i32 temp_2_22 
                    #      alloc i32 temp_3_22 
                    #      alloc i32 k_22 
                    #      alloc i1 temp_4_25 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_29 
                    #      alloc i32 g_31 
                    #      alloc i32 l_33 
                    #      alloc i32 temp_7_35 
                    #      alloc i32 g_35 
                    #      alloc i32 temp_8_35 
                    #      alloc i32 temp_9_35 
                    #      alloc i32 temp_10_18 
                    #      label L0_0: 
.L0_0:
                    #      store 3389_0:i32 *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a0, k
                    #occupy reg a0 with *k_0
    li      a1, 3389
    sd      a1,0(a0)
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_20:i32 
                    #      temp_0_20 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a2, k
                    #occupy reg a2 with *k_0
    lw      a3,0(a2)
                    #      new_var temp_1_20:i1 
                    #      temp_1_20 = icmp i32 Slt temp_0_20, 10000_0 
    li      a4, 10000
    slt     a5,a3,a4
                    #      br i1 temp_1_20, label branch_true_21, label branch_false_21 
    bnez    a5, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      new_var temp_2_22:i32 
                    #      temp_2_22 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a6, k
                    #occupy reg a6 with *k_0
    lw      a7,0(a6)
                    #      new_var temp_3_22:i32 
                    #      temp_3_22 = Add i32 temp_2_22, 1_0 
    li      s1, 1
    add     s2,a7,s1
                    #      store temp_3_22:i32 *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      s3, k
                    #occupy reg s3 with *k_0
    sd      s2,0(s3)
                    #      k_22 = i32 112_0 
    li      s4, 112
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_4_25:i1 
                    #      temp_4_25 = icmp i32 Sgt k_22, 10_0 
    li      s5, 10
    slt     s6,s5,s4
                    #      br i1 temp_4_25, label while.body_26, label while.exit_26 
    bnez    s6, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 = Sub i32 k_22, 88_0 
    li      s7, 88
    sub     s8,s4,s7
                    #      k_22 = i32 temp_5_27 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_6_29:i1 
                    #      temp_6_29 = icmp i32 Slt k_22, 1000_0 
    li      s9, 1000
    slt     s10,s4,s9
                    #      br i1 temp_6_29, label branch_true_30, label branch_false_30 
    bnez    s10, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      g_31 = i32 9_0 
    li      s11, 9
                    #      l_33 = i32 11_0 
    li      a0, 11
                    #      g_31 = i32 10_0 
                    #      new_var temp_7_35:i32 
                    #      temp_7_35 = Sub i32 k_22, g_31 
    sub     a1,s4,s11
                    #      k_22 = i32 temp_7_35 
                    #      g_35 = i32 11_0 
    li      a2, 11
                    #      new_var temp_8_35:i32 
                    #      temp_8_35 = Add i32 g_35, l_33 
    add     a4,a2,a0
                    #      new_var temp_9_35:i32 
                    #      temp_9_35 = Add i32 k_22, temp_8_35 
    add     a6,s4,a4
                    #      k_22 = i32 temp_9_35 
                    #      jump label: branch_false_30 
    j       .branch_false_30
                    #      label branch_false_30: 
.branch_false_30:
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.exit_26: 
.while.exit_26:
                    #       Call void putint_0(k_22) 
                    #saved register dumping to mem
    sw      s2,48(sp)
    sw      s4,44(sp)
    sb      s6,43(sp)
    sw      s8,36(sp)
    sb      s10,35(sp)
    sw      s11,28(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,24(sp)
                    #arg load ended
    call    putint
                    #      jump label: branch_false_21 
    j       .branch_false_21
                    #      label branch_false_21: 
.branch_false_21:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_10_18:i32 
                    #      temp_10_18 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a0, k
                    #occupy reg a0 with *k_0
    lw      s1,0(a0)
                    #      ret temp_10_18 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      s1,4(sp)
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl k
                    #      global i32 k_0 
    .type k,@object
k:
    .word 0
