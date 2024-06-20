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
                    #      Define my_getint_0 [] -> my_getint_ret_0 
    .globl my_getint
    .type my_getint,@function
my_getint:
                    #mem layout:|ra_my_getint:8|s0_my_getint:8|sum:4|c:4|temp_0:1|none:3|temp_1:4|temp_2:4|temp_3:1|temp_4:1|temp_5:1|temp_6:1|temp_7:4|temp_8:4|temp_9:1|temp_10:1|temp_11:1|none:1|temp_12:4|temp_13:4|none:4
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,48(sp)
    addi    s0,sp,64
                    #      alloc i32 sum_17 
                    #      alloc i32 c_17 
                    #      alloc i1 temp_0_93 
                    #      alloc i32 temp_1_21 
                    #      alloc i32 temp_2_21 
                    #      alloc i1 temp_3_23 
                    #      alloc i1 temp_4_23 
                    #      alloc i1 temp_5_23 
                    #      alloc i1 temp_6_273 
                    #      alloc i32 temp_7_32 
                    #      alloc i32 temp_8_32 
                    #      alloc i1 temp_9_34 
                    #      alloc i1 temp_10_34 
                    #      alloc i1 temp_11_34 
                    #      alloc i32 temp_12_36 
                    #      alloc i32 temp_13_36 
                    #      label L0_0: 
.L0_0:
                    #      sum_17 = i32 0_0 
    li      a0, 0
                    #      new_var c_17:i32 
                    #      jump label: while.head_20 
    j       .while.head_20
                    #      label while.head_20: 
.while.head_20:
                    #      new_var temp_0_93:i1 
                    #      temp_0_93 = icmp i32 Ne 1_0, 0_0 
    li      a1, 1
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
                    #      br i1 temp_0_93, label while.body_20, label while.exit_20 
    bnez    a3, .while.body_20
    j       .while.exit_20
                    #      label while.body_20: 
.while.body_20:
                    #      new_var temp_1_21:i32 
                    #      temp_1_21 =  Call i32 getch_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,44(sp)
    sw      a0,32(sp)
                    #      new_var temp_2_21:i32 
                    #      temp_2_21 = Sub i32 temp_1_21, 48_0 
    li      a4, 48
    sub     a5,a0,a4
                    #      c_17 = i32 temp_2_21 
    mv      a6, a5
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_3_23:i1 
                    #      temp_3_23 = icmp i32 Sgt 9_0, c_17 
    li      a7, 9
    slt     s1,a6,a7
                    #      new_var temp_4_23:i1 
                    #      temp_4_23 = icmp i32 Slt c_17, 0_0 
                    #found literal reg Some(a2) already exist with 0_0
    slt     s2,a6,a2
                    #      new_var temp_5_23:i1 
                    #      temp_5_23 = Or i1 temp_4_23, temp_3_23 
                    #      br i1 temp_5_23, label branch_true_24, label branch_false_24 
    bnez    s3, .branch_true_24
    j       .branch_false_24
                    #      label branch_true_24: 
.branch_true_24:
                    #      jump label: while.exit_20 
    j       .while.exit_20
                    #      label branch_false_24: 
.branch_false_24:
                    #      jump label: while.exit_20 
    j       .while.exit_20
                    #      label while.exit_20: 
.while.exit_20:
                    #      sum_17 = i32 c_17 
    mv      s4, a6
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_6_273:i1 
                    #      temp_6_273 = icmp i32 Ne 1_0, 0_0 
                    #found literal reg Some(a1) already exist with 1_0
                    #found literal reg Some(a2) already exist with 0_0
    xor     s5,a1,a2
    snez    s5, s5
                    #      br i1 temp_6_273, label while.body_31, label while.exit_31 
    bnez    s5, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_7_32:i32 
                    #      temp_7_32 =  Call i32 getch_0() 
                    #saved register dumping to mem
    sb      s1,27(sp)
    sb      s2,26(sp)
    sb      s3,25(sp)
    sw      s4,44(sp)
    sb      s5,24(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getch
    sw      a0,32(sp)
    sw      a0,20(sp)
                    #      new_var temp_8_32:i32 
                    #      temp_8_32 = Sub i32 temp_7_32, 48_0 
                    #found literal reg Some(a4) already exist with 48_0
    sub     s1,a0,a4
                    #      c_17 = i32 temp_8_32 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_9_34:i1 
                    #      temp_9_34 = icmp i32 Sle 9_0, c_17 
                    #found literal reg Some(a7) already exist with 9_0
    slt     s2,a6,a7
    xori    s2,s2,1
                    #      new_var temp_10_34:i1 
                    #      temp_10_34 = icmp i32 Sge c_17, 0_0 
                    #found literal reg Some(a2) already exist with 0_0
    slt     s3,a6,a2
    xori    s3,s3,1
                    #      new_var temp_11_34:i1 
                    #      temp_11_34 = And i1 temp_10_34, temp_9_34 
    and     s4,s3,s2
                    #      br i1 temp_11_34, label branch_true_35, label branch_false_35 
    bnez    s4, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      new_var temp_12_36:i32 
                    #      temp_12_36 = Mul i32 sum_17, 10_0 
    li      s6, 10
    mul     s7,s5,s6
                    #      new_var temp_13_36:i32 
                    #      temp_13_36 = Add i32 temp_12_36, c_17 
    add     s8,s7,a6
                    #      sum_17 = i32 temp_13_36 
                    #      label branch_false_35: 
.branch_false_35:
                    #      jump label: while.exit_31 
    j       .while.exit_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      ret sum_17 
    ld      ra,56(sp)
    ld      s0,48(sp)
    sw      s5,44(sp)
    sw      a0,20(sp)
    addi    sp,sp,64
    ret
.section        .data
    .align 4
    .globl ascii_0
                    #      global i32 ascii_0_0 
    .type ascii_0,@object
ascii_0:
    .word 48
