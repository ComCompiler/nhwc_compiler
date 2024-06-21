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
                    #      Define whileIf_0 [] -> whileIf_ret_0 
    .globl whileIf
    .type whileIf,@function
whileIf:
                    #mem layout:|ra_whileIf:8|s0_whileIf:8|a:4|b:4|temp_0:1|temp_1:1|none:2|temp_2:4|temp_3:1|none:3|temp_4:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i32 temp_2_24 
                    #      alloc i1 temp_3_29 
                    #      alloc i32 temp_4_33 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 0_0 
    li      a0, 0
                    #      new_var b_17:i32 
                    #      b_17 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_23 
    j       .while.head_23
                    #      label while.head_23: 
.while.head_23:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Slt a_17, 100_0 
    li      a2, 100
    slt     a3,a0,a2
                    #      br i1 temp_0_22, label while.body_23, label while.exit_23 
    bnez    a3, .while.body_23
    j       .while.exit_23
                    #      label while.body_23: 
.while.body_23:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Eq a_17, 5_0 
    li      a2, 5
    xor     a4,a0,a2
    seqz    a4, a4
                    #      br i1 temp_1_25, label branch_true_26, label branch_false_26 
    bnez    a4, .branch_true_26
    j       .branch_false_26
                    #      label branch_true_26: 
.branch_true_26:
                    #      b_17 = i32 25_0 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_26: 
.branch_false_26:
                    #      new_var temp_3_29:i1 
                    #      temp_3_29 = icmp i32 Eq a_17, 10_0 
    li      a2, 10
    xor     a5,a0,a2
    seqz    a5, a5
                    #      br i1 temp_3_29, label branch_true_30, label branch_false_30 
    bnez    a5, .branch_true_30
    j       .branch_false_30
                    #      label branch_true_30: 
.branch_true_30:
                    #      b_17 = i32 42_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_30: 
.branch_false_30:
                    #      new_var temp_4_33:i32 
                    #      temp_4_33 = Mul i32 a_17, 2_0 
    li      a2, 2
    mul     a6,a0,a2
                    #      b_17 = i32 temp_4_33 
                    #      jump label: L2_0 
    sw      a6,0(sp)
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_2_24:i32 
                    #      temp_2_24 = Add i32 a_17, 1_0 
    li      a2, 1
    add     a5,a0,a2
                    #      a_17 = i32 temp_2_24 
                    #      jump label: while.head_23 
    sb      a3,15(sp)
    sb      a4,14(sp)
    sw      a5,8(sp)
    j       .while.head_23
                    #      label while.exit_23: 
.while.exit_23:
                    #      ret b_17 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a1,16(sp)
    sw      a0,20(sp)
    addi    sp,sp,40
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_5:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_5_38 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_5_38:i32 
                    #      temp_5_38 =  Call i32 whileIf_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    whileIf
    sw      a0,4(sp)
                    #      ret temp_5_38 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
