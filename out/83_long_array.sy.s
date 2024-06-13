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
    .global N_0
                    ;      global i32 N_0 
    .type N_0 @object
N_0:
    .word 10000
.section
    .text
                    ;      Define long_array_0 [k_17] -> long_array_ret_0 
    .global long_array
    .type long_array @function
long_array:
                    ;mem layout:|ra_long_array:8|s0_long_array:8|k:4|a1:40000|a2:40000|a3:40000|i:4|ans:4|none:4
    addi    sp,sp,-120032
    sd      ra,120024(sp)
    sd      s0,120016(sp)
    addi    s0,sp,120032
    sw      a0,120012(sp)
                    ;      alloc Array:i32:[Some(10000_0)] a1_19 
                    ;      alloc Array:i32:[Some(10000_0)] a2_19 
                    ;      alloc Array:i32:[Some(10000_0)] a3_19 
                    ;      alloc i32 i_19 
                    ;      alloc i32 ans_19 
                    ;      label L1_0: 
L1_0:
                    ;      new_var a1_19:Array:i32:[Some(10000_0)] 
                    ;      new_var a2_19:Array:i32:[Some(10000_0)] 
                    ;      new_var a3_19:Array:i32:[Some(10000_0)] 
                    ;      i_19 = i32 0_0 
    li      s1, 0
    sw      s1,8(sp)
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L2_0: 
L2_0:
                    ;      label L3_0: 
L3_0:
                    ;      jump label: L2_0 
    j       L2_0
                    ;      label L4_0: 
L4_0:
                    ;      i_19 = i32 0_0 
    li      s1, 0
    sw      s1,8(sp)
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
                    ;      i_19 = i32 0_0 
    li      s1, 0
    sw      s1,8(sp)
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
                    ;      ans_19 = i32 0_0 
    li      s1, 0
    sw      s1,4(sp)
                    ;      i_19 = i32 0_0 
    li      s1, 0
    sw      s1,8(sp)
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L30_0 
    j       L30_0
                    ;      label L14_0: 
L14_0:
                    ;      label L15_0: 
L15_0:
                    ;      jump label: L16_0 
    j       L16_0
                    ;      label L16_0: 
L16_0:
                    ;      label L17_0: 
L17_0:
                    ;      jump label: L16_0 
    j       L16_0
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L29_0 
    j       L29_0
                    ;      label L19_0: 
L19_0:
                    ;      label L20_0: 
L20_0:
                    ;      jump label: L21_0 
    j       L21_0
                    ;      label L21_0: 
L21_0:
                    ;      label L22_0: 
L22_0:
                    ;      label L23_0: 
L23_0:
                    ;      jump label: L25_0 
    j       L25_0
                    ;      label L24_0: 
L24_0:
                    ;      jump label: L25_0 
    j       L25_0
                    ;      label L25_0: 
L25_0:
                    ;      label L26_0: 
L26_0:
                    ;      jump label: L28_0 
    j       L28_0
                    ;      label L27_0: 
L27_0:
                    ;      jump label: L28_0 
    j       L28_0
                    ;      label L28_0: 
L28_0:
                    ;      label L29_0: 
L29_0:
                    ;      label L30_0: 
L30_0:
                    ;      label L31_0: 
L31_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L32_0: 
L32_0:
                    ;      ret 
    ld      ra,120024(sp)
    ld      s0,120016(sp)
    addi    sp,sp,-120032
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

