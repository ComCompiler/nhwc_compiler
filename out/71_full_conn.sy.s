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
                    ;      Define relu_reg_0 [a_16] -> relu_reg_ret_0 
    .global relu_reg
    .type relu_reg @function
relu_reg:
                    ;mem layout:|ra_relu_reg:8|s0_relu_reg:8|a:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      label L18_0: 
L18_0:
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L20_0: 
L20_0:
                    ;      label L21_0: 
L21_0:
                    ;      label L22_0: 
L22_0:
                    ;      jump label: L23_0 
    j       L23_0
                    ;      label L23_0: 
L23_0:
                    ;      label L24_0: 
L24_0:
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret
                    ;      Define model_0 [a[][5]_26] -> model_ret_0 
    .global model
    .type model @function
model:
                    ;mem layout:|ra_model:8|s0_model:8|a[][5]:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
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
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L3_0 
    j       L3_0
                    ;      label L8_0: 
L8_0:
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L10_0: 
L10_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L1_0 
    j       L1_0
                    ;      label L13_0: 
L13_0:

