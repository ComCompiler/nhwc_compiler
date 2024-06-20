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
                    #mem layout:|ra_main:8|s0_main:8|temp_0:4|temp_1:4|temp_2:4|temp_3:4|temp_4:4|flag:4|temp_5:4|temp_6:4|temp_7:4|temp_8:4|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:1|none:3|temp_14:4|temp_15:4|temp_16:1|temp_17:1|none:2|temp_18:4|temp_19:4|temp_20:4|temp_21:4|temp_22:1|temp_23:1|none:6
    addi    sp,sp,-112
    sd      ra,104(sp)
    sd      s0,96(sp)
    addi    s0,sp,112
                    #      alloc i32 temp_0_22 
                    #      alloc i32 temp_1_22 
                    #      alloc i32 temp_2_22 
                    #      alloc i32 temp_3_22 
                    #      alloc i32 temp_4_22 
                    #      alloc i32 flag_22 
                    #      alloc i32 temp_5_29 
                    #      alloc i32 temp_6_29 
                    #      alloc i32 temp_7_29 
                    #      alloc i32 temp_8_29 
                    #      alloc i32 temp_9_29 
                    #      alloc i32 temp_10_29 
                    #      alloc i32 temp_11_29 
                    #      alloc i32 temp_12_29 
                    #      alloc i1 temp_13_29 
                    #      alloc i32 temp_14_29 
                    #      alloc i32 temp_15_29 
                    #      alloc i1 temp_16_29 
                    #      alloc i1 temp_17_29 
                    #      alloc i32 temp_18_29 
                    #      alloc i32 temp_19_29 
                    #      alloc i32 temp_20_29 
                    #      alloc i32 temp_21_29 
                    #      alloc i1 temp_22_29 
                    #      alloc i1 temp_23_29 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,92(sp)
                    #      store temp_0_22:i32 *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a1, a
                    #occupy reg a1 with *a_0
    sd      a0,0(a1)
                    #      new_var temp_1_22:i32 
                    #      temp_1_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,92(sp)
    sw      a0,88(sp)
                    #      store temp_1_22:i32 *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      a2, b
                    #occupy reg a2 with *b_0
    sd      a0,0(a2)
                    #      new_var temp_2_22:i32 
                    #      temp_2_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,88(sp)
    sw      a0,84(sp)
                    #      store temp_2_22:i32 *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a3, c
                    #occupy reg a3 with *c_0
    sd      a0,0(a3)
                    #      new_var temp_3_22:i32 
                    #      temp_3_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,84(sp)
    sw      a0,80(sp)
                    #      store temp_3_22:i32 *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a4, d
                    #occupy reg a4 with *d_0
    sd      a0,0(a4)
                    #      new_var temp_4_22:i32 
                    #      temp_4_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,80(sp)
    sw      a0,76(sp)
                    #      store temp_4_22:i32 *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      a5, e
                    #occupy reg a5 with *e_0
    sd      a0,0(a5)
                    #      flag_22 = i32 0_0 
    li      a6, 0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_5_29:i32 
                    #      temp_5_29 = load *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a7, d
                    #occupy reg a7 with *d_0
    lw      s1,0(a7)
                    #      new_var temp_6_29:i32 
                    #      temp_6_29 = load *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s2, e
                    #occupy reg s2 with *e_0
    lw      s3,0(s2)
                    #      new_var temp_7_29:i32 
                    #      temp_7_29 = Add i32 temp_6_29, temp_5_29 
    add     s4,s3,s1
                    #      new_var temp_8_29:i32 
                    #      temp_8_29 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      s5, a
                    #occupy reg s5 with *a_0
    lw      s6,0(s5)
                    #      new_var temp_9_29:i32 
                    #      temp_9_29 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      s7, c
                    #occupy reg s7 with *c_0
    lw      s8,0(s7)
                    #      new_var temp_10_29:i32 
                    #      temp_10_29 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s9, b
                    #occupy reg s9 with *b_0
    lw      s10,0(s9)
                    #      new_var temp_11_29:i32 
                    #      temp_11_29 = Add i32 temp_10_29, temp_9_29 
    add     s11,s10,s8
                    #      new_var temp_12_29:i32 
                    #      temp_12_29 = Add i32 temp_11_29, temp_8_29 
    add     a1,s11,s6
                    #      new_var temp_13_29:i1 
                    #      temp_13_29 = icmp i32 Eq temp_12_29, temp_7_29 
    xor     a2,a1,s4
    seqz    a2, a2
                    #      new_var temp_14_29:i32 
                    #      temp_14_29 = Mul i32 temp_8_29, temp_10_29 
    mul     a3,s6,s10
                    #      new_var temp_15_29:i32 
                    #      temp_15_29 = Div i32 temp_14_29, temp_9_29 
    div     a4,a3,s8
                    #      new_var temp_16_29:i1 
                    #      temp_16_29 = icmp i32 Eq temp_15_29, temp_7_29 
    xor     a5,a4,s4
    seqz    a5, a5
                    #      new_var temp_17_29:i1 
                    #      temp_17_29 = Or i1 temp_16_29, temp_13_29 
                    #      new_var temp_18_29:i32 
                    #      temp_18_29 = Div i32 temp_8_29, temp_9_29 
    div     a7,s6,s8
                    #      new_var temp_19_29:i32 
                    #      temp_19_29 = Sub i32 temp_5_29, temp_18_29 
    sub     s2,s1,a7
                    #      new_var temp_20_29:i32 
                    #      temp_20_29 = Mul i32 temp_10_29, temp_9_29 
    mul     s5,s10,s8
                    #      new_var temp_21_29:i32 
                    #      temp_21_29 = Sub i32 temp_8_29, temp_20_29 
    sub     s7,s6,s5
                    #      new_var temp_22_29:i1 
                    #      temp_22_29 = icmp i32 Ne temp_21_29, temp_19_29 
    xor     s9,s7,s2
    snez    s9, s9
                    #      new_var temp_23_29:i1 
                    #      temp_23_29 = Or i1 temp_22_29, temp_17_29 
    sw      a0,76(sp)
                    #      br i1 temp_23_29, label branch_true_30, label branch_false_30 
    sb      a0,26(sp)
    bnez    a0, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      flag_22 = i32 1_0 
                    #      jump label: branch_false_30 
    j       .branch_false_30
                    #      label branch_false_30: 
.branch_false_30:
                    #      label L2_0: 
.L2_0:
                    #      ret flag_22 
    ld      ra,104(sp)
    ld      s0,96(sp)
    sw      a6,72(sp)
    sb      a0,6(sp)
    addi    sp,sp,112
    ret
.section        .data
    .align 4
    .globl e
                    #      global i32 e_0 
    .type e,@object
e:
    .word 0
    .align 4
    .globl d
                    #      global i32 d_0 
    .type d,@object
d:
    .word 0
    .align 4
    .globl c
                    #      global i32 c_0 
    .type c,@object
c:
    .word 0
    .align 4
    .globl b
                    #      global i32 b_0 
    .type b,@object
b:
    .word 0
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 0
