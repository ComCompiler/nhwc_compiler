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
                    ;      Define func_0 [a_16, b[][59]_16, c_16, d[]_16, e_16, f_16, g[]_16, h_16, i_16] -> func_ret_0 
    .global func
    .type func @function
func:
                    ;mem layout:|ra_func:8|s0_func:8|a:4|b[][59]:4|c:4|d[]:4|e:4|f:4|g[]:4|h:4|i:4|index:4
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
    addi    s0,sp,56
    sw      a0,36(sp)
    sw      a1,32(sp)
    sw      a2,28(sp)
    sw      a3,24(sp)
    sw      a4,20(sp)
    sw      a5,16(sp)
    sw      a6,12(sp)
    sw      a7,8(sp)
    sw      a8,4(sp)
                    ;      alloc i32 index_18 
                    ;      label L4_0: 
L4_0:
                    ;      index_18 = i32 0_0 
    li      s1, 0
    sw      s1,0(sp)
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

