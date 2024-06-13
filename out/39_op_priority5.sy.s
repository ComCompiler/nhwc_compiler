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
    .global e_0
                    ;      global i32 e_0 
    .type e_0 @object
e_0:
    .word 4
    .align 4
    .global d_0
                    ;      global i32 d_0 
    .type d_0 @object
d_0:
    .word 2
    .align 4
    .global c_0
                    ;      global i32 c_0 
    .type c_0 @object
c_0:
    .word 1
    .align 4
    .global b_0
                    ;      global i32 b_0 
    .type b_0 @object
b_0:
    .word 0
    .align 4
    .global a_0
                    ;      global i32 a_0 
    .type a_0 @object
a_0:
    .word 1
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|flag:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 flag_22 
                    ;      label L0_0: 
L0_0:
                    ;      flag_22 = i32 0_0 
    li      s1, 0
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

