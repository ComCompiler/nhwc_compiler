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
                    #      Define func_0 [] -> func_ret_0 
    .globl func
    .type func,@function
func:
                    #mem layout:|ra_func:8|s0_func:8|temp_0:4|b:4|a:4|temp_1:1|none:3|temp_2:4|none:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 temp_0_18 
                    #      alloc i32 b_18 
                    #      alloc i32 a_18 
                    #      alloc i1 temp_1_21 
                    #      alloc i32 temp_2_23 
                    #      label L4_0: 
.L4_0:
                    #      new_var temp_0_18:i32 
                    #      temp_0_18 = load *a_0:ptr->i32 
                    #   load label a as ptr to reg
    la      a0, a
                    #occupy reg a0 with *a_0
    lw      a1,0(a0)
                    #occupy reg a1 with a_0
                    #      b_18 = i32 temp_0_18 
    mv      a3, a2
                    #      a_18 = i32 1_0 
    li      a4, 1
                    #      jump label: L5_0 
    j       .L5_0
                    #      label L5_0: 
.L5_0:
                    #      new_var temp_1_21:i1 
                    #      temp_1_21 = icmp i32 Eq a_18, b_18 
    xor     a5,a4,a3
    seqz    a5, a5
                    #      br i1 temp_1_21, label branch_true_22, label branch_false_22 
    bnez    a5, .branch_true_22
    j       .branch_false_22
                    #      label branch_true_22: 
.branch_true_22:
                    #      new_var temp_2_23:i32 
                    #      temp_2_23 = Add i32 a_18, 1_0 
    li      a6, 1
    add     a7,a4,a6
                    #      a_18 = i32 temp_2_23 
                    #      ret 1_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
                    #      label branch_false_22: 
.branch_false_22:
                    #      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
                    #      label L6_0: 
.L6_0:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|result:4|i:4|temp_3:1|none:3|temp_4:4|temp_5:1|none:3|temp_6:4|temp_7:4|temp_8:1|none:3
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 result_28 
                    #      alloc i32 i_28 
                    #      alloc i1 temp_3_31 
                    #      alloc i32 temp_4_34 
                    #      alloc i1 temp_5_34 
                    #      alloc i32 temp_6_34 
                    #      alloc i32 temp_7_33 
                    #      alloc i1 temp_8_38 
                    #      label L0_0: 
.L0_0:
                    #      result_28 = i32 0_0 
    li      a0, 0
                    #      i_28 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.head_32: 
.while.head_32:
                    #      new_var temp_3_31:i1 
                    #      temp_3_31 = icmp i32 Slt i_28, 100_0 
    li      a2, 100
    slt     a3,a1,a2
                    #      br i1 temp_3_31, label while.body_32, label while.exit_32 
    bnez    a3, .while.body_32
    j       .while.exit_32
                    #      label while.body_32: 
.while.body_32:
                    #      new_var temp_4_34:i32 
                    #      temp_4_34 =  Call i32 func_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    func
    sw      a0,28(sp)
    sw      a0,16(sp)
                    #      new_var temp_5_34:i1 
                    #      temp_5_34 = icmp i32 Eq temp_4_34, 1_0 
    li      a4, 1
    xor     a5,a0,a4
    seqz    a5, a5
                    #      br i1 temp_5_34, label branch_true_35, label branch_false_35 
    bnez    a5, .branch_true_35
    j       .branch_false_35
                    #      label branch_true_35: 
.branch_true_35:
                    #      new_var temp_6_34:i32 
                    #      temp_6_34 = Add i32 result_28, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     a7,a6,a4
                    #      result_28 = i32 temp_6_34 
                    #      jump label: branch_false_35 
    j       .branch_false_35
                    #      label branch_false_35: 
.branch_false_35:
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_7_33:i32 
                    #      temp_7_33 = Add i32 i_28, 1_0 
                    #found literal reg Some(a4) already exist with 1_0
    add     s1,a1,a4
                    #      i_28 = i32 temp_7_33 
                    #      jump label: while.head_32 
    j       .while.head_32
                    #      label while.exit_32: 
.while.exit_32:
                    #      new_var temp_8_38:i1 
                    #      temp_8_38 = icmp i32 Slt result_28, 100_0 
                    #found literal reg Some(a2) already exist with 100_0
    slt     s2,a6,a2
                    #      br i1 temp_8_38, label branch_true_39, label branch_false_39 
    bnez    s2, .branch_true_39
    j       .branch_false_39
                    #      label branch_true_39: 
.branch_true_39:
                    #       Call void putint_0(1_0) 
                    #saved register dumping to mem
    sw      s1,4(sp)
    sb      s2,3(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,16(sp)
    li      a0, 1
                    #arg load ended
    call    putint
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_39: 
.branch_false_39:
                    #       Call void putint_0(0_0) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    li      a0, 0
                    #arg load ended
    call    putint
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #      ret 0_0 
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.section        .data
    .align 4
    .globl a
                    #      global i32 a_0 
    .type a,@object
a:
    .word 7
