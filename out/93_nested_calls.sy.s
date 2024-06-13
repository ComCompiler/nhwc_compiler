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
                    ;      Define func1_0 [x_16, y_16, z_16] -> func1_ret_0 
    .global func1
    .type func1 @function
func1:
                    ;mem layout:|ra_func1:8|s0_func1:8|x:4|y:4|z:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
    sw      a2,4(sp)
                    ;      label L25_0: 
L25_0:
                    ;      label L26_0: 
L26_0:
                    ;      jump label: L28_0 
    j       L28_0
                    ;      label L27_0: 
L27_0:
                    ;      ret 
    ld      ra,24(sp)
    ld      s0,16(sp)
    addi    sp,sp,-32
    ret
                    ;      label L28_0: 
L28_0:
                    ;      Define func2_0 [x_25, y_25] -> func2_ret_0 
    .global func2
    .type func2 @function
func2:
                    ;mem layout:|ra_func2:8|s0_func2:8|x:4|y:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L21_0: 
L21_0:
                    ;      label L22_0: 
L22_0:
                    ;      jump label: L24_0 
    j       L24_0
                    ;      label L23_0: 
L23_0:
                    ;      jump label: L24_0 
    j       L24_0
                    ;      label L24_0: 
L24_0:
                    ;      Define func3_0 [x_34, y_34] -> func3_ret_0 
    .global func3
    .type func3 @function
func3:
                    ;mem layout:|ra_func3:8|s0_func3:8|x:4|y:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L17_0: 
L17_0:
                    ;      label L18_0: 
L18_0:
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L20_0: 
L20_0:
                    ;      Define func4_0 [x_43, y_43, z_43] -> func4_ret_0 
    .global func4
    .type func4 @function
func4:
                    ;mem layout:|ra_func4:8|s0_func4:8|x:4|y:4|z:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
    sw      a2,4(sp)
                    ;      label L13_0: 
L13_0:
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L16_0 
    j       L16_0
                    ;      label L15_0: 
L15_0:
                    ;      jump label: L16_0 
    j       L16_0
                    ;      label L16_0: 
L16_0:
                    ;      Define func5_0 [x_52] -> func5_ret_0 
    .global func5
    .type func5 @function
func5:
                    ;mem layout:|ra_func5:8|s0_func5:8|x:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      label L12_0: 
L12_0:
                    ;      Define func6_0 [x_56, y_56] -> func6_ret_0 
    .global func6
    .type func6 @function
func6:
                    ;mem layout:|ra_func6:8|s0_func6:8|x:4|y:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
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
                    ;      Define func7_0 [x_65] -> func7_ret_0 
    .global func7
    .type func7 @function
func7:
                    ;mem layout:|ra_func7:8|s0_func7:8|x:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      label L4_0: 
L4_0:
                    ;      label L5_0: 
L5_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L6_0: 
L6_0:
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L7_0: 
L7_0:
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

