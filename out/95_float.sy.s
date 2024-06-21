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


.section        .text
    .align 4
                    #      label L32_0: 
.L32_0:
                    #      label L33_0: 
.L33_0:
                    #      jump label: L34_0 
    j       .L34_0
                    #      label L34_0: 
.L34_0:
                    #      label L35_0: 
.L35_0:
                    #      label L31_0: 
.L31_0:
                    #      label L27_0: 
.L27_0:
                    #      label L28_0: 
.L28_0:
                    #      jump label: L30_0 
    j       .L30_0
                    #      label L29_0: 
.L29_0:
                    #      jump label: L30_0 
    j       .L30_0
                    #      label L30_0: 
.L30_0:
                    #      label L26_0: 
.L26_0:
                    #      label L25_0: 
.L25_0:
                    #      label L21_0: 
.L21_0:
                    #      label L22_0: 
.L22_0:
                    #      jump label: L24_0 
    j       .L24_0
                    #      label L23_0: 
.L23_0:
                    #      jump label: L24_0 
    j       .L24_0
                    #      label L24_0: 
.L24_0:
                    #      label L17_0: 
.L17_0:
                    #      label L18_0: 
.L18_0:
                    #      jump label: L20_0 
    j       .L20_0
                    #      label L19_0: 
.L19_0:
                    #      jump label: L20_0 
    j       .L20_0
                    #      label L20_0: 
.L20_0:
                    #      label L0_0: 
.L0_0:
                    #      jump label: L1_0 
    j       .L1_0
                    #      label L1_0: 
.L1_0:
                    #      label L2_0: 
.L2_0:
                    #      jump label: L3_0 
    j       .L3_0
                    #      label L3_0: 
.L3_0:
                    #      label L4_0: 
.L4_0:
                    #      label L5_0: 
.L5_0:
                    #      jump label: L6_0 
    j       .L6_0
                    #      label L6_0: 
.L6_0:
                    #      label L7_0: 
.L7_0:
                    #      label L8_0: 
.L8_0:
                    #      jump label: L9_0 
    j       .L9_0
                    #      label L9_0: 
.L9_0:
                    #      label L10_0: 
.L10_0:
                    #      label L11_0: 
.L11_0:
                    #      jump label: L12_0 
    j       .L12_0
                    #      label L12_0: 
.L12_0:
                    #      label L13_0: 
.L13_0:
                    #      jump label: L14_0 
    j       .L14_0
                    #      label L14_0: 
.L14_0:
                    #      label L15_0: 
.L15_0:
                    #      jump label: L14_0 
    j       .L14_0
                    #      label L16_0: 
.L16_0:
.section        .data
    .align 4
    .globl HEX2
                    #      global f32 HEX2_0 
    .type HEX2,@object
HEX2:
    .word 0
    .align 4
    .globl PI_HEX
                    #      global f32 PI_HEX_0 
    .type PI_HEX,@object
PI_HEX:
    .word 0
    .align 4
    .globl EPS
                    #      global f32 EPS_0 
    .type EPS,@object
EPS:
    .word 897988541
    .align 4
    .globl PI
                    #      global f32 PI_0 
    .type PI,@object
PI:
    .word 1078530011
    .align 4
    .globl RADIUS
                    #      global f32 RADIUS_0 
    .type RADIUS,@object
RADIUS:
    .word 1085276160
