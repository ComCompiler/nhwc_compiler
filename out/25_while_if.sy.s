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
                    #      Define get_one_0 [a_16] -> get_one_ret_0 
    .globl get_one
    .type get_one,@function
get_one:
                    #mem layout:|ra_get_one:8|s0_get_one:8|a:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      label L5_0: 
.L5_0:
                    #      ret 1_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
                    #      Define deepWhileBr_0 [a_20, b_20] -> deepWhileBr_ret_0 
    .globl deepWhileBr
    .type deepWhileBr,@function
deepWhileBr:
                    #mem layout:|ra_deepWhileBr:8|s0_deepWhileBr:8|a:4|b:4|c:4|temp_0:4|temp_1:1|none:3|d:4|temp_2:1|none:3|temp_3:4|temp_4:1|none:3|e:4|temp_5:4|temp_6:4|temp_7:1|none:3|temp_8:4
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,56(sp)
    addi    s0,sp,72
                    #      alloc i32 c_22 
                    #      alloc i32 temp_0_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i32 d_27 
                    #      alloc i1 temp_2_30 
                    #      alloc i32 temp_3_32 
                    #      alloc i1 temp_4_34 
                    #      alloc i32 e_36 
                    #      alloc i32 temp_5_36 
                    #      alloc i32 temp_6_39 
                    #      alloc i1 temp_7_39 
                    #      alloc i32 temp_8_41 
                    #      label L1_0: 
.L1_0:
                    #      new_var c_22:i32 
                    #      new_var temp_0_22:i32 
                    #      temp_0_22 = Add i32 a_20, b_20 
    add     a2,a0,a1
                    #      c_22 = i32 temp_0_22 
    mv      a3, a2
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Slt c_22, 75_0 
    li      a4, 75
    slt     a5,a3,a4
                    #      br i1 temp_1_25, label while.body_26, label while.exit_26 
    bnez    a5, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var d_27:i32 
                    #      d_27 = i32 42_0 
    li      a4, 42
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_2_30:i1 
                    #      temp_2_30 = icmp i32 Slt c_22, 100_0 
    li      a6, 100
    slt     a7,a3,a6
                    #      br i1 temp_2_30, label branch_true_31, label branch_false_31 
    bnez    a7, .branch_true_31
    j       .branch_false_31
                    #      label branch_true_31: 
.branch_true_31:
                    #      new_var temp_3_32:i32 
                    #      temp_3_32 = Add i32 c_22, d_27 
    add     a6,a3,a4
                    #      c_22 = i32 temp_3_32 
    mv      a3, a6
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_4_34:i1 
                    #      temp_4_34 = icmp i32 Sgt c_22, 99_0 
    li      s1, 99
    slt     s2,s1,a3
                    #      br i1 temp_4_34, label branch_true_35, label branch_false_35 
    bnez    s2, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      new_var e_36:i32 
                    #      new_var temp_5_36:i32 
                    #      temp_5_36 = Mul i32 d_27, 2_0 
    li      s1, 2
    mul     s3,a4,s1
                    #      e_36 = i32 temp_5_36 
    mv      s4, s3
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_6_39:i32 
                    #      temp_6_39 =  Call i32 get_one_0(0_0) 
                    #saved register dumping to mem
    sb      s2,23(sp)
    sw      s3,12(sp)
    sw      s4,16(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,52(sp)
    li      a0, 0
                    #arg load ended
    call    get_one
    sw      a0,8(sp)
                    #      new_var temp_7_39:i1 
                    #      temp_7_39 = icmp i32 Eq temp_6_39, 1_0 
    li      s1, 1
    xor     s2,a0,s1
    seqz    s2, s2
                    #      br i1 temp_7_39, label branch_true_40, label branch_false_40 
    bnez    s2, .branch_true_40
    j       .branch_false_40
                    #      label branch_true_40: 
.branch_true_40:
                    #      new_var temp_8_41:i32 
                    #      temp_8_41 = Mul i32 e_36, 2_0 
    li      s3, 2
    mul     s4,s1,s3
                    #      c_22 = i32 temp_8_41 
    mv      a3, s4
                    #      jump label: branch_false_40 
    sw      s4,0(sp)
    sw      s1,16(sp)
    j       .branch_false_40
                    #      label branch_false_40: 
.branch_false_40:
                    #      label branch_false_35: 
.branch_false_35:
                    #      label branch_false_31: 
.branch_false_31:
                    #      jump label: while.head_26 
    sb      a5,39(sp)
    sw      a4,32(sp)
    sb      a7,31(sp)
    j       .while.head_26
                    #      label while.exit_26: 
.while.exit_26:
                    #      ret c_22 
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
                    #mem layout:|ra_main:8|s0_main:8|p:4|temp_9:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 p_45 
                    #      alloc i32 temp_9_45 
                    #      label L0_0: 
.L0_0:
                    #      new_var p_45:i32 
                    #      p_45 = i32 2_0 
    li      a0, 2
                    #      new_var temp_9_45:i32 
                    #      temp_9_45 =  Call i32 deepWhileBr_0(p_45, p_45) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
    lw      a0,4(sp)
    lw      a1,4(sp)
                    #arg load ended
    call    deepWhileBr
    sw      a0,0(sp)
                    #      p_45 = i32 temp_9_45 
    mv      a1, a0
                    #       Call void putint_0(p_45) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,0(sp)
    mv      a0, a1
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
