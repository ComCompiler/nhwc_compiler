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
.section
    .data
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main_0
    .type main @function
main_0:
                    ;mem layout:|ra_main:8|s0_main:8|x:4|temp_0:4|b:4|temp_1:4|temp_2:1|none:7
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
                    ;      alloc i32 x_17 
                    ;      alloc i32 temp_0_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 temp_1_21 
                    ;      alloc i1 temp_2_19 
                    ;      label %1_0: 
%1_0:
                    ;      x_17 = 4_0 
    li      s3, 4
    sw      s3,20(sp)
                    ;      jump label: while.head_20 
    j       while.head_20
                    ;      label while.head_20: 
while.head_20:
                    ;      new_var temp_2_19:i1 
                    ;      temp_2_19 = icmp i1 Slt x_17, 7_0 
    lw      s1,20(sp)
    li      s2, 7
    slt     s3,s1,s2
    sb      s3,7(sp)
                    ;      br i1 temp_2_19, label while.body_20, label while.exit_20 
    lb      s1,7(sp)
    bnez    s1, while.exit_20
    j       while.exit_20
                    ;      label while.body_20: 
while.body_20:
                    ;      new_var temp_1_21:i32 
                    ;      temp_1_21 = Add i32 x_17, 1_0 
    lw      s1,20(sp)
    li      s2, 1
    add     s3,s1,s2
    sw      s3,8(sp)
                    ;      x_17 = temp_1_21 
    lw      s3,8(sp)
    sw      s3,20(sp)
                    ;       Call void putint_0(x_17) 
    lw      a0,20(sp)
    call    putint_0
                    ;      breakpoint bp0_24([x_24.simu_val]) ! 
                    ;      jump label: while.head_20 
    j       while.head_20
                    ;      label while.exit_20: 
while.exit_20:
                    ;      new_var temp_0_17:i32 
                    ;      temp_0_17 =  Call i32 square_0(x_17) 
    lw      a0,20(sp)
    call    square_0
                    ;      b_17 = temp_0_17 
    lw      s3,16(sp)
    sw      s3,12(sp)
                    ;      breakpoint bp1_26([b_26.simu_val, x_26.simu_val]) ! 
                    ;      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,-40
    ret
                    ;      Define square_0 [num_28] -> square_ret_0 
    .global square_0
    .type square @function
square_0:
                    ;mem layout:|ra_square:8|s0_square:8|num:4|temp_3:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    sw      a0,4(sp)
                    ;      alloc i32 temp_3_30 
                    ;      label %0_0: 
%0_0:
                    ;      new_var temp_3_30:i32 
                    ;      temp_3_30 = Mul i32 num_28, num_28 
    lw      s1,4(sp)
    lw      s2,4(sp)
    mul     s3,s1,s2
    sw      s3,0(sp)
                    ;      ret temp_3_30 
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,0(sp)
    addi    sp,sp,-24
    ret

