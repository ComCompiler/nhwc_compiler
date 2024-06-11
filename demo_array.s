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
    .global d_0
                    ;      global Array:f32:[Some(10_0), Some(10_0)] d_0 
    .type d @object
d_0:
    .word 0.
    .word 0.
    .word 1.
    .zero 28
    .word 3.
    .align 4
    .global c_0
                    ;      global Array:i32:[Some(10_0)] c_0 
    .type c @object
c_0:
    .word 1
    .zero 1
.section
    .text
                    ;      Define b_0 [s_19] -> b_ret_0 
    .global b_0
    .type b @function
b_0:
                    ;mem layout:|ra_b:8|s0_b:8|s:4|none:4
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    sw      a0,4(sp)
                    ;      label %1_0: 
%1_0:
                    ;      ret s_19 
    ld      ra,16(sp)
    ld      s0,8(sp)
    lw      a0,4(sp)
    addi    sp,sp,-24
    ret
                    ;      Define main_0 [] -> main_ret_0 
    .global main_0
    .type main @function
main_0:
                    ;mem layout:|ra_main:8|s0_main:8|temp_5:40
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,40(sp)
                    ;      alloc Array:i32:[Some(10_0)] temp_5_24 
                    ;      label %0_0: 
%0_0:
                    ;      new_var temp_5_24:Array:i32:[Some(10_0)] 
                    ;      temp_5_24 = load *c_0:ptr->Array:i32:[] 
                    ;   load label c as ptr to reg
    la      s1, c_0
    lw      s2,0(s1)
    sw      s2,36(sp)
                    ;       Call void putarray_0(5_0, temp_5_24) 
    li      a0, 5
    lw      a1,36(sp)
    call    putarray_0
                    ;      ret 0_0 
    ld      ra,48(sp)
    ld      s0,40(sp)
    li      a0, 0
    addi    sp,sp,-56
    ret

