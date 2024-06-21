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
                    #mem layout:|ra_main:8|s0_main:8|i:4|sum:4|temp_6:1|none:3|temp_7:24|none:4|temp_8:8|temp_9:4|temp_10:4|temp_11:4|none:4
    addi    sp,sp,-80
    sd      ra,72(sp)
    sd      s0,64(sp)
    addi    s0,sp,80
                    #      alloc i32 i_19 
                    #      alloc i32 sum_19 
                    #      alloc i1 temp_6_21 
                    #      alloc Array:i32:[Some(6_0)] temp_7_23 
                    #      alloc ptr->i32 temp_8_23 
                    #      alloc i32 temp_9_23 
                    #      alloc i32 temp_10_23 
                    #      alloc i32 temp_11_23 
                    #      label L0_0: 
.L0_0:
                    #      i_19 = i32 0_0 
    li      a0, 0
                    #      sum_19 = i32 0_0 
    li      a1, 0
                    #      jump label: while.head_22 
    j       .while.head_22
                    #      label while.head_22: 
.while.head_22:
                    #      new_var temp_6_21:i1 
                    #      temp_6_21 = icmp i32 Slt i_19, 6_0 
    li      a2, 6
    slt     a3,a0,a2
                    #      br i1 temp_6_21, label while.body_22, label while.exit_22 
    bnez    a3, .while.body_22
    j       .while.exit_22
                    #      label while.body_22: 
.while.body_22:
                    #      new_var temp_7_23:Array:i32:[Some(6_0)] 
                    #      temp_7_23 = load *arr_0:ptr->i32 
                    #   load label arr as ptr to reg
    la      a2, arr
                    #occupy reg a2 with *arr_0
    lw      a4,0(a2)
                    #      new_var temp_8_23:ptr->i32 
                    #      new_var temp_9_23:i32 
                    #      temp_8_23 = getelementptr temp_7_23:Array:i32:[Some(6_0)] [Some(i_19)] 
    li      a5, 0
    li      a6, 1
    add     a5,a5,a4
    slli a5,a5,2
    add     a5,a5,sp
    add     a5,a5,a5
                    #      temp_9_23 = load temp_8_23:ptr->i32 
    lw      a7,0(a5)
                    #      new_var temp_10_23:i32 
                    #      temp_10_23 = Add i32 sum_19, temp_9_23 
    add     s1,a1,a7
                    #      sum_19 = i32 temp_10_23 
    mv      a1, s1
                    #      new_var temp_11_23:i32 
                    #      temp_11_23 = Add i32 i_19, 1_0 
                    #found literal reg Some(a6) already exist with 1_0
    add     s2,a0,a6
                    #      i_19 = i32 temp_11_23 
    mv      a0, s2
                    #      jump label: while.head_22 
    sw      s2,4(sp)
    sd      a5,16(sp)
    sw      a7,12(sp)
    sw      s1,8(sp)
    sw      a4,48(sp)
    sb      a3,55(sp)
    j       .while.head_22
                    #      label while.exit_22: 
.while.exit_22:
                    #      ret sum_19 
    ld      ra,72(sp)
    ld      s0,64(sp)
    sw      a1,56(sp)
    sw      a0,60(sp)
    addi    sp,sp,80
    ret
.section        .data
    .align 4
    .globl arr
                    #      global Array:i32:[Some(6_0)] arr_0 
    .type arr,@object
arr:
    .word 1
    .word 2
    .word 33
    .word 4
    .word 5
    .word 6
    .zero 19
    .align 4
    .globl N
                    #      global i32 N_0 
    .type N,@object
N:
    .word -1
