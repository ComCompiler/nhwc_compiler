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
                    #mem layout:|ra_main:8|s0_main:8|flag:4|temp_0:4|temp_1:4|temp_2:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:1|none:3|temp_9:4|temp_10:4|temp_11:4|temp_12:4|temp_13:4|temp_14:1|none:3|temp_15:4|temp_16:4|temp_17:1|temp_18:1|temp_19:1|none:5
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
                    #      alloc i32 flag_22 
                    #      alloc i32 temp_0_24 
                    #      alloc i32 temp_1_24 
                    #      alloc i32 temp_2_24 
                    #      alloc i32 temp_3_24 
                    #      alloc i32 temp_4_24 
                    #      alloc i32 temp_5_24 
                    #      alloc i32 temp_6_24 
                    #      alloc i32 temp_7_24 
                    #      alloc i1 temp_8_24 
                    #      alloc i32 temp_9_24 
                    #      alloc i32 temp_10_24 
                    #      alloc i32 temp_11_24 
                    #      alloc i32 temp_12_24 
                    #      alloc i32 temp_13_24 
                    #      alloc i1 temp_14_24 
                    #      alloc i32 temp_15_24 
                    #      alloc i32 temp_16_24 
                    #      alloc i1 temp_17_24 
                    #      alloc i1 temp_18_24 
                    #      alloc i1 temp_19_24 
                    #      label L0_0: 
.L0_0:
                    #      flag_22 = i32 0_0 
    li      a0, 0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_0_24:i32 
                    #      temp_0_24 = load *d_0:ptr->i32 
                    #   load label d as ptr to reg
    la      a1, d
                    #occupy reg a1 with *d_0
    lw      a2,0(a1)
                    #occupy reg a2 with d_0
                    #      new_var temp_1_24:i32 
                    #      temp_1_24 = load *c_0:ptr->i32 
                    #   load label c as ptr to reg
    la      a3, c
                    #occupy reg a3 with *c_0
    lw      a4,0(a3)
                    #occupy reg a4 with c_0
                    #      new_var temp_2_24:i32 
                    #      temp_2_24 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a5, a
                    #occupy reg a5 with *a_0
    lw      a6,0(a5)
                    #occupy reg a6 with a_0
                    #      new_var temp_3_24:i32 
                    #      temp_3_24 = Div i32 temp_2_24, temp_1_24 
    div     s2,a7,s1
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 = Sub i32 temp_3_24, temp_0_24 
    sub     s4,s2,s3
                    #      new_var temp_5_24:i32 
                    #      temp_5_24 = load *b_0:ptr->i32 
                    #   load label b as ptr to reg
    la      s5, b
                    #occupy reg s5 with *b_0
    lw      s6,0(s5)
                    #occupy reg s6 with b_0
                    #      new_var temp_6_24:i32 
                    #      temp_6_24 = Mul i32 temp_5_24, temp_1_24 
    mul     s8,s7,s1
                    #      new_var temp_7_24:i32 
                    #      temp_7_24 = Sub i32 temp_6_24, temp_2_24 
    sub     s9,s8,a7
                    #      new_var temp_8_24:i1 
                    #      temp_8_24 = icmp i32 Eq temp_7_24, temp_4_24 
    xor     s10,s9,s4
    seqz    s10, s10
                    #      new_var temp_9_24:i32 
                    #      temp_9_24 = load *e_0:ptr->i32 
                    #   load label e as ptr to reg
    la      s11, e
                    #occupy reg s11 with *e_0
    lw      a1,0(s11)
                    #occupy reg a1 with e_0
                    #      new_var temp_10_24:i32 
                    #      temp_10_24 = Add i32 temp_9_24, temp_0_24 
    add     a2,a1,s3
                    #      new_var temp_11_24:i32 
                    #      temp_11_24 = Add i32 temp_2_24, temp_5_24 
    add     a3,a7,s7
                    #      new_var temp_12_24:i32 
                    #      temp_12_24 = Mul i32 temp_11_24, temp_2_24 
    mul     a4,a3,a7
                    #      new_var temp_13_24:i32 
                    #      temp_13_24 = Add i32 temp_12_24, temp_1_24 
    add     a5,a4,s1
                    #      new_var temp_14_24:i1 
                    #      temp_14_24 = icmp i32 Sle temp_13_24, temp_10_24 
    slt     a6,a2,a5
    xori    a6,a6,1
                    #      new_var temp_15_24:i32 
                    #      temp_15_24 = Mul i32 temp_2_24, temp_5_24 
    mul     s5,a7,s7
                    #      new_var temp_16_24:i32 
                    #      temp_16_24 = Div i32 temp_15_24, temp_1_24 
    div     s6,s5,s1
                    #      new_var temp_17_24:i1 
                    #      temp_17_24 = icmp i32 Eq temp_16_24, temp_10_24 
    xor     s11,s6,a2
    seqz    s11, s11
                    #      new_var temp_18_24:i1 
                    #      temp_18_24 = And i1 temp_17_24, temp_14_24 
    sw      a0,76(sp)
    and     a0,s11,a6
                    #      new_var temp_19_24:i1 
                    #      temp_19_24 = Or i1 temp_18_24, temp_8_24 
                    #      br i1 temp_19_24, label branch_true_25, label branch_false_25 
    sb      a0,6(sp)
    bnez    a0, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      flag_22 = i32 1_0 
    sb      a0,5(sp)
    li      a0, 1
                    #      jump label: branch_false_25 
    j       .branch_false_25
                    #      label branch_false_25: 
.branch_false_25:
                    #      label L2_0: 
.L2_0:
                    #       Call void putint_0(flag_22) 
                    #saved register dumping to mem
    sw      s1,68(sp)
    sw      s2,60(sp)
    sw      s3,72(sp)
    sw      s4,56(sp)
    sw      s5,12(sp)
    sw      s6,8(sp)
    sw      s7,52(sp)
    sw      s8,48(sp)
    sw      s9,44(sp)
    sb      s10,43(sp)
    sb      s11,7(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,76(sp)
                    #arg load ended
    call    putint
                    #      ret flag_22 
    ld      ra,88(sp)
    ld      s0,80(sp)
    addi    sp,sp,96
    ret
.section        .data
    .align 4
    .globl e
                    #      global i32 e_0 
    .type e,@object
e:
    .word 4
    .align 4
    .globl d
                    #      global i32 d_0 
    .type d,@object
d:
    .word 2
    .align 4
    .globl c
                    #      global i32 c_0 
    .type c,@object
c:
    .word 1
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
    .word 1
