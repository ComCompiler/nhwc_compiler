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
    .global a_0
                    ;      global Array:i32:[Some(5_0)] a_0 
    .type a_0 @object
a_0:
    .word 0
    .word 1
    .word 2
    .word 3
    .word 4
.section
    .text
                    ;      Define main_0 [] -> main_ret_0 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|temp_5:20|temp_7:4|temp_6:8
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
                    ;      alloc Array:i32:[Some(5_0)] temp_5_18 
                    ;      alloc ptr->i32 temp_6_18 
                    ;      alloc i32 temp_7_18 
                    ;      label L0_0: 
L0_0:
                    ;      new_var temp_5_18:Array:i32:[Some(5_0)] 
                    ;      temp_5_18 = load *a_0:ptr->Array:i32:[] 
                    ;   load label a as ptr to reg
    la      s1, a_0
    lw      s2,0(s1)
    sw      s2,28(sp)
                    ;      new_var temp_6_18:ptr->i32 
                    ;      new_var temp_7_18:i32 
                    ;      temp_6_18 = getelementptr temp_5_18:Array:i32:[Some(5_0)] [4_0] 
    mv      s3, zero
    li      s1, 1
    li      s2, 4
    mul     s4,s1,s2
    add     s3,s3,s4
    slli s3,s3,2
    li      s5, 28
    add     s3,s3,s5
    sd      s3,0(sp)
                    ;      temp_7_18 = load temp_6_18:ptr->i32 
    ld      s1,0(sp)
    lw      s2,0(s1)
    sw      s2,8(sp)
                    ;      ret temp_7_18 
    ld      ra,40(sp)
    ld      s0,32(sp)
    lw      a0,8(sp)
    addi    sp,sp,-48
    ret

