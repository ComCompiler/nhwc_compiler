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
    .global ptr_0
                    ;      global i32 ptr_0 
    .type ptr_0 @object
ptr_0:
    .word 0
    .align 4
    .global BUFFER_LEN_0
                    ;      global i32 BUFFER_LEN_0 
    .type BUFFER_LEN_0 @object
BUFFER_LEN_0:
    .word 32768
    .align 4
    .global TAPE_LEN_0
                    ;      global i32 TAPE_LEN_0 
    .type TAPE_LEN_0 @object
TAPE_LEN_0:
    .word 65536
.section
    .text
                    ;      Define read_program_0 [] -> read_program_ret_0 
    .global read_program
    .type read_program @function
read_program:
                    ;mem layout:|ra_read_program:8|s0_read_program:8
    addi    sp,sp,-16
    sd      ra,8(sp)
    sd      s0,0(sp)
    addi    s0,sp,16
                    ;      label L34_0: 
L34_0:
                    ;      jump label: L35_0 
    j       L35_0
                    ;      label L35_0: 
L35_0:
                    ;      label L36_0: 
L36_0:
                    ;      jump label: L35_0 
    j       L35_0
                    ;      label L37_0: 
L37_0:
                    ;      Define interpret_0 [input[]_27] -> interpret_ret_0 
    .global interpret
    .type interpret @function
interpret:
                    ;mem layout:|ra_interpret:8|s0_interpret:8|input[]:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      label L1_0: 
L1_0:
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
                    ;      jump label: L32_0 
    j       L32_0
                    ;      label L6_0: 
L6_0:
                    ;      label L7_0: 
L7_0:
                    ;      jump label: L31_0 
    j       L31_0
                    ;      label L8_0: 
L8_0:
                    ;      label L9_0: 
L9_0:
                    ;      jump label: L30_0 
    j       L30_0
                    ;      label L10_0: 
L10_0:
                    ;      label L11_0: 
L11_0:
                    ;      jump label: L29_0 
    j       L29_0
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L28_0 
    j       L28_0
                    ;      label L14_0: 
L14_0:
                    ;      label L15_0: 
L15_0:
                    ;      jump label: L27_0 
    j       L27_0
                    ;      label L16_0: 
L16_0:
                    ;      label L17_0: 
L17_0:
                    ;      jump label: L18_0 
    j       L18_0
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
                    ;      jump label: L25_0 
    j       L25_0
                    ;      label L22_0: 
L22_0:
                    ;      label L23_0: 
L23_0:
                    ;      jump label: L24_0 
    j       L24_0
                    ;      label L24_0: 
L24_0:
                    ;      label L25_0: 
L25_0:
                    ;      label L26_0: 
L26_0:
                    ;      label L27_0: 
L27_0:
                    ;      label L28_0: 
L28_0:
                    ;      label L29_0: 
L29_0:
                    ;      label L30_0: 
L30_0:
                    ;      label L31_0: 
L31_0:
                    ;      label L32_0: 
L32_0:
                    ;      label L33_0: 
L33_0:
                    ;      jump label: L2_0 
    j       L2_0
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

