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
                    ;      Define FourWhile_0 [] -> FourWhile_ret_0 
    .global FourWhile
    .type FourWhile @function
FourWhile:
                    ;mem layout:|ra_FourWhile:8|s0_FourWhile:8|a:4|b:4|c:4|d:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
                    ;      alloc i32 a_17 
                    ;      alloc i32 b_17 
                    ;      alloc i32 c_17 
                    ;      alloc i32 d_17 
                    ;      label L1_0: 
L1_0:
                    ;      new_var a_17:i32 
                    ;      a_17 = i32 5_0 
    li      s1, 5
    sw      s1,12(sp)
                    ;      new_var b_17:i32 
                    ;      new_var c_17:i32 
                    ;      b_17 = i32 6_0 
    li      s1, 6
    sw      s1,8(sp)
                    ;      c_17 = i32 7_0 
    li      s1, 7
    sw      s1,4(sp)
                    ;      new_var d_17:i32 
                    ;      d_17 = i32 10_0 
    li      s1, 10
    sw      s1,0(sp)
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L2_0: 
L2_0:
                    ;      label L3_0: 
L3_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      jump label: L6_0 
    j       L6_0
                    ;      label L6_0: 
L6_0:
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L8_0 
    j       L8_0
                    ;      label L8_0: 
L8_0:
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L8_0 
    j       L8_0
                    ;      label L10_0: 
L10_0:
                    ;      jump label: L6_0 
    j       L6_0
                    ;      label L11_0: 
L11_0:
                    ;      jump label: L4_0 
    j       L4_0
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L13_0: 
L13_0:
                    ;      ret 
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,-32
    ret
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

