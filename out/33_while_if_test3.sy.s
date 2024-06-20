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
                    #      Define deepWhileBr_0 [a_16, b_16] -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
                    #mem layout:|ra_deepWhileBr:8|s0_deepWhileBr:8|a:4|b:4|c:4|temp_0:4|temp_1:1|none:3|d:4|temp_2:1|none:3|temp_3:4|temp_4:1|none:3|e:4|temp_5:4|temp_6:1|none:3|temp_7:4|none:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 c_18 
                    #      alloc i32 temp_0_18 
                    #      alloc i1 temp_1_21 
                    #      alloc i32 d_23 
                    #      alloc i1 temp_2_26 
                    #      alloc i32 temp_3_28 
                    #      alloc i1 temp_4_30 
                    #      alloc i32 e_32 
                    #      alloc i32 temp_5_32 
                    #      alloc i1 temp_6_35 
                    #      alloc i32 temp_7_37 
                    #      label L1_0: 
.L1_0:
                    #      new_var c_18:i32 
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 = Add i32 a_16, b_16 
    add     a2,a0,a1
                    #      c_18 = i32 temp_0_18 
    mv      a3, a2
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.head_22: 
.while.head_22:
                    #      new_var temp_1_21:i1 
                    #      temp_1_21 = icmp i32 Slt c_18, 75_0 
    li      a4, 75
    slt     a5,a3,a4
                    #      br i1 temp_1_21, label while.body_22, label while.exit_22 
    bnez    a5, .while.body_22
    j       .while.exit_22
                    #      label while.body_22: 
.while.body_22:
                    #      new_var d_23:i32 
                    #      d_23 = i32 42_0 
    li      a6, 42
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_2_26:i1 
                    #      temp_2_26 = icmp i32 Slt c_18, 100_0 
    li      a7, 100
    slt     s1,a3,a7
                    #      br i1 temp_2_26, label branch_true_27, label branch_false_27 
    bnez    s1, .branch_true_27
    j       .branch_false_27
                    #      label branch_true_27: 
.branch_true_27:
                    #      new_var temp_3_28:i32 
                    #      temp_3_28 = Add i32 c_18, d_23 
    add     s2,a3,a6
                    #      c_18 = i32 temp_3_28 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_4_30:i1 
                    #      temp_4_30 = icmp i32 Sgt c_18, 99_0 
    li      s3, 99
    slt     s4,s3,a3
                    #      br i1 temp_4_30, label branch_true_31, label branch_false_31 
    bnez    s4, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var e_32:i32 
                    #      new_var temp_5_32:i32 
                    #      temp_5_32 = Mul i32 d_23, 2_0 
    li      s5, 2
    mul     s6,a6,s5
                    #      e_32 = i32 temp_5_32 
    mv      s7, s6
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_6_35:i1 
                    #      temp_6_35 = icmp i32 Eq 1_0, 1_0 
    li      s8, 1
    li      s9, 1
    xor     s10,s8,s9
    seqz    s10, s10
                    #      br i1 temp_6_35, label branch_true_36, label branch_false_36 
    bnez    s10, .branch_true_36
    j       .branch_false_36
                    #      label branch_true_36: 
.branch_true_36:
                    #      new_var temp_7_37:i32 
                    #      temp_7_37 = Mul i32 e_32, 2_0 
                    #found literal reg Some(s5) already exist with 2_0
    mul     s11,s7,s5
                    #      c_18 = i32 temp_7_37 
                    #      jump label: branch_false_36 
    j       .branch_false_36
                    #      label branch_false_36: 
.branch_false_36:
                    #      label branch_false_31: 
.branch_false_31:
                    #      label branch_false_27: 
.branch_false_27:
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.exit_22: 
.while.exit_22:
                    #      ret c_18 
    ld      ra,64(sp)
    ld      s0,56(sp)
    sw      a3,44(sp)
    sw      a0,52(sp)
    addi    sp,sp,72
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|p:4|temp_8:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 p_41 
                    #      alloc i32 temp_8_41 
                    #      label L0_0: 
.L0_0:
                    #      new_var p_41:i32 
                    #      p_41 = i32 2_0 
    li      a0, 2
                    #      new_var temp_8_41:i32 
                    #      temp_8_41 =  Call i32 deepWhileBr_0(p_41, p_41) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
                    #arg load ended
    call    deepWhileBr
    sw      a0,0(sp)
                    #      ret temp_8_41 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,0(sp)
    addi    sp,sp,24
    ret
