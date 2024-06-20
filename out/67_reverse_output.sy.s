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
                    #      Define reverse_0 [n_16] -> reverse_ret_0 
    .globl reverse
    .type reverse,@function
reverse:
                    #mem layout:|ra_reverse:8|s0_reverse:8|n:4|next:4|temp_0:1|none:3|temp_1:4|temp_2:4|temp_3:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    #      alloc i32 next_18 
                    #      alloc i1 temp_0_20 
                    #      alloc i32 temp_1_22 
                    #      alloc i32 temp_2_25 
                    #      alloc i32 temp_3_25 
                    #      label L1_0: 
.L1_0:
                    #      new_var next_18:i32 
                    #      jump label: L2_0 
    j       .L2_0
                    #      label L2_0: 
.L2_0:
                    #      new_var temp_0_20:i1 
                    #      temp_0_20 = icmp i32 Sle n_16, 1_0 
    li      a1, 1
    slt     a2,a1,a0
    xori    a2,a2,1
                    #      br i1 temp_0_20, label branch_true_21, label branch_false_21 
    bnez    a2, .branch_true_21
    j       .branch_false_21
                    #      label branch_true_21: 
.branch_true_21:
                    #      new_var temp_1_22:i32 
                    #      temp_1_22 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,20(sp)
    sw      a0,8(sp)
                    #      next_18 = i32 temp_1_22 
    mv      a3, a0
                    #       Call void putint_0(next_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a3,16(sp)
    sw      a0,8(sp)
                    #arg load ended
    call    putint
                    #      jump label: L3_0 
    j       .L3_0
                    #      label branch_false_21: 
.branch_false_21:
                    #      new_var temp_2_25:i32 
                    #      temp_2_25 =  Call i32 getint_0() 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
                    #arg load ended
    call    getint
    sw      a0,4(sp)
                    #      next_18 = i32 temp_2_25 
    mv      a3, a0
                    #      new_var temp_3_25:i32 
                    #      temp_3_25 = Sub i32 n_16, 1_0 
                    #found literal reg Some(a1) already exist with 1_0
    sub     a5,a4,a1
                    #       Call void reverse_0(temp_3_25) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a5,0(sp)
    sw      a0,4(sp)
                    #arg load ended
    call    reverse
                    #       Call void putint_0(next_18) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a3,16(sp)
                    #arg load ended
    call    putint
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
                    #mem layout:|ra_main:8|s0_main:8|i:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    #      alloc i32 i_30 
                    #      label L0_0: 
.L0_0:
                    #      i_30 = i32 200_0 
    li      a0, 200
                    #       Call void reverse_0(i_30) 
                    #saved register dumping to mem
                    #saved register dumped to mem
                    #arg load start
    sw      a0,4(sp)
                    #arg load ended
    call    reverse
                    #      ret 0_0 
    ld      ra,16(sp)
    ld      s0,8(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
