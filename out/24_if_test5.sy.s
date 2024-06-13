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
                    ;      Define if_if_Else_0 [] -> if_if_Else_ret_0 
    .global if_if_Else
    .type if_if_Else @function
if_if_Else:
                    ;mem layout:|ra_if_if_Else:8|s0_if_if_Else:8|a:4|b:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      label L1_0: 
L1_0:
                    ;      new_var a_17:i32 
                    ;      a_17 = i32 5_0 
    li      s1, 5
    sw      s1,4(sp)
                    ;      new_var b_17:i32 
                    ;      b_17 = i32 10_0 
    li      s1, 10
    sw      s1,0(sp)
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L2_0: 
L2_0:
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
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L0_0: 
L0_0:

