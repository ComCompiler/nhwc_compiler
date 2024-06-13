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
                    ;      Define deepWhileBr_0 [a_16, b_16] -> deepWhileBr_ret_0 
    .global deepWhileBr
    .type deepWhileBr @function
deepWhileBr:
                    ;mem layout:|ra_deepWhileBr:8|s0_deepWhileBr:8|a:4|b:4|c:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
                    ;      alloc i32 c_18 
                    ;      label L1_0: 
L1_0:
                    ;      new_var c_18:i32 
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
                    ;      jump label: L10_0 
    j       L10_0
                    ;      label L10_0: 
L10_0:
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
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

