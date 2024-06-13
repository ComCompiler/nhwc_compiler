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
                    ;      Define merge_sort_0 [l_17, r_17] -> merge_sort_ret_0 
    .global merge_sort
    .type merge_sort @function
merge_sort:
                    ;mem layout:|ra_merge_sort:8|s0_merge_sort:8|l:4|r:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
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
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L9_0: 
L9_0:
                    ;      label L10_0: 
L10_0:
                    ;      jump label: L5_0 
    j       L5_0
                    ;      label L11_0: 
L11_0:
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L11_0 
    j       L11_0
                    ;      label L13_0: 
L13_0:
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L15_0: 
L15_0:
                    ;      label L16_0: 
L16_0:
                    ;      jump label: L15_0 
    j       L15_0
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

