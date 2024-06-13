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
    .align 4
    .global c_0
                    ;      global Array:i32:[Some(4_0)] c_0 
    .type c_0 @object
c_0:
    .word 6
    .word 7
    .word 8
    .word 9
    .align 4
    .global b_0
                    ;      global i32 b_0 
    .type b_0 @object
b_0:
    .word 5
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|a:4|a:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 a_19 
                    ;      alloc i32 a_22 
                    ;      label L0_0: 
L0_0:
                    ;      new_var a_19:i32 
                    ;      a_19 = i32 1_0 
    li      s1, 1
    sw      s1,4(sp)
                    ;      new_var a_22:i32 
                    ;      a_22 = i32 2_0 
    li      s1, 2
    sw      s1,0(sp)
                    ;      a_22 = i32 3_0 
    li      s1, 3
    sw      s1,0(sp)
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
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L5_0: 
L5_0:
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L7_0: 
L7_0:
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L9_0: 
L9_0:
                    ;      label L10_0: 
L10_0:

