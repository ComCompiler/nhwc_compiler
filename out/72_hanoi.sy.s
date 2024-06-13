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
                    ;      Define move_0 [x_16, y_16] -> move_ret_0 
    .global move
    .type move @function
move:
                    ;mem layout:|ra_move:8|s0_move:8|x:4|y:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
    sw      a1,0(sp)
                    ;      label L8_0: 
L8_0:
                    ;      Define hanoi_0 [n_24, one_24, two_24, three_24] -> hanoi_ret_0 
    .global hanoi
    .type hanoi @function
hanoi:
                    ;mem layout:|ra_hanoi:8|s0_hanoi:8|n:4|one:4|two:4|three:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
    sw      a2,4(sp)
    sw      a3,0(sp)
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

