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
    .global a32_0
                    ;      global i32 a32_0 
    .type a32_0 @object
a32_0:
    .word 16
    .align 4
    .global a31_0
                    ;      global i32 a31_0 
    .type a31_0 @object
a31_0:
    .word 15
    .align 4
    .global a30_0
                    ;      global i32 a30_0 
    .type a30_0 @object
a30_0:
    .word 14
    .align 4
    .global a29_0
                    ;      global i32 a29_0 
    .type a29_0 @object
a29_0:
    .word 13
    .align 4
    .global a28_0
                    ;      global i32 a28_0 
    .type a28_0 @object
a28_0:
    .word 12
    .align 4
    .global a27_0
                    ;      global i32 a27_0 
    .type a27_0 @object
a27_0:
    .word 11
    .align 4
    .global a26_0
                    ;      global i32 a26_0 
    .type a26_0 @object
a26_0:
    .word 10
    .align 4
    .global a25_0
                    ;      global i32 a25_0 
    .type a25_0 @object
a25_0:
    .word 9
    .align 4
    .global a24_0
                    ;      global i32 a24_0 
    .type a24_0 @object
a24_0:
    .word 8
    .align 4
    .global a23_0
                    ;      global i32 a23_0 
    .type a23_0 @object
a23_0:
    .word 7
    .align 4
    .global a22_0
                    ;      global i32 a22_0 
    .type a22_0 @object
a22_0:
    .word 6
    .align 4
    .global a21_0
                    ;      global i32 a21_0 
    .type a21_0 @object
a21_0:
    .word 5
    .align 4
    .global a20_0
                    ;      global i32 a20_0 
    .type a20_0 @object
a20_0:
    .word 4
    .align 4
    .global a19_0
                    ;      global i32 a19_0 
    .type a19_0 @object
a19_0:
    .word 3
    .align 4
    .global a18_0
                    ;      global i32 a18_0 
    .type a18_0 @object
a18_0:
    .word 2
    .align 4
    .global a17_0
                    ;      global i32 a17_0 
    .type a17_0 @object
a17_0:
    .word 1
    .align 4
    .global a16_0
                    ;      global i32 a16_0 
    .type a16_0 @object
a16_0:
    .word 16
    .align 4
    .global a15_0
                    ;      global i32 a15_0 
    .type a15_0 @object
a15_0:
    .word 15
    .align 4
    .global a14_0
                    ;      global i32 a14_0 
    .type a14_0 @object
a14_0:
    .word 14
    .align 4
    .global a13_0
                    ;      global i32 a13_0 
    .type a13_0 @object
a13_0:
    .word 13
    .align 4
    .global a12_0
                    ;      global i32 a12_0 
    .type a12_0 @object
a12_0:
    .word 12
    .align 4
    .global a11_0
                    ;      global i32 a11_0 
    .type a11_0 @object
a11_0:
    .word 11
    .align 4
    .global a10_0
                    ;      global i32 a10_0 
    .type a10_0 @object
a10_0:
    .word 10
    .align 4
    .global a9_0
                    ;      global i32 a9_0 
    .type a9_0 @object
a9_0:
    .word 9
    .align 4
    .global a8_0
                    ;      global i32 a8_0 
    .type a8_0 @object
a8_0:
    .word 8
    .align 4
    .global a7_0
                    ;      global i32 a7_0 
    .type a7_0 @object
a7_0:
    .word 7
    .align 4
    .global a6_0
                    ;      global i32 a6_0 
    .type a6_0 @object
a6_0:
    .word 6
    .align 4
    .global a5_0
                    ;      global i32 a5_0 
    .type a5_0 @object
a5_0:
    .word 5
    .align 4
    .global a4_0
                    ;      global i32 a4_0 
    .type a4_0 @object
a4_0:
    .word 4
    .align 4
    .global a3_0
                    ;      global i32 a3_0 
    .type a3_0 @object
a3_0:
    .word 3
    .align 4
    .global a2_0
                    ;      global i32 a2_0 
    .type a2_0 @object
a2_0:
    .word 2
    .align 4
    .global a1_0
                    ;      global i32 a1_0 
    .type a1_0 @object
a1_0:
    .word 1
.section
    .text
                    ;      Define func_0 [a_48, b_48] -> func_ret_0 
    .global func
    .type func @function
func:
                    ;mem layout:|ra_func:8|s0_func:8|a:4|b:4|i:4|none:4
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
    sw      a0,12(sp)
    sw      a1,8(sp)
                    ;      alloc i32 i_50 
                    ;      label L1_0: 
L1_0:
                    ;      new_var i_50:i32 
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

