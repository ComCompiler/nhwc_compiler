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
                    #      Define ifWhile_0 [] -> ifWhile_ret_0 
    .globl ifWhile
    .type ifWhile,@function
ifWhile:
                    #mem layout:|ra_ifWhile:8|s0_ifWhile:8|a:4|b:4|temp_0:1|temp_1:1|none:2|temp_2:4|temp_3:4|temp_4:1|none:3|temp_5:4|temp_6:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i1 temp_1_25 
                    #      alloc i32 temp_2_27 
                    #      alloc i32 temp_3_24 
                    #      alloc i1 temp_4_30 
                    #      alloc i32 temp_5_32 
                    #      alloc i32 temp_6_32 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 0_0 
    li      a0, 0
                    #      new_var b_17:i32 
                    #      b_17 = i32 3_0 
    li      a1, 3
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_0_22:i1 
                    #      temp_0_22 = icmp i32 Eq a_17, 5_0 
    li      a2, 5
    xor     a3,a0,a2
    seqz    a3, a3
                    #      br i1 temp_0_22, label branch_true_23, label branch_false_23 
    bnez    a3, .branch_true_23
    j       .branch_false_23
                    #      label while.head_26: 
.while.head_26:
                    #      new_var temp_1_25:i1 
                    #      temp_1_25 = icmp i32 Eq b_17, 2_0 
    li      a4, 2
    xor     a5,a1,a4
    seqz    a5, a5
                    #      br i1 temp_1_25, label while.body_26, label while.exit_26 
    bnez    a5, .while.body_26
    j       .while.exit_26
                    #      label while.body_26: 
.while.body_26:
                    #      new_var temp_2_27:i32 
                    #      temp_2_27 = Add i32 b_17, 2_0 
                    #found literal reg Some(a4) already exist with 2_0
    add     a6,a1,a4
                    #      b_17 = i32 temp_2_27 
                    #      jump label: while.head_26 
    j       .while.head_26
                    #      label while.exit_26: 
.while.exit_26:
                    #      new_var temp_3_24:i32 
                    #      temp_3_24 = Add i32 b_17, 25_0 
    li      a7, 25
    add     s1,a1,a7
                    #      b_17 = i32 temp_3_24 
                    #      jump label: while.exit_31 
    j       .while.exit_31
                    #      label while.head_31: 
.while.head_31:
                    #      new_var temp_4_30:i1 
                    #      temp_4_30 = icmp i32 Slt a_17, 5_0 
                    #found literal reg Some(a2) already exist with 5_0
    slt     s2,a0,a2
                    #      br i1 temp_4_30, label while.body_31, label while.exit_31 
    bnez    s2, .while.body_31
    j       .while.exit_31
                    #      label while.body_31: 
.while.body_31:
                    #      new_var temp_5_32:i32 
                    #      temp_5_32 = Mul i32 b_17, 2_0 
                    #found literal reg Some(a4) already exist with 2_0
    mul     s3,a1,a4
                    #      b_17 = i32 temp_5_32 
                    #      new_var temp_6_32:i32 
                    #      temp_6_32 = Add i32 a_17, 1_0 
    li      s4, 1
    add     s5,a0,s4
                    #      a_17 = i32 temp_6_32 
                    #      jump label: while.head_31 
    j       .while.head_31
                    #      label while.exit_31: 
.while.exit_31:
                    #      label L3_0: 
.L3_0:
                    #      ret b_17 
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a1,24(sp)
    sw      a0,28(sp)
    addi    sp,sp,48
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_7:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_7_37 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_7_37:i32 
                    #      temp_7_37 =  Call i32 ifWhile_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    ifWhile
    sw      a0,4(sp)
                    #      ret temp_7_37 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
