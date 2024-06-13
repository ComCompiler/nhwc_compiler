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
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L10_0 
    j       L10_0
                    ;      label L10_0: 
L10_0:
                    ;      label L11_0: 
L11_0:
                    ;      jump label: L10_0 
    j       L10_0
                    ;      label L12_0: 
L12_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L13_0: 
L13_0:
                    ;      label L14_0: 
L14_0:
                    ;      jump label: L13_0 
    j       L13_0
                    ;      label L15_0: 
L15_0:
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

