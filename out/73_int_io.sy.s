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
    .global ascii_0_0
                    ;      global i32 ascii_0_0 
    .type ascii_0_0 @object
ascii_0_0:
    .word 48
.section
    .text
                    ;      Define my_getint_0 [] -> my_getint_ret_0 
    .global my_getint
    .type my_getint @function
my_getint:
                    ;mem layout:|ra_my_getint:8|s0_my_getint:8|sum:4|c:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
                    ;      alloc i32 sum_18 
                    ;      alloc i32 c_18 
                    ;      label L9_0: 
L9_0:
                    ;      sum_18 = i32 0_0 
    li      s1, 0
    sw      s1,4(sp)
                    ;      new_var c_18:i32 
                    ;      jump label: L10_0 
    j       L10_0
                    ;      label L10_0: 
L10_0:
                    ;      label L11_0: 
L11_0:
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L15_0 
    j       L15_0
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L15_0 
    j       L15_0
                    ;      label L15_0: 
L15_0:
                    ;      label L16_0: 
L16_0:
                    ;      jump label: L17_0 
    j       L17_0
                    ;      label L17_0: 
L17_0:
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L19_0 
    j       L19_0
                    ;      label L19_0: 
L19_0:
                    ;      label L20_0: 
L20_0:
                    ;      jump label: L22_0 
    j       L22_0
                    ;      label L21_0: 
L21_0:
                    ;      jump label: L22_0 
    j       L22_0
                    ;      label L22_0: 
L22_0:
                    ;      label L23_0: 
L23_0:
                    ;      Define my_putint_0 [a_42] -> my_putint_ret_0 
    .global my_putint
    .type my_putint @function
my_putint:
                    ;mem layout:|ra_my_putint:8|s0_my_putint:8|a:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      label L4_0: 
L4_0:
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L5_0: 
L5_0:
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L7_0: 
L7_0:
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L7_0 
    j       L7_0
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
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L1_0: 
L1_0:
                    ;      label L2_0: 
L2_0:
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L3_0: 
L3_0:

