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
                    #      Define ififElse_0 [] -> ififElse_ret_0 
    .globl ififElse
    .type ififElse,@function
ififElse:
                    #mem layout:|ra_ififElse:8|s0_ififElse:8|a:4|b:4|temp_0:1|temp_1:1|none:2|temp_2:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    #      alloc i32 a_17 
                    #      alloc i32 b_17 
                    #      alloc i1 temp_0_22 
                    #      alloc i1 temp_1_24 
                    #      alloc i32 temp_2_24 
                    #      label L1_0: 
.L1_0:
                    #      new_var a_17:i32 
                    #      a_17 = i32 5_0 
    li      a0, 5
                    #      new_var b_17:i32 
                    #      b_17 = i32 10_0 
    li      a1, 10
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
                    #      label branch_true_23: 
.branch_true_23:
                    #      new_var temp_1_24:i1 
                    #      temp_1_24 = icmp i32 Eq b_17, 10_0 
    li      a2, 10
    xor     a4,a1,a2
    seqz    a4, a4
                    #      br i1 temp_1_24, label branch_true_25, label branch_false_25 
    bnez    a4, .branch_true_25
    j       .branch_false_25
                    #      label branch_true_25: 
.branch_true_25:
                    #      a_17 = i32 25_0 
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_25: 
.branch_false_25:
                    #      new_var temp_2_24:i32 
                    #      temp_2_24 = Add i32 a_17, 15_0 
    li      a2, 15
    add     a5,a0,a2
                    #      a_17 = i32 temp_2_24 
                    #      jump label: L3_0 
    sw      a5,0(sp)
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label branch_false_23: 
.branch_false_23:
                    #      label L4_0: 
.L4_0:
                    #      ret a_17 
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    addi    sp,sp,32
    ret
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|temp_3:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 temp_3_30 
                    #      label L0_0: 
.L0_0:
                    #      new_var temp_3_30:i32 
                    #      temp_3_30 =  Call i32 ififElse_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    ififElse
    sw      a0,4(sp)
                    #      ret temp_3_30 
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    addi    sp,sp,24
    ret
