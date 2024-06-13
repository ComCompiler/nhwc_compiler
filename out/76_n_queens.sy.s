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
    .global sum_0
                    ;      global i32 sum_0 
    .type sum_0 @object
sum_0:
    .word 0
.section
    .text
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
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L19_0: 
L19_0:
                    ;      jump label: L20_0 
    j       L20_0
                    ;      label L20_0: 
L20_0:
                    ;      label L21_0: 
L21_0:
                    ;      jump label: L15_0 
    j       L15_0
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
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L5_0 
    j       L5_0
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

