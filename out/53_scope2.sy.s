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
    la      a0, k
                    #occupy reg a0 with *k_0
    lw      a1,0(a0)
                    #      new_var temp_1_20:i1 
                    #      temp_1_20 = icmp i32 Slt temp_0_20, 10000_0 
    li      a2, 10000
    slt     a3,a1,a2
                    #      br i1 temp_1_20, label branch_true_21, label branch_false_21 
    bnez    a3, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      new_var temp_2_22:i32 
                    #      temp_2_22 = load *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a0, k
                    #occupy reg a0 with *k_0
    lw      a2,0(a0)
                    #      new_var temp_3_22:i32 
                    #      temp_3_22 = Add i32 temp_2_22, 1_0 
    li      a4, 1
    add     a5,a2,a4
                    #      store temp_3_22:i32 *k_0:ptr->i32 
                    #   load label k as ptr to reg
    la      a6, k
                    #occupy reg a6 with *k_0
    sd      a5,0(a6)
                    #      k_22 = i32 112_0 
    li      a7, 112
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_4_25:i1 
                    #      temp_4_25 = icmp i32 Sgt k_22, 10_0 
    li      a0, 10
    slt     a4,a0,a7
                    #      br i1 temp_4_25, label while.body_26, label while.exit_26 
    bnez    a4, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 = Sub i32 k_22, 88_0 
    li      a0, 88
    sub     a6,a7,a0
                    #      k_22 = i32 temp_5_27 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_6_29:i1 
                    #      temp_6_29 = icmp i32 Slt k_22, 1000_0 
    li      a0, 1000
    slt     s1,a7,a0
                    #      br i1 temp_6_29, label branch_true_30, label branch_false_30 
    bnez    s1, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      g_31 = i32 9_0 
    li      a0, 9
                    #      l_33 = i32 11_0 
    li      s2, 11
                    #      g_31 = i32 10_0 
                    #      new_var temp_7_35:i32 
                    #      temp_7_35 = Sub i32 k_22, g_31 
    sub     s3,a7,a0
                    #      k_22 = i32 temp_7_35 
                    #      g_35 = i32 11_0 
    li      s4, 11
                    #      new_var temp_8_35:i32 
                    #      temp_8_35 = Add i32 g_35, l_33 
    add     s5,s4,s2
                    #      new_var temp_9_35:i32 
                    #      temp_9_35 = Add i32 k_22, temp_8_35 
    add     s6,a7,s5
                    #      k_22 = i32 temp_9_35 
                    #      jump label: branch_false_30 
    sw      s3,20(sp)
    sw      s5,12(sp)
    sw      s4,16(sp)
    sw      a0,28(sp)
    sw      s6,8(sp)
    sw      s2,24(sp)
    j       .branch_false_30
                    #      label branch_false_30: 
.branch_false_30:
                    #      jump label: while.head_26 
    sb      a4,43(sp)
    sb      s1,35(sp)
    sw      a6,36(sp)
    j       .while.head_26
                    #      label while.exit_26: 
.while.exit_26:
                    #       Call void putint_0(k_22) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    mv      a0, a7
                    #arg load ended
    call    putint
                    #      jump label: branch_false_21 
    sb      a4,43(sp)
    sw      a2,52(sp)
    sw      a7,44(sp)
    sw      a5,48(sp)
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
    lw      a2,0(a0)
                    #      ret temp_10_18 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a2,4(sp)
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl k
                    #      global i32 k_0 
    .type k,@object
k:
    .word 0
