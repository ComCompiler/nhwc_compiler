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
    .global RET_0
                    ;      global Array:i32:[Some(5_0)] RET_0 
    .type RET_0 @object
RET_0:
    .word 10
    .zero 1
    .align 4
    .global saY_HeI10_To_0
                    ;      global Array:i32:[Some(40_0)] saY_HeI10_To_0 
    .type saY_HeI10_To_0 @object
saY_HeI10_To_0:
    .word 32
    .word 115
    .word 97
    .word 121
    .word 115
    .word 32
    .word 104
    .word 101
    .word 108
    .word 108
    .word 111
    .word 32
    .word 116
    .word 111
    .word 32
    .align 4
    .global N4__mE____0
                    ;      global Array:i32:[Some(6_0), Some(50_0)] N4__mE____0 
    .type N4__mE____0 @object
N4__mE____0:
    .word 83
    .word 97
    .word 97
    .word 98
    .word 97
    .word 114
    .word 117
    .zero 172
    .word 75
    .word 97
    .word 98
    .word 97
    .word 110
    .zero 180
    .word 72
    .word 97
    .word 115
    .word 104
    .word 105
    .word 98
    .word 105
    .word 114
    .word 111
    .word 107
    .word 111
    .word 117
    .zero 152
    .word 65
    .word 114
    .word 97
    .word 105
    .word 103
    .word 117
    .word 109
    .word 97
    .zero 168
    .word 72
    .word 117
    .word 110
    .word 98
    .word 111
    .word 114
    .word 117
    .word 116
    .word 111
    .word 32
    .word 80
    .word 101
    .word 110
    .word 103
    .word 105
    .word 110
    .zero 136
    .word 84
    .word 97
    .word 105
    .word 114
    .word 105
    .word 107
    .word 117
    .word 32
    .word 79
    .word 111
    .word 107
    .word 97
    .word 109
    .word 105
    .align 4
    .global __HELLO_0
                    ;      global Array:i32:[Some(100_0)] __HELLO_0 
    .type __HELLO_0 @object
__HELLO_0:
    .word 87
    .word 101
    .word 108
    .word 99
    .word 111
    .word 109
    .word 101
    .word 32
    .word 116
    .word 111
    .word 32
    .word 116
    .word 104
    .word 101
    .word 32
    .word 74
    .word 97
    .word 112
    .word 97
    .word 114
    .word 105
    .word 32
    .word 80
    .word 97
    .word 114
    .word 107
    .word 33
    .word 10
.section
    .text
                    ;      Define putstr_0 [str[]_20] -> putstr_ret_0 
    .global putstr
    .type putstr @function
putstr:
                    ;mem layout:|ra_putstr:8|s0_putstr:8|str[]:4|iNd__1X:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
    sw      a0,4(sp)
                    ;      alloc i32 iNd__1X_22 
                    ;      label L11_0: 
L11_0:
                    ;      new_var iNd__1X_22:i32 
                    ;      iNd__1X_22 = i32 0_0 
    li      s1, 0
    sw      s1,0(sp)
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L12_0: 
L12_0:
                    ;      label L13_0: 
L13_0:
                    ;      jump label: L12_0 
    j       L12_0
                    ;      label L14_0: 
L14_0:
                    ;      ret 
    ld      ra,16(sp)
    ld      s0,8(sp)
    addi    sp,sp,-24
    ret
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
                    ;      jump label: L7_0 
    j       L7_0
                    ;      label L7_0: 
L7_0:
                    ;      label L8_0: 
L8_0:
                    ;      jump label: L9_0 
    j       L9_0
                    ;      label L9_0: 
L9_0:
                    ;      label L10_0: 
L10_0:

