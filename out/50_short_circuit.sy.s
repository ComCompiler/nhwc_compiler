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
                    #      Define func_0 [n_17] -> func_ret_0 
    .globl func
    .type func,@function
func:
                    #mem layout:|ra_func:8|s0_func:8|n:4|temp_0:4|temp_1:4|temp_2:4|temp_3:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_0_19 
                    #      alloc i32 temp_1_19 
                    #      alloc i32 temp_2_19 
                    #      alloc i32 temp_3_19 
                    #      label L15_0: 
.L15_0:
                    #      new_var temp_0_19:i32 
                    #      temp_0_19 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a1, g
                    #occupy reg a1 with *g_0
    lw      a2,0(a1)
                    #      new_var temp_1_19:i32 
                    #      temp_1_19 = Add i32 temp_0_19, n_17 
    add     a3,a2,a0
                    #      store temp_1_19:i32 *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a4, g
                    #occupy reg a4 with *g_0
    sd      a3,0(a4)
                    #      new_var temp_2_19:i32 
                    #      temp_2_19 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a5, g
                    #occupy reg a5 with *g_0
    lw      a6,0(a5)
                    #       Call void putint_0(temp_2_19) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a6,8(sp)
    sw      a0,20(sp)
                    #arg load ended
    call    putint
                    #      new_var temp_3_19:i32 
                    #      temp_3_19 = load *g_0:ptr->i32 
                    #   load label g as ptr to reg
    la      a0, g
                    #occupy reg a0 with *g_0
    lw      a6,0(a0)
                    #      ret temp_3_19 
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a6,4(sp)
    addi    sp,sp,40
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|temp_4:4|temp_5:4|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|temp_10:4|temp_11:1|temp_12:1|temp_13:1|none:1|temp_14:4|temp_15:4|temp_16:1|temp_17:1|temp_18:1|none:1|temp_19:4|temp_20:4|temp_21:1|temp_22:1|temp_23:1|none:1|temp_24:4|temp_25:4|temp_26:1|temp_27:1|temp_28:1|temp_29:1
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 i_24 
                    #      alloc i32 temp_4_24 
                    #      alloc i32 temp_5_27 
                    #      alloc i1 temp_6_27 
                    #      alloc i1 temp_7_27 
                    #      alloc i1 temp_8_27 
                    #      alloc i32 temp_9_24 
                    #      alloc i32 temp_10_32 
                    #      alloc i1 temp_11_32 
                    #      alloc i1 temp_12_32 
                    #      alloc i1 temp_13_32 
                    #      alloc i32 temp_14_24 
                    #      alloc i32 temp_15_37 
                    #      alloc i1 temp_16_37 
                    #      alloc i1 temp_17_37 
                    #      alloc i1 temp_18_37 
                    #      alloc i32 temp_19_24 
                    #      alloc i32 temp_20_42 
                    #      alloc i1 temp_21_42 
                    #      alloc i1 temp_22_42 
                    #      alloc i1 temp_23_42 
                    #      alloc i32 temp_24_46 
                    #      alloc i32 temp_25_46 
                    #      alloc i1 temp_26_46 
                    #      alloc i1 temp_27_46 
                    #      alloc i1 temp_28_46 
                    #      alloc i1 temp_29_46 
                    #      label L0_0: 
.L0_0:
                    #      new_var i_24:i32 
                    #      new_var temp_4_24:i32 
                    #      temp_4_24 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,56(sp)
                    #      i_24 = i32 temp_4_24 
    mv      a1, a0
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_5_27:i32 
                    #      temp_5_27 =  Call i32 func_0(i_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,60(sp)
    sw      a0,56(sp)
                    #arg load ended
    call    func
    sw      a0,52(sp)
                    #      new_var temp_6_27:i1 
                    #      temp_6_27 = icmp i32 Sgt i_24, 10_0 
    li      a2, 10
    slt     a3,a2,a1
                    #      new_var temp_7_27:i1 
                    #      temp_7_27 = icmp i32 Ne temp_5_27, 0_0 
    li      a4, 0
    xor     a5,a0,a4
    snez    a5, a5
                    #      new_var temp_8_27:i1 
                    #      temp_8_27 = And i1 temp_6_27, temp_7_27 
    and     a6,a3,a5
                    #      br i1 temp_8_27, label branch_true_28, label branch_false_28 
    bnez    a6, .branch_true_28
    j       .branch_false_28
                    #      label branch_true_28: 
.branch_true_28:
                    #      i_24 = i32 1_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_28: 
.branch_false_28:
                    #      i_24 = i32 0_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      new_var temp_9_24:i32 
                    #      temp_9_24 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,52(sp)
    sw      a0,44(sp)
                    #      i_24 = i32 temp_9_24 
                    #      jump label: L4_0 
    j       .L4_0
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_10_32:i32 
                    #      temp_10_32 =  Call i32 func_0(i_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,60(sp)
    sw      a0,44(sp)
                    #arg load ended
    call    func
    sw      a0,40(sp)
                    #      new_var temp_11_32:i1 
                    #      temp_11_32 = icmp i32 Sgt i_24, 11_0 
    li      a7, 11
    slt     s1,a7,a1
                    #      new_var temp_12_32:i1 
                    #      temp_12_32 = icmp i32 Ne temp_10_32, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s2,a0,a4
    snez    s2, s2
                    #      new_var temp_13_32:i1 
                    #      temp_13_32 = And i1 temp_11_32, temp_12_32 
    and     s3,s1,s2
                    #      br i1 temp_13_32, label branch_true_33, label branch_false_33 
    bnez    s3, .branch_true_33
    j       .branch_false_33
                    #      label branch_true_33: 
.branch_true_33:
                    #      i_24 = i32 1_0 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label branch_false_33: 
.branch_false_33:
                    #      i_24 = i32 0_0 
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      label L6_0: 
.L6_0:
                    #      new_var temp_14_24:i32 
                    #      temp_14_24 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sb      s1,39(sp)
    sb      s2,38(sp)
    sb      s3,37(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,40(sp)
    sw      a0,32(sp)
                    #      i_24 = i32 temp_14_24 
                    #      jump label: L7_0 
    j       .L7_0
                    #      label L7_0: 
.L7_0:
                    #      new_var temp_15_37:i32 
                    #      temp_15_37 =  Call i32 func_0(i_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,60(sp)
    sw      a0,32(sp)
                    #arg load ended
    call    func
    sw      a0,28(sp)
                    #      new_var temp_16_37:i1 
                    #      temp_16_37 = icmp i32 Sle i_24, 99_0 
    li      s1, 99
    slt     s2,s1,a1
    xori    s2,s2,1
                    #      new_var temp_17_37:i1 
                    #      temp_17_37 = icmp i32 Ne temp_15_37, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s3,a0,a4
    snez    s3, s3
                    #      new_var temp_18_37:i1 
                    #      temp_18_37 = Or i1 temp_16_37, temp_17_37 
                    #      br i1 temp_18_37, label branch_true_38, label branch_false_38 
    bnez    s4, .branch_true_38
    j       .branch_false_38
                    #      label branch_true_38: 
.branch_true_38:
                    #      i_24 = i32 1_0 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label branch_false_38: 
.branch_false_38:
                    #      i_24 = i32 0_0 
                    #      jump label: L8_0 
    j       .L8_0
                    #      label L8_0: 
.L8_0:
                    #      label L9_0: 
.L9_0:
                    #      new_var temp_19_24:i32 
                    #      temp_19_24 =  Call i32 getint_0() 
                    #saved register dumping to mem
    sb      s2,27(sp)
    sb      s3,26(sp)
    sb      s4,25(sp)
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,28(sp)
    sw      a0,20(sp)
                    #      i_24 = i32 temp_19_24 
                    #      jump label: L10_0 
    j       .L10_0
                    #      label L10_0: 
.L10_0:
                    #      new_var temp_20_42:i32 
                    #      temp_20_42 =  Call i32 func_0(i_24) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a1,60(sp)
    sw      a0,20(sp)
                    #arg load ended
    call    func
    sw      a0,16(sp)
                    #      new_var temp_21_42:i1 
                    #      temp_21_42 = icmp i32 Sle i_24, 100_0 
    li      s1, 100
    slt     s2,s1,a1
    xori    s2,s2,1
                    #      new_var temp_22_42:i1 
                    #      temp_22_42 = icmp i32 Ne temp_20_42, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s3,a0,a4
    snez    s3, s3
                    #      new_var temp_23_42:i1 
                    #      temp_23_42 = Or i1 temp_21_42, temp_22_42 
                    #      br i1 temp_23_42, label branch_true_43, label branch_false_43 
    bnez    s4, .branch_true_43
    j       .branch_false_43
                    #      label branch_true_43: 
.branch_true_43:
                    #      i_24 = i32 1_0 
                    #      jump label: L11_0 
    j       .L11_0
                    #      label branch_false_43: 
.branch_false_43:
                    #      i_24 = i32 0_0 
                    #      jump label: L11_0 
    j       .L11_0
                    #      label L11_0: 
.L11_0:
                    #      label L12_0: 
.L12_0:
                    #      new_var temp_24_46:i32 
                    #      temp_24_46 =  Call i32 func_0(100_0) 
                    #saved register dumping to mem
    sb      s2,15(sp)
    sb      s3,14(sp)
    sb      s4,13(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    li      a0, 100
                    #arg load ended
    call    func
    sw      a0,8(sp)
                    #      new_var temp_25_46:i32 
                    #      temp_25_46 =  Call i32 func_0(99_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,8(sp)
    li      a0, 99
                    #arg load ended
    call    func
    sw      a0,4(sp)
                    #      new_var temp_26_46:i1 
                    #      temp_26_46 = icmp i1 Ne temp_25_46, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s1,a0,a4
    snez    s1, s1
                    #      new_var temp_27_46:i1 
                    #      temp_27_46 = xor i1 temp_26_46, true 
    seqz    s2, s1
                    #      new_var temp_28_46:i1 
                    #      temp_28_46 = icmp i32 Ne temp_24_46, 0_0 
                    #found literal reg Some(a4) already exist with 0_0
    xor     s4,s3,a4
    snez    s4, s4
                    #      new_var temp_29_46:i1 
                    #      temp_29_46 = And i1 temp_27_46, temp_28_46 
    and     s5,s2,s4
                    #      br i1 temp_29_46, label branch_true_47, label branch_false_47 
    bnez    s5, .branch_true_47
    j       .branch_false_47
                    #      label branch_true_47: 
.branch_true_47:
                    #      i_24 = i32 1_0 
                    #      jump label: L13_0 
    j       .L13_0
                    #      label branch_false_47: 
.branch_false_47:
                    #      i_24 = i32 0_0 
                    #      jump label: L13_0 
    j       .L13_0
                    #      label L13_0: 
.L13_0:
                    #      label L14_0: 
.L14_0:
                    #      ret 0_0 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl g
                    #      global i32 g_0 
    .type g,@object
g:
    .word 0
