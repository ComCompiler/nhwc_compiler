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
                    #mem layout:|ra_main:8|s0_main:8|a:4|b:4|temp_0:4|temp_1:4|temp_2:1|temp_3:1|temp_4:1|temp_5:1|temp_6:1|temp_7:1|temp_8:1|none:1|temp_9:4|none:4
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i32 temp_0_17 
                    #      alloc i32 temp_1_17 
                    #      alloc i1 temp_2_22 
                    #      alloc i1 temp_3_22 
                    #      alloc i1 temp_4_22 
                    #      alloc i1 temp_5_22 
                    #      alloc i1 temp_6_22 
                    #      alloc i1 temp_7_22 
                    #      alloc i1 temp_8_22 
                    #      alloc i32 temp_9_26 
                    #      label L0_0: 
.L0_0:
                    #      new_var a_17:i32 
                    #      new_var b_17:i32 
                    #      a_17 = i32 070_0 
    li      a0, 070
                    #      b_17 = i32 0x4_0 
    li      a1, 0x4
                    #      new_var temp_0_17:i32 
                    #      temp_0_17 = Add i32 b_17, -4_0 
    li      a2, -4
    add     a3,a1,a2
                    #      new_var temp_1_17:i32 
                    #      temp_1_17 = Sub i32 a_17, temp_0_17 
    sub     a4,a0,a3
                    #      a_17 = i32 temp_1_17 
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      new_var temp_2_22:i1 
                    #      temp_2_22 = icmp i1 Ne a_17, 0_0 
    li      a2, 0
    xor     a5,a0,a2
    snez    a5, a5
                    #      new_var temp_3_22:i1 
                    #      temp_3_22 = xor i1 temp_2_22, true 
    seqz    a6, a5
                    #      new_var temp_4_22:i1 
                    #      new_var temp_5_22:i1 
                    #      temp_5_22 = xor i1 temp_4_22, true 
    seqz    s1, a7
                    #      new_var temp_6_22:i1 
                    #      new_var temp_7_22:i1 
                    #      temp_7_22 = xor i1 temp_6_22, true 
    seqz    s3, s2
                    #      new_var temp_8_22:i1 
                    #      temp_8_22 = Sub i1 0_0, temp_7_22 
                    #found literal reg Some(a2) already exist with 0_0
    sub     s4,a2,s3
                    #      br i1 temp_8_22, label branch_true_23, label branch_false_23 
    bnez    s4, .branch_true_23
    j       .branch_false_23
                    #      label branch_true_23: 
.branch_true_23:
                    #      a_17 = i32 -1_0 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label branch_false_23: 
.branch_false_23:
                    #      new_var temp_9_26:i32 
                    #      temp_9_26 = Add i32 0_0, b_17 
    li      a2, 0
    add     s5,a2,a1
                    #      a_17 = i32 temp_9_26 
                    #      jump label: L2_0 
    sw      s5,4(sp)
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      label L3_0: 
.L3_0:
                    #       Call void putint_0(a_17) 
                    #saved register dumping to mem
    sb      s1,12(sp)
    sb      s2,11(sp)
    sb      s3,10(sp)
    sb      s4,9(sp)
                    #saved register dumped to mem
                    #arg load start
    sw      a0,28(sp)
    lw      a0,28(sp)
                    #arg load ended
    call    putint
                    #      ret 0_0 
    ld      ra,40(sp)
    ld      s0,32(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
