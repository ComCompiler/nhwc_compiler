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
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|a:4|b:4|c:4|d:4|result:4|temp_0:4
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 c_17 
                    ;      alloc i32 d_17 
                    ;      alloc i32 result_17 
                    ;      alloc i32 temp_0_17 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_17:i32 
                    ;      new_var b_17:i32 
                    ;      new_var c_17:i32 
                    ;      new_var d_17:i32 
                    ;      new_var result_17:i32 
                    ;      a_17 = i32 5_0 
    li      s1, 5
    sw      s1,20(sp)
                    ;      b_17 = i32 5_0 
    li      s1, 5
    sw      s1,16(sp)
                    ;      c_17 = i32 1_0 
    li      s1, 1
    sw      s1,12(sp)
                    ;      new_var temp_0_17:i32 
                    ;      temp_0_17 = Sub i32 0_0, 2_0 
    li      s1, 0
    li      s2, 2
    sub     s3,s1,s2
    sw      s3,0(sp)
                    ;      d_17 = i32 temp_0_17 
    lw      s1,0(sp)
    sw      s1,8(sp)
                    ;      result_17 = i32 2_0 
    li      s1, 2
    sw      s1,4(sp)
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      label L2_0: 
L2_0:
                    ;      jump label: L3_0 
    j       L3_0
                    ;      label L3_0: 
L3_0:
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      result_17 = i32 4_0 
    li      s1, 4
    sw      s1,4(sp)
                    ;      jump label: L6_0 
    j       L6_0
                    ;      label L6_0: 
L6_0:
                    ;      label L7_0: 
L7_0:
                    ;      ret 0_0 
    ld      ra,32(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,-40
    ret

